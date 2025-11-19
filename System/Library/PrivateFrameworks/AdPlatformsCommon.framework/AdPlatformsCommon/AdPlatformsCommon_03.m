uint64_t sub_1BB00D7A8(uint64_t a1)
{
  v3 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v22 - v6;
  v8 = sub_1BB0147A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v22[0] = v9 + 8;
    v22[1] = v9 + 16;

    for (i = 0; v17; result = sub_1BAFE2D64(v7, &qword_1EBC3B960, &qword_1BB01D0B0))
    {
      v20 = i;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v9 + 16))(v14, *(a1 + 48) + *(v9 + 72) * (v21 | (v20 << 6)), v8);
      sub_1BB00E40C(v14, v7);
      (*(v9 + 8))(v14, v8);
    }

    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(a1 + 56 + 8 * v20);
      ++i;
      if (v17)
      {
        i = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BB00D9C4(uint64_t a1, uint64_t a2)
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v78 - v12);
  v14 = sub_1BB0147A8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v98 = (&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = (&v78 - v22);
  MEMORY[0x1EEE9AC00](v21, v24);
  v93 = (&v78 - v25);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v79 = v13;
  v81 = v10;
  v27 = a1 + 56;
  v26 = *(a1 + 56);
  v28 = -1 << *(a1 + 32);
  v92 = ~v28;
  if (-v28 < 64)
  {
    v29 = ~(-1 << -v28);
  }

  else
  {
    v29 = -1;
  }

  v100 = (v29 & v26);
  v84 = (63 - v28) >> 6;
  v99 = v15 + 2;
  v89 = (v15 + 6);
  v90 = (v15 + 7);
  v88 = (v15 + 4);
  v95 = (a2 + 56);
  v101 = (v15 + 1);
  v91 = a1;

  v31 = 0;
  v80 = v15;
  for (i = a1 + 56; ; v27 = i)
  {
    v32 = v100;
    v33 = v31;
    if (v100)
    {
LABEL_14:
      v2 = (v32 - 1) & v32;
      v37 = v91;
      v38 = v91[6] + v15[9] * (__clz(__rbit64(v32)) | (v33 << 6));
      v39 = v15[2];
      v40 = v79;
      v39(v79, v38, v14);
      v41 = 0;
      v35 = v33;
    }

    else
    {
      v34 = v84 <= (v31 + 1) ? v31 + 1 : v84;
      v35 = v34 - 1;
      v36 = v31;
      while (1)
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_57;
        }

        if (v33 >= v84)
        {
          break;
        }

        v32 = *(v27 + 8 * v33);
        ++v36;
        if (v32)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v41 = 1;
      v40 = v79;
      v37 = v91;
    }

    v86 = *v90;
    v86(v40, v41, 1, v14);
    v102 = v37;
    v103 = v27;
    v104 = v92;
    v105 = v35;
    v106 = v2;
    v85 = *v89;
    if (v85(v40, 1, v14) == 1)
    {
      sub_1BAFE2D64(v40, &qword_1EBC3B960, &qword_1BB01D0B0);
      goto LABEL_52;
    }

    v83 = *v88;
    v83(v93, v40, v14);
    v42 = *(a2 + 40);
    v82 = sub_1BB00FC4C(&qword_1EBC3B970);
    v43 = sub_1BB014AD8();
    v44 = -1 << *(a2 + 32);
    v31 = v43 & ~v44;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v95[v31 >> 6]) != 0)
    {
      break;
    }

    v15 = v80;
    (*v101)(v93, v14);
LABEL_22:
    v31 = v35;
    v100 = v2;
  }

  v78 = v101 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v94 = ~v44;
  v45 = v80[9];
  v96 = v80[2];
  v97 = v45;
  while (1)
  {
    v96(v23, *(a2 + 48) + v97 * v31, v14);
    v46 = sub_1BB00FC4C(&qword_1EBC3B978);
    v47 = sub_1BB014B18();
    v100 = *v101;
    v100(v23, v14);
    if (v47)
    {
      break;
    }

    v31 = (v31 + 1) & v94;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v95[v31 >> 6]) == 0)
    {
      v15 = v80;
      v100(v93, v14);
      goto LABEL_22;
    }
  }

  v94 = v46;
  v48 = (v100)(v93, v14);
  v50 = *(a2 + 32);
  v78 = ((1 << v50) + 63) >> 6;
  v30 = 8 * v78;
  v15 = v91;
  if ((v50 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v79 = &v78;
    MEMORY[0x1EEE9AC00](v48, v49);
    v52 = &v78 - ((v51 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v52, v95, v51);
    v53 = *&v52[8 * v33] & ~v27;
    v54 = *(a2 + 16);
    v93 = v52;
    *&v52[8 * v33] = v53;
    v55 = v54 - 1;
    v31 = v81;
    v56 = i;
    v57 = v84;
LABEL_26:
    v80 = v55;
    while (v2)
    {
      v58 = v35;
LABEL_38:
      v61 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v96(v31, v15[6] + (v61 | (v58 << 6)) * v97, v14);
      v62 = 0;
LABEL_39:
      v86(v31, v62, 1, v14);
      v102 = v15;
      v103 = v56;
      v104 = v92;
      v105 = v35;
      v106 = v2;
      if (v85(v31, 1, v14) == 1)
      {
        sub_1BAFE2D64(v31, &qword_1EBC3B960, &qword_1BB01D0B0);
        a2 = sub_1BB00EB38(v93, v78, v80, a2);
        goto LABEL_52;
      }

      v83(v98, v31, v14);
      v63 = *(a2 + 40);
      v64 = sub_1BB014AD8();
      v65 = a2;
      v66 = -1 << *(a2 + 32);
      v67 = v64 & ~v66;
      v33 = v67 >> 6;
      v27 = 1 << v67;
      if (((1 << v67) & v95[v67 >> 6]) != 0)
      {
        v96(v23, *(v65 + 48) + v67 * v97, v14);
        v68 = sub_1BB014B18();
        v100(v23, v14);
        if ((v68 & 1) == 0)
        {
          v69 = ~v66;
          do
          {
            v67 = (v67 + 1) & v69;
            v33 = v67 >> 6;
            v27 = 1 << v67;
            if (((1 << v67) & v95[v67 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v96(v23, *(v65 + 48) + v67 * v97, v14);
            v70 = sub_1BB014B18();
            v100(v23, v14);
          }

          while ((v70 & 1) == 0);
        }

        v100(v98, v14);
        v71 = v93[v33];
        v93[v33] = v71 & ~v27;
        a2 = v65;
        v15 = v91;
        v31 = v81;
        v56 = i;
        v57 = v84;
        if ((v71 & v27) != 0)
        {
          v55 = v80 - 1;
          if (__OFSUB__(v80, 1))
          {
            __break(1u);
          }

          if (v80 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v100(v98, v14);
        a2 = v65;
        v15 = v91;
        v31 = v81;
        v56 = i;
        v57 = v84;
      }
    }

    if (v57 <= (v35 + 1))
    {
      v59 = v35 + 1;
    }

    else
    {
      v59 = v57;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v58 >= v57)
      {
        v2 = 0;
        v62 = 1;
        v35 = v60;
        goto LABEL_39;
      }

      v2 = *(v56 + 8 * v58);
      ++v35;
      if (v2)
      {
        v35 = v58;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v74 = v30;

    v93 = a2;
    v75 = v74;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v76 = v93;

      a2 = v76;
      continue;
    }

    break;
  }

  v77 = swift_slowAlloc();
  memcpy(v77, v95, v75);
  a2 = sub_1BB00E68C(v77, v78, v93, v31, &v102);

  MEMORY[0x1BFB07C70](v77, -1, -1);
LABEL_52:
  sub_1BAFDDB98();
LABEL_54:
  v72 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1BB00E40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BB0147A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1BB00FC4C(&qword_1EBC3B970);
  v36 = a1;
  v14 = sub_1BB014AD8();
  v15 = v12 + 56;
  v34 = v12 + 56;
  v35 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v31 = v3;
    v32 = v7;
    v33 = a2;
    v18 = ~v16;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    while (1)
    {
      v19(v11, *(v35 + 48) + v22 * v17, v6);
      sub_1BB00FC4C(&qword_1EBC3B978);
      v23 = sub_1BB014B18();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v34 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v24 = 1;
        v7 = v32;
        a2 = v33;
        return (*(v7 + 56))(a2, v24, 1, v6);
      }
    }

    v25 = v31;
    v26 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v25;
    v37 = *v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BB00D048();
      v28 = v37;
    }

    v7 = v32;
    a2 = v33;
    (*(v32 + 32))(v33, *(v28 + 48) + v22 * v17, v6);
    sub_1BB00EE4C(v17);
    v24 = 0;
    *v25 = v37;
  }

  else
  {
    v24 = 1;
  }

  return (*(v7 + 56))(a2, v24, 1, v6);
}

uint64_t sub_1BB00E68C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v53 = a2;
  v9 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v52 - v12;
  v14 = sub_1BB0147A8();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v63 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17, v19);
  v69 = &v52 - v21;
  v22 = *(a3 + 16);
  v23 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v24 = *(a1 + v23);
  v55 = a1;
  v56 = v13;
  *(a1 + v23) = v24 & ((-1 << a4) - 1);
  v25 = v22 - 1;
  v66 = v26 + 16;
  v67 = a3;
  v60 = (v26 + 48);
  v61 = (v26 + 56);
  v59 = (v26 + 32);
  v65 = a3 + 56;
  v62 = v26;
  v68 = (v26 + 8);
  v57 = a5;
  while (2)
  {
    v54 = v25;
    do
    {
      while (1)
      {
        v29 = *a5;
        v28 = a5[1];
        v31 = a5[2];
        v30 = a5[3];
        v32 = a5[4];
        if (!v32)
        {
          v34 = (v31 + 64) >> 6;
          if (v34 <= v30 + 1)
          {
            v35 = v30 + 1;
          }

          else
          {
            v35 = (v31 + 64) >> 6;
          }

          v36 = v35 - 1;
          while (1)
          {
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v33 >= v34)
            {
              v37 = 0;
              v38 = 1;
              goto LABEL_15;
            }

            v32 = *(v28 + 8 * v33);
            ++v30;
            if (v32)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v33 = a5[3];
LABEL_14:
        v37 = (v32 - 1) & v32;
        (*(v62 + 16))(v13, *(v29 + 48) + *(v62 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14);
        v38 = 0;
        v36 = v33;
LABEL_15:
        (*v61)(v13, v38, 1, v14);
        *a5 = v29;
        a5[1] = v28;
        a5[2] = v31;
        a5[3] = v36;
        a5[4] = v37;
        if ((*v60)(v13, 1, v14) == 1)
        {
          sub_1BAFE2D64(v13, &qword_1EBC3B960, &qword_1BB01D0B0);
          v51 = v67;

          return sub_1BB00EB38(v55, v53, v54, v51);
        }

        (*v59)(v69, v13, v14);
        v39 = v67;
        v40 = *(v67 + 40);
        sub_1BB00FC4C(&qword_1EBC3B970);
        v41 = sub_1BB014AD8();
        v42 = -1 << *(v39 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) != 0)
        {
          break;
        }

        v27 = *v68;
LABEL_4:
        result = (v27)(v69, v14);
      }

      v58 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64 = ~v42;
      v46 = *(v62 + 72);
      v47 = *(v62 + 16);
      while (1)
      {
        v48 = v63;
        v47(v63, *(v67 + 48) + v46 * v43, v14);
        sub_1BB00FC4C(&qword_1EBC3B978);
        v49 = sub_1BB014B18();
        v27 = *v68;
        (*v68)(v48, v14);
        if (v49)
        {
          break;
        }

        v43 = (v43 + 1) & v64;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) == 0)
        {
          v13 = v56;
          a5 = v57;
          goto LABEL_4;
        }
      }

      result = (v27)(v69, v14);
      v13 = v56;
      v50 = v55[v44];
      v55[v44] = v50 & ~v45;
      a5 = v57;
    }

    while ((v50 & v45) == 0);
    v25 = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v54 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1BB00EB38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1BB0147A8();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BAFD86D0(&qword_1EBC3B980, &unk_1BB01D138);
  result = sub_1BB014F38();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1BB00FC4C(&qword_1EBC3B970);
    result = sub_1BB014AD8();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
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

uint64_t sub_1BB00EE4C(int64_t a1)
{
  v3 = sub_1BB0147A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;
    v15 = *v1;

    v16 = sub_1BB014EF8();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v39 = (v16 + 1) & v14;
      v18 = *(v4 + 16);
      v17 = v4 + 16;
      v19 = v14;
      v20 = *(v17 + 56);
      v40 = v17;
      v37 = (v17 - 8);
      v38 = v18;
      do
      {
        v21 = v11;
        v22 = v20;
        v23 = v20 * v13;
        v38(v9, *(v10 + 48) + v20 * v13, v3);
        v24 = v10;
        v25 = v19;
        v26 = v24;
        v27 = *(v24 + 40);
        sub_1BB00FC4C(&qword_1EBC3B970);
        v28 = sub_1BB014AD8();
        (*v37)(v9, v3);
        v29 = v28 & v25;
        v19 = v25;
        if (a1 >= v39)
        {
          if (v29 >= v39 && a1 >= v29)
          {
LABEL_16:
            v10 = v26;
            v32 = *(v26 + 48);
            v20 = v22;
            v33 = v22 * a1;
            if (v22 * a1 < v23 || v32 + v22 * a1 >= (v32 + v23 + v22))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v13;
            }

            else
            {
              a1 = v13;
              if (v33 != v23)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v13;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v29 >= v39 || a1 >= v29)
        {
          goto LABEL_16;
        }

        v10 = v26;
        v20 = v22;
LABEL_5:
        v13 = (v13 + 1) & v19;
        v11 = v21;
      }

      while (((*(v21 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v10 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v36;
    ++*(v10 + 36);
  }

  return result;
}

unint64_t *sub_1BB00F144(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1BB00F428(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1BB00F1E0(uint64_t a1)
{
  v2 = sub_1BB0147A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1BB00FC4C(&qword_1EBC3B970);
  result = MEMORY[0x1BFB06E60](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_1BB00C2F0(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1BB00F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyTerritoryKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB00F3CC(uint64_t a1)
{
  v2 = type metadata accessor for PolicyTerritoryKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB00F428(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v39 = a2;
  v40 = a1;
  v5 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v47 = &v39 - v8;
  v9 = sub_1BB0147A8();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v9, v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v16 = 0;
  v49 = a3;
  v19 = *(a3 + 56);
  v18 = a3 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v45 = v13 + 16;
  v46 = v13;
  v44 = (v13 + 8);
  v24 = v47;
  while (v22)
  {
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
LABEL_12:
    v28 = v25 | (v16 << 6);
    v29 = *(v49 + 48);
    v30 = *(v46 + 72);
    v43 = v28;
    (*(v46 + 16))(v15, v29 + v30 * v28, v9);
    sub_1BB014778();
    v31 = sub_1BB014648();
    v32 = (*(*(v31 - 8) + 48))(v24, 1, v31);
    v33 = sub_1BAFE2D64(v24, &qword_1EBC3B428, &qword_1BB019EC0);
    if (v32 == 1)
    {
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v39 - 2) = v15;
      v35 = v48;
      v36 = sub_1BB00BC94(sub_1BB00FD20, (&v39 - 4), v42);
      v48 = v35;
      result = (*v44)(v15, v9);
      if (v36)
      {
        *(v40 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_17:
          v38 = v49;

          return sub_1BB00EB38(v40, v39, v41, v38);
        }
      }
    }

    else
    {
      result = (*v44)(v15, v9);
    }
  }

  v26 = v16;
  while (1)
  {
    v16 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      goto LABEL_17;
    }

    v27 = *(v18 + 8 * v16);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v22 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB00F774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = *MEMORY[0x1E69E9840];
  v6 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v55 = v45 - v9;
  v10 = sub_1BB0147A8();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v14) = *(a1 + 32);
  v16 = v14 & 0x3F;
  v17 = ((1 << v14) + 63) >> 6;
  v18 = 8 * v17;
  v49 = a2;

  if (v16 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v53 = v15;
    v56 = v3;
    v45[1] = v45;
    v46 = v17;
    MEMORY[0x1EEE9AC00](v19, v20);
    v47 = v45 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v47, v18);
    v48 = 0;
    v21 = 0;
    v3 = a1 + 56;
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v17 = v23 & *(a1 + 56);
    v24 = (v22 + 63) >> 6;
    v51 = (v11 + 1);
    v52 = v11 + 2;
    v54 = v11;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      v28 = v25 | (v21 << 6);
      v29 = *(a1 + 48);
      v30 = v11[9];
      v50 = v28;
      v31 = v29 + v30 * v28;
      v32 = v11[2];
      v15 = v53;
      v33 = v10;
      v32(v53, v31, v10);
      v34 = v55;
      sub_1BB014778();
      v35 = sub_1BB014648();
      v18 = (*(*(v35 - 8) + 48))(v34, 1, v35);
      v36 = sub_1BAFE2D64(v34, &qword_1EBC3B428, &qword_1BB019EC0);
      if (v18 == 1)
      {
        MEMORY[0x1EEE9AC00](v36, v37);
        v45[-2] = v15;
        v38 = v56;
        v18 = sub_1BB00BC94(sub_1BB00FC90, &v45[-4], v49);
        v56 = v38;
        (*v51)(v15, v33);
        v10 = v33;
        v11 = v54;
        if (v18)
        {
          *&v47[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
          if (__OFADD__(v48++, 1))
          {
            __break(1u);
LABEL_18:
            v40 = sub_1BB00EB38(v47, v46, v48, a1);

            goto LABEL_19;
          }
        }
      }

      else
      {
        (*v51)(v15, v33);
        v10 = v33;
        v11 = v54;
      }
    }

    v26 = v21;
    while (1)
    {
      v21 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v21 >= v24)
      {
        goto LABEL_18;
      }

      v27 = *(v3 + 8 * v21);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v43 = swift_slowAlloc();
  v44 = v49;

  v40 = sub_1BB00F144(v43, v17, a1, v44);

  MEMORY[0x1BFB07C70](v43, -1, -1);

LABEL_19:
  v41 = *MEMORY[0x1E69E9840];
  return v40;
}

uint64_t sub_1BB00FC4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BB0147A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB00FCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyTerritoryKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB00FD14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1BB00FD8C()
{
  v1 = *v0;
  sub_1BB0151B8();
  sub_1BB0151E8();
  return sub_1BB0151F8();
}

uint64_t sub_1BB00FE00()
{
  v1 = *v0;
  sub_1BB0151B8();
  sub_1BB0151E8();
  return sub_1BB0151F8();
}

unint64_t sub_1BB00FE44@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BB00FE94(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1BB00FE94(int a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = 0;
        v2 = 3;
        return v2 | (v1 << 32);
      case 4:
        v1 = 0;
        v2 = 4;
        return v2 | (v1 << 32);
      case 5:
        v1 = 0;
        v2 = 5;
        return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 == 1)
  {
    v1 = 0;
    v2 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

unint64_t sub_1BB00FF34()
{
  result = qword_1EBC3B9A0;
  if (!qword_1EBC3B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B9A0);
  }

  return result;
}

unint64_t sub_1BB00FF8C()
{
  result = qword_1EBC3B9A8;
  if (!qword_1EBC3B9A8)
  {
    sub_1BAFD9DF0(qword_1EBC3B9B0, &qword_1BB01D210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B9A8);
  }

  return result;
}

uint64_t Handle.primary.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Handle.secondary.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

AdPlatformsCommon::Handle __swiftcall Handle.init(_:)(AdPlatformsCommon::Handle result)
{
  *v1 = result.primary;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  return result;
}

AdPlatformsCommon::Handle __swiftcall Handle.init(primary:secondary:)(AdPlatformsCommon::Handle primary, Swift::Int_optional secondary)
{
  *v2 = primary.primary;
  *(v2 + 16) = secondary.value;
  *(v2 + 24) = secondary.is_nil;
  primary.secondary = secondary;
  return primary;
}

uint64_t static Handle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1BB015118(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1BB0100E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1BB015118(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1BB01016C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BB010180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1BB0101C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TracingEventPipe.__allocating_init(source:connecting:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1BAFC6D0C(a3, v6 + 32);
  return v6;
}

uint64_t TracingEventPipe.init(source:connecting:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1BAFC6D0C(a3, v3 + 32);
  return v3;
}

uint64_t sub_1BB01029C(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for EventCapsule();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - v12;
  v14 = sub_1BB0149A8();
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB014978();
  v19 = *(v6 + 16);
  v19(v13, a1, v5);

  v20 = sub_1BB014988();
  v21 = sub_1BB014DA8();

  v36 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = a1;
    v23 = v22;
    v34 = swift_slowAlloc();
    v40 = v34;
    *v23 = 136446466;
    *(v23 + 4) = sub_1BB01313C(v2[2], v2[3], &v40);
    *(v23 + 12) = 2082;
    v19(v37, v13, v5);
    v24 = sub_1BB014B98();
    v26 = v25;
    (*(v6 + 8))(v13, v5);
    v27 = sub_1BB01313C(v24, v26, &v40);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_1BAFC4000, v20, v36, "%{public}s: delivering event %{public}s", v23, 0x16u);
    v28 = v34;
    swift_arrayDestroy();
    MEMORY[0x1BFB07C70](v28, -1, -1);
    v29 = v23;
    a1 = v35;
    MEMORY[0x1BFB07C70](v29, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v13, v5);
  }

  (*(v38 + 8))(v18, v39);
  v30 = v2[7];
  v31 = v2[8];
  sub_1BAFC6AB4(v2 + 4, v30);
  return (*(v31 + 16))(a1, v30, v31);
}

uint64_t TracingEventPipe.deinit()
{
  v1 = *(v0 + 24);

  sub_1BAFC6A68((v0 + 32));
  return v0;
}

uint64_t TracingEventPipe.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_1BAFC6A68((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t ClientEvent.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t ClientEvent.init(kind:handle:order:trace:branch:environment:relay:properties:internalProperties:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  v18 = *(a2 + 24);
  *a9 = a1;
  *(a9 + 8) = v16;
  *(a9 + 24) = v17;
  *(a9 + 32) = v18;
  *(a9 + 40) = a3;
  v19 = type metadata accessor for ClientEvent();
  sub_1BB010A4C(a4, a9 + v19[7], &qword_1EBC3BA40, &qword_1BB01D3A0);
  sub_1BB010A4C(a5, a9 + v19[8], &qword_1EBC3BA48, &qword_1BB01D3A8);
  sub_1BB010A4C(a6, a9 + v19[9], &qword_1EBC3BA48, &qword_1BB01D3A8);
  sub_1BB010A4C(a7, a9 + v19[10], &qword_1EBC3BA50, &unk_1BB01D3B0);
  sub_1BB010A4C(a8, a9 + v19[11], &qword_1EBC3BA50, &unk_1BB01D3B0);
  return sub_1BB010A4C(a10, a9 + v19[12], &unk_1EBC3BA58, &qword_1BB01D3C0);
}

uint64_t sub_1BB010A4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BAFD86D0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s17AdPlatformsCommon11ClientEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&unk_1EBC3BA68, &qword_1BB01D450);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v92 - v8;
  v10 = sub_1BAFD86D0(&qword_1EBC3BA48, &qword_1BB01D3A8);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v98 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v99 = &v92 - v16;
  v101 = sub_1BAFD86D0(&qword_1EBC3BA98, &qword_1BB01D468);
  v17 = *(*(v101 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v101, v18);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v100 = &v92 - v23;
  v24 = sub_1BB0145F8();
  v102 = *(v24 - 8);
  v103 = v24;
  v25 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BAFD86D0(&qword_1EBC3BA40, &qword_1BB01D3A0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8, v31);
  v33 = &v92 - v32;
  v34 = sub_1BAFD86D0(&qword_1EBC3BAA0, &unk_1BB01D470);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v92 - v37;
  if (*a1 != *a2)
  {
    goto LABEL_34;
  }

  v94 = v9;
  v95 = v21;
  v96 = v4;
  v97 = v5;
  v39 = *(a1 + 8);
  v40 = *(a1 + 16);
  v41 = *(a1 + 24);
  v42 = a1;
  v43 = *(a1 + 32);
  v44 = *(a2 + 8);
  v45 = *(a2 + 16);
  v46 = *(a2 + 24);
  v47 = a2;
  v48 = *(a2 + 32);
  if ((v39 != v44 || v40 != v45) && (sub_1BB015118() & 1) == 0)
  {
    goto LABEL_34;
  }

  if (v43)
  {
    if (!v48)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v41 == v46)
    {
      v49 = v48;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_34;
    }
  }

  if (*(v42 + 40) == *(v47 + 40))
  {
    v50 = v42;
    v51 = v47;
    v93 = type metadata accessor for ClientEvent();
    v52 = v93[7];
    v53 = *(v34 + 48);
    sub_1BB0008F8(v42 + v52, v38, &qword_1EBC3BA40, &qword_1BB01D3A0);
    sub_1BB0008F8(v47 + v52, &v38[v53], &qword_1EBC3BA40, &qword_1BB01D3A0);
    v55 = v102;
    v54 = v103;
    v56 = *(v102 + 48);
    if (v56(v38, 1, v103) == 1)
    {
      v57 = v56(&v38[v53], 1, v54);
      v58 = v97;
      if (v57 == 1)
      {
        sub_1BAFE2D64(v38, &qword_1EBC3BA40, &qword_1BB01D3A0);
        goto LABEL_20;
      }
    }

    else
    {
      sub_1BB0008F8(v38, v33, &qword_1EBC3BA40, &qword_1BB01D3A0);
      v59 = v56(&v38[v53], 1, v54);
      v60 = v97;
      if (v59 != 1)
      {
        (*(v55 + 32))(v28, &v38[v53], v54);
        sub_1BB011424();
        v64 = v55;
        v65 = v54;
        v66 = sub_1BB014B18();
        v67 = *(v64 + 8);
        v67(v28, v65);
        v67(v33, v65);
        v58 = v60;
        sub_1BAFE2D64(v38, &qword_1EBC3BA40, &qword_1BB01D3A0);
        if ((v66 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_20:
        v68 = v93[8];
        v69 = v100;
        v70 = *(v101 + 48);
        sub_1BB0008F8(v50 + v68, v100, &qword_1EBC3BA48, &qword_1BB01D3A8);
        sub_1BB0008F8(v51 + v68, v69 + v70, &qword_1EBC3BA48, &qword_1BB01D3A8);
        v71 = *(v58 + 48);
        v72 = v96;
        if (v71(v69, 1, v96) == 1)
        {
          if (v71(v69 + v70, 1, v72) == 1)
          {
            sub_1BAFE2D64(v69, &qword_1EBC3BA48, &qword_1BB01D3A8);
LABEL_27:
            v78 = v93[9];
            v79 = *(v101 + 48);
            v80 = v95;
            sub_1BB0008F8(v50 + v78, v95, &qword_1EBC3BA48, &qword_1BB01D3A8);
            v103 = v79;
            sub_1BB0008F8(v51 + v78, v80 + v79, &qword_1EBC3BA48, &qword_1BB01D3A8);
            if (v71(v80, 1, v72) == 1)
            {
              if (v71(v80 + v103, 1, v72) == 1)
              {
                sub_1BAFE2D64(v80, &qword_1EBC3BA48, &qword_1BB01D3A8);
LABEL_37:
                v88 = v93;
                v89 = v93[10];
                if (sub_1BB014E88())
                {
                  v90 = v88[11];
                  if (sub_1BB014E88())
                  {
                    v91 = v88[12];
                    v83 = sub_1BB014E78();
                    return v83 & 1;
                  }
                }

                goto LABEL_34;
              }
            }

            else
            {
              v81 = v98;
              sub_1BB0008F8(v80, v98, &qword_1EBC3BA48, &qword_1BB01D3A8);
              v82 = v103;
              if (v71(v80 + v103, 1, v72) != 1)
              {
                v85 = v94;
                (*(v58 + 32))(v94, v80 + v82, v72);
                sub_1BB0113C0();
                v86 = sub_1BB014B18();
                v87 = *(v58 + 8);
                v87(v85, v72);
                v87(v81, v72);
                sub_1BAFE2D64(v80, &qword_1EBC3BA48, &qword_1BB01D3A8);
                if ((v86 & 1) == 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_37;
              }

              (*(v58 + 8))(v81, v72);
            }

            v61 = &qword_1EBC3BA98;
            v62 = &qword_1BB01D468;
            v63 = v80;
LABEL_33:
            sub_1BAFE2D64(v63, v61, v62);
            goto LABEL_34;
          }
        }

        else
        {
          v73 = v99;
          sub_1BB0008F8(v69, v99, &qword_1EBC3BA48, &qword_1BB01D3A8);
          if (v71(v69 + v70, 1, v72) != 1)
          {
            v74 = v69 + v70;
            v75 = v94;
            (*(v58 + 32))(v94, v74, v72);
            sub_1BB0113C0();
            LODWORD(v103) = sub_1BB014B18();
            v76 = v73;
            v77 = *(v58 + 8);
            v77(v75, v72);
            v77(v76, v72);
            sub_1BAFE2D64(v100, &qword_1EBC3BA48, &qword_1BB01D3A8);
            if ((v103 & 1) == 0)
            {
              goto LABEL_34;
            }

            goto LABEL_27;
          }

          (*(v58 + 8))(v73, v72);
        }

        v61 = &qword_1EBC3BA98;
        v62 = &qword_1BB01D468;
        v63 = v69;
        goto LABEL_33;
      }

      (*(v55 + 8))(v33, v54);
    }

    v61 = &qword_1EBC3BAA0;
    v62 = &unk_1BB01D470;
    v63 = v38;
    goto LABEL_33;
  }

LABEL_34:
  v83 = 0;
  return v83 & 1;
}

unint64_t sub_1BB0113C0()
{
  result = qword_1EBC3BAA8;
  if (!qword_1EBC3BAA8)
  {
    sub_1BAFD9DF0(&unk_1EBC3BA68, &qword_1BB01D450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3BAA8);
  }

  return result;
}

unint64_t sub_1BB011424()
{
  result = qword_1EBC3BAB0;
  if (!qword_1EBC3BAB0)
  {
    sub_1BB0145F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3BAB0);
  }

  return result;
}

uint64_t EventSource.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1BB014758();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EventSource();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BB011974(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v12, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    MEMORY[0x1BFB06D20](0x286E776F6E6B6E75, 0xE800000000000000);
    sub_1BB014FF8();
    MEMORY[0x1BFB06D20](41, 0xE100000000000000);
    v13 = v17;
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v14 = *v12;
    v17 = 0;
    v18 = 0xE000000000000000;
    MEMORY[0x1BFB06D20](0x286E776F6E6BLL, 0xE600000000000000);
    v16[1] = v14;
    sub_1BB014FF8();
    MEMORY[0x1BFB06D20](41, 0xE100000000000000);
    return v17;
  }

  return v13;
}

uint64_t _s17AdPlatformsCommon11EventSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BB014758();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EventSource();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (&v29 - v17);
  v19 = sub_1BAFD86D0(&qword_1EBC3BAD0, &unk_1BB01D4F0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v24 = &v29 - v23;
  v25 = *(v22 + 56);
  sub_1BB011974(a1, &v29 - v23);
  sub_1BB011974(a2, &v24[v25]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BB011974(v24, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = *v18 == *&v24[v25];
      goto LABEL_6;
    }

LABEL_8:
    sub_1BB011A44(v24);
    v26 = 0;
    return v26 & 1;
  }

  sub_1BB011974(v24, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v15, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v9, &v24[v25], v4);
  v26 = sub_1BB014718();
  v27 = *(v5 + 8);
  v27(v9, v4);
  v27(v15, v4);
LABEL_6:
  sub_1BB011AAC(v24);
  return v26 & 1;
}

uint64_t type metadata accessor for EventSource()
{
  result = qword_1EBC3BAC0;
  if (!qword_1EBC3BAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB011974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB0119D8()
{
  result = sub_1BB014758();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BB011A44(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3BAD0, &unk_1BB01D4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB011AAC(uint64_t a1)
{
  v2 = type metadata accessor for EventSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for EventSourceID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EventSourceID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1BB011C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1BB011C7C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1BB011CC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1BB011D28()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1BB011D74()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1BAFC6AB4(v0 + 6, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1BB011DC8()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1BAFC6AB4(v0 + 6, v1);
  return (*(v2 + 8))(v1, v2);
}

void *UserInformationSource.__allocating_init(idProvider:storeFront:storeFrontLocale:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1BAFC6D0C(a1, (v10 + 6));
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  return v10;
}

void *UserInformationSource.init(idProvider:storeFront:storeFrontLocale:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BAFC6D0C(a1, (v5 + 6));
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a5;
  return v5;
}

uint64_t sub_1BB011ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = v4[3];
  v4[2] = a1;
  v4[3] = a2;

  swift_beginAccess();
  v10 = v4[5];
  v4[4] = a3;
  v4[5] = a4;
}

void *UserInformationSource.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_1BAFC6A68(v0 + 6);
  return v0;
}

uint64_t UserInformationSource.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_1BAFC6A68(v0 + 6);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB011FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  v10 = v9[3];
  v9[2] = a1;
  v9[3] = a2;

  swift_beginAccess();
  v11 = v9[5];
  v9[4] = a3;
  v9[5] = a4;
}

uint64_t CoalescingSensitiveCategoryFilter.__allocating_init(categoryFilter:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t CoalescingSensitiveCategoryFilter.eligibilityFor(categories:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BAFC6DB4(v2 + 16, v20);
  v4 = *(a1 + 16);

  v5 = (a1 + 40);
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = v5 + 2;
    v8 = *(v5 - 1);
    v9 = *v5;
    v10 = v21;
    v11 = v22;
    sub_1BAFC6AB4(v20, v21);
    v12 = *(v11 + 8);

    v12(v19, v8, v9, v10, v11);

    v5 = v7;
    if (*(&v19[0] + 1))
    {
      v16 = v19[0];
      v17 = v19[1];

      result = sub_1BAFC6A68(v20);
      v14 = a2;
      v15 = v16;
      a2[1] = v17;
      goto LABEL_6;
    }
  }

  result = sub_1BAFC6A68(v20);
  v15 = 0uLL;
  v14 = a2;
  a2[1] = 0u;
LABEL_6:
  *v14 = v15;
  return result;
}

uint64_t CoalescingSensitiveCategoryFilter.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BB0128D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAFD86D0(&qword_1EBC3BAE8, &qword_1BB01D810);
    v2 = sub_1BB015038();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BAFDB9B0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1BAFDC53C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1BAFDC53C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1BAFDC53C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1BB014F08();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1BAFDC53C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BB012BA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAFD86D0(&qword_1EBC3BAE8, &qword_1BB01D810);
    v2 = sub_1BB015038();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1BAFDC53C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1BAFDC53C(v34, v35);
    v19 = *(v2 + 40);
    result = sub_1BB014F08();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_1BAFDC53C(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t IDManagerErrorType.description.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD00000000000003FLL;
      break;
    case 4:
      result = 0xD000000000000038;
      break;
    case 5:
      result = 0xD000000000000032;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD00000000000003CLL;
      break;
    case 9:
      result = 0xD00000000000003DLL;
      break;
    case 0xA:
      result = 0xD000000000000025;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD00000000000002BLL;
      break;
    case 0xF:
      result = 0xD000000000000028;
      break;
    case 0x10:
      result = 0xD000000000000033;
      break;
    case 0x11:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

AdPlatformsCommon::IDManagerErrorType_optional __swiftcall IDManagerErrorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0x12)
  {
    v2 = 18;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BB013064()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1 + 1);
  return sub_1BB0151F8();
}

uint64_t sub_1BB0130DC()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1 + 1);
  return sub_1BB0151F8();
}

uint64_t sub_1BB01313C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BB013208(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BAFDB9B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1BAFC6A68(v11);
  return v7;
}

unint64_t sub_1BB013208(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BB013314(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BB014FA8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BB013314(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BB013360(a1, a2);
  sub_1BB013490(&unk_1F390A730);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BB013360(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BB01357C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BB014FA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BB014C08();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BB01357C(v10, 0);
        result = sub_1BB014F48();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BB013490(uint64_t result)
{
  v2 = *(result + 16);
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1BB0135F0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BB01357C(uint64_t a1, uint64_t a2)
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

  sub_1BAFD86D0(&qword_1EBC3BB00, &unk_1BB01D830);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BB0135F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAFD86D0(&qword_1EBC3BB00, &unk_1BB01D830);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1BB0136E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3B0F0, &unk_1BB0188F0);
    v3 = sub_1BB015038();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BB0008F8(v4, &v13, &qword_1EBC3B180, &qword_1BB01ACD0);
      v5 = v13;
      v6 = v14;
      result = sub_1BAFDCCAC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BAFDC53C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BB013814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3BB08, &unk_1BB01D840);
    v3 = sub_1BB015038();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BAFDCCAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BB01391C()
{
  result = qword_1EBC3BAD8;
  if (!qword_1EBC3BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3BAD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDManagerErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDManagerErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB013AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3BAF8, &qword_1BB01D828);
    v3 = sub_1BB015038();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BAFDCCAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BB013BD4(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3BAF0, &qword_1BB01D818);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v23 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1BAFD86D0(&qword_1EBC3B0E8, &qword_1BB01D820);
    v9 = sub_1BB015038();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1BB0008F8(v11, v7, &qword_1EBC3BAF0, &qword_1BB01D818);
      result = sub_1BAFDCCAC(*v7, v7[1]);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v9[6] + 16 * result);
      v17 = v7[1];
      *v16 = *v7;
      v16[1] = v17;
      v18 = v9[7];
      v19 = sub_1BB0144A8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, v7 + v10, v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BB013DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3BAE0, &unk_1BB01D800);
    v3 = sub_1BB015038();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BAFDCCAC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BB013EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3B0D8, &qword_1BB0188D8);
    v3 = sub_1BB015038();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BAFDCCAC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t AssessingPolicyRuleEvaluator.__allocating_init(ageSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t AssessingPolicyRuleEvaluator.assess(rule:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 9))
  {
    v3 = 0x80;
  }

  else if (*(result + 8))
  {
    v3 = -2;
  }

  else
  {
    v4 = a2;
    v5 = *result;
    v6 = v2[5];
    v7 = v2[6];
    sub_1BAFC6AB4(v2 + 2, v6);
    result = (*(v7 + 8))(v6, v7);
    if (v8)
    {
      v3 = 0;
    }

    else if (result >= v5)
    {
      v3 = -2;
    }

    else
    {
      v3 = -127;
    }

    a2 = v4;
  }

  *a2 = v3;
  return result;
}

uint64_t AssessingPolicyRuleEvaluator.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}