void *sub_1000F0CF4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v51 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = v40 - v10;
  v11 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    v40[1] = v3;
    v60 = _swiftEmptyArrayStorage;
    sub_1004A1AC0(0, v11, 0);
    v55 = a1 + 64;
    v56 = v60;
    result = _HashTable.startBucket.getter();
    v13 = result;
    v14 = 0;
    v45 = (v5 + 8);
    v46 = (v5 + 16);
    v44 = (v7 + 16);
    v43 = (v7 + 8);
    v41 = a1 + 72;
    v42 = v11;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v55 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v54 = *(a1 + 36);
      v18 = *(*(a1 + 48) + 8 * v13);
      v19 = *(*v18 + 144);
      swift_beginAccess();
      v20 = v18 + v19;
      v21 = v50;
      v22 = v51;
      (*v46)(v50, v20, v51);

      v23 = a1;
      v24 = v47;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v45)(v21, v22);
      v25 = v49;
      (*v44)(v48, v24, v49);
      sub_1001013F4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      AnyHashable.init<A>(_:)();
      (*v43)(v24, v25);
      v26 = v52(v18);

      *(&v59 + 1) = v26;
      v27 = v56;
      v60 = v56;
      v29 = v56[2];
      v28 = v56[3];
      if (v29 >= v28 >> 1)
      {
        result = sub_1004A1AC0((v28 > 1), v29 + 1, 1);
        v27 = v60;
      }

      v27[2] = v29 + 1;
      v30 = &v27[6 * v29];
      v31 = v57;
      v32 = v59;
      v30[3] = v58;
      v30[4] = v32;
      v30[2] = v31;
      v15 = 1 << *(v23 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v33 = *(v55 + 8 * v17);
      if ((v33 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v23;
      v56 = v27;
      if (v54 != *(v23 + 36))
      {
        goto LABEL_25;
      }

      v34 = v33 & (-2 << (v13 & 0x3F));
      if (v34)
      {
        v15 = __clz(__rbit64(v34)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v42;
      }

      else
      {
        v35 = v17 << 6;
        v36 = v17 + 1;
        v37 = (v41 + 8 * v17);
        v16 = v42;
        while (v36 < (v15 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_10000FBA0(v13, v54, 0);
            v15 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_10000FBA0(v13, v54, 0);
      }

LABEL_4:
      ++v14;
      v13 = v15;
      if (v14 == v16)
      {
        return v56;
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

void *sub_1000F11C0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v51 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v49 - 8);
  v8 = __chkstk_darwin(v49);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = v40 - v10;
  v11 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v40[1] = v3;
    v60 = &_swiftEmptyArrayStorage;
    sub_1004A1AC0(0, v11, 0);
    v55 = a1 + 64;
    v56 = v60;
    result = _HashTable.startBucket.getter();
    v13 = result;
    v14 = 0;
    v45 = (v5 + 8);
    v46 = (v5 + 16);
    v44 = (v7 + 16);
    v43 = (v7 + 8);
    v41 = a1 + 72;
    v42 = v11;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v55 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v54 = *(a1 + 36);
      v18 = *(*(a1 + 48) + 8 * v13);
      v19 = *(*v18 + 144);
      swift_beginAccess();
      v20 = v18 + v19;
      v21 = v50;
      v22 = v51;
      (*v46)(v50, v20, v51);

      v23 = a1;
      v24 = v47;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      (*v45)(v21, v22);
      v25 = v49;
      (*v44)(v48, v24, v49);
      sub_1001013F4(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      AnyHashable.init<A>(_:)();
      (*v43)(v24, v25);
      v26 = v52(v18);

      *(&v59 + 1) = v26;
      v27 = v56;
      v60 = v56;
      v29 = v56[2];
      v28 = v56[3];
      if (v29 >= v28 >> 1)
      {
        result = sub_1004A1AC0((v28 > 1), v29 + 1, 1);
        v27 = v60;
      }

      v27[2] = v29 + 1;
      v30 = &v27[6 * v29];
      v31 = v57;
      v32 = v59;
      v30[3] = v58;
      v30[4] = v32;
      v30[2] = v31;
      v15 = 1 << *(v23 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v33 = *(v55 + 8 * v17);
      if ((v33 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v23;
      v56 = v27;
      if (v54 != *(v23 + 36))
      {
        goto LABEL_25;
      }

      v34 = v33 & (-2 << (v13 & 0x3F));
      if (v34)
      {
        v15 = __clz(__rbit64(v34)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v42;
      }

      else
      {
        v35 = v17 << 6;
        v36 = v17 + 1;
        v37 = (v41 + 8 * v17);
        v16 = v42;
        while (v36 < (v15 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_10000FBA0(v13, v54, 0);
            v15 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_10000FBA0(v13, v54, 0);
      }

LABEL_4:
      ++v14;
      v13 = v15;
      if (v14 == v16)
      {
        return v56;
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

char *sub_1000F16A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100003540(0, &qword_10076B800);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1000F17D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_100018654(result);

  return sub_1000F16A4(v6, v5, 1, v3);
}

uint64_t sub_1000F18BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v60 = &_swiftEmptySetSingleton;
  v61 = &_swiftEmptySetSingleton;
  v58 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v57 = &_swiftEmptySetSingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 64;
  v10 = a3 + 64;

  v12 = 0;
  v49 = v8;
  v50 = v4;
LABEL_6:
  if (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v12 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    v7 &= v7 - 1;
    v48 = *(*(a1 + 56) + 16 * v14 + 8);
    v16 = 1 << *(a2 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(a2 + 64);
    v19 = (v16 + 63) >> 6;
    v55 = v15;

    v20 = 0;
LABEL_16:
    while (v18)
    {
LABEL_21:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = *(*(a2 + 56) + ((v20 << 9) | (8 * v23)));
      if ((v24 & 0xC000000000000001) != 0)
      {

        v21 = __CocoaSet.contains(_:)();

        if (v21)
        {
          goto LABEL_29;
        }
      }

      else if (*(v24 + 16))
      {
        Hasher.init(_seed:)();
        v25 = *(v55 + 16);
        Hasher._combine(_:)(v25);
        result = Hasher._finalize()();
        v26 = -1 << *(v24 + 32);
        v27 = result & ~v26;
        if ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (*(*(*(v24 + 48) + 8 * v27) + 16) != v25)
          {
            v27 = (v27 + 1) & v28;
            if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

LABEL_29:

          v52 = 1;
LABEL_30:
          v29 = 1 << *(a3 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & *(a3 + 64);
          v32 = (v29 + 63) >> 6;

          v33 = 0;
          while (1)
          {
            while (1)
            {
LABEL_35:
              if (!v31)
              {
                while (1)
                {
                  v35 = v33 + 1;
                  if (__OFADD__(v33, 1))
                  {
                    goto LABEL_57;
                  }

                  if (v35 >= v32)
                  {

                    if ((v52 & 1) == 0)
                    {
                      goto LABEL_5;
                    }

                    goto LABEL_52;
                  }

                  v31 = *(v10 + 8 * v35);
                  ++v33;
                  if (v31)
                  {
                    v33 = v35;
                    break;
                  }
                }
              }

              v36 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
              v37 = *(*(a3 + 56) + ((v33 << 9) | (8 * v36)));
              if ((v37 & 0xC000000000000001) == 0)
              {
                break;
              }

              v34 = __CocoaSet.contains(_:)();

              if (v34)
              {
                goto LABEL_49;
              }
            }

            if (*(v37 + 16))
            {
              Hasher.init(_seed:)();
              v38 = *(v55 + 16);
              Hasher._combine(_:)(v38);
              result = Hasher._finalize()();
              v39 = -1 << *(v37 + 32);
              v40 = result & ~v39;
              if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
              {
                break;
              }
            }
          }

          v41 = ~v39;
          while (*(*(*(v37 + 48) + 8 * v40) + 16) != v38)
          {
            v40 = (v40 + 1) & v41;
            if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

LABEL_49:

          if ((v52 & 1) == 0 || (~v48 & 3) != 0)
          {
LABEL_52:
            v42 = v55;
          }

          else
          {

            sub_10058B998(v56, v55);

            v42 = v55;
          }

          sub_10058B998(v56, v42);
LABEL_5:

          v8 = v49;
          v4 = v50;
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v52 = 0;
        goto LABEL_30;
      }

      v18 = *(v9 + 8 * v22);
      ++v20;
      if (v18)
      {
        v20 = v22;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v8)
      {

        v43 = v60;
        v45 = v58;
        v44 = v59;
        v46 = v57;
        *a4 = v61;
        a4[1] = v43;
        a4[2] = v44;
        a4[3] = v45;
        a4[4] = v46;
        return result;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F1D8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v148 = a5;
  v149 = a7;
  v151 = a6;
  v197 = a8;
  v196 = a13;
  v167 = &_swiftEmptySetSingleton;
  v168 = &_swiftEmptySetSingleton;
  v165 = &_swiftEmptySetSingleton;
  v166 = &_swiftEmptySetSingleton;
  v164 = &_swiftEmptySetSingleton;
  v17 = *a1;
  v187 = a1[1];
  v188 = v17;
  v18 = a1[2];
  v185 = a1[3];
  v186 = v18;
  v184 = a1[4];
  v162 = v187;
  v163 = v17;
  v160 = v185;
  v161 = v18;
  v159 = v184;
  sub_10000794C(&v188, v189, &qword_10076BB90);
  sub_10000794C(&v187, v189, &qword_10076BB90);
  sub_10000794C(&v186, v189, &qword_10076BB90);
  sub_10000794C(&v185, v189, &qword_10076BB90);
  sub_10000794C(&v184, v189, &qword_10076BB90);
  if (sub_1000ADD14())
  {
    sub_1000079B4(&v184, &qword_10076BB90);
    sub_1000079B4(&v185, &qword_10076BB90);
    sub_1000079B4(&v186, &qword_10076BB90);
    sub_1000079B4(&v187, &qword_10076BB90);
    result = sub_1000079B4(&v188, &qword_10076BB90);
    v20 = &_swiftEmptySetSingleton;
    v21 = &_swiftEmptySetSingleton;
    v22 = &_swiftEmptySetSingleton;
    v23 = &_swiftEmptySetSingleton;
    v24 = &_swiftEmptySetSingleton;
LABEL_68:
    *a9 = v24;
    a9[1] = v23;
    a9[2] = v22;
    a9[3] = v21;
    a9[4] = v20;
    return result;
  }

  v124 = a9;
  v25 = 0;
  v134 = a2 & 0xC000000000000001;
  v145 = a12;
  v132 = a4 & 0xC000000000000001;
  v133 = a3 & 0xC000000000000001;
  v147 = a11;
  v150 = a10;
  if (a2 < 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v27 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 < 0)
  {
    v27 = a3;
  }

  v129 = v27;
  v130 = v26;
  v137 = a4;
  v138 = a3;
  v126 = a3 + 56;
  v127 = a2 + 56;
  v28 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 < 0)
  {
    v28 = a4;
  }

  v128 = v28;
  v125 = a4 + 56;
  v131 = a2;
  while (1)
  {
    *&v156 = &_swiftEmptySetSingleton;
    *(&v156 + 1) = &_swiftEmptySetSingleton;
    *&v157 = &_swiftEmptySetSingleton;
    *(&v157 + 1) = &_swiftEmptySetSingleton;
    v158 = &_swiftEmptySetSingleton;
    if (v134)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076BB78);
      sub_10000E188(&qword_10076BB80, &qword_10076BB78);
      result = Set.Iterator.init(_cocoa:)();
      v40 = v169;
      v41 = v170;
      v42 = v171;
      v43 = v172;
      v44 = v173;
    }

    else
    {
      v45 = -1 << *(a2 + 32);
      v42 = ~v45;
      v46 = -v45;
      v47 = v46 < 64 ? ~(-1 << v46) : -1;
      v44 = v47 & *(a2 + 56);

      v43 = 0;
      v40 = a2;
      v41 = v127;
    }

    v144 = v42;
    v48 = (v42 + 64) >> 6;
    v152 = v197;
    v153 = v196;
    v146 = v40;
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v56 = __CocoaSet.Iterator.next()();
      if (!v56)
      {
        v52 = v138;
        break;
      }

      v154 = v56;
      sub_100058000(&qword_10076BB78);
      v55 = swift_dynamicCast();
      v54 = v155;
      v51 = v43;
      v53 = v44;
      v52 = v138;
      if (!v155)
      {
        break;
      }

LABEL_27:
      __chkstk_darwin(v55);
      v57 = v151;
      *(&v123 - 10) = v148;
      *(&v123 - 9) = v57;
      *(&v123 - 8) = v149;
      *(&v123 - 56) = v152;
      v58 = v147;
      *(&v123 - 6) = v150;
      *(&v123 - 5) = v58;
      *(&v123 - 4) = v145;
      *(&v123 - 24) = v153;
      *(&v123 - 2) = v54;
      sub_100058000(&qword_10076BB90);
      Set.removeAll(where:)();

      v43 = v51;
      v44 = v53;
      v40 = v146;
      if ((v146 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_29:
    sub_10008BA48();
    if (v133)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076BB78);
      sub_10000E188(&qword_10076BB80, &qword_10076BB78);
      result = Set.Iterator.init(_cocoa:)();
      v59 = v174;
      v60 = v175;
      v61 = v176;
      v62 = v177;
      v63 = v178;
    }

    else
    {
      v64 = -1 << *(v52 + 32);
      v65 = ~v64;
      v66 = -v64;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      else
      {
        v67 = -1;
      }

      v63 = v67 & *(v52 + 56);

      v61 = v65;
      v62 = 0;
      v59 = v52;
      v60 = v126;
    }

    v139 = v61;
    v68 = (v61 + 8) >> 6;
    v141 = v60;
    v142 = v59;
    v140 = v68;
    if (v59 < 0)
    {
      do
      {
        v75 = __CocoaSet.Iterator.next()();
        if (!v75)
        {
          v72 = v137;
          goto LABEL_46;
        }

        v154 = v75;
        sub_100058000(&qword_10076BB78);
        swift_dynamicCast();
        v74 = v155;
        v71 = v62;
        v73 = v63;
        v72 = v137;
        if (!v155)
        {
          goto LABEL_46;
        }

LABEL_44:
        v144 = &v123;
        __chkstk_darwin(v74);
        v146 = v73;
        v77 = v148;
        v76 = v149;
        v78 = v151;
        *(&v123 - 10) = v148;
        *(&v123 - 9) = v78;
        *(&v123 - 8) = v76;
        *(&v123 - 56) = v152;
        v79 = v147;
        *(&v123 - 6) = v150;
        *(&v123 - 5) = v79;
        v80 = v145;
        *(&v123 - 4) = v145;
        *(&v123 - 24) = v153;
        *(&v123 - 2) = v81;
        v143 = v81;
        sub_100058000(&qword_10076BB90);
        v82 = Set.removeAll(where:)();
        v144 = &v123;
        __chkstk_darwin(v82);
        *(&v123 - 10) = v77;
        *(&v123 - 9) = v78;
        *(&v123 - 8) = v76;
        *(&v123 - 56) = v152;
        *(&v123 - 6) = v150;
        *(&v123 - 5) = v79;
        v68 = v140;
        v60 = v141;
        *(&v123 - 4) = v80;
        *(&v123 - 24) = v153;
        v83 = v142;
        *(&v123 - 2) = v143;
        *(&v123 - 1) = &v156;
        Set.removeAll(where:)();

        v62 = v71;
        v63 = v146;
      }

      while (v83 < 0);
    }

    v69 = v62;
    v70 = v63;
    v71 = v62;
    v72 = v137;
    if (v63)
    {
LABEL_40:
      v73 = (v70 - 1) & v70;

      if (!v74)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_70;
      }

      if (v71 >= v68)
      {
        break;
      }

      v70 = v60[v71];
      ++v69;
      if (v70)
      {
        goto LABEL_40;
      }
    }

LABEL_46:
    sub_10008BA48();
    if (v132)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076BB78);
      sub_10000E188(&qword_10076BB80, &qword_10076BB78);
      result = Set.Iterator.init(_cocoa:)();
      v84 = v180;
      v142 = v179;
      v85 = v181;
      v86 = v182;
      v87 = v183;
    }

    else
    {
      v88 = -1 << *(v72 + 32);
      v89 = ~v88;
      v90 = -v88;
      if (v90 < 64)
      {
        v91 = ~(-1 << v90);
      }

      else
      {
        v91 = -1;
      }

      v87 = v91 & *(v72 + 56);

      v85 = v89;
      v86 = 0;
      v142 = v72;
      v84 = v125;
    }

    v135 = v85;
    v136 = v84;
    v146 = (v85 + 64) >> 6;
    if ((v142 & 0x8000000000000000) == 0)
    {
LABEL_53:
      v92 = v86;
      v93 = v87;
      for (i = v86; !v93; ++v92)
      {
        i = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          goto LABEL_71;
        }

        if (i >= v146)
        {
          goto LABEL_11;
        }

        v93 = *(v84 + 8 * i);
      }

      v141 = v25;
      v95 = (v93 - 1) & v93;
      v96 = *(*(v142 + 48) + ((i << 9) | (8 * __clz(__rbit64(v93)))));

      if (v96)
      {
        goto LABEL_61;
      }

LABEL_64:
      v25 = v141;
      goto LABEL_11;
    }

    while (1)
    {
      v98 = __CocoaSet.Iterator.next()();
      if (!v98)
      {
        break;
      }

      v141 = v25;
      v154 = v98;
      sub_100058000(&qword_10076BB78);
      v97 = swift_dynamicCast();
      v96 = v155;
      i = v86;
      v95 = v87;
      if (!v155)
      {
        goto LABEL_64;
      }

LABEL_61:
      v139 = &v123;
      __chkstk_darwin(v97);
      v99 = v147;
      v100 = v148;
      v101 = v151;
      *(&v123 - 10) = v148;
      *(&v123 - 9) = v101;
      v102 = v149;
      *(&v123 - 8) = v149;
      v103 = v102;
      *(&v123 - 56) = v152;
      *(&v123 - 6) = v150;
      *(&v123 - 5) = v99;
      v104 = v145;
      *(&v123 - 4) = v145;
      *(&v123 - 24) = v153;
      *(&v123 - 2) = v96;
      v143 = v96;
      v144 = sub_100058000(&qword_10076BB90);
      v140 = v95;
      v25 = v141;
      v105 = Set.removeAll(where:)();
      v141 = &v123;
      __chkstk_darwin(v105);
      *(&v123 - 10) = v100;
      v107 = v150;
      v106 = v151;
      *(&v123 - 9) = v151;
      *(&v123 - 8) = v103;
      LOBYTE(v103) = v152;
      v108 = v153;
      *(&v123 - 56) = v152;
      *(&v123 - 6) = v107;
      *(&v123 - 5) = v99;
      *(&v123 - 4) = v104;
      v109 = v104;
      *(&v123 - 24) = v108;
      *(&v123 - 2) = v96;
      v110 = Set.removeAll(where:)();
      v141 = &v123;
      __chkstk_darwin(v110);
      v112 = v148;
      v111 = v149;
      *(&v123 - 10) = v148;
      *(&v123 - 9) = v106;
      *(&v123 - 8) = v111;
      *(&v123 - 56) = v103;
      v113 = v147;
      *(&v123 - 6) = v107;
      *(&v123 - 5) = v113;
      *(&v123 - 4) = v109;
      LOBYTE(v109) = v153;
      *(&v123 - 24) = v153;
      *(&v123 - 2) = v143;
      v114 = Set.removeAll(where:)();
      v141 = &v123;
      __chkstk_darwin(v114);
      v115 = v151;
      *(&v123 - 10) = v112;
      *(&v123 - 9) = v115;
      v116 = v149;
      v117 = v150;
      *(&v123 - 8) = v149;
      LOBYTE(v107) = v152;
      *(&v123 - 56) = v152;
      *(&v123 - 6) = v117;
      *(&v123 - 5) = v113;
      v118 = v145;
      *(&v123 - 4) = v145;
      *(&v123 - 24) = v109;
      v119 = v143;
      *(&v123 - 2) = v143;
      *(&v123 - 1) = &v156;
      v120 = Set.removeAll(where:)();
      v141 = &v123;
      __chkstk_darwin(v120);
      v121 = v151;
      *(&v123 - 10) = v148;
      *(&v123 - 9) = v121;
      *(&v123 - 8) = v116;
      v84 = v136;
      *(&v123 - 56) = v107;
      v122 = v147;
      *(&v123 - 6) = v117;
      *(&v123 - 5) = v122;
      *(&v123 - 4) = v118;
      *(&v123 - 24) = v153;
      *(&v123 - 2) = v119;
      Set.removeAll(where:)();

      v87 = v140;
      v86 = i;
      if ((v142 & 0x8000000000000000) == 0)
      {
        goto LABEL_53;
      }
    }

LABEL_11:
    sub_10008BA48();
    v29 = v162;
    v30 = v163;
    v31 = v160;
    v32 = v161;
    v33 = v159;

    sub_10057D4E4(v34);

    sub_10057D4E4(v35);

    sub_10057D4E4(v36);

    sub_10057D4E4(v37);

    sub_10057D4E4(v38);
    sub_1000EBA3C(v30);

    sub_1000EBA3C(v29);

    sub_1000EBA3C(v32);

    sub_1000EBA3C(v31);

    sub_1000EBA3C(v33);

    v189[0] = v156;
    v189[1] = v157;
    v190 = v158;
    v194 = *(&v156 + 1);
    v195 = v156;
    v192 = *(&v157 + 1);
    v193 = v157;
    v191 = v158;
    v162 = *(&v156 + 1);
    v163 = v156;
    v160 = *(&v157 + 1);
    v161 = v157;
    v159 = v158;
    sub_10000794C(&v195, &v156, &qword_10076BB90);
    sub_10000794C(&v194, &v156, &qword_10076BB90);
    sub_10000794C(&v193, &v156, &qword_10076BB90);
    sub_10000794C(&v192, &v156, &qword_10076BB90);
    sub_10000794C(&v191, &v156, &qword_10076BB90);
    v39 = sub_1000ADD14();
    sub_1000079B4(&v195, &qword_10076BB90);
    sub_1000079B4(&v194, &qword_10076BB90);
    sub_1000079B4(&v193, &qword_10076BB90);
    sub_1000079B4(&v192, &qword_10076BB90);
    sub_1000079B4(&v191, &qword_10076BB90);
    a2 = v131;
    if (v39)
    {
      sub_1000079B4(&v191, &qword_10076BB90);
      sub_1000079B4(&v192, &qword_10076BB90);
      sub_1000079B4(&v193, &qword_10076BB90);
      sub_1000079B4(&v194, &qword_10076BB90);
      result = sub_1000079B4(&v195, &qword_10076BB90);
      v23 = v167;
      v24 = v168;
      v21 = v165;
      v22 = v166;
      v20 = v164;
      a9 = v124;
      goto LABEL_68;
    }
  }

LABEL_19:
  v49 = v43;
  v50 = v44;
  v51 = v43;
  v52 = v138;
  if (v44)
  {
LABEL_23:
    v53 = (v50 - 1) & v50;
    v54 = *(*(v40 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));

    if (!v54)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  while (1)
  {
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v51 >= v48)
    {
      goto LABEL_29;
    }

    v50 = *(v41 + 8 * v51);
    ++v49;
    if (v50)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1000F2CA4(uint64_t result, uint64_t a2, unint64_t a3, signed __int8 a4, uint64_t a5, char a6)
{
  v53 = result;
  v7 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v8 = v6;
  v9 = a4;
  v10 = a2;
  v52 = a4;
  while (v10 < v7)
  {
    v12 = *(v53 + 8 * v10);
    swift_beginAccess();
    v13 = *(v8 + 88);
    if (*(v13 + 16))
    {
      v14 = sub_1003B3EDC(v12);
      if (v15)
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        swift_endAccess();

        if ((a6 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = sub_1003AB368(v9);
          v22 = v18[2];
          v23 = (v21 & 1) == 0;
          v24 = __OFADD__(v22, v23);
          v25 = v22 + v23;
          if (v24)
          {
            goto LABEL_42;
          }

          v26 = v21;
          if (v18[3] >= v25)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_20;
            }

            v33 = v20;
            sub_1003AE128();
            v20 = v33;
            if ((v26 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_21:
            *(v18[7] + 8 * v20) = a5;
          }

          else
          {
            sub_1005491B4(v25, isUniquelyReferenced_nonNull_native);
            v20 = sub_1003AB368(v9);
            if ((v26 & 1) != (v27 & 1))
            {
              goto LABEL_45;
            }

LABEL_20:
            if (v26)
            {
              goto LABEL_21;
            }

LABEL_23:
            v18[(v20 >> 6) + 8] |= 1 << v20;
            *(v18[6] + v20) = v9;
            *(v18[7] + 8 * v20) = a5;
            v34 = v18[2];
            v24 = __OFADD__(v34, 1);
            v35 = v34 + 1;
            if (v24)
            {
              goto LABEL_43;
            }

            v18[2] = v35;
          }
        }

        v32 = qword_10062FFD0[v52] | v17;
        goto LABEL_26;
      }
    }

    swift_endAccess();
    v18 = &_swiftEmptyDictionarySingleton;
    if ((a6 & 1) == 0)
    {
      sub_100058000(&unk_10076B980);
      v18 = static _DictionaryStorage.allocate(capacity:)();
      v28 = sub_1003AB368(v9);
      if (v29)
      {
        goto LABEL_40;
      }

      v18[(v28 >> 6) + 8] |= 1 << v28;
      *(v18[6] + v28) = v9;
      *(v18[7] + 8 * v28) = a5;
      v30 = v18[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_41;
      }

      v18[2] = v31;
    }

    v32 = qword_10062FFD0[v52];

LABEL_26:
    swift_beginAccess();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v8 + 88);
    *(v8 + 88) = 0x8000000000000000;
    v39 = sub_1003B3EDC(v12);
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_38;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if (v36)
      {
        v46 = v37;
        if (v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1003AE114();
        v46 = v37;
        if (v43)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1005491A0(v42, v36);
      v44 = sub_1003B3EDC(v12);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_44;
      }

      v39 = v44;
      v46 = v37;
      if (v43)
      {
LABEL_4:
        v11 = (v46[7] + 16 * v39);
        *v11 = v18;
        v11[1] = v32;

        goto LABEL_5;
      }
    }

    v46[(v39 >> 6) + 8] |= 1 << v39;
    *(v46[6] + 8 * v39) = v12;
    v47 = (v46[7] + 16 * v39);
    *v47 = v18;
    v47[1] = v32;
    v48 = v46[2];
    v24 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v24)
    {
      goto LABEL_39;
    }

    v46[2] = v49;
LABEL_5:
    ++v10;
    *(v8 + 88) = v46;
    result = swift_endAccess();
    v9 = a4;
    if (v7 == v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_100058000(&qword_10076BB78);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000F30A0(uint64_t result, uint64_t a2, unint64_t a3, signed __int8 a4, uint64_t a5, char a6)
{
  v53 = result;
  v7 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v8 = v6;
  v9 = a4;
  v10 = a2;
  v52 = a4;
  while (v10 < v7)
  {
    v12 = *(v53 + 8 * v10);
    swift_beginAccess();
    v13 = *(v8 + 88);
    if (*(v13 + 16))
    {
      v14 = sub_1003B3EDC(v12);
      if (v15)
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        swift_endAccess();

        if ((a6 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = sub_1003AB368(v9);
          v22 = v18[2];
          v23 = (v21 & 1) == 0;
          v24 = __OFADD__(v22, v23);
          v25 = v22 + v23;
          if (v24)
          {
            goto LABEL_42;
          }

          v26 = v21;
          if (v18[3] >= v25)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_20;
            }

            v33 = v20;
            sub_1003AE128();
            v20 = v33;
            if ((v26 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_21:
            *(v18[7] + 8 * v20) = a5;
          }

          else
          {
            sub_1005491B4(v25, isUniquelyReferenced_nonNull_native);
            v20 = sub_1003AB368(v9);
            if ((v26 & 1) != (v27 & 1))
            {
              goto LABEL_45;
            }

LABEL_20:
            if (v26)
            {
              goto LABEL_21;
            }

LABEL_23:
            v18[(v20 >> 6) + 8] |= 1 << v20;
            *(v18[6] + v20) = v9;
            *(v18[7] + 8 * v20) = a5;
            v34 = v18[2];
            v24 = __OFADD__(v34, 1);
            v35 = v34 + 1;
            if (v24)
            {
              goto LABEL_43;
            }

            v18[2] = v35;
          }
        }

        v32 = qword_10062FFD0[v52] | v17;
        goto LABEL_26;
      }
    }

    swift_endAccess();
    v18 = &_swiftEmptyDictionarySingleton;
    if ((a6 & 1) == 0)
    {
      sub_100058000(&unk_10076B980);
      v18 = static _DictionaryStorage.allocate(capacity:)();
      v28 = sub_1003AB368(v9);
      if (v29)
      {
        goto LABEL_40;
      }

      v18[(v28 >> 6) + 8] |= 1 << v28;
      *(v18[6] + v28) = v9;
      *(v18[7] + 8 * v28) = a5;
      v30 = v18[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_41;
      }

      v18[2] = v31;
    }

    v32 = qword_10062FFD0[v52];

LABEL_26:
    swift_beginAccess();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v8 + 88);
    *(v8 + 88) = 0x8000000000000000;
    v39 = sub_1003B3EDC(v12);
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_38;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if (v36)
      {
        v46 = v37;
        if (v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1003AF6F4();
        v46 = v37;
        if (v43)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10054B93C(v42, v36);
      v44 = sub_1003B3EDC(v12);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_44;
      }

      v39 = v44;
      v46 = v37;
      if (v43)
      {
LABEL_4:
        v11 = (v46[7] + 16 * v39);
        *v11 = v18;
        v11[1] = v32;

        goto LABEL_5;
      }
    }

    v46[(v39 >> 6) + 8] |= 1 << v39;
    *(v46[6] + 8 * v39) = v12;
    v47 = (v46[7] + 16 * v39);
    *v47 = v18;
    v47[1] = v32;
    v48 = v46[2];
    v24 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v24)
    {
      goto LABEL_39;
    }

    v46[2] = v49;
LABEL_5:
    ++v10;
    *(v8 + 88) = v46;
    result = swift_endAccess();
    v9 = a4;
    if (v7 == v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_100058000(&qword_10076B788);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000F349C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v60 = &_swiftEmptySetSingleton;
  v61 = &_swiftEmptySetSingleton;
  v58 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v57 = &_swiftEmptySetSingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 64;
  v10 = a3 + 64;

  v12 = 0;
  v49 = v8;
  v50 = v4;
LABEL_6:
  if (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v12 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    v7 &= v7 - 1;
    v48 = *(*(a1 + 56) + 16 * v14 + 8);
    v16 = 1 << *(a2 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(a2 + 64);
    v19 = (v16 + 63) >> 6;
    v55 = v15;

    v20 = 0;
LABEL_16:
    while (v18)
    {
LABEL_21:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = *(*(a2 + 56) + ((v20 << 9) | (8 * v23)));
      if ((v24 & 0xC000000000000001) != 0)
      {

        v21 = __CocoaSet.contains(_:)();

        if (v21)
        {
          goto LABEL_29;
        }
      }

      else if (*(v24 + 16))
      {
        Hasher.init(_seed:)();
        v25 = *(v55 + 16);
        Hasher._combine(_:)(v25);
        result = Hasher._finalize()();
        v26 = -1 << *(v24 + 32);
        v27 = result & ~v26;
        if ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (*(*(*(v24 + 48) + 8 * v27) + 16) != v25)
          {
            v27 = (v27 + 1) & v28;
            if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

LABEL_29:

          v52 = 1;
LABEL_30:
          v29 = 1 << *(a3 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & *(a3 + 64);
          v32 = (v29 + 63) >> 6;

          v33 = 0;
          while (1)
          {
            while (1)
            {
LABEL_35:
              if (!v31)
              {
                while (1)
                {
                  v35 = v33 + 1;
                  if (__OFADD__(v33, 1))
                  {
                    goto LABEL_57;
                  }

                  if (v35 >= v32)
                  {

                    if ((v52 & 1) == 0)
                    {
                      goto LABEL_5;
                    }

                    goto LABEL_52;
                  }

                  v31 = *(v10 + 8 * v35);
                  ++v33;
                  if (v31)
                  {
                    v33 = v35;
                    break;
                  }
                }
              }

              v36 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
              v37 = *(*(a3 + 56) + ((v33 << 9) | (8 * v36)));
              if ((v37 & 0xC000000000000001) == 0)
              {
                break;
              }

              v34 = __CocoaSet.contains(_:)();

              if (v34)
              {
                goto LABEL_49;
              }
            }

            if (*(v37 + 16))
            {
              Hasher.init(_seed:)();
              v38 = *(v55 + 16);
              Hasher._combine(_:)(v38);
              result = Hasher._finalize()();
              v39 = -1 << *(v37 + 32);
              v40 = result & ~v39;
              if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
              {
                break;
              }
            }
          }

          v41 = ~v39;
          while (*(*(*(v37 + 48) + 8 * v40) + 16) != v38)
          {
            v40 = (v40 + 1) & v41;
            if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

LABEL_49:

          if ((v52 & 1) == 0 || (~v48 & 3) != 0)
          {
LABEL_52:
            v42 = v55;
          }

          else
          {

            sub_10058C928(v56, v55);

            v42 = v55;
          }

          sub_10058C928(v56, v42);
LABEL_5:

          v8 = v49;
          v4 = v50;
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v52 = 0;
        goto LABEL_30;
      }

      v18 = *(v9 + 8 * v22);
      ++v20;
      if (v18)
      {
        v20 = v22;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v8)
      {

        v43 = v60;
        v45 = v58;
        v44 = v59;
        v46 = v57;
        *a4 = v61;
        a4[1] = v43;
        a4[2] = v44;
        a4[3] = v45;
        a4[4] = v46;
        return result;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F396C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v148 = a5;
  v149 = a7;
  v151 = a6;
  v197 = a8;
  v196 = a13;
  v167 = &_swiftEmptySetSingleton;
  v168 = &_swiftEmptySetSingleton;
  v165 = &_swiftEmptySetSingleton;
  v166 = &_swiftEmptySetSingleton;
  v164 = &_swiftEmptySetSingleton;
  v17 = *a1;
  v187 = a1[1];
  v188 = v17;
  v18 = a1[2];
  v185 = a1[3];
  v186 = v18;
  v184 = a1[4];
  v162 = v187;
  v163 = v17;
  v160 = v185;
  v161 = v18;
  v159 = v184;
  sub_10000794C(&v188, v189, &qword_10076B930);
  sub_10000794C(&v187, v189, &qword_10076B930);
  sub_10000794C(&v186, v189, &qword_10076B930);
  sub_10000794C(&v185, v189, &qword_10076B930);
  sub_10000794C(&v184, v189, &qword_10076B930);
  if (sub_1000ADD14())
  {
    sub_1000079B4(&v184, &qword_10076B930);
    sub_1000079B4(&v185, &qword_10076B930);
    sub_1000079B4(&v186, &qword_10076B930);
    sub_1000079B4(&v187, &qword_10076B930);
    result = sub_1000079B4(&v188, &qword_10076B930);
    v20 = &_swiftEmptySetSingleton;
    v21 = &_swiftEmptySetSingleton;
    v22 = &_swiftEmptySetSingleton;
    v23 = &_swiftEmptySetSingleton;
    v24 = &_swiftEmptySetSingleton;
LABEL_68:
    *a9 = v24;
    a9[1] = v23;
    a9[2] = v22;
    a9[3] = v21;
    a9[4] = v20;
    return result;
  }

  v124 = a9;
  v25 = 0;
  v134 = a2 & 0xC000000000000001;
  v145 = a12;
  v132 = a4 & 0xC000000000000001;
  v133 = a3 & 0xC000000000000001;
  v147 = a11;
  v150 = a10;
  if (a2 < 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v27 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 < 0)
  {
    v27 = a3;
  }

  v129 = v27;
  v130 = v26;
  v137 = a4;
  v138 = a3;
  v126 = a3 + 56;
  v127 = a2 + 56;
  v28 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 < 0)
  {
    v28 = a4;
  }

  v128 = v28;
  v125 = a4 + 56;
  v131 = a2;
  while (1)
  {
    *&v156 = &_swiftEmptySetSingleton;
    *(&v156 + 1) = &_swiftEmptySetSingleton;
    *&v157 = &_swiftEmptySetSingleton;
    *(&v157 + 1) = &_swiftEmptySetSingleton;
    v158 = &_swiftEmptySetSingleton;
    if (v134)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076B788);
      sub_10000E188(&unk_10076B910, &qword_10076B788);
      result = Set.Iterator.init(_cocoa:)();
      v40 = v169;
      v41 = v170;
      v42 = v171;
      v43 = v172;
      v44 = v173;
    }

    else
    {
      v45 = -1 << *(a2 + 32);
      v42 = ~v45;
      v46 = -v45;
      v47 = v46 < 64 ? ~(-1 << v46) : -1;
      v44 = v47 & *(a2 + 56);

      v43 = 0;
      v40 = a2;
      v41 = v127;
    }

    v144 = v42;
    v48 = (v42 + 64) >> 6;
    v152 = v197;
    v153 = v196;
    v146 = v40;
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v56 = __CocoaSet.Iterator.next()();
      if (!v56)
      {
        v52 = v138;
        break;
      }

      v154 = v56;
      sub_100058000(&qword_10076B788);
      v55 = swift_dynamicCast();
      v54 = v155;
      v51 = v43;
      v53 = v44;
      v52 = v138;
      if (!v155)
      {
        break;
      }

LABEL_27:
      __chkstk_darwin(v55);
      v57 = v151;
      *(&v123 - 10) = v148;
      *(&v123 - 9) = v57;
      *(&v123 - 8) = v149;
      *(&v123 - 56) = v152;
      v58 = v147;
      *(&v123 - 6) = v150;
      *(&v123 - 5) = v58;
      *(&v123 - 4) = v145;
      *(&v123 - 24) = v153;
      *(&v123 - 2) = v54;
      sub_100058000(&qword_10076B930);
      Set.removeAll(where:)();

      v43 = v51;
      v44 = v53;
      v40 = v146;
      if ((v146 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_29:
    sub_10008BA48();
    if (v133)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076B788);
      sub_10000E188(&unk_10076B910, &qword_10076B788);
      result = Set.Iterator.init(_cocoa:)();
      v59 = v174;
      v60 = v175;
      v61 = v176;
      v62 = v177;
      v63 = v178;
    }

    else
    {
      v64 = -1 << *(v52 + 32);
      v65 = ~v64;
      v66 = -v64;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      else
      {
        v67 = -1;
      }

      v63 = v67 & *(v52 + 56);

      v61 = v65;
      v62 = 0;
      v59 = v52;
      v60 = v126;
    }

    v139 = v61;
    v68 = (v61 + 8) >> 6;
    v141 = v60;
    v142 = v59;
    v140 = v68;
    if (v59 < 0)
    {
      do
      {
        v75 = __CocoaSet.Iterator.next()();
        if (!v75)
        {
          v72 = v137;
          goto LABEL_46;
        }

        v154 = v75;
        sub_100058000(&qword_10076B788);
        swift_dynamicCast();
        v74 = v155;
        v71 = v62;
        v73 = v63;
        v72 = v137;
        if (!v155)
        {
          goto LABEL_46;
        }

LABEL_44:
        v144 = &v123;
        v76 = __chkstk_darwin(v74);
        v146 = v73;
        v78 = v148;
        v77 = v149;
        v79 = v151;
        *(&v123 - 10) = v148;
        *(&v123 - 9) = v79;
        *(&v123 - 8) = v77;
        *(&v123 - 56) = v152;
        v80 = v147;
        *(&v123 - 6) = v150;
        *(&v123 - 5) = v80;
        v81 = v145;
        *(&v123 - 4) = v145;
        *(&v123 - 24) = v153;
        *(&v123 - 2) = v76;
        v143 = v76;
        sub_100058000(&qword_10076B930);
        v82 = Set.removeAll(where:)();
        v144 = &v123;
        __chkstk_darwin(v82);
        *(&v123 - 10) = v78;
        *(&v123 - 9) = v79;
        *(&v123 - 8) = v77;
        *(&v123 - 56) = v152;
        *(&v123 - 6) = v150;
        *(&v123 - 5) = v80;
        v68 = v140;
        v60 = v141;
        *(&v123 - 4) = v81;
        *(&v123 - 24) = v153;
        v83 = v142;
        *(&v123 - 2) = v143;
        *(&v123 - 1) = &v156;
        Set.removeAll(where:)();

        v62 = v71;
        v63 = v146;
      }

      while (v83 < 0);
    }

    v69 = v62;
    v70 = v63;
    v71 = v62;
    v72 = v137;
    if (v63)
    {
LABEL_40:
      v73 = (v70 - 1) & v70;

      if (!v74)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_70;
      }

      if (v71 >= v68)
      {
        break;
      }

      v70 = v60[v71];
      ++v69;
      if (v70)
      {
        goto LABEL_40;
      }
    }

LABEL_46:
    sub_10008BA48();
    if (v132)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076B788);
      sub_10000E188(&unk_10076B910, &qword_10076B788);
      result = Set.Iterator.init(_cocoa:)();
      v84 = v180;
      v142 = v179;
      v85 = v181;
      v86 = v182;
      v87 = v183;
    }

    else
    {
      v88 = -1 << *(v72 + 32);
      v89 = ~v88;
      v90 = -v88;
      if (v90 < 64)
      {
        v91 = ~(-1 << v90);
      }

      else
      {
        v91 = -1;
      }

      v87 = v91 & *(v72 + 56);

      v85 = v89;
      v86 = 0;
      v142 = v72;
      v84 = v125;
    }

    v135 = v85;
    v136 = v84;
    v146 = (v85 + 64) >> 6;
    if ((v142 & 0x8000000000000000) == 0)
    {
LABEL_53:
      v92 = v86;
      v93 = v87;
      for (i = v86; !v93; ++v92)
      {
        i = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          goto LABEL_71;
        }

        if (i >= v146)
        {
          goto LABEL_11;
        }

        v93 = *(v84 + 8 * i);
      }

      v141 = v25;
      v95 = (v93 - 1) & v93;
      v96 = *(*(v142 + 48) + ((i << 9) | (8 * __clz(__rbit64(v93)))));

      if (v96)
      {
        goto LABEL_61;
      }

LABEL_64:
      v25 = v141;
      goto LABEL_11;
    }

    while (1)
    {
      v98 = __CocoaSet.Iterator.next()();
      if (!v98)
      {
        break;
      }

      v141 = v25;
      v154 = v98;
      sub_100058000(&qword_10076B788);
      v97 = swift_dynamicCast();
      v96 = v155;
      i = v86;
      v95 = v87;
      if (!v155)
      {
        goto LABEL_64;
      }

LABEL_61:
      v139 = &v123;
      __chkstk_darwin(v97);
      v99 = v147;
      v100 = v148;
      v101 = v151;
      *(&v123 - 10) = v148;
      *(&v123 - 9) = v101;
      v102 = v149;
      *(&v123 - 8) = v149;
      v103 = v102;
      *(&v123 - 56) = v152;
      *(&v123 - 6) = v150;
      *(&v123 - 5) = v99;
      v104 = v145;
      *(&v123 - 4) = v145;
      *(&v123 - 24) = v153;
      *(&v123 - 2) = v96;
      v143 = v96;
      v144 = sub_100058000(&qword_10076B930);
      v140 = v95;
      v25 = v141;
      v105 = Set.removeAll(where:)();
      v141 = &v123;
      __chkstk_darwin(v105);
      *(&v123 - 10) = v100;
      v107 = v150;
      v106 = v151;
      *(&v123 - 9) = v151;
      *(&v123 - 8) = v103;
      LOBYTE(v103) = v152;
      v108 = v153;
      *(&v123 - 56) = v152;
      *(&v123 - 6) = v107;
      *(&v123 - 5) = v99;
      *(&v123 - 4) = v104;
      v109 = v104;
      *(&v123 - 24) = v108;
      *(&v123 - 2) = v96;
      v110 = Set.removeAll(where:)();
      v141 = &v123;
      __chkstk_darwin(v110);
      v112 = v148;
      v111 = v149;
      *(&v123 - 10) = v148;
      *(&v123 - 9) = v106;
      *(&v123 - 8) = v111;
      *(&v123 - 56) = v103;
      v113 = v147;
      *(&v123 - 6) = v107;
      *(&v123 - 5) = v113;
      *(&v123 - 4) = v109;
      LOBYTE(v109) = v153;
      *(&v123 - 24) = v153;
      *(&v123 - 2) = v143;
      v114 = Set.removeAll(where:)();
      v141 = &v123;
      __chkstk_darwin(v114);
      v115 = v151;
      *(&v123 - 10) = v112;
      *(&v123 - 9) = v115;
      v116 = v149;
      v117 = v150;
      *(&v123 - 8) = v149;
      LOBYTE(v107) = v152;
      *(&v123 - 56) = v152;
      *(&v123 - 6) = v117;
      *(&v123 - 5) = v113;
      v118 = v145;
      *(&v123 - 4) = v145;
      *(&v123 - 24) = v109;
      v119 = v143;
      *(&v123 - 2) = v143;
      *(&v123 - 1) = &v156;
      v120 = Set.removeAll(where:)();
      v141 = &v123;
      __chkstk_darwin(v120);
      v121 = v151;
      *(&v123 - 10) = v148;
      *(&v123 - 9) = v121;
      *(&v123 - 8) = v116;
      v84 = v136;
      *(&v123 - 56) = v107;
      v122 = v147;
      *(&v123 - 6) = v117;
      *(&v123 - 5) = v122;
      *(&v123 - 4) = v118;
      *(&v123 - 24) = v153;
      *(&v123 - 2) = v119;
      Set.removeAll(where:)();

      v87 = v140;
      v86 = i;
      if ((v142 & 0x8000000000000000) == 0)
      {
        goto LABEL_53;
      }
    }

LABEL_11:
    sub_10008BA48();
    v29 = v162;
    v30 = v163;
    v31 = v160;
    v32 = v161;
    v33 = v159;

    sub_10057D91C(v34);

    sub_10057D91C(v35);

    sub_10057D91C(v36);

    sub_10057D91C(v37);

    sub_10057D91C(v38);
    sub_1000EBCEC(v30);

    sub_1000EBCEC(v29);

    sub_1000EBCEC(v32);

    sub_1000EBCEC(v31);

    sub_1000EBCEC(v33);

    v189[0] = v156;
    v189[1] = v157;
    v190 = v158;
    v194 = *(&v156 + 1);
    v195 = v156;
    v192 = *(&v157 + 1);
    v193 = v157;
    v191 = v158;
    v162 = *(&v156 + 1);
    v163 = v156;
    v160 = *(&v157 + 1);
    v161 = v157;
    v159 = v158;
    sub_10000794C(&v195, &v156, &qword_10076B930);
    sub_10000794C(&v194, &v156, &qword_10076B930);
    sub_10000794C(&v193, &v156, &qword_10076B930);
    sub_10000794C(&v192, &v156, &qword_10076B930);
    sub_10000794C(&v191, &v156, &qword_10076B930);
    v39 = sub_1000ADD14();
    sub_1000079B4(&v195, &qword_10076B930);
    sub_1000079B4(&v194, &qword_10076B930);
    sub_1000079B4(&v193, &qword_10076B930);
    sub_1000079B4(&v192, &qword_10076B930);
    sub_1000079B4(&v191, &qword_10076B930);
    a2 = v131;
    if (v39)
    {
      sub_1000079B4(&v191, &qword_10076B930);
      sub_1000079B4(&v192, &qword_10076B930);
      sub_1000079B4(&v193, &qword_10076B930);
      sub_1000079B4(&v194, &qword_10076B930);
      result = sub_1000079B4(&v195, &qword_10076B930);
      v23 = v167;
      v24 = v168;
      v21 = v165;
      v22 = v166;
      v20 = v164;
      a9 = v124;
      goto LABEL_68;
    }
  }

LABEL_19:
  v49 = v43;
  v50 = v44;
  v51 = v43;
  v52 = v138;
  if (v44)
  {
LABEL_23:
    v53 = (v50 - 1) & v50;
    v54 = *(*(v40 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));

    if (!v54)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  while (1)
  {
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v51 >= v48)
    {
      goto LABEL_29;
    }

    v50 = *(v41 + 8 * v51);
    ++v49;
    if (v50)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1000F4818(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t *a6)
{
  v24 = result;
  v25 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 56) + 16 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);

    LOBYTE(v19) = a4(v20, v18, v19);

    if (v19)
    {
      *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1000EB804(v24, a2, v25, a3, a6);
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
      return sub_1000EB804(v24, a2, v25, a3, a6);
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

uint64_t sub_1000F4984(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t *a4)
{
  v8 = a1;
  v9 = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v12 = &v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_1000F4818(v12, v10, v8, a2, a3, a4);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v14 = swift_slowAlloc();
  v15 = sub_1000EB75C(v14, v10, v8, a2, a3, a4);

  if (!v4)
  {
    return v15;
  }

  return result;
}

void *sub_1000F4B24()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_100100E34;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_100100E3C;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_100101530;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_100100E58;
  v0[9] = v4;
  return v0;
}

uint64_t sub_1000F4C70(unint64_t a1, uint64_t (*a2)(uint64_t))
{

  result = a2(v5);
  *(v2 + 16) = result;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v2;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v7 = result;
  if (!result)
  {
    return v2;
  }

LABEL_3:
  if (v7 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        ++v8;
        swift_weakAssign();
        swift_beginAccess();
        *(v9 + 64) = &_swiftEmptyArrayStorage;
        swift_unknownObjectRelease();
      }

      while (v7 != v8);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *v10++;
        swift_weakAssign();
        swift_beginAccess();
        *(v11 + 64) = &_swiftEmptyArrayStorage;

        --v7;
      }

      while (v7);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F4E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t (*a5)(char *), uint64_t (*a6)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - v13;
  a4(v12);
  if (*(a2 + 16) && (v15 = a5(v14), (v16 & 1) != 0))
  {
    v17 = *(*(a2 + 56) + 8 * v15);
    v18 = *(v11 + 8);

    v18(v14, v10);
    v19 = sub_10000FA7C(v17, a6);

    return v19;
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    return 0;
  }
}

uint64_t sub_1000F4F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  result = a4();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a3 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(a2 + 16))
  {
    return *(a2 + 16 * v9 + 32) == a1;
  }

  __break(1u);
  return result;
}

void sub_1000F4FD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for IndexPath();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRITreeViewExpandedState();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  v44 = a1;
  v18 = sub_1000F4E08(a1, v17, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

  if (!v18)
  {
    return;
  }

  v19 = qword_1007A84C0;
  swift_beginAccess();
  (*(v11 + 16))(v16, v18 + v19, v10);
  (*(v11 + 104))(v14, enum case for TTRITreeViewExpandedState.collapsed(_:), v10);
  LOBYTE(v19) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v20 = *(v11 + 8);
  v20(v14, v10);
  v20(v16, v10);
  if ((v19 & 1) == 0)
  {

    return;
  }

  v21 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  sub_1000C7C38(v18, v21, v23, v24, v22 & 1, sub_1003B3EDC, sub_1000C77E8, v7);

  v26 = v47;
  v25 = v48;
  if ((*(v47 + 48))(v7, 1, v48) == 1)
  {
    sub_1000079B4(v7, &unk_100771B10);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100003E30(v27, qword_1007716F0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to find index path", v30, 2u);
    }

    return;
  }

  v31 = v46;
  (*(v26 + 32))(v46, v7, v25);
  v32 = swift_beginAccess();
  v33 = *(v18 + 64);
  if (v33 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_12;
    }
  }

  else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_1007716F0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Collapsed node should have no child nodes", v37, 2u);
    }
  }

  __chkstk_darwin(v32);
  *(&v43 - 4) = v3;
  *(&v43 - 3) = v18;
  v38 = v45;
  *(&v43 - 2) = v31;
  *(&v43 - 1) = v38;
  sub_1000CD5E4(sub_1000FD6C8, (&v43 - 6), 0, 0, 0, 0);
  v39 = *(v3 + qword_100771758);
  if (v39)
  {
    v40 = *(v39 + 16);

    if (v40(v41))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      (*(v39 + 240))(Strong, v44);
    }

    else
    {
    }
  }

  (*(v26 + 8))(v31, v25);
}

void sub_1000F56A8(void *a1)
{
  v1 = [a1 view];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
LABEL_8:

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = *(v3 + qword_10078A548);
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  sub_1000C8050();
}

void sub_1000F578C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for IndexPath();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
  v17 = sub_1000F4E08(a1, v16, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

  if (v17)
  {
    v18 = qword_1007A84C0;
    swift_beginAccess();
    (*(v10 + 16))(v15, v17 + v18, v9);
    (*(v10 + 104))(v13, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
    LOBYTE(v18) = static TTRITreeViewExpandedState.== infix(_:_:)();
    v19 = *(v10 + 8);
    v19(v13, v9);
    v19(v15, v9);
    if (v18)
    {
      v20 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      sub_1000C7C38(v17, v20, v22, v23, v21 & 1, sub_1003B3EDC, sub_1000C77E8, v6);

      v25 = v36;
      v24 = v37;
      if ((*(v36 + 48))(v6, 1, v37) == 1)
      {
        sub_1000079B4(v6, &unk_100771B10);
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100003E30(v26, qword_1007716F0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Unable to find index path", v29, 2u);
        }
      }

      else
      {
        v30 = v34;
        v31 = (*(v25 + 32))(v34, v6, v24);
        __chkstk_darwin(v31);
        *(&v33 - 4) = v17;
        *(&v33 - 3) = v2;
        v32 = v35;
        *(&v33 - 2) = v30;
        *(&v33 - 1) = v32;
        sub_1000CD5E4(sub_1000FF810, (&v33 - 6), 0, 0, 0, 0);

        (*(v25 + 8))(v30, v24);
      }
    }

    else
    {
    }
  }
}

void sub_1000F5CF0(unint64_t a1, char a2, uint64_t a3)
{
  LOBYTE(v3) = a2;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v20 = a3;
      v6 = 0;
      v7 = a1 & 0xC000000000000001;
      do
      {
        if (v7)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v8 = *(a1 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        [v8 setUserInteractionEnabled:(v3 ^ 1) & 1];

        ++v6;
      }

      while (v10 != v5);
      if (v3)
      {
        v11 = 0.4;
      }

      else
      {
        v11 = 1.0;
      }

      if (v20)
      {
        goto LABEL_32;
      }

      for (i = 0; ; ++i)
      {
        if (v7)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v13 = *(a1 + 8 * i + 32);
        }

        v3 = v13;
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        [v13 setAlpha:v11];

        if (v14 == v5)
        {
          return;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v15 = a3;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v15;
      v5 = v16;
    }

    while (v16);
  }

  if (v3)
  {
    v11 = 0.4;
  }

  else
  {
    v11 = 1.0;
  }

  if (a3)
  {
LABEL_32:
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v11;
    aBlock[4] = sub_1000FF804;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100715360;
    v19 = _Block_copy(aBlock);

    [v17 animateWithDuration:v19 animations:0.2];
    _Block_release(v19);
  }
}

void sub_1000F5F5C(void *a1, uint64_t a2)
{
  v313 = a1;
  v314 = a2;
  v286 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v285 = *(v286 - 8);
  __chkstk_darwin(v286);
  v287 = &v270 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for TTRIHashtagWrappingCollectionView.FocusStyle();
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v275 = &v270 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for TTRHashtagCollectionViewAllTagsButtonState();
  v273 = *(v274 - 8);
  __chkstk_darwin(v274);
  v272 = (&v270 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v284 = type metadata accessor for TTRAccountsListsViewModel.Hashtags();
  v283 = *(v284 - 8);
  __chkstk_darwin(v284);
  v282 = &v270 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = type metadata accessor for AppEntityID();
  v294 = *(v295 - 8);
  __chkstk_darwin(v295);
  v293 = &v270 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v299 = *(v297 - 8);
  __chkstk_darwin(v297);
  v298 = &v270 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.List();
  v9 = *(v8 - 8);
  v302 = v8;
  v303 = v9;
  v10 = __chkstk_darwin(v8);
  v300 = &v270 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v301 = &v270 - v12;
  v13 = sub_100058000(&qword_10076BC60);
  v14 = __chkstk_darwin(v13 - 8);
  v304 = &v270 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v305 = &v270 - v16;
  v17 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v307 = *(v17 - 8);
  v308 = v17;
  __chkstk_darwin(v17);
  v306 = &v270 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists();
  v311 = *(v19 - 8);
  v312 = v19;
  __chkstk_darwin(v19);
  v310 = &v270 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100058000(&qword_10076BE18);
  __chkstk_darwin(v21 - 8);
  v271 = &v270 - v22;
  v281 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v280 = *(v281 - 8);
  __chkstk_darwin(v281);
  v279 = &v270 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100058000(&qword_10076BE20);
  __chkstk_darwin(v24 - 8);
  v288 = &v270 - v25;
  v291 = type metadata accessor for TTRPermissionConfiguration.Header();
  v290 = *(v291 - 8);
  __chkstk_darwin(v291);
  v289 = &v270 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v270 = &v270 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v278 = &v270 - v32;
  v33 = __chkstk_darwin(v31);
  v296 = &v270 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v270 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v270 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v270 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v270 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v270 - v48;
  v50 = __chkstk_darwin(v47);
  v292 = &v270 - v51;
  __chkstk_darwin(v50);
  v53 = &v270 - v52;
  v54 = *(v28 + 16);
  v54(&v270 - v52, v314, v27);
  v55 = (*(v28 + 88))(v53, v27);
  if (v55 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    v54(v49, v53, v27);
    (*(v28 + 96))(v49, v27);
    v56 = type metadata accessor for UUID();
    (*(*(v56 - 8) + 8))(v49, v56);
    v57 = v27;
    v58 = v28;
LABEL_77:
    (*(v58 + 8))(v53, v57);
    return;
  }

  v57 = v27;
  v58 = v28;
  if (v55 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    goto LABEL_77;
  }

  if (v55 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    v59 = v57;
    v54(v46, v53, v57);
    v60 = *(v28 + 96);
    v61 = v59;
    v60(v46, v59);
    v63 = v310;
    v62 = v311;
    v64 = v312;
    (*(v311 + 32))(v310, v46, v312);
    type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
    v65 = v313;
    v66 = swift_dynamicCastClass();
    if (v66)
    {
      v67 = v66;
      v68 = v65;
      v69 = v309;
      TTRAccountsListsViewModel.PinnedLists.lists.getter();
      *&v67[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_delegate + 8] = &off_100714E68;
      swift_unknownObjectWeakAssign();

      sub_100329E38(v70);
      v71 = v69;
      v72 = *&v69[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
      swift_allocObject();
      swift_weakInit();

      TTRAccountsListsPresenterCapability.loadSharingContactsDataIfNeeded(for:contactsDidLoad:)();

      v73 = *(v72 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
      if (v73 == 2)
      {
        LOBYTE(v73) = sub_100444328(v72);
      }

      sub_100329F14((v73 & 1) == 0);
      sub_100058000(&qword_10076B780);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_10062D420;
      *(v74 + 32) = [v67 containerView];
      sub_1000F5CF0(v74, [v71 isEditing], 0);

      (*(v311 + 8))(v310, v312);
      v57 = v61;
    }

    else
    {
      (*(v62 + 8))(v63, v64);
      v57 = v61;
    }

    goto LABEL_77;
  }

  if (v55 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    v75 = v57;
    v54(v43, v53, v57);
    v76 = v75;
    (*(v28 + 96))(v43, v75);
    v78 = v306;
    v77 = v307;
    v79 = v308;
    (*(v307 + 32))(v306, v43, v308);
    type metadata accessor for TTRIAccountsListsViewListCell(0);
    v80 = v313;
    v81 = swift_dynamicCastClass();
    if (v81)
    {
      v82 = v81;
      v83 = v305;
      (*(v77 + 16))(v305, v78, v79);
      v84 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
      v85 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
      swift_beginAccess();
      v312 = v53;
      v314 = v58;
      v86 = v78;
      v87 = v304;
      sub_10000794C(v82 + v85, v304, &qword_10076BC60);
      swift_beginAccess();
      v88 = v80;
      sub_100019180(v83, v82 + v85, &qword_10076BC60);
      swift_endAccess();
      sub_1005E7270(v87);
      sub_1000079B4(v87, &qword_10076BC60);
      sub_1000079B4(v83, &qword_10076BC60);
      *(v82 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
      swift_unknownObjectWeakAssign();
      v89 = v88;
      sub_1004E11F4(1);

      (*(v77 + 8))(v86, v308);
      v57 = v76;
LABEL_12:
      v58 = v314;
      v53 = v312;
      goto LABEL_77;
    }

    (*(v77 + 8))(v78, v79);
LABEL_21:
    v57 = v76;
    goto LABEL_77;
  }

  if (v55 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_77;
  }

  if (v55 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    v90 = v57;
    v91 = v53;
    v54(v40, v53, v57);
    v92 = v90;
    (*(v28 + 96))(v40, v90);
    v94 = v302;
    v93 = v303;
    v95 = v301;
    (*(v303 + 32))(v301, v40, v302);
    type metadata accessor for TTRIAccountsListsViewListCell(0);
    v96 = v313;
    v97 = swift_dynamicCastClass();
    if (!v97)
    {
      (*(v93 + 8))(v95, v94);
      v57 = v92;
      v53 = v91;
      goto LABEL_77;
    }

    v98 = v97;
    v314 = v28;
    v311 = v92;
    v99 = v305;
    (*(v93 + 16))(v305, v95, v94);
    v100 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
    v101 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
    swift_beginAccess();
    v102 = v304;
    sub_10000794C(v98 + v101, v304, &qword_10076BC60);
    swift_beginAccess();
    v103 = v96;
    sub_100019180(v99, v98 + v101, &qword_10076BC60);
    swift_endAccess();
    v104 = v309;
    sub_1005E7270(v102);
    sub_1000079B4(v102, &qword_10076BC60);
    sub_1000079B4(v99, &qword_10076BC60);
    *(v98 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
    swift_unknownObjectWeakAssign();
    v105 = *&v104[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
    v106 = *(v105 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v106 == 2)
    {
      v107 = v103;
      if (!sub_100444328(v105))
      {
LABEL_18:
        v108 = 1;
        v58 = v314;
        v109 = v303;
        v110 = v301;
LABEL_35:
        sub_1004E11F4(v108);

        (*(v109 + 8))(v110, v94);
        v57 = v311;
        v53 = v91;
        goto LABEL_77;
      }
    }

    else
    {
      v156 = v103;
      if ((v106 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v110 = v301;
    v108 = TTRAccountsListsViewModel.List.sharingStatus.getter() == 3;
    v58 = v314;
    v109 = v303;
    goto LABEL_35;
  }

  v111 = v313;
  v112 = v303;
  if (v55 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v113 = v57;
    v114 = v53;
    v54(v37, v53, v57);
    v115 = v113;
    (*(v58 + 96))(v37, v113);
    v116 = v300;
    v117 = v302;
    (*(v112 + 32))(v300, v37, v302);
    type metadata accessor for TTRIAccountsListsViewListCell(0);
    v118 = swift_dynamicCastClass();
    if (!v118)
    {
      (*(v112 + 8))(v116, v117);
      v57 = v113;
      v53 = v114;
      goto LABEL_77;
    }

    v119 = v118;
    v120 = v58;
    v311 = v115;
    v121 = v305;
    (*(v112 + 16))(v305, v116, v117);
    v122 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
    v123 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
    swift_beginAccess();
    v124 = v304;
    sub_10000794C(v119 + v123, v304, &qword_10076BC60);
    swift_beginAccess();
    v125 = v111;
    sub_100019180(v121, v119 + v123, &qword_10076BC60);
    swift_endAccess();
    v126 = v309;
    sub_1005E7270(v124);
    sub_1000079B4(v124, &qword_10076BC60);
    sub_1000079B4(v121, &qword_10076BC60);
    *(v119 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
    swift_unknownObjectWeakAssign();
    v127 = *&v126[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
    v128 = *(v127 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v128 == 2)
    {
      v129 = v125;
      if (!sub_100444328(v127))
      {
LABEL_26:
        v130 = 1;
        v58 = v120;
        v131 = v303;
        v132 = v300;
LABEL_44:
        sub_1004E11F4(v130);

        (*(v131 + 8))(v132, v302);
        v57 = v311;
        v53 = v114;
        goto LABEL_77;
      }
    }

    else
    {
      v172 = v125;
      if ((v128 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v132 = v300;
    v130 = TTRAccountsListsViewModel.List.sharingStatus.getter() == 3;
    v58 = v120;
    v131 = v303;
    goto LABEL_44;
  }

  if (v55 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    v133 = v296;
    v134 = v57;
    v54(v296, v53, v57);
    v135 = *(v28 + 96);
    v311 = v134;
    v135(v133, v134);
    v136 = v299;
    v137 = v298;
    v138 = v297;
    (*(v299 + 32))(v298, v133, v297);
    type metadata accessor for TTRIAccountListsViewGroupCell();
    v139 = swift_dynamicCastClass();
    if (!v139)
    {
      (*(v136 + 8))(v137, v138);
      v57 = v311;
      goto LABEL_77;
    }

    v140 = v139;
    v314 = v58;
    v313 = v111;
    TTRAccountsListsViewModel.Group.name.getter();
    v141 = *(v140 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel);
    v142 = String._bridgeToObjectiveC()();

    [v141 setText:v142];

    v143 = TTRAccountsListsViewModel.Group.countText.getter();
    v145 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
    v146 = *(v140 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView);
    v147 = *&v146[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
    if (v147)
    {
      v148 = v143;
      v149 = v144;
      v312 = v53;
      v150 = v146;
      v151 = [v147 text];
      if (v151)
      {
        v152 = v151;
        v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v155 = v154;

        v138 = v297;
      }

      else
      {

        v153 = 0;
        v155 = 0xE000000000000000;
      }

      if (v153 == v148 && v155 == v149)
      {

        goto LABEL_60;
      }

      v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v180)
      {

        goto LABEL_60;
      }

      v181 = *(v140 + v145);
      v182 = *&v181[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
      if (v182)
      {
        v183 = v181;
        v184 = v182;
        v185 = String._bridgeToObjectiveC()();

        [v184 setText:v185];

LABEL_60:
        v186 = *(v140 + v145);
        v187 = objc_opt_self();
        v188 = v186;
        v189 = [v187 ttr_systemBlueColor];
        sub_1004B32C8(v189);

        *(v140 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
        swift_unknownObjectWeakAssign();
        v190 = v298;
        v191 = TTRAccountsListsViewModel.Group.count.getter();
        v192 = v140 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount;
        *v192 = v191;
        *(v192 + 8) = 0;
        v193 = v313;

        v194 = TTRAccountsListsViewModel.Group.listCount.getter();
        v195 = v140 + OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_ttriAccessibilityGroupListCount;
        *v195 = v194;
        *(v195 + 8) = 0;
        v196 = TTRAccountsListsViewModel.Group.objectID.getter();
        v197 = v196;
        v198 = OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_groupObjectID;
        v199 = *(v140 + OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_groupObjectID);
        *(v140 + OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_groupObjectID) = v196;
        if (v199)
        {
          sub_100003540(0, &qword_10076BA50);
          v200 = v197;
          v201 = v199;
          v202 = static NSObject.== infix(_:_:)();

          if (v202)
          {

            v58 = v314;
LABEL_69:

            (*(v299 + 8))(v190, v138);
            v57 = v311;
            v53 = v312;
            goto LABEL_77;
          }

          v204 = *(v140 + v198);
        }

        else
        {
          v203 = v196;
          v204 = v197;
        }

        v58 = v314;
        if (v204)
        {
          type metadata accessor for GroupEntity();
          v205 = v204;
          v206 = v293;
          AppEntityID.init(objectID:)();
          sub_1001013F4(&qword_10076BE30, &type metadata accessor for GroupEntity);
          UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

          (*(v294 + 8))(v206, v295);
        }

        else
        {
          UIView.removeAssociatedAppEntity()();
        }

        v201 = v199;
        goto LABEL_69;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_113;
  }

  if (v55 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
  {
    goto LABEL_77;
  }

  if (v55 != enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
  {
    if (v55 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v55 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v55 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
    {
      goto LABEL_77;
    }

    if (v55 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      v173 = v278;
      v174 = v57;
      v54(v278, v53, v57);
      v168 = v174;
      (*(v28 + 96))(v173, v174);
      v162 = v283;
      v163 = v282;
      v165 = v284;
      (*(v283 + 32))(v282, v173, v284);
      type metadata accessor for TTRIHashtagCollectionCell();
      v175 = v313;
      if (!swift_dynamicCastClass())
      {
LABEL_74:
        (*(v162 + 8))(v163, v165);
        v57 = v168;
        goto LABEL_77;
      }

      sub_1001013F4(&qword_10076BE28, type metadata accessor for TTRIAccountsListsViewController);
      v169 = v175;
      v176 = v309;
      TTRIHashtagCollectionCell.delegate.setter();
      v177 = static TTRLocalizableStrings.Hashtags.allTagsText.getter();
      v178 = v272;
      *v272 = v177;
      v178[1] = v179;
      (*(v273 + 104))(v178, enum case for TTRHashtagCollectionViewAllTagsButtonState.shown(_:), v274);
      TTRIHashtagCollectionCell.allTagsButtonState.setter();
      TTRIHashtagCollectionCell.allowsEmptySelection.setter();
      (*(v276 + 104))(v275, enum case for TTRIHashtagWrappingCollectionView.FocusStyle.selectionFollowsFocus(_:), v277);
      TTRIHashtagCollectionCell.hashtagFocusStyle.setter();
      TTRAccountsListsViewModel.Hashtags.labels.getter();
      TTRIHashtagCollectionCell.hashtagLabels.setter();
      TTRAccountsListsViewModel.Hashtags.isEnabled.getter();
      TTRIHashtagCollectionCell.isEnabled.setter();
LABEL_73:

      goto LABEL_74;
    }

    if (v55 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      v215 = v270;
      v216 = v57;
      v54(v270, v53, v57);
      v217 = v216;
      (*(v28 + 96))(v215, v216);
      v218 = v287;
      (*(v285 + 32))(v287, v215, v286);
      type metadata accessor for TTRIAccountsListsRecentlyDeletedCell();
      v219 = v313;
      v220 = swift_dynamicCastClass();
      if (!v220)
      {
        (*(v285 + 8))(v218, v286);
        v57 = v216;
        goto LABEL_77;
      }

      v221 = v220;
      v312 = v53;
      v314 = v58;
      *(v220 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
      swift_unknownObjectWeakAssign();
      v222 = v219;
      static TTRLocalizableStrings.RecentlyDeletedList.genericRecentlyDeletedTitle.getter();
      v223 = *(v221 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel);
      v224 = String._bridgeToObjectiveC()();

      [v223 setText:v224];

      v225 = TTRAccountsListsViewModel.RecentlyDeletedList.countText.getter();
      v227 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
      v228 = *(v221 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView);
      v229 = *&v228[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
      if (v229)
      {
        v230 = v225;
        v231 = v226;
        v232 = v228;
        v233 = [v229 text];
        if (v233)
        {
          v234 = v233;
          v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v237 = v236;
        }

        else
        {

          v235 = 0;
          v237 = 0xE000000000000000;
        }

        if (v235 == v230 && v237 == v231)
        {
        }

        else
        {
          v252 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v252)
          {
          }

          else
          {
            v253 = *(v221 + v227);
            v254 = *&v253[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
            if (!v254)
            {
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

            v255 = v253;
            v256 = v254;
            v257 = String._bridgeToObjectiveC()();

            [v256 setText:v257];
          }
        }

        v258 = TTRAccountsListsViewModel.RecentlyDeletedList.count.getter();
        v259 = v221 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount;
        *v259 = v258;
        *(v259 + 8) = 0;
        v260 = *(*&v309[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
        if (v260 == 2)
        {
          LOBYTE(v260) = sub_100444328(*&v309[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]);
        }

        sub_1004E11F4((v260 & 1) == 0);

        sub_10031E67C();
        (*(v285 + 8))(v287, v286);
        v57 = v217;
        goto LABEL_12;
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if (v55 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
    {
      goto LABEL_77;
    }

    if (v55 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_115;
    }

    v238 = v57;
    type metadata accessor for TTRIAccountsListsSuggestGroceriesCell();
    v239 = swift_dynamicCastClass();
    v57 = v238;
    if (!v239)
    {
      goto LABEL_77;
    }

    v240 = v239;
    v311 = v238;
    v312 = v53;
    v314 = v28;
    *(v239 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
    swift_unknownObjectWeakAssign();
    v241 = v313;
    static TTRLocalizableStrings.SuggestGroceries.cellTitle.getter();
    v242 = *&v240[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
    v243 = String._bridgeToObjectiveC()();

    [v242 setText:v243];

    static TTRLocalizableStrings.SuggestGroceries.cellSubtitle.getter();
    v244 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel;
    v245 = [*&v240[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel] text];
    if (v245)
    {
      v246 = v245;
      v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v249 = v248;

      v250 = HIBYTE(v249) & 0xF;
      if ((v249 & 0x2000000000000000) == 0)
      {
        v250 = v247 & 0xFFFFFFFFFFFFLL;
      }

      v251 = v250 == 0;
    }

    else
    {
      v251 = 1;
    }

    v261 = *&v240[v244];
    v262 = String._bridgeToObjectiveC()();

    [v261 setText:v262];

    v263 = [*&v240[v244] text];
    if (v263)
    {
      v264 = v263;
      v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v267 = v266;

      v268 = HIBYTE(v267) & 0xF;
      if ((v267 & 0x2000000000000000) == 0)
      {
        v268 = v265 & 0xFFFFFFFFFFFFLL;
      }

      if ((v251 ^ (v268 != 0)))
      {
        goto LABEL_108;
      }
    }

    else if (v251)
    {
      goto LABEL_108;
    }

    v240[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
    [v240 setNeedsLayout];
LABEL_108:

    sub_1002C57A0();
    v57 = v311;
    goto LABEL_12;
  }

  v157 = v292;
  v158 = v57;
  v54(v292, v53, v57);
  v76 = v158;
  (*(v58 + 96))(v157, v158);
  v159 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
  v160 = *(v159 - 8);
  v161 = (*(v160 + 88))(v157, v159);
  if (v161 == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
  {
    (*(v160 + 96))(v157, v159);
    v162 = v290;
    v163 = v289;
    v164 = v157;
    v165 = v291;
    (*(v290 + 32))(v289, v164, v291);
    type metadata accessor for TTRIInlinePermissionHeaderViewCell();
    v166 = v313;
    if (swift_dynamicCastClass())
    {
      sub_1001013F4(&qword_10076BE38, type metadata accessor for TTRIAccountsListsViewController);
      v167 = v166;
      v168 = v76;
      v169 = v167;
      v170 = v309;
      TTRIInlinePermissionHeaderViewCell.delegate.setter();
      v171 = v288;
      (*(v162 + 16))(v288, v163, v165);
      (*(v162 + 56))(v171, 0, 1, v165);
      TTRIInlinePermissionHeaderViewCell.configuration.setter();
      goto LABEL_73;
    }

LABEL_75:
    (*(v162 + 8))(v163, v165);
    goto LABEL_21;
  }

  v207 = v313;
  if (v161 == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
  {
    (*(v160 + 96))(v157, v159);
    v162 = v280;
    v163 = v279;
    v208 = v157;
    v165 = v281;
    (*(v280 + 32))(v279, v208, v281);
    type metadata accessor for TTRIInlinePermissionPrimaryButtonViewCell();
    if (swift_dynamicCastClass())
    {
      sub_1001013F4(&qword_10076BE38, type metadata accessor for TTRIAccountsListsViewController);
      v209 = v207;
      v168 = v76;
      v169 = v209;
      v210 = v309;
      TTRIInlinePermissionPrimaryButtonViewCell.delegate.setter();
      v211 = v271;
      (*(v162 + 16))(v271, v163, v165);
      (*(v162 + 56))(v211, 0, 1, v165);
      TTRIInlinePermissionPrimaryButtonViewCell.configuration.setter();
      goto LABEL_73;
    }

    goto LABEL_75;
  }

  v212 = v76;
  v213 = enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:);
  v214 = v161;
  (*(v160 + 8))(v157, v159);
  v57 = v212;
  if (v214 == v213)
  {
    goto LABEL_77;
  }

LABEL_115:
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v269 = type metadata accessor for Logger();
  sub_100003E30(v269, qword_10076B2A0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2);
  __break(1u);
}

void sub_1000F8318(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v13, v10);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v13, v15);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    (*(v11 + 8))(v13, v10);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    TTRAccountsListsViewModel.List.canEdit.getter();
    (*(v7 + 8))(v9, v6);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v3 + 32))(v5, v13, v2);
    TTRAccountsListsViewModel.Group.canEdit.getter();
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_5:
    (*(v11 + 8))(v13, v10);
  }

  else if (v14 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v14 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_1000F882C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a1 == 1)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v13;
    *(v15 + 3) = &protocol witness table for MainActor;
    *(v15 + 4) = v12;
    (*(v5 + 32))(&v15[v14], v7, v4);

    sub_10009E31C(0, 0, v10, &unk_10062FFB0, v15);
  }

  else
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10076B2A0);
    v21 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v21, v17, "table tried to do something we don't understand", v18, 2u);
    }

    v19 = v21;
  }
}

void sub_1000F8B4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.List();
  v49 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v2;
  if (([v2 isEditing] & 1) == 0)
  {
    v51 = _swiftEmptyArrayStorage;
    v16 = *(v8 + 16);
    v45 = a1;
    v17 = a1;
    v18 = v16;
    v16(v12, v17, v7);
    v19 = (*(v8 + 88))(v12, v7);
    if (v19 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v8 + 96))(v12, v7);
      v20 = type metadata accessor for UUID();
      (*(*(v20 - 8) + 8))(v12, v20);
LABEL_9:
      sub_100003540(0, &qword_10076BC40);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [objc_opt_self() configurationWithActions:isa];

      return;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
LABEL_8:
      (*(v8 + 8))(v12, v7);
      goto LABEL_9;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
      (*(v8 + 96))(v12, v7);
      (*(v49 + 32))(v15, v12, v13);
      TTRAccountsListsViewModel.List.pinState.getter();
      v24 = v48;
      v25 = (*(v48 + 88))(v6, v4);
      if (v25 == enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
      {
        (*(v49 + 8))(v15, v13);
        (*(v24 + 96))(v6, v4);
        if ((*v6 & 1) == 0)
        {
          v26 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v27 = v46;
          v18(v46, v45, v7);
          v28 = (*(v8 + 80) + 24) & ~*(v8 + 80);
          v29 = swift_allocObject();
          *(v29 + 16) = v26;
          (*(v8 + 32))(v29 + v28, v27, v7);
          aBlock[4] = sub_100101200;
          aBlock[5] = v29;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100422764;
          aBlock[3] = &unk_100715888;
          v30 = _Block_copy(aBlock);
          v31 = objc_opt_self();

          v32 = [v31 contextualActionWithStyle:0 title:0 handler:v30];
          _Block_release(v30);

          v33 = String._bridgeToObjectiveC()();
          v34 = [objc_opt_self() _systemImageNamed:v33];

          if (v34)
          {
            v35 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
            v36 = [v34 imageWithConfiguration:v35];

            if (v36)
            {
              v37 = objc_opt_self();
              v36 = v36;
              v38 = [v37 mainBundle];
              v52._object = 0x80000001006718E0;
              v39._countAndFlagsBits = 7235920;
              v39._object = 0xE300000000000000;
              v40._countAndFlagsBits = 0;
              v40._object = 0xE000000000000000;
              v52._countAndFlagsBits = 0xD00000000000002BLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v52);

              v41 = String._bridgeToObjectiveC()();

              [v36 setAccessibilityLabel:v41];
            }
          }

          else
          {
            v36 = 0;
          }

          [v32 setImage:v36];
          v42 = [objc_opt_self() ttr_systemYellowColor];
          [v32 setBackgroundColor:v42];

          v43 = v32;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        goto LABEL_9;
      }

      if (v25 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
      {
        (*(v49 + 8))(v15, v13);
        goto LABEL_9;
      }

      if (qword_100766F00 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100003E30(v44, qword_10076B2A0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      v23 = "Unknown pin state";
    }

    else
    {
      if (v19 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
      {
        goto LABEL_8;
      }

      if (v19 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        goto LABEL_9;
      }

      if (qword_100766F00 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100003E30(v22, qword_10076B2A0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      v23 = "Unknown item type";
    }

    sub_1003F9818(v23, 17, 2);
    __break(1u);
  }
}

id sub_1000F94F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [v2 isEditing];
  result = 0;
  if ((v7 & 1) == 0)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = *(v5 + 16);
    v57 = v5 + 16;
    v58 = a1;
    v56 = v10;
    v10(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v11 = *(v5 + 80);
    v12 = (v11 + 24) & ~v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v14 = *(v5 + 32);
    v59 = v5 + 32;
    v55 = v14;
    v14(v13 + v12, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v64 = sub_100100E88;
    v65 = v13;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v51 = &v62;
    v62 = sub_100422764;
    v63 = &unk_100715798;
    v15 = _Block_copy(&aBlock);
    v16 = objc_opt_self();

    v52 = v16;
    v54 = [v16 contextualActionWithStyle:1 title:0 handler:v15];
    _Block_release(v15);

    v17 = String._bridgeToObjectiveC()();
    v50 = objc_opt_self();
    v18 = [v50 _systemImageNamed:v17];

    v19 = &selRef_layoutIfNeeded;
    if (v18)
    {
      v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
      v21 = [v18 imageWithConfiguration:v20];

      if (v21)
      {
        v22 = objc_opt_self();
        v23 = v21;
        v24 = [v22 mainBundle];
        v66._object = 0x80000001006718B0;
        v25._countAndFlagsBits = 0x6574656C6544;
        v66._countAndFlagsBits = 0xD00000000000002CLL;
        v25._object = 0xE600000000000000;
        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v66);

        v18 = v23;
        v19 = &selRef_layoutIfNeeded;
        v27 = String._bridgeToObjectiveC()();

        [v18 setAccessibilityLabel:v27];
      }

      else
      {
        v18 = 0;
      }
    }

    v53 = v18;
    [v54 setImage:{v18, ~v11}];
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = v58;
    v56(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v4);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    v55(v30 + v12, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v64 = sub_100100F24;
    v65 = v30;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100422764;
    v63 = &unk_1007157E8;
    v31 = _Block_copy(&aBlock);

    v32 = [v52 contextualActionWithStyle:0 title:0 handler:v31];
    _Block_release(v31);

    sub_1000BA904(v29);
    v33 = String._bridgeToObjectiveC()();
    v34 = [v50 _systemImageNamed:v33];

    if (v34)
    {
      v35 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
      v36 = [v34 v19[275]];

      if (v36)
      {
        v34 = v36;
        v37 = String._bridgeToObjectiveC()();

        [v34 setAccessibilityLabel:v37];
      }

      else
      {

        v34 = 0;
      }
    }

    else
    {
    }

    [v32 setImage:v34];
    v38 = [objc_opt_self() tertiaryLabelColor];
    [v32 setBackgroundColor:v38];

    v56(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v4);
    v39 = (v11 + 16) & v49;
    v40 = swift_allocObject();
    v55(v40 + v39, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v41 = static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)();

    sub_100058000(&qword_10076BDF8);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10062D3F0;
    v43 = v54;
    *(v42 + 32) = v54;
    *(v42 + 40) = v32;
    aBlock = v42;
    v44 = v43;
    v45 = v32;
    sub_100058000(&qword_10076BE00);
    sub_100003540(0, &qword_10076BC40);
    sub_10000E188(&qword_10076BE08, &qword_10076BE00);
    v46 = Sequence.removingNils<A>()();

    aBlock = v46;
    sub_100081654(v41);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v48 = [objc_opt_self() configurationWithActions:isa];

    return v48;
  }

  return result;
}

uint64_t sub_1000F9D34()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003540(0, &qword_100777780);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100100E80;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100715748;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001013F4(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100058000(&qword_100780A50);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

void sub_1000FA02C(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v4 + 96))(v6, v3);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v6, v8);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
  {
LABEL_5:
    (*(v4 + 8))(v6, v3);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_8:
    (*(v4 + 8))(v6, v3);
LABEL_9:
    [v1 isEditing];
    return;
  }

  if (v7 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
  {
    if (v7 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_9;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

_BYTE *sub_1000FA380(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_10076BDB8);
  v6 = __chkstk_darwin(v5 - 8);
  v146 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v147 = &v143 - v8;
  v9 = sub_100058000(&qword_10076BDC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v143 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v145 = *(v12 - 1);
  __chkstk_darwin(v12);
  v14 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection();
  v148 = *(v15 - 8);
  v149 = v15;
  __chkstk_darwin(v15);
  v150 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v153 = *(v17 - 8);
  v154 = v17;
  __chkstk_darwin(v17);
  v156 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v151 = *(v19 - 8);
  v152 = v19;
  __chkstk_darwin(v19);
  v155 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v22 = *(v21 - 8);
  v157 = v21;
  v158 = v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v159 = &v143 - v26;
  v27 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v30, a2, v27);
  v31 = (*(v28 + 88))(v30, v27);
  if (v31 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v28 + 96))(v30, v27);
    v32 = type metadata accessor for UUID();
    (*(*(v32 - 8) + 8))(v30, v32);
    return 0;
  }

  if (v31 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
LABEL_6:
    (*(v28 + 8))(v30, v27);
    return 0;
  }

  if (v31 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    v143 = v2;
    (*(v28 + 96))(v30, v27);
    v34 = v158;
    v35 = v159;
    v36 = v157;
    v158[4](v159, v30, v157);
    if ((TTRAccountsListsViewModel.Account.wantsSectionHeader.getter() & 1) == 0)
    {
      (v34[1])(v35, v36);
      return 0;
    }

    result = type metadata accessor for TTRIAccountsListsSectionHeaderView();
    v37 = *(a1 + qword_10078A540);
    if (v37)
    {
      v38 = v37;
      v39 = UITableView.dequeueReusableHeaderFooterView<A>(_:)();

      TTRAccountsListsViewModel.Account.name.getter();
      v40 = *&v39[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView];
      v11 = String._bridgeToObjectiveC()();

      [v40 setText:v11];

      v41 = TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
      v42 = &v39[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier];
      *v42 = v41;
      v42[1] = v43;

      *&v39[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate + 8] = &off_100714F48;
      swift_unknownObjectWeakAssign();
      v44 = TTRAccountsListsViewModel.Account.showsUpgradeForLocalOnlyAccount.getter();
      v45 = v39[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount];
      v144 = v39;
      v39[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount] = v44 & 1;
      if ((v44 & 1) != v45)
      {
        sub_100336E24();
      }

      v46 = TTRAccountsListsViewModel.Account.isShownInUpgradeHintCard.getter();
      v47 = v144[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount];
      v144[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount] = v46 & 1;
      if ((v46 & 1) != v47)
      {
        sub_100336E24();
      }

      v48 = v155;
      TTRAccountsListsViewModel.Account.migrationState.getter();
      v49 = v144;
      sub_100333A5C(v48);
      v50 = v156;
      TTRAccountsListsViewModel.Account.networkActivity.getter();
      sub_100333C6C(v50);
      v51 = TTRAccountsListsViewModel.Account.objectID.getter();
      v52 = *&v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID];
      *&v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID] = v51;

      v53 = TTRAccountsListsViewModel.Account.isTheOnlyAccount.getter();
      v28 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl;
      v54 = v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl];
      v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl] = (v53 & 1) == 0;
      if ((v53 & 1) != v54)
      {
        goto LABEL_51;
      }

      [*&v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView] setHidden:?];
      v55 = *&v144[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers];
      if (!(v55 >> 62))
      {
        v14 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

        if (v14)
        {
          v56 = 0;
          v12 = &selRef_layoutIfNeeded;
          while (1)
          {
            if ((v55 & 0xC000000000000001) != 0)
            {
              v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v56 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_76;
              }

              v57 = *(v55 + 8 * v56 + 32);
            }

            v11 = v57;
            v58 = (v56 + 1);
            if (__OFADD__(v56, 1))
            {
              break;
            }

            [v57 setEnabled:v144[v28]];

            ++v56;
            if (v58 == v14)
            {
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_50:

        v49 = v144;
        v36 = v157;
LABEL_51:
        v80 = *&v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner];
        if (v80)
        {
          v81 = [v80 isHidden];
        }

        else
        {
          v81 = 1;
        }

        v82 = TTRAccountsListsViewModel.Account.objectID.getter();
        v83 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_accountSpinnerVisibleByAccountID;
        v84 = v143;
        swift_beginAccess();
        v85 = *(v84 + v83);
        if (*(v85 + 16) && (v86 = sub_1002613B0(v82), v84 = v143, (v87 & 1) != 0))
        {
          v88 = *(*(v85 + 56) + v86);
          swift_endAccess();

          if (v81 == v88)
          {
LABEL_57:
            v89 = v84;
            v90 = v159;
            v91 = TTRAccountsListsViewModel.Account.objectID.getter();
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v161 = *(v89 + v83);
            *(v89 + v83) = 0x8000000000000000;
            sub_1001278A8(v81 ^ 1, v91, isUniquelyReferenced_nonNull_native);

            *(v89 + v83) = v161;
            swift_endAccess();
            if (qword_100766F00 != -1)
            {
              swift_once();
            }

            v93 = type metadata accessor for Logger();
            sub_100003E30(v93, qword_10076B2A0);
            v94 = v158;
            v158[2](v25, v90, v36);
            v95 = v144;
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              LODWORD(v149) = v97;
              v100 = v99;
              v148 = v99;
              v150 = swift_slowAlloc();
              v160[0] = v150;
              *v98 = 138413058;
              v101 = TTRAccountsListsViewModel.Account.objectID.getter();
              v158 = v94[1];
              (v158)(v25, v36);
              *(v98 + 4) = v101;
              *v100 = v101;
              *(v98 + 12) = 2080;
              if (v81)
              {
                v102 = 0x65736C6166;
              }

              else
              {
                v102 = 1702195828;
              }

              if (v81)
              {
                v103 = 0xE500000000000000;
              }

              else
              {
                v103 = 0xE400000000000000;
              }

              v104 = sub_100004060(v102, v103, v160);

              *(v98 + 14) = v104;
              *(v98 + 22) = 2080;
              v105 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
              swift_beginAccess();
              v106 = v151;
              v107 = &v95[v105];
              v108 = v155;
              v109 = v152;
              (*(v151 + 16))(v155, v107, v152);
              v110 = TTRCloudKitMigrationManager.MigrationState.description.getter();
              v112 = v111;
              (*(v106 + 8))(v108, v109);
              v113 = sub_100004060(v110, v112, v160);

              *(v98 + 24) = v113;
              *(v98 + 32) = 2080;
              v114 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
              swift_beginAccess();
              v115 = v153;
              v116 = &v95[v114];
              v117 = v156;
              v118 = v154;
              (*(v153 + 16))(v156, v116, v154);
              v119 = TTRCloudKitNetworkActivityMonitor.Activity.description.getter();
              v121 = v120;
              (*(v115 + 8))(v117, v118);
              v122 = sub_100004060(v119, v121, v160);

              *(v98 + 34) = v122;
              _os_log_impl(&_mh_execute_header, v96, v149, "TTRIAccountsListsViewController: update account spinner {account: %@, spinnerVisible: %s, migrationState: %s, networkActivityState: %s}", v98, 0x2Au);
              sub_1000079B4(v148, &unk_10076DF80);

              swift_arrayDestroy();

              (v158)(v159, v157);
            }

            else
            {

              v123 = v94[1];
              (v123)(v25, v36);
              (v123)(v90, v36);
            }

            return v144;
          }
        }

        else
        {

          swift_endAccess();
          if ((v81 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        (v158[1])(v159, v36);
        return v144;
      }

LABEL_90:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_19;
    }

    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  if (v31 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
  {
    goto LABEL_6;
  }

  if (v31 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
  {
    v143 = v2;
    (*(v28 + 96))(v30, v27);
    (*(v148 + 32))(v150, v30, v149);
    result = type metadata accessor for TTRIAccountsListsTagsSectionHeaderView();
    v59 = *(a1 + qword_10078A540);
    if (v59)
    {
      v60 = v59;
      v61 = UITableView.dequeueReusableHeaderFooterView<A>(_:)();

      v62 = v61;
      TTRAccountsListsViewModel.HashtagsSection.title.getter();
      v63 = *&v62[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView];
      v64 = String._bridgeToObjectiveC()();

      [v63 setText:v64];

      v65 = TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
      v66 = &v62[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier];
      *v66 = v65;
      v66[1] = v67;

      v68 = &v62[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate];
      *&v62[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate + 8] = 0;
      swift_unknownObjectWeakAssign();
      v69 = v155;
      (*(v151 + 104))(v155, enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:), v152);
      sub_100333A5C(v69);
      v70 = v156;
      (*(v153 + 104))(v156, enum case for TTRCloudKitNetworkActivityMonitor.Activity.none(_:), v154);
      sub_100333C6C(v70);
      v71 = *&v62[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID];
      *&v62[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID] = 0;

      v72 = v62[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl];
      v144 = v62;
      v159 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl;
      v62[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl] = 1;
      if (v72)
      {
        goto LABEL_78;
      }

      v158 = v68;
      v73 = v144;
      [*&v144[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView] setHidden:0];
      v74 = *&v73[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers];
      if (v74 >> 62)
      {
        goto LABEL_93;
      }

      for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {

        if (!i)
        {
          break;
        }

        v76 = 0;
        while (1)
        {
          if ((v74 & 0xC000000000000001) != 0)
          {
            v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v76 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v77 = *(v74 + 8 * v76 + 32);
          }

          v78 = v77;
          v79 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            break;
          }

          [v77 setEnabled:v159[v144]];

          ++v76;
          if (v79 == i)
          {
            goto LABEL_77;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        ;
      }

LABEL_77:

      v68 = v158;
LABEL_78:
      v68[1] = &off_100714F48;
      v124 = v143;
      swift_unknownObjectWeakAssign();

      v125 = *(v124 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
      v126 = *(v125 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
      if (v126 == 2)
      {
        v127 = sub_100444328(v125);
        v128 = v150;
        if (v127)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v128 = v150;
        if (v126)
        {
          goto LABEL_84;
        }
      }

      TTRAccountsListsViewModel.HashtagsSection.filterOperation.getter();
      if ((*(v145 + 48))(v11, 1, v12) != 1)
      {
        v134 = v145;
        (*(v145 + 32))(v14, v11, v12);
        v135 = TTRAccountsListsViewModel.HashtagFilterOperation.menuItems.getter();
        __chkstk_darwin(v135);
        *(&v143 - 2) = v14;
        sub_100399058(sub_100100E60, (&v143 - 4), v135);

        type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
        sub_1001013F4(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
        v136 = v147;
        TTRValueBasedMenu.init(children:)();
        v137 = sub_100058000(&qword_10076BDC8);
        (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
        v138 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
        v139 = v144;
        swift_beginAccess();
        v140 = v146;
        sub_10000794C(&v139[v138], v146, &qword_10076BDB8);
        swift_beginAccess();
        sub_100019180(v136, &v139[v138], &qword_10076BDB8);
        swift_endAccess();
        sub_10039A538(v140);
        sub_1000079B4(v140, &qword_10076BDB8);
        sub_1000079B4(v136, &qword_10076BDB8);
        (*(v148 + 8))(v150, v149);
        (*(v134 + 8))(v14, v12);
        return v139;
      }

      sub_1000079B4(v11, &qword_10076BDC0);
      v128 = v150;
LABEL_84:
      v129 = sub_100058000(&qword_10076BDC8);
      v130 = v147;
      (*(*(v129 - 8) + 56))(v147, 1, 1, v129);
      v131 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
      v132 = v144;
      swift_beginAccess();
      v133 = v146;
      sub_10000794C(&v132[v131], v146, &qword_10076BDB8);
      swift_beginAccess();
      sub_100019180(v130, &v132[v131], &qword_10076BDB8);
      swift_endAccess();
      sub_10039A538(v133);
      sub_1000079B4(v133, &qword_10076BDB8);
      sub_1000079B4(v130, &qword_10076BDB8);
      (*(v148 + 8))(v128, v149);
      return v132;
    }

    goto LABEL_95;
  }

  if (v31 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v31 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
    goto LABEL_6;
  }

  if (v31 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
  {
    return 0;
  }

  v141 = v31 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:);
  result = 0;
  if (!v141)
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v142 = type metadata accessor for Logger();
    v55 = sub_100003E30(v142, qword_10076B2A0);
    v25 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
    goto LABEL_90;
  }

  return result;
}

void sub_1000FB884(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v9, v11);
    return;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_7;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    TTRAccountsListsViewModel.Account.wantsSectionHeader.getter();
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_7;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
  {
LABEL_15:
    (*(v7 + 8))(v9, v6);
    return;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
  {
    goto LABEL_7;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
  {
    goto LABEL_15;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_7:
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v10 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_1000FBCDC(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Tip();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v66 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v55 = *(v14 - 8);
  v56 = v14;
  __chkstk_darwin(v14);
  v54 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRPermissionConfiguration.Header();
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin(v16);
  v60 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v63 = &v52 - v24;
  __chkstk_darwin(v23);
  v26 = &v52 - v25;
  v27 = *(v19 + 16);
  v27(&v52 - v25, a1, v18);
  v28 = (*(v19 + 88))(v26, v18);
  if (v28 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    v27(v22, v26, v18);
    (*(v19 + 96))(v22, v18);
    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 8))(v22, v29);
    goto LABEL_32;
  }

  v53 = v4;
  v73 = v26;
  v74 = v18;
  if (v28 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    goto LABEL_31;
  }

  v26 = v73;
  v18 = v74;
  if (v28 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
LABEL_32:
    (*(v19 + 8))(v26, v18);
    return;
  }

  if (v28 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    v26 = v73;
    v18 = v74;
    v27(v22, v73, v74);
    (*(v19 + 96))(v22, v18);
    v30 = v69;
    v31 = v22;
    v32 = v70;
    (*(v69 + 32))(v13, v31, v70);
    TTRAccountsListsViewModel.SmartList.type.getter();
    TTRListType.PredefinedSmartListType.longTitle.getter();
    (*(v71 + 8))(v10, v72);
    (*(v30 + 8))(v13, v32);
    goto LABEL_32;
  }

  if (v28 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_31;
  }

  v26 = v73;
  v18 = v74;
  if (v28 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v27(v22, v73, v74);
    (*(v19 + 96))(v22, v18);
    v33 = v66;
    v34 = v67;
    v35 = v68;
    (*(v67 + 32))(v66, v22, v68);
    TTRAccountsListsViewModel.List.name.getter();
LABEL_12:
    (*(v34 + 8))(v33, v35);
    goto LABEL_32;
  }

  if (v28 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    v27(v22, v73, v74);
    (*(v19 + 96))(v22, v18);
    v36 = v64;
    v37 = v65;
    (*(v65 + 32))(v64, v22, v53);
    static TTRAccesibility.AccountsList.Format.GroupName.getter();
    sub_100058000(&unk_100786CB0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10062D400;
    v39 = TTRAccountsListsViewModel.Group.name.getter();
    v41 = v40;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_10005C390();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    String.init(format:_:)();

    (*(v37 + 8))(v36, v53);
    goto LABEL_32;
  }

  if (v28 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
  {
    goto LABEL_32;
  }

  if (v28 != enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
  {
    if (v28 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
    {
      goto LABEL_32;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
    {
      v27(v22, v73, v74);
      (*(v19 + 96))(v22, v18);
      v33 = v57;
      v34 = v58;
      v35 = v59;
      (*(v58 + 32))(v57, v22, v59);
      TTRAccountsListsViewModel.Tip.name.getter();
      goto LABEL_12;
    }

    if (v28 != enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) && v28 != enum case for TTRAccountsListsViewModel.Item.hashtags(_:) && v28 != enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:) && v28 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
    {
      v26 = v73;
      v18 = v74;
      if (v28 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }

LABEL_31:
    v26 = v73;
    v18 = v74;
    goto LABEL_32;
  }

  v42 = v63;
  v27(v63, v73, v74);
  (*(v19 + 96))(v42, v18);
  v43 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 88))(v42, v43);
  if (v45 == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
  {
    (*(v44 + 96))(v42, v43);
    v46 = v60;
    v47 = v61;
    v48 = v62;
    (*(v61 + 32))(v60, v42, v62);
    TTRPermissionConfiguration.Header.title.getter();
LABEL_24:
    (*(v47 + 8))(v46, v48);
    goto LABEL_31;
  }

  if (v45 == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
  {
    (*(v44 + 96))(v42, v43);
    v46 = v54;
    v47 = v55;
    v48 = v56;
    (*(v55 + 32))(v54, v42, v56);
    TTRPermissionConfiguration.PrimaryButton.title.getter();
    goto LABEL_24;
  }

  v49 = enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:);
  v50 = v45;
  (*(v44 + 8))(v42, v43);
  v26 = v73;
  v18 = v74;
  if (v50 == v49)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100003E30(v51, qword_10076B2A0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2);
  __break(1u);
}

void sub_1000FC838(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v13, v10);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v13, v15);
    return;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v14 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    TTRAccountsListsViewModel.List.pinState.getter();
    v16 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
    (*(v3 + 8))(v5, v2);
    if ((v16 & 1) == 0)
    {
      v17._object = 0x8000000100671790;
      v18._countAndFlagsBits = 0xD000000000000035;
      v18._object = 0x80000001006717B0;
      v17._countAndFlagsBits = 0xD00000000000001CLL;
      TTRLocalizedString(_:comment:)(v17, v18);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (v14 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v11 + 8))(v13, v10);
      return;
    }

    if (v14 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v14 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_100766F00 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_10076B2A0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2);
      __break(1u);
    }
  }
}

void sub_1000FCD64(uint64_t a1)
{
  v53 = a1;
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v57 = *(v54 - 8);
  v8 = __chkstk_darwin(v54);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v45 - v10;
  v11 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v45 - v12);
  v14 = type metadata accessor for REMHashtagLabelSpecifier();
  v58 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v45 - v19;
  __chkstk_darwin(v18);
  v22 = &v45 - v21;
  v51 = v1;
  sub_1000B3FE8(v13);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_1000079B4(v13, &unk_10076B7C0);
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100100B78(v13, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  v23 = v58;
  (*(v58 + 32))(v22, v13, v14);
  v24 = *(v23 + 16);
  v24(v20, v22, v14);
  v25 = (*(v23 + 88))(v20, v14);
  if (v25 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    if (v25 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v25 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      (*(v23 + 8))(v22, v14);
      return;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100003E30(v42, qword_10076B2A0);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    v43 = "Unknown selection type";
    goto LABEL_23;
  }

  v46 = v25;
  v47 = v24;
  (*(v23 + 96))(v20, v14);
  v26 = *v20;
  v48 = *(v20 + 1);
  v49 = v26;
  v45 = sub_100058000(&qword_10076B830);
  v27 = v54;
  (*(v57 + 32))(v56, &v20[*(v45 + 64)], v54);
  v28 = v52;
  (*(v52 + 16))(v7, v53, v5);
  v29 = (*(v28 + 88))(v7, v5);
  if (v29 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:))
  {
    v30 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
    v31 = v57;
    v32 = v55;
    goto LABEL_13;
  }

  v32 = v55;
  if (v29 != enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100003E30(v44, qword_10076B2A0);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    v43 = "Unknown operation type";
LABEL_23:
    sub_1003F9818(v43, 22, 2);
    __break(1u);
    return;
  }

  v30 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
  v31 = v57;
LABEL_13:
  v33 = v56;
  (*(v31 + 104))(v32, *v30, v27);
  sub_1001013F4(&qword_10076B838, &type metadata accessor for REMHashtagLabelSpecifier.Operation);
  v34 = v33;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {

    v35 = *(v31 + 8);
    v35(v32, v27);
    v35(v33, v27);
    (*(v58 + 8))(v22, v14);
  }

  else
  {
    v36 = *(v45 + 64);
    v37 = v48;
    *v17 = v49;
    *(v17 + 1) = v37;
    (*(v31 + 16))(&v17[v36], v32, v27);
    v38 = v58;
    (*(v58 + 104))(v17, v46, v14);
    v39 = v50;
    v47(v50, v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_1000B551C(v39, 16, 0);
    sub_100100B78(v39, type metadata accessor for TTRIAccountsListsSelection);
    v40 = *(v38 + 8);
    v40(v17, v14);
    v41 = *(v31 + 8);
    v41(v55, v27);
    v41(v34, v27);
    v40(v22, v14);
  }
}

void sub_1000FD53C(void (*a1)(void))
{
  v3 = [v1 contentScrollView];
  if (v3)
  {
    v7 = v3;
    a1();
  }

  else
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10076B2A0);
    v7 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v7, v5, "ppt_execute(_ scrollTest: @escaping (UIScrollView) failed because contentScrollView is nil", v6, 2u);
    }
  }
}

uint64_t sub_1000FD898(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, __int128 *, uint64_t, uint64_t))
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  v9 = *(v3 + 80);
  v10 = *a1;
  v12 = *(v3 + 16);
  v13 = v5;
  v14 = v6;
  v15 = *(v3 + 48);
  v16 = v7;
  v17 = v8;
  return a3(v10, &v12, v9, a2) & 1;
}

void sub_1000FD9F8(uint64_t a1)
{
  v25 = a1;
  v24 = type metadata accessor for TTRAccountsListsViewModel.List();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v25, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    TTRAccountsListsViewModel.SmartList.type.getter();
    v17 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
    v18 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v18 - 8) + 104))(v6, v17, v18);
    swift_storeEnumTagMultiPayload();
    sub_1000B551C(v6, 2, 0);
    sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
    (*(v8 + 8))(v10, v7);
  }

  else if (v16 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v12 + 96))(v15, v11);
    v19 = v24;
    (*(v1 + 32))(v3, v15, v24);
    (*(v1 + 16))(v6, v3, v19);
    v20 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
    v21 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v21 - 8) + 104))(v6, v20, v21);
    swift_storeEnumTagMultiPayload();
    sub_1000B551C(v6, 2, 0);
    sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
    (*(v1 + 8))(v3, v19);
  }

  else
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pinned list type", 24, 2);
    __break(1u);
  }
}

id sub_1000FDEBC(uint64_t a1, void *a2)
{
  v4 = sub_100058000(&qword_10076BB30);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = [a2 items];
  sub_100003540(0, &qword_10076BAC0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10043B8B4(v9, a1, v7);

  v10 = sub_100058000(&qword_10076BB38);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  sub_1000079B4(v7, &qword_10076BB30);
  return [objc_allocWithZone(UIDropProposal) initWithDropOperation:v11];
}

uint64_t sub_1000FE03C(uint64_t a1, id a2)
{
  v3 = [a2 items];
  sub_100003540(0, &qword_10076BAC0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_1004B1A10(v4))
  {
    sub_10043C130(v4, a1);
  }

  else
  {
    sub_10043C10C(v4, a1);
  }
}

void sub_1000FE0FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRPermissionConfiguration.Action();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043FBD4(a1);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  LODWORD(a1) = enum case for TTRPermissionConfiguration.Action.dismissUpgradeRequest(_:);
  (*(v5 + 8))(v7, v4);
  if (v8 == a1)
  {
    v9 = [v2 view];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *(v11 + qword_10078A548);
        if (v12)
        {
          v13 = v12;
          sub_1000C8050();

          return;
        }

        __break(1u);
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

unint64_t sub_1000FE2E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  v14 = 112 * v12;
  v15 = &v13[112 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000FE3B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 48 * a3;
  v15 = (v9 + 32 + 48 * a2);
  v16 = 48 * v14;
  v17 = &v15[48 * v14];
  if (result != v15 || result >= v17)
  {
    result = memmove(result, v15, v16);
  }

  v19 = *(v9 + 16);
  v11 = __OFADD__(v19, v12);
  v20 = v19 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v20;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1000FE4D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100547498(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1000FE3B8(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

void sub_1000FE5AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a4;
  v39 = a1;
  v38 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  __chkstk_darwin(v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v34 = (v8 + 8);
  v35 = (v8 + 16);
  v33 = (v11 + 8);
  while (a2 < v14)
  {
    v15 = *(v39 + 8 * a2);
    v16 = *(*v15 + 144);
    swift_beginAccess();
    v17 = v38;
    (*v35)(v10, v15 + v16, v38);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*v34)(v10, v17);
    sub_1000C6E2C(v13, v15);
    (*v33)(v13, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v5 + 16);
    v19 = v40;
    v21 = sub_1003B3EDC(v15);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_19;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v40;
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1003AE0D8();
        v28 = v40;
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_100548DB0(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1003B3EDC(v15);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_21;
      }

      v21 = v26;
      v28 = v40;
      if (v25)
      {
LABEL_4:
        *(v28[7] + 8 * v21) = v36;

        goto LABEL_5;
      }
    }

    v28[(v21 >> 6) + 8] |= 1 << v21;
    *(v28[6] + 8 * v21) = v15;
    *(v28[7] + 8 * v21) = v36;
    v29 = v28[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    v28[2] = v31;
LABEL_5:
    ++a2;
    *(v5 + 16) = v28;
    if (v14 == a2)
    {
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_100058000(&qword_10076BB78);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000FE8FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v38 = a1;
  v37 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  result = __chkstk_darwin(v36);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v33 = (v8 + 8);
  v34 = (v8 + 16);
  v32 = (v12 + 8);
  while (a2 < v15)
  {
    v16 = *(v38 + 8 * a2);
    v17 = *(*v16 + 144);
    swift_beginAccess();
    v18 = v37;
    (*v34)(v10, v16 + v17, v37);

    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    (*v33)(v10, v18);
    sub_1000C70F8(v14, v16);
    (*v32)(v14, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v5 + 16);
    v20 = v39;
    v22 = sub_1003B3EDC(v16);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    result = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v25 = v21;
    if (v20[3] >= result)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v39;
        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = sub_1003AF2F0();
        v27 = v39;
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10054B2C4(result, isUniquelyReferenced_nonNull_native);
      result = sub_1003B3EDC(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_21;
      }

      v22 = result;
      v27 = v39;
      if (v25)
      {
LABEL_4:
        *(v27[7] + 8 * v22) = v35;

        goto LABEL_5;
      }
    }

    v27[(v22 >> 6) + 8] |= 1 << v22;
    *(v27[6] + 8 * v22) = v16;
    *(v27[7] + 8 * v22) = v35;
    v28 = v27[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    v27[2] = v30;
LABEL_5:
    ++a2;
    *(v5 + 16) = v27;
    if (v15 == a2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_100058000(&qword_10076B788);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000FEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100058000(a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FED50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v3;
    v8 = *v3 >> 62;
    if (!v8)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_100018654(result);
    return sub_1000FEC4C(v6, v5, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1000FEE34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for IndexPath();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRITreeViewExpandedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  v44 = a1;
  v18 = sub_1000F4E08(a1, v17, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

  if (!v18)
  {
    return;
  }

  v19 = qword_1007A84C0;
  swift_beginAccess();
  (*(v11 + 16))(v16, v18 + v19, v10);
  (*(v11 + 104))(v13, enum case for TTRITreeViewExpandedState.collapsed(_:), v10);
  LOBYTE(v19) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  if ((v19 & 1) == 0)
  {

    return;
  }

  v21 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  sub_1000C7C38(v18, v21, v23, v24, v22 & 1, sub_1003B3EDC, sub_1000C73C4, v7);

  v26 = v47;
  v25 = v48;
  if ((*(v47 + 48))(v7, 1, v48) == 1)
  {
    sub_1000079B4(v7, &unk_100771B10);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100003E30(v27, qword_1007716F0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to find index path", v30, 2u);
    }

    return;
  }

  v31 = v46;
  (*(v26 + 32))(v46, v7, v25);
  v32 = swift_beginAccess();
  v33 = *(v18 + 64);
  if (v33 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_12;
    }
  }

  else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_1007716F0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Collapsed node should have no child nodes", v37, 2u);
    }
  }

  __chkstk_darwin(v32);
  *(&v43 - 4) = v3;
  *(&v43 - 3) = v18;
  v38 = v45;
  *(&v43 - 2) = v31;
  *(&v43 - 1) = v38;
  sub_1000CCF14(sub_100100930, (&v43 - 6), 0, 0, 0, 0);
  v39 = *(v3 + qword_100771758);
  if (v39)
  {
    v40 = *(v39 + 16);

    if (v40(v41))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      (*(v39 + 240))(Strong, v44);
    }

    else
    {
    }
  }

  (*(v26 + 8))(v31, v25);
}

uint64_t sub_1000FF508(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t), uint64_t (*a8)(uint64_t, void))
{
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = a4;
  v14 = a3;
  v13 = a2;
  v27 = a7;
  v28 = a8;
  v16 = *v9;
  v9 = (*v9 & 0xFFFFFFFFFFFFFF8);
  v8 = v9 + 4;
  v12 = &v9[a1 + 4];
  sub_100058000(a5);
  result = swift_arrayDestroy();
  v19 = __OFSUB__(v14, v15);
  v15 = v14 - v15;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  v10 = v16 >> 62;
  if (!(v16 >> 62))
  {
    v20 = v9[2];
    v21 = v20 - v13;
    if (!__OFSUB__(v20, v13))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return sub_1000EF1E0(v11, v27, v18, v28);
  }

LABEL_25:
  v25 = _CocoaArrayWrapper.endIndex.getter();
  v21 = v25 - v13;
  if (__OFSUB__(v25, v13))
  {
    goto LABEL_27;
  }

LABEL_6:
  v22 = (v12 + 8 * v14);
  v23 = &v8[v13];
  if (v22 != v23 || v22 >= &v23[8 * v21])
  {
    memmove(v22, v23, 8 * v21);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v9[2];
  }

  if (__OFADD__(result, v15))
  {
    goto LABEL_28;
  }

  v9[2] = result + v15;
LABEL_17:
  if (v14 < 1)
  {
    return result;
  }

  result = __chkstk_darwin(result);
  v18 = v26;
  v26[2] = v14;
  v26[3] = v12;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    return sub_1000EF1E0(v11, v27, v18, v28);
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == v14)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FF698(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t), uint64_t (*a7)(uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a7;
    v11 = a6;
    v12 = a3;
    v13 = a2;
    v14 = a1;
    v15 = *v8;
    v7 = *v8 >> 62;
    if (!v7)
    {
      result = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v9 = a5;
  v21 = a4;
  result = _CocoaArrayWrapper.endIndex.getter();
  a4 = v21;
  a5 = v9;
  if (result < v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  v9 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = a4;
  v23 = a5;
  if (!(v12 >> 62))
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = __OFSUB__(v17, v9);
    v19 = v17 - v9;
    if (!v18)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  result = _CocoaArrayWrapper.endIndex.getter();
  v17 = result;
  v18 = __OFSUB__(result, v9);
  v19 = result - v9;
  if (v18)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v7)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = __OFADD__(v20, v19);
  result = v20 + v19;
  if (!v18)
  {
    sub_100018654(result);
    return sub_1000FF508(v14, v13, v17, v12, v22, v23, v11, v10);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000FF81C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel) = *(v0 + 24);
}

void sub_1000FF864(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIAccountsListsViewUpdates() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000BEF60(a1, v4, v5);
}

void sub_1000FF900(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for IndexPath();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  v17 = sub_1000F4E08(a1, v16, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

  if (v17)
  {
    v18 = qword_1007A84C0;
    swift_beginAccess();
    (*(v10 + 16))(v15, v17 + v18, v9);
    (*(v10 + 104))(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
    LOBYTE(v18) = static TTRITreeViewExpandedState.== infix(_:_:)();
    v19 = *(v10 + 8);
    v19(v12, v9);
    v19(v15, v9);
    if (v18)
    {
      v20 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      sub_1000C7C38(v17, v20, v22, v23, v21 & 1, sub_1003B3EDC, sub_1000C73C4, v6);

      v25 = v36;
      v24 = v37;
      if ((*(v36 + 48))(v6, 1, v37) == 1)
      {
        sub_1000079B4(v6, &unk_100771B10);
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100003E30(v26, qword_1007716F0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Unable to find index path", v29, 2u);
        }
      }

      else
      {
        v30 = v34;
        v31 = (*(v25 + 32))(v34, v6, v24);
        __chkstk_darwin(v31);
        *(&v33 - 4) = v17;
        *(&v33 - 3) = v2;
        v32 = v35;
        *(&v33 - 2) = v30;
        *(&v33 - 1) = v32;
        sub_1000CCF14(sub_100100A0C, (&v33 - 6), 0, 0, 0, 0);

        (*(v25 + 8))(v30, v24);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000FFE64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_100018654(result);
    return sub_1000FFF5C(v8, v7, 1, v6, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000FFF5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_100058000(a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1001000C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t *a8)
{
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = a6;
  v11 = a5;
  v8 = a3;
  v13 = a2;
  v23 = a7;
  v16 = *v9;
  v9 = (*v9 & 0xFFFFFFFFFFFFFF8);
  v10 = v9 + 4;
  v12 = &v9[a1 + 4];
  sub_100058000(a8);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(v8, v15);
  v15 = v8 - v15;
  if (v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  v11 = v16 >> 62;
  if (!(v16 >> 62))
  {
    result = v9[2];
    v19 = result - v13;
    if (!__OFSUB__(result, v13))
    {
      goto LABEL_6;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:
  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result - v13;
  if (__OFSUB__(result, v13))
  {
    goto LABEL_28;
  }

LABEL_6:
  v20 = (v12 + 8 * v8);
  v21 = &v10[v13];
  if (v20 != v21 || v20 >= &v21[8 * v19])
  {
    memmove(v20, v21, 8 * v19);
  }

  if (v11)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v9[2];
  }

  if (__OFADD__(result, v15))
  {
    goto LABEL_29;
  }

  v9[2] = result + v15;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  if (__OFSUB__(v23 >> 1, v14))
  {
    goto LABEL_30;
  }

  if ((v23 >> 1) - v14 != v8)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_100100250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a6;
    v12 = a5;
    v9 = a4;
    v13 = a2;
    v14 = a1;
    v7 = *v8;
    v11 = *v8 >> 62;
    if (!v11)
    {
      result = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v22 = a7;
  v24 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v24;
  a7 = v22;
  if (result < v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  v16 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = (v10 >> 1) - v12;
  if (__OFSUB__(v10 >> 1, v12))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = a7;
  v18 = v17 - v16;
  if (__OFSUB__(v17, v16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11)
  {
    v19 = a3;
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = a3;
    v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = __OFADD__(v20, v18);
  result = v20 + v18;
  if (!v21)
  {
    sub_100018654(result);
    return sub_1001000C8(v14, v13, (v10 >> 1) - v12, v19, v9, v12, v10, v23);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100100448(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100058000(a2) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a4(a1, v4 + v7, v9, v10);
}

unint64_t sub_100100518(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(unint64_t))
{
  v14 = swift_unknownObjectRetain();
  result = sub_1000E8644(v14, a2, a3, a4, a5, a6, a7);
  *(v7 + 16) = result;
  v16 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return v7;
  }

  if (a4)
  {
    v20 = v16 - a3;
    if (v16 > a3)
    {
      v21 = (a2 + 8 * a3);
      do
      {
        v22 = *v21++;
        swift_weakAssign();
        swift_beginAccess();
        *(v22 + 64) = &_swiftEmptyArrayStorage;

        --v20;
      }

      while (v20);
      return v7;
    }
  }

  else
  {
    v17 = v16 - a3;
    if (v16 > a3)
    {
      v18 = (a2 + 8 * a3);
      do
      {
        v19 = *v18++;
        swift_weakAssign();
        swift_beginAccess();
        *(v19 + 64) = &_swiftEmptyArrayStorage;

        --v17;
      }

      while (v17);
      return v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100100648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITreeViewDropProposal(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001006AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100100728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 32);
  if (*(v3 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100100824(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 64);
  v10 = *(v4 + 72);
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v13 = *a1;
  v15 = *(v4 + 16);
  v16 = v7;
  v17 = v8;
  v18 = *(v4 + 48);
  v19 = v9;
  v20 = v10;
  return a4(v13, &v15, v11, v12, a2, a2, a3) & 1;
}

uint64_t sub_100100898(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001008E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100100998()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100100B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100100B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100100BEC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v3;
    v8 = *v3 >> 62;
    if (!v8)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_100018654(result);
    return sub_100100CD0(v6, v5, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100100CD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100003540(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100100E88(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_1000BA5E0(a1, a2, a3, a4, v10, v11);
}

void sub_100100FD4(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000BAC88(v4, a1);
}

uint64_t sub_100101044(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10042A2D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10010113C()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100101220()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001012EC(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA3C;

  return sub_10042A2D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001013F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010153C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076BEE0);
  v1 = sub_100003E30(v0, qword_10076BEE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100101604(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_doneButton] = 0;
  sub_100103804(&qword_10076BF48, v5, type metadata accessor for TTRIListSharingViewController);
  static TTRTypedController.currentArgument.getter();
  v6 = v12;
  v7 = v13;
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_presenter] = v11[1];
  v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_style] = v6;
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_localUndoManager] = v7;
  v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing] = v6 ^ 1;
  v11[0].receiver = v2;
  v11[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v8 = v7;
  v9 = [(objc_super *)v11 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v9)
  {
  }

  return v9;
}

void sub_10010176C()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  UITableView.fixUpBackgroundColorLoadedFromNibIfNeeded_workaroundRdar108920406()();

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() nibWithNibName:v4 bundle:0];

  v6 = [v1 tableView];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  type metadata accessor for TTRIListSharingParticipantCell();
  v8 = v5;
  static UITableViewCell.tableViewCellIdentifier.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 registerNib:v8 forCellReuseIdentifier:v9];

  v10 = [v1 tableView];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = v10;
  sub_100003540(0, &qword_10076B8B8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static UITableViewCell.tableViewCellIdentifier.getter();
  v13 = String._bridgeToObjectiveC()();

  [v11 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v13];

  if (*(v1 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_style))
  {
    v14 = "TTRIListSharingParticipantCell";
    v15 = 0x7720646572616853;
    v16 = 0xEB00000000687469;
    v17 = 0xD000000000000058;
  }

  else
  {
    v14 = "e user from someone else";
    v15 = 0x6977206572616853;
    v16 = 0xAD0000A680E26874;
    v17 = 0xD000000000000049;
  }

  v18 = v14 | 0x8000000000000000;
  TTRLocalizedString(_:comment:)(*&v15, *&v17);
  v19 = [v1 navigationItem];
  v20 = String._bridgeToObjectiveC()();

  [v19 setTitle:v20];

  if (*(v1 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing) == 1)
  {
    v21 = [v1 navigationItem];
    v22 = [v1 editButtonItem];
    [v21 setRightBarButtonItem:v22];
  }
}

uint64_t sub_100101C44()
{
  v1 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if (result != 1)
  {
    v3 = IndexPath.section.getter();
    result = 0;
    if (!v3 && (v1 & 0x8000000000000000) == 0)
    {
      v4 = *(sub_1004058A4() + 2);

      v5 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing);
      v6 = __OFADD__(v4, v5);
      v7 = v4 + v5;
      if (v6)
      {
        __break(1u);
      }

      else if (v1 >= v7)
      {
        return 0;
      }

      else
      {
        v8 = *(sub_1004058A4() + 2);

        if (v1 < v8)
        {
          return v1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

char *sub_100101D1C(unint64_t a1, char a2)
{
  result = 0;
  if (*(v2 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing) == 1 && (a2 & 1) == 0)
  {
    result = sub_1004058A4();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(result + 2) > a1)
    {
      v5 = result[112 * a1 + 136];

      return (v5 != 4);
    }

    __break(1u);
  }

  return result;
}

void sub_100101D98(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100101C44();
  if ((v10 & 0x100) != 0)
  {
    if (qword_100766F08 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_10076BEE0);
    (*(v6 + 16))(v8, a2, v5);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v6 + 8))(v8, v5);
      *(v18 + 4) = isa;
      *v19 = isa;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unexpected index path for list sharing view {indexPath: %@}", v18, 0xCu);
      sub_1000079B4(v19, &unk_10076DF80);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      v21 = v9;
      v22 = sub_1004058A4();
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v21 < *(v22 + 2))
      {
        v23 = &v22[112 * v21];
        v24 = *(v23 + 2);
        v25 = *(v23 + 4);
        v33[1] = *(v23 + 3);
        v33[2] = v25;
        v33[0] = v24;
        v26 = *(v23 + 5);
        v27 = *(v23 + 6);
        v28 = *(v23 + 7);
        *&v34[9] = *(v23 + 121);
        v33[4] = v27;
        *v34 = v28;
        v33[3] = v26;
        sub_100103660(v33, &v32);

        sub_10040590C(v33);
        sub_1001036BC(v33);
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    v5 = *(v2 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_presenter);
    if (v9)
    {
      if (qword_1007672A0 == -1)
      {
LABEL_5:
        v11 = type metadata accessor for Logger();
        sub_100003E30(v11, qword_100782448);
        sub_100058000(&unk_100775610);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D400;
        *(inited + 32) = 0x44497473696CLL;
        *(inited + 40) = 0xE600000000000000;
        v13 = [*(*(v5 + 56) + 32) objectID];
        *(inited + 72) = sub_100003540(0, &qword_10076BA50);
        *(inited + 48) = v13;
        sub_100008E04(inited);
        swift_setDeallocating();
        sub_1000079B4(inited + 32, &unk_10076BA70);
        sub_10000FD44();

        sub_10041D0EC();
        v14 = IndexPath._bridgeToObjectiveC()().super.isa;
        [a1 deselectRowAtIndexPath:v14 animated:1];

        return;
      }

LABEL_19:
      swift_once();
      goto LABEL_5;
    }

    sub_100405BA0();
    v31 = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectRowAtIndexPath:v31 animated:1];
    v29 = v31;
  }
}

void sub_100102434(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100101C44();
  if ((v11 & 0x100) == 0)
  {
    v12 = v10;
    v13 = v11;
    if ((sub_100101D1C(v10, v11 & 1) & 1) != 0 && (v13 & 1) == 0 && a2 && a2 != 2)
    {
      if (a2 == 1)
      {
        v14 = sub_1004058A4();
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *(v14 + 2))
        {
          v15 = &v14[112 * v12];
          v16 = *(v15 + 2);
          v17 = *(v15 + 4);
          v32[1] = *(v15 + 3);
          v32[2] = v17;
          v32[0] = v16;
          v18 = *(v15 + 5);
          v19 = *(v15 + 6);
          v20 = *(v15 + 7);
          *&v33[9] = *(v15 + 121);
          v32[4] = v19;
          *v33 = v20;
          v32[3] = v18;
          sub_100103660(v32, aBlock);

          sub_100405ED8(v32);
          (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
          v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
          v22 = swift_allocObject();
          v23 = v30;
          *(v22 + 16) = v30;
          (*(v8 + 32))(v22 + v21, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
          v24 = swift_allocObject();
          *(v24 + 16) = sub_100103710;
          *(v24 + 24) = v22;
          aBlock[4] = sub_100026410;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100026440;
          aBlock[3] = &unk_1007159B8;
          v25 = _Block_copy(aBlock);
          v26 = v23;
          v27 = v4;

          [v26 performBatchUpdates:v25 completion:0];
          _Block_release(v25);
          sub_1001036BC(v32);

          return;
        }

        __break(1u);
      }

      if (qword_100766F08 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100003E30(v28, qword_10076BEE0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("unknown editing style", 21, 2);
      __break(1u);
    }
  }
}

void sub_1001027AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007845D0);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10062D400;
  (*(v9 + 16))(v11 + v10, a2, v8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 deleteRowsAtIndexPaths:isa withRowAnimation:100];

  v13 = *(sub_1004058A4() + 2);

  if (!v13 && [a1 numberOfSections] == 2)
  {
    v17[1] = &off_100712708;
    sub_100103804(&unk_100771B20, 255, &type metadata accessor for IndexSet);
    sub_100058000(&unk_10076BA00);
    sub_1001037A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    IndexSet._bridgeToObjectiveC()(v14);
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    [a1 deleteSections:v16 withRowAnimation:100];
  }
}

uint64_t sub_100102EAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100101C44();
  if ((v8 & 0x100) != 0)
  {
    if (qword_100766F08 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10076BEE0);
    (*(v4 + 16))(v6, a2, v3);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v4 + 8))(v6, v3);
      *(v25 + 4) = isa;
      *v26 = isa;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected index path for list sharing view {indexPath: %@}", v25, 0xCu);
      sub_1000079B4(v26, &unk_10076DF80);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    sub_100003540(0, &qword_10076B8B8);
    return UITableView.dequeueReusableCell<A>(_:indexPath:)();
  }

  v9 = v7;
  if (v8)
  {
    sub_100003540(0, &qword_10076B8B8);
    v10 = UITableView.dequeueReusableCell<A>(_:indexPath:)();
    v11 = [v10 textLabel];
    v12 = v11;
    if (v9)
    {
      if (v11)
      {
        v13 = [objc_opt_self() ttr_systemRedColor];
        [v12 setTextColor:v13];
      }

      v14 = [v10 textLabel];
      if (v14)
      {
        v15 = v14;
        [v14 setTextAlignment:1];
      }

      v16 = [v10 textLabel];
      if (!v16)
      {
        return v10;
      }

      v17 = v16;
      v18 = 0x61685320706F7453;
      v19 = 0xEC000000676E6972;
      v20 = 0xD000000000000033;
      v21 = 0x8000000100671A40;
    }

    else
    {
      if (v11)
      {
        v38 = [v10 tintColor];
        [v12 setTextColor:v38];
      }

      v39 = [v10 textLabel];
      if (v39)
      {
        v40 = v39;
        [v39 setTextAlignment:4];
      }

      v41 = [v10 textLabel];
      if (!v41)
      {
        return v10;
      }

      v17 = v41;
      v18 = 0x7372657020646441;
      v19 = 0xAD0000A680E26E6FLL;
      v21 = 0x8000000100671A80;
      v20 = 0xD000000000000031;
    }

    TTRLocalizedString(_:comment:)(*&v18, *&v20);
    v42 = String._bridgeToObjectiveC()();

    [v17 setText:v42];

    return v10;
  }

  result = sub_1004058A4();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v9 >= *(result + 16))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = (result + 112 * v9);
  v31 = v29[3];
  v30 = v29[4];
  v52 = v29[2];
  v53 = v31;
  v54 = v30;
  v32 = v29[5];
  v33 = v29[6];
  v34 = v29[7];
  *&v57[9] = *(v29 + 121);
  v56 = v33;
  *v57 = v34;
  v55 = v32;
  v35 = v53;
  sub_100103660(&v52, v51);

  type metadata accessor for TTRIListSharingParticipantCell();
  v10 = UITableView.dequeueReusableCell<A>(_:indexPath:)();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = result;
    if (v35)
    {
      v37 = String._bridgeToObjectiveC()();
    }

    else
    {
      v37 = 0;
    }

    v43 = *&v57[8];
    v44 = *&v57[16];
    v45 = *(&v56 + 1);
    v46 = *v57;
    v47 = v57[24];
    [v36 setText:v37];

    v48 = sub_1003DF174(v47);
    sub_100556A2C(v48, v49);
    if (v46 | v44)
    {
      v50 = sub_100469610(v45, v46, v43, v44);
      if (!v50)
      {
        v50 = sub_10046991C(&v52);
      }
    }

    else
    {
      v50 = 0;
    }

    sub_100556B30(v50);
    sub_1001036BC(&v52);
    return v10;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_100103710()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1001027AC(v2, v3);
}

unint64_t sub_1001037A0()
{
  result = qword_100771B30;
  if (!qword_100771B30)
  {
    sub_10005D20C(&unk_10076BA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771B30);
  }

  return result;
}

uint64_t sub_100103804(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void destroy for TTRIListSharingViewController.Argument(uint64_t a1)
{
  swift_unknownObjectRelease();
  v2 = *(a1 + 24);
}

uint64_t initializeWithCopy for TTRIListSharingViewController.Argument(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  swift_unknownObjectRetain();
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRIListSharingViewController.Argument(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  v7 = v5;

  return a1;
}

uint64_t assignWithTake for TTRIListSharingViewController.Argument(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIListSharingViewController.Argument(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TTRIListSharingViewController.Argument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100103A20(uint64_t a1@<X8>)
{
  v100 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0);
  __chkstk_darwin(v100);
  v99 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076C030);
  __chkstk_darwin(v4 - 8);
  v98 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = v81 - v7;
  __chkstk_darwin(v8);
  v107 = v81 - v9;
  v10 = sub_100058000(&qword_10076C038);
  __chkstk_darwin(v10 - 8);
  v103 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v81 - v13;
  v15 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v96 = *(v15 - 8);
  __chkstk_darwin(v15);
  v102 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100105A04(v113);
  v21 = v114;
  if (!v114)
  {
    v73 = 0;
    v80 = 0;
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
    goto LABEL_31;
  }

  v89 = v113[0];
  v88 = v113[1];
  v87 = v115;
  v86 = v116;
  v85 = v117;
  v84 = v118;
  v90 = v119;
  v104 = *(v1 + 24);
  v22 = [v104 indexPathsForVisibleItems];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v112 = v23;

  sub_1001064B0(&v112);

  v24 = *(v112 + 2);
  if (!v24)
  {

    v80 = _swiftEmptyArrayStorage;
    v73 = v90;
    v74 = v89;
    v75 = v88;
    v76 = v87;
    v77 = v86;
    v78 = v85;
    v79 = v84;
    goto LABEL_31;
  }

  v82 = v21;
  v83 = a1;
  v26 = *(v18 + 16);
  v25 = v18 + 16;
  v111 = v26;
  v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
  v81[1] = v112;
  v28 = &v112[v27];
  v110 = (v96 + 56);
  v109 = (v25 - 8);
  v101 = (v96 + 48);
  v106 = _swiftEmptyArrayStorage;
  v108 = *(v25 + 56);
  v29 = v104;
  v95 = v14;
  v94 = v15;
  v93 = v17;
  v92 = v25;
  v91 = v20;
  v26(v20, &v112[v27], v17);
  while (1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v31 = [v29 cellForItemAtIndexPath:isa];

    if (!v31)
    {
      goto LABEL_5;
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

LABEL_5:
      (*v109)(v20, v17);
      (*v110)(v14, 1, 1, v15);
LABEL_6:
      sub_1000079B4(v14, &qword_10076C038);
      goto LABEL_7;
    }

    v32 = v25;
    v33 = [v31 contentView];
    v34 = [v33 snapshotViewAfterScreenUpdates:0];

    v105 = v34;
    if (!v34)
    {
      v50 = v103;
      (*v110)(v103, 1, 1, v15);

      (*v109)(v20, v17);
      sub_100016588(v50, v14, &qword_10076C038);
      v51 = (*v101)(v14, 1, v15) == 1;
      v25 = v32;
      goto LABEL_21;
    }

    v35 = v107;
    UICollectionViewCell.backgroundConfiguration.getter();
    v36 = v31;
    [v36 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v97;
    sub_10000794C(v35, v97, &qword_10076C030);
    v46 = type metadata accessor for UIBackgroundConfiguration();
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);
    if (v48(v45, 1, v46) == 1)
    {
      sub_1000079B4(v45, &qword_10076C030);
      v49 = v98;
LABEL_16:
      v52 = [objc_opt_self() clearColor];
      goto LABEL_17;
    }

    v52 = UIBackgroundConfiguration.backgroundColor.getter();
    (*(v47 + 8))(v45, v46);
    v49 = v98;
    if (!v52)
    {
      goto LABEL_16;
    }

LABEL_17:
    sub_10000794C(v107, v49, &qword_10076C030);
    if (v48(v49, 1, v46) == 1)
    {
      sub_1000079B4(v49, &qword_10076C030);
      v53 = 0;
    }

    else
    {
      UIBackgroundConfiguration.cornerRadius.getter();
      v53 = v54;
      (*(v47 + 8))(v49, v46);
    }

    v25 = v92;
    v55 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_roundedCorners;
    swift_beginAccess();
    v56 = *(v100 + 24);
    v57 = type metadata accessor for TTRRectCorners();
    v58 = v99;
    (*(*(v57 - 8) + 16))(&v99[v56], &v36[v55], v57);
    *v58 = v52;
    v58[1] = v53;
    [v36 bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_1000079B4(v107, &qword_10076C030);
    v67 = v103;
    *v103 = v38;
    *(v67 + 1) = v40;
    *(v67 + 2) = v42;
    *(v67 + 3) = v44;
    *(v67 + 4) = v36;
    v15 = v94;
    sub_1001088C4(v58, &v67[*(v94 + 20)], type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background);
    v68 = &v67[*(v15 + 24)];
    *v68 = v105;
    *(v68 + 1) = v60;
    *(v68 + 2) = v62;
    *(v68 + 3) = v64;
    *(v68 + 4) = v66;
    *(v68 + 5) = v36;
    (*v110)(v67, 0, 1, v15);
    v20 = v91;
    v17 = v93;
    (*v109)(v91, v93);
    v14 = v95;
    sub_100016588(v67, v95, &qword_10076C038);
    v51 = (*v101)(v14, 1, v15) == 1;
LABEL_21:
    v29 = v104;
    if (v51)
    {
      goto LABEL_6;
    }

    sub_1001088C4(v14, v102, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
    v69 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v106 : sub_100547A50(0, v106[2] + 1, 1, v106);
    v71 = v69[2];
    v70 = v69[3];
    if (v71 >= v70 >> 1)
    {
      v69 = sub_100547A50(v70 > 1, v71 + 1, 1, v69);
    }

    v69[2] = v71 + 1;
    v72 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v106 = v69;
    sub_1001088C4(v102, v69 + v72 + *(v96 + 72) * v71, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
LABEL_7:
    v28 += v108;
    if (!--v24)
    {
      break;
    }

    v111(v20, v28, v17);
  }

  a1 = v83;
  v21 = v82;
  v73 = v90;
  v74 = v89;
  v75 = v88;
  v76 = v87;
  v77 = v86;
  v78 = v85;
  v79 = v84;
  v80 = v106;
LABEL_31:
  *a1 = v74;
  *(a1 + 16) = v75;
  *(a1 + 32) = v21;
  *(a1 + 40) = v76;
  *(a1 + 56) = v77;
  *(a1 + 72) = v78;
  *(a1 + 88) = v79;
  *(a1 + 104) = v73;
  *(a1 + 112) = v80;
}

void sub_100104598(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v149 = a2;
  v4 = *(a1 + 80);
  v195 = *(a1 + 64);
  v196 = v4;
  v197 = *(a1 + 96);
  v198 = *(a1 + 112);
  v5 = *(a1 + 16);
  v191 = *a1;
  v192 = v5;
  v6 = *(a1 + 48);
  v193 = *(a1 + 32);
  v194 = v6;
  v163 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v154 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = (&v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell(0);
  v165 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v146 - v11;
  v148 = v2;
  v13 = *(v2 + 16);
  [v13 bounds];
  v18 = [objc_allocWithZone(UIView) initWithFrame:{v14, v15, v16, v17}];
  [v18 setAutoresizingMask:18];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:1];
  v19 = *(v3 + 16);
  v199 = *v3;
  v200 = v19;
  v20 = *(v3 + 48);
  v201 = *(v3 + 32);
  v202 = v20;
  v21 = *(v3 + 80);
  v203 = *(v3 + 64);
  v204 = v21;
  v205 = *(v3 + 96);
  v22 = *&v199;
  v161 = v201;
  [v13 convertRect:v199 fromCoordinateSpace:v200];
  v24 = *&v23;
  v164 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v160 = v29;
  [v18 bounds];
  v32 = v31;
  v34 = v33;
  v158 = v36;
  v159 = v35;
  v206.origin.x = v24;
  v206.origin.y = v26;
  v37 = v26;
  v206.size.width = v28;
  v38 = v28;
  v206.size.height = v30;
  MinY = CGRectGetMinY(v206);
  v40 = sub_100068328(v32, v34, *&v159, *&v158, MinY + 5.0, -30.0);
  v44 = [objc_allocWithZone(UIView) initWithFrame:{v40, v41, v42, v43}];
  [v44 setClipsToBounds:1];
  [v18 addSubview:v44];
  v151 = v18;
  [v13 addSubview:v18];
  v45 = objc_allocWithZone(UIView);
  v46 = [v45 initWithFrame:{*&v164, v37, v38, v160}];
  [v46 bounds];
  v51 = [objc_allocWithZone(UIView) initWithFrame:{v47, v48, v49, v50}];
  v52 = [v51 layer];
  [v52 setCornerCurve:kCACornerCurveContinuous];

  v53 = [v51 layer];
  v164 = objc_opt_self();
  v54 = [v164 blackColor];
  v55 = [v54 CGColor];

  [v53 setShadowColor:v55];
  v56 = [v51 layer];
  [v56 setShadowOffset:{0.0, 8.0}];

  v57 = v161;
  v58 = [v51 layer];
  [v58 setShadowRadius:12.0];

  v147 = v51;
  v59 = v51;
  v60 = &selRef_defaultStore;
  [v46 addSubview:v59];
  v61 = v202;
  [v57 convertRect:*(&v204 + 1) fromCoordinateSpace:{*(&v202 + 1), v203, *&v204}];
  [v61 setFrame:{sub_100108848(v62, v63, v22)}];
  [v46 addSubview:v61];
  v64 = *(&v205 + 1);
  v65 = *(*(&v205 + 1) + 16);
  v150 = v3;
  v157 = v46;
  if (v65)
  {
    *&v174[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v66 = (v64 + 72);
    do
    {
      v67 = *(v66 - 5);
      v68 = *(v66 - 4);
      v69 = *(v66 - 3);
      v70 = *(v66 - 2);
      v71 = *(v66 - 1);
      v72 = *v66;
      v66 += 7;
      v73 = v67;
      v74 = v72;
      v75 = v73;
      [v57 convertRect:v74 fromCoordinateSpace:{v68, v69, v70, v71}];
      [v75 setFrame:{sub_100108848(v76, v77, v22)}];
      [v157 addSubview:v75];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v65;
    }

    while (v65);
    v146 = *&v174[0];
    v3 = v150;
    v46 = v157;
    v60 = &selRef_defaultStore;
  }

  else
  {
    v146 = _swiftEmptyArrayStorage;
  }

  v171 = v203;
  v172 = v204;
  v173 = v205;
  v167 = v199;
  v168 = v200;
  v169 = v201;
  v170 = v202;
  sub_100108854(&v199, v174);
  v78 = v60;
  [v151 v60[332]];
  v79 = *(v3 + 112);
  v80 = *(v79 + 16);
  if (v80)
  {
    *&v174[0] = _swiftEmptyArrayStorage;
    sub_1004A21F8(0, v80, 0);
    v81 = *&v174[0];
    v82 = v79 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v154 = *(v154 + 72);
    v153 = xmmword_100630080;
    v152 = xmmword_100630090;
    p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
    do
    {
      *&v160 = v82;
      v161 = v80;
      v84 = v162;
      sub_10010869C(v82, v162, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
      v85 = *v84;
      v86 = v84[2];
      v87 = v84[3];
      v88 = p_ivar_lyt[508];
      v89 = *v84;
      v90 = v84[1];
      v158 = *(v84 + 4);
      [v44 v88];
      v159 = [objc_allocWithZone(UIView) initWithFrame:{v91, v92, v93, v94}];
      [v159 bounds];
      v99 = [objc_allocWithZone(type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView(0)) initWithFrame:{v95, v96, v97, v98}];
      v100 = [v164 systemBackgroundColor];
      v101 = *(v84 + *(v163 + 20));
      v102 = &v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
      v103 = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
      v104 = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill + 8];
      *v102 = v100;
      v102[1] = v101;
      v105 = v101;
      v106 = v100;
      sub_1002FCA54(v103, v104);
      sub_100037C04(v103, v104);

      v107 = [v164 blackColor];
      v108 = &v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
      v109 = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow + 32];
      v110 = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow + 16];
      v189[0] = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
      v189[1] = v110;
      v190 = v109;
      *v108 = v107;
      v111 = v152;
      *(v108 + 8) = v153;
      *(v108 + 24) = v111;
      v112 = v107;
      sub_1002FD608(v189);
      sub_1000079B4(v189, &qword_10076C020);

      v113 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox;
      v114 = v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox];
      v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox] = 0;
      if (v114 == 1)
      {
        v115 = [v99 layer];
        objc_opt_self();
        v116 = swift_dynamicCastObjCClass();
        if (v116)
        {
          v117 = v116;
          if (v99[v113])
          {
            v118 = 1.0;
          }

          else
          {
            v118 = 0.0;
          }

          [v116 setLineWidth:{v118, v146}];
          if (v99[v113] == 1)
          {
            v119 = [v164 purpleColor];
            v120 = [v119 CGColor];
          }

          else
          {
            v120 = 0;
          }

          [v117 setStrokeColor:v120];

          v115 = v120;
        }
      }

      v121 = v162;
      v122 = (v162 + *(v163 + 24));
      v123 = v122[1];
      v124 = v122[2];
      v125 = v122[3];
      v126 = v122[4];
      v127 = *(v122 + 5);
      v128 = *v122;
      [v158 convertRect:v127 fromCoordinateSpace:{v123, v124, v125, v126}];
      [v128 setFrame:{sub_100108848(v129, v130, v85)}];
      v131 = v159;
      [v159 v78[332]];
      [v131 v78[332]];
      v132 = v155;
      sub_10010869C(v121, v155, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
      v133 = v156;
      *(v132 + *(v156 + 20)) = v131;
      *(v132 + *(v133 + 24)) = v99;
      v134 = v132;
      *(v132 + *(v133 + 28)) = v128;
      sub_1001087E8(v121, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
      *&v174[0] = v81;
      v136 = v81[2];
      v135 = v81[3];
      if (v136 >= v135 >> 1)
      {
        sub_1004A21F8(v135 > 1, v136 + 1, 1);
        v134 = v155;
        v81 = *&v174[0];
      }

      v81[2] = v136 + 1;
      sub_1001088C4(v134, v81 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v136, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
      v82 = *&v160 + v154;
      v80 = v161 - 1;
      p_ivar_lyt = (&TTRIAccountsListsTagsHeaderCell + 16);
    }

    while (v161 != 1);

    v3 = v150;
    v137 = v81[2];
    if (!v137)
    {
      goto LABEL_27;
    }
  }

  else
  {

    v81 = _swiftEmptyArrayStorage;
    v137 = _swiftEmptyArrayStorage[2];
    if (!v137)
    {
LABEL_27:
      v174[4] = v195;
      v174[5] = v196;
      v174[6] = v197;
      v174[0] = v191;
      v174[1] = v192;
      v174[2] = v193;
      v174[3] = v194;
      v180 = v169;
      v179 = v168;
      v178 = v167;
      v184 = v173;
      v183 = v172;
      v182 = v171;
      v175 = v198;
      v141 = v151;
      v176 = v151;
      v181 = v170;
      v177 = v44;
      v142 = v157;
      v185 = v157;
      v144 = v146;
      v143 = v147;
      v186 = v147;
      v187 = v146;
      v188 = v81;
      v145 = *(v148 + 24);
      sub_10010888C(v3, v166);
      [v145 setHidden:1];
      sub_100107884(0, v174);
      sub_100107B0C(0, v174);
      v166[4] = v195;
      v166[5] = v196;
      v166[6] = v197;
      v166[0] = v191;
      v166[1] = v192;
      v166[2] = v193;
      v166[3] = v194;
      *(&v166[14] + 8) = v173;
      *(&v166[13] + 8) = v172;
      *(&v166[12] + 8) = v171;
      *(&v166[11] + 8) = v170;
      *(&v166[10] + 8) = v169;
      *(&v166[9] + 8) = v168;
      *&v166[7] = v198;
      *(&v166[7] + 1) = v141;
      *(&v166[8] + 8) = v167;
      *&v166[8] = v44;
      *(&v166[15] + 1) = v142;
      *&v166[16] = v143;
      *(&v166[16] + 1) = v144;
      *&v166[17] = v81;
      TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:)(v166);
      memcpy(v149, v166, 0x118uLL);
      return;
    }
  }

  v138 = *(v156 + 20);
  v139 = v81 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
  while (v137 <= v81[2])
  {
    --v137;
    sub_10010869C(&v139[*(v165 + 72) * v137], v12, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
    v140 = *&v12[v138];
    sub_1001087E8(v12, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
    [v44 v78[332]];

    if (!v137)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1001052E4(const void *a1)
{
  v3 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:200.0 initialVelocity:{0.0, 0.0}];
  type metadata accessor for TTRIAnimationSlowMode();
  swift_allocObject();
  TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
  isa = TTRIAnimationSlowMode.adjust(_:)(v3).super.isa;
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:isa timingParameters:0.0];

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  memcpy((v6 + 24), a1, 0x118uLL);
  aBlock[4] = sub_100106440;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100715B20;
  v7 = _Block_copy(aBlock);

  sub_100106478(a1, v8);

  [v5 addAnimations:v7];
  _Block_release(v7);
  [v5 startAnimation];
}

void sub_1001054A8(const void *a1)
{
  v3 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:500.0 damping:300.0 initialVelocity:{0.0, 0.0}];
  type metadata accessor for TTRIAnimationSlowMode();
  swift_allocObject();
  TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
  isa = TTRIAnimationSlowMode.adjust(_:)(v3).super.isa;
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:isa timingParameters:0.0];

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  memcpy((v6 + 24), a1, 0x118uLL);
  aBlock[4] = sub_10010892C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100715B70;
  v7 = _Block_copy(aBlock);

  sub_100106478(a1, v9);

  [v5 addAnimations:v7];
  _Block_release(v7);
  v9[4] = sub_100108964;
  v10 = v1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100188D20;
  v9[3] = &unk_100715B98;
  v8 = _Block_copy(v9);

  [v5 addCompletion:v8];
  _Block_release(v8);
  [v5 startAnimation];
}

id sub_10010570C()
{
  memcpy(v42, (v0 + 32), 0x118uLL);
  if (sub_10010896C(v42) == 1)
  {
    return 0;
  }

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 200);
  v14 = v6;
  v15 = v7;
  v16 = v11;
  v17 = v12;

  v18 = v16;
  [v18 convertRect:v13 fromCoordinateSpace:{v2, v3, v4, v5}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = sub_100108848(v20, v22, v8);
  v29 = sub_100068328(v27, v28, v24, v26, 0.0, -16.0);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [objc_allocWithZone(UIImageView) initWithImage:v17];
  [v36 setFrame:{0.0, 0.0, v9, v10}];
  v37 = [objc_allocWithZone(UIDragPreviewParameters) init];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 bezierPathWithRoundedRect:v29 cornerRadius:{v31, v33, v35, 16.0}];
  [v39 setVisiblePath:v40];

  if (qword_100766F10 != -1)
  {
    swift_once();
  }

  [v39 setBackgroundColor:qword_10076BF50];

  v41 = [objc_allocWithZone(UIDragPreview) initWithView:v36 parameters:v39];

  return v41;
}

id sub_1001059C8()
{
  result = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  qword_10076BF50 = result;
  return result;
}

void sub_100105A04(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v8 = UICollectionElementKindSectionHeader;
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v10 = [v7 supplementaryViewForElementKind:v8 atIndexPath:isa];

  if (v10)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v11 = v10;
      sub_100608964(v26);
      v24 = v26[1];
      v25 = v26[0];
      v22 = v26[3];
      v23 = v26[2];
      v21 = v26[4];
      v20 = v26[5];
      v19 = v26[6];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
    }

    v13 = v24;
    v12 = v25;
    v15 = v22;
    v14 = v23;
    v16 = v21;
    v17 = v20;
    v18 = v19;
  }

  else
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v18;
}

uint64_t sub_100105C10(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v10[39] = v2;
    v10[40] = v3;
    memcpy(__dst, (a2 + 32), sizeof(__dst));
    memcpy(v10, (a2 + 32), 0x118uLL);
    result = sub_10010896C(v10);
    if (result != 1)
    {
      sub_100108984(__src);
      memcpy(v7, (a2 + 32), sizeof(v7));
      memcpy((a2 + 32), __src, 0x118uLL);
      memcpy(v8, __dst, sizeof(v8));
      sub_100106478(v8, &v5);
      sub_1000079B4(v7, &qword_10076C040);
      [v10[15] removeFromSuperview];
      [*(a2 + 24) setHidden:0];
      return sub_1000079B4(__dst, &qword_10076C040);
    }
  }

  return result;
}

uint64_t sub_100105D14()
{
  memcpy(__dst, v0 + 4, sizeof(__dst));
  sub_1000079B4(__dst, &qword_10076C040);
  return swift_deallocClassInstance();
}

uint64_t destroy for TTRIBoardColumnDraggingAnimator.AnimationState(id *a1)
{
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimator.AnimationState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;
  v10 = *(a2 + 120);
  v34 = *(a2 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v34;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  v11 = *(a2 + 168);
  v32 = *(a2 + 176);
  *(a1 + 168) = v11;
  *(a1 + 176) = v32;
  v35 = *(a2 + 184);
  *(a1 + 184) = v35;
  v12 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v12;
  v14 = *(a2 + 224);
  v13 = *(a2 + 232);
  *(a1 + 224) = v14;
  *(a1 + 232) = v13;
  v33 = v13;
  v15 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v15;
  v36 = v15;
  v37 = *(a2 + 256);
  v16 = *(a2 + 264);
  v38 = *(a2 + 272);
  *(a1 + 256) = v37;
  *(a1 + 264) = v16;
  *(a1 + 272) = v38;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;

  v22 = v10;
  v23 = v34;
  v24 = v11;
  v25 = v32;
  v26 = v35;
  v27 = v14;
  v28 = v33;

  v29 = v36;
  v30 = v37;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimator.AnimationState(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v9 = v7;

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  v12 = v10;

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  v13 = a2[11];
  v14 = a1[11];
  a1[11] = v13;
  v15 = v13;

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  v18 = v16;

  a1[13] = a2[13];

  a1[14] = a2[14];

  v19 = a2[15];
  v20 = a1[15];
  a1[15] = v19;
  v21 = v19;

  v22 = a2[16];
  v23 = a1[16];
  a1[16] = v22;
  v24 = v22;

  a1[17] = a2[17];
  a1[18] = a2[18];
  a1[19] = a2[19];
  a1[20] = a2[20];
  v25 = a2[21];
  v26 = a1[21];
  a1[21] = v25;
  v27 = v25;

  v28 = a2[22];
  v29 = a1[22];
  a1[22] = v28;
  v30 = v28;

  v31 = a2[23];
  v32 = a1[23];
  a1[23] = v31;
  v33 = v31;

  a1[24] = a2[24];
  a1[25] = a2[25];
  a1[26] = a2[26];
  a1[27] = a2[27];
  v34 = a2[28];
  v35 = a1[28];
  a1[28] = v34;
  v36 = v34;

  v37 = a2[29];
  v38 = a1[29];
  a1[29] = v37;
  v39 = v37;

  a1[30] = a2[30];

  v40 = a2[31];
  v41 = a1[31];
  a1[31] = v40;
  v42 = v40;

  v43 = a2[32];
  v44 = a1[32];
  a1[32] = v43;
  v45 = v43;

  a1[33] = a2[33];

  a1[34] = a2[34];

  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimator.AnimationState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v7 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  v8 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);

  v9 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);

  v10 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);

  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;

  v12 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);

  v13 = *(a1 + 248);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 256) = *(a2 + 256);

  *(a1 + 272) = *(a2 + 272);

  return a1;
}