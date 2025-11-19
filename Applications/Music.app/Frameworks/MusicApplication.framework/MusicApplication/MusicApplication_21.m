void *sub_1C7540(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v61 - v9;
  v11 = sub_AB3820();
  v12 = __chkstk_darwin(v11);
  v81 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v61 - v15);
  __chkstk_darwin(v14);
  v76 = (&v61 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v62 = v10;
  v64 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v75 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v83 = (v22 & v19);
  v68 = (63 - v21) >> 6;
  v82 = v17 + 16;
  v73 = (v17 + 48);
  v74 = (v17 + 56);
  v72 = (v17 + 32);
  v78 = a2 + 7;
  v63 = v17;
  v84 = (v17 + 8);

  v23 = 0;
  v65 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v24 = v83;
    v25 = v23;
    if (v83)
    {
LABEL_14:
      v2 = (v24 - 1) & v24;
      v29 = v62;
      (*(v63 + 16))(v62, *(a1 + 48) + *(v63 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v11);
      v30 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v68 <= (v23 + 1) ? v23 + 1 : v68;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_58;
        }

        if (v25 >= v68)
        {
          break;
        }

        v24 = *(v20 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v30 = 1;
      v29 = v62;
    }

    v70 = *v74;
    v70(v29, v30, 1, v11);
    v85 = a1;
    v86 = v20;
    v87 = v75;
    v88 = v27;
    v89 = v2;
    v69 = *v73;
    if (v69(v29, 1, v11) == 1)
    {
      sub_12E1C(v29, &unk_DE8E20);
      goto LABEL_53;
    }

    v31 = v76;
    v67 = *v72;
    v67(v76, v29, v11);
    v10 = v31;
    v66 = sub_1D3018(&qword_DFAA90, &type metadata accessor for IndexPath);
    v32 = sub_AB90D0();
    v33 = -1 << *(a2 + 32);
    v23 = v32 & ~v33;
    v25 = v23 >> 6;
    v20 = 1 << v23;
    if (((1 << v23) & v78[v23 >> 6]) != 0)
    {
      break;
    }

    (*v84)(v76, v11);
LABEL_22:
    v23 = v27;
    v83 = v2;
  }

  v61 = v84 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v77 = ~v33;
  v34 = *(v63 + 72);
  v79 = *(v63 + 16);
  v80 = v34;
  while (1)
  {
    a1 = a2;
    v79(v16, a2[6] + v80 * v23, v11);
    v35 = sub_1D3018(&qword_DF7940, &type metadata accessor for IndexPath);
    v10 = sub_AB91C0();
    v83 = *v84;
    v83(v16, v11);
    if (v10)
    {
      break;
    }

    v23 = (v23 + 1) & v77;
    v25 = v23 >> 6;
    v20 = 1 << v23;
    a2 = a1;
    if (((1 << v23) & v78[v23 >> 6]) == 0)
    {
      a1 = v65;
      v83(v76, v11);
      goto LABEL_22;
    }
  }

  v77 = v35;
  v83(v76, v11);
  v36 = *(a1 + 32);
  v37 = v36 & 0x3F;
  v61 = ((1 << v36) + 63) >> 6;
  v10 = 8 * v61;

  if (v37 > 0xD)
  {
    goto LABEL_59;
  }

  do
  {
    v62 = &v61;
    __chkstk_darwin(isStackAllocationSafe);
    v39 = &v61 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v78, v10);
    v40 = *&v39[8 * v25] & ~v20;
    v41 = *(a1 + 16);
    v76 = v39;
    *&v39[8 * v25] = v40;
    v42 = v41 - 1;
    v23 = a1;
    v10 = v64;
    v25 = i;
    v43 = v68;
    v20 = v65;
LABEL_26:
    v63 = v42;
    while (v2)
    {
      v44 = v27;
LABEL_38:
      v47 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v79(v10, *(v20 + 48) + (v47 | (v44 << 6)) * v80, v11);
      v48 = 0;
LABEL_39:
      v70(v10, v48, 1, v11);
      v85 = v20;
      v86 = v25;
      v87 = v75;
      v88 = v27;
      v89 = v2;
      if (v69(v10, 1, v11) == 1)
      {
        sub_12E1C(v10, &unk_DE8E20);
        a2 = sub_1CB2D4(v76, v61, v63, v23);
        goto LABEL_52;
      }

      v67(v81, v10, v11);
      v49 = sub_AB90D0();
      a1 = v23;
      v50 = -1 << *(v23 + 32);
      v51 = v49 & ~v50;
      v52 = v51 >> 6;
      v53 = 1 << v51;
      if (((1 << v51) & v78[v51 >> 6]) != 0)
      {
        v79(v16, *(a1 + 48) + v51 * v80, v11);
        v54 = sub_AB91C0();
        v83(v16, v11);
        if ((v54 & 1) == 0)
        {
          v55 = ~v50;
          do
          {
            v51 = (v51 + 1) & v55;
            v52 = v51 >> 6;
            v53 = 1 << v51;
            if (((1 << v51) & v78[v51 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v79(v16, *(a1 + 48) + v51 * v80, v11);
            v56 = sub_AB91C0();
            v83(v16, v11);
          }

          while ((v56 & 1) == 0);
        }

        v83(v81, v11);
        v57 = v76[v52];
        v76[v52] = v57 & ~v53;
        v58 = (v57 & v53) == 0;
        v23 = a1;
        v20 = v65;
        v10 = v64;
        v25 = i;
        v43 = v68;
        if (!v58)
        {
          v42 = v63 - 1;
          if (__OFSUB__(v63, 1))
          {
            __break(1u);
          }

          if (v63 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
LABEL_52:

            goto LABEL_53;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v83(v81, v11);
        v23 = a1;
        v20 = v65;
        v10 = v64;
        v25 = i;
        v43 = v68;
      }
    }

    if (v43 <= (v27 + 1))
    {
      v45 = v27 + 1;
    }

    else
    {
      v45 = v43;
    }

    v46 = v45 - 1;
    while (1)
    {
      v44 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v44 >= v43)
      {
        v2 = 0;
        v48 = 1;
        v27 = v46;
        goto LABEL_39;
      }

      v2 = *(v25 + 8 * v44);
      ++v27;
      if (v2)
      {
        v27 = v44;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while (isStackAllocationSafe);
  v60 = swift_slowAlloc();
  memcpy(v60, v78, v10);
  a2 = sub_1C9AD4(v60, v61, a1, v23, &v85);

LABEL_53:
  sub_2BB88();
  return a2;
}

void *sub_1C7F98(unint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v42 = 0;
  v47 = a1;
  v48 = 0;
  v8 = a1 + 56;
  v7 = *(a1 + 56);
  v9 = -1 << *(a1 + 32);
  v46 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = (63 - v9) >> 6;
  v13 = a2 + 56;
  v14 = 1;
  do
  {
LABEL_6:
    if (v11)
    {
      v15 = v47;
      goto LABEL_13;
    }

    v15 = v47;
    v16 = v48;
    do
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v17 >= v12)
      {

        sub_2BB88();
        return v6;
      }

      v11 = *(v8 + 8 * v17);
      ++v16;
    }

    while (!v11);
    v48 = v17;
LABEL_13:
    v3 = *(*(v15 + 48) + (__clz(__rbit64(v11)) | (v48 << 6)));
    sub_ABB5C0();
    v18 = v3 - 3;
    if ((v3 - 3) >= 6)
    {
      sub_ABB5D0(6uLL);
      v18 = v3;
    }

    v11 &= v11 - 1;
    sub_ABB5D0(v18);
    v19 = sub_ABB610();
    v20 = -1 << *(v6 + 32);
    v2 = v19 & ~v20;
    v5 = v2 >> 6;
    v4 = 1 << v2;
  }

  while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
  while (2)
  {
    v21 = *(*(v6 + 48) + v2);
    if (v21 > 5)
    {
      switch(v21)
      {
        case 6u:
          if (v3 == 6)
          {
            goto LABEL_38;
          }

          goto LABEL_18;
        case 7u:
          if (v3 == 7)
          {
            goto LABEL_38;
          }

          goto LABEL_18;
        case 8u:
          if (v3 == 8)
          {
            goto LABEL_38;
          }

          goto LABEL_18;
      }

      goto LABEL_32;
    }

    switch(v21)
    {
      case 3u:
        if (v3 == 3)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      case 4u:
        if (v3 == 4)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      case 5u:
        if (v3 == 5)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
    }

LABEL_32:
    if ((v3 - 9) > 0xF9u || v21 != v3)
    {
LABEL_18:
      v2 = (v2 + 1) & ~v20;
      v5 = v2 >> 6;
      v4 = 1 << v2;
      if ((*(v13 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

LABEL_38:
  v51 = v46;
  v52 = v48;
  v53 = v11;
  v50[0] = v47;
  v50[1] = v8;
  v14 = (63 - v20) >> 6;
  v3 = 8 * v14;

  if (v14 <= 0x80)
  {
    goto LABEL_39;
  }

LABEL_88:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_39:
    v43 = v14;
    v44 = &v42;
    __chkstk_darwin(isStackAllocationSafe);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v3);
    v24 = *(v6 + 16);
    *(v14 + 8 * v5) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v5 = v47;
LABEL_40:
    v45 = v25;
LABEL_42:
    while (2)
    {
      if (!v11)
      {
        v27 = v48;
        while (1)
        {
          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
            goto LABEL_87;
          }

          if (v28 >= v12)
          {
            break;
          }

          v11 = *(v8 + 8 * v28);
          ++v27;
          if (v11)
          {
            v48 = v28;
            goto LABEL_48;
          }
        }

        if (v12 <= v48 + 1)
        {
          v38 = v48 + 1;
        }

        else
        {
          v38 = v12;
        }

        v48 = v38 - 1;
        v37 = sub_1CA530(v14, v43, v45, v6);
LABEL_82:

LABEL_83:
        sub_2BB88();
        return v37;
      }

LABEL_48:
      v4 = *(*(v5 + 48) + (__clz(__rbit64(v11)) | (v48 << 6)));
      sub_ABB5C0();
      v29 = v4 - 3;
      if ((v4 - 3) >= 6)
      {
        sub_ABB5D0(6uLL);
        v29 = v4;
      }

      v11 &= v11 - 1;
      v2 = &v49;
      sub_ABB5D0(v29);
      v30 = sub_ABB610();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
      {
        continue;
      }

      break;
    }

    v35 = ~v31;
    while (1)
    {
      v36 = *(*(v6 + 48) + v32);
      if (v36 > 5)
      {
        switch(v36)
        {
          case 6u:
            if (v4 == 6)
            {
              goto LABEL_41;
            }

            goto LABEL_53;
          case 7u:
            if (v4 == 7)
            {
              goto LABEL_41;
            }

            goto LABEL_53;
          case 8u:
            if (v4 == 8)
            {
              goto LABEL_41;
            }

            goto LABEL_53;
        }
      }

      else
      {
        switch(v36)
        {
          case 3u:
            if (v4 == 3)
            {
              goto LABEL_41;
            }

            goto LABEL_53;
          case 4u:
            if (v4 == 4)
            {
              goto LABEL_41;
            }

            goto LABEL_53;
          case 5u:
            if (v4 == 5)
            {
              goto LABEL_41;
            }

            goto LABEL_53;
        }
      }

      if ((v4 - 9) <= 0xF9u && v36 == v4)
      {
LABEL_41:
        v26 = *(v14 + 8 * v33);
        *(v14 + 8 * v33) = v26 & ~v34;
        if ((v26 & v34) != 0)
        {
          v25 = v45 - 1;
          if (__OFSUB__(v45, 1))
          {
            __break(1u);
          }

          if (v45 == 1)
          {

            v37 = &_swiftEmptySetSingleton;
            goto LABEL_82;
          }

          goto LABEL_40;
        }

        goto LABEL_42;
      }

LABEL_53:
      v32 = (v32 + 1) & v35;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if ((*(v13 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
      {
        goto LABEL_42;
      }
    }
  }

  v40 = swift_slowAlloc();
  memcpy(v40, (v6 + 56), v3);
  v41 = v42;
  v37 = sub_1C9FA8(v40, v14, v6, v2, v50);

  if (!v41)
  {

    v46 = v51;
    v48 = v52;
    goto LABEL_83;
  }

  __break(1u);
  return result;
}

void *sub_1C8564(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16))
  {
    v4 = a1 + 56;
    v3 = *(a1 + 56);
    v5 = -1 << *(a1 + 32);
    v101 = ~v5;
    if (-v5 < 64)
    {
      v6 = ~(-1 << -v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & v3;
    v8 = (63 - v5) >> 6;
    v107 = (a2 + 56);

    v10 = 0;
    v102 = v8;
    v103 = v4;
    v104 = v9;
    while (1)
    {
      if (!v7)
      {
        v11 = v10;
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_45;
          }

          if (v12 >= v8)
          {
            sub_2BB88();
            return v2;
          }

          v7 = *(v4 + 8 * v12);
          ++v11;
          if (v7)
          {
            v10 = v12;
            break;
          }
        }
      }

      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v105 = v10;
      v14 = (*(v9 + 48) + 240 * (v13 | (v10 << 6)));
      v16 = v14[1];
      v15 = v14[2];
      v126 = *v14;
      v127 = v16;
      v128 = v15;
      v17 = v14[5];
      v19 = v14[3];
      v18 = v14[4];
      v132 = v14[6];
      v131 = v17;
      v129 = v19;
      v130 = v18;
      v20 = v14[9];
      v22 = v14[7];
      v21 = v14[8];
      v136 = v14[10];
      v135 = v20;
      v133 = v22;
      v134 = v21;
      v23 = v14[13];
      v25 = v14[11];
      v24 = v14[12];
      v140 = v14[14];
      v139 = v23;
      v137 = v25;
      v138 = v24;
      sub_ABB5C0();
      v26 = v127;
      sub_2B990(&v126, v125);
      v106 = v26;
      sub_AB93F0();
      v27 = sub_ABB610();
      v28 = -1 << *(v2 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & v107[v29 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_2B9EC(&v126);
      v4 = v103;
      v9 = v104;
      v10 = v105;
      v8 = v102;
    }

    v32 = ~v28;
    while (1)
    {
      v33 = v2;
      v34 = (*(v2 + 48) + 240 * v29);
      v36 = v34[1];
      v35 = v34[2];
      v125[0] = *v34;
      v125[1] = v36;
      v125[2] = v35;
      v37 = v34[6];
      v39 = v34[3];
      v38 = v34[4];
      v125[5] = v34[5];
      v125[6] = v37;
      v125[3] = v39;
      v125[4] = v38;
      v40 = v34[9];
      v42 = v34[7];
      v41 = v34[8];
      v125[10] = v34[10];
      v125[9] = v40;
      v125[7] = v42;
      v125[8] = v41;
      v43 = v34[13];
      v45 = v34[11];
      v44 = v34[12];
      v125[14] = v34[14];
      v125[13] = v43;
      v125[11] = v45;
      v125[12] = v44;
      sub_ABB5C0();
      sub_2B990(v125, &v110);
      sub_AB93F0();
      v46 = sub_ABB610();
      sub_ABB5C0();
      sub_AB93F0();
      v47 = sub_ABB610();
      sub_2B9EC(v125);
      if (v46 == v47)
      {
        break;
      }

      v29 = (v29 + 1) & v32;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      v2 = v33;
      if (((1 << v29) & v107[v29 >> 6]) == 0)
      {
        goto LABEL_6;
      }
    }

    v142 = v101;
    v143 = v105;
    v144 = v7;
    v48 = v103;
    v141[0] = v104;
    v141[1] = v103;
    sub_2B9EC(&v126);
    v49 = v33;
    v50 = *(v33 + 32);
    v51 = v50 & 0x3F;
    v97 = ((1 << v50) + 63) >> 6;
    v52 = 8 * v97;

    if (v51 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (!isStackAllocationSafe)
      {
        v95 = swift_slowAlloc();
        memcpy(v95, v107, v52);
        v93 = sub_1CA21C(v95, v97, v33, v29, v141);

        v101 = v142;
        goto LABEL_41;
      }
    }

    v98 = &v96;
    __chkstk_darwin(isStackAllocationSafe);
    memcpy(&v96 - ((v52 + 15) & 0x3FFFFFFFFFFFFFF0), v107, v52);
    *(&v96 + 8 * v30 - ((v52 + 15) & 0x3FFFFFFFFFFFFFF0)) &= ~v31;
    v99 = *(v33 + 16) - 1;
    v100 = (&v96 - ((v52 + 15) & 0x3FFFFFFFFFFFFFF0));
LABEL_22:
    v54 = v105;
    v55 = v102;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_23:
    v56 = v54;
    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v55)
      {
        v93 = sub_1CA754(v100, v97, v99, v49);
        goto LABEL_40;
      }

      v7 = *(v48 + 8 * v57);
      ++v56;
      if (v7)
      {
        v54 = v57;
        while (1)
        {
LABEL_28:
          v58 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v105 = v54;
          v59 = (*(v104 + 48) + 240 * (v58 | (v54 << 6)));
          v61 = v59[1];
          v60 = v59[2];
          v110 = *v59;
          v111 = v61;
          v112 = v60;
          v62 = v59[6];
          v64 = v59[3];
          v63 = v59[4];
          v115 = v59[5];
          v116 = v62;
          v113 = v64;
          v114 = v63;
          v65 = v59[10];
          v67 = v59[7];
          v66 = v59[8];
          v119 = v59[9];
          v120 = v65;
          v117 = v67;
          v118 = v66;
          v68 = v59[14];
          v70 = v59[11];
          v69 = v59[12];
          v123 = v59[13];
          v124 = v68;
          v121 = v70;
          v122 = v69;
          sub_ABB5C0();
          v71 = v111;
          sub_2B990(&v110, v109);
          v106 = v71;
          sub_AB93F0();
          v72 = sub_ABB610();
          v73 = -1 << *(v49 + 32);
          v74 = v72 & ~v73;
          v75 = v74 >> 6;
          v76 = 1 << v74;
          if (((1 << v74) & v107[v74 >> 6]) == 0)
          {
LABEL_21:
            sub_2B9EC(&v110);
            v48 = v103;
            goto LABEL_22;
          }

          v77 = ~v73;
          while (1)
          {
            v78 = (*(v49 + 48) + 240 * v74);
            v80 = v78[1];
            v79 = v78[2];
            v109[0] = *v78;
            v109[1] = v80;
            v109[2] = v79;
            v81 = v78[6];
            v83 = v78[3];
            v82 = v78[4];
            v109[5] = v78[5];
            v109[6] = v81;
            v109[3] = v83;
            v109[4] = v82;
            v84 = v78[10];
            v86 = v78[7];
            v85 = v78[8];
            v109[9] = v78[9];
            v109[10] = v84;
            v109[7] = v86;
            v109[8] = v85;
            v87 = v78[14];
            v89 = v78[11];
            v88 = v78[12];
            v109[13] = v78[13];
            v109[14] = v87;
            v109[11] = v89;
            v109[12] = v88;
            sub_ABB5C0();
            sub_2B990(v109, &v108);
            sub_AB93F0();
            v90 = sub_ABB610();
            sub_ABB5C0();
            sub_AB93F0();
            v91 = sub_ABB610();
            sub_2B9EC(v109);
            if (v90 == v91)
            {
              break;
            }

            v74 = (v74 + 1) & v77;
            v75 = v74 >> 6;
            v76 = 1 << v74;
            v49 = v33;
            if (((1 << v74) & v107[v74 >> 6]) == 0)
            {
              goto LABEL_21;
            }
          }

          sub_2B9EC(&v110);
          v92 = v100[v75];
          v100[v75] = v92 & ~v76;
          if ((v92 & v76) == 0)
          {
            break;
          }

          v55 = v102;
          v48 = v103;
          v54 = v105;
          if (__OFSUB__(v99, 1))
          {
            __break(1u);
          }

          v49 = v33;
          if (v99 == 1)
          {
            goto LABEL_46;
          }

          --v99;
          if (!v7)
          {
            goto LABEL_23;
          }
        }

        v49 = v33;
        v48 = v103;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:

    v93 = &_swiftEmptySetSingleton;
LABEL_40:

LABEL_41:
    sub_2BB88();
    return v93;
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }
}

void sub_1C8C9C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v37 = a3 + 56;
  v34 = a5;
LABEL_2:
  v32 = v6;
LABEL_4:
  while (2)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (v8)
    {
      v9 = a5[3];
LABEL_10:
      v12 = *(*a5 + 48) + 24 * (__clz(__rbit64(v8)) | (v9 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      sub_ABB5C0();
      v35 = v14;
      v36 = v13;
      if (v15)
      {
        sub_ABB5D0(1uLL);
        sub_2BA40(v13, v14, 1);
        sub_ABA7A0();
      }

      else
      {
        sub_ABB5D0(0);
        sub_2BA40(v13, v14, 0);
        sub_AB93F0();
      }

      v16 = sub_ABB610();
      v17 = -1 << *(a3 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v37 + 8 * (v18 >> 6))) == 0)
      {
LABEL_3:
        sub_13CC8(v36, v35, v15);
        a5 = v34;
        continue;
      }

      v21 = ~v17;
      while (1)
      {
        v22 = *(a3 + 48) + 24 * v18;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        if (v25)
        {
          if (v15)
          {
            sub_13C80(0, &qword_DFA720);
            v26 = v23;
            v27 = sub_ABA790();
            sub_13CC8(v23, v24, 1);
            if (v27)
            {
              goto LABEL_26;
            }
          }
        }

        else if ((v15 & 1) == 0)
        {
          v28 = v23 == v36 && v24 == v35;
          if (v28 || (sub_ABB3C0() & 1) != 0)
          {
LABEL_26:
            sub_13CC8(v36, v35, v25);
            a5 = v34;
            v29 = a1[v19];
            a1[v19] = v29 & ~v20;
            if ((v29 & v20) != 0)
            {
              v6 = v32 - 1;
              if (__OFSUB__(v32, 1))
              {
                goto LABEL_35;
              }

              if (v32 == 1)
              {
                return;
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        v18 = (v18 + 1) & v21;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if ((*(v37 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (v10 <= v7 + 1)
  {
    v30 = v7 + 1;
  }

  else
  {
    v30 = (a5[2] + 64) >> 6;
  }

  a5[3] = v30 - 1;
  a5[4] = 0;

  sub_1CAA14(a1, a2, v32, a3);
}

uint64_t sub_1C8F80(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_ABB5B0();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1CAC80(v8, a2, v10, a3);
}

_BYTE *sub_1C913C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v45 = a3 + 56;
  v42 = a5;
LABEL_2:
  v40 = v7;
LABEL_4:
  while (1)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (!v9)
    {
      break;
    }

    v10 = a5[3];
LABEL_10:
    v13 = *(*a5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9))));
    v14 = *v13;
    v15 = *(v13 + 8);
    a5[3] = v10;
    a5[4] = (v9 - 1) & v9;
    sub_ABB5C0();
    v16 = v14;
    sub_ABA7A0();
    sub_AB93F0();

    v17 = sub_ABB610();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v45 + 8 * (v19 >> 6))) != 0)
    {
      v44 = ~v18;
      sub_13C80(0, &qword_DFA720);
      v43 = v15;
      while (2)
      {
        v22 = *(v5 + 48) + 16 * v19;
        v23 = *(v22 + 8);
        v24 = *v22;
        if ((sub_ABA790() & 1) == 0)
        {

          goto LABEL_13;
        }

        v25 = v5;
        v26 = 0xEA00000000007365;
        v27 = 0x6974697669746361;
        switch(v23)
        {
          case 1:
            v26 = 0xE600000000000000;
            v27 = 0x736D75626C61;
            break;
          case 2:
            v26 = 0xE700000000000000;
            v27 = 0x73747369747261;
            break;
          case 3:
            v26 = 0xE800000000000000;
            v27 = 0x73726F7461727563;
            break;
          case 4:
            v26 = 0xE500000000000000;
            v27 = 0x73676E6F73;
            break;
          case 5:
            v26 = 0xE800000000000000;
            v27 = 0x736E6F6974617473;
            break;
          case 6:
            v27 = 0x75632D656C707061;
            v26 = 0xEE0073726F746172;
            break;
          case 7:
            v27 = 0x6169726F74696465;
            v26 = 0xEF736D6574692D6CLL;
            break;
          case 8:
            v27 = 0x6F6D2D636973756DLL;
            v28 = 1936025974;
            goto LABEL_31;
          case 9:
            v27 = 0x69762D636973756DLL;
            v28 = 1936680292;
LABEL_31:
            v26 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 10:
            v27 = 0x6F736970652D7674;
            v26 = 0xEB00000000736564;
            break;
          case 11:
            v26 = 0xE800000000000000;
            v27 = 0x73776F68732D7674;
            break;
          case 12:
            v27 = 0x646564616F6C7075;
            v26 = 0xEF736F656469762DLL;
            break;
          case 13:
            v27 = 0x6C2D64726F636572;
            v26 = 0xED0000736C656261;
            break;
          case 14:
            v27 = 0x702D6C6169636F73;
            v26 = 0xEF73656C69666F72;
            break;
          case 15:
            v27 = 0x7473696C79616C70;
            v26 = 0xE900000000000073;
            break;
          default:
            break;
        }

        v29 = 0x6974697669746361;
        v30 = 0xEA00000000007365;
        switch(v43)
        {
          case 1:
            v30 = 0xE600000000000000;
            if (v27 != 0x736D75626C61)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 2:
            v30 = 0xE700000000000000;
            if (v27 != 0x73747369747261)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 3:
            v30 = 0xE800000000000000;
            if (v27 != 0x73726F7461727563)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 4:
            v30 = 0xE500000000000000;
            if (v27 != 0x73676E6F73)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 5:
            v30 = 0xE800000000000000;
            if (v27 != 0x736E6F6974617473)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 6:
            v30 = 0xEE0073726F746172;
            if (v27 != 0x75632D656C707061)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 7:
            v31 = 0x6169726F74696465;
            v32 = 0x6D6574692D6CLL;
            goto LABEL_49;
          case 8:
            v33 = 0x6F6D2D636973756DLL;
            v34 = 1936025974;
            goto LABEL_63;
          case 9:
            v33 = 0x69762D636973756DLL;
            v34 = 1936680292;
LABEL_63:
            v30 = v34 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v27 != v33)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 10:
            v29 = 0x6F736970652D7674;
            v30 = 0xEB00000000736564;
            goto LABEL_58;
          case 11:
            v30 = 0xE800000000000000;
            if (v27 != 0x73776F68732D7674)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 12:
            v31 = 0x646564616F6C7075;
            v32 = 0x6F656469762DLL;
            goto LABEL_49;
          case 13:
            v30 = 0xED0000736C656261;
            if (v27 != 0x6C2D64726F636572)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 14:
            v31 = 0x702D6C6169636F73;
            v32 = 0x656C69666F72;
LABEL_49:
            v30 = v32 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
            if (v27 != v31)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          case 15:
            v30 = 0xE900000000000073;
            if (v27 != 0x7473696C79616C70)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          default:
LABEL_58:
            if (v27 != v29)
            {
              goto LABEL_60;
            }

LABEL_59:
            if (v26 != v30)
            {
LABEL_60:
              v35 = sub_ABB3C0();

              v5 = v25;
              if (v35)
              {

                goto LABEL_66;
              }

LABEL_13:
              v19 = (v19 + 1) & v44;
              v20 = v19 >> 6;
              v21 = 1 << v19;
              if ((*(v45 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
              {
                goto LABEL_3;
              }

              continue;
            }

            v5 = v25;
LABEL_66:
            a5 = v42;
            v36 = a1[v20];
            a1[v20] = v36 & ~v21;
            if ((v36 & v21) == 0)
            {
              goto LABEL_4;
            }

            v7 = v40 - 1;
            if (__OFSUB__(v40, 1))
            {
              goto LABEL_75;
            }

            if (v40 == 1)
            {
              return &_swiftEmptySetSingleton;
            }

            break;
        }

        goto LABEL_2;
      }
    }

LABEL_3:

    a5 = v42;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      JUMPOUT(0x1C9A14);
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v38 = v8 + 1;
  }

  else
  {
    v38 = (a5[2] + 64) >> 6;
  }

  a5[3] = v38 - 1;
  a5[4] = 0;

  return sub_1CAE6C(a1, a2, v40, v5);
}

void *sub_1C9AD4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_AB3820();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_12E1C(v11, &unk_DE8E20);
          v45 = v61;

          return sub_1CB2D4(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1D3018(&qword_DFAA90, &type metadata accessor for IndexPath);
        v35 = sub_AB90D0();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1D3018(&qword_DF7940, &type metadata accessor for IndexPath);
        v43 = sub_AB91C0();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

Swift::Int sub_1C9FA8(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_3:
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_ABB5C0();
    v18 = v17 - 3;
    if ((v17 - 3) >= 6)
    {
      sub_ABB5D0(6uLL);
      v18 = v17;
    }

    sub_ABB5D0(v18);
    result = sub_ABB610();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = ~v19;
      while (1)
      {
        v24 = *(*(a3 + 48) + v20);
        if (v24 > 5)
        {
          break;
        }

        switch(v24)
        {
          case 3u:
            if (v17 == 3)
            {
              goto LABEL_2;
            }

            break;
          case 4u:
            if (v17 == 4)
            {
              goto LABEL_2;
            }

            break;
          case 5u:
            if (v17 == 5)
            {
              goto LABEL_2;
            }

            break;
          default:
            goto LABEL_28;
        }

LABEL_14:
        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v10 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }

      switch(v24)
      {
        case 6u:
          if (v17 == 6)
          {
            goto LABEL_2;
          }

          goto LABEL_14;
        case 7u:
          if (v17 == 7)
          {
            goto LABEL_2;
          }

          goto LABEL_14;
        case 8u:
          if (v17 == 8)
          {
            goto LABEL_2;
          }

          goto LABEL_14;
      }

LABEL_28:
      if ((v17 - 9) > 0xF9u || v24 != v17)
      {
        goto LABEL_14;
      }

LABEL_2:
      v11 = v7[v21];
      v7[v21] = v11 & ~v22;
      if ((v11 & v22) == 0)
      {
        continue;
      }

      if (__OFSUB__(v9--, 1))
      {
LABEL_43:
        __break(1u);
        return result;
      }

      if (!v9)
      {
        return &_swiftEmptySetSingleton;
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1CA530(v7, a2, v9, a3);
}

unint64_t *sub_1CA21C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v50 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v56 = a3;
  v51 = a5;
  v52 = a3 + 56;
  while (2)
  {
    v49 = v6;
    while (1)
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = (a5[2] + 64) >> 6;
          v11 = a5[3];
          while (1)
          {
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
              goto LABEL_25;
            }

            if (v9 >= v10)
            {
              break;
            }

            v8 = *(a5[1] + 8 * v9);
            ++v11;
            if (v8)
            {
              goto LABEL_10;
            }
          }

          if (v10 <= v7 + 1)
          {
            v46 = v7 + 1;
          }

          else
          {
            v46 = (a5[2] + 64) >> 6;
          }

          a5[3] = v46 - 1;
          a5[4] = 0;
          v47 = v56;

          return sub_1CA754(v50, a2, v49, v47);
        }

        v9 = a5[3];
LABEL_10:
        v12 = (*(*a5 + 48) + 240 * (__clz(__rbit64(v8)) | (v9 << 6)));
        v14 = v12[1];
        v13 = v12[2];
        v55[0] = *v12;
        v55[1] = v14;
        v55[2] = v13;
        v15 = v12[3];
        v16 = v12[4];
        v17 = v12[6];
        v55[5] = v12[5];
        v55[6] = v17;
        v55[3] = v15;
        v55[4] = v16;
        v18 = v12[7];
        v19 = v12[8];
        v20 = v12[10];
        v55[9] = v12[9];
        v55[10] = v20;
        v55[7] = v18;
        v55[8] = v19;
        v21 = v12[11];
        v22 = v12[12];
        v23 = v12[14];
        v55[13] = v12[13];
        v55[14] = v23;
        v55[11] = v21;
        v55[12] = v22;
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        v24 = v56;
        sub_ABB5C0();
        sub_2B990(v55, v54);
        sub_AB93F0();
        v25 = sub_ABB610();
        v26 = -1 << *(v24 + 32);
        v27 = v25 & ~v26;
        v28 = v27 >> 6;
        v29 = 1 << v27;
        if (((1 << v27) & *(v52 + 8 * (v27 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_2B9EC(v55);
        a5 = v51;
      }

      v30 = ~v26;
      while (1)
      {
        v31 = (*(v56 + 48) + 240 * v27);
        v33 = v31[1];
        v32 = v31[2];
        v54[0] = *v31;
        v54[1] = v33;
        v54[2] = v32;
        v34 = v31[6];
        v36 = v31[3];
        v35 = v31[4];
        v54[5] = v31[5];
        v54[6] = v34;
        v54[3] = v36;
        v54[4] = v35;
        v37 = v31[10];
        v39 = v31[7];
        v38 = v31[8];
        v54[9] = v31[9];
        v54[10] = v37;
        v54[7] = v39;
        v54[8] = v38;
        v40 = v31[14];
        v42 = v31[11];
        v41 = v31[12];
        v54[13] = v31[13];
        v54[14] = v40;
        v54[11] = v42;
        v54[12] = v41;
        sub_ABB5C0();
        sub_2B990(v54, v53);
        sub_AB93F0();
        v43 = sub_ABB610();
        sub_ABB5C0();
        sub_AB93F0();
        v44 = sub_ABB610();
        sub_2B9EC(v54);
        if (v43 == v44)
        {
          break;
        }

        v27 = (v27 + 1) & v30;
        v28 = v27 >> 6;
        v29 = 1 << v27;
        if (((1 << v27) & *(v52 + 8 * (v27 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      result = sub_2B9EC(v55);
      v45 = v50[v28];
      v50[v28] = v45 & ~v29;
      if ((v45 & v29) != 0)
      {
        break;
      }

      a5 = v51;
    }

    v6 = v49 - 1;
    a5 = v51;
    if (__OFSUB__(v49, 1))
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      if (v49 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_1CA530(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE75A8);
  result = sub_ABAD50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_ABB5C0();
    v17 = v16 - 3;
    if ((v16 - 3) >= 6)
    {
      sub_ABB5D0(6uLL);
      v17 = v16;
    }

    sub_ABB5D0(v17);
    result = sub_ABB610();
    v18 = -1 << v9[32];
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 6) + v21) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1CA754(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80E0);
  result = sub_ABAD50();
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
  v12 = result + 56;
  v49 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = (*(v4 + 48) + 240 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    v53 = v16[2];
    v19 = v16[6];
    v21 = v16[3];
    v20 = v16[4];
    v56 = v16[5];
    v57 = v19;
    v54 = v21;
    v55 = v20;
    v22 = v16[10];
    v24 = v16[7];
    v23 = v16[8];
    v60 = v16[9];
    v61 = v22;
    v58 = v24;
    v59 = v23;
    v25 = v16[14];
    v27 = v16[11];
    v26 = v16[12];
    v64 = v16[13];
    v65 = v25;
    v62 = v27;
    v63 = v26;
    v51 = v18;
    v52 = v17;
    sub_ABB5C0();
    sub_2B990(&v51, v50);
    sub_AB93F0();
    result = sub_ABB610();
    v28 = -1 << *(v6 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v4 = v49;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v12 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v4 = v49;
LABEL_26:
    *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = (*(v6 + 48) + 240 * v31);
    v38 = v60;
    v37 = v61;
    v39 = v59;
    v36[7] = v58;
    v36[8] = v39;
    v36[9] = v38;
    v36[10] = v37;
    v41 = v56;
    v40 = v57;
    v42 = v55;
    v36[3] = v54;
    v36[4] = v42;
    v36[5] = v41;
    v36[6] = v40;
    v44 = v52;
    v43 = v53;
    *v36 = v51;
    v36[1] = v44;
    v36[2] = v43;
    v45 = v62;
    v46 = v63;
    v47 = v65;
    v36[13] = v64;
    v36[14] = v47;
    v36[11] = v45;
    v36[12] = v46;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1CAA14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE7670);
  result = sub_ABAD50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_ABB5C0();
    if (v19)
    {
      sub_ABB5D0(1uLL);
      v20 = v18;
      sub_ABA7A0();
    }

    else
    {
      sub_ABB5D0(0);

      sub_AB93F0();
    }

    result = sub_ABB610();
    v21 = -1 << v9[32];
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v9 + 6) + 24 * v24;
    *v29 = v18;
    *(v29 + 8) = v17;
    *(v29 + 16) = v19;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1CAC80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8040);
  result = sub_ABAD50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_ABB5B0();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

_BYTE *sub_1CAE6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8008);
    v8 = sub_ABAD50();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v12 = 0;
    v13 = v8 + 56;
    v32 = v4;
    while (1)
    {
      if (v10)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_17;
      }

      v15 = v12;
      do
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          JUMPOUT(0x1CB294);
        }

        if (v12 >= a2)
        {
          goto LABEL_6;
        }

        v16 = a1[v12];
        ++v15;
      }

      while (!v16);
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
LABEL_17:
      v17 = *(v4 + 48) + 16 * (v14 | (v12 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_ABB5C0();
      v20 = v18;
      sub_ABA7A0();
      sub_AB93F0();

      v21 = sub_ABB610();
      v22 = -1 << v9[32];
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) != 0)
      {
        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        do
        {
          if (++v24 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_31;
          }

          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v24);
        }

        while (v29 == -1);
        v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      }

      *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = *(v9 + 6) + 16 * v25;
      *v30 = v20;
      *(v30 + 8) = v19;
      ++*(v9 + 2);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_32;
      }

      v4 = v32;
      if (!v5)
      {
LABEL_6:

        return v9;
      }
    }
  }

  return v4;
}

uint64_t sub_1CB2D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_AB3820();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8080);
  result = sub_ABAD50();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D3018(&qword_DFAA90, &type metadata accessor for IndexPath);
    result = sub_AB90D0();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_1CB5FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7538);
  result = sub_ABAD50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_ABB5C0();

    sub_AB93F0();
    result = sub_ABB610();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1CB820(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **))
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

    sub_1CCF5C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1CB8B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_9ACA0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1CB8FC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5, void (*a6)(void), void (*a7)(uint64_t), void (*a8)(void))
{
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (63 - v10) >> 6;

  v14 = 0;
  v41 = v13;
  v42 = v9;
  while (v12)
  {
    v50 = a4;
    v15 = v14;
LABEL_14:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v49[0] = *v18;
    v49[1] = v19;
    v49[2] = v20;

    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *a5;
    v26 = sub_2EBF88(v46, v47);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v29 = v25;
    if (v24[3] >= v27 + v28)
    {
      if ((v50 & 1) == 0)
      {
        a8();
      }
    }

    else
    {
      a6();
      v30 = sub_2EBF88(v21, v22);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v26 = v30;
    }

    v12 &= v12 - 1;
    v32 = *a5;
    if (v29)
    {
      v49[0] = *(v32[7] + 8 * v26);

      a7(v23);

      *(v32[7] + 8 * v26) = v49[0];
    }

    else
    {
      v32[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v21;
      v33[1] = v22;
      *(v32[7] + 8 * v26) = v23;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v14 = v15;
    v13 = v41;
    v9 = v42;
  }

  v16 = v14;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      sub_2BB88();
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
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
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

Swift::Int sub_1CBBDC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_163DCC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CBC48(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1CBC48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_ABB2B0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_AB97D0();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CBE10(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1CBD40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CBD40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_ABB3C0(), (result & 1) == 0))
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

uint64_t sub_1CBE10(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
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
      result = sub_163DA4(v8);
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
        sub_1CC3EC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = _swiftEmptyArrayStorage;
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
        result = sub_ABB3C0();
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
            result = sub_ABB3C0();
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
      result = sub_6A6C0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_6A6C0((v39 > 1), v40 + 1, 1, v8);
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
        sub_1CC3EC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_163DA4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_163D18(v44);
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
    if (v37 || (result = sub_ABB3C0(), (result & 1) == 0))
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

uint64_t sub_1CC3EC(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_ABB3C0() & 1) != 0)
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
      if (!v21 && (sub_ABB3C0() & 1) != 0)
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

void *sub_1CC614(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_ABB3F0();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = result[2];
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

uint64_t sub_1CC6CC(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_ABB3F0();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v6 + 16 * v7) != &v9[2 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_13077C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 16 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1CC84C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_ABB3F0();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[2 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[2 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_13077C(v6, v25);
}

uint64_t sub_1CCA28(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = v15;
  v17 = (v9 + 32);
  v18 = 16 * a2;
  v19 = v9 + 32 + 16 * a2;
  v32 = v13;
  v33 = (v19 + 16 * a3);
  result = sub_1CD7E4(v7);
  v36 = v9 + 32;
  if (result)
  {
    v20 = result;
    v31 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 16 * v21);
    v23 = &v22[v18];
    swift_arrayDestroy();
    if (v17 != v22 || v17 >= v23)
    {
      memmove(v17, v22, v18);
    }

    swift_arrayDestroy();
    v31(v19, a3);
    v24 = &v23[16 * v34];
    v25 = 16 * v32;
    if (v33 != v24 || v33 >= &v24[v25])
    {
      memmove(v33, v24, v25);
    }

    swift_arrayDestroy();
    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v11 = __OFADD__(v21, a2);
    v26 = v21 + a2;
    if (v11)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v26 < v21)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();
    result = (a4)(v36 + 16 * (v26 - v21), a3);
    v27 = v26 + v34;
    if (__OFADD__(v26, v34))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_33;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v21, v29);
  v30 = v21 + v29;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v30 < v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v30 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v36 - 16 * v21;
  v4[2] = v21;
  v4[3] = (2 * v30) | 1;
}

uint64_t sub_1CCCDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v72 = a4;
  v39 = result;
  v40 = 0;
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
    v16 = (*(a3 + 48) + 240 * v15);
    v18 = v16[1];
    v17 = v16[2];
    v71[0] = *v16;
    v71[1] = v18;
    v71[2] = v17;
    v19 = v16[6];
    v21 = v16[3];
    v20 = v16[4];
    v71[5] = v16[5];
    v71[6] = v19;
    v71[3] = v21;
    v71[4] = v20;
    v22 = v16[10];
    v24 = v16[7];
    v23 = v16[8];
    v71[9] = v16[9];
    v71[10] = v22;
    v71[7] = v24;
    v71[8] = v23;
    v25 = v16[14];
    v27 = v16[11];
    v26 = v16[12];
    v71[13] = v16[13];
    v71[14] = v25;
    v71[11] = v27;
    v71[12] = v26;
    v28 = v16[13];
    v68 = v16[12];
    v69 = v28;
    v70 = v16[14];
    v29 = v16[9];
    v64 = v16[8];
    v65 = v29;
    v30 = v16[11];
    v66 = v16[10];
    v67 = v30;
    v31 = v16[5];
    v60 = v16[4];
    v61 = v31;
    v32 = v16[7];
    v62 = v16[6];
    v63 = v32;
    v33 = v16[1];
    v56 = *v16;
    v57 = v33;
    v34 = v16[3];
    v58 = v16[2];
    v59 = v34;
    sub_2B990(v71, &v41);
    v35 = v72(&v56);
    if (v4)
    {
      v53 = v68;
      v54 = v69;
      v55 = v70;
      v49 = v64;
      v50 = v65;
      v51 = v66;
      v52 = v67;
      v45 = v60;
      v46 = v61;
      v47 = v62;
      v48 = v63;
      v41 = v56;
      v42 = v57;
      v43 = v58;
      v44 = v59;
      return sub_2B9EC(&v41);
    }

    v36 = v35;
    v53 = v68;
    v54 = v69;
    v55 = v70;
    v49 = v64;
    v50 = v65;
    v51 = v66;
    v52 = v67;
    v45 = v60;
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    result = sub_2B9EC(&v41);
    if (v36)
    {
      *(v39 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1CA754(v39, a2, v40, a3);
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

void sub_1CCF5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **))
{
  v27 = a3;
  v23 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v27 + 48) + 16 * v14;
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v25 = v16;
    v26 = v15;
    v17 = v16;
    v18 = a4(&v25);

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        v20 = v27;

        sub_1CAE6C(a1, a2, v23, v20);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t (*sub_1CD0D4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_35F8D4(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

void (*sub_1CD154(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_35FC58(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CD1D4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD1DC(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_35FE9C(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD25C(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3600B8(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD2DC(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3602B8(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1CD35C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD364(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3602E8(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD3E4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3602FC(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD464(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_360310(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD4E4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_360910(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD564(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_361234(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD5E4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_361248(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD664(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_361270(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD6E4(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_36034C(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CD764(uint64_t (*result)(), unint64_t a2, unint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_361668(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D450C;
  }

  __break(1u);
  return result;
}

void *sub_1CD7E4(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_ABB3F0();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v7) != &v9[2 * v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_ABB3F0();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v15 = v8 - result - 17;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 4);
  v5 = v7 + (v15 >> 4);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = result[2];
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_450444(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_1CD948@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_1CD990(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_ABB3C0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      return sub_ABB3C0() & 1;
    }
  }

  return result;
}

uint64_t sub_1CDA30(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v35 = sub_AB7C10();
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C20();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedServerObjectDatabase];
  v14 = [objc_allocWithZone(MPModelRequest) init];
  v15 = sub_AB9260();
  [v14 setLabel:v15];

  [v14 setItemProperties:a2];
  v16 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v17 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  sub_13C80(0, &qword_DE8ED0);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v9);
  v30 = sub_ABA190();
  (*(v10 + 8))(v12, v9);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v16;
  v18[4] = v17;
  v18[5] = v13;
  v18[6] = a2;
  v18[7] = v14;
  v19 = v32;
  v18[8] = v31;
  v18[9] = v19;
  aBlock[4] = sub_1CE23C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_63;
  v20 = _Block_copy(aBlock);

  v31 = v16;
  v21 = v17;
  v22 = v13;
  v23 = a2;
  v24 = v14;

  v25 = v33;
  sub_AB7C30();
  v39 = _swiftEmptyArrayStorage;
  sub_1D3018(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  v27 = v34;
  v26 = v35;
  sub_ABABB0();
  v28 = v30;
  sub_ABA160();

  (*(v38 + 8))(v27, v26);
  (*(v36 + 8))(v25, v37);
  _Block_release(v20);
}

uint64_t sub_1CDF04(void *a1, void *a2, uint64_t (*a3)(void *, void), uint64_t a4)
{
  v8 = MPModelObject.genericModelRelationshipKey()();
  if (!v8.value._object)
  {
    return a3(a1, 0);
  }

  if ([a2 isEmpty])
  {

    return a3(a1, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = v8;
  *(inited + 48) = a2;
  v11 = a2;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v12 = objc_allocWithZone(MPPropertySet);
  sub_13C80(0, &qword_DEA550);
  isa = sub_AB8FD0().super.isa;

  v14 = [v12 initWithProperties:0 relationships:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F30);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_AF4EC0;
  *(v15 + 32) = 0xD000000000000014;
  *(v15 + 40) = 0x8000000000B56240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF82B0;
  *(v16 + 32) = [a1 originalIdentifierSet];
  *(v15 + 48) = v16;
  v17 = sub_988E8(v15);
  swift_setDeallocating();
  sub_12E1C(v15 + 32, &qword_DF4F38);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;

  sub_1CDA30(v17, v14, sub_1CE1CC, v18);
}

uint64_t sub_1CE194()
{

  return swift_deallocObject();
}

uint64_t sub_1CE1D4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CE268()
{
  result = qword_DF4F40;
  if (!qword_DF4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F40);
  }

  return result;
}

unint64_t sub_1CE2D8()
{
  result = qword_DF4F48;
  if (!qword_DF4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F48);
  }

  return result;
}

id sub_1CE32C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = [a1 performanceMetrics];
  result = [a1 bodyData];
  if (result)
  {
    v26 = a4;
    v12 = result;
    v13 = sub_AB3260();
    v15 = v14;

    v16 = objc_opt_self();
    isa = sub_AB3250().super.isa;
    *&v28 = 0;
    v18 = [v16 JSONObjectWithData:isa options:0 error:&v28];
    v19 = v28;

    if (v18)
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
      if (*(&v31 + 1))
      {
        sub_9ACFC(&v30, &v32);
        v20 = [objc_opt_self() sharedServerObjectDatabase];
        v21 = objc_allocWithZone(MPServerObjectDatabaseMediaKitImportRequest);
        __swift_project_boxed_opaque_existential_1(&v32, v33);
        v22 = [v21 initWithPayload:sub_ABB3A0()];
        swift_unknownObjectRelease();
        *&v30 = 0;
        v23 = [v20 importObjectsFromRequest:v22 options:1 error:&v30];
        v24 = v30;

        if (v23)
        {
          if ([v23 annotatedPayload])
          {
            sub_ABAB50();
            __swift_destroy_boxed_opaque_existential_0(&v32);
            swift_unknownObjectRelease();
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&v32);
            v28 = 0u;
            v29 = 0u;
          }

          v30 = v28;
          v31 = v29;
          if (*(&v29 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
            if (swift_dynamicCast())
            {
              v25 = v27;

              result = sub_466B8(v13, v15);
LABEL_18:
              a4 = v26;
              goto LABEL_19;
            }
          }

          else
          {
            sub_12E1C(&v30, &unk_DE8E40);
          }
        }

        else
        {
          sub_AB3050();

          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_0(&v32);
        }

LABEL_17:
        result = sub_466B8(v13, v15);
        v25 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      sub_AB3050();

      swift_willThrow();

      v30 = 0u;
      v31 = 0u;
    }

    sub_12E1C(&v30, &unk_DE8E40);
    goto LABEL_17;
  }

  v25 = 0;
LABEL_19:
  *a5 = v25;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v10;
  return result;
}

uint64_t sub_1CE69C(uint64_t a1)
{
  v2 = sub_988FC(_swiftEmptyArrayStorage);
  if (!a1)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    goto LABEL_55;
  }

  sub_1B6578(12, a1, &v72);
  if (!*(&v73 + 1))
  {
LABEL_55:
    sub_12E1C(&v72, &qword_DF2BD0);
    return v2;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v2;
  }

  v4 = v69;
  v5 = v69 + 64;
  v6 = 1 << *(v69 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v69 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  do
  {
    while (1)
    {
LABEL_8:
      if (v8)
      {
        v11 = v8;
        goto LABEL_14;
      }

      do
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v12 >= v9)
        {

          return v2;
        }

        v11 = *(v5 + 8 * v12);
        ++v10;
      }

      while (!v11);
      v10 = v12;
LABEL_14:
      v8 = (v11 - 1) & v11;
      if (!v4[2])
      {
        v74 = 0;
        v72 = 0u;
        v73 = 0u;
        goto LABEL_52;
      }

      v13 = (v4[6] + ((v10 << 10) | (16 * __clz(__rbit64(v11)))));
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_2EBF88(v14, v15);
      if (v17)
      {
        sub_9ACA0(v4[7] + 40 * v16, &v72);
      }

      else
      {
        v74 = 0;
        v72 = 0u;
        v73 = 0u;
      }

      if (*(&v73 + 1))
      {
        break;
      }

LABEL_52:
      sub_12E1C(&v72, &qword_DF2BD0);
    }
  }

  while ((swift_dynamicCast() & 1) == 0);
  v18 = v69;
  v19 = v69 + 64;
  v20 = 1 << *(v69 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v69 + 64);
  v62 = (v20 + 63) >> 6;

  v23 = v62;
  v24 = v19;
  v25 = 0;
  v59 = v24;
  v60 = v18;
  v61 = v3;
  if (v22)
  {
    while (1)
    {
LABEL_29:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = (v18[6] + ((v25 << 10) | (16 * v27)));
      v29 = v28[1];
      v63 = v18[2];
      v65 = *v28;

      if (!v63)
      {
        goto LABEL_40;
      }

      v30 = sub_2EBF88(v65, v29);
      if ((v31 & 1) == 0)
      {
        goto LABEL_40;
      }

      v64 = v29;
      sub_9ACA0(v18[7] + 40 * v30, &v69);
      v3 = v61;
      if ((swift_dynamicCast() & 1) == 0)
      {
        v29 = v64;
LABEL_40:
        v66 = sub_2EBF88(v65, v29);
        v51 = v50;

        if (v51)
        {
          v68 = v2;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_332E78();
          }

          v52 = v2[7] + 40 * v66;
          v53 = *(v52 + 32);
          v54 = *(v52 + 16);
          v69 = *v52;
          v70 = v54;
          v71 = v53;
          sub_27D8A4(v66, v2);
        }

        else
        {
          v71 = 0;
          v69 = 0u;
          v70 = 0u;
        }

        v18 = v60;
        sub_12E1C(&v69, &qword_DF2BD0);
        v3 = v61;
        goto LABEL_46;
      }

      *&v69 = v68;
      sub_1D3700(&qword_DF4F90, &unk_E00000);
      sub_ABAD10();
      v69 = v72;
      v70 = v73;
      v71 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v2;
      v33 = sub_2EBF88(v65, v64);
      v34 = v2[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_60;
      }

      if (v2[3] < v36)
      {
        break;
      }

      v18 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = v33;
        v58 = v32;
        sub_332E78();
        v40 = v58;
        v33 = v55;
        goto LABEL_36;
      }

      v41 = v64;
      v42 = v65;
      if (v32)
      {
LABEL_50:
        v67 = v33;

        v2 = v68;
        sub_9AD68(&v69, v68[7] + 40 * v67);
        goto LABEL_46;
      }

LABEL_37:
      v2 = v68;
      v68[(v33 >> 6) + 8] |= 1 << v33;
      v43 = (v68[6] + 16 * v33);
      *v43 = v42;
      v43[1] = v41;
      v44 = v68[7] + 40 * v33;
      v45 = v71;
      v46 = v70;
      *v44 = v69;
      *(v44 + 16) = v46;
      *(v44 + 32) = v45;
      v47 = v68[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_61;
      }

      v68[2] = v49;
LABEL_46:
      v24 = v59;
      v23 = v62;
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    v37 = v32;
    sub_32A910(v36, isUniquelyReferenced_nonNull_native);
    v38 = sub_2EBF88(v65, v64);
    if ((v37 & 1) != (v39 & 1))
    {
      goto LABEL_62;
    }

    v33 = v38;
    v40 = v37;
LABEL_36:
    v18 = v60;
    v41 = v64;
    v42 = v65;
    if (v40)
    {
      goto LABEL_50;
    }

    goto LABEL_37;
  }

LABEL_25:
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      goto LABEL_8;
    }

    v22 = *(v24 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_29;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEC30()
{
  v0 = sub_ABB420();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

void *sub_1CEC84(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_47;
  }

  v5 = result[4];
  v39 = result[3] >> 1;
  if (v5 != v39)
  {
    v38 = result[2];
    if (v5 < v38 || v5 >= v39)
    {
      goto LABEL_48;
    }

    v7 = result[1];
    v8 = v5 + 1;
    v9 = v7 + 16 * v5;
    v10 = *(v9 + 8);
    v11 = *v9;
    v12 = *v9;
    result = v11;
    v31 = v7 + 8;
    v32 = v1;
    while (1)
    {
      if (__OFADD__(v4, 1))
      {
        goto LABEL_40;
      }

      v36 = result;
      v40 = sub_1CC84C(v4, v4 + 1, *v1, v1[1], v2, v3);
      v13 = sub_1CCA0C();
      sub_1CCA28(&v40, v4, 0, v13);

      v14 = v1[2];
      v3 = v1[3];
      v15 = (v3 >> 1) - v14;
      if (__OFSUB__(v3 >> 1, v14))
      {
        break;
      }

      v33 = v3 >> 1;
      v34 = v1[3];
      v37 = v1[1];
      v35 = v1[2];
      if (v3)
      {
        sub_ABB3F0();
        swift_unknownObjectRetain();
        v16 = swift_dynamicCastClass();
        if (!v16)
        {
          swift_unknownObjectRelease();
          v16 = _swiftEmptyArrayStorage;
        }

        v17 = v16[2];
        v18 = 16 * v14;
        if ((v37 + v18 + 16 * v15) == &v16[2 * v17 + 4])
        {
          v20 = v16[3];

          v21 = (v20 >> 1) - v17;
          v19 = v15 + v21;
          if (__OFADD__(v15, v21))
          {
            goto LABEL_46;
          }

          v1 = v32;
        }

        else
        {

          v19 = v15;
        }
      }

      else
      {
        v18 = 16 * v14;
        v19 = v15;
      }

      result = v36;
      if (v4 < v19)
      {
        v22 = 0;
        v23 = (v31 + 16 * v8);
        v24 = (v37 + v18 + 16 * v4 + 8);
        while (1)
        {
          *(v24 - 1) = result;
          *v24 = v10;
          if (v39 - v8 == v22)
          {
            break;
          }

          if (v8 < v38 || v8 + v22 >= v39)
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          v10 = *v23;
          result = *(v23 - 1);
          ++v22;
          v23 += 2;
          v24 += 16;
          if (!(v4 - v19 + v22))
          {
            v8 += v22;
            v4 = v19;
LABEL_29:
            v1 = v32;
            goto LABEL_30;
          }
        }

        result = 0;
        v10 = 0;
        v4 += v22 + 1;
        v8 = v39;
        goto LABEL_29;
      }

LABEL_30:
      v25 = __OFSUB__(v4, v15);
      v26 = v4 - v15;
      v2 = v35;
      if (v25)
      {
        goto LABEL_42;
      }

      if (v26)
      {
        v27 = result;
        sub_ABB3F0();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = _swiftEmptyArrayStorage;
        }

        v28 = result[2];
        v25 = __OFADD__(v28, v26);
        v29 = v28 + v26;
        if (v25)
        {
          goto LABEL_43;
        }

        result[2] = v29;

        v30 = v33 + v26;
        if (__OFADD__(v33, v26))
        {
          goto LABEL_44;
        }

        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        v3 = v34 & 1 | (2 * v30);
        v1[3] = v3;
        result = v27;
      }

      if (!result)
      {
        return result;
      }
    }

LABEL_41:
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
    __break(1u);
LABEL_48:
    __break(1u);
  }

  return result;
}

void *sub_1CEF98(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_ABB3F0();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = v13[2];
  if ((v12 + 16 * v8 + 16 * v9) != &v13[2 * v14 + 4])
  {

    goto LABEL_8;
  }

  v16 = v13[3];

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_1CC6CC(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = v4[1] + 16 * v21 + 16 * v22;
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_ABB3F0();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = _swiftEmptyArrayStorage;
  }

  v25 = v24[2];
  if (v23 != &v24[2 * v25 + 4])
  {

    goto LABEL_21;
  }

  v27 = v24[3];

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_1CC614(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_1CEC84(v32);
  }

  return result;
}

uint64_t sub_1CF1DC(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  while (2)
  {
    v5 = *(&off_CF0808 + v4++ + 32);
    v6 = 0xEA00000000007365;
    v7 = 0x6974697669746361;
    switch(v5)
    {
      case 1:
        v6 = 0xE600000000000000;
        if (a1 == 0x736D75626C61)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      case 2:
        v6 = 0xE700000000000000;
        if (a1 != 0x73747369747261)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 3:
        v6 = 0xE800000000000000;
        if (a1 != 0x73726F7461727563)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 4:
        v6 = 0xE500000000000000;
        if (a1 != 0x73676E6F73)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 5:
        v6 = 0xE800000000000000;
        if (a1 != 0x736E6F6974617473)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 6:
        v6 = 0xEE0073726F746172;
        if (a1 != 0x75632D656C707061)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 7:
        v8 = 0x6169726F74696465;
        v9 = 0x6D6574692D6CLL;
        goto LABEL_19;
      case 8:
        v10 = 0x6F6D2D636973756DLL;
        v11 = 1936025974;
        goto LABEL_34;
      case 9:
        v10 = 0x69762D636973756DLL;
        v11 = 1936680292;
LABEL_34:
        v6 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != a1)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 10:
        v7 = 0x6F736970652D7674;
        v6 = 0xEB00000000736564;
        goto LABEL_28;
      case 11:
        v6 = 0xE800000000000000;
        if (a1 != 0x73776F68732D7674)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 12:
        v8 = 0x646564616F6C7075;
        v9 = 0x6F656469762DLL;
        goto LABEL_19;
      case 13:
        v6 = 0xED0000736C656261;
        if (a1 != 0x6C2D64726F636572)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 14:
        v8 = 0x702D6C6169636F73;
        v9 = 0x656C69666F72;
LABEL_19:
        v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v8 != a1)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 15:
        v6 = 0xE900000000000073;
        if (a1 != 0x7473696C79616C70)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (v7 != a1)
        {
          goto LABEL_30;
        }

LABEL_29:
        if (v6 != a2)
        {
LABEL_30:
          v12 = sub_ABB3C0();

          if (v12)
          {
            goto LABEL_37;
          }

          if (v4 == 16)
          {
            if (a1 == 0x727543656C707061 && a2 == 0xED000073726F7461 || (sub_ABB3C0() & 1) != 0)
            {

              return 6;
            }

            else if (a1 == 0x6169726F74696465 && a2 == 0xEE00736D6574496CLL || (sub_ABB3C0() & 1) != 0)
            {

              return 7;
            }

            else if (a1 == 0x766F4D636973756DLL && a2 == 0xEB00000000736569 || (sub_ABB3C0() & 1) != 0)
            {

              return 8;
            }

            else if (a1 == 0x646956636973756DLL && a2 == 0xEB00000000736F65 || (sub_ABB3C0() & 1) != 0)
            {

              return 9;
            }

            else if (a1 == 0x72506C6169636F73 && a2 == 0xEE0073656C69666FLL || (sub_ABB3C0() & 1) != 0)
            {

              return 14;
            }

            else if (a1 == 0x73776F68537674 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
            {

              return 11;
            }

            else if (a1 == 0x646F736970457674 && a2 == 0xEA00000000007365 || (sub_ABB3C0() & 1) != 0)
            {

              return 10;
            }

            else if (a1 == 0x646564616F6C7075 && a2 == 0xEE00736F65646956 || (sub_ABB3C0() & 1) != 0)
            {

              return 12;
            }

            else
            {
              if (qword_DE6D48 != -1)
              {
                swift_once();
              }

              v14 = sub_AB4BC0();
              __swift_project_value_buffer(v14, static Logger.search);

              v15 = sub_AB4BA0();
              v16 = sub_AB9F30();

              if (os_log_type_enabled(v15, v16))
              {
                v17 = swift_slowAlloc();
                v18 = swift_slowAlloc();
                v20 = v18;
                *v17 = 136380675;
                v19 = sub_425E68(a1, a2, &v20);

                *(v17 + 4) = v19;
                _os_log_impl(&dword_0, v15, v16, "CatalogSearchSource: Failed to match '%{private}s' to an ObjectType", v17, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v18);
              }

              else
              {
              }

              return 16;
            }
          }

          continue;
        }

LABEL_37:

        return v5;
    }
  }
}

uint64_t sub_1CF904(char *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = sub_AB7C10();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v292 = &v265 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_AB7C50();
  v291 = *(v293 - 1);
  __chkstk_darwin(v293);
  v290 = (&v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v289 = sub_AB7C20();
  v288 = *(v289 - 8);
  __chkstk_darwin(v289);
  v287 = &v265 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = *a7;
  v307 = *(a7 + 1);
  v308 = *(a7 + 24);
  v306 = a7[4];
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  *(v19 + 5) = a6;
  v20 = *(a7 + 1);
  *(v19 + 3) = *a7;
  *(v19 + 4) = v20;
  *(v19 + 10) = a7[4];
  v298 = a1;
  v21 = *a1;
  if (!v21)
  {
    memset(aBlock, 0, sizeof(aBlock));
    v31 = a3;

    sub_15F84(&v309, &v299, &qword_DF4F70);
    sub_1D2CE4(&v307, &v299);
    sub_15F84(&v306, &v299, &qword_DF4F78);
    goto LABEL_8;
  }

  v285 = v15;
  v22 = a3;

  sub_15F84(&v309, &v299, &qword_DF4F70);
  sub_1D2CE4(&v307, &v299);
  sub_15F84(&v306, &v299, &qword_DF4F78);
  sub_1B6578(1, v21, aBlock);
  if (!*&aBlock[24])
  {
LABEL_8:
    sub_12E1C(aBlock, &qword_DF2BD0);
    goto LABEL_9;
  }

  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
  if (!swift_dynamicCast())
  {
LABEL_9:
    sub_1D35B0();
    v32 = swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 1;
    *aBlock = v32;
    memset(&aBlock[8], 0, 32);
    LOWORD(v303) = 256;
    __chkstk_darwin(v32);
    *(&v265 - 6) = 0;
    *(&v265 - 5) = 0;
    *(&v265 - 4) = a5;
    *(&v265 - 3) = aBlock;
    *(&v265 - 2) = v34;
    *(&v265 - 1) = a7;
    UnfairLock.locked<A>(_:)(sub_1D38E4);
    dispatch_group_leave(a3);
  }

  v272 = v14;
  countAndFlagsBits = v299._countAndFlagsBits;
  v279 = _swiftEmptyArrayStorage;
  v284 = sub_988E8(_swiftEmptyArrayStorage);
  v24 = swift_allocObject();
  v25 = sub_1CE69C(v21);
  v281 = v24;
  *(v24 + 16) = v25;
  v280 = v24 + 16;
  v297 = sub_AB92A0();
  v294 = v26;
  v28 = *(v298 + 1);
  v27 = *(v298 + 2);
  v29 = v298[24];
  v282 = v19;
  v283 = a2;
  v295 = countAndFlagsBits;
  if (!(v29 >> 6))
  {
    v273 = v28;
    v274 = v27;
    sub_1B6578(0, countAndFlagsBits, aBlock);
    if (*&aBlock[24])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0);
      if (swift_dynamicCast())
      {
        v35 = v299._countAndFlagsBits;
        v296 = swift_allocObject();
        *(v296 + 2) = _swiftEmptyArrayStorage;
        v36 = *(v35 + 16);
        v292 = v35;
        if (!v36)
        {
          v293 = _swiftEmptyArrayStorage;
LABEL_186:

          v167 = v296;
          v168 = *(v296 + 2);
          v299._countAndFlagsBits = _swiftEmptyArrayStorage;
          v169 = *(v168 + 16);
          if (v169)
          {
            v170 = v168 + 32;

            v279 = _swiftEmptyArrayStorage;
            do
            {
              sub_9ACA0(v170, aBlock);
              v171.isa = sub_ABACE0().isa;
              sub_8085C(aBlock);
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                sub_AB9730();
                if (*(&dword_10 + (v299._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v299._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_AB97A0();
                  v19 = v282;
                }

                sub_AB97F0();
                v279 = v299._countAndFlagsBits;
              }

              else
              {
              }

              v170 += 40;
              --v169;
            }

            while (v169);
          }

          a2 = v283;
          sub_1BA808(v293, v280);

          v172 = v284;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *aBlock = v172;
          sub_93E20(v279, 0x73746E6968, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
          v284 = *aBlock;
          v174 = v298;
          v299._countAndFlagsBits = *(v298 + 4);
          v118 = swift_allocObject();
          *(v118 + 16) = sub_1D3864;
          *(v118 + 24) = v19;
          v175 = v281;
          *(v118 + 32) = v167;
          *(v118 + 40) = v175;
          v176 = *(v174 + 1);
          *(v118 + 48) = *v174;
          *(v118 + 64) = v176;
          *(v118 + 80) = *(v174 + 4);

          sub_1D2B24(v273, v274, v29);
          sub_15F84(&v299, aBlock, &qword_DF4F78);

          v177 = sub_1D4550;
LABEL_282:
          v261 = v177;
          goto LABEL_283;
        }

        v37 = v35 + 32;
        v293 = _swiftEmptyArrayStorage;
        while (1)
        {
          v38 = *v37;
          if (*(*v37 + 16))
          {

            v39 = sub_2EBF88(1684957547, 0xE400000000000000);
            if (v40)
            {
              sub_9ACA0(*(v38 + 56) + 40 * v39, aBlock);
              if (swift_dynamicCast())
              {
                v41 = v29;
                v42._rawValue = &off_CF0838;
                v43 = sub_ABB140(v42, v299);

                if (v43)
                {
                  if (v43 == 1)
                  {
                    if (*(v38 + 16))
                    {
                      v44 = sub_2EBF88(0x746E65746E6F63, 0xE700000000000000);
                      if (v45)
                      {
                        sub_9ACA0(*(v38 + 56) + 40 * v44, aBlock);
                        if (swift_dynamicCast())
                        {
                          if (*(v299._countAndFlagsBits + 16))
                          {
                            v291 = v299._countAndFlagsBits;
                            v46 = sub_2EBF88(v297, v294);
                            if (v47)
                            {
                              sub_9ACA0(*(v291 + 56) + 40 * v46, aBlock);
                              v48.isa = sub_ABACE0().isa;
                              sub_8085C(aBlock);
                              objc_opt_self();
                              v49 = swift_dynamicCastObjCClass();
                              if (v49)
                              {
                                v299._countAndFlagsBits = v49;
                                v289 = sub_13C80(0, &unk_DE8180);
                                sub_1D3604(&qword_DF4FF8, &unk_DE8180);
                                v290 = v48.isa;
                                sub_ABAD10();
                                v50 = v296;
                                v51 = *(v296 + 2);
                                v52 = swift_isUniquelyReferenced_nonNull_native();
                                *(v50 + 2) = v51;
                                if ((v52 & 1) == 0)
                                {
                                  v51 = sub_6B8AC(0, *(v51 + 2) + 1, 1, v51);
                                  *(v296 + 2) = v51;
                                }

                                v54 = *(v51 + 2);
                                v53 = *(v51 + 3);
                                if (v54 >= v53 >> 1)
                                {
                                  v51 = sub_6B8AC((v53 > 1), v54 + 1, 1, v51);
                                }

                                *(v51 + 2) = v54 + 1;
                                v55 = &v51[40 * v54];
                                v56 = *aBlock;
                                v57 = *&aBlock[16];
                                *(v55 + 8) = *&aBlock[32];
                                *(v55 + 2) = v56;
                                *(v55 + 3) = v57;
                                *(v296 + 2) = v51;
                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  v293 = sub_6BA14(0, v293[2] + 1, 1, v293);
                                }

                                v59 = v293[2];
                                v58 = v293[3];
                                if (v59 >= v58 >> 1)
                                {
                                  v293 = sub_6BA14((v58 > 1), v59 + 1, 1, v293);
                                }

                                v60 = v293;
                                v293[2] = v59 + 1;
                                v60[v59 + 4] = v291;
                              }

                              else
                              {
                              }

                              goto LABEL_16;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                else if (*(v38 + 16))
                {
                  v61 = sub_2EBF88(0x6554686372616573, 0xEA00000000006D72);
                  if (v62)
                  {
                    sub_9ACA0(*(v38 + 56) + 40 * v61, aBlock);
                    if (swift_dynamicCast())
                    {
                      object = v299._object;
                      if (*(v38 + 16) && (v64 = v299._countAndFlagsBits, v65 = sub_2EBF88(0x5479616C70736964, 0xEB000000006D7265), (v66 & 1) != 0) && (sub_9ACA0(*(v38 + 56) + 40 * v65, aBlock), swift_dynamicCast()))
                      {
                        v67 = v299._countAndFlagsBits;
                        v68 = v299._object;
                        v299._countAndFlagsBits = v64;
                        v299._object = object;
                        v300 = v67;
                        v301 = v68;
                        sub_1D36AC();
                        sub_ABAD10();
                        v69 = v296;
                        v70 = *(v296 + 2);
                        v71 = swift_isUniquelyReferenced_nonNull_native();
                        *(v69 + 2) = v70;
                        if ((v71 & 1) == 0)
                        {
                          v70 = sub_6B8AC(0, *(v70 + 2) + 1, 1, v70);
                          *(v296 + 2) = v70;
                        }

                        v73 = *(v70 + 2);
                        v72 = *(v70 + 3);
                        if (v73 >= v72 >> 1)
                        {
                          v70 = sub_6B8AC((v72 > 1), v73 + 1, 1, v70);
                        }

                        *(v70 + 2) = v73 + 1;
                        v74 = &v70[40 * v73];
                        v75 = *aBlock;
                        v76 = *&aBlock[16];
                        *(v74 + 8) = *&aBlock[32];
                        *(v74 + 2) = v75;
                        *(v74 + 3) = v76;
                        *(v296 + 2) = v70;
                      }

                      else
                      {
                      }

                      v29 = v41;
                      goto LABEL_16;
                    }
                  }
                }
              }
            }
          }

LABEL_16:
          v37 += 8;
          if (!--v36)
          {
            goto LABEL_186;
          }
        }
      }
    }

    else
    {

      sub_12E1C(aBlock, &qword_DF2BD0);
    }

    sub_1D35B0();
    v125 = swift_allocError();
    *v126 = 0;
    *(v126 + 8) = 1;
    *aBlock = v125;
    memset(&aBlock[8], 0, 32);
    LOWORD(v303) = 256;
    __chkstk_darwin(v125);
    *(&v265 - 6) = 0;
    *(&v265 - 5) = 0;
    *(&v265 - 4) = a5;
    *(&v265 - 3) = aBlock;
    *(&v265 - 2) = v127;
    *(&v265 - 1) = a7;
    UnfairLock.locked<A>(_:)(sub_1D4538);
    dispatch_group_leave(v22);
  }

  if (v29 >> 6 == 1)
  {
  }

  v273 = v28;
  v274 = v27;
  type metadata accessor for CompoundRequestResponseInvalidation();
  v275 = CompoundRequestResponseInvalidation.__allocating_init()();
  v304 = &_swiftEmptySetSingleton;
  sub_1B6578(5, v21, aBlock);
  v77 = v281;
  v78 = v294;
  LODWORD(v271) = v29;
  if (!*&aBlock[24])
  {
    sub_12E1C(aBlock, &qword_DF2BD0);
LABEL_61:
    memset(aBlock, 0, sizeof(aBlock));
    sub_12E1C(aBlock, &qword_DF2BD0);
    v80 = 0;
    memset(aBlock, 0, sizeof(aBlock));
LABEL_62:
    sub_12E1C(aBlock, &qword_DF2BD0);
    goto LABEL_63;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  v79 = v299._countAndFlagsBits;
  if (!v299._countAndFlagsBits)
  {
    goto LABEL_61;
  }

  sub_1B6578(1, v79, aBlock);

  if (*&aBlock[24])
  {
    if (swift_dynamicCast())
    {
      v80 = v299._countAndFlagsBits;
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    sub_12E1C(aBlock, &qword_DF2BD0);
    v80 = 0;
  }

  sub_1B6578(6, v79, aBlock);

  if (!*&aBlock[24])
  {
    goto LABEL_62;
  }

  if (swift_dynamicCast())
  {
    sub_1D3700(&qword_DF4F90, &unk_E00000);
    sub_ABAD10();
    sub_2E58C4(aBlock, 0x7363697274656DLL, 0xE700000000000000);
  }

LABEL_63:
  if (!v80)
  {
    memset(aBlock, 0, sizeof(aBlock));
    goto LABEL_129;
  }

  sub_1B6578(7, v80, aBlock);

  if (!*&aBlock[24])
  {
LABEL_129:
    sub_12E1C(aBlock, &qword_DF2BD0);
    goto LABEL_130;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  if (!swift_dynamicCast())
  {
LABEL_130:
    v166 = _swiftEmptyArrayStorage;
LABEL_131:
    v117 = v298;
    v305 = *(v298 + 4);
    v118 = swift_allocObject();
    v119 = *(v117 + 1);
    *(v118 + 56) = *v117;
    *(v118 + 16) = sub_1D3864;
    *(v118 + 24) = v19;
    v120 = v284;
    *(v118 + 32) = v166;
    *(v118 + 40) = v120;
    *(v118 + 48) = v77;
    *(v118 + 72) = v119;
    v121 = v275;
    *(v118 + 88) = *(v117 + 4);
    *(v118 + 96) = v121;
    v296 = v166;
    if (*(v166 + 2))
    {
      v122 = v271;
      if (v271)
      {
        v123 = sub_ABB3C0();

        sub_1D2B24(v273, v274, v122);
        sub_15F84(&v305, aBlock, &qword_DF4F78);

        v124 = v296;

        if ((v123 & 1) == 0)
        {

LABEL_136:

LABEL_281:
          v177 = sub_1D4534;
          goto LABEL_282;
        }
      }

      else
      {

        sub_1D2B24(v273, v274, v122);
        sub_15F84(&v305, aBlock, &qword_DF4F78);

        v124 = v296;
      }

      v128 = *(v124 + 2);
      v21 = v286;
      v274 = v128;
      v277 = v118;
      if (v128)
      {
        v129 = 0;
        v276 = v296 + 32;
        while (v129 < *(v296 + 2))
        {
          if (!countAndFlagsBits[2])
          {
            goto LABEL_197;
          }

          v130 = &v276[32 * v129];
          v131 = *v130;
          v132 = v130[1];
          v294 = v130[3];

          v298 = v132;
          v133 = sub_2EBF88(v131, v132);
          if ((v134 & 1) == 0 || (sub_9ACA0(countAndFlagsBits[7] + 40 * v133, aBlock), (swift_dynamicCast() & 1) == 0))
          {

            goto LABEL_197;
          }

          v135 = v299._countAndFlagsBits;
          if (!*(v299._countAndFlagsBits + 16) || (v136 = sub_2EBF88(1635017060, 0xE400000000000000), (v137 & 1) == 0) || (sub_9ACA0(*(v135 + 56) + 40 * v136, aBlock), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0), (swift_dynamicCast() & 1) == 0))
          {

            v118 = v277;
            goto LABEL_205;
          }

          v138 = *(v299._countAndFlagsBits + 16);
          v278 = v299._countAndFlagsBits;
          if (v138)
          {
            v139 = v299._countAndFlagsBits + 32;
            do
            {
              v140 = *v139;
              if (*(*v139 + 16))
              {

                v141 = sub_2EBF88(v297, v78);
                if (v142)
                {
                  sub_9ACA0(*(v140 + 56) + 40 * v141, aBlock);
                  v143.isa = sub_ABACE0().isa;
                  sub_8085C(aBlock);
                  objc_opt_self();
                  v144 = swift_dynamicCastObjCClass();
                  if (v144 && *(v140 + 16) && (v145 = v144, v146 = sub_2EBF88(1701869940, 0xE400000000000000), (v147 & 1) != 0) && (sub_9ACA0(*(v140 + 56) + 40 * v146, aBlock), swift_dynamicCast()))
                  {
                    v148 = v299._countAndFlagsBits;
                    v149 = v299._object;
                    v273 = v143.isa;
                    v150 = sub_1CF1DC(v148, v149);
                    countAndFlagsBits = v295;
                    v271 = v150;
                    switch(v150)
                    {
                      case 1:
                        v151 = &qword_DE8E90;
                        goto LABEL_175;
                      case 2:
                        v151 = &qword_DE8E78;
                        goto LABEL_175;
                      case 4:
                      case 9:
                      case 12:
                        v151 = &unk_DE8EB0;
                        goto LABEL_175;
                      case 5:
                        v151 = &unk_E087D0;
                        goto LABEL_175;
                      case 8:
                      case 10:
                        v151 = &unk_DE9C00;
                        goto LABEL_175;
                      case 11:
                        v151 = &unk_DE8EC0;
                        goto LABEL_175;
                      case 13:
                        v151 = &unk_DF1280;
                        goto LABEL_175;
                      case 14:
                        v151 = &qword_DED7C0;
                        goto LABEL_175;
                      case 15:
                        v151 = &unk_DE8EA0;
                        goto LABEL_175;
                      case 16:

                        v152 = v273;

                        goto LABEL_154;
                      default:
                        v151 = &unk_E04570;
LABEL_175:
                        v153 = sub_13C80(0, v151);
                        sub_13C80(0, &unk_DE8180);
                        v154 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
                        sub_13C80(0, &qword_DEDE20);
                        v155 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v153, v154, 0, v145);
                        if (!v156)
                        {

                          v164 = v273;

                          countAndFlagsBits = v295;
                          goto LABEL_154;
                        }

                        v157 = v156;
                        v158 = v155;
                        v159 = v280;
                        swift_beginAccess();
                        v160 = *v159;
                        if (*(v160 + 16) && (v161 = sub_2EBF88(v158, v157), (v162 & 1) != 0))
                        {
                          sub_9ACA0(*(v160 + 56) + 40 * v161, aBlock);
                        }

                        else
                        {
                          memset(aBlock, 0, sizeof(aBlock));
                        }

                        swift_endAccess();

                        if (*&aBlock[24])
                        {
                          v163 = v273;

                          sub_12E1C(aBlock, &qword_DF2BD0);
                        }

                        else
                        {
                          sub_12E1C(aBlock, &qword_DF2BD0);
                          sub_1B38C(aBlock, v145, v271);

                          v165 = *aBlock;
                        }

                        break;
                    }
                  }

                  else
                  {
                  }

                  countAndFlagsBits = v295;
                }

                else
                {
                }
              }

LABEL_154:
              v139 += 8;
              --v138;
            }

            while (v138);

            v19 = v282;
            v21 = v286;
          }

          else
          {
          }

          ++v129;

          a2 = v283;
          v118 = v277;
          if (v129 == v274)
          {
            goto LABEL_197;
          }
        }

        goto LABEL_302;
      }

LABEL_197:

LABEL_205:
      v21 = v304;
      if (v304[2])
      {
        countAndFlagsBits = type metadata accessor for UnfairLock();
        swift_allocObject();
        v19 = UnfairLock.init()();
        a2 = dispatch_group_create();
        type metadata accessor for BindingRequestResponseInvalidation();
        if (qword_DE6958 != -1)
        {
          goto LABEL_304;
        }

        goto LABEL_207;
      }

      goto LABEL_281;
    }

    sub_1D2B24(v273, v274, v271);
    sub_15F84(&v305, aBlock, &qword_DF4F78);

    goto LABEL_136;
  }

  v81 = v299._countAndFlagsBits;
  v278 = *(v299._countAndFlagsBits + 16);
  if (!v278)
  {

    goto LABEL_130;
  }

  v82 = 0;
  v277 = v299._countAndFlagsBits + 32;
  v296 = _swiftEmptyArrayStorage;
  v276 = v299._countAndFlagsBits;
  while (1)
  {
    if (v82 >= *(v81 + 16))
    {
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v83 = (v277 + 16 * v82);
    v84 = *v83;
    v85 = v83[1];
    v86 = countAndFlagsBits[2];

    if (!v86 || (v87 = sub_2EBF88(v84, v85), (v88 & 1) == 0) || (sub_9ACA0(countAndFlagsBits[7] + 40 * v87, aBlock), (swift_dynamicCast() & 1) == 0))
    {
      v89 = 0;
      v93 = 1;
      v90 = v296;
LABEL_77:
      memset(aBlock, 0, sizeof(aBlock));
LABEL_78:
      sub_12E1C(aBlock, &qword_DF2BD0);
LABEL_79:

      v94 = v84;
      v95 = v85;
      goto LABEL_80;
    }

    v89 = v299._countAndFlagsBits;
    v90 = v296;
    if (!v299._countAndFlagsBits)
    {
      v93 = 1;
      goto LABEL_77;
    }

    if (!*(v299._countAndFlagsBits + 16))
    {
      v93 = 0;
      goto LABEL_77;
    }

    v91 = sub_2EBF88(1701667182, 0xE400000000000000);
    if (v92)
    {
      sub_9ACA0(*(v89 + 56) + 40 * v91, aBlock);
    }

    else
    {
      memset(aBlock, 0, sizeof(aBlock));
    }

    if (!*&aBlock[24])
    {
      v93 = 0;
      goto LABEL_78;
    }

    v93 = 0;
    if (!swift_dynamicCast())
    {
      goto LABEL_79;
    }

    v94 = v299._countAndFlagsBits;
    v95 = v299._object;
LABEL_80:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_6B9F8(0, *(v90 + 2) + 1, 1, v90);
    }

    v296 = v90;
    v97 = *(v90 + 2);
    v96 = *(v90 + 3);
    if (v97 >= v96 >> 1)
    {
      v296 = sub_6B9F8((v96 > 1), v97 + 1, 1, v296);
    }

    v98 = v296;
    *(v296 + 2) = v97 + 1;
    v99 = &v98[32 * v97];
    *(v99 + 4) = v84;
    *(v99 + 5) = v85;
    *(v99 + 6) = v94;
    *(v99 + 7) = v95;
    if (v93)
    {
      memset(aBlock, 0, sizeof(aBlock));
      v19 = v282;
      a2 = v283;
LABEL_94:
      sub_12E1C(aBlock, &qword_DF2BD0);
      v102 = 0;
      goto LABEL_95;
    }

    if (*(v89 + 16) && (v100 = sub_2EBF88(1635017060, 0xE400000000000000), (v101 & 1) != 0))
    {
      sub_9ACA0(*(v89 + 56) + 40 * v100, aBlock);
    }

    else
    {
      memset(aBlock, 0, sizeof(aBlock));
    }

    v19 = v282;
    a2 = v283;

    if (!*&aBlock[24])
    {
      goto LABEL_94;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0);
    v102 = swift_dynamicCast() ? v299._countAndFlagsBits : 0;
LABEL_95:
    sub_1BA808(v102, v280);

    countAndFlagsBits = v295;
    if (!v295[2])
    {
      goto LABEL_116;
    }

    v103 = sub_2EBF88(v84, v85);
    if ((v104 & 1) == 0)
    {
      goto LABEL_116;
    }

    sub_9ACA0(countAndFlagsBits[7] + 40 * v103, aBlock);
    if (!swift_dynamicCast())
    {
      goto LABEL_116;
    }

    v105 = v299._countAndFlagsBits;
    if (*(v299._countAndFlagsBits + 16))
    {
      v106 = sub_2EBF88(1635017060, 0xE400000000000000);
      if (v107)
      {
        sub_9ACA0(*(v105 + 56) + 40 * v106, aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_116:

LABEL_117:
    ++v82;
    v78 = v294;
    v81 = v276;
    if (v82 == v278)
    {

      v77 = v281;
      v166 = v296;
      goto LABEL_131;
    }
  }

  v267 = v105;
  v108 = v299._countAndFlagsBits;
  v299._countAndFlagsBits = _swiftEmptyArrayStorage;
  v109 = *(v108 + 16);
  if (!v109)
  {
    v268 = _swiftEmptyArrayStorage;
LABEL_127:
    v115 = v284;
    v116 = swift_isUniquelyReferenced_nonNull_native();
    *aBlock = v115;
    sub_93E20(v268, v84, v85, v116);

    v284 = *aBlock;
    a2 = v283;
    countAndFlagsBits = v295;
    goto LABEL_117;
  }

  countAndFlagsBits = 0;
  v270 = (v108 + 32);
  v266 = (v109 - 1);
  v268 = _swiftEmptyArrayStorage;
  v269 = v109;
LABEL_103:
  a2 = countAndFlagsBits;
  while (a2 < *(v108 + 16))
  {
    countAndFlagsBits = v270[a2];
    if (countAndFlagsBits[2])
    {

      v110 = sub_2EBF88(v297, v294);
      if (v111)
      {
        v112 = v108;
        sub_9ACA0(countAndFlagsBits[7] + 40 * v110, aBlock);
        v113.isa = sub_ABACE0().isa;
        sub_8085C(aBlock);
        objc_opt_self();
        v114 = swift_dynamicCastObjCClass();

        if (v114)
        {
          sub_AB9730();
          if (*(&dword_10 + (v299._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v299._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          countAndFlagsBits = (a2 + 1);
          sub_AB97F0();
          v268 = v299._countAndFlagsBits;
          v108 = v112;
          v109 = v269;
          if (v266 != a2)
          {
            goto LABEL_103;
          }

          goto LABEL_127;
        }

        v108 = v112;
        v109 = v269;
      }

      else
      {
      }
    }

    if (v109 == ++a2)
    {
      goto LABEL_127;
    }
  }

LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  swift_once();
LABEL_207:
  v270 = countAndFlagsBits;
  v271 = a2;
  v179 = qword_E71170;
  UIScreen.Dimensions.size.getter(v178);
  *&aBlock[24] = &type metadata for NotificationTrigger;
  *&aBlock[32] = &protocol witness table for NotificationTrigger;
  *aBlock = v180;
  *&aBlock[8] = v181;
  v182 = v179;
  v183 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(aBlock);
  v184 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v183, v184);

  a2 = _swiftEmptyArrayStorage;
  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v185 = sub_AB4BC0();
  __swift_project_value_buffer(v185, static Logger.search);

  v186 = sub_AB4BA0();
  countAndFlagsBits = sub_AB9F10();

  v187 = os_log_type_enabled(v186, countAndFlagsBits);
  v273 = v19;
  if (v187)
  {
    v188 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    *aBlock = v189;
    *v188 = 136446210;
    v299._countAndFlagsBits = v21[2];
    v190 = sub_ABB330();
    v192 = sub_425E68(v190, v191, aBlock);

    *(v188 + 4) = v192;
    _os_log_impl(&dword_0, v186, countAndFlagsBits, "CatalogSearchSource: Need to fetch %{public}s lookup items", v188, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v189);
  }

  v193 = sub_1BB590(v21);

  v19 = v193 + 64;
  v194 = 1 << v193[32];
  v195 = -1;
  if (v194 < 64)
  {
    v195 = ~(-1 << v194);
  }

  v196 = (v195 & *(v193 + 8));
  v197 = (v194 + 63) >> 6;
  v278 = v193;

  v198 = 0;
  v21 = _swiftEmptyArrayStorage;
  v276 = v193 + 64;
  v274 = v197;
  while (1)
  {
    v297 = v21;
    if (!v196)
    {
      break;
    }

LABEL_220:
    v296 = *(*(v278 + 56) + ((v198 << 9) | (8 * __clz(__rbit64(v196)))));
    v298 = *(v296 + 2);
    v286 = v198;
    if (v298)
    {
      v200 = 0;
      v201 = 0;
      while (1)
      {
        v202 = v200 + 1;
        if (__OFADD__(v200, 1))
        {
          goto LABEL_288;
        }

        v203 = __OFADD__(v201, 50);
        v201 += 50;
        if (v203)
        {
          v201 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v200;
        if (v201 >= v298)
        {
          goto LABEL_228;
        }
      }
    }

    v202 = 0;
LABEL_228:
    *aBlock = _swiftEmptyArrayStorage;
    countAndFlagsBits = (v202 & ~(v202 >> 63));

    sub_6D700(0, countAndFlagsBits, 0);
    if (v202 < 0)
    {
      goto LABEL_303;
    }

    v280 = v196;
    v204 = *aBlock;
    if (v202)
    {
      v205 = 0;
      v19 = v296;
      a2 = *(v296 + 2);
      v294 = v296 + 32;
      while (v205 < v298)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B30);
        v206 = swift_allocObject();
        if (v205 == 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_290;
        }

        v207 = v205 + 50;
        *(v206 + 32) = v205 + 50;
        *(v206 + 40) = a2;
        if (a2 >= (v205 + 50))
        {
          v208 = v205 + 50;
        }

        else
        {
          v208 = a2;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        if (v208 < v205)
        {
          goto LABEL_291;
        }

        v209 = *(v19 + 2);
        if (v209 < v205 || v209 < v208)
        {
          goto LABEL_292;
        }

        *aBlock = v204;
        v210 = v19;
        v212 = *(v204 + 16);
        v211 = *(v204 + 24);
        countAndFlagsBits = (v212 + 1);

        if (v212 >= v211 >> 1)
        {
          sub_6D700((v211 > 1), v212 + 1, 1);
          v204 = *aBlock;
        }

        *(v204 + 16) = countAndFlagsBits;
        v213 = (v204 + 32 * v212);
        v214 = v294;
        v213[4] = v210;
        v213[5] = v214;
        v213[6] = v205;
        v213[7] = (2 * v208) | 1;
        v205 += 50;
        --v202;
        v19 = v210;
        v21 = v297;
        if (!v202)
        {
          goto LABEL_244;
        }
      }

LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
      goto LABEL_300;
    }

    v207 = 0;
    v19 = v296;
LABEL_244:
    if (v207 < v298)
    {
      a2 = (v19 + 32);
      countAndFlagsBits = v207;
      while (1)
      {
        v215 = countAndFlagsBits + 50;
        v216 = __OFADD__(countAndFlagsBits, 50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B30);
        v217 = swift_allocObject();
        if (v216)
        {
          goto LABEL_293;
        }

        *(v217 + 32) = v215;
        v218 = *(v19 + 2);
        *(v217 + 40) = v218;
        if (v218 >= v215)
        {
          v219 = countAndFlagsBits + 50;
        }

        else
        {
          v219 = v218;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        if (v219 < countAndFlagsBits)
        {
          goto LABEL_294;
        }

        if (v207 < 0)
        {
          goto LABEL_295;
        }

        v220 = *(v19 + 2);
        if (v220 < countAndFlagsBits || v220 < v219)
        {
          goto LABEL_296;
        }

        if (v215 < 0)
        {
          goto LABEL_297;
        }

        *aBlock = v204;
        v221 = v19;
        v223 = *(v204 + 16);
        v222 = *(v204 + 24);
        v224 = v223 + 1;

        if (v223 >= v222 >> 1)
        {
          sub_6D700((v222 > 1), v223 + 1, 1);
          v204 = *aBlock;
        }

        *(v204 + 16) = v224;
        v225 = (v204 + 32 * v223);
        v225[4] = v221;
        v225[5] = a2;
        v225[6] = countAndFlagsBits;
        v225[7] = (2 * v219) | 1;
        countAndFlagsBits = (countAndFlagsBits + 50);
        v19 = v221;
        v21 = v297;
        if (v215 >= v298)
        {
          goto LABEL_263;
        }
      }
    }

    v224 = *(v204 + 16);
    if (v224)
    {
LABEL_263:
      a2 = 0;
      v226 = 0;
      while (v226 < *(v204 + 16))
      {
        countAndFlagsBits = *(v204 + a2 + 32);
        v228 = *(v204 + a2 + 40);
        v229 = *(v204 + a2 + 48);
        v19 = *(v204 + a2 + 56);
        v230 = v21[2];
        swift_unknownObjectRetain();
        v231 = swift_isUniquelyReferenced_nonNull_native();
        if (v226 >= v230)
        {
          if ((v231 & 1) == 0)
          {
            v21 = sub_6B8C8(0, v230 + 1, 1, v21);
          }

          v232 = v21;
          v233 = v21[2];
          v234 = v232;
          v235 = v232[3];
          if (v233 >= v235 >> 1)
          {
            v234 = sub_6B8C8((v235 > 1), v233 + 1, 1, v234);
          }

          v234[2] = v233 + 1;
          v227 = &v234[4 * v233];
          v21 = v234;
          v227[4] = countAndFlagsBits;
          v227[5] = v228;
          v227[6] = v229;
          v227[7] = v19;
        }

        else
        {
          if ((v231 & 1) == 0)
          {
            v21 = sub_284568(v21);
          }

          if (v226 >= v21[2])
          {
            goto LABEL_298;
          }

          sub_1CEF98(countAndFlagsBits, v228, v229, v19);
          swift_unknownObjectRelease();
        }

        ++v226;
        a2 += 32;
        v19 = v296;
        if (v224 == v226)
        {
          goto LABEL_214;
        }
      }

      __break(1u);
LABEL_288:
      __break(1u);
      goto LABEL_289;
    }

LABEL_214:
    v196 = ((v280 - 1) & v280);

    a2 = _swiftEmptyArrayStorage;
    v19 = v276;
    v197 = v274;
    v198 = v286;
  }

  while (1)
  {
    v199 = v198 + 1;
    if (__OFADD__(v198, 1))
    {
      goto LABEL_299;
    }

    if (v199 >= v197)
    {
      break;
    }

    v196 = *&v19[8 * v199];
    ++v198;
    if (v196)
    {
      v198 = v199;
      goto LABEL_220;
    }
  }

  v236 = v21[2];
  v237 = v273;
  v238 = v271;
  v239 = v270;
  if (v236)
  {
    v296 = sub_13C80(0, &qword_DF4F60);
    v240 = v297 + 7;
    do
    {
      v241 = *(v240 - 2);
      v242 = *(v240 - 1);
      v243 = *v240;
      swift_unknownObjectRetain();
      dispatch_group_enter(v238);
      sub_2F3BB4(v241, v242, v243);
      v298 = v244;
      _s7CatalogV15EndpointRequestCMa();
      v245 = swift_allocObject();
      swift_allocObject();
      *(v245 + 16) = UnfairLock.init()();
      *(v245 + 24) = 0;
      *(v245 + 32) = static ICMusicKitRequestContext.music.getter();
      *(v245 + 40) = 0;
      v246 = swift_allocObject();
      *(v246 + 16) = v238;
      *(v246 + 24) = v237;
      v247 = v238;

      BagProvider.shared.unsafeMutableAddressor();
      v248 = v238;
      v249 = v237;
      v250 = v239;
      v251 = swift_allocObject();
      *(v251 + 16) = v245;
      *(v251 + 24) = sub_1D44CC;
      v252 = v298;
      *(v251 + 32) = v246;
      *(v251 + 40) = v252;
      *(v251 + 48) = 0;
      *(v251 + 56) = 64;

      BagProvider.getBag(completion:)(sub_1D4530, v251);
      swift_unknownObjectRelease();

      v239 = v250;
      v237 = v249;
      v238 = v248;

      v240 += 4;
      --v236;
    }

    while (v236);
  }

  sub_13C80(0, &qword_DE8ED0);
  v253 = v288;
  v254 = v287;
  v255 = v289;
  (*(v288 + 104))(v287, enum case for DispatchQoS.QoSClass.userInteractive(_:), v289);
  v256 = sub_ABA190();
  (*(v253 + 8))(v254, v255);
  *&aBlock[32] = sub_1BBC34;
  v303 = 0;
  *aBlock = _NSConcreteStackBlock;
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1B5EB4;
  *&aBlock[24] = &block_descriptor_153_0;
  v257 = _Block_copy(aBlock);
  v258 = v290;
  sub_AB7C30();
  v299._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_1D3018(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  v259 = v292;
  v260 = v272;
  sub_ABABB0();
  sub_ABA0F0();

  (*(v285 + 8))(v259, v260);
  (*(v291 + 8))(v258, v293);
  _Block_release(v257);

  v261 = sub_1D4534;
  a2 = v283;
  v118 = v277;
LABEL_283:
  sub_15F84(a2 + 40, aBlock, &qword_DF4F58);
  v262 = *&aBlock[24];
  if (*&aBlock[24])
  {
    v263 = *&aBlock[32];
    __swift_project_boxed_opaque_existential_1(aBlock, *&aBlock[24]);
    v264 = (*(v263 + 16))(v262, v263);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    sub_12E1C(aBlock, &qword_DF4F58);
    v264 = [objc_opt_self() emptyPropertySet];
  }

  sub_1CDA30(v284, v264, v261, v118);
}

unint64_t sub_1D25BC()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 innermostModelObject];
    v2 = sub_1D25BC();

    if (v2 == 16)
    {
      return 16;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 2;
    }

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 curatorKind];
      if (v5 < 5)
      {
        return 0x700030610uLL >> (8 * v5);
      }

      return 16;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 15;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 14;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 10;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 11;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 13;
      }

      return 16;
    }

    if ([v6 hasVideo])
    {
      return 9;
    }

    else
    {
      return 4;
    }
  }

  return v2;
}

unint64_t sub_1D2800()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 innermostModelObject];
    v2 = sub_1D25BC();

    if (v2 == 16)
    {
      return 16;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 2;
    }

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 curatorKind];
      if (v5 < 5)
      {
        return 0x700030610uLL >> (8 * v5);
      }

      return 16;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 15;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 14;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 10;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 11;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 13;
      }

      return 16;
    }

    if ([v6 hasVideo])
    {
      return 9;
    }

    else
    {
      return 4;
    }
  }

  return v2;
}

uint64_t sub_1D2A44(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  return v6(v8, a4, a5);
}

uint64_t sub_1D2A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D2AC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D2B24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 2u)
  {
  }

  return result;
}

uint64_t sub_1D2B54()
{

  return swift_deallocObject();
}

uint64_t sub_1D2BA8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 2u)
  {
  }

  return result;
}

uint64_t sub_1D2BDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D2C3C()
{

  sub_1D2BA8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_1D2C90()
{
  result = qword_DF4F68;
  if (!qword_DF4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F68);
  }

  return result;
}

uint64_t sub_1D2D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  sub_1B62F4(&v38);
  v12 = v39;
  if (!v39)
  {
LABEL_18:
    sub_2BB88();
  }

  while (1)
  {
    v15 = v38;
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v16 = *a5;
    v17 = sub_2EBF88(v38, v12);
    v19 = *(v16 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (*(v16 + 24) < v22)
    {
      sub_32A910(v22, a4 & 1);
      v17 = sub_2EBF88(v15, v12);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v23)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v32 = v17;
    sub_332E78();
    v17 = v32;
    if (v23)
    {
LABEL_6:
      v13 = *a5;
      v14 = 40 * v17;
      sub_9ACA0(*(*a5 + 56) + 40 * v17, v34);
      sub_8085C(&v35);

      sub_9AD68(v34, *(v13 + 56) + v14);
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v15;
    v26[1] = v12;
    v27 = v25[7] + 40 * v17;
    v28 = v35;
    v29 = v36;
    *(v27 + 32) = v37;
    *v27 = v28;
    *(v27 + 16) = v29;
    v30 = v25[2];
    v21 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v25[2] = v31;
LABEL_7:
    sub_1B62F4(&v38);
    v12 = v39;
    a4 = 1;
    if (!v39)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

unint64_t sub_1D2FA4()
{
  result = qword_DF4FA0;
  if (!qword_DF4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4FA0);
  }

  return result;
}

uint64_t sub_1D3018(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D30D0()
{
  result = qword_E000A0;
  if (!qword_E000A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E000A0);
  }

  return result;
}

uint64_t sub_1D3124(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D3168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Search.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D31CC(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 26);
  return v2(&v5);
}

uint64_t sub_1D3248()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  }

  return swift_deallocObject();
}

uint64_t sub_1D32CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D332C()
{

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  }

  return swift_deallocObject();
}

void sub_1D339C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  if (a6 != -1)
  {
    sub_1D33B4(a1, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_1D33B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{

  v8 = a3;
  if (a6)
  {

    v8 = a5;
  }
}

uint64_t sub_1D3428()
{

  return swift_deallocObject();
}

uint64_t sub_1D3480()
{

  return swift_deallocObject();
}

uint64_t sub_1D34CC()
{

  sub_1D33B4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

unint64_t sub_1D35B0()
{
  result = qword_DF4FD8;
  if (!qword_DF4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4FD8);
  }

  return result;
}

uint64_t sub_1D3604(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_13C80(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D36AC()
{
  result = qword_DF5000;
  if (!qword_DF5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF5000);
  }

  return result;
}

uint64_t sub_1D3700(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3784()
{

  return swift_deallocObject();
}

uint64_t sub_1D37F8()
{

  sub_1D2BA8(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void sub_1D3864()
{
  v1 = *(v0 + 16);
  UnfairLock.locked<A>(_:)(sub_1D4538);
  dispatch_group_leave(v1);
}

uint64_t objectdestroy_108Tm()
{

  sub_1D2BA8(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t objectdestroy_38Tm()
{

  sub_1D2BA8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t objectdestroy_122Tm()
{

  sub_1D2BA8(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void sub_1D3AA0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_13CC8(a1, a2, a3 & 1);
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication6SearchC7CatalogV26RecentlySearchedTranslatorV12RequestError33_F94F70CE9DD84EDA27C4DA482D2E6FDELLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for HorizontalLockupCollectionViewCell.TrailingSeparatorAlignment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for HorizontalLockupCollectionViewCell.TrailingSeparatorAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D3B94(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D3BBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D3C04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D3C60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D3CB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication6SearchC7CatalogV15EndpointRequestC0F5Error33_F94F70CE9DD84EDA27C4DA482D2E6FDELLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D3D60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D3DBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1D3E18(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
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

uint64_t sub_1D3E88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D3ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t _s7CatalogV16ResultEntityKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7CatalogV16ResultEntityKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication18PropertiesProvider_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D40A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D40EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D4148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D4190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D423C()
{
  result = qword_DF5038;
  if (!qword_DF5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF5038);
  }

  return result;
}

unint64_t sub_1D4294()
{
  result = qword_DF5040;
  if (!qword_DF5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF5040);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImpressionsElement.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImpressionsElement.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D445C()
{
  result = qword_DF5048;
  if (!qword_DF5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF5048);
  }

  return result;
}

char *sub_1D455C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v16.receiver = v4;
  v16.super_class = swift_getObjectType();
  v8 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", a1, a2, a3);
  if (v8)
  {
    v9 = *&v4[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_containerView];
    sub_13C80(0, &qword_DF12A0);
    v10 = v9;
    v11 = v8;
    v12 = sub_ABA790();

    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    [v4 frame];
    v17.x = a2;
    v17.y = a3;
    if (!CGRectContainsPoint(v18, v17))
    {
      return 0;
    }
  }

  v13 = [v4 isEnabled];

  if (!v13)
  {
    return 0;
  }

  v14 = v4;
  return v4;
}

double sub_1D4684(double a1)
{
  v2 = v1;
  v4 = v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_layoutStyle];
  v5 = v1[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo];
  sub_1D6848(v2, v2[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_adjustsInsetsForStatusBar], v4);
  v8 = a1 - v6 - v7;
  if (v4)
  {
    [v1 music_inheritedLayoutInsets];
    v10 = v9;
    v12 = v11;
    v13 = [v1 traitCollection];
    v14 = [v13 horizontalSizeClass];

    if (v14 == &dword_0 + 2)
    {
      v15 = v12 + 72.0;
    }

    else
    {
      v15 = v12;
    }

    if (v14 == &dword_0 + 2)
    {
      v16 = v10 + 72.0;
    }

    else
    {
      v16 = v10;
    }
  }

  else
  {
    v16 = 16.0;
    v15 = 16.0;
  }

  v17 = v8 - v16 - v15;
  if (v5)
  {
    v18 = [*&v2[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_logoImageView] image];
    if (v18)
    {
      v19 = v18;
      [v18 size];
      v21 = v20;

      v22 = v21 + 16.0;
    }

    else
    {
      v22 = 16.0;
    }

    v23 = v17 - v22;
    if (v4)
    {
      v17 = v23;
    }
  }

  v24 = *&v2[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textComponent];
  v25 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText;
  v26 = &v2[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
  v27 = *&v2[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText];
  v28 = *&v2[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_regularText + 8];

  LOBYTE(v27) = sub_1D6958(v27, v28, v17);

  v29 = OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText;
  v30 = &v2[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_compactText];
  if (v27)
  {
    v30 = v26;
    v29 = v25;
  }

  v31 = *&v2[v29];
  v32 = *(v30 + 1);

  swift_beginAccess();
  *(v24 + 112) = v31;
  *(v24 + 120) = v32;

  sub_2EB704();

  v33 = [*&v2[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_stackView] traitCollection];
  [v33 displayScale];
  v35 = v34;

  sub_2E94A4(v37, 0.0, 0.0, v17, 5.99231045e307, v35);
  sub_3F250(v37);
  return a1;
}

char *sub_1D4A3C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView;
  type metadata accessor for UpsellBannerView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v2[v6] = TextDrawing.Cache.init()();
  swift_unknownObjectWeakInit();
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v46, "initWithNibName:bundle:", 0, 0);
  result = [v7 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  [result frame];
  v11 = v10;
  v13 = v12;

  v14 = a1;
  v15 = sub_1D4E04(a1, 0.0, 0.0, v11, v13);
  v16 = OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView;
  v17 = *&v7[OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView];
  *&v7[OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView] = v15;
  v18 = v15;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  v21 = &v18[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_onSelection];
  v22 = *&v18[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_onSelection];
  *v21 = sub_1D8684;
  v21[1] = v20;
  v23 = v14;

  sub_17654(v22);

  v24 = *&v7[v16];
  result = [v7 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = result;
  [result bounds];
  v27 = v26;

  v28 = sub_1D4684(v27);
  v30 = v29;

  [v7 setPreferredContentSize:{v28, v30}];
  result = [v7 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v31 = result;
  [result addSubview:*&v7[v16]];

  v32 = sub_4D3C64();
  v33 = &v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v34 = *&v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v35 = *&v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
  v36 = v32[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
  *v33 = 0;
  *(v33 + 4) = 256;
  v33[10] = 0;
  sub_4DBD3C(v34, v35 | (v36 << 16));

  v37 = *&v7[v16];
  v38 = v37[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_adjustsInsetsForStatusBar];
  v37[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_adjustsInsetsForStatusBar] = 0;
  if (v38 == 1)
  {
    [v37 setNeedsLayout];
  }

  v39 = *&v7[v16];
  v40 = OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_textDrawingCache;
  *&v39[OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_textDrawingCache] = *&v7[OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_textDrawingCache];
  swift_retain_n();
  v41 = v39;

  sub_1D74A4();

  v42 = *&v7[v40];

  v43 = [v7 traitCollection];

  [v43 displayScale];
  v45 = v44;

  swift_beginAccess();
  *(v42 + 16) = v45;
  sub_106F0C();

  swift_unknownObjectWeakAssign();

  return v7;
}