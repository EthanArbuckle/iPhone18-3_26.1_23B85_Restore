uint64_t sub_1000C8124(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_1000DA084();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date);
          LOBYTE(v35) = sub_1000DBDF4();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date);
        LOBYTE(v22) = sub_1000DBDF4();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_10006FF44(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1000C8718(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = __chkstk_darwin(v8);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v50 = &v41 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v54 = a1;
  v53 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v45 = a4;
      v46 = a1;
      v49 = v8;
      v44 = -v14;
      do
      {
        v42 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v47 = a2;
        v48 = a2 + v27;
        while (1)
        {
          if (v29 <= a1)
          {
            v54 = v29;
            v52 = v42;
            goto LABEL_60;
          }

          v32 = a3;
          v43 = v26;
          a3 += v27;
          v33 = v28 + v27;
          v34 = v50;
          sub_1000C5228(v28 + v27, v50, type metadata accessor for InsightsDataManager.TopAssetCategory);
          v35 = v51;
          sub_1000C5228(v30, v51, type metadata accessor for InsightsDataManager.TopAssetCategory);
          v36 = *(v8 + 24);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          sub_1000C922C(v35, type metadata accessor for InsightsDataManager.TopAssetCategory);
          sub_1000C922C(v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
          if (v38 < v37)
          {
            break;
          }

          v26 = v33;
          if (v32 < v28 || a3 >= v28)
          {
            v31 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v30 = v48;
            v8 = v31;
            v27 = v44;
          }

          else
          {
            v30 = v48;
            v8 = v49;
            v27 = v44;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          a1 = v46;
          v29 = v47;
          if (v33 <= v45)
          {
            a2 = v47;
            goto LABEL_59;
          }
        }

        v39 = v45;
        if (v32 < v47 || a3 >= v47)
        {
          a2 = v48;
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v43;
          v27 = v44;
        }

        else
        {
          v40 = v32 == v47;
          a2 = v48;
          v8 = v49;
          v26 = v43;
          v27 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v46;
      }

      while (v28 > v39);
    }

LABEL_59:
    v54 = a2;
    v52 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v52 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = a3;
      v49 = v8;
      do
      {
        v20 = v50;
        sub_1000C5228(a2, v50, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v21 = v51;
        sub_1000C5228(a4, v51, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v22 = *(v8 + 24);
        v23 = *(v20 + v22);
        v24 = *(v21 + v22);
        sub_1000C922C(v21, type metadata accessor for InsightsDataManager.TopAssetCategory);
        sub_1000C922C(v20, type metadata accessor for InsightsDataManager.TopAssetCategory);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            v8 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v25 = v47;
          }

          else
          {
            v25 = v47;
            v8 = v49;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = a4 + v14;
          a4 += v14;
        }

        else if (a1 < a2 || a1 >= a2 + v14)
        {
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v14;
          v25 = v47;
        }

        else
        {
          v25 = v47;
          v8 = v49;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v54 = a1;
      }

      while (a4 < v48 && a2 < v25);
    }
  }

LABEL_60:
  sub_10006FF5C(&v54, &v53, &v52);
  return 1;
}

uint64_t sub_1000C8C44(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v4 = _s14descr10010BBE9V4YearVMa(0);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007BC0(&qword_100126810);
  result = sub_1000DCB24();
  v7 = result;
  v8 = 0;
  v33 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v28 = result + 64;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v33 + 48) + 8 * v19);
      v21 = v29;
      sub_1000C5228(*(v33 + 56) + *(v30 + 72) * v19, v29, _s14descr10010BBE9V4YearVMa);
      v22 = v35;
      v31(v34, v21);
      result = sub_1000C922C(v21, _s14descr10010BBE9V4YearVMa);
      v35 = v22;
      if (v22)
      {
        break;
      }

      *(v28 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v7[6] + 8 * v19) = v20;
      v23 = (v7[7] + 32 * v19);
      v24 = v34[1];
      *v23 = v34[0];
      v23[1] = v24;
      v25 = v7[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      v7[2] = v27;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return v7;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

char *sub_1000C8E90(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v37[0] = a1;
  v35 = *(a1 + 16);
  if (v35)
  {
    v4 = 0;
    v5 = a2 + 7;
    v6 = a1 + 32;
    do
    {
      v7 = *(v4 + v6);
      v4 = (v4 + 1);
      sub_1000DCD24();
      sub_1000DCD34(v7);
      v8 = sub_1000DCD74();
      v9 = -1 << v2[32];
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & v5[v10 >> 6]) != 0)
      {
        v13 = *(v2 + 6);
        if (*(v13 + v10) == v7)
        {
LABEL_9:
          v37[1] = v4;
          v14 = (63 - v9) >> 6;
          v15 = 8 * v14;
          v34 = v14;
          if (v14 > 0x80)
          {
            goto LABEL_30;
          }

          {
            v35 = &v33;
            __chkstk_darwin(i);
            v18 = (&v33 - v17);
            memcpy(&v33 - v17, v2 + 56, v15);
            v19 = *(v2 + 2);
            v18[v11] &= ~v12;
            v12 = v19 - 1;
            v20 = *(a1 + 16);
            if (v4 == v20)
            {
              break;
            }

            v15 = 1;
            while (v4 < v20)
            {
              v11 = *(v4 + v6);
              sub_1000DCD24();
              v10 = &v36;
              sub_1000DCD34(v11);
              v22 = sub_1000DCD74();
              v23 = -1 << v2[32];
              v24 = v22 & ~v23;
              v25 = v24 >> 6;
              v26 = 1 << v24;
              if (((1 << v24) & v5[v24 >> 6]) != 0)
              {
                v27 = *(v2 + 6);
                if (*(v27 + v24) == v11)
                {
LABEL_24:
                  v29 = v18[v25];
                  v18[v25] = v29 & ~v26;
                  if ((v29 & v26) != 0)
                  {
                    if (__OFSUB__(v12--, 1))
                    {
                      goto LABEL_29;
                    }

                    if (!v12)
                    {

                      v2 = &_swiftEmptySetSingleton;
                      goto LABEL_13;
                    }
                  }
                }

                else
                {
                  v28 = ~v23;
                  while (1)
                  {
                    v24 = (v24 + 1) & v28;
                    v25 = v24 >> 6;
                    v26 = 1 << v24;
                    if (((1 << v24) & v5[v24 >> 6]) == 0)
                    {
                      break;
                    }

                    if (*(v27 + v24) == v11)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }

              v4 = (v4 + 1);
              v20 = *(a1 + 16);
              if (v4 == v20)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:

            if (!swift_stdlib_isStackAllocationSafe())
            {
              v31 = swift_slowAlloc();
              memcpy(v31, v2 + 56, v15);
              v32 = sub_1000C928C(v31, v34, v2, v10, v37);

              return v32;
            }
          }

LABEL_12:
          v2 = sub_1000C9428(v18, v34, v12, v2);
LABEL_13:

          return v2;
        }

        while (1)
        {
          v10 = (v10 + 1) & ~v9;
          v11 = v10 >> 6;
          v12 = 1 << v10;
          if (((1 << v10) & v5[v10 >> 6]) == 0)
          {
            break;
          }

          if (*(v13 + v10) == v7)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (v4 != v35);
  }

  return v2;
}

uint64_t sub_1000C922C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int sub_1000C928C(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = result;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = *a5;
  v10 = a5[1];
  v11 = *(*a5 + 16);
  if (v10 == v11)
  {
LABEL_2:

    return sub_1000C9428(v6, a2, v8, a3);
  }

  else
  {
    v13 = a3 + 56;
    while ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= v11)
      {
        goto LABEL_18;
      }

      v14 = *(v9 + v10 + 32);
      a5[1] = v10 + 1;
      sub_1000DCD24();
      sub_1000DCD34(v14);
      result = sub_1000DCD74();
      v15 = -1 << *(a3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) != 0)
      {
        v19 = *(a3 + 48);
        if (*(v19 + v16) == v14)
        {
LABEL_13:
          v21 = v6[v17];
          v6[v17] = v21 & ~v18;
          if ((v21 & v18) != 0)
          {
            if (__OFSUB__(v8--, 1))
            {
              goto LABEL_19;
            }

            if (!v8)
            {
              return &_swiftEmptySetSingleton;
            }
          }
        }

        else
        {
          v20 = ~v15;
          while (1)
          {
            v16 = (v16 + 1) & v20;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) == 0)
            {
              break;
            }

            if (*(v19 + v16) == v14)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v9 = *a5;
      v10 = a5[1];
      v11 = *(*a5 + 16);
      if (v10 == v11)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C9428(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100007BC0(&qword_1001218A8);
  result = sub_1000DC9E4();
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
    sub_1000DCD24();
    sub_1000DCD34(v16);
    result = sub_1000DCD74();
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
    *(*(v9 + 6) + v20) = v16;
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

uint64_t sub_1000C9638(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v7 = *(v5 + v4);
      sub_1000DCD24();
      sub_1000DCD34(v7);
      v8 = sub_1000DCD74();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (*(*(a2 + 48) + v10) != v7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1000C9740(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v16 = __clz(__rbit64(v9)) | (v11 << 6);
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + 8 * v16);
    v36[0] = v17;
    v37 = v18;
    a2(v35, v36);
    v19 = v35[0];
    v20 = v35[1];
    v21 = *v38;
    v22 = sub_100063398(v35[0]);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (v21[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v22;
        sub_1000D197C();
        v22 = v31;
      }
    }

    else
    {
      sub_1000CFA68(v27, a4 & 1);
      v22 = sub_100063398(v19);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }
    }

    v30 = *v38;
    if (v28)
    {
      v12 = (v30[7] + 8 * v22);
      v14 = *v12 + v20;
      if (__OFADD__(*v12, v20))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      *(v30[6] + v22) = v19;
      *(v30[7] + 8 * v22) = v20;
      v13 = v30[2];
      v12 = v30 + 2;
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }
    }

    v9 &= v9 - 1;
    *v12 = v14;
    a4 = 1;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_11;
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
  result = sub_1000DCCC4();
  __break(1u);
  return result;
}

uint64_t sub_1000C996C(uint64_t a1)
{
  v227 = sub_100007BC0(&qword_100121B98);
  v2 = __chkstk_darwin(v227);
  v226 = &v214 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v225 = &v214 - v4;
  v5 = sub_100007BC0(&qword_100126750);
  v6 = __chkstk_darwin(v5 - 8);
  v252 = (&v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v231 = &v214 - v8;
  v9 = sub_100007BC0(&qword_100126758);
  v10 = __chkstk_darwin(v9 - 8);
  v232 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v214 - v12;
  v267 = sub_100007BC0(&qword_100126740);
  v215 = *(v267 - 8);
  v14 = __chkstk_darwin(v267 - 8);
  v222 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v214 - v17;
  __chkstk_darwin(v16);
  v230 = &v214 - v19;
  v20 = sub_100007BC0(&qword_100126760);
  v21 = __chkstk_darwin(v20 - 8);
  v223 = &v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v256 = &v214 - v24;
  v25 = __chkstk_darwin(v23);
  v260 = &v214 - v26;
  __chkstk_darwin(v25);
  v259 = &v214 - v27;
  v28 = sub_100007BC0(&qword_1001203B8);
  v29 = __chkstk_darwin(v28 - 8);
  v251 = (&v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v240 = &v214 - v31;
  v266 = sub_1000DA084();
  v257 = *(v266 - 8);
  v32 = __chkstk_darwin(v266);
  v229 = &v214 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v228 = &v214 - v35;
  __chkstk_darwin(v34);
  v262 = &v214 - v36;
  v37 = sub_100007BC0(&qword_100120AC8);
  __chkstk_darwin(v37);
  v265 = (&v214 - v38);
  v39 = sub_100007BC0(&qword_100126730);
  __chkstk_darwin(v39);
  v41 = &v214 - v40;
  v264 = sub_100007BC0(&qword_100126768);
  __chkstk_darwin(v264);
  v43 = &v214 - v42;
  v44 = a1;
  v45 = sub_100020B38();
  v46 = v45;
  v244 = v13;
  v268 = v39;
  if (v45)
  {
    if (v45 <= 0)
    {
      v55 = _swiftEmptyArrayStorage;
    }

    else
    {
      v47 = v41;
      sub_100007BC0(&qword_1001205E0);
      v48 = v46;
      v49 = *(v257 + 72);
      v50 = (*(v257 + 80) + 32) & ~*(v257 + 80);
      v51 = v48;
      v52 = swift_allocObject();
      result = j__malloc_size(v52);
      if (!v49)
      {
        goto LABEL_116;
      }

      if (result - v50 == 0x8000000000000000 && v49 == -1)
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        return result;
      }

      v54 = 2 * ((result - v50) / v49);
      v55 = v52;
      v46 = v51;
      v52[2] = v51;
      v52[3] = v54;
      v41 = v47;
    }
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
  }

  v56 = *(v257 + 80);
  v263 = *(v55 + 3);

  sub_100007F58(v44, v41, &qword_100126730);
  v57 = v265;
  sub_10001865C(v41, v265, &qword_100120AC8);
  sub_100007F58(v57, v43, &qword_100120AC8);
  v58 = &v43[*(sub_100007BC0(&qword_100126748) + 36)];
  v216 = v37;
  v59 = *(v37 + 32);
  v60 = v43;
  v61 = *(v57 + v59);
  v62 = sub_1000DC8E4();
  v63 = *(v61 + 36);
  result = sub_1000080B0(v57, &qword_100120AC8);
  *v58 = v62;
  *(v58 + 1) = v63;
  v241 = v58;
  v58[16] = 0;
  v64 = &v41[*(v268 + 11)];
  v65 = *v64;
  v66 = *(v64 + 1);
  v67 = *(v264 + 44);
  v245 = v60;
  v68 = (v60 + v67);
  v243 = v65;
  *v68 = v65;
  v68[1] = v66;
  v242 = v66;
  if (v46 < 0)
  {
    goto LABEL_114;
  }

  v69 = v62;
  v224 = v56;
  v265 = v55;
  v233 = (v56 + 32) & ~v56;
  v70 = v55 + v233;
  v239 = v18;
  if (v46)
  {
    v71 = 0;
    v72 = *(v245 + *(v216 + 32));
    v250 = v72 + 64;
    v73 = v257;
    v254 = (v257 + 32);
    v218 = (v257 + 8);
    v248 = v215 + 48;
    v249 = (v215 + 56);
    v247 = v257 + 56;
    v246 = (v257 + 48);
    v238 = v46;
    v263 = (v263 >> 1) - v46;
    v217 = v72 + 72;
    v74 = v240;
    v75 = v266;
    v76 = v223;
    v255 = v72;
    while (1)
    {
      v77 = *(v72 + 36);
      if (v77 != v63)
      {
        goto LABEL_96;
      }

      v78 = 1 << *(v72 + 32);
      v268 = v70;
      v258 = v71;
      if (v69 == v78)
      {
        v79 = v69;
        v80 = 1;
        v264 = v63;
      }

      else
      {
        if ((v69 & 0x8000000000000000) != 0 || v69 >= v78)
        {
          goto LABEL_104;
        }

        if ((*(v250 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
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
          goto LABEL_117;
        }

        v234 = 1 << v69;
        v235 = v69 >> 6;
        v264 = v77;
        v81 = *(v72 + 56);
        v82 = *(*(v72 + 48) + 8 * v69);
        v261 = v69;
        v83 = (v81 + 32 * v69);
        v84 = v83[1];
        v237 = *v83;
        v236 = v84;
        v86 = v83[2];
        v85 = v83[3];
        v87 = v245;
        v88 = v252;
        sub_100007F58(v245, v252, &qword_100126750);
        v89 = type metadata accessor for CalendarBinningUnit(0);
        v90 = (*(*(v89 - 8) + 48))(v88, 1, v89);
        v253 = v85;
        if (v90 == 1)
        {
          v221 = v86;

          sub_1000080B0(v252, &qword_100126750);
          v91 = sub_100007BC0(&qword_100120AE8);
          v92 = *(v91 - 8);
          (*(v92 + 56))(v232, 1, 1, v91);
          v93 = v228;
          sub_1000D9E14();
          v94 = v229;
          sub_1000D9E14();
          sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date);
          v75 = v266;
          result = sub_1000DBE14();
          if ((result & 1) == 0)
          {
            goto LABEL_113;
          }

          v95 = *v254;
          v96 = v225;
          (*v254)(v225, v93, v75);
          v97 = v227;
          (v95)(v96 + *(v227 + 48), v94, v75);
          v98 = v226;
          sub_100007F58(v96, v226, &qword_100121B98);
          v220 = v92;
          v99 = *(v97 + 48);
          v100 = v222;
          (v95)(v222, v98, v75);
          v219 = v91;
          v101 = *v218;
          v102 = v98 + v99;
          v72 = v255;
          (*v218)(v102, v75);
          sub_10001865C(v96, v98, &qword_100121B98);
          v103 = *(v97 + 48);
          v76 = v223;
          v104 = v219;
          (v95)(v100 + *(v219 + 36), v98 + v103, v75);
          v73 = v257;
          v101(v98, v75);
          v18 = v239;
          v105 = v232;
          v201 = (*(v220 + 48))(v232, 1, v104) == 1;
          v74 = v240;
          v106 = v105;
          v107 = v221;
          if (!v201)
          {
            sub_1000080B0(v106, &qword_100126758);
          }
        }

        else
        {
          result = type metadata accessor for UniformDateBins(0);
          v108 = *(v87 + *(result + 20));
          v109 = __OFADD__(v108, v82);
          v110 = v108 + v82;
          if (v109)
          {
            goto LABEL_112;
          }

          v107 = v86;

          v111 = v232;
          v112 = v110;
          v113 = v252;
          sub_1000D6E44(v112, v232);
          sub_1000C922C(v113, type metadata accessor for CalendarBinningUnit);
          v114 = sub_100007BC0(&qword_100120AE8);
          (*(*(v114 - 8) + 56))(v111, 0, 1, v114);
          v115 = v111;
          v100 = v222;
          sub_10001865C(v115, v222, &qword_100120AE8);
          v75 = v266;
          v73 = v257;
          v76 = v223;
        }

        sub_10001865C(v100, v18, &qword_100120AE8);
        v116 = &v18[*(v267 + 48)];
        v117 = v236;
        *v116 = v237;
        *(v116 + 1) = v117;
        v118 = v253;
        *(v116 + 2) = v107;
        *(v116 + 3) = v118;
        result = sub_10001865C(v18, v256, &qword_100126740);
        v119 = 1 << *(v72 + 32);
        if (v261 >= v119)
        {
          goto LABEL_106;
        }

        v120 = *(v250 + 8 * v235);
        if ((v120 & v234) == 0)
        {
          goto LABEL_107;
        }

        v121 = v264;
        if (*(v72 + 36) != v264)
        {
          goto LABEL_108;
        }

        v122 = v120 & (-2 << (v261 & 0x3F));
        if (v122)
        {
          v119 = __clz(__rbit64(v122)) | v261 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v123 = v235 << 6;
          v124 = v235 + 1;
          v125 = (v217 + 8 * v235);
          while (v124 < (v119 + 63) >> 6)
          {
            v127 = *v125++;
            v126 = v127;
            v123 += 64;
            ++v124;
            if (v127)
            {
              v119 = __clz(__rbit64(v126)) + v123;
              break;
            }
          }
        }

        v80 = 0;
        v128 = v241;
        *v241 = v119;
        v128[1] = v121;
        v79 = v119;
        *(v128 + 16) = 0;
      }

      v129 = 1;
      v130 = v256;
      v131 = v267;
      (*v249)(v256, v80, 1, v267);
      sub_10001865C(v130, v76, &qword_100126760);
      v132 = (*v248)(v76, 1, v131);
      v133 = v251;
      if (v132 != 1)
      {
        sub_10001865C(v76, v18, &qword_100126740);
        v243(v18);
        v75 = v266;
        sub_1000080B0(v18, &qword_100126740);
        v129 = 0;
      }

      (*v247)(v133, v129, 1, v75);
      result = (*v246)(v133, 1, v75);
      if (result == 1)
      {
        goto LABEL_118;
      }

      v134 = v258 + 1;
      v135 = v268;
      result = (*(v73 + 32))(v268, v133, v75);
      v70 = &v135[*(v73 + 72)];
      v63 = v264;
      v201 = v134 == v238;
      v69 = v79;
      v71 = v134;
      v72 = v255;
      if (v201)
      {
        v268 = v70;
        LODWORD(v63) = v264;
        goto LABEL_42;
      }
    }
  }

  v268 = v55 + v233;
  v263 >>= 1;
  v74 = v240;
  v73 = v257;
LABEL_42:
  v136 = *(v245 + *(v216 + 32));
  v137 = *(v136 + 36);
  if (v137 == v63)
  {
    v255 = v136 + 64;
    v264 = v73 + 32;
    v235 = v73 + 8;
    v253 = (v215 + 48);
    v254 = (v215 + 56);
    v251 = (v73 + 48);
    v252 = (v73 + 56);
    v234 = v136 + 72;
    v258 = v136;
    do
    {
      v138 = 1 << *(v136 + 32);
      if (v69 == v138)
      {
        v139 = v69;
      }

      else
      {
        if ((v69 & 0x8000000000000000) != 0 || v69 >= v138)
        {
          goto LABEL_97;
        }

        if ((*(v255 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
          goto LABEL_98;
        }

        v140 = v74;
        v141 = v18;
        v247 = 1 << v69;
        v248 = v69 >> 6;
        v246 = v137;
        v142 = *(v136 + 56);
        v143 = *(*(v136 + 48) + 8 * v69);
        v261 = v69;
        v144 = (v142 + 32 * v69);
        v145 = *v144;
        v249 = v144[1];
        v250 = v145;
        v147 = v144[2];
        v146 = v144[3];
        v148 = v245;
        v149 = v231;
        sub_100007F58(v245, v231, &qword_100126750);
        v150 = type metadata accessor for CalendarBinningUnit(0);
        v151 = (*(*(v150 - 8) + 48))(v149, 1, v150);
        v256 = v146;
        if (v151 == 1)
        {
          v238 = v147;

          sub_1000080B0(v149, &qword_100126750);
          v152 = sub_100007BC0(&qword_100120AE8);
          v153 = *(v152 - 8);
          (*(v153 + 56))(v244, 1, 1, v152);
          v154 = v228;
          sub_1000D9E14();
          v155 = v229;
          sub_1000D9E14();
          sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date);
          v156 = v266;
          result = sub_1000DBE14();
          if ((result & 1) == 0)
          {
            goto LABEL_110;
          }

          v157 = *v264;
          v158 = v225;
          (*v264)(v225, v154, v156);
          v159 = v227;
          v157(v158 + *(v227 + 48), v155, v156);
          v160 = v226;
          sub_100007F58(v158, v226, &qword_100121B98);
          v237 = v152;
          v236 = *(v159 + 48);
          v161 = v230;
          v157(v230, v160, v156);
          v162 = v153;
          v163 = *v235;
          (*v235)(v160 + v236, v156);
          v164 = v158;
          v165 = v161;
          v73 = v257;
          sub_10001865C(v164, v160, &qword_100121B98);
          v166 = *(v159 + 48);
          v167 = v237;
          v157(v165 + *(v237 + 36), (v160 + v166), v156);
          v163(v160, v156);
          v136 = v258;
          v168 = (*(v162 + 48))(v244, 1, v167);
          v18 = v239;
          v74 = v240;
          v169 = v238;
          if (v168 != 1)
          {
            sub_1000080B0(v244, &qword_100126758);
          }
        }

        else
        {
          result = type metadata accessor for UniformDateBins(0);
          v170 = *(v148 + *(result + 20));
          v109 = __OFADD__(v170, v143);
          v171 = v170 + v143;
          if (v109)
          {
            goto LABEL_109;
          }

          v169 = v147;

          v172 = v244;
          sub_1000D6E44(v171, v244);
          sub_1000C922C(v149, type metadata accessor for CalendarBinningUnit);
          v173 = sub_100007BC0(&qword_100120AE8);
          (*(*(v173 - 8) + 56))(v172, 0, 1, v173);
          v165 = v230;
          sub_10001865C(v172, v230, &qword_100120AE8);
          v18 = v141;
          v73 = v257;
          v74 = v140;
        }

        sub_10001865C(v165, v18, &qword_100120AE8);
        v174 = &v18[*(v267 + 48)];
        v175 = v249;
        *v174 = v250;
        *(v174 + 1) = v175;
        v176 = v256;
        *(v174 + 2) = v169;
        *(v174 + 3) = v176;
        result = sub_10001865C(v18, v259, &qword_100126740);
        v139 = 1 << *(v136 + 32);
        if (v261 >= v139)
        {
          goto LABEL_99;
        }

        v177 = *(v255 + 8 * v248);
        if ((v177 & v247) == 0)
        {
          goto LABEL_100;
        }

        v63 = v246;
        if (*(v136 + 36) != v246)
        {
          goto LABEL_101;
        }

        v178 = v177 & (-2 << (v261 & 0x3F));
        if (v178)
        {
          v139 = __clz(__rbit64(v178)) | v261 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v179 = v248 << 6;
          v180 = v248 + 1;
          v181 = (v234 + 8 * v248);
          while (v180 < (v139 + 63) >> 6)
          {
            v183 = *v181++;
            v182 = v183;
            v179 += 64;
            ++v180;
            if (v183)
            {
              v139 = __clz(__rbit64(v182)) + v179;
              break;
            }
          }
        }

        v184 = v241;
        *v241 = v139;
        v184[1] = v63;
        *(v184 + 16) = 0;
      }

      v185 = 1;
      v186 = v259;
      v187 = v267;
      (*v254)(v259);
      v188 = v186;
      v189 = v260;
      sub_10001865C(v188, v260, &qword_100126760);
      if ((*v253)(v189, 1, v187) != 1)
      {
        sub_10001865C(v260, v18, &qword_100126740);
        v243(v18);
        sub_1000080B0(v18, &qword_100126740);
        v185 = 0;
      }

      v190 = v266;
      (*v252)(v74, v185, 1, v266);
      if ((*v251)(v74, 1, v190) == 1)
      {
        goto LABEL_91;
      }

      v191 = *v264;
      result = (*v264)(v262, v74, v190);
      if (v263)
      {
        v192 = v265;
        v193 = v263 - 1;
        if (__OFSUB__(v263, 1))
        {
          goto LABEL_95;
        }
      }

      else
      {
        v194 = v265;
        v195 = *(v265 + 3);
        if (((v195 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_102;
        }

        v196 = v195 & 0xFFFFFFFFFFFFFFFELL;
        if (v196 <= 1)
        {
          v197 = 1;
        }

        else
        {
          v197 = v196;
        }

        sub_100007BC0(&qword_1001205E0);
        v198 = *(v73 + 72);
        v199 = v233;
        v192 = swift_allocObject();
        result = j__malloc_size(v192);
        if (!v198)
        {
          goto LABEL_103;
        }

        v200 = result - v199;
        v201 = result - v199 == 0x8000000000000000 && v198 == -1;
        if (v201)
        {
          goto LABEL_111;
        }

        v202 = v199;
        v203 = v200 / v198;
        *(v192 + 2) = v197;
        *(v192 + 3) = 2 * (v200 / v198);
        v204 = v192 + v202;
        v205 = *(v194 + 16);
        v206 = v194;
        v207 = *(v194 + 24) >> 1;
        v208 = v207 * v198;
        if (v205)
        {
          if (v192 < v206 || v204 >= v206 + v233 + v208)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v192 != v265)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v265[2] = 0.0;
        }

        v268 = &v204[v208];

        v209 = (v203 & 0x7FFFFFFFFFFFFFFFLL) - v207;
        v18 = v239;
        v74 = v240;
        v190 = v266;
        v73 = v257;
        v109 = __OFSUB__(v209, 1);
        v193 = v209 - 1;
        if (v109)
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
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
          goto LABEL_105;
        }
      }

      v263 = v193;
      v210 = v268;
      result = (v191)(v268, v262, v190);
      v268 = &v210[*(v73 + 72)];
      v136 = v258;
      v137 = *(v258 + 36);
      v265 = v192;
      v69 = v139;
    }

    while (v137 == v63);
  }

  __break(1u);
LABEL_91:
  sub_1000080B0(v245, &qword_100126768);
  sub_1000080B0(v74, &qword_1001203B8);
  result = v265;
  v211 = *(v265 + 3);
  if (v211 >= 2)
  {
    v212 = v211 >> 1;
    v109 = __OFSUB__(v212, v263);
    v213 = v212 - v263;
    if (v109)
    {
      goto LABEL_115;
    }

    *(v265 + 2) = v213;
  }

  return result;
}

uint64_t sub_1000CB29C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1000CB2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_1000DC684();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1000DA084();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();
  v7 = sub_1000DA204();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v3[17] = *(v8 + 64);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB43C, 0, 0);
}

uint64_t sub_1000CB43C()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v26 = v0[14];
  v27 = v0[17];
  v4 = v0[11];
  v24 = v0[12];
  v31 = v0[10];
  v29 = v0[9];
  v30 = v0[8];
  v22 = v0[6];
  v23 = v0[7];
  v28 = v0[5];
  v25 = swift_allocObject();
  v0[19] = v25;
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = _swiftEmptyArrayStorage;
  v21 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  v0[20] = v21;
  sub_100007BC0(&qword_1001267C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000DFEF0;
  *(v5 + 32) = NLTagSchemeScript;
  v6 = objc_allocWithZone(NLTagger);
  type metadata accessor for NLTagScheme(0);
  v7 = NLTagSchemeScript;
  isa = sub_1000DC124().super.isa;

  v9 = [v6 initWithTagSchemes:isa];
  v0[21] = v9;
  v10 = v9;
  v20 = v9;

  (*(v2 + 16))(v1, v22, v3);
  (*(v24 + 16))(v26, v23, v4);
  v11 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v12 = (v27 + *(v24 + 80) + v11) & ~*(v24 + 80);
  v13 = swift_allocObject();
  v0[22] = v13;
  *(v13 + 2) = v28;
  *(v13 + 3) = v21;
  *(v13 + 4) = v10;
  *(v13 + 5) = v25;
  (*(v2 + 32))(&v13[v11], v1, v3);
  (*(v24 + 32))(&v13[v12], v26, v4);
  (*(v29 + 104))(v31, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v30);
  v14 = v28;
  v15 = v21;
  v16 = v20;

  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_1000CB75C;
  v18 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v18, sub_1000CD3D8, v13, &type metadata for () + 8);
}

uint64_t sub_1000CB75C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    return _swift_task_switch(sub_1000CB8B4, 0, 0);
  }
}

uint64_t sub_1000CB8B4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  swift_beginAccess();
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];

  v7 = *(v0 + 8);

  return v7(v3, v4, v5, v6);
}

uint64_t sub_1000CB990(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1000DBEF4();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_1000DC684();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000CBAB8, 0, 0);
}

uint64_t sub_1000CBAB8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = swift_allocObject();
  v0[15] = v5;
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v7 = v4;

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1000CBC0C;
  v9 = v0[14];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_1000CD028, v6, &type metadata for () + 8);
}

uint64_t sub_1000CBC0C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000CC1B8;
  }

  else
  {
    v5 = sub_1000CBDA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000CBDA0()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v19 = v0[8];
  swift_beginAccess();
  v0[5] = *(v1 + 16);
  sub_100007BC0(&qword_100126770);
  sub_100007BC0(&qword_100126778);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000DE2C0;
  swift_getKeyPath();

  sub_1000D9B74();
  swift_getKeyPath();
  sub_1000DBEE4();
  (*(v4 + 16))(v3, v2, v19);
  sub_1000D9B64();
  (*(v4 + 8))(v2, v19);
  v0[6] = v5;
  sub_100007BC0(&qword_100126780);
  sub_100007BC0(&qword_100126788);
  sub_1000391D4(&qword_100126790, &qword_100126780);
  sub_1000391D4(&qword_100126798, &qword_100126788);
  sub_1000391D4(&qword_1001267A0, &qword_100126778);
  v6 = sub_1000DC074();

  v7 = *(v6 + 16);
  if (v7)
  {
    v20 = v0;
    result = sub_100017A54(0, v7, 0);
    v9 = 0;
    v10 = (v6 + 48);
    v21 = v6;
    while (v9 < *(v6 + 16))
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      sub_100027DC8(v11);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      v16 = v12;

      if (*&v15 >= *&v14 >> 1)
      {
        result = sub_100017A54((*&v14 > 1uLL), *&v15 + 1, 1);
      }

      ++v9;
      *&_swiftEmptyArrayStorage[2] = *&v15 + 1;
      v17 = &_swiftEmptyArrayStorage[5 * *&v15];
      *(v17 + 4) = v11;
      v17[5] = 0.0;
      *(v17 + 48) = 1;
      *(v17 + 7) = v13;
      *(v17 + 8) = v16;
      v10 += 3;
      v6 = v21;
      if (v7 == v9)
      {
        v0 = v20;

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:

    v18 = v0[1];

    return v18(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1000CC1B8()
{
  if (qword_10011FBE8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v1 = sub_1000DAFF4();
    sub_100007EBC(v1, qword_100126710);
    swift_errorRetain();
    v2 = sub_1000DAFD4();
    v3 = sub_1000DC4C4();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch events for streaks: %@", v4, 0xCu);
      sub_1000080B0(v5, &qword_100120A80);
    }

    else
    {
    }

    v7 = *(*&v0 + 120);
    v8 = *(*&v0 + 80);
    v9 = *(*&v0 + 88);
    v11 = *(*&v0 + 64);
    v10 = *(*&v0 + 72);
    swift_beginAccess();
    *(*&v0 + 40) = *(v7 + 16);
    sub_100007BC0(&qword_100126770);
    sub_100007BC0(&qword_100126778);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000DE2C0;
    swift_getKeyPath();

    sub_1000D9B74();
    swift_getKeyPath();
    sub_1000DBEE4();
    (*(v10 + 16))(v8, v9, v11);
    sub_1000D9B64();
    (*(v10 + 8))(v9, v11);
    *(*&v0 + 48) = v12;
    sub_100007BC0(&qword_100126780);
    sub_100007BC0(&qword_100126788);
    sub_1000391D4(&qword_100126790, &qword_100126780);
    sub_1000391D4(&qword_100126798, &qword_100126788);
    sub_1000391D4(&qword_1001267A0, &qword_100126778);
    v13 = sub_1000DC074();

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v25 = v0;
    sub_100017A54(0, v14, 0);
    v15 = 0;
    v16 = (v13 + 48);
    v26 = v13;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      sub_100027DC8(v17);
      v0 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      v21 = v18;

      if (*&v0 >= *&v20 >> 1)
      {
        sub_100017A54((*&v20 > 1uLL), *&v0 + 1, 1);
      }

      ++v15;
      *&_swiftEmptyArrayStorage[2] = *&v0 + 1;
      v22 = &_swiftEmptyArrayStorage[5 * *&v0];
      *(v22 + 4) = v17;
      v22[5] = 0.0;
      *(v22 + 48) = 1;
      *(v22 + 7) = v19;
      *(v22 + 8) = v21;
      v16 += 3;
      v13 = v26;
      if (v14 == v15)
      {
        v0 = v25;

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:

  v23 = *(*&v0 + 8);

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_1000CC6F8(uint64_t a1)
{
  v1[2] = a1;
  sub_100007BC0(&qword_100126728);
  v1[3] = swift_task_alloc();
  v1[4] = sub_100007BC0(&qword_100126730);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_100007BC0(&qword_100126738);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100007BC0(&qword_100126740);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_100007BC0(&qword_100120AC8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_100007BC0(&qword_100126748);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000CC92C, 0, 0);
}

uint64_t sub_1000CC92C()
{
  v69 = v0;
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[7];
  v64 = v0[6];
  v55 = v0[2];
  v53 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v54 = *(v53 + 28);
  sub_100007F58(v55 + v54, v2, &qword_100120AC8);
  sub_100007F58(v2, v1, &qword_100120AC8);
  v5 = *(v2 + *(v3 + 32));
  v6 = sub_1000DC8E4();
  v7 = *(v5 + 36);
  result = sub_1000080B0(v2, &qword_100120AC8);
  v9 = 0;
  v10 = *(v1 + *(v3 + 32));
  v62 = v4;
  v66 = (v4 + 48);
  v67 = (v4 + 56);
  v11 = &_swiftEmptyDictionarySingleton;
  v56 = v10;
  do
  {
    if (*(v10 + 36) != v7)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    v12 = v7;
    v13 = v0[16];
    v61 = v9;
    if (v6 == 1 << *(v10 + 32))
    {
      v45 = v13 + *(v0[15] + 36);
      *v45 = v6;
      *(v45 + 8) = v7;
      *(v45 + 16) = 0;
      sub_1000080B0(v13, &qword_100126748);
      v68[0] = sub_1000B5D80(v11);

      sub_1000C5440(v68);
      v47 = v0[4];
      v46 = v0[5];
      v48 = v0[3];

      v19 = v68[0];
      sub_100007F58(v55 + v54, v48, &qword_100120AC8);
      sub_10001865C(v48, v46, &qword_100120AC8);
      v49 = (v46 + *(v47 + 44));
      *v49 = sub_1000C39A4;
      v49[1] = 0;
      v68[0] = sub_1000C996C(v46);
      sub_1000C536C(v68, sub_1000C5E20, sub_1000C5674);
LABEL_35:
      v50 = v0[2];
      sub_1000080B0(v0[5], &qword_100126730);
      v65 = v68[0];
      v51 = sub_1000B6068(v50 + *(v53 + 24));

      v52 = v0[1];

      return v52(v19, v65, v61, v51);
    }

    v15 = v0[11];
    v14 = v0[12];
    v16 = v7;
    v17 = v10;
    v18 = sub_1000B8398(v68, v6, v16, 0, v10);
    sub_1000D5E8C(v18, v15);
    v60 = v68[1];
    v19 = v68[3];
    sub_10001865C(v15, v14, &qword_100120AE8);
    v20 = sub_100020E20(v6, v12, 0, v17);
    v58 = v21;
    v59 = v20;
    v57 = v22;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v11;
    v24 = v19[2];
    v63 = v19;

    v25 = 0;
    while (1)
    {
      if (v25 == v24)
      {
        v30 = 1;
        v25 = v24;
      }

      else
      {
        if (v25 >= v63[2])
        {
          goto LABEL_32;
        }

        sub_1000C5228(v63 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v25, v0[10], type metadata accessor for InsightsDataManager.TopAssetCategory);
        v30 = 0;
        ++v25;
      }

      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[6];
      (*v67)(v31, v30, 1, v33);
      sub_10001865C(v31, v32, &qword_100126738);
      if ((*v66)(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = v0[8];
      sub_1000CDBD8(v0[9], v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v35 = *(v34 + *(v64 + 20));
      v36 = *(v34 + *(v64 + 24));
      sub_1000C922C(v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v19 = v11;
      v38 = sub_100063398(v35);
      v39 = v11[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v42 = v37;
      if (v11[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v37 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v19 = v68;
          sub_1000D197C();
          v11 = v68[0];
          if ((v42 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1000CFA68(v41, isUniquelyReferenced_nonNull_native & 1);
        v11 = v68[0];
        v19 = v68[0];
        v43 = sub_100063398(v35);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_27;
        }

        v38 = v43;
        if ((v42 & 1) == 0)
        {
LABEL_5:
          v11[(v38 >> 6) + 8] |= 1 << v38;
          *(v11[6] + v38) = v35;
          *(v11[7] + 8 * v38) = v36;
          v26 = v11 + 2;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_33;
          }

          goto LABEL_6;
        }
      }

      v26 = (v11[7] + 8 * v38);
      v29 = *v26 + v36;
      if (__OFADD__(*v26, v36))
      {
        goto LABEL_34;
      }

LABEL_6:
      *v26 = v29;
      isUniquelyReferenced_nonNull_native = 1;
    }

    swift_bridgeObjectRelease_n();

    v9 = v60 + v61;
    if (__OFADD__(v61, v60))
    {
      goto LABEL_39;
    }

    result = sub_1000080B0(v0[12], &qword_100120AE8);
    v7 = v58;
    v6 = v59;
    v10 = v56;
  }

  while ((v57 & 1) == 0);
  __break(1u);
LABEL_27:

  return sub_1000DCCC4();
}

uint64_t sub_1000CCFB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CCFE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000CD088(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008068(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000CD0CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*a1 & 0xC000000000000001) != 0)
  {
    result = sub_1000DC934();
  }

  else
  {
    result = *(*a1 + 16);
  }

  *a2 = result;
  return result;
}

id sub_1000CD120@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 poiCategory];
  *a2 = result;
  return result;
}

uint64_t sub_1000CD15C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DBF44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CD190()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000CD1F8(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_1000CD208@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000CD238()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000CD270()
{
  v1 = sub_1000DA204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000DA084();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_1000CD3D8()
{
  sub_1000DA204();
  sub_1000DA084();
  sub_1000BEC28();
}

uint64_t sub_1000CD4C0()
{
  v19 = sub_1000DA084();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v17 = (v2 + 16) & ~v2;
  v15 = (*(v1 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = sub_1000DA204();
  v3 = *(v18 - 8);
  v4 = *(v3 + 80);
  v16 = (v15 + v4 + 8) & ~v4;
  v5 = (*(v3 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1000D9B24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v2 | v4 | v8;
  v12 = (v10 + v8 + v9) & ~v8;
  (*(v1 + 8))(v0 + v17, v19);

  (*(v3 + 8))(v0 + v16, v18);

  v13 = *(v7 + 8);
  v13(v0 + v9, v6);
  v13(v0 + v12, v6);

  return _swift_deallocObject(v0, v12 + v10, v11 | 7);
}

void sub_1000CD6EC()
{
  v1 = *(sub_1000DA084() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1000DA204() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1000D9B24() - 8);
  v8 = *(v7 + 80);
  sub_1000BF41C((v0 + v2), *(v0 + v3), v0 + v5, *(v0 + v6), v0 + ((v6 + v8 + 8) & ~v8), v0 + ((*(v7 + 64) + v8 + ((v6 + v8 + 8) & ~v8)) & ~v8));
}

uint64_t sub_1000CD914()
{
  v1 = sub_1000DA084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000DA204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_1000CDA64(uint64_t a1@<X8>)
{
  v3 = *(sub_1000DA084() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1000DA204() - 8);
  sub_1000BC864(*(v1 + 16), (v1 + v4), v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_1000CDBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CDC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000DA244();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000CDD28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000DA244();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1000CDDE4()
{
  sub_1000DA244();
  if (v0 <= 0x3F)
  {
    sub_1000CDE90();
    if (v1 <= 0x3F)
    {
      sub_100028280();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000CDE90()
{
  if (!qword_1001268A8)
  {
    v0 = sub_1000DBD94();
    if (!v1)
    {
      atomic_store(v0, &qword_1001268A8);
    }
  }
}

uint64_t sub_1000CDF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1000DA244();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000CDF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1000DA244();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000CE008()
{
  result = sub_1000DA244();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000CE094(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v127 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v124 = v11;
  if (!v14)
  {
    goto LABEL_8;
  }

  while (2)
  {
    while (2)
    {
      v22 = v16;
LABEL_16:
      v25 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(a1 + 48) + 8 * v26);
      sub_10000800C(*(a1 + 56) + 32 * v26, &v129);
      *&v131 = v27;
      sub_100007EAC(&v129, (&v131 + 8));
      v28 = v27;
LABEL_17:
      v134 = v131;
      v135 = v132;
      v136 = v133;
      v29 = v131;
      if (!v131)
      {

        if (*(*&v10 + 16))
        {
          v102 = sub_100064A78(NSForegroundColorAttributeName);
          v104 = a9;
          v103 = a3;
          v105 = a2;
          if (v106)
          {
            sub_10000800C(*(*&v10 + 56) + 32 * v102, &v134);
            sub_1000D2254(&v134);
            if (!*(*&v10 + 16))
            {
              goto LABEL_89;
            }

LABEL_87:
            v109 = sub_100064A78(NSFontAttributeName);
            if (v110)
            {
              sub_10000800C(*(*&v10 + 56) + 32 * v109, &v134);
              sub_1000D2254(&v134);
LABEL_92:
              sub_1000CEE1C(sub_100064A78, &qword_100123960, &v134);
              sub_1000D2254(&v134);
              type metadata accessor for Key(0);
              sub_1000D22BC();
              isa = sub_1000DBD64().super.isa;
              [v104 setAttributes:isa range:{v105, v103}];

              return;
            }

LABEL_89:
            v134 = 0u;
            v135 = 0u;
            sub_1000D2254(&v134);
            v111 = a8;
            *(&v135 + 1) = sub_100008068(0, &qword_10011FD18);
            if (!a8)
            {
              v111 = a6;
            }

            *&v134 = v111;
            sub_100007EAC(&v134, &v131);
            v112 = v111;
            v113 = v127;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v129 = v113;
            sub_1000D0C0C(&v131, NSFontAttributeName, isUniquelyReferenced_nonNull_native, sub_100064A78, &qword_100123960, &unk_1000E3530, type metadata accessor for Key);
            v127 = *&v129;
            goto LABEL_92;
          }

          v10 = v127;
        }

        else
        {
          v104 = a9;
          v103 = a3;
          v105 = a2;
        }

        v134 = 0u;
        v135 = 0u;
        sub_1000D2254(&v134);
        *(&v135 + 1) = sub_100008068(0, &qword_10011FD20);
        *&v134 = a7;
        sub_100007EAC(&v134, &v131);
        v107 = a7;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *&v129 = v10;
        sub_1000D0C0C(&v131, NSForegroundColorAttributeName, v108, sub_100064A78, &qword_100123960, &unk_1000E3530, type metadata accessor for Key);
        v10 = *&v129;
        v127 = *&v129;
        if (!*(v129 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      sub_100007EAC((&v134 + 8), &v131);
      v30 = sub_1000DBF44();
      v32 = v31;
      if (v30 == sub_1000DBF44() && v32 == v33)
      {

        v34 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
      }

      else
      {
        v35 = sub_1000DCC74();

        v34 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
        if ((v35 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_10000800C(&v131, &v129);
      v36 = sub_100008068(0, &qword_10011FD18);
      if (swift_dynamicCast())
      {
        v122 = v128[0];
        v37 = [v122 fontDescriptor];
        v38 = v34;
        v39 = [v37 *&v34[310]];

        if (v39 && (v40 = [a6 fontDescriptor], v41 = objc_msgSend(a6, "fontDescriptor"), v42 = objc_msgSend(v41, *&v38[310]), v41, v43 = objc_msgSend(v40, "fontDescriptorWithSymbolicTraits:", v42 | v39), v40, v43))
        {
          v44 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];

          v45 = v122;
        }

        else
        {
          v45 = v122;

          v44 = a6;
        }

        v130 = v36;
        *&v129 = v44;
        sub_100007EAC(&v129, v128);
        v69 = v44;
        v70 = v127;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v126 = v70;
        v73 = sub_100064A78(v29);
        v74 = *(*&v70 + 16);
        v75 = (v72 & 1) == 0;
        v76 = v74 + v75;
        if (__OFADD__(v74, v75))
        {
          goto LABEL_94;
        }

        v77 = v72;
        if (*(*&v70 + 24) < v76)
        {
          sub_1000CEED8(v76, v71, &qword_100123960);
          v78 = sub_100064A78(v29);
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_100;
          }

          v73 = v78;
          v10 = v126;
          if ((v77 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_56:
          v80 = (*(*&v10 + 56) + 32 * v73);
          sub_100007FC0(v80);
          sub_100007EAC(v128, v80);

          sub_100007FC0(&v131);
LABEL_70:
          v127 = v10;
          goto LABEL_78;
        }

        if (v71)
        {
          v10 = v126;
          if (v72)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_1000D13F4(&qword_100123960);
          v10 = v126;
          if (v77)
          {
            goto LABEL_56;
          }
        }

LABEL_68:
        *(*&v10 + 8 * (v73 >> 6) + 64) |= 1 << v73;
        *(*(*&v10 + 48) + 8 * v73) = v29;
        sub_100007EAC(v128, (*(*&v10 + 56) + 32 * v73));

        sub_100007FC0(&v131);
        v93 = *(*&v10 + 16);
        v65 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v65)
        {
          goto LABEL_96;
        }

        *(*&v10 + 16) = v94;
        goto LABEL_70;
      }

LABEL_26:
      v46 = sub_1000DBF44();
      v48 = v47;
      if (v46 == sub_1000DBF44() && v48 == v49)
      {
      }

      else
      {
        v50 = sub_1000DCC74();

        if ((v50 & 1) == 0)
        {
LABEL_38:
          v54 = sub_1000DBF44();
          v56 = v55;
          if (v54 == sub_1000DBF44() && v56 == v57)
          {
          }

          else
          {
            v58 = sub_1000DCC74();

            if ((v58 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          sub_10000800C(&v131, &v129);
          sub_100008068(0, &qword_10011FE18);
          if (swift_dynamicCast())
          {
            v17 = v128[0];
            v18 = sub_1000469D8();
            [v18 setParagraphSpacingBefore:a4];
            sub_1000A7570();
            v130 = sub_100008068(0, &qword_10011FDA8);
            *&v129 = v18;
            sub_100007EAC(&v129, v128);
            v19 = v18;
            v20 = v127;
            v21 = swift_isUniquelyReferenced_nonNull_native();
            v126 = v20;
            sub_1000D0C0C(v128, NSParagraphStyleAttributeName, v21, sub_100064A78, &qword_100123960, &unk_1000E3530, type metadata accessor for Key);

            sub_100007FC0(&v131);
            v10 = v126;
            goto LABEL_6;
          }

LABEL_43:
          sub_10000800C(&v131, &v129);
          v59 = v127;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = *&v59;
          v61 = sub_100064A78(v29);
          v63 = *(*&v59 + 16);
          v64 = (v62 & 1) == 0;
          v65 = __OFADD__(v63, v64);
          v66 = v63 + v64;
          if (v65)
          {
            goto LABEL_95;
          }

          v67 = v62;
          if (*(*&v59 + 24) >= v66)
          {
            if ((v60 & 1) == 0)
            {
              v95 = v61;
              sub_1000D13F4(&qword_100123960);
              v61 = v95;
              v10 = *v128;
              if (v67)
              {
                goto LABEL_59;
              }

              goto LABEL_72;
            }
          }

          else
          {
            sub_1000CEED8(v66, v60, &qword_100123960);
            v61 = sub_100064A78(v29);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_100;
            }
          }

          v10 = *v128;
          if (v67)
          {
LABEL_59:
            v81 = (*(*&v10 + 56) + 32 * v61);
            sub_100007FC0(v81);
            sub_100007EAC(&v129, v81);

            sub_100007FC0(&v131);
LABEL_6:
            v127 = v10;
            v11 = v124;
            if (v14)
            {
              continue;
            }

            goto LABEL_8;
          }

LABEL_72:
          *(*&v10 + 8 * (v61 >> 6) + 64) |= 1 << v61;
          *(*(*&v10 + 48) + 8 * v61) = v29;
          sub_100007EAC(&v129, (*(*&v10 + 56) + 32 * v61));
          sub_100007FC0(&v131);
          v96 = *(*&v10 + 16);
          v65 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v65)
          {
            goto LABEL_97;
          }

          *(*&v10 + 16) = v97;
          goto LABEL_6;
        }
      }

      break;
    }

    sub_10000800C(&v131, &v129);
    v51 = sub_100008068(0, &qword_10011FD20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v52 = v128[0];
    *&v129 = 0;
    v128[0] = 0;
    v125 = 0;
    v126 = 0.0;
    [v52 getRed:&v129 green:v128 blue:&v126 alpha:&v125];
    v53 = *&v129;
    if (*&v129 > 0.001 || (v53 = *v128, *v128 > 0.001) || (v53 = v126, v126 > 0.001))
    {
      *&v129 = 0;
      v128[0] = 0;
      v125 = 0;
      v126 = 0.0;
      [v52 getRed:&v129 green:v128 blue:&v126 alpha:{&v125, v53}];
      if (*&v129 < 0.99 || *v128 < 0.99 || v126 < 0.99)
      {

        goto LABEL_38;
      }
    }

    v130 = v51;
    *&v129 = a7;
    sub_100007EAC(&v129, v128);
    v82 = a7;
    v83 = v127;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v83;
    v85 = sub_100064A78(NSForegroundColorAttributeName);
    v87 = *(*&v83 + 16);
    v88 = (v86 & 1) == 0;
    v65 = __OFADD__(v87, v88);
    v89 = v87 + v88;
    if (v65)
    {
      goto LABEL_98;
    }

    v90 = v86;
    if (*(*&v83 + 24) >= v89)
    {
      if ((v84 & 1) == 0)
      {
        v98 = v85;
        sub_1000D13F4(&qword_100123960);
        v85 = v98;
        v10 = v126;
        if (v90)
        {
          goto LABEL_66;
        }

        goto LABEL_75;
      }

LABEL_65:
      v10 = v126;
      if (v90)
      {
LABEL_66:
        v92 = (*(*&v10 + 56) + 32 * v85);
        sub_100007FC0(v92);
        sub_100007EAC(v128, v92);

        sub_100007FC0(&v131);
LABEL_77:
        v127 = v10;
LABEL_78:
        v11 = v124;
        if (v14)
        {
          continue;
        }

LABEL_8:
        if (v15 <= v16 + 1)
        {
          v23 = v16 + 1;
        }

        else
        {
          v23 = v15;
        }

        v24 = v23 - 1;
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v15)
          {
            v14 = 0;
            v133 = 0;
            v16 = v24;
            v131 = 0u;
            v132 = 0u;
            goto LABEL_17;
          }

          v14 = *(v11 + 8 * v22);
          ++v16;
          if (v14)
          {
            v16 = v22;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
      }

LABEL_75:
      *(*&v10 + 8 * (v85 >> 6) + 64) |= 1 << v85;
      *(*(*&v10 + 48) + 8 * v85) = NSForegroundColorAttributeName;
      sub_100007EAC(v128, (*(*&v10 + 56) + 32 * v85));
      v99 = NSForegroundColorAttributeName;

      sub_100007FC0(&v131);
      v100 = *(*&v10 + 16);
      v65 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v65)
      {
        goto LABEL_99;
      }

      *(*&v10 + 16) = v101;
      goto LABEL_77;
    }

    break;
  }

  sub_1000CEED8(v89, v84, &qword_100123960);
  v85 = sub_100064A78(NSForegroundColorAttributeName);
  if ((v90 & 1) == (v91 & 1))
  {
    goto LABEL_65;
  }

LABEL_100:
  type metadata accessor for Key(0);
  sub_1000DCCC4();
  __break(1u);
}

double sub_1000CEE1C@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v7 = a1();
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000D13F4(a2);
      v11 = v13;
    }

    sub_100007EAC((*(v11 + 56) + 32 * v9), a3);
    sub_1000D0740(v9, v11);
    *v5 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1000CEED8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_100007BC0(a3);
  v36 = a2;
  result = sub_1000DCB34();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        sub_100007EAC(v23, v37);
      }

      else
      {
        sub_10000800C(v23, v37);
        v24 = v22;
      }

      sub_1000DBF44();
      sub_1000DCD24();
      sub_1000DBFD4();
      v25 = sub_1000DCD74();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_100007EAC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

uint64_t sub_1000CF1A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100007BC0(&qword_100126978);
  result = sub_1000DCB34();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v32 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      sub_1000DCD24();
      v22 = *&v32;
      if (*&v32 == 0.0)
      {
        v22 = 0.0;
      }

      sub_1000DCD54(*&v22);
      v23 = *(&v32 + 1);
      if (*(&v32 + 1) == 0.0)
      {
        v23 = 0.0;
      }

      sub_1000DCD54(*&v23);
      result = sub_1000DCD74();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
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
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000CF458(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100007BC0(&qword_100126970);
  v30 = a2;
  result = sub_1000DCB34();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_1000DCD24();
      sub_1000DBFD4();

      result = sub_1000DCD74();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000CF7DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100007BC0(&qword_100123930);
  v31 = a2;
  result = sub_1000DCB34();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1000DCD24();
      sub_1000DCD34(v20);
      result = sub_1000DCD74();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000CFA68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100007BC0(&qword_100126980);
  result = sub_1000DCB34();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1000DCD24();
      sub_1000DBFD4();

      result = sub_1000DCD74();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000CFE24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100007BC0(&qword_100126990);
  result = sub_1000DCB34();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1000DCD14();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000D0100(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v42 = a6;
  v8 = v6;
  v10 = a3(0);
  v40 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = *v6;
  sub_100007BC0(a4);
  v41 = a2;
  result = sub_1000DCB34();
  v15 = result;
  if (*(v13 + 16))
  {
    v39 = v8;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(*(v13 + 48) + 8 * v27);
      v29 = *(v40 + 72);
      v30 = *(v13 + 56) + v29 * v27;
      if (v41)
      {
        sub_1000D237C(v30, v12, v42);
      }

      else
      {
        sub_1000D2314(v30, v12, v42);
      }

      result = sub_1000DCD14();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v15 + 48) + 8 * v23) = v28;
      result = sub_1000D237C(v12, *(v15 + 56) + v29 * v23, v42);
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v8 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v8 = v39;
    if (v38 >= 64)
    {
      bzero((v13 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v8 = v15;
  return result;
}

uint64_t sub_1000D041C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100007BC0(&qword_100126988);
  result = sub_1000DCB34();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v8 >= v13)
          {
            break;
          }

          v18 = v9[v8];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v12 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        if ((a2 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_44;
        }

        v30 = 1 << *(v5 + 32);
        v3 = v2;
        if (v30 >= 64)
        {
          bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v30;
        }

        *(v5 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        sub_100027DC8(v20);
        v21 = v31;
      }

      sub_1000DCD24();
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v22 = 2;
        }

        else
        {
          if (v20 != 3)
          {
LABEL_24:
            sub_1000DCD34(4uLL);
            sub_1000DBF44();
            sub_1000DBFD4();

            goto LABEL_28;
          }

          v22 = 3;
        }
      }

      else if (v20)
      {
        if (v20 != 1)
        {
          goto LABEL_24;
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      sub_1000DCD34(v22);
LABEL_28:
      result = sub_1000DCD74();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }
  }

LABEL_44:
  *v3 = v7;
  return result;
}

void sub_1000D0740(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000DC8F4() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1000DBF44();
      sub_1000DCD24();
      v11 = v10;
      sub_1000DBFD4();
      v12 = sub_1000DCD74();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

Swift::Int sub_1000D0908(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000DC8F4() + 1) & ~v5;
    do
    {
      sub_1000DCD24();
      sub_1000DBFD4();

      result = sub_1000DCD74();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1000D0C0C(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v11 = v7;
  v14 = *v7;
  v15 = a4(a2);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1000D13F4(a5);
      v15 = v23;
      goto LABEL_8;
    }

    sub_1000CEED8(v20, a3 & 1, a5);
    v15 = a4(a2);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_1000DCCC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v11;
  if (v21)
  {
    v26 = (v25[7] + 32 * v15);
    sub_100007FC0(v26);

    return sub_100007EAC(a1, v26);
  }

  else
  {
    sub_1000D11BC(v15, a2, a1, v25);

    return a2;
  }
}

unint64_t sub_1000D0DCC(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10006324C(a3, a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a3;
    v22[1] = a4;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_1000D1564();
    result = v19;
    goto LABEL_8;
  }

  sub_1000CF1A0(v16, a2 & 1);
  result = sub_10006324C(a3, a4);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for CGSize(0);
  sub_1000DCCC4();
  __break(1u);
  return _objc_release_x1();
}

unint64_t sub_1000D0F28(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100063134(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000CF458(v14, a3 & 1);
      result = sub_100063134(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1000DCCC4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000D16C4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1000D1074(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_1000632C0(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1000D1820();
    result = v17;
    goto LABEL_8;
  }

  sub_1000CF7DC(v14, a3 & 1);
  result = sub_1000632C0(v8);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1000DCCC4();
  __break(1u);
  return _objc_release_x1();
}

_OWORD *sub_1000D11BC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100007EAC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1000D1224(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1000D1268(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1000D1304(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1000D237C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1000D13AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

id sub_1000D13F4(uint64_t *a1)
{
  v2 = v1;
  sub_100007BC0(a1);
  v3 = *v1;
  v4 = sub_1000DCB24();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        sub_10000800C(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        sub_100007EAC(v20, (*(v5 + 56) + 32 * v18));
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

      v17 = *(v3 + 64 + 8 * v9);
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

id sub_1000D1564()
{
  v1 = v0;
  sub_100007BC0(&qword_100126978);
  v2 = *v0;
  v3 = sub_1000DCB24();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_1000D16C4()
{
  v1 = v0;
  sub_100007BC0(&qword_100126970);
  v2 = *v0;
  v3 = sub_1000DCB24();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_1000D1820()
{
  v1 = v0;
  sub_100007BC0(&qword_100123930);
  v2 = *v0;
  v3 = sub_1000DCB24();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_1000D197C()
{
  v1 = v0;
  sub_100007BC0(&qword_100126980);
  v2 = *v0;
  v3 = sub_1000DCB24();
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

void *sub_1000D1AC8()
{
  v1 = v0;
  sub_100007BC0(&qword_100126990);
  v2 = *v0;
  v3 = sub_1000DCB24();
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
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_1000D1C8C(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v35 = a4;
  v6 = v4;
  v7 = a1(0);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v33 = &v31 - v8;
  sub_100007BC0(a2);
  v9 = *v4;
  v10 = sub_1000DCB24();
  v11 = v10;
  if (*(v9 + 16))
  {
    v32 = v6;
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v36 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = *(v9 + 64);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_17:
        v25 = v22 | (v15 << 6);
        v26 = *(*(v9 + 48) + 8 * v25);
        v27 = v33;
        v28 = *(v34 + 72) * v25;
        v29 = v35;
        sub_1000D2314(*(v9 + 56) + v28, v33, v35);
        v30 = v36;
        *(*(v36 + 48) + 8 * v25) = v26;
        result = sub_1000D237C(v27, *(v30 + 56) + v28, v29);
      }

      while (v20);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v21)
      {

        v6 = v32;
        v11 = v36;
        goto LABEL_21;
      }

      v24 = *(v9 + 64 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_1000D1EB8()
{
  v1 = v0;
  sub_100007BC0(&qword_100126988);
  v2 = *v0;
  v3 = sub_1000DCB24();
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
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v20;
        sub_100027DC8(v18);
        v19 = v20;
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

void sub_1000D203C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_1000DCD54(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_1000DCD54(*&v3);
}

id sub_1000D208C(void *a1)
{
  v2 = &off_10010CD28;
  v3 = &unk_10010CD48;
  if ([a1 horizontalSizeClass] == 2)
  {
    v4 = &UIFontTextStyleTitle3;
  }

  else
  {
    v5 = [a1 userInterfaceIdiom];
    v4 = &UIFontTextStyleTitle3;
    if (v5 != 5)
    {
      v4 = &UIFontTextStyleHeadline;
      v2 = &off_10010CD60;
      v3 = &unk_10010CD80;
    }
  }

  v6 = sub_1000641E4(*v4, v2, a1);
  sub_1000D2200(v3);
  return v6;
}

id sub_1000D213C(void *a1)
{
  if ([a1 horizontalSizeClass] == 2 || objc_msgSend(a1, "userInterfaceIdiom") == 5)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:a1];

    return v2;
  }

  else
  {
    v4 = sub_1000641E4(UIFontTextStyleBody, &off_10010CD98, a1);
    sub_1000D2200(&unk_10010CDB8);
    return v4;
  }
}

uint64_t sub_1000D2254(uint64_t a1)
{
  v2 = sub_100007BC0(&qword_100121470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D22BC()
{
  result = qword_10011FF50;
  if (!qword_10011FF50)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF50);
  }

  return result;
}

uint64_t sub_1000D2314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int sub_1000D23E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000DCD24();
  sub_1000D203C(v1, v2);
  return sub_1000DCD74();
}

Swift::Int sub_1000D2440()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000DCD24();
  sub_1000D203C(v1, v2);
  return sub_1000DCD74();
}

unint64_t sub_1000D24D0()
{
  result = qword_1001269A8;
  if (!qword_1001269A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001269A8);
  }

  return result;
}

id sub_1000D2534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreakEventAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StreakEventAsset()
{
  result = qword_1001269D8;
  if (!qword_1001269D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D267C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA444();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000D26E8()
{
  if (qword_10011FB90 != -1)
  {
    swift_once();
  }

  v1 = qword_100127348;
  qword_1001273D8 = qword_100127348;

  return v1;
}

char *sub_1000D274C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20JournalWidgetsSecure23CanvasFallbackAssetView_symbolImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for CanvasFallbackAssetView();
  v10 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v10 setContentMode:2];
  if (qword_10011FBF0 != -1)
  {
    swift_once();
  }

  v11 = qword_1001273D8;
  [v10 setBackgroundColor:qword_1001273D8];
  v12 = OBJC_IVAR____TtC20JournalWidgetsSecure23CanvasFallbackAssetView_symbolImageView;
  [*&v10[OBJC_IVAR____TtC20JournalWidgetsSecure23CanvasFallbackAssetView_symbolImageView] setContentMode:2];
  [*&v10[v12] setTintColor:v11];
  [v10 addSubview:*&v10[v12]];
  v13 = *&v10[v12];
  v14 = [v13 superview];
  v15 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
  if (v14)
  {
    v16 = v14;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v13 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }

    v15 = &OBJC_INSTANCE_VARIABLES__TtC20JournalWidgetsSecure14LivePhotoAsset;
  }

  else
  {
    v19 = 0;
    v16 = v13;
  }

  v20 = *&v10[v12];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 *&v15[384]];
    v23 = [v22 centerXAnchor];
    v24 = [v20 centerXAnchor];
    v25 = [v24 constraintEqualToAnchor:v23];

    [v25 setConstant:0.0];
    if (v25)
    {
      [v25 setActive:1];
    }
  }

  else
  {
    v25 = 0;
    v22 = v20;
  }

  return v10;
}

uint64_t sub_1000D2B08()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_1000D2B48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasFallbackAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000D2BD8()
{
  result = qword_100126B30;
  if (!qword_100126B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126B30);
  }

  return result;
}

Swift::Int sub_1000D2C2C(uint64_t a1)
{
  sub_1000DCD24();
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v2 = 1;
LABEL_11:
      sub_1000DCD34(v2);
      return sub_1000DCD74();
    }
  }

  sub_1000DCD34(4uLL);
  sub_1000DBF44();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

void sub_1000D2CFC()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_13;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_13:
      sub_1000DCD34(v2);
      return;
    }
  }

  sub_1000DCD34(4uLL);
  sub_1000DBF44();
  sub_1000DBFD4();
}

Swift::Int sub_1000D2DC0()
{
  v1 = *v0;
  sub_1000DCD24();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      sub_1000DCD34(v2);
      return sub_1000DCD74();
    }
  }

  sub_1000DCD34(4uLL);
  sub_1000DBF44();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_1000D2E90()
{
  sub_100007BC0(&qword_100126B38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E73D0;
  v1 = MKPointOfInterestCategoryAnimalService;
  *(inited + 32) = MKPointOfInterestCategoryAnimalService;
  *(inited + 40) = MKPointOfInterestCategoryAirport;
  *(inited + 48) = MKPointOfInterestCategoryAmusementPark;
  *(inited + 56) = MKPointOfInterestCategoryAquarium;
  *(inited + 64) = MKPointOfInterestCategoryATM;
  v2 = MKPointOfInterestCategoryAutomotiveRepair;
  *(inited + 72) = MKPointOfInterestCategoryAutomotiveRepair;
  *(inited + 80) = MKPointOfInterestCategoryBakery;
  v3 = MKPointOfInterestCategoryBaseball;
  v91 = MKPointOfInterestCategoryBaseball;
  *(inited + 88) = MKPointOfInterestCategoryBank;
  *(inited + 96) = v3;
  v4 = MKPointOfInterestCategoryBasketball;
  *(inited + 104) = MKPointOfInterestCategoryBasketball;
  *(inited + 112) = MKPointOfInterestCategoryBeach;
  v90 = MKPointOfInterestCategoryBeauty;
  v5 = MKPointOfInterestCategoryBowling;
  v94 = MKPointOfInterestCategoryBowling;
  *(inited + 120) = MKPointOfInterestCategoryBeauty;
  *(inited + 128) = v5;
  *(inited + 136) = MKPointOfInterestCategoryBrewery;
  *(inited + 144) = MKPointOfInterestCategoryCafe;
  *(inited + 152) = MKPointOfInterestCategoryCampground;
  *(inited + 160) = MKPointOfInterestCategoryCarRental;
  v92 = MKPointOfInterestCategoryCastle;
  v6 = MKPointOfInterestCategoryConventionCenter;
  v97 = MKPointOfInterestCategoryConventionCenter;
  *(inited + 168) = MKPointOfInterestCategoryCastle;
  *(inited + 176) = v6;
  v95 = MKPointOfInterestCategoryDistillery;
  *(inited + 184) = MKPointOfInterestCategoryDistillery;
  *(inited + 192) = MKPointOfInterestCategoryEVCharger;
  v93 = MKPointOfInterestCategoryFairground;
  *(inited + 200) = MKPointOfInterestCategoryFairground;
  *(inited + 208) = MKPointOfInterestCategoryFireStation;
  v96 = MKPointOfInterestCategoryFishing;
  *(inited + 216) = MKPointOfInterestCategoryFishing;
  *(inited + 224) = MKPointOfInterestCategoryFitnessCenter;
  v7 = MKPointOfInterestCategoryFortress;
  v101 = MKPointOfInterestCategoryFortress;
  *(inited + 232) = MKPointOfInterestCategoryFoodMarket;
  *(inited + 240) = v7;
  v8 = MKPointOfInterestCategoryGolf;
  v100 = MKPointOfInterestCategoryGolf;
  *(inited + 248) = MKPointOfInterestCategoryGasStation;
  *(inited + 256) = v8;
  v98 = MKPointOfInterestCategoryGoKart;
  v9 = MKPointOfInterestCategoryHiking;
  v103 = MKPointOfInterestCategoryHiking;
  *(inited + 264) = MKPointOfInterestCategoryGoKart;
  *(inited + 272) = v9;
  *(inited + 280) = MKPointOfInterestCategoryHospital;
  *(inited + 288) = MKPointOfInterestCategoryHotel;
  v99 = MKPointOfInterestCategoryKayaking;
  v10 = MKPointOfInterestCategoryLandmark;
  v105 = MKPointOfInterestCategoryLandmark;
  *(inited + 296) = MKPointOfInterestCategoryKayaking;
  *(inited + 304) = v10;
  *(inited + 312) = MKPointOfInterestCategoryLaundry;
  *(inited + 320) = MKPointOfInterestCategoryLibrary;
  v104 = MKPointOfInterestCategoryMailbox;
  *(inited + 328) = MKPointOfInterestCategoryMailbox;
  *(inited + 336) = MKPointOfInterestCategoryMarina;
  v102 = MKPointOfInterestCategoryMiniGolf;
  *(inited + 344) = MKPointOfInterestCategoryMiniGolf;
  *(inited + 352) = MKPointOfInterestCategoryMovieTheater;
  v11 = MKPointOfInterestCategoryMusicVenue;
  v107 = MKPointOfInterestCategoryMusicVenue;
  *(inited + 360) = MKPointOfInterestCategoryMuseum;
  *(inited + 368) = v11;
  v106 = MKPointOfInterestCategoryNationalMonument;
  *(inited + 376) = MKPointOfInterestCategoryNationalMonument;
  *(inited + 384) = MKPointOfInterestCategoryNationalPark;
  *(inited + 392) = MKPointOfInterestCategoryNightlife;
  *(inited + 400) = MKPointOfInterestCategoryPark;
  *(inited + 408) = MKPointOfInterestCategoryParking;
  *(inited + 416) = MKPointOfInterestCategoryPharmacy;
  v108 = MKPointOfInterestCategoryPlanetarium;
  *(inited + 424) = MKPointOfInterestCategoryPlanetarium;
  *(inited + 432) = MKPointOfInterestCategoryPolice;
  *(inited + 440) = MKPointOfInterestCategoryPostOffice;
  *(inited + 448) = MKPointOfInterestCategoryPublicTransport;
  *(inited + 456) = MKPointOfInterestCategoryRestaurant;
  *(inited + 464) = MKPointOfInterestCategoryRestroom;
  v109 = MKPointOfInterestCategoryRockClimbing;
  v12 = MKPointOfInterestCategoryRVPark;
  v112 = MKPointOfInterestCategoryRVPark;
  *(inited + 472) = MKPointOfInterestCategoryRockClimbing;
  *(inited + 480) = v12;
  v13 = MKPointOfInterestCategorySkatePark;
  v111 = MKPointOfInterestCategorySkatePark;
  *(inited + 488) = MKPointOfInterestCategorySchool;
  *(inited + 496) = v13;
  v110 = MKPointOfInterestCategorySkating;
  v14 = MKPointOfInterestCategorySkiing;
  v113 = MKPointOfInterestCategorySkiing;
  *(inited + 504) = MKPointOfInterestCategorySkating;
  *(inited + 512) = v14;
  v114 = MKPointOfInterestCategorySoccer;
  *(inited + 520) = MKPointOfInterestCategorySoccer;
  v115 = MKPointOfInterestCategorySpa;
  *(inited + 528) = MKPointOfInterestCategorySpa;
  *(inited + 536) = MKPointOfInterestCategoryStadium;
  *(inited + 544) = MKPointOfInterestCategoryStore;
  v116 = MKPointOfInterestCategorySurfing;
  *(inited + 552) = MKPointOfInterestCategorySurfing;
  v117 = MKPointOfInterestCategorySwimming;
  *(inited + 560) = MKPointOfInterestCategorySwimming;
  v118 = MKPointOfInterestCategoryTennis;
  *(inited + 568) = MKPointOfInterestCategoryTennis;
  *(inited + 576) = MKPointOfInterestCategoryTheater;
  *(inited + 584) = MKPointOfInterestCategoryUniversity;
  v119 = MKPointOfInterestCategoryVolleyball;
  *(inited + 592) = MKPointOfInterestCategoryVolleyball;
  *(inited + 600) = MKPointOfInterestCategoryWinery;
  *(inited + 608) = MKPointOfInterestCategoryZoo;
  v15 = v1;
  v16 = MKPointOfInterestCategoryAirport;
  v17 = MKPointOfInterestCategoryAmusementPark;
  v18 = MKPointOfInterestCategoryAquarium;
  v19 = MKPointOfInterestCategoryATM;
  v20 = v2;
  v21 = MKPointOfInterestCategoryBakery;
  v22 = MKPointOfInterestCategoryBank;
  v23 = v91;
  v24 = v4;
  v25 = MKPointOfInterestCategoryBeach;
  v26 = v90;
  v27 = v94;
  v28 = MKPointOfInterestCategoryBrewery;
  v29 = MKPointOfInterestCategoryCafe;
  v30 = MKPointOfInterestCategoryCampground;
  v31 = MKPointOfInterestCategoryCarRental;
  v32 = v92;
  v33 = v97;
  v34 = v95;
  v35 = MKPointOfInterestCategoryEVCharger;
  v36 = v93;
  v37 = MKPointOfInterestCategoryFireStation;
  v38 = v96;
  v39 = MKPointOfInterestCategoryFitnessCenter;
  v40 = MKPointOfInterestCategoryFoodMarket;
  v41 = v101;
  v42 = MKPointOfInterestCategoryGasStation;
  v43 = v100;
  v44 = v98;
  v45 = v103;
  v46 = MKPointOfInterestCategoryHospital;
  v47 = MKPointOfInterestCategoryHotel;
  v48 = v99;
  v49 = v105;
  v50 = MKPointOfInterestCategoryLaundry;
  v51 = MKPointOfInterestCategoryLibrary;
  v52 = v104;
  v53 = MKPointOfInterestCategoryMarina;
  v54 = v102;
  v55 = MKPointOfInterestCategoryMovieTheater;
  v56 = MKPointOfInterestCategoryMuseum;
  v57 = v107;
  v58 = v106;
  v59 = MKPointOfInterestCategoryNationalPark;
  v60 = MKPointOfInterestCategoryNightlife;
  v61 = MKPointOfInterestCategoryPark;
  v62 = MKPointOfInterestCategoryParking;
  v63 = MKPointOfInterestCategoryPharmacy;
  v64 = v108;
  v65 = MKPointOfInterestCategoryPolice;
  v66 = MKPointOfInterestCategoryPostOffice;
  v67 = MKPointOfInterestCategoryPublicTransport;
  v68 = MKPointOfInterestCategoryRestaurant;
  v69 = MKPointOfInterestCategoryRestroom;
  v70 = v109;
  v71 = v112;
  v72 = MKPointOfInterestCategorySchool;
  v73 = v111;
  v74 = v110;
  v75 = v113;
  v76 = v114;
  v77 = v115;
  v78 = MKPointOfInterestCategoryStadium;
  v79 = MKPointOfInterestCategoryStore;
  v80 = v116;
  v81 = v117;
  v82 = v118;
  v83 = MKPointOfInterestCategoryTheater;
  v84 = MKPointOfInterestCategoryUniversity;
  v85 = v119;
  v86 = MKPointOfInterestCategoryWinery;
  v87 = MKPointOfInterestCategoryZoo;
  v88 = sub_100094F04(inited);
  swift_setDeallocating();
  type metadata accessor for MKPointOfInterestCategory(0);
  result = swift_arrayDestroy();
  qword_100126B28 = v88;
  return result;
}

BOOL sub_1000D3670(uint64_t a1, unint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (a2 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_10;
      }

      if (a2 != 3)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

LABEL_10:
  if (a2 < 4)
  {
    return 0;
  }

  v2 = sub_1000DBF44();
  v4 = v3;
  if (v2 == sub_1000DBF44() && v4 == v5)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000DCC74();

    return v7 & 1;
  }
}

uint64_t sub_1000D3774(uint64_t *a1, unsigned int a2)
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

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D37C8(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1000D3824(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000D3854()
{
  v0 = sub_1000DA674();
  v2 = v1;
  v3 = sub_1000DA664();
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    sub_100008068(0, &qword_1001202C8);
    v5 = sub_1000DC734();
    sub_100010500(v6, v7);
  }

  v8 = [v5 pointOfInterestCategory];

  if (!v2)
  {
    goto LABEL_24;
  }

  if (v0 == 1701670728 && v2 == 0xE400000000000000 || (sub_1000DCC74() & 1) != 0)
  {
    result = [objc_opt_self() homeStyleAttributes];
    if (result)
    {

      return 0;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v0 == 1802661719 && v2 == 0xE400000000000000 || (sub_1000DCC74() & 1) != 0)
  {
    result = [objc_opt_self() workStyleAttributes];
    if (result)
    {

      return 1;
    }

    goto LABEL_34;
  }

  if ((v0 != 0x6C6F6F686353 || v2 != 0xE600000000000000) && (sub_1000DCC74() & 1) == 0)
  {
    if (v0 == 7174471 && v2 == 0xE300000000000000 || (sub_1000DCC74() & 1) != 0)
    {
      sub_100008068(0, &qword_100126380);
      sub_100043A68(145);

      return 3;
    }

LABEL_24:
    if (v8)
    {
      v10 = qword_10011FBF8;
      v11 = v8;
      if (v10 != -1)
      {
        swift_once();
      }

      if (sub_100021774(v11, qword_100126B28))
      {
        v12 = sub_1000B40AC();

        if (!v12)
        {

          return 0;
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
    }

    return v8;
  }

  result = [objc_opt_self() schoolStyleAttributes];
  if (result)
  {

    return 2;
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_1000D3BB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfettiAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfettiAsset()
{
  result = qword_100126B68;
  if (!qword_100126B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000D3CC0()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v103 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBED4();
  __chkstk_darwin(v3 - 8);
  v102 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001203B8);
  v6 = __chkstk_darwin(v5 - 8);
  v104 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  *&v95 = &v87 - v9;
  __chkstk_darwin(v8);
  v99 = &v87 - v10;
  v100 = sub_1000DA084();
  v105 = *(v100 - 8);
  v11 = __chkstk_darwin(v100);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v87 - v13;
  v14 = sub_100007BC0(&qword_100126BB8);
  __chkstk_darwin(v14 - 8);
  v94 = &v87 - v15;
  v93 = sub_1000D9B94();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007BC0(&qword_100126BC0);
  __chkstk_darwin(v17 - 8);
  v19 = &v87 - v18;
  v20 = sub_1000D9BB4();
  v98 = *(v20 - 8);
  __chkstk_darwin(v20);
  v90 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000DAF04();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100007BC0(&qword_1001205F8);
  __chkstk_darwin(v26 - 8);
  v28 = &v87 - v27;
  v29 = sub_1000DA7F4();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v0;
  sub_1000168EC(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1000080B0(v28, &qword_1001205F8);
    return 0;
  }

  else
  {
    v34 = *(v30 + 32);
    v89 = v29;
    v34(v32, v28, v29);
    sub_1000DAE84();
    v35 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_1000DAE64().super.isa;
    v37 = [v35 initWithContentType:isa];

    (*(v23 + 8))(v25, v22);
    sub_1000DA7B4();
    v38 = v98;
    if ((*(v98 + 48))(v19, 1, v20) == 1)
    {
      sub_1000080B0(v19, &qword_100126BC0);
    }

    else
    {
      v39 = v90;
      (*(v38 + 32))(v90, v19, v20);
      v40 = v91;
      sub_1000D9B84();
      sub_1000D4918(v94);
      (*(v92 + 8))(v40, v93);
      sub_1000DBF74();
      v41 = sub_1000DBF04();

      [v37 setDisplayName:v41];

      (*(v38 + 8))(v39, v20);
    }

    v98 = v30;
    v42 = v99;
    sub_1000DA7E4();
    v43 = v105;
    v44 = *(v105 + 48);
    v45 = v100;
    v46 = v44(v42, 1, v100);
    v88 = v37;
    if (v46 == 1)
    {
      sub_1000080B0(v42, &qword_1001203B8);
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v49 = *(v43 + 32);
      v50 = v97;
      v49(v97, v42, v45);
      v51 = v32;
      v52 = v95;
      v99 = v51;
      sub_1000DA7C4();
      if (v44(v52, 1, v45) == 1)
      {
        (*(v43 + 8))(v50, v45);
        sub_1000080B0(v52, &qword_1001203B8);
        v47 = 0;
        v48 = 0;
        v32 = v99;
      }

      else
      {
        v49(v96, v52, v45);
        sub_100007BC0(&qword_1001205E0);
        v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v54 = swift_allocObject();
        v95 = xmmword_1000DFEF0;
        *(v54 + 16) = xmmword_1000DFEF0;
        v55 = *(v43 + 16);
        v55(v54 + v53, v50, v45);
        v56 = swift_allocObject();
        *(v56 + 16) = v95;
        v57 = v96;
        v55(v56 + v53, v96, v45);
        v32 = v99;
        v58 = sub_10006E548(v54, v56, 0);
        v48 = v59;

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v60 = *(v43 + 8);
        v60(v57, v45);
        v60(v97, v45);
        if (v48)
        {
          v47 = v58;
        }

        else
        {
          v47 = 0;
        }
      }
    }

    v61 = 0;
    v107 = sub_1000DA7D4();
    v108[0] = v62;
    v108[1] = v47;
    v108[2] = v48;
    v63 = _swiftEmptyArrayStorage;
LABEL_14:
    v64 = &v108[2 * v61];
    while (++v61 != 3)
    {
      v65 = v64 + 2;
      v66 = *v64;
      v64 += 2;
      if (v66)
      {
        v67 = v32;
        v68 = *(v65 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_100047140(0, *(v63 + 2) + 1, 1, v63);
        }

        v70 = *(v63 + 2);
        v69 = *(v63 + 3);
        if (v70 >= v69 >> 1)
        {
          v63 = sub_100047140((v69 > 1), v70 + 1, 1, v63);
        }

        *(v63 + 2) = v70 + 1;
        v71 = &v63[16 * v70];
        *(v71 + 4) = v68;
        *(v71 + 5) = v66;
        v43 = v105;
        v32 = v67;
        goto LABEL_14;
      }
    }

    sub_100007BC0(&qword_100121498);
    swift_arrayDestroy();
    v106 = v63;
    sub_100007BC0(&qword_100121560);
    sub_10004229C();
    sub_1000DBDE4();

    v72 = sub_1000DBF04();

    v33 = v88;
    [v88 setContentDescription:v72];

    v73 = *(v101 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v73)
    {
      v74 = [v73 entry];
      v75 = v104;
      if (v74)
      {
        v76 = v74;
        sub_1000DA3A4();

        v77 = 0;
      }

      else
      {
        v77 = 1;
      }
    }

    else
    {
      v77 = 1;
      v75 = v104;
    }

    (*(v43 + 56))(v75, v77, 1, v45);
    sub_1000DBE74();
    sub_1000DA114();
    v78 = sub_1000DBF64();
    v80 = v79;
    sub_100007BC0(&qword_1001203C0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1000DFEF0;
    v82 = sub_1000478A0(v78, v80, v75);
    v84 = v83;

    *(v81 + 32) = v82;
    *(v81 + 40) = v84;
    v85 = sub_1000DC124().super.isa;

    [v33 setAlternateNames:v85];

    sub_1000080B0(v75, &qword_1001203B8);
    (*(v98 + 8))(v32, v89);
  }

  return v33;
}

uint64_t sub_1000D4918@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v26 = sub_100007BC0(&qword_100126BC8);
  v2 = __chkstk_darwin(v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v24 - v5;
  v7 = sub_1000D9BA4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100007BC0(&qword_100126BD0);
  __chkstk_darwin(v25);
  v12 = v24 - v11;
  v13 = sub_100007BC0(&qword_100126BD8);
  __chkstk_darwin(v13 - 8);
  v15 = v24 - v14;
  v16 = sub_1000D9B94();
  v17 = sub_1000D4DB4(&qword_100126BE0, &type metadata accessor for AttributedString.CharacterView);
  v27 = v16;
  v18 = v17;
  sub_1000DC2F4();
  sub_1000D4DB4(&qword_100126BE8, &type metadata accessor for AttributedString.Index);
  result = sub_1000DBE64();
  if (result)
  {
    sub_1000DC304();
    sub_1000D4DB4(&qword_100126BF0, &type metadata accessor for AttributedString.Index);
    result = sub_1000DBE14();
    if (result)
    {
      v24[1] = v1;
      v20 = *(v8 + 32);
      v20(v6, v15, v7);
      v24[0] = v18;
      v21 = v26;
      v20(&v6[*(v26 + 48)], v10, v7);
      sub_1000D4DFC(v6, v4);
      v22 = *(v21 + 48);
      v20(v12, v4, v7);
      v23 = *(v8 + 8);
      v23(&v4[v22], v7);
      sub_1000D4E6C(v6, v4);
      v20(&v12[*(v25 + 36)], &v4[*(v21 + 48)], v7);
      v23(v4, v7);
      sub_1000DC394();
      return sub_1000080B0(v12, &qword_100126BD0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D4DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D4DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100126BC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D4E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100126BC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000D4EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyMediaAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ThirdPartyMediaAsset()
{
  result = qword_100126C20;
  if (!qword_100126C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000D4FF4()
{
  v1 = sub_100007BC0(&qword_1001203B8);
  v2 = __chkstk_darwin(v1 - 8);
  v73 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v65 - v4;
  v6 = sub_1000DA454();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = sub_1000DAF04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_100120620);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_1000DAC94();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v0;
  sub_100016B2C(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000080B0(v17, &qword_100120620);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_1000DAE94();
    v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_1000DAE64().super.isa;
    v22 = [v23 initWithContentType:isa];

    (*(v12 + 8))(v14, v11);
    sub_1000DAC44();
    v67 = v18;
    v68 = v5;
    if (v25 || (sub_1000DAC64(), v26))
    {
      v27 = sub_1000DBF04();
    }

    else
    {
      v27 = 0;
    }

    [v22 setDisplayName:v27];

    v75 = sub_1000DAC64();
    v76[0] = v28;
    v29 = 0;
    v76[1] = sub_1000DAC34();
    v76[2] = v30;
    v31 = _swiftEmptyArrayStorage;
    v66 = v19;
LABEL_7:
    v32 = &v76[2 * v29];
    while (++v29 != 3)
    {
      v33 = v32 + 2;
      v34 = *v32;
      v32 += 2;
      if (v34)
      {
        v35 = *(v33 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100047140(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_100047140((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v38 = &v31[16 * v37];
        *(v38 + 4) = v35;
        *(v38 + 5) = v34;
        goto LABEL_7;
      }
    }

    sub_100007BC0(&qword_100121498);
    swift_arrayDestroy();
    v74 = v31;
    sub_100007BC0(&qword_100121560);
    sub_10004229C();
    sub_1000DBDE4();

    v39 = sub_1000DBF04();

    [v22 setContentDescription:v39];

    sub_1000DAC54();
    v40 = sub_1000D9DA4();
    v41 = *(v40 - 8);
    v43 = 0;
    if ((*(v41 + 48))(v10, 1, v40) != 1)
    {
      sub_1000D9D54(v42);
      v43 = v44;
      (*(v41 + 8))(v10, v40);
    }

    [v22 setThumbnailURL:v43];

    v45 = v70;
    sub_1000DAC74();
    v46 = sub_10006E184();
    v48 = v47;
    (*(v71 + 8))(v45, v72);
    v49 = v73;
    sub_1000DAC84();
    v50 = v49;
    v51 = sub_1000DA084();
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    if (v53(v49, 1, v51) == 1)
    {
      v54 = *(v69 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
      if (v54)
      {
        v55 = [v54 entry];
        if (v55)
        {
          v56 = v55;
          v57 = v68;
          sub_1000DA3A4();

          v58 = 0;
        }

        else
        {
          v58 = 1;
          v57 = v68;
        }

        v50 = v73;
      }

      else
      {
        v58 = 1;
        v57 = v68;
      }

      (*(v52 + 56))(v57, v58, 1, v51);
      if (v53(v50, 1, v51) != 1)
      {
        sub_1000080B0(v50, &qword_1001203B8);
      }
    }

    else
    {
      v57 = v68;
      (*(v52 + 32))(v68, v50, v51);
      (*(v52 + 56))(v57, 0, 1, v51);
    }

    sub_100007BC0(&qword_1001203C0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1000DFEF0;
    v60 = sub_1000478A0(v46, v48, v57);
    v62 = v61;

    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    v63 = sub_1000DC124().super.isa;

    [v22 setAlternateNames:v63];

    sub_1000080B0(v57, &qword_1001203B8);
    (*(v66 + 8))(v21, v67);
  }

  return v22;
}

uint64_t sub_1000D58C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DAC94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D5920(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100126750);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D59AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100126750);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000D5A48()
{
  sub_1000D5AC4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000D5AC4()
{
  if (!qword_100126CD8)
  {
    type metadata accessor for CalendarBinningUnit(255);
    v0 = sub_1000DC7C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100126CD8);
    }
  }
}

uint64_t sub_1000D5B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000DA1F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000DA084();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000DA204();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000D5CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000DA1F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000DA084();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000DA204();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000D5DF0()
{
  result = sub_1000DA1F4();
  if (v1 <= 0x3F)
  {
    result = sub_1000DA084();
    if (v2 <= 0x3F)
    {
      result = sub_1000DA204();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000D5E8C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = sub_100007BC0(&qword_100121B98);
  v5 = __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v35 - v8;
  v9 = sub_1000DA084();
  v38 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = sub_100007BC0(&qword_100126750);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_100007BC0(&qword_100126758);
  __chkstk_darwin(v18 - 8);
  v20 = &v35 - v19;
  sub_100007F58(v3, v17, &qword_100126750);
  v21 = type metadata accessor for CalendarBinningUnit(0);
  if ((*(*(v21 - 8) + 48))(v17, 1, v21) != 1)
  {
    v33 = *(v3 + *(type metadata accessor for UniformDateBins(0) + 20));
    result = &v39[v33];
    if (!__OFADD__(v33, v39))
    {
      sub_1000D6E44(result, v20);
      sub_1000D8548(v17, type metadata accessor for CalendarBinningUnit);
      v34 = sub_100007BC0(&qword_100120AE8);
      (*(*(v34 - 8) + 56))(v20, 0, 1, v34);
      return sub_10001865C(v20, v40, &qword_100120AE8);
    }

LABEL_9:
    __break(1u);
    return result;
  }

  sub_1000080B0(v17, &qword_100126750);
  v22 = sub_100007BC0(&qword_100120AE8);
  v23 = *(v22 - 8);
  (*(v23 + 56))(v20, 1, 1, v22);
  sub_1000D9E14();
  sub_1000D9E14();
  sub_1000D77D0(&qword_100120AE0, &type metadata accessor for Date);
  result = sub_1000DBE14();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v25 = v38;
  v39 = v20;
  v36 = v22;
  v26 = *(v38 + 32);
  v27 = v37;
  v26(v37, v14, v9);
  v26((v27 + *(v4 + 48)), v12, v9);
  sub_100007F58(v27, v7, &qword_100121B98);
  v28 = *(v4 + 48);
  v35 = v4;
  v29 = v40;
  v26(v40, v7, v9);
  v30 = *(v25 + 8);
  v30(&v7[v28], v9);
  sub_10001865C(v27, v7, &qword_100121B98);
  v31 = v36;
  v26((v29 + *(v36 + 36)), &v7[*(v35 + 48)], v9);
  v32 = v39;
  v30(v7, v9);
  result = (*(v23 + 48))(v32, 1, v31);
  if (result != 1)
  {
    return sub_1000080B0(v32, &qword_100126758);
  }

  return result;
}

uint64_t sub_1000D63B4(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1000D9B24();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007BC0(&qword_100126750);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CalendarBinningUnit(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007F58(v2, v9, &qword_100126750);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000080B0(v9, &qword_100126750);
    return 0;
  }

  v23 = v2;
  sub_1000D8B80(v9, v13, type metadata accessor for CalendarBinningUnit);
  v24 = *(v10 + 24);
  sub_100007BC0(&qword_100121880);
  v15 = sub_1000DA1F4();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000DFEF0;
  (*(v16 + 16))(v18 + v17, v13, v15);
  sub_10003921C(v18);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  sub_1000DA164();

  v19 = sub_1000D9AF4();
  LOBYTE(v16) = v20;
  result = (*(v4 + 8))(v6, v3);
  if (v16)
  {
    goto LABEL_7;
  }

  sub_1000D8548(v13, type metadata accessor for CalendarBinningUnit);
  v21 = *(v23 + *(type metadata accessor for UniformDateBins(0) + 20));
  result = v19 - v21;
  if (__OFSUB__(v19, v21))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D674C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

double *sub_1000D681C()
{
  v1 = v0;
  v2 = type metadata accessor for UniformDateBins(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_100126DB0);
  result = __chkstk_darwin(v6 - 8);
  v9 = (&v16 - v8);
  v10 = *(v3 + 32);
  v11 = *(v1 + v10);
  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v11)
    {
      v12 = sub_1000D7914(*(v1 + v10), 0);
      v13 = *(sub_100007BC0(&qword_100120AE8) - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      sub_1000D8BE8(v1, v5, type metadata accessor for UniformDateBins);
      v15 = sub_1000D7A1C(v9, v12 + v14, v11);
      sub_1000D8548(v1, type metadata accessor for UniformDateBins);
      sub_1000080B0(v9, &qword_100126DB0);
      if (v15 == v11)
      {
        return v12;
      }

      __break(1u);
    }

    sub_1000D8548(v1, type metadata accessor for UniformDateBins);
    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D69EC(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v38 = sub_100007BC0(&qword_100120AE8);
  v3 = __chkstk_darwin(v38);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v28 - v5;
  v40 = sub_1000D9B24();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalendarBinningUnit(0);
  v39 = *(v8 + 24);
  v9 = sub_100007BC0(&qword_100121880);
  v10 = sub_1000DA1F4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v36 = *(v11 + 72);
  v37 = v9;
  v13 = swift_allocObject();
  v34 = xmmword_1000DFEF0;
  *(v13 + 16) = xmmword_1000DFEF0;
  v35 = *(v11 + 16);
  v35(v13 + v12, v2, v10);
  sub_10003921C(v13);
  swift_setDeallocating();
  v33 = *(v11 + 8);
  v33(v13 + v12, v10);
  swift_deallocClassInstance();
  v32 = *(v8 + 20);
  sub_1000DA164();

  v29 = sub_1000D9AF4();
  LOBYTE(v9) = v14;
  v15 = *(v42 + 8);
  v42 += 8;
  result = v15(v7, v40);
  if (v9)
  {
    goto LABEL_14;
  }

  v17 = *(v38 + 36);
  v18 = swift_allocObject();
  *(v18 + 16) = v34;
  v35(v18 + v12, v2, v10);
  sub_10003921C(v18);
  swift_setDeallocating();
  v33(v18 + v12, v10);
  swift_deallocClassInstance();
  v37 = v17;
  sub_1000DA164();

  v19 = sub_1000D9AF4();
  LOBYTE(v18) = v20;
  result = v15(v7, v40);
  if ((v18 & 1) == 0)
  {
    v21 = v29;
    v22 = v30;
    sub_1000D6E44(v29, v30);
    v23 = v31;
    result = sub_1000D6E44(v19, v31);
    v24 = v19 - v21;
    if (__OFSUB__(v19, v21))
    {
      __break(1u);
    }

    else
    {
      v25 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        result = sub_1000DA034();
        if ((result & 1) == 0 || (v26 = __OFSUB__(v25, 1), --v25, !v26))
        {
          v27 = sub_1000DA034();
          sub_1000080B0(v23, &qword_100120AE8);
          result = sub_1000080B0(v22, &qword_100120AE8);
          if ((v27 & 1) == 0)
          {
            return v25;
          }

          v26 = __OFSUB__(v25--, 1);
          if (!v26)
          {
            return v25;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000D6E44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v33 = sub_100007BC0(&qword_100121B98);
  v3 = __chkstk_darwin(v33);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v32 = &v31 - v5;
  v6 = sub_100007BC0(&qword_1001203B8);
  v7 = __chkstk_darwin(v6 - 8);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_1000DA084();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v37 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v38 = *(type metadata accessor for CalendarBinningUnit(0) + 24);
  v40 = a1;
  sub_1000DA1A4();
  v17 = *(v12 + 48);
  result = v17(v10, 1, v11);
  if (result == 1)
  {
    goto LABEL_8;
  }

  v31 = v12;
  v19 = *(v12 + 32);
  v36 = v16;
  result = v19(v16, v10, v11);
  if (__OFADD__(v40, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v39;
  sub_1000DA1A4();
  result = v17(v20, 1, v11);
  if (result != 1)
  {
    v21 = v37;
    v19(v37, v20, v11);
    sub_1000D77D0(&qword_100120AE0, &type metadata accessor for Date);
    v22 = v36;
    result = sub_1000DBE14();
    if (result)
    {
      v23 = v32;
      v19(v32, v22, v11);
      v24 = v33;
      v19((v23 + *(v33 + 48)), v21, v11);
      v25 = v34;
      sub_100007F58(v23, v34, &qword_100121B98);
      v26 = *(v24 + 48);
      v27 = v35;
      v19(v35, v25, v11);
      v28 = *(v31 + 8);
      v28(v25 + v26, v11);
      sub_10001865C(v23, v25, &qword_100121B98);
      v29 = *(v24 + 48);
      v30 = sub_100007BC0(&qword_100120AE8);
      v19(&v27[*(v30 + 36)], (v25 + v29), v11);
      return (v28)(v25, v11);
    }

    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

void (*sub_1000D7274(uint64_t *a1, char **a2))(uint64_t *a1)
{
  v4 = *(*(sub_100007BC0(&qword_100120AE8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *a1 = v5;
  sub_1000D5E8C(*a2, v5);
  return sub_1000D7314;
}

void sub_1000D7314(uint64_t *a1)
{
  v1 = *a1;
  sub_1000080B0(*a1, &qword_100120AE8);

  free(v1);
}

uint64_t *sub_1000D7360@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + *(a2 + 24));
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result[1];
  if (v5 >= v7)
  {
    v8 = sub_100007BC0(&qword_100126DD8);
    result = sub_1000D8BE8(v3, a3 + *(v8 + 40), type metadata accessor for UniformDateBins);
    *a3 = v6;
    a3[1] = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000D73F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D8BE8(v2, a2, type metadata accessor for UniformDateBins);
  result = sub_100007BC0(&qword_100126DC8);
  *(a2 + *(result + 36)) = 0;
  *(a2 + *(result + 40)) = *(v2 + *(a1 + 24));
  return result;
}

uint64_t *sub_1000D748C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D74BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1000D674C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000D74F4(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1000D7534(uint64_t *result, uint64_t *a2)
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

void *sub_1000D7550(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D756C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D7588@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1000D75A0(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1000D75B8@<X0>(uint64_t a1@<X8>)
{
  sub_1000D8B80(v1, a1, type metadata accessor for UniformDateBins);
  result = sub_100007BC0(&qword_100126DB0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000D7618(uint64_t a1)
{
  result = *(v1 + *(a1 + 24));
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D7634()
{
  if ((sub_1000DA1E4() & 1) == 0 || (sub_1000DA034() & 1) == 0)
  {
    return 0;
  }

  return sub_1000DA184();
}

uint64_t sub_1000D77D0(unint64_t *a1, void (*a2)(uint64_t))
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

double *sub_1000D7818(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100007BC0(&qword_100120650);
  v4 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_1000D7914(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100007BC0(&qword_100126DE0);
  v4 = *(sub_100007BC0(&qword_100120AE8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D7A1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v92 = sub_100007BC0(&qword_100121B98);
  v6 = __chkstk_darwin(v92);
  v93 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v75 - v8;
  v10 = sub_100007BC0(&qword_1001203B8);
  v11 = __chkstk_darwin(v10 - 8);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v75 - v13;
  v105 = sub_1000DA084();
  v14 = *(v105 - 8);
  v15 = __chkstk_darwin(v105);
  v83 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v75 - v18;
  v20 = __chkstk_darwin(v17);
  v80 = &v75 - v21;
  __chkstk_darwin(v20);
  v94 = &v75 - v22;
  v23 = sub_100007BC0(&qword_100126750);
  __chkstk_darwin(v23 - 8);
  v100 = &v75 - v24;
  v25 = sub_100007BC0(&qword_100126758);
  v26 = __chkstk_darwin(v25 - 8);
  v99 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v75 - v28;
  v30 = sub_100007BC0(&qword_100120AE8);
  v95 = *(v30 - 8);
  __chkstk_darwin(v30);
  v91 = &v75 - v31;
  v32 = sub_100007BC0(&qword_100126DB0);
  v33 = v32 - 8;
  __chkstk_darwin(v32);
  v35 = &v75 - v34;
  result = sub_1000D8B80(v104, &v75 - v34, type metadata accessor for UniformDateBins);
  v90 = *(v33 + 44);
  *&v35[v90] = 0;
  v104 = a2;
  if (!a2)
  {
LABEL_21:
    v40 = 0;
LABEL_25:
    sub_10001865C(v35, a1, &qword_100126DB0);
    return v40;
  }

  if (!a3)
  {
    v40 = 0;
    goto LABEL_25;
  }

  if (a3 < 0)
  {
    goto LABEL_30;
  }

  v79 = v19;
  v76 = a1;
  v37 = 0;
  v78 = type metadata accessor for UniformDateBins(0);
  v89 = *&v35[*(v78 + 24)];
  v98 = (v14 + 32);
  v86 = (v14 + 8);
  v87 = (v14 + 48);
  v77 = (v95 + 48);
  v75 = a3;
  v85 = a3 - 1;
  v88 = (v95 + 56);
  v84 = (v95 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v38 = v100;
  v102 = v35;
  v103 = v29;
  v39 = v30;
  v96 = v9;
  v97 = v30;
  while (1)
  {
    v40 = v89;
    if (v89 == v37)
    {
      (*v88)(v29, 1, 1, v39);
      sub_1000080B0(v29, &qword_100126758);
      a1 = v76;
      goto LABEL_25;
    }

    sub_100007F58(v35, v38, &qword_100126750);
    v41 = type metadata accessor for CalendarBinningUnit(0);
    result = (*(*(v41 - 8) + 48))(v38, 1, v41);
    v101 = v37;
    if (result == 1)
    {
      break;
    }

    v56 = *&v35[*(v78 + 20)];
    v57 = v56 + v37;
    if (__OFADD__(v56, v37))
    {
      goto LABEL_27;
    }

    v58 = v82;
    sub_1000DA1A4();
    v59 = v58;
    v60 = *v87;
    result = (*v87)(v58, 1, v105);
    if (result == 1)
    {
      goto LABEL_31;
    }

    v61 = *v98;
    result = (*v98)(v94, v59, v105);
    if (__OFADD__(v57, 1))
    {
      goto LABEL_28;
    }

    v62 = v81;
    sub_1000DA1A4();
    result = v60(v62, 1, v105);
    if (result == 1)
    {
      goto LABEL_32;
    }

    v63 = v80;
    v61(v80, v62, v105);
    sub_1000D77D0(&qword_100120AE0, &type metadata accessor for Date);
    v64 = v94;
    result = sub_1000DBE14();
    if ((result & 1) == 0)
    {
      goto LABEL_29;
    }

    v65 = v105;
    v61(v9, v64, v105);
    v66 = v92;
    v61(&v9[*(v92 + 48)], v63, v65);
    v67 = v9;
    v68 = v93;
    sub_100007F58(v9, v93, &qword_100121B98);
    v69 = *(v66 + 48);
    v70 = v99;
    v61(v99, v68, v65);
    v71 = *v86;
    (*v86)(v68 + v69, v65);
    sub_10001865C(v67, v68, &qword_100121B98);
    v72 = v97;
    v61((v70 + *(v97 + 36)), (v68 + *(v66 + 48)), v65);
    v55 = v101;
    v54 = v72;
    v71(v68, v65);
    v38 = v100;
    sub_1000D8548(v100, type metadata accessor for CalendarBinningUnit);
    v42 = *v88;
    (*v88)(v70, 0, 1, v72);
    v29 = v103;
    sub_10001865C(v70, v103, &qword_100120AE8);
LABEL_17:
    v73 = v55 + 1;
    *&v102[v90] = v55 + 1;
    v39 = v54;
    v42(v29, 0, 1, v54);
    v74 = v91;
    sub_10001865C(v29, v91, &qword_100120AE8);
    sub_10001865C(v74, v104, &qword_100120AE8);
    if (v85 == v55)
    {
      v40 = v75;
      a1 = v76;
      v35 = v102;
      goto LABEL_25;
    }

    v9 = v96;
    v104 += *(v95 + 72);
    v37 = v55 + 1;
    v35 = v102;
    a1 = &qword_100126750;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  sub_1000080B0(v38, &qword_100126750);
  v42 = *v88;
  (*v88)(v99, 1, 1, v39);
  v43 = v79;
  sub_1000D9E14();
  v44 = v83;
  sub_1000D9E14();
  sub_1000D77D0(&qword_100120AE0, &type metadata accessor for Date);
  result = sub_1000DBE14();
  if (result)
  {
    v45 = v105;
    v46 = *v98;
    v47 = v96;
    (*v98)(v96, v43, v105);
    v48 = v92;
    v46((v47 + *(v92 + 48)), v44, v45);
    v49 = v93;
    sub_100007F58(v47, v93, &qword_100121B98);
    v50 = *(v48 + 48);
    v46(v103, v49, v45);
    v51 = *v86;
    (*v86)(v49 + v50, v45);
    sub_10001865C(v47, v49, &qword_100121B98);
    v46(&v103[*(v97 + 36)], (v49 + *(v48 + 48)), v45);
    v52 = v97;
    v51(v49, v45);
    v53 = v99;
    v54 = v52;
    if ((*v77)(v99, 1, v52) != 1)
    {
      sub_1000080B0(v53, &qword_100126758);
    }

    v38 = v100;
    v55 = v101;
    v29 = v103;
    goto LABEL_17;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000D8548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D85A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1000D8BE8(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      v24 = v23;
      v25 = v31;
      sub_1000D8B80(v24, v31, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      sub_1000D8B80(v25, a2, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_1000D880C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarBinningUnit(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007BC0(&qword_100126750);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100007BC0(&qword_100126DE8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100007F58(a1, &v21 - v13, &qword_100126750);
  sub_100007F58(a2, &v14[v15], &qword_100126750);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100007F58(v14, v10, &qword_100126750);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1000D8B80(&v14[v15], v7, type metadata accessor for CalendarBinningUnit);
      if (sub_1000DA1E4() & 1) != 0 && (sub_1000DA034())
      {
        v20 = sub_1000DA184();
        sub_1000D8548(v7, type metadata accessor for CalendarBinningUnit);
        sub_1000D8548(v10, type metadata accessor for CalendarBinningUnit);
        sub_1000080B0(v14, &qword_100126750);
        if ((v20 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_4;
      }

      sub_1000D8548(v7, type metadata accessor for CalendarBinningUnit);
      sub_1000D8548(v10, type metadata accessor for CalendarBinningUnit);
      v19 = &qword_100126750;
LABEL_14:
      sub_1000080B0(v14, v19);
      return 0;
    }

    sub_1000D8548(v10, type metadata accessor for CalendarBinningUnit);
LABEL_8:
    v19 = &qword_100126DE8;
    goto LABEL_14;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1000080B0(v14, &qword_100126750);
LABEL_4:
  v17 = type metadata accessor for UniformDateBins(0);
  if (*(a1 + *(v17 + 20)) == *(a2 + *(v17 + 20)))
  {
    return *(a1 + *(v17 + 24)) == *(a2 + *(v17 + 24));
  }

  return 0;
}

uint64_t sub_1000D8B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D8BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1000D8C7C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100126DF0 = result;
  return result;
}

uint64_t sub_1000D8CD4()
{
  v0 = sub_1000DAE04();
  sub_100007EF4(v0, qword_1001273F0);
  sub_100007EBC(v0, qword_1001273F0);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v1 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D8D7C()
{
  v0 = sub_1000DAE04();
  sub_100007EF4(v0, qword_100127408);
  sub_100007EBC(v0, qword_100127408);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v1 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D8E24()
{
  v0 = sub_1000DAE04();
  sub_100007EF4(v0, qword_100127420);
  sub_100007EBC(v0, qword_100127420);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v1 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D8ECC()
{
  v0 = sub_1000DAE04();
  sub_100007EF4(v0, qword_100127438);
  sub_100007EBC(v0, qword_100127438);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v1 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D8F74()
{
  v0 = sub_1000DAE04();
  sub_100007EF4(v0, qword_100127450);
  sub_100007EBC(v0, qword_100127450);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v1 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D901C()
{
  v0 = sub_1000DAE04();
  sub_100007EF4(v0, qword_100127468);
  sub_100007EBC(v0, qword_100127468);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v1 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D90C4()
{
  v0 = sub_1000DAE04();
  sub_100007EF4(v0, qword_100127480);
  sub_100007EBC(v0, qword_100127480);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v1 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D916C()
{
  v0 = sub_1000DAE04();
  sub_100007EF4(v0, qword_100127498);
  sub_100007EBC(v0, qword_100127498);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v1 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D9260(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000DAE04();
  sub_100007EF4(v3, a2);
  sub_100007EBC(v3, a2);
  if (qword_10011FC00 != -1)
  {
    swift_once();
  }

  v4 = qword_100126DF0;
  return sub_1000DADF4();
}

uint64_t sub_1000D930C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100132918 == -1)
  {
    if (qword_100132920)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000D97D4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100132920)
    {
      return _availability_version_check();
    }
  }

  if (qword_100132910 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000D97EC();
    a3 = v10;
    a4 = v9;
    v8 = dword_100132900 < v11;
    if (dword_100132900 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100132904 > a3)
      {
        return 1;
      }

      if (dword_100132904 >= a3)
      {
        return dword_100132908 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100132900 < a2;
  if (dword_100132900 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000D94A0(uint64_t result)
{
  v1 = qword_100132920;
  if (qword_100132920)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100132920 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100132900, &dword_100132904, &dword_100132908);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}