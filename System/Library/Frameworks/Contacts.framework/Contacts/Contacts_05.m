uint64_t sub_1956311E0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_19565CDCC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  a2(a1);
  (*(v5 + 16))(v8, v10, v4);
  sub_1955EE56C();
  sub_19565D87C();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_195631320(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id))
{
  result = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;

      sub_195631CA4(&v8, v7, a2);

      ++v6;
      --v4;
    }

    while (v4);
    return v8;
  }

  return result;
}

uint64_t sub_1956313D4(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_99;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (i < 2)
    {
      return v3;
    }

    v81 = MEMORY[0x1E69E7CC0];
    sub_1955EAE6C(0, i, 0);
    v4 = 0;
    v5 = v81;
    do
    {
      v6 = v5;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19A8B3850](v4, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v4 + 32);
      }

      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19567B7B0;
      *(inited + 32) = v8;
      v10 = v8;
      v11 = sub_195637DB0(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v12 = sub_19562D194();

      v5 = v6;
      v81 = v6;
      v13 = v6[2];
      v14 = v5[3];
      v15 = v13 + 1;
      if (v13 >= v14 >> 1)
      {
        sub_1955EAE6C((v14 > 1), v13 + 1, 1);
        v5 = v81;
      }

      ++v4;
      v5[2] = v15;
      v16 = &v5[2 * v13];
      v16[4] = v11;
      v16[5] = v12;
    }

    while (i != v4);
    v17 = MEMORY[0x1E69E7CC0];
LABEL_13:
    while (!v15)
    {

      v17 = MEMORY[0x1E69E7CC0];
      v15 = *(MEMORY[0x1E69E7CC0] + 16);
      v5 = MEMORY[0x1E69E7CC0];
      if (!v15)
      {
        v49 = MEMORY[0x1E69E7CC0];
        goto LABEL_60;
      }
    }

    v18 = 0;
    v70 = v5 + 4;
    v71 = v15;
    v19 = v17;
    v69 = v5;
LABEL_17:
    if (v18 < v5[2])
    {
      break;
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    ;
  }

  v74 = v18;
  v78 = *&v70[2 * v18];
  v24 = v19[2];
  v25 = v70[2 * v18];

  v3 = *(&v78 + 1);

  if (!v24)
  {
LABEL_53:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_19561813C(0, v19[2] + 1, 1, v19);
    }

    v22 = v71;
    v23 = v74;
    v1 = v19[2];
    v48 = v19[3];
    v5 = v69;
    if (v1 >= v48 >> 1)
    {
      v19 = sub_19561813C((v48 > 1), v1 + 1, 1, v19);
      v5 = v69;
    }

    v19[2] = v1 + 1;
    *&v19[2 * v1 + 4] = v78;
    goto LABEL_16;
  }

  v72 = v24;
  v73 = v25;
  v26 = 0;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_195627248(v19);
    }

    if (v26 >= v19[2])
    {
      goto LABEL_78;
    }

    v27 = *(v3 + 16);
    if (v27)
    {
      v28 = *(v19[2 * v26 + 5] + 16);
      if (v28)
      {
        break;
      }
    }

LABEL_21:
    if (++v26 == v24)
    {
      goto LABEL_53;
    }
  }

  v76 = v19;
  if (v28 >= v27)
  {
    v29 = v3;
  }

  else
  {
    v29 = v19[2 * v26 + 5];
  }

  if (v28 >= v27)
  {
    v30 = v19[2 * v26 + 5];
  }

  else
  {
    v30 = v3;
  }

  v31 = v29 + 56;
  v32 = 1 << *(v29 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v3 = v33 & *(v29 + 56);
  v34 = (v32 + 63) >> 6;
  v35 = v30 + 56;

  v36 = 0;
  v77 = v29;
  while (1)
  {
    do
    {
      if (v3)
      {
        v37 = v3;
        goto LABEL_43;
      }

      do
      {
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:

          return v3;
        }

        if (v38 >= v34)
        {

          v19 = v76;
          v3 = *(&v78 + 1);
          v24 = v72;
          goto LABEL_21;
        }

        v37 = *(v31 + 8 * v38);
        ++v36;
      }

      while (!v37);
      v36 = v38;
LABEL_43:
      v3 = (v37 - 1) & v37;
    }

    while (!*(v30 + 16));
    v75 = (v37 - 1) & v37;
    v39 = (*(v29 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v37)))));
    v41 = *v39;
    v40 = v39[1];
    sub_19565DBDC();

    sub_19565D30C();
    v42 = sub_19565DBFC();
    v43 = -1 << *(v30 + 32);
    v44 = v42 & ~v43;
    if ((*(v35 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
    {
      break;
    }

LABEL_52:

    v29 = v77;
    v3 = v75;
  }

  v45 = ~v43;
  while (1)
  {
    v46 = (*(v30 + 48) + 16 * v44);
    v47 = *v46 == v41 && v46[1] == v40;
    if (v47 || (sub_19565DB1C() & 1) != 0)
    {
      break;
    }

    v44 = (v44 + 1) & v45;
    if (((*(v35 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  v1 = v73;

  sub_19562CF14(v20);

  sub_19562CE10(v21);

  v22 = v71;
  v19 = v76;
  v5 = v69;
  v23 = v74;
LABEL_16:
  v18 = v23 + 1;
  if (v18 != v22)
  {
    goto LABEL_17;
  }

  v15 = v19[2];
  v5 = v19;
  v17 = MEMORY[0x1E69E7CC0];
  if (v22 != v15)
  {
    goto LABEL_13;
  }

  v61 = 0;
  v1 = (v19 + 4);
  v62 = v22 - 1;
  v49 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v63 = v61;
    while (2)
    {
      if (v63 >= v19[2])
      {
        goto LABEL_98;
      }

      v64 = v19;
      v65 = *(v1 + 16 * v63);
      v79 = *(v1 + 16 * v63);
      if ((v65 & 0xC000000000000001) != 0)
      {

        if (sub_19565D81C() > 1)
        {
          goto LABEL_89;
        }

LABEL_87:
        ++v63;

        v19 = v64;
        if (v71 == v63)
        {
          goto LABEL_60;
        }

        continue;
      }

      break;
    }

    v66 = *(v65 + 16);

    if (v66 <= 1)
    {
      goto LABEL_87;
    }

LABEL_89:
    v81 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1955EAE6C(0, v49[2] + 1, 1);
      v49 = v81;
    }

    v68 = v49[2];
    v67 = v49[3];
    if (v68 >= v67 >> 1)
    {
      sub_1955EAE6C((v67 > 1), v68 + 1, 1);
      v49 = v81;
    }

    v61 = v63 + 1;
    v49[2] = v68 + 1;
    *&v49[2 * v68 + 4] = v79;
    v19 = v64;
    if (v62 != v63)
    {
      continue;
    }

    break;
  }

LABEL_60:

  v50 = v49[2];
  if (!v50)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v80 = MEMORY[0x1E69E7CC0];
  sub_1955EAE0C(0, v50, 0);
  v3 = v80;
  v51 = v49 + 5;
  while (1)
  {
    v52 = *(v51 - 1);
    if ((v52 & 0xC000000000000001) == 0)
    {
      break;
    }

    v53 = sub_19565D81C();
    if (v53)
    {
      goto LABEL_64;
    }

LABEL_69:

    v54 = MEMORY[0x1E69E7CC0];
LABEL_73:
    v60 = *(v80 + 16);
    v59 = *(v80 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_1955EAE0C((v59 > 1), v60 + 1, 1);
    }

    *(v80 + 16) = v60 + 1;
    *(v80 + 8 * v60 + 32) = v54;
    v51 += 2;
    if (!--v50)
    {
      goto LABEL_79;
    }
  }

  v53 = *(v52 + 16);

  if (!v53)
  {
    goto LABEL_69;
  }

LABEL_64:
  if (v53 < 1)
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
    v54 = swift_allocObject();
    v55 = _swift_stdlib_malloc_size(v54);
    v56 = v55 - 32;
    if (v55 < 32)
    {
      v56 = v55 - 25;
    }

    v54[2] = v53;
    v54[3] = (2 * (v56 >> 3)) | 1;
  }

  v57 = sub_195627ACC(&v81, v54 + 4, v53, v52);
  result = sub_1954C55E4();
  if (v57 == v53)
  {

    goto LABEL_73;
  }

  __break(1u);
  return result;
}

uint64_t sub_195631C04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  else
  {
    v5 = a3;
    if (a4 >= a3)
    {
      v7 = result;
      while (a4 != v5)
      {
        v8 = v5;
        result = v7(&v8);
        if (v4 || (result & 1) != 0)
        {
          return v5;
        }

        if (a4 == ++v5)
        {
          return 0;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_195631CA4(uint64_t result, unint64_t a2, void (*a3)(_OWORD *__return_ptr, id))
{
  v5 = a2;
  v6 = result;
  v7 = a2 >> 62;
  if (a2 >> 62)
  {
    result = sub_19565D81C();
    v8 = result;
    if (result < 2)
    {
      return result;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 < 2)
    {
      return result;
    }
  }

  v10 = sub_195637B04(v9, a3);
  if (*(v10 + 16) == 1)
  {

    v11 = *v6;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_195617A0C(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v14 = v13 + 1;
    if (v13 < v12 >> 1)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v48 = v10;
  v15 = sub_1956313D4(v5);
  v16 = v48;
  if (*(v15 + 16) == 1)
  {
    v17 = *(v15 + 32);
    if (v17 >> 62)
    {
      v18 = sub_19565D81C();
      v16 = v48;
      if (v18 == v8)
      {
LABEL_11:

        v11 = *v6;

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_12;
        }

        goto LABEL_72;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
    {
      goto LABEL_11;
    }
  }

  v47 = v15;
  v49 = v5;
  v19 = 0;
  v11 = v16 + 64;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 64);
  v23 = (v20 + 63) >> 6;
  v5 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  while (v22)
  {
LABEL_25:
    v6 = *(*(v16 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v22)))));
    if (v6 >> 62)
    {
      v26 = sub_19565D81C();
      v16 = v48;
    }

    else
    {
      v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 &= v22 - 1;
    if (v26 > 1)
    {

      v50 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1955EAE0C(0, *(v24 + 16) + 1, 1);
        v24 = v50;
      }

      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      v29 = v28 + 1;
      v16 = v48;
      if (v28 >= v27 >> 1)
      {
        v45 = *(v24 + 16);
        v46 = v28 + 1;
        sub_1955EAE0C((v27 > 1), v28 + 1, 1);
        v28 = v45;
        v29 = v46;
        v16 = v48;
        v24 = v50;
      }

      *(v24 + 16) = v29;
      *(v24 + 8 * v28 + 32) = v6;
    }
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      result = sub_195617A0C(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
LABEL_12:
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = v13 + 1;
      if (v13 < v12 >> 1)
      {
LABEL_7:
        *(v11 + 16) = v14;
        *(v11 + 8 * v13 + 32) = v5;
        *v6 = v11;
        return result;
      }

LABEL_13:
      result = sub_195617A0C((v12 > 1), v14, 1, v11);
      v11 = result;
      goto LABEL_7;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v11 + 8 * v25);
    ++v19;
    if (v22)
    {
      v19 = v25;
      goto LABEL_25;
    }
  }

  v30 = v5;

  sub_1956215B0(v47);
  v5 = v24;
  if (!*(v24 + 16))
  {
  }

  v50 = v30;
  v6 = v49;
  if (v7)
  {
    v31 = sub_19565D81C();
  }

  else
  {
    v31 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
LABEL_49:

    v35 = *(v32 + 16);
    if (!v35)
    {

      v36 = MEMORY[0x1E69E7CC0];
      return sub_1956215B0(v36);
    }

    v5 = MEMORY[0x1E69E7CC0];
    v51 = MEMORY[0x1E69E7CC0];
    sub_1955EAE0C(0, v35, 0);
    v6 = 32;
    v36 = v51;
    v37 = v32;
    while (1)
    {
      v38 = *(v37 + v6);
      if ((v38 & 0xC000000000000001) != 0)
      {

        v11 = sub_19565D81C();
        if (v11)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v11 = *(v38 + 16);

        if (v11)
        {
LABEL_53:
          if (v11 < 1)
          {
            v39 = v5;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
            v39 = swift_allocObject();
            v40 = _swift_stdlib_malloc_size(v39);
            v41 = v40 - 32;
            if (v40 < 32)
            {
              v41 = v40 - 25;
            }

            v39[2] = v11;
            v39[3] = (2 * (v41 >> 3)) | 1;
          }

          v42 = sub_195627ACC(&v50, v39 + 4, v11, v38);
          sub_1954C55E4();
          if (v42 != v11)
          {
            goto LABEL_71;
          }

          goto LABEL_61;
        }
      }

      v39 = v5;
LABEL_61:
      v51 = v36;
      v44 = v36[2];
      v43 = v36[3];
      if (v44 >= v43 >> 1)
      {
        sub_1955EAE0C((v43 > 1), v44 + 1, 1);
        v36 = v51;
      }

      v36[2] = v44 + 1;
      v36[v44 + 4] = v39;
      v6 += 8;
      if (!--v35)
      {

        return sub_1956215B0(v36);
      }
    }
  }

  v11 = 0;
  while (1)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x19A8B3850](v11, v49);
    }

    else
    {
      if (v11 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v33 = *(v49 + 8 * v11 + 32);
    }

    v6 = v33;
    v34 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_69;
    }

    sub_195632290(&v50, v33, v24);
    if (v3)
    {
      break;
    }

    ++v11;
    if (v34 == v31)
    {
      v32 = v50;
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

void sub_195632290(uint64_t isUniquelyReferenced_nonNull_native, void *a2, uint64_t a3)
{
  v4 = v3;
  v36 = isUniquelyReferenced_nonNull_native;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a3 + 32;
    v37 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = v7;
      while (1)
      {
        if (v9 >= v6)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_39;
        }

        v10 = *(v8 + 8 * v9);
        v38 = a2;
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        v31[2] = &v38;

        if (sub_1956218B8(sub_19563BAD4, v31, v10))
        {
          break;
        }

        ++v9;
        if (v7 == v6)
        {
          goto LABEL_16;
        }
      }

      v11 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1955EAE0C(0, *(v37 + 16) + 1, 1);
        v37 = v39;
      }

      v13 = *(v37 + 16);
      v12 = *(v37 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v35 = (v13 + 1);
        isUniquelyReferenced_nonNull_native = sub_1955EAE0C((v12 > 1), v13 + 1, 1);
        v14 = v35;
        v37 = v39;
      }

      v15 = v37;
      *(v37 + 16) = v14;
      *(v15 + 8 * v13 + 32) = v10;
    }

    while (v7 != v6);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  v16 = sub_195630708(v37);
  v35 = v3;

  v37 = sub_195637DB0(v16);

  v4 = *v36;
  v17 = *(*v36 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v4 + 4;
    v33 = *(*v36 + 16);
    v34 = v4;
    v32 = v4 + 4;
    while (v18 < v4[2])
    {
      v22 = v19[v18];
      if ((v22 & 0xC000000000000001) != 0)
      {

        v20 = a2;
        v21 = sub_19565D84C();

        if (v21)
        {
          goto LABEL_33;
        }
      }

      else if (*(v22 + 16))
      {
        sub_1954C3460(0, &qword_1EAECB830);

        v23 = sub_19565D74C();
        v24 = -1 << *(v22 + 32);
        v25 = v23 & ~v24;
        if ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (1)
          {
            v27 = *(*(v22 + 48) + 8 * v25);
            v28 = sub_19565D75C();

            if (v28)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          v4 = v34;
LABEL_33:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_19562725C(v4);
          }

          if (v18 < v4[2])
          {
            sub_19562CF14(v37);
            goto LABEL_37;
          }

          __break(1u);
          return;
        }

LABEL_27:

        v17 = v33;
        v4 = v34;
        v19 = v32;
      }

      if (++v18 == v17)
      {
        goto LABEL_28;
      }
    }

LABEL_40:
    __break(1u);
  }

  else
  {
LABEL_28:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_29;
    }
  }

  v4 = sub_195618270(0, v4[2] + 1, 1, v4);
LABEL_29:
  v30 = v4[2];
  v29 = v4[3];
  if (v30 >= v29 >> 1)
  {
    v4 = sub_195618270((v29 > 1), v30 + 1, 1, v4);
  }

  v4[2] = v30 + 1;
  v4[v30 + 4] = v37;
LABEL_37:
  *v36 = v4;
}

uint64_t sub_195632674(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_19565D81C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    result = sub_19565D97C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x19A8B3850]();
          sub_19565D94C();
          sub_19565D98C();
          sub_19565D99C();
          sub_19565D95C();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_19565D94C();
          sub_19565D98C();
          sub_19565D99C();
          sub_19565D95C();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t sub_1956327B8()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAED0960);
  __swift_project_value_buffer(v0, qword_1EAED0960);
  return sub_19565D0DC();
}

uint64_t sub_1956328A8()
{
  v1 = OBJC_IVAR___CNDuplicateContactsManager_findResult;
  if (*(v0 + OBJC_IVAR___CNDuplicateContactsManager_findResult))
  {
    v2 = *(v0 + OBJC_IVAR___CNDuplicateContactsManager_findResult);
  }

  else
  {
    v3 = (v0 + OBJC_IVAR___CNDuplicateContactsManager_mergeResult);
    v4 = *(v0 + OBJC_IVAR___CNDuplicateContactsManager_mergeResult);
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    sub_195632968(v4);

    sub_195630A30(v5, &v7);

    *(v0 + v1) = v7;

    v2 = *(v0 + v1);
    if (v2)
    {
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

uint64_t sub_195632968(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id DuplicateContactsManager.__allocating_init(withContactStore:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___CNDuplicateContactsManager_contacts] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___CNDuplicateContactsManager_findResult] = 0;
  v4 = &v3[OBJC_IVAR___CNDuplicateContactsManager_mergeResult];
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  v3[OBJC_IVAR___CNDuplicateContactsManager_didPerformMerge] = 0;
  *&v3[OBJC_IVAR___CNDuplicateContactsManager_contactStore] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id DuplicateContactsManager.init(withContactStore:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CNDuplicateContactsManager_contacts] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___CNDuplicateContactsManager_findResult] = 0;
  v2 = &v1[OBJC_IVAR___CNDuplicateContactsManager_mergeResult];
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v1[OBJC_IVAR___CNDuplicateContactsManager_didPerformMerge] = 0;
  *&v1[OBJC_IVAR___CNDuplicateContactsManager_contactStore] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DuplicateContactsManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_195632B80(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v43[4] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = [*a1 identifier];
  if (!v10)
  {
    sub_19565D28C();
    v10 = sub_19565D27C();
  }

  v11 = [objc_opt_self() predicateForContactsInContainerWithIdentifier_];

  [a2 setPredicate_];
  v12 = *(a3 + OBJC_IVAR___CNDuplicateContactsManager_contactStore);
  v43[0] = 0;
  v13 = [v12 executeFetchRequest:a2 error:v43];
  if (v13)
  {
    v14 = v13;
    v15 = v43[0];
    v42 = [v14 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE0B0);
    swift_dynamicCast();
    v16 = v41;
    if (v41 >> 62)
    {
      v17 = sub_19565D81C();
      if (v17)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v17 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_6:
        v40 = MEMORY[0x1E69E7CC0];
        v9 = &v40;
        sub_19565D97C();
        if ((v17 & 0x8000000000000000) == 0)
        {
          v38 = v14;
          v18 = 0;
          do
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x19A8B3850](v18, v16);
            }

            else
            {
              v19 = *(v16 + 8 * v18 + 32);
            }

            v20 = v19;
            ++v18;
            [v19 mutableCopy];
            sub_19565D7CC();
            swift_unknownObjectRelease();

            sub_1954C3460(0, &qword_1EAECB830);
            swift_dynamicCast();
            sub_19565D94C();
            sub_19565D98C();
            sub_19565D99C();
            sub_19565D95C();
          }

          while (v17 != v18);

          v21 = v40;
          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v39 = a4;
  v22 = v43[0];
  v5 = sub_19565CE6C();

  swift_willThrow();
  if (qword_1EAECB8A8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v23 = sub_19565D0EC();
  __swift_project_value_buffer(v23, qword_1EAED0960);
  v24 = v9;
  v25 = v5;
  v26 = sub_19565D0CC();
  v27 = sub_19565D69C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43[0] = v29;
    *v28 = 136315394;
    v30 = [v24 identifier];
    v31 = sub_19565D28C();
    v33 = v32;

    v34 = sub_1955EA0F8(v31, v33, v43);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    swift_getErrorValue();
    v35 = sub_19565DB8C();
    v37 = sub_1955EA0F8(v35, v36, v43);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1954A0000, v26, v27, "Duplicate contacts manager could not load contacts for containers %s. %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v29, -1, -1);
    MEMORY[0x19A8B5DB0](v28, -1, -1);
  }

  v21 = MEMORY[0x1E69E7CC0];
  a4 = v39;
LABEL_19:
  *a4 = v21;
}

void sub_195633050(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = objc_opt_self();
  v7 = [v5 identifier];
  v8 = [v6 predicateForContainersInAccountWithIdentifier_];

  v9 = *(a2 + OBJC_IVAR___CNDuplicateContactsManager_contactStore);
  v42[0] = 0;
  v10 = [v9 containersMatchingPredicate:v8 error:v42];
  v11 = v42[0];
  if (v10)
  {
    v12 = v10;
    sub_1954C3460(0, &unk_1EAECB840);
    v13 = sub_19565D3FC();
    v14 = v11;

    v42[0] = MEMORY[0x1E69E7CC0];
    if (v13 >> 62)
    {
      goto LABEL_24;
    }

    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v8; v15; i = v8)
    {
      v40 = a3;
      v16 = 0;
      v8 = (v13 & 0xC000000000000001);
      a3 = (v13 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v8)
        {
          v17 = MEMORY[0x19A8B3850](v16, v13);
        }

        else
        {
          if (v16 >= a3[2])
          {
            goto LABEL_23;
          }

          v17 = *(v13 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if ([v17 isGuardianRestricted])
        {
        }

        else
        {
          sub_19565D94C();
          sub_19565D98C();
          sub_19565D99C();
          sub_19565D95C();
          a3 = (v13 & 0xFFFFFFFFFFFFFF8);
        }

        ++v16;
        if (v19 == v15)
        {
          v20 = v42[0];
          a3 = v40;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v15 = sub_19565D81C();
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_26:

    goto LABEL_27;
  }

  v41 = a3;
  v21 = v42[0];
  v22 = sub_19565CE6C();

  swift_willThrow();
  if (qword_1EAECB8A8 != -1)
  {
    swift_once();
  }

  v23 = sub_19565D0EC();
  __swift_project_value_buffer(v23, qword_1EAED0960);
  v24 = v5;
  v25 = v22;
  v26 = sub_19565D0CC();
  v27 = sub_19565D69C();
  if (!os_log_type_enabled(v26, v27))
  {

    goto LABEL_21;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v42[0] = v29;
  *v28 = 136315394;
  v30 = [v24 identifier];
  if (v30)
  {
    v31 = v30;

    v32 = sub_19565D28C();
    v34 = v33;

    v35 = sub_1955EA0F8(v32, v34, v42);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2080;
    swift_getErrorValue();
    v36 = sub_19565DB8C();
    v38 = sub_1955EA0F8(v36, v37, v42);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_1954A0000, v26, v27, "Duplicate contacts manager could not load contact containers for account %s. %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v29, -1, -1);
    MEMORY[0x19A8B5DB0](v28, -1, -1);

LABEL_21:
    v20 = MEMORY[0x1E69E7CC0];
    a3 = v41;
LABEL_27:
    *a3 = v20;
    return;
  }

  __break(1u);
}

uint64_t sub_1956334DC()
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR___CNDuplicateContactsManager_contactStore);
  *&v25[0] = 0;
  v2 = [v1 accountsMatchingPredicate:0 error:v25];
  v3 = *&v25[0];
  if (!v2)
  {
    v10 = *&v25[0];
    v11 = sub_19565CE6C();

    swift_willThrow();
    if (qword_1EAECB8A8 != -1)
    {
      swift_once();
    }

    v12 = sub_19565D0EC();
    __swift_project_value_buffer(v12, qword_1EAED0960);
    v13 = v11;
    v14 = sub_19565D0CC();
    v15 = sub_19565D69C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v25[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_19565DB8C();
      v20 = sub_1955EA0F8(v18, v19, v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1954A0000, v14, v15, "Duplicate contacts manager could not load accounts %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x19A8B5DB0](v17, -1, -1);
      MEMORY[0x19A8B5DB0](v16, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v2;
  v5 = sub_19565D3FC();
  v6 = v3;

  v22 = MEMORY[0x1E69E7CC0];
  v7 = *(v5 + 16);
  if (!v7)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v5 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1954C2458(v8, v25);
    sub_1955EBBA0(v25, &v23);
    sub_1954C3460(0, &unk_1EAECB820);
    if ((swift_dynamicCast() & 1) != 0 && v24)
    {
      MEMORY[0x19A8B3320]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19565D42C();
      }

      sub_19565D48C();
      v9 = v22;
    }

    v8 += 32;
    --v7;
  }

  while (v7);

  return v9;
}

uint64_t sub_1956337FC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CNDuplicateContactsManager_findResult;
  v5 = *(v1 + OBJC_IVAR___CNDuplicateContactsManager_findResult);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = (v2 + OBJC_IVAR___CNDuplicateContactsManager_mergeResult);
    v8 = *(v2 + OBJC_IVAR___CNDuplicateContactsManager_mergeResult);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    sub_195632968(v8);

    sub_195630A30(v9, &v19);

    *(v2 + v4) = v19;

    v6 = *(v2 + v4);
    if (v6)
    {
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }
  }

  v10 = *(v6 + 16);

  if (!v10)
  {
    return v10 != 0;
  }

  type metadata accessor for DuplicateContacts();
  v11 = sub_1956328A8();
  v12 = [objc_allocWithZone(CNContactStore) init];
  sub_1955EF3A8(v11, v12, &v19);

  v13 = v20;
  v14 = (v2 + OBJC_IVAR___CNDuplicateContactsManager_mergeResult);
  v15 = *(v2 + OBJC_IVAR___CNDuplicateContactsManager_mergeResult);
  *v14 = v19;
  v14[2] = v13;
  sub_195632968(v15);
  result = *v14;
  if (*v14)
  {
    v17 = v14[1];
    v18 = v14[2];
    *&v19 = *v14;
    *(&v19 + 1) = v17;
    v20 = v18;
    sub_195638AA8(result);
    sub_1955F6D8C(&v19, a1);

    *(v2 + OBJC_IVAR___CNDuplicateContactsManager_didPerformMerge) = 1;
    return v10 != 0;
  }

  __break(1u);
  return result;
}

void static DuplicateContactsManager.refreshManagedDuplicates(completionHandler:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v27 = [objc_allocWithZone(CNContactStore) init];
  if (!sub_1954C195C(v27))
  {
    if (qword_1EAECB8A8 != -1)
    {
      swift_once();
    }

    v11 = sub_19565D0EC();
    __swift_project_value_buffer(v11, qword_1EAED0960);
    v12 = sub_19565D0CC();
    v13 = sub_19565D67C();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Will defer duplicates analysis while in process.";
    goto LABEL_17;
  }

  v6 = [v27 currentHistoryToken];
  if (v6)
  {
    v7 = v6;
    v8 = sub_19565CF2C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xC000000000000000;
  }

  v16 = sub_19565CF1C();
  v18 = v17;
  sub_1954C1C4C(v8, v10);
  if (qword_1EAECB868 != -1)
  {
    swift_once();
  }

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  if (ManagedDuplicateStore.willRefresh(token:)(v19))
  {
    v20 = [objc_opt_self() currentEnvironment];
    v21 = [v20 schedulerProvider];

    v22 = [v21 backgroundScheduler];
    swift_unknownObjectRelease();
    v23 = swift_allocObject();
    v23[2] = v27;
    v23[3] = v16;
    v23[4] = v18;
    v23[5] = a1;
    v23[6] = a2;
    v23[7] = v3;
    aBlock[4] = sub_195639300;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195634310;
    aBlock[3] = &block_descriptor_6;
    v24 = _Block_copy(aBlock);
    v25 = v27;

    [v22 performBlock_];
    _Block_release(v24);

    swift_unknownObjectRelease();
    return;
  }

  if (qword_1EAECB8A8 != -1)
  {
    swift_once();
  }

  v26 = sub_19565D0EC();
  __swift_project_value_buffer(v26, qword_1EAED0960);
  v12 = sub_19565D0CC();
  v13 = sub_19565D68C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "ManagedDuplicates are already up to date. Exiting";
LABEL_17:
    _os_log_impl(&dword_1954A0000, v12, v13, v15, v14, 2u);
    MEMORY[0x19A8B5DB0](v14, -1, -1);
  }

LABEL_18:

  a1(0);
}

uint64_t sub_195633E3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_19563931C(a1);
  if (qword_1EAECB868 != -1)
  {
    swift_once();
  }

  if (sub_1954C1CA0(1) == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = sub_19565DB1C();

    if ((v9 & 1) == 0)
    {
      return a4(1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567B7A0;
  strcpy((inited + 32), "currentToken");
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v11 = sub_1956128FC(inited);
  swift_setDeallocating();
  sub_1954C2698(inited + 32, &unk_1EAECE400);
  if (*(v11 + 16))
  {
    v12 = sub_1954C1D98();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v12;
    sub_195629B68(v11, sub_1956299BC, 0, isUniquelyReferenced_nonNull_native, &v15);

    sub_195628EA8();
  }

  return a4(1);
}

uint64_t sub_195634310(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_19563438C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_19565D3FC();
  a4();
}

id DuplicateContactsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DuplicateContactsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicateContactsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195634518(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_19565DBDC();

    sub_19565D30C();
    v16 = sub_19565DBFC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_19565DB1C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1956346D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1955F7964(a3, v23 - v10, &qword_1EAECE3B0);
  v12 = sub_19565D56C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1954C2698(v11, &qword_1EAECE3B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_19565D55C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_19565D50C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_19565D2FC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1954C2698(a3, &qword_1EAECE3B0);

    return v21;
  }

LABEL_8:
  sub_1954C2698(a3, &qword_1EAECE3B0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1956349CC(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_19563552C(v12, v7, v5, a3);
  result = MEMORY[0x19A8B5DB0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_195634B3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE430);
  v4 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v31 - v6;
  v40 = sub_19565CDCC();
  result = MEMORY[0x1EEE9AC00](v40);
  v46 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v44 = a3;
  v11 = *(a3 + 64);
  v35 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v33 = 0;
  v34 = (v12 + 63) >> 6;
  v38 = v8 + 16;
  v39 = v8;
  v37 = v8 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v45 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v10 << 6);
    v19 = v44;
    v21 = v39;
    v20 = v40;
    v22 = *(v39 + 16);
    v23 = v46;
    v22(v46, v44[6] + *(v39 + 72) * v18, v40);
    v24 = v19[7];
    v36 = v18;
    v25 = *(v24 + 8 * v18);
    v26 = v41;
    v22(v41, v23, v20);
    v27 = v42;
    *(v26 + *(v43 + 48)) = v25;
    sub_1955F7964(v26, v27, &unk_1EAECE430);
    swift_bridgeObjectRetain_n();

    v28 = sub_1955ED8C8();
    sub_1954C2698(v26, &unk_1EAECE430);
    v29 = *(v21 + 8);
    v29(v27, v20);

    result = (v29)(v46, v20);
    v14 = v45;
    if (v28 == 1)
    {
      *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_1956355B4(v32, v31, v33, v44);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v34)
    {
      return sub_1956355B4(v32, v31, v33, v44);
    }

    v17 = *(v35 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v45 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195634E80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE430);
  v4 = MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v31 - v6;
  v40 = sub_19565CDCC();
  result = MEMORY[0x1EEE9AC00](v40);
  v46 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v44 = a3;
  v11 = *(a3 + 64);
  v35 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v33 = 0;
  v34 = (v12 + 63) >> 6;
  v38 = v8 + 16;
  v39 = v8;
  v37 = v8 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v45 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v10 << 6);
    v19 = v44;
    v21 = v39;
    v20 = v40;
    v22 = *(v39 + 16);
    v23 = v46;
    v22(v46, v44[6] + *(v39 + 72) * v18, v40);
    v24 = v19[7];
    v36 = v18;
    v25 = *(v24 + 8 * v18);
    v26 = v41;
    v22(v41, v23, v20);
    v27 = v42;
    *(v26 + *(v43 + 48)) = v25;
    sub_1955F7964(v26, v27, &unk_1EAECE430);
    swift_bridgeObjectRetain_n();

    v28 = sub_1955ED8C8();
    sub_1954C2698(v26, &unk_1EAECE430);
    v29 = *(v21 + 8);
    v29(v27, v20);

    result = (v29)(v46, v20);
    v14 = v45;
    if (v28 >= 2)
    {
      *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_1956355B4(v32, v31, v33, v44);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v34)
    {
      return sub_1956355B4(v32, v31, v33, v44);
    }

    v17 = *(v35 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v45 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1956351C4(unint64_t *a1, uint64_t a2, void *a3)
{
  v37 = a2;
  v38 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE430);
  v4 = MEMORY[0x1EEE9AC00](v44);
  v50 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v37 - v6;
  v47 = sub_19565CDCC();
  result = MEMORY[0x1EEE9AC00](v47);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v10 = 0;
  v45 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v42 = v8 + 16;
  v43 = v8;
  v41 = (v8 + 8);
  v18 = v47;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v46 = (v16 - 1) & v16;
LABEL_11:
    v22 = v19 | (v10 << 6);
    v23 = v45;
    v24 = *(v43 + 16);
    v25 = v48;
    v24(v48, v45[6] + *(v43 + 72) * v22, v18);
    v26 = v23[7];
    v40 = v22;
    v27 = *(v26 + 8 * v22);
    v28 = v49;
    v24(v49, v25, v18);
    v29 = v44;
    *(v28 + *(v44 + 48)) = v27;
    v30 = v28;
    v31 = v50;
    sub_1955F7964(v30, v50, &unk_1EAECE430);
    v32 = *(v31 + *(v29 + 48));
    if (v32 >> 62)
    {
      v33 = sub_19565D81C();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_bridgeObjectRetain_n();

    sub_1954C2698(v49, &unk_1EAECE430);
    v34 = *v41;
    v35 = v47;
    (*v41)(v50, v47);

    result = (v34)(v48, v35);
    v16 = v46;
    if (v33 >= 2)
    {
      *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v39++, 1))
      {
        goto LABEL_20;
      }
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_1956355B4(v38, v37, v39, v45);
    }

    v21 = v12[v10];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v46 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_19563552C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1956355B4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_19565CDCC();
  v7 = *(v46 - 8);
  v8 = MEMORY[0x1EEE9AC00](v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE178);
  result = sub_19565DA7C();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_1955EE56C();
    v42 = v23;

    result = sub_19565D1CC();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_195635A20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_19565DBDC();
  sub_19565D30C();
  v8 = sub_19565DBFC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_19565DB1C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1956366C0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_195635B94(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_19565D82C();

    if (v16)
    {

      sub_1954C3460(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_19565D81C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_195635E08(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_19563628C(v27 + 1, a5);
        }

        v28 = v15;
        sub_1956364AC(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_1954C3460(0, a3);
    v18 = sub_19565D74C();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_19565D75C();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_195636530(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_195635E08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_19565D8AC();
    v20 = v7;
    sub_19565D80C();
    if (sub_19565D83C())
    {
      sub_1954C3460(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_19563628C(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_19565D74C();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_19565D83C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

uint64_t sub_19563602C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE410);
  result = sub_19565D89C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_19565DBDC();
      sub_19565D30C();
      result = sub_19565DBFC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19563628C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_19565D89C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_19565D74C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_1956364AC(uint64_t a1, uint64_t a2)
{
  sub_19565D74C();
  result = sub_19565D7FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_195636530(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_19563628C(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1956369B0(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_195636D28(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_19565D74C();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_1954C3460(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_19565D75C();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_19565DB4C();
  __break(1u);
}

uint64_t sub_1956366C0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_19563602C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_195636854();
      goto LABEL_16;
    }

    sub_195636AF0();
  }

  v10 = *v4;
  sub_19565DBDC();
  sub_19565D30C();
  result = sub_19565DBFC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_19565DB1C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_19565DB4C();
  __break(1u);
  return result;
}

void *sub_195636854()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE410);
  v2 = *v0;
  v3 = sub_19565D88C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1956369B0(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_19565D88C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_195636AF0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE410);
  result = sub_19565D89C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_19565DBDC();

      sub_19565D30C();
      result = sub_19565DBFC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_195636D28(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_19565D89C();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_19565D74C();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

unint64_t sub_195636F34(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CC0];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x19A8B3850](v5, v30);
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = v3;
      sub_195633050(&v40, a2, &v39);
      if (v3)
      {
        goto LABEL_40;
      }

      v10 = v39;
      v7 = (v39 >> 62);
      if (v39 >> 62)
      {
        v11 = sub_19565D81C();
      }

      else
      {
        v11 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        v27 = sub_19565D81C();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v6;
        }
      }

      else
      {
        v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v15 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_19565D81C();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_19565D91C();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v7)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_19565D81C();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v11)
        {
          goto LABEL_44;
        }

        v37 = v6;
        v20 = v15 + 8 * v16 + 32;
        v31 = v15;
        if (v7)
        {
          if (v18 < 1)
          {
            goto LABEL_46;
          }

          sub_195601910(&unk_1EAECE3F0, &qword_1EAECE3E8);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3E8);
            v22 = sub_1955F536C(v38, j, v10);
            v24 = *v23;
            (v22)(v38, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_1954C3460(0, &unk_1EAECB840);
          swift_arrayInitWithCopy();
        }

        v6 = v37;
        v3 = v9;
        if (v11 >= 1)
        {
          v25 = *(v31 + 16);
          v8 = __OFADD__(v25, v11);
          v26 = v25 + v11;
          if (v8)
          {
            goto LABEL_45;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v11 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v5 == v32)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_19565D81C();
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1956372C4(unint64_t isUniquelyReferenced_nonNull_bridgeObject, void *a2, uint64_t a3)
{
  v4 = v3;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v29)
  {
    v6 = 0;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = i;
    v34 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v36)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x19A8B3850](v6, v31);
      }

      else
      {
        if (v6 >= *(v35 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v34 + 8 * v6);
      }

      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      v42 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = v4;
      sub_195632B80(&v42, a2, a3, &v41);
      if (v4)
      {
        goto LABEL_40;
      }

      v11 = v41;
      v8 = (v41 >> 62);
      if (v41 >> 62)
      {
        v12 = sub_19565D81C();
      }

      else
      {
        v12 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v7 >> 62;
      if (v7 >> 62)
      {
        v28 = sub_19565D81C();
        v15 = v28 + v12;
        if (__OFADD__(v28, v12))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v7;
        }
      }

      else
      {
        v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          v16 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_19565D81C();
        goto LABEL_21;
      }

      if (v13)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_19565D91C();
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v8)
      {
        v20 = v16;
        isUniquelyReferenced_nonNull_bridgeObject = sub_19565D81C();
        v16 = v20;
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v12)
        {
          goto LABEL_44;
        }

        v39 = v7;
        v21 = v16 + 8 * v17 + 32;
        v32 = v16;
        if (v8)
        {
          if (v19 < 1)
          {
            goto LABEL_46;
          }

          sub_195601910(&qword_1EAECE3E0, &unk_1EAECDF80);
          for (j = 0; j != v19; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
            v23 = sub_1955F5264(v40, j, v11);
            v25 = *v24;
            (v23)(v40, 0);
            *(v21 + 8 * j) = v25;
          }
        }

        else
        {
          sub_1954C3460(0, &qword_1EAECB830);
          swift_arrayInitWithCopy();
        }

        v7 = v39;
        v4 = v10;
        if (v12 >= 1)
        {
          v26 = *(v32 + 16);
          v9 = __OFADD__(v26, v12);
          v27 = v26 + v12;
          if (v9)
          {
            goto LABEL_45;
          }

          *(v32 + 16) = v27;
        }
      }

      else
      {

        if (v12 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v6 == v33)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_19565D81C();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_195637654(unint64_t a1)
{
  v50 = sub_19565CDCC();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_26:
    v4 = sub_19565D81C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
      v49 = a1 & 0xC000000000000001;
      v45 = v46 + 32;
      v6 = MEMORY[0x1E69E7CC8];
      v44 = (v46 + 8);
      v43 = xmmword_19567B7B0;
      v47 = a1;
      while (1)
      {
        if (v49)
        {
          v10 = MEMORY[0x19A8B3850](v5, a1);
        }

        else
        {
          if (v5 >= *(v48 + 16))
          {
            goto LABEL_23;
          }

          v10 = *(a1 + 8 * v5 + 32);
        }

        v11 = v10;
        v12 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        a1 = v4;
        sub_19565CDBC();
        v13 = [v11 givenName];
        v14 = sub_19565D28C();
        v16 = v15;

        sub_1955EE604(385, v14, v16);

        sub_19565CD2C();
        v17 = [v11 middleName];
        v18 = sub_19565D28C();
        v20 = v19;

        sub_1955EE604(385, v18, v20);

        sub_19565CD6C();
        v21 = [v11 familyName];
        v22 = sub_19565D28C();
        v24 = v23;

        sub_1955EE604(385, v22, v24);

        sub_19565CD4C();
        v25 = [v11 nameSuffix];
        v26 = sub_19565D28C();
        v28 = v27;

        sub_1955EE604(385, v26, v28);

        sub_19565CDAC();
        if (sub_1955ED8C8() <= 0)
        {
          sub_1955F4880();
        }

        v30 = sub_1955EBEC0(v3);
        v31 = v6[2];
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_24;
        }

        v34 = v29;
        if (v6[3] < v33)
        {
          sub_1956259F8(v33, 1);
          v6 = v51;
          v35 = sub_1955EBEC0(v3);
          if ((v34 & 1) != (v36 & 1))
          {
            result = sub_19565DB5C();
            __break(1u);
            return result;
          }

          v30 = v35;
        }

        if (v34)
        {
          v7 = (*v44)(v3, v50);
          v8 = (v6[7] + 8 * v30);
          MEMORY[0x19A8B3320](v7);
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19565D42C();
          }

          sub_19565D48C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
          v37 = swift_allocObject();
          *(v37 + 16) = v43;
          *(v37 + 32) = v11;
          v6[(v30 >> 6) + 8] |= 1 << v30;
          (*(v46 + 32))(v6[6] + *(v46 + 72) * v30, v3, v50);
          *(v6[7] + 8 * v30) = v37;
          v38 = v6[2];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_25;
          }

          v6[2] = v40;
        }

        ++v5;
        v4 = a1;
        v9 = v12 == a1;
        a1 = v47;
        if (v9)
        {
          return v6;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_195637B04(unint64_t a1, void (*a2)(_OWORD *__return_ptr, id))
{
  v31 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_26:
    v4 = sub_19565D81C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x19A8B3850](v5, a1);
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v9 = *(a1 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        a2(v29, v9);
        if (v2)
        {

          return v6;
        }

        v13 = sub_1955EBE38(v29);
        v14 = v6[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_24;
        }

        v17 = v12;
        if (v6[3] < v16)
        {
          sub_195625748(v16, 1);
          v6 = v31;
          v18 = sub_1955EBE38(v29);
          if ((v17 & 1) != (v19 & 1))
          {
            result = sub_19565DB5C();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {
          v7 = sub_1955EC07C(v29);
          v8 = (v6[7] + 8 * v13);
          MEMORY[0x19A8B3320](v7);
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19565D42C();
          }

          sub_19565D48C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_19567B7B0;
          *(v20 + 32) = v10;
          v6[(v13 >> 6) + 8] |= 1 << v13;
          v21 = v6[6] + 40 * v13;
          v22 = v29[1];
          v23 = v29[0];
          *(v21 + 32) = v30;
          *v21 = v23;
          *(v21 + 16) = v22;
          *(v6[7] + 8 * v13) = v20;
          v24 = v6[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_25;
          }

          v6[2] = v26;
        }

        ++v5;
        if (v11 == v4)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_28:

  return v6;
}

uint64_t sub_195637DB0(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v4 = sub_1954C3460(0, &qword_1EAECB830);
    v5 = sub_19563BB3C(&qword_1EAECE160, &qword_1EAECB830);
    result = MEMORY[0x19A8B34E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = off_1E7410890;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8B3850](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_195635B94(&v12, v10, &qword_1EAECB830, off_1E7410890, &unk_1EAECE420, &unk_19567D3F0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_19565D81C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_195637F3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A8B34E0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_195635A20(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_195637FD4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v4 = sub_1954C3460(0, &qword_1EAECDD90);
    v5 = sub_19563BB3C(&qword_1EAECE4D8, &qword_1EAECDD90);
    result = MEMORY[0x19A8B34E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E696AEC0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8B3850](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_195635B94(&v12, v10, &qword_1EAECDD90, 0x1E696AEC0, &unk_1EAECE450, &unk_19567BAC0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_19565D81C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_195638160(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v4 = sub_1954C3460(0, &unk_1EAECE440);
    v5 = sub_19563BB3C(&qword_1EAECE4D0, &unk_1EAECE440);
    result = MEMORY[0x19A8B34E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = off_1E7410908;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8B3850](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_195635B94(&v12, v10, &unk_1EAECE440, off_1E7410908, &qword_1EAECDD88, &unk_19567BAB8);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_19565D81C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1956382EC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v4 = sub_1954C3460(0, &qword_1EAECDDB8);
    v5 = sub_19563BB3C(&qword_1EAECE4C8, &qword_1EAECDDB8);
    result = MEMORY[0x19A8B34E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E695DF10uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8B3850](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_195635B94(&v12, v10, &qword_1EAECDDB8, 0x1E695DF10, &qword_1EAECE4C0, &unk_19567D428);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_19565D81C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_195638478(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v4 = sub_1954C3460(0, &qword_1EAECE4A0);
    v5 = sub_19563BB3C(&unk_1EAECE4B0, &qword_1EAECE4A0);
    result = MEMORY[0x19A8B34E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = off_1E74107F8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8B3850](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_195635B94(&v12, v10, &qword_1EAECE4A0, off_1E74107F8, &qword_1EAECE4A8, &unk_19567D420);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_19565D81C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_195638604(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v4 = sub_1954C3460(0, &qword_1EAECDDB0);
    v5 = sub_19563BB3C(&qword_1EAECE498, &qword_1EAECDDB0);
    result = MEMORY[0x19A8B34E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = off_1E74105F0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8B3850](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_195635B94(&v12, v10, &qword_1EAECDDB0, off_1E74105F0, &qword_1EAECE490, &unk_19567D418);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_19565D81C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_195638790(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v4 = sub_1954C3460(0, &qword_1EAECE470);
    v5 = sub_19563BB3C(&unk_1EAECE480, &qword_1EAECE470);
    result = MEMORY[0x19A8B34E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = off_1E7410A28;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8B3850](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_195635B94(&v12, v10, &qword_1EAECE470, off_1E7410A28, &qword_1EAECE478, &unk_19567D410);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_19565D81C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_19563891C(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v4 = sub_1954C3460(0, &qword_1EAECDDA8);
    v5 = sub_19563BB3C(&qword_1EAECE468, &qword_1EAECDDA8);
    result = MEMORY[0x19A8B34E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = off_1E7410950;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8B3850](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_195635B94(&v12, v10, &qword_1EAECDDA8, off_1E7410950, &qword_1EAECE460, &unk_19567D408);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_19565D81C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_195638AA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s8Contacts09DuplicateA7ManagerC29applyMergeResultToSaveRequest_10signaturesSbSo06CNSaveI0C_SaySSGtFZ_0(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a2;
    v73 = *(a2 + 16);
    if (qword_1EAECB868 != -1)
    {
      goto LABEL_63;
    }

    while (1)
    {
      v4 = qword_1EAECB870;
      sub_1954C3460(0, &qword_1EAECB838);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_19567B7A0;
      *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
      *(v5 + 64) = sub_195601910(&qword_1EAECB850, &qword_1EAECDC50);
      *(v5 + 32) = v3;

      v6 = sub_19565D66C();
      v7 = sub_1955E7684(v6);

      v74 = v7;
      if (v7 >> 62)
      {
        v3 = sub_19565D81C();
        if (!v3)
        {
LABEL_65:

          v9 = MEMORY[0x1E69E7CC0];
LABEL_66:
          type metadata accessor for DuplicateContacts();
          v70 = [objc_allocWithZone(CNContactStore) init];
          sub_1955EF4E4(v9, v70, &v92);

          sub_1955F6D8C(&v92, a1);

          v2 = v73;
          return v2 != 0;
        }
      }

      else
      {
        v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v3)
        {
          goto LABEL_65;
        }
      }

      v99 = MEMORY[0x1E69E7CC0];
      sub_1955EAE4C(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v8 = 0;
      v9 = v99;
      v75 = v3;
      v10 = 1;
LABEL_7:
      v79 = v10;
      if ((v74 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (v8 < *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v74 + 32 + 8 * v8);
        goto LABEL_11;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
    }

    v11 = MEMORY[0x19A8B3850](v8, v74);
LABEL_11:
    v12 = v11;
    v77 = OBJC_IVAR___CNManagedDuplicate__privateContacts;
    v13 = *&v11[OBJC_IVAR___CNManagedDuplicate__privateContacts];
    v78 = v9;
    if (v13 >> 62)
    {
      v80 = sub_19565D81C();
    }

    else
    {
      v80 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
    swift_beginAccess();
    v76 = v14;
    v15 = *&v12[v14];
    v81 = v12;
    if (v15 >> 62)
    {
      v3 = sub_19565D81C();
    }

    else
    {
      v3 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (v3 != v16)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x19A8B3850](v16, v15);
      }

      else
      {
        if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v18 = *(v15 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v21 = &v18[OBJC_IVAR___CNManagedCohort_identifier];
      swift_beginAccess();
      v23 = *v21;
      v22 = *(v21 + 1);

      ++v16;
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_195617A30(0, *(v17 + 2) + 1, 1, v17);
        }

        v25 = *(v17 + 2);
        v24 = *(v17 + 3);
        if (v25 >= v24 >> 1)
        {
          v17 = sub_195617A30((v24 > 1), v25 + 1, 1, v17);
        }

        *(v17 + 2) = v25 + 1;
        v26 = &v17[16 * v25];
        *(v26 + 4) = v23;
        *(v26 + 5) = v22;
        v16 = v20;
      }
    }

    v27 = *(v17 + 2);

    if (v80 == v27)
    {
      v28 = *&v81[v76];
      if (v28 >> 62)
      {
        v3 = sub_19565D81C();
      }

      else
      {
        v3 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      while (v3 != v29)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x19A8B3850](v29, v28);
        }

        else
        {
          if (v29 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v31 = *(v28 + 8 * v29 + 32);
        }

        v32 = v31;
        v33 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_59;
        }

        v34 = &v31[OBJC_IVAR___CNManagedCohort_identifier];
        swift_beginAccess();
        v36 = *v34;
        v35 = *(v34 + 1);

        ++v29;
        if (v35)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_195617A30(0, *(v30 + 2) + 1, 1, v30);
          }

          v38 = *(v30 + 2);
          v37 = *(v30 + 3);
          if (v38 >= v37 >> 1)
          {
            v30 = sub_195617A30((v37 > 1), v38 + 1, 1, v30);
          }

          *(v30 + 2) = v38 + 1;
          v39 = &v30[16 * v38];
          *(v39 + 4) = v36;
          *(v39 + 5) = v35;
          v29 = v33;
        }
      }

      v41 = sub_195637F3C(v30);

      v40 = v81;
      v42 = sub_195615614();
      v43 = sub_195637F3C(v42);

      v44 = sub_195634518(v41, v43);

      v9 = v78;
      if (v44)
      {
LABEL_47:
        v45 = *&v40[v77];
        swift_bridgeObjectRetain_n();
        v46 = v40;
        v91 = sub_195618EA0(v45);
        sub_19561B3E8(&v91, v46);

        v47 = v91;
        v48 = &v46[OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage];
        swift_beginAccess();
        v49 = *v48;
        v50 = *(v48 + 2);
        v83[1] = *(v48 + 1);
        v83[2] = v50;
        v83[0] = v49;
        v51 = *(v48 + 3);
        v52 = *(v48 + 4);
        v53 = *(v48 + 6);
        v83[5] = *(v48 + 5);
        v83[6] = v53;
        v83[3] = v51;
        v83[4] = v52;
        v54 = *(v48 + 1);
        v92 = *v48;
        v93 = v54;
        v55 = *(v48 + 2);
        v56 = *(v48 + 3);
        v57 = *(v48 + 6);
        v97 = *(v48 + 5);
        v98 = v57;
        v58 = *(v48 + 4);
        v95 = v56;
        v96 = v58;
        v94 = v55;
        v59 = &v46[OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster];
        swift_beginAccess();
        v60 = *v59;
        v61 = v59[1];
        sub_1955F7964(v83, v82, &qword_1EAECDD98);
        sub_1955F79CC(v60, v61);

        v89 = v97;
        v90 = v98;
        v87 = v95;
        v88 = v96;
        v85 = v93;
        v86 = v94;
        v84 = v92;
        v99 = v9;
        v63 = *(v9 + 16);
        v62 = *(v9 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1955EAE4C((v62 > 1), v63 + 1, 1);
          v9 = v99;
        }

        *(v9 + 16) = v63 + 1;
        v64 = v9 + 136 * v63;
        *(v64 + 32) = v47;
        v65 = v84;
        v66 = v85;
        *(v64 + 72) = v86;
        *(v64 + 56) = v66;
        *(v64 + 40) = v65;
        v67 = v87;
        v68 = v88;
        v69 = v89;
        *(v64 + 136) = v90;
        *(v64 + 120) = v69;
        *(v64 + 104) = v68;
        *(v64 + 88) = v67;
        *(v64 + 152) = v60;
        *(v64 + 160) = v61;
        v3 = v75;
        if (v79 == v75)
        {

          goto LABEL_66;
        }

        v8 = v79;
        v10 = v79 + 1;
        if (!__OFADD__(v79, 1))
        {
          goto LABEL_7;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    else
    {
      v9 = v78;
      v40 = v81;
    }

    sub_1956165B4();
    goto LABEL_47;
  }

  return v2 != 0;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_19563931C(uint64_t *a1)
{
  v2 = v1;
  if (qword_1EAECB868 != -1)
  {
    goto LABEL_136;
  }

  while (1)
  {
    v134 = qword_1EAECB870;
    v4 = type metadata accessor for DuplicateContactsManager();
    v5 = objc_allocWithZone(v4);
    v6 = MEMORY[0x1E69E7CC0];
    *&v5[OBJC_IVAR___CNDuplicateContactsManager_contacts] = MEMORY[0x1E69E7CC0];
    *&v5[OBJC_IVAR___CNDuplicateContactsManager_findResult] = 0;
    v7 = &v5[OBJC_IVAR___CNDuplicateContactsManager_mergeResult];
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    v5[OBJC_IVAR___CNDuplicateContactsManager_didPerformMerge] = 0;
    *&v5[OBJC_IVAR___CNDuplicateContactsManager_contactStore] = a1;
    v142.receiver = v5;
    v142.super_class = v4;
    v8 = a1;
    v9 = objc_msgSendSuper2(&v142, sel_init);
    if (qword_1EAECB8E0 != -1)
    {
      swift_once();
    }

    v10 = objc_allocWithZone(CNContactFetchRequest);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDFD0);
    v11 = sub_19565D3EC();
    v12 = [v10 initWithKeysToFetch_];

    [v12 setUnifyResults_];
    [v12 setMutableObjects_];
    v13 = sub_1956334DC();
    v14 = v9;
    v15 = v2;
    v16 = sub_195636F34(v13, v14);

    v17 = v14;
    v18 = v12;
    v19 = sub_1956372C4(v16, v18, v17);
    v133 = v15;

    *&v17[OBJC_IVAR___CNDuplicateContactsManager_contacts] = v19;

    v127 = v17;
    v2 = sub_1956328A8();
    v20 = *(v2 + 16);
    if (v20)
    {
      v141 = v6;
      sub_19565D97C();
      v21 = type metadata accessor for ManagedDuplicate();
      v22 = 32;
      do
      {
        objc_allocWithZone(v21);
        v23 = v8;

        sub_19561A064(v24, v23);

        sub_19565D94C();
        sub_19565D98C();
        sub_19565D99C();
        sub_19565D95C();
        v22 += 8;
        --v20;
      }

      while (v20);

      v25 = v141;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    v130 = v25 >> 62;
    if (v25 >> 62)
    {
      v26 = sub_19565D81C();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = MEMORY[0x1E69E7CC0];
    v136 = v25;
    if (v26)
    {
      v139 = MEMORY[0x1E69E7CC0];
      a1 = &v139;
      sub_1955EA77C(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        __break(1u);
        goto LABEL_139;
      }

      v27 = v139;
      if ((v25 & 0xC000000000000001) != 0)
      {
        v2 = 0;
        while (1)
        {
          v28 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          a1 = MEMORY[0x19A8B3850](v2, v136);
          v29 = (a1 + OBJC_IVAR___CNManagedDuplicate_signature);
          swift_beginAccess();
          v30 = v29[1];
          if (!v30)
          {
            goto LABEL_142;
          }

          v31 = *v29;

          swift_unknownObjectRelease();
          v139 = v27;
          v33 = *(v27 + 16);
          v32 = *(v27 + 24);
          if (v33 >= v32 >> 1)
          {
            a1 = &v139;
            sub_1955EA77C((v32 > 1), v33 + 1, 1);
            v27 = v139;
          }

          *(v27 + 16) = v33 + 1;
          v34 = v27 + 16 * v33;
          *(v34 + 32) = v31;
          *(v34 + 40) = v30;
          ++v2;
          if (v28 == v26)
          {
            goto LABEL_27;
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
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v35 = 0;
      v135 = v25 & 0xFFFFFFFFFFFFFF8;
      v36 = (v25 + 32);
      do
      {
        if (v35 >= *(v135 + 16))
        {
          goto LABEL_124;
        }

        v25 = *&v36[8 * v35];
        a1 = (v25 + OBJC_IVAR___CNManagedDuplicate_signature);
        swift_beginAccess();
        v2 = a1[1];
        if (!v2)
        {
          goto LABEL_141;
        }

        v37 = *a1;
        v139 = v27;
        v39 = *(v27 + 16);
        v38 = *(v27 + 24);

        if (v39 >= v38 >> 1)
        {
          a1 = &v139;
          sub_1955EA77C((v38 > 1), v39 + 1, 1);
          v27 = v139;
        }

        ++v35;
        *(v27 + 16) = v39 + 1;
        v40 = v27 + 16 * v39;
        *(v40 + 32) = v37;
        *(v40 + 40) = v2;
      }

      while (v26 != v35);
LABEL_27:
      v25 = v136;
    }

    if (qword_1EAECB8A8 != -1)
    {
      swift_once();
    }

    v41 = sub_19565D0EC();
    v42 = __swift_project_value_buffer(v41, qword_1EAED0960);

    v43 = sub_19565D0CC();
    v44 = sub_19565D68C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      if (v130)
      {
        v46 = sub_19565D81C();
      }

      else
      {
        v46 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v45 + 4) = v46;

      _os_log_impl(&dword_1954A0000, v43, v44, "Found %ld possible duplicate contacts to refresh", v45, 0xCu);
      MEMORY[0x19A8B5DB0](v45, -1, -1);
    }

    else
    {
    }

    v47 = v133;
    sub_1955E685C();
    if (v47)
    {

      v139 = 0;
      v140 = 0xE000000000000000;
      sub_19565D8DC();
      MEMORY[0x19A8B3270](0xD000000000000039, 0x800000019568D930);
      swift_getErrorValue();
      v48 = sub_19565DB8C();
      MEMORY[0x19A8B3270](v48);

      v49 = v139;
      v50 = v140;
      sub_1955E4254();
      swift_allocError();
      *v51 = v49;
      *(v51 + 8) = v50;
      *(v51 + 16) = 3;
      swift_willThrow();

      return;
    }

    v135 = 0;
    v126 = v42;
    sub_1954C3460(0, &qword_1EAECB838);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_19567B7A0;
    v25 = &unk_19567C440;
    *(v52 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
    *(v52 + 64) = sub_195601910(&qword_1EAECB850, &qword_1EAECDC50);
    *(v52 + 32) = v27;

    v53 = sub_19565D66C();
    v54 = sub_1955E7684(v53);
    v26 = v54;
    v129 = v53;
    if (!(v54 >> 62))
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_40;
    }

LABEL_139:
    v55 = sub_19565D81C();
LABEL_40:
    v56 = v136;
    v57 = v135;
    if (v55)
    {
      v138 = MEMORY[0x1E69E7CC0];
      sub_1955EA77C(0, v55 & ~(v55 >> 63), 0);
      if (v55 < 0)
      {
        __break(1u);
LABEL_141:
        v123 = v25;
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
        return;
      }

      v2 = 0;
      a1 = v138;
      v58 = v26;
      v133 = v26 & 0xC000000000000001;
      v131 = v26 & 0xFFFFFFFFFFFFFF8;
      v132 = v26;
      do
      {
        v59 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_125;
        }

        if (v133)
        {
          v60 = MEMORY[0x19A8B3850](v2, v58);
        }

        else
        {
          if (v2 >= *(v131 + 16))
          {
            goto LABEL_134;
          }

          v60 = v58[v2 + 4];
        }

        v61 = v60;
        v62 = &v60[OBJC_IVAR___CNManagedDuplicate_signature];
        swift_beginAccess();
        v63 = *(v62 + 1);
        if (!v63)
        {
          goto LABEL_143;
        }

        v64 = *v62;

        v138 = a1;
        v66 = a1[2];
        v65 = a1[3];
        if (v66 >= v65 >> 1)
        {
          sub_1955EA77C((v65 > 1), v66 + 1, 1);
          a1 = v138;
        }

        a1[2] = v66 + 1;
        v67 = &a1[2 * v66];
        v67[4] = v64;
        v67[5] = v63;
        ++v2;
        v58 = v132;
      }

      while (v59 != v55);

      v56 = v136;
      v57 = v135;
      if (!a1[2])
      {
LABEL_57:

        goto LABEL_69;
      }
    }

    else
    {

      a1 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_57;
      }
    }

    if (!v130)
    {
      v2 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        break;
      }

      goto LABEL_59;
    }

    v2 = sub_19565D81C();
    if (!v2)
    {
      break;
    }

LABEL_59:
    v68 = 0;
    v133 = v56 & 0xC000000000000001;
    v132 = (v56 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v133)
      {
        v69 = MEMORY[0x19A8B3850](v68, v56);
      }

      else
      {
        if (v68 >= v132[2])
        {
          goto LABEL_131;
        }

        v69 = *(v56 + 8 * v68 + 32);
      }

      v70 = v69;
      v71 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      v72 = &v69[OBJC_IVAR___CNManagedDuplicate_signature];
      v73 = swift_beginAccess();
      v74 = v72[1];
      if (!v74)
      {
        goto LABEL_144;
      }

      v137[0] = *v72;
      v137[1] = v74;
      MEMORY[0x1EEE9AC00](v73);
      v124[2] = v137;

      v75 = v135;
      v76 = sub_1956219E0(sub_19561C1E4, v124, a1);
      v135 = v75;

      v77 = OBJC_IVAR___CNManagedDuplicate_isIgnored;
      swift_beginAccess();
      v70[v77] = v76 & 1;

      ++v68;
      v56 = v136;
      if (v71 == v2)
      {
        goto LABEL_68;
      }
    }

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
    swift_once();
  }

LABEL_68:

  v57 = v135;
LABEL_69:
  v78 = v57;
  sub_1955E57B4();
  if (v57)
  {
    v79 = v57;
    a1 = v126;
    v80 = sub_19565D0CC();
    v81 = sub_19565D69C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v137[0] = v83;
      *v82 = 136315138;
      swift_getErrorValue();
      v84 = sub_19565DB8C();
      a1 = v85;
      v86 = sub_1955EA0F8(v84, v85, v137);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_1954A0000, v80, v81, "Error saving refreshed duplicates. %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x19A8B5DB0](v83, -1, -1);
      v87 = v82;
      v56 = v136;
      MEMORY[0x19A8B5DB0](v87, -1, -1);
    }

    else
    {
    }

    v125 = 0;
  }

  else
  {
    v125 = 0;

    v88 = sub_19565D0CC();
    a1 = sub_19565D68C();
    if (os_log_type_enabled(v88, a1))
    {
      v89 = swift_slowAlloc();
      *v89 = 134217984;
      if (v130)
      {
        v90 = sub_19565D81C();
      }

      else
      {
        v90 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v89 + 4) = v90;

      _os_log_impl(&dword_1954A0000, v88, a1, "Successfully refreshed %ld duplicates", v89, 0xCu);
      MEMORY[0x19A8B5DB0](v89, -1, -1);
    }

    else
    {
    }
  }

  if (v130)
  {
    v91 = sub_19565D81C();
  }

  else
  {
    v91 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = MEMORY[0x1E69E7CC0];
  if (v91)
  {
    v2 = 0;
    v131 = v56 & 0xC000000000000001;
    v130 = v56 & 0xFFFFFFFFFFFFFF8;
    v129 = (v56 + 32);
    v93 = MEMORY[0x1E69E7CC0];
    v128 = v91;
    do
    {
      if (v131)
      {
        v94 = MEMORY[0x19A8B3850](v2, v56);
      }

      else
      {
        if (v2 >= *(v130 + 16))
        {
          goto LABEL_127;
        }

        v94 = *(v129 + v2);
      }

      v95 = v94;
      v96 = __OFADD__(v2++, 1);
      if (v96)
      {
        goto LABEL_126;
      }

      v135 = v2;
      v97 = *&v94[OBJC_IVAR___CNManagedDuplicate__privateContacts];
      if (v97 >> 62)
      {
        v2 = sub_19565D81C();
        if (!v2)
        {
LABEL_104:

          a1 = v92;
          goto LABEL_105;
        }
      }

      else
      {
        v2 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v2)
        {
          goto LABEL_104;
        }
      }

      v137[0] = v92;

      a1 = v137;
      sub_1955EA77C(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        goto LABEL_132;
      }

      v132 = v95;
      v133 = v93;
      v98 = 0;
      a1 = v137[0];
      do
      {
        if ((v97 & 0xC000000000000001) != 0)
        {
          v99 = MEMORY[0x19A8B3850](v98, v97);
        }

        else
        {
          v99 = *(v97 + 8 * v98 + 32);
        }

        v100 = v99;
        v101 = [v99 identifier];
        v102 = sub_19565D28C();
        v104 = v103;

        v137[0] = a1;
        v106 = a1[2];
        v105 = a1[3];
        if (v106 >= v105 >> 1)
        {
          sub_1955EA77C((v105 > 1), v106 + 1, 1);
          a1 = v137[0];
        }

        ++v98;
        a1[2] = v106 + 1;
        v107 = &a1[2 * v106];
        v107[4] = v102;
        v107[5] = v104;
      }

      while (v2 != v98);

      v56 = v136;
      v93 = v133;
      v91 = v128;
      v92 = MEMORY[0x1E69E7CC0];
LABEL_105:
      v2 = a1[2];
      v108 = *(v93 + 2);
      v109 = v108 + v2;
      if (__OFADD__(v108, v2))
      {
        goto LABEL_128;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v109 <= *(v93 + 3) >> 1)
      {
        if (!a1[2])
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (v108 <= v109)
        {
          v111 = v108 + v2;
        }

        else
        {
          v111 = v108;
        }

        v93 = sub_195617A30(isUniquelyReferenced_nonNull_native, v111, 1, v93);
        if (!a1[2])
        {
LABEL_85:

          if (v2)
          {
            goto LABEL_129;
          }

          goto LABEL_86;
        }
      }

      if ((*(v93 + 3) >> 1) - *(v93 + 2) < v2)
      {
        goto LABEL_133;
      }

      swift_arrayInitWithCopy();

      if (v2)
      {
        v112 = *(v93 + 2);
        v96 = __OFADD__(v112, v2);
        v113 = v112 + v2;
        if (v96)
        {
          goto LABEL_135;
        }

        *(v93 + 2) = v113;
      }

LABEL_86:
      v2 = v135;
    }

    while (v135 != v91);
  }

  v114 = v125;
  sub_1955E6FC4();
  if (v114)
  {

    v115 = v114;
    v116 = sub_19565D0CC();
    v117 = sub_19565D69C();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v137[0] = v119;
      *v118 = 136315138;
      swift_getErrorValue();
      v120 = sub_19565DB8C();
      v122 = sub_1955EA0F8(v120, v121, v137);

      *(v118 + 4) = v122;
      _os_log_impl(&dword_1954A0000, v116, v117, "Duplicate contacts manager could not update availability for cohorts. %s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v119);
      MEMORY[0x19A8B5DB0](v119, -1, -1);
      MEMORY[0x19A8B5DB0](v118, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

void _s8Contacts09DuplicateA7ManagerC39updateRecentImagesDatabaseForSignaturesyySaySSGFZ_0(unint64_t a1)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v2 = sub_19565CF5C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  if (!*(a1 + 16))
  {
    return;
  }

  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v4;
  if (qword_1EAECB868 != -1)
  {
LABEL_50:
    swift_once();
  }

  sub_1954C3460(0, &qword_1EAECB838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19567B7A0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
  *(v6 + 64) = sub_195601910(&qword_1EAECB850, &qword_1EAECDC50);
  *(v6 + 32) = a1;

  v7 = sub_19565D66C();
  v8 = sub_1955E7684(v7);

  v55 = v8 >> 62;
  if (v8 >> 62)
  {
    if (sub_19565D81C() >= 1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_5:
    v59 = [objc_allocWithZone(CNContactImageStore) init];
    if (qword_1EAECB8A8 != -1)
    {
      swift_once();
    }

    v9 = sub_19565D0EC();
    v10 = __swift_project_value_buffer(v9, qword_1EAED0960);

    v54 = v10;
    a1 = sub_19565D0CC();
    v11 = sub_19565D68C();
    if (os_log_type_enabled(a1, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      if (v55)
      {
        v13 = sub_19565D81C();
      }

      else
      {
        v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 4) = v13;

      _os_log_impl(&dword_1954A0000, a1, v11, "Will updated recent images from %ld managed duplicates", v12, 0xCu);
      MEMORY[0x19A8B5DB0](v12, -1, -1);
    }

    else
    {
    }

    if (v55)
    {
      v14 = sub_19565D81C();
      if (!v14)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
LABEL_38:

        v40 = sub_19565D0CC();
        v41 = sub_19565D68C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 134217984;
          if (v55)
          {
            v43 = sub_19565D81C();
          }

          else
          {
            v43 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v42 + 4) = v43;

          _os_log_impl(&dword_1954A0000, v40, v41, "Successfully updated recent images from %ld managed duplicates", v42, 0xCu);
          MEMORY[0x19A8B5DB0](v42, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return;
      }
    }

    v15 = 0;
    v61 = v8 & 0xFFFFFFFFFFFFFF8;
    v62 = v8 & 0xC000000000000001;
    v60 = v8 + 32;
    v16 = (v3 + 8);
    v3 = 0x1E7410000uLL;
    v57 = v8;
    v56 = v14;
    while (1)
    {
      if (v62)
      {
        v17 = MEMORY[0x19A8B3850](v15, v8);
        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v15 >= *(v61 + 16))
        {
          goto LABEL_49;
        }

        v17 = *(v60 + 8 * v15);
        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      v65 = v17;
      v19 = sub_195615B20();
      v20 = *(v19 + 16);
      if (v20)
      {
        v64 = v15;
        v67[0] = MEMORY[0x1E69E7CC0];
        sub_19565D97C();
        v63 = v19;
        v21 = v19 + 56;
        v22 = v58;
        do
        {
          v23 = *(v21 - 24);
          v24 = *(v21 - 16);
          sub_1955F79F4(v23, v24);

          sub_1955F79F4(v23, v24);
          v25 = sub_19565D27C();
          v69 = NSRectFromString(v25);
          x = v69.origin.x;
          y = v69.origin.y;
          width = v69.size.width;
          height = v69.size.height;

          sub_19565CF4C();
          v30 = objc_allocWithZone(*(v3 + 1232));
          v31 = v16;
          v32 = sub_19565CF0C();
          sub_1954C1C4C(v23, v24);
          v33 = sub_19565CF3C();
          [v30 initWithImageData:v32 cropRect:v33 lastUsedDate:{x, y, width, height}];

          v16 = v31;
          sub_1954C1C4C(v23, v24);

          (*v31)(v22, v66);
          sub_19565D94C();
          sub_19565D98C();
          v3 = 0x1E7410000;
          sub_19565D99C();
          sub_19565D95C();
          v21 += 32;
          --v20;
        }

        while (v20);

        a1 = v67[0];
        v8 = v57;
        v14 = v56;
        v15 = v64;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      v34 = v65;
      if (a1 >> 62)
      {
        if (!sub_19565D81C())
        {
LABEL_18:

          goto LABEL_19;
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      sub_1954C3460(0, &unk_1EAECE3C0);
      v35 = sub_19565D3EC();
      v36 = &v34[OBJC_IVAR___CNManagedDuplicate_primaryID];
      swift_beginAccess();
      if (!*(v36 + 1))
      {
        __break(1u);
      }

      v37 = objc_opt_self();

      v38 = sub_19565D27C();

      a1 = [v37 requestToCreateImages:v35 forContactIdentifier:v38];

      v67[0] = 0;
      if (([v59 performCreateRequest:a1 error:v67] & 1) == 0)
      {
        v44 = v67[0];

        v45 = sub_19565CE6C();

        swift_willThrow();
        v46 = v45;
        v47 = sub_19565D0CC();
        v48 = sub_19565D69C();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v67[0] = v50;
          *v49 = 136315138;
          swift_getErrorValue();
          v51 = sub_19565DB8C();
          v53 = sub_1955EA0F8(v51, v52, v67);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_1954A0000, v47, v48, "Error updating recent images for merged duplicates %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x19A8B5DB0](v50, -1, -1);
          MEMORY[0x19A8B5DB0](v49, -1, -1);
        }

        else
        {
        }

        return;
      }

      v39 = v67[0];

      v34 = a1;
      v3 = 0x1E7410000;
LABEL_19:

      if (v15 == v14)
      {
        goto LABEL_38;
      }
    }
  }
}

void _s8Contacts09DuplicateA7ManagerC40updateRecentPostersDatabaseForSignaturesyySaySSGFZ_0(uint64_t a1)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v2 = sub_19565CF5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19565CFAC();
  v7 = MEMORY[0x1EEE9AC00](v6);
  if (!*(a1 + 16))
  {
    return;
  }

  v69 = v9;
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v7;
  v72 = v5;
  if (qword_1EAECB868 != -1)
  {
LABEL_48:
    swift_once();
  }

  sub_1954C3460(0, &qword_1EAECB838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19567B7A0;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
  *(v10 + 64) = sub_195601910(&qword_1EAECB850, &qword_1EAECDC50);
  *(v10 + 32) = a1;

  v11 = sub_19565D66C();
  v12 = sub_1955E7684(v11);

  v57 = v12 >> 62;
  if (v12 >> 62)
  {
    if (sub_19565D81C() >= 1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_5:
    v61 = [objc_allocWithZone(CNContactPosterStore) init];
    if (qword_1EAECB8A8 != -1)
    {
      swift_once();
    }

    v13 = sub_19565D0EC();
    v14 = __swift_project_value_buffer(v13, qword_1EAED0960);

    v56 = v14;
    a1 = sub_19565D0CC();
    v15 = sub_19565D68C();
    if (os_log_type_enabled(a1, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      if (v57)
      {
        v17 = sub_19565D81C();
      }

      else
      {
        v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v16 + 4) = v17;

      _os_log_impl(&dword_1954A0000, a1, v15, "Will updated recent posters from %ld managed duplicates", v16, 0xCu);
      MEMORY[0x19A8B5DB0](v16, -1, -1);
    }

    else
    {
    }

    v70 = v2;
    if (v57)
    {
      v2 = sub_19565D81C();
      if (!v2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
LABEL_36:

        v42 = sub_19565D0CC();
        v43 = sub_19565D68C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 134217984;
          if (v57)
          {
            v45 = sub_19565D81C();
          }

          else
          {
            v45 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v44 + 4) = v45;

          _os_log_impl(&dword_1954A0000, v42, v43, "Successfully updated recent posters from %ld managed duplicates", v44, 0xCu);
          MEMORY[0x19A8B5DB0](v44, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return;
      }
    }

    v18 = v3;
    v3 = 0;
    v63 = v12 & 0xFFFFFFFFFFFFFF8;
    v64 = v12 & 0xC000000000000001;
    v62 = v12 + 32;
    v19 = v69 + 1;
    v20 = 0x1E7410000;
    v59 = v12;
    v58 = v2;
    v68 = v69 + 1;
    v69 = (v18 + 8);
    while (1)
    {
      if (v64)
      {
        v21 = MEMORY[0x19A8B3850](v3, v12);
      }

      else
      {
        if (v3 >= *(v63 + 16))
        {
          goto LABEL_47;
        }

        v21 = *(v62 + 8 * v3);
      }

      v22 = v21;
      if (__OFADD__(v3++, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v24 = sub_1956160DC();
      v25 = *(v24 + 16);
      v67 = v22;
      if (v25)
      {
        v66 = v3;
        v73[0] = MEMORY[0x1E69E7CC0];
        sub_19565D97C();
        v65 = v24;
        v26 = (v24 + 40);
        v27 = v60;
        do
        {
          v29 = *(v26 - 1);
          v28 = *v26;
          sub_1955F79F4(v29, *v26);
          sub_19565CF9C();
          sub_19565CF6C();
          (*v19)(v27, v71);
          v30 = v72;
          sub_19565CF4C();
          v31 = objc_allocWithZone(*(v20 + 1328));
          v32 = sub_19565D27C();

          v33 = sub_19565CF0C();
          v34 = sub_19565CF3C();
          [v31 initWithIdentifier:v32 posterData:v33 lastUsedDate:v34];

          v35 = v29;
          v36 = v69;
          sub_1954C1C4C(v35, v28);
          (*v36)(v30, v70);
          sub_19565D94C();
          sub_19565D98C();
          v20 = 0x1E7410000uLL;
          v19 = v68;
          sub_19565D99C();
          sub_19565D95C();
          v26 += 2;
          --v25;
        }

        while (v25);

        a1 = v73[0];
        v12 = v59;
        v2 = v58;
        v3 = v66;
        v22 = v67;
        if (!(v73[0] >> 62))
        {
LABEL_28:
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          goto LABEL_29;
        }
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_28;
        }
      }

      if (!sub_19565D81C())
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_29:
      sub_1954C3460(0, &qword_1EAECE3B8);
      v37 = sub_19565D3EC();
      v38 = &v22[OBJC_IVAR___CNManagedDuplicate_primaryID];
      swift_beginAccess();
      if (!*(v38 + 1))
      {
        __break(1u);
      }

      v39 = objc_opt_self();

      v40 = sub_19565D27C();

      v22 = [v39 requestToCreatePosters:v37 forContactIdentifier:v40];

      v73[0] = 0;
      if (([v61 performCreateRequest:v22 error:v73] & 1) == 0)
      {
        v46 = v73[0];

        v47 = sub_19565CE6C();

        swift_willThrow();
        v48 = v47;
        v49 = sub_19565D0CC();
        v50 = sub_19565D69C();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v73[0] = v52;
          *v51 = 136315138;
          swift_getErrorValue();
          v53 = sub_19565DB8C();
          v55 = sub_1955EA0F8(v53, v54, v73);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_1954A0000, v49, v50, "Error updating recent posters for merged duplicates %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x19A8B5DB0](v52, -1, -1);
          MEMORY[0x19A8B5DB0](v51, -1, -1);
        }

        else
        {
        }

        return;
      }

      v41 = v73[0];

      v20 = 0x1E7410000;
LABEL_19:

      if (v3 == v2)
      {
        goto LABEL_36;
      }
    }
  }
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19563BA08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1954C37F4;

  return sub_1954C2940(a1, v4);
}

uint64_t sub_19563BAC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_19563BB3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1954C3460(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_19563D294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t getMDItemUniqueIdentifier_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getCSSearchableIndexClass_block_invoke_cold_1(v0);
}

void __LoadTelephonyUtilities_block_invoke_cold_1()
{
  __error();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __LoadCoreTelephony_block_invoke_cold_1()
{
  __error();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_19564260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  OUTLINED_FUNCTION_11(a1, a2, a3, a4, a5, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(v18);
}

void sub_1956429E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_195643318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __LoadPrivacyAccounting_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1954A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/PrivacyAccounting.framework/PrivacyAccounting (%d)", v1, 8u);
}

void __LoadTelephonyUtilities_block_invoke_cold_1_0()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1954A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities (%d)", v1, 8u);
}

void __LoadDataAccessExpress_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1954A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/DataAccessExpress.framework/DataAccessExpress (%d)", v1, 8u);
}

void sub_1956458AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_195647B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __LoadEmailCore_block_invoke_cold_1()
{
  __error();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_195649440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_70();
  _Unwind_Resume(v8);
}

void sub_1956495AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_70();
  _Unwind_Resume(v8);
}

void sub_19564977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void __LoadAvatarPersistence_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&dword_1954A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AvatarPersistence.framework/AvatarPersistence (%d)", v1, 8u);
}

void __LoadAvatarPersistence_block_invoke_cold_1_0()
{
  __error();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

uint64_t _block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v5 = v5[4];
  }

  v7 = [v5 identifier];
  v8 = [v4 identifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = 1;
  }

  else if (v6 && (v6[1] & 1) != 0 || ![v4 isUnified])
  {
    v10 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v4 linkedContacts];
    v10 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          if (v6)
          {
            v15 = v6[4];
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          v17 = [v16 identifier];
          v18 = [v14 identifier];

          LOBYTE(v16) = [v17 isEqual:v18];
          if (v16)
          {
            v10 = 1;
            goto LABEL_23;
          }

          ++v13;
        }

        while (v10 != v13);
        v19 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v10 = v19;
      }

      while (v19);
    }

LABEL_23:
  }

  return v10;
}

void sub_1956568B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195657338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195659B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_19565B970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}