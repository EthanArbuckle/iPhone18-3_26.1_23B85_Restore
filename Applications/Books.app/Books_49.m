void sub_100623F68(uint64_t a1@<X8>)
{
  v2 = sub_10079A8B4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100799394();
  if (!v3)
  {
    v17 = sub_10079A674();
    v18 = *(*(v17 - 8) + 56);

    v18(a1, 1, 1, v17);
    return;
  }

  v4 = v3;
  v5 = sub_100799574();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  v9 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_70;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v45 = 0;
    sub_10063E4AC(v5, v7, 10);
    v33 = v43;
    goto LABEL_69;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v44[0] = v5;
    v44[1] = v7 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == 43)
    {
      if (v8)
      {
        if (--v8)
        {
          v25 = 0;
          v26 = v44 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            if (!is_mul_ok(v25, 0xAuLL))
            {
              break;
            }

            v16 = __CFADD__(10 * v25, v27);
            v25 = 10 * v25 + v27;
            if (v16)
            {
              break;
            }

            ++v26;
            if (!--v8)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_82:
      __break(1u);
      return;
    }

    if (v5 != 45)
    {
      if (v8)
      {
        v30 = 0;
        v31 = v44;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v30, 0xAuLL))
          {
            break;
          }

          v16 = __CFADD__(10 * v30, v32);
          v30 = 10 * v30 + v32;
          if (v16)
          {
            break;
          }

          ++v31;
          if (!--v8)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    if (v8)
    {
      if (--v8)
      {
        v19 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          if (!is_mul_ok(v19, 0xAuLL))
          {
            break;
          }

          v16 = 10 * v19 >= v21;
          v19 = 10 * v19 - v21;
          if (!v16)
          {
            break;
          }

          ++v20;
          if (!--v8)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_80;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1007A37B4();
  }

  v12 = *v11;
  if (v12 == 43)
  {
    if (v9 < 1)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v8 = v9 - 1;
    if (v9 != 1)
    {
      v22 = 0;
      if (v11)
      {
        v23 = v11 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            goto LABEL_67;
          }

          if (!is_mul_ok(v22, 0xAuLL))
          {
            goto LABEL_67;
          }

          v16 = __CFADD__(10 * v22, v24);
          v22 = 10 * v22 + v24;
          if (v16)
          {
            goto LABEL_67;
          }

          ++v23;
          if (!--v8)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_59;
    }

LABEL_67:
    LOBYTE(v8) = 1;
    goto LABEL_68;
  }

  if (v12 != 45)
  {
    if (v9)
    {
      v28 = 0;
      if (v11)
      {
        while (1)
        {
          v29 = *v11 - 48;
          if (v29 > 9)
          {
            goto LABEL_67;
          }

          if (!is_mul_ok(v28, 0xAuLL))
          {
            goto LABEL_67;
          }

          v16 = __CFADD__(10 * v28, v29);
          v28 = 10 * v28 + v29;
          if (v16)
          {
            goto LABEL_67;
          }

          ++v11;
          if (!--v9)
          {
            goto LABEL_59;
          }
        }
      }

      goto LABEL_59;
    }

    goto LABEL_67;
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v8 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_67;
  }

  v13 = 0;
  if (v11)
  {
    v14 = v11 + 1;
    while (1)
    {
      v15 = *v14 - 48;
      if (v15 > 9)
      {
        goto LABEL_67;
      }

      if (!is_mul_ok(v13, 0xAuLL))
      {
        goto LABEL_67;
      }

      v16 = 10 * v13 >= v15;
      v13 = 10 * v13 - v15;
      if (!v16)
      {
        goto LABEL_67;
      }

      ++v14;
      if (!--v8)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_59:
  LOBYTE(v8) = 0;
LABEL_68:
  v45 = v8;
  v33 = v8;
LABEL_69:

  if (v33)
  {
LABEL_70:

    v34 = sub_10079A674();
    (*(*(v34 - 8) + 56))(a1, 1, 1, v34);
    return;
  }

  v35 = v4;
  sub_100799384();
  if ((v37 & 0x100000000) == 0)
  {
    sub_1007A3314(v36);
    v39 = v38;
    [v38 integerValue];
  }

  sub_1007994C4();

  if (sub_100799484())
  {
    v40 = sub_100798FF4();
    sub_10063D7E8(v40, v41);
  }

  sub_10079A894();
  sub_10079A654();

  v42 = sub_10079A674();
  (*(*(v42 - 8) + 56))(a1, 0, 1, v42);
}

uint64_t sub_100624468(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1007A3C44();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1007A3AB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1006EBE40();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100624C44(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1006245A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100796C04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100628298(&qword_100ADAD88, &type metadata accessor for UUID);
  v31 = a1;
  v10 = sub_1007A2074();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100628298(&qword_100ADAD90, &type metadata accessor for UUID);
      v19 = sub_1007A2124();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006EC100();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100624E08(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10062484C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1007A3664();

    if (v5)
    {
      v6 = sub_100624AEC();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for BKTapActionView();
  v9 = sub_1007A3174(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_1007A3184();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1006EC128();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100625110(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1006249EC(uint64_t a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = sub_1007A3BF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (*(*(v5 + 48) + 8 * v8) != a1)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v8);
  sub_1006252B0(v8);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t sub_100624AEC()
{
  v1 = v0;

  v2 = sub_1007A3624();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1006E8170(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_1007A3174(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for BKTapActionView();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_1007A3184();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100625110(v8);
  result = sub_1007A3184();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100624C44(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007A35B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1007A3C04();

        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
        v10 = sub_1007A3C44();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_100624E08(int64_t a1)
{
  v3 = sub_100796C04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1007A35B4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_100628298(&qword_100ADAD88, &type metadata accessor for UUID);
        v23 = sub_1007A2074();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_100625110(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007A35B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1007A3174(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1006252B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007A35B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1007A3BF4() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100625434(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100624468(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_100625560(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1006249EC(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))), sub_1006EC27C);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

_BYTE *sub_10062566C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1007A3C04();

    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    v23 = sub_1007A3C44();
    v24 = -1 << v5[32];
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 6) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1007A3AB4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = v5[32];
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 2);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10062642C(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1007A3C04();

            _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
            v41 = sub_1007A3C44();
            v42 = -1 << v5[32];
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 6) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1007A3AB4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 6) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_100626038(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_10004DC54();
    return v5;
  }

  __break(1u);
  return result;
}

char *sub_100625BDC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
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
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v47 << 9) | (8 * v18)));
        v19 = sub_1007A3BF4();
        v20 = -1 << v6[32];
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & v13[v5 >> 6]) == 0);
      v21 = *(v6 + 6);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & v13[v5 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v49 = v45;
    v50 = v47;
    v51 = v11;
    v48[0] = v46;
    v48[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, v6 + 56, v14);
      v40 = sub_100626270(v39, v4, v6, v5, v48);

      v45 = v49;
      v47 = v50;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v4;
    v43 = &v41;
    __chkstk_darwin(v22);
    v5 = &v41 - v23;
    memcpy(&v41 - v23, v6 + 56, v14);
    v24 = *(v6 + 2);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v47 << 9) | (8 * v29)));
      v30 = sub_1007A3BF4();
      v31 = -1 << v6[32];
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = *(v6 + 6);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_100626650(v5, v42, v44, v6);
LABEL_43:
    sub_10004DC54();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

unint64_t *sub_100626038(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_10062642C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1007A3C04();

        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
        v19 = sub_1007A3C44();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1007A3AB4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100626270(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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
    result = sub_1007A3BF4();
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

  return sub_100626650(v8, a2, v10, a3);
}

uint64_t sub_10062642C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1001F1160(&qword_100AEE530);
  result = sub_1007A36F4();
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
    sub_1007A3C04();

    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    result = sub_1007A3C44();
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

uint64_t sub_100626650(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1001F1160(&qword_100AEE528);
  result = sub_1007A36F4();
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
    result = sub_1007A3BF4();
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

uint64_t sub_10062683C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(sub_1001F1160(&qword_100AEE548) + 48);
  v5 = *(sub_1001F1160(&qword_100AEE540) + 48);
  v6 = *a1;
  v7 = sub_10079A6D4();
  result = (*(*(v7 - 8) + 16))(&a2[v5], &a1[v4], v7);
  *a2 = v6;
  return result;
}

void sub_1006268E4(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AEE548);
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v40 - v4;
  v5 = sub_10079A6D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AEE550);
  __chkstk_darwin(v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = __chkstk_darwin(v11);
  v14 = &v40 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v45 = a1;
  v43 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = *(*(v15 + 48) + 8 * v24);
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v5, v13);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v25;
    v29 = v8;
    v30 = v27;
    (*(v6 + 32))(&v14[v28], v29, v5);
    v31 = v41;
    (*(v41 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v32 = v44;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v26;
    v33 = v1[5];
    sub_10020B3C8(v14, v32, &qword_100AEE550);
    v34 = 1;
    v35 = (*(v31 + 48))(v32, 1, v30);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v32;
      v38 = v40;
      sub_10020B3C8(v37, v40, &qword_100AEE548);
      v33(v38);
      sub_100007840(v38, &qword_100AEE548);
      v34 = 0;
    }

    v39 = sub_1001F1160(&qword_100AEE540);
    (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v31 = v41;
        v30 = v42;
        (*(v41 + 56))(&v40 - v12, 1, 1, v42, v13);
        v26 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100626CAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

id sub_100626CF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_100626D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_10061F2D8(a1, v4, v5, v7, v6);
}

void sub_100626E00(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AED480);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - v3;
  v80 = _swiftEmptyDictionarySingleton;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v70 = v78 + 1;

  v10 = 0;
  *&v11 = 136315138;
  v72 = v11;
  v73 = a1;
  v75 = v9;
  v76 = a1 + 64;
  v71 = v4;
  while (v8)
  {
    v12 = v10;
LABEL_13:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(a1 + 56) + 8 * v14);
    sub_100799444();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = HIBYTE(v16) & 0xF;
      v21 = v17 & 0xFFFFFFFFFFFFLL;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v22 = v17 & 0xFFFFFFFFFFFFLL;
      }

      v77 = v18;
      if (v22)
      {
        v23 = v19;
        if ((v16 & 0x1000000000000000) != 0)
        {
          swift_bridgeObjectRetain_n();
          v63 = v18;
          v26 = sub_10063E4AC(v17, v16, 10);
          v65 = v64;

          if (v65)
          {
            v53 = v77;
            goto LABEL_84;
          }

          v53 = v77;
          goto LABEL_93;
        }

        if ((v16 & 0x2000000000000000) != 0)
        {
          v78[0] = v17;
          v78[1] = v16 & 0xFFFFFFFFFFFFFFLL;
          if (v17 == 43)
          {
            if (!v20)
            {
              goto LABEL_100;
            }

            if (--v20)
            {
              v26 = 0;
              v47 = v70;
              while (1)
              {
                v48 = *v47 - 48;
                if (v48 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = __CFADD__(10 * v26, v48);
                v26 = 10 * v26 + v48;
                if (v29)
                {
                  break;
                }

                ++v47;
                if (!--v20)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v17 == 45)
          {
            if (!v20)
            {
              goto LABEL_101;
            }

            if (--v20)
            {
              v26 = 0;
              v43 = v70;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = 10 * v26 >= v44;
                v26 = 10 * v26 - v44;
                if (!v29)
                {
                  break;
                }

                ++v43;
                if (!--v20)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v20)
          {
            v26 = 0;
            v50 = v78;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                break;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v26, v51);
              v26 = 10 * v26 + v51;
              if (v29)
              {
                break;
              }

              v50 = (v50 + 1);
              if (!--v20)
              {
                goto LABEL_83;
              }
            }
          }
        }

        else
        {
          if ((v17 & 0x1000000000000000) != 0)
          {
            v24 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v24 = sub_1007A37B4();
          }

          v25 = *v24;
          if (v25 == 43)
          {
            if (v21 < 1)
            {
              goto LABEL_99;
            }

            v20 = v21 - 1;
            if (v21 != 1)
            {
              v26 = 0;
              if (!v24)
              {
                goto LABEL_74;
              }

              v45 = v24 + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v26, 0xAuLL))
                {
                  break;
                }

                v29 = __CFADD__(10 * v26, v46);
                v26 = 10 * v26 + v46;
                if (v29)
                {
                  break;
                }

                ++v45;
                if (!--v20)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v25 == 45)
          {
            if (v21 < 1)
            {
              goto LABEL_102;
            }

            v20 = v21 - 1;
            if (v21 != 1)
            {
              v26 = 0;
              if (v24)
              {
                v27 = v24 + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_82;
                  }

                  if (!is_mul_ok(v26, 0xAuLL))
                  {
                    goto LABEL_82;
                  }

                  v29 = 10 * v26 >= v28;
                  v26 = 10 * v26 - v28;
                  if (!v29)
                  {
                    goto LABEL_82;
                  }

                  ++v27;
                  if (!--v20)
                  {
                    goto LABEL_83;
                  }
                }
              }

LABEL_74:
              LOBYTE(v20) = 0;
LABEL_83:
              v79 = v20;
              v52 = v20;
              v53 = v77;
              v54 = v77;

              v55 = v54;
              if (v52)
              {
LABEL_84:

                goto LABEL_85;
              }

LABEL_93:

              v66 = v53;
              v67 = v71;
              v68 = v74;
              sub_100622E9C(v23, v71);
              v74 = v68;
              if (v68)
              {

                return;
              }

              v69 = sub_10079A6D4();
              (*(*(v69 - 8) + 56))(v67, 0, 1, v69);
              sub_1005E9F54(v67, v26);

LABEL_6:
              v10 = v12;
              goto LABEL_7;
            }
          }

          else
          {
            if (!v21)
            {
              goto LABEL_82;
            }

            v26 = 0;
            if (!v24)
            {
              goto LABEL_74;
            }

            while (1)
            {
              v49 = *v24 - 48;
              if (v49 > 9)
              {
                break;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v26, v49);
              v26 = 10 * v26 + v49;
              if (v29)
              {
                break;
              }

              ++v24;
              if (!--v21)
              {
                goto LABEL_74;
              }
            }
          }
        }

LABEL_82:
        v26 = 0;
        LOBYTE(v20) = 1;
        goto LABEL_83;
      }

      v62 = v18;
LABEL_85:
      if (qword_100AD1968 != -1)
      {
        swift_once();
      }

      v56 = sub_10079ACE4();
      sub_100008B98(v56, qword_100B236E8);

      v57 = sub_10079ACC4();
      v58 = sub_1007A29B4();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v78[0] = v60;
        *v59 = v72;
        v61 = sub_1000070F4(v17, v16, v78);

        *(v59 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v57, v58, "_extractMetadata: Invalid adamID: %s", v59, 0xCu);
        sub_1000074E0(v60);

        a1 = v73;
      }

      else
      {
      }

      goto LABEL_6;
    }

    v30 = qword_100AD1968;
    v31 = v18;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = sub_10079ACE4();
    sub_100008B98(v32, qword_100B236E8);
    v33 = v31;
    v34 = sub_10079ACC4();
    v35 = sub_1007A29B4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78[0] = v77;
      *v36 = v72;
      v37 = v33;
      v38 = [v37 description];
      v39 = sub_1007A2254();
      v41 = v40;

      v42 = sub_1000070F4(v39, v41, v78);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "_extractMetadata: Expected MAsset. resource: %s", v36, 0xCu);
      sub_1000074E0(v77);
    }

    else
    {
    }

    v10 = v12;
    a1 = v73;
LABEL_7:
    v9 = v75;
    v5 = v76;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

uint64_t sub_1006275C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v48 = sub_10079A6D4();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v45 - v12;
  v14 = sub_1001F1160(&qword_100AEE538);
  __chkstk_darwin(v14 - 8);
  v16 = v45 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v49 = a1;
  v50 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v51 = v18;
  v52 = 0;
  v53 = v21 & v19;
  v54 = a2;
  v55 = a3;
  v22 = (v9 + 32);
  v45[4] = v9 + 8;
  v45[5] = v9 + 16;
  v47 = v9;
  v45[3] = v9 + 40;

  v45[1] = a3;

  while (1)
  {
    sub_1006268E4(v16);
    v27 = sub_1001F1160(&qword_100AEE540);
    if ((*(*(v27 - 8) + 48))(v16, 1, v27) == 1)
    {
      sub_10004DC54();
    }

    v28 = *v16;
    v29 = *v22;
    v30 = v13;
    (*v22)(v13, &v16[*(v27 + 48)], v48);
    v31 = *v56;
    v33 = sub_1002F9CDC(v28);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((a4 & 1) == 0)
      {
        sub_1002F2A40();
      }
    }

    else
    {
      sub_1003D6DB8(v36, a4 & 1);
      v38 = sub_1002F9CDC(v28);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v33 = v38;
    }

    v40 = *v56;
    if (v37)
    {
      v23 = v47;
      v24 = v48;
      v25 = *(v47 + 72) * v33;
      v26 = v46;
      (*(v47 + 16))(v46, v40[7] + v25, v48);
      v13 = v30;
      (*(v23 + 8))(v30, v24);
      (*(v23 + 40))(v40[7] + v25, v26, v24);
      a4 = 1;
    }

    else
    {
      v40[(v33 >> 6) + 8] |= 1 << v33;
      *(v40[6] + 8 * v33) = v28;
      v13 = v30;
      v29((v40[7] + *(v47 + 72) * v33), v30, v48);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

unint64_t sub_100627994()
{
  result = qword_100AEE560;
  if (!qword_100AEE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE560);
  }

  return result;
}

unint64_t sub_1006279E8()
{
  result = qword_100AEE568;
  if (!qword_100AEE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE568);
  }

  return result;
}

uint64_t sub_100627A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEE558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100627AAC()
{
  if (!qword_100AEE570)
  {
    v0 = _s6ErrorsOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEE570);
    }
  }
}

uint64_t sub_100627B0C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v47 = a5;
  v48 = v7;
  v46 = v11;
  while (v10)
  {
    v57 = a4;
    v18 = v12;
LABEL_14:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v10)));
    v21 = (*(a1 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + v20);
    v25 = *v24;
    v26 = v24[1];
    v56[0] = v22;
    v56[1] = v23;
    v56[2] = v25;
    v56[3] = v26;

    a2(&v52, v56);

    v28 = v52;
    v27 = v53;
    v29 = v55;
    v51 = v54;
    v30 = *a5;
    v32 = sub_10000E53C(v52, v53);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((v57 & 1) == 0)
      {
        sub_1002F0D14();
      }
    }

    else
    {
      sub_1003D3E94(v35, v57 & 1);
      v37 = sub_10000E53C(v28, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
    }

    v10 &= v10 - 1;
    v39 = *a5;
    if (v36)
    {
      v13 = 16 * v32;
      v14 = (v39[7] + 16 * v32);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v39[7] + v13);
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v51;
      v41[1] = v29;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v39[2] = v44;
    }

    a4 = 1;
    v12 = v18;
    a5 = v47;
    v7 = v48;
    v11 = v46;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_10004DC54();
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v57 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_100627DDC(uint64_t a1)
{
  v3 = *(sub_1001F1160(&qword_100AEE588) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100622664(a1, v4, v5, v6);
}

uint64_t sub_100627E64(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5, void (*a6)(void), void (*a7)(void))
{
  v51 = a5;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (63 - v9) >> 6;

  v13 = 0;
  v43 = v8;
  while (v11)
  {
    v46 = a4;
    v17 = v13;
LABEL_14:
    v19 = __clz(__rbit64(v11)) | (v17 << 6);
    v20 = (*(a1 + 48) + 16 * v19);
    v21 = v20[1];
    v22 = *(*(a1 + 56) + 8 * v19);
    v50[0] = *v20;
    v50[1] = v21;
    v50[2] = v22;

    v23 = v22;
    a2(&v47, v50);

    v25 = v47;
    v24 = v48;
    v26 = v49;
    v27 = *v51;
    v29 = sub_10000E53C(v47, v48);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v32 = v28;
    if (v27[3] >= v30 + v31)
    {
      if ((v46 & 1) == 0)
      {
        a7();
      }
    }

    else
    {
      a6();
      v33 = sub_10000E53C(v25, v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v29 = v33;
    }

    v11 &= v11 - 1;
    v35 = *v51;
    if (v32)
    {
      v14 = *(v35[7] + 8 * v29);

      v15 = v35[7];
      v16 = *(v15 + 8 * v29);
      *(v15 + 8 * v29) = v14;
    }

    else
    {
      v35[(v29 >> 6) + 8] |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v25;
      v36[1] = v24;
      *(v35[7] + 8 * v29) = v26;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v13 = v17;
    v8 = v43;
  }

  v18 = v13;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      sub_10004DC54();
    }

    v11 = *(v8 + 8 * v17);
    ++v18;
    if (v11)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

unint64_t sub_100628114()
{
  result = qword_100AEE598[0];
  if (!qword_100AEE598[0])
  {
    sub_1001F1234(&qword_100AEE590);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AEE598);
  }

  return result;
}

unint64_t sub_1006281A4()
{
  result = qword_100AEE620;
  if (!qword_100AEE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE620);
  }

  return result;
}

unint64_t sub_1006281FC()
{
  result = qword_100AEE628;
  if (!qword_100AEE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE628);
  }

  return result;
}

uint64_t sub_100628298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100628480(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 1, 0);
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

id sub_100628500@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PriceTrackingService()) init];
  *a1 = result;
  return result;
}

void sub_100628550(uint64_t a1, id a2)
{
  v3 = [a2 priceTracker];
  v4 = [objc_opt_self() sharedInstance];
  sub_100798B74();
  sub_10068A63C(v4, v3);
  v5 = (a1 + OBJC_IVAR___BKPriceTrackingService__addToWTRDelegate);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v8;

  v10 = sub_1006286B8(v6, v7, v8);

  [objc_opt_self() setAddToWTRDelegate:v10];

  sub_100798B74();
}

uint64_t sub_1006286B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (qword_100AD13A0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100B22FB0);

    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000070F4(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, v7, v8, "[get] Missing value for %{public}s! Did you forget to call setupService()?", v9, 0xCu);
      sub_1000074E0(v10);
    }
  }

  return a3;
}

uint64_t sub_100628814()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002812C;

  return sub_100628480(v2);
}

char *sub_1006288C4()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  v100 = v1;
  v101 = v2;
  __chkstk_darwin(v1);
  v94 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v80 - v5;
  v6 = sub_1007A21D4();
  v89 = v6;
  v99 = *(v6 - 8);
  v7 = v99;
  __chkstk_darwin(v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v80 - v11;
  v13 = sub_10079DD44();
  v86 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v16;
  *(v0 + 2) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v17 = enum case for Color.RGBColorSpace.sRGB(_:);
  v18 = *(v14 + 104);
  v85 = enum case for Color.RGBColorSpace.sRGB(_:);
  v18(v16, enum case for Color.RGBColorSpace.sRGB(_:), v13);
  v87 = v18;
  v88 = v14 + 104;
  *(v0 + 3) = sub_10079DE84();
  *(v0 + 4) = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v18(v16, v17, v13);
  *(v0 + 5) = sub_10079DE84();
  *(v0 + 6) = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  *(v0 + 7) = 0x4000000000000000;
  *(v0 + 28) = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_1007A2154();
  v19 = v83;
  sub_100796C94();
  v20 = *(v7 + 16);
  v93 = v7 + 16;
  v98 = v20;
  v91 = v9;
  v20(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v97 = ObjCClassFromMetadata;
  v96 = objc_opt_self();
  v22 = [v96 bundleForClass:ObjCClassFromMetadata];
  v24 = v100;
  v23 = v101;
  v25 = *(v101 + 16);
  v92 = v101 + 16;
  v95 = v25;
  v25(v94, v19, v100);
  v26 = sub_1007A22D4();
  v28 = v27;
  v29 = *(v23 + 8);
  v101 = v23 + 8;
  v29(v19, v24);
  v30 = v29;
  v90 = v29;
  v32 = v99 + 8;
  v31 = *(v99 + 8);
  v33 = v89;
  v31(v12, v89);
  v82 = v31;
  v99 = v32;
  *(v0 + 23) = v26;
  *(v0 + 24) = v28;
  v81 = v12;
  sub_1007A2154();
  v34 = v19;
  sub_100796C94();
  v35 = v33;
  v98(v91, v12, v33);
  v36 = [v96 bundleForClass:v97];
  v37 = v100;
  v95(v94, v34, v100);
  v38 = sub_1007A22D4();
  v40 = v39;
  v30(v34, v37);
  v41 = v81;
  v42 = v35;
  v31(v81, v35);
  *(v0 + 25) = v38;
  *(v0 + 26) = v40;
  v43 = v84;
  v44 = v85;
  v45 = v86;
  v46 = v87;
  v87(v84, v85, v86);
  *(v0 + 10) = sub_10079DE74();
  v46(v43, v44, v45);
  *(v0 + 8) = sub_10079DE74();
  *(v0 + 9) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v47 = v41;
  sub_1007A2154();
  sub_100796C94();
  v48 = v91;
  v98(v91, v41, v42);
  v49 = [v96 bundleForClass:v97];
  v50 = v100;
  v95(v94, v34, v100);
  v51 = sub_1007A22D4();
  v53 = v52;
  v90(v34, v50);
  v54 = v82;
  v82(v47, v42);
  *(v0 + 11) = v51;
  *(v0 + 12) = v53;
  *(v0 + 15) = sub_10079DDF4();
  *(v0 + 13) = sub_10079DDF4();
  *(v0 + 14) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  sub_1007A2154();
  sub_100796C94();
  v98(v48, v47, v42);
  v55 = [v96 bundleForClass:v97];
  v56 = v94;
  v57 = v100;
  v95(v94, v34, v100);
  v58 = v56;
  v59 = sub_1007A22D4();
  v61 = v60;
  v62 = v34;
  v63 = v90;
  v90(v34, v57);
  v64 = v47;
  v65 = v47;
  v66 = v89;
  v54(v64, v89);
  *(v0 + 16) = v59;
  *(v0 + 17) = v61;
  v67 = objc_opt_self();
  v68 = [v67 tertiaryLabelColor];
  *(v0 + 20) = sub_10079DEA4();
  *(v0 + 18) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v69 = [v67 tertiaryLabelColor];
  *(v0 + 19) = sub_10079DEA4();
  v70 = v65;
  sub_1007A2154();
  sub_100796C94();
  v98(v91, v65, v66);
  v71 = [v96 bundleForClass:v97];
  v72 = v100;
  v95(v58, v62, v100);
  v73 = sub_1007A22D4();
  v75 = v74;
  v63(v62, v72);
  v54(v70, v66);
  *(v0 + 21) = v73;
  *(v0 + 22) = v75;
  *(v0 + 27) = 0x4059000000000000;
  v76 = OBJC_IVAR____TtC5Books14BuyButtonStyle_maximumContentSizeCategory;
  v77 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v78 = sub_10079CAE4();
  (*(*(v78 - 8) + 104))(&v0[v76], v77, v78);
  return v0;
}

uint64_t BuyButtonStyle.deinit()
{

  v1 = OBJC_IVAR____TtC5Books14BuyButtonStyle_maximumContentSizeCategory;
  v2 = sub_10079CAE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BuyButtonStyle.__deallocating_deinit()
{
  BuyButtonStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BuyButtonStyle()
{
  result = qword_100AEE728;
  if (!qword_100AEE728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006293B0()
{
  result = sub_10079CAE4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100629488(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v22 = sub_100799B44();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v7 + 16;
  v21 = (v7 + 8);
  v23 = a4;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v7 + 16))(v9, *(v23 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v20(&v24, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v21)(v9, v18);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v9, v18);
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return v24;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1006296A8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AEEA88);
  sub_100008B98(v0, qword_100AEEA88);
  return sub_10079ACD4();
}

uint64_t sub_100629744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001008D8B70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1007A3AB4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1006297E4(uint64_t a1)
{
  v2 = sub_10063C594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100629820(uint64_t a1)
{
  v2 = sub_10063C594();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10062985C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AEEDC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C594();
  sub_1007A3CB4();
  if (v2)
  {
    return sub_1000074E0(a1);
  }

  v9 = sub_1007A39C4();
  (*(v6 + 8))(v8, v5);
  result = sub_1000074E0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1006299BC(void *a1)
{
  v2 = sub_1001F1160(&qword_100AEEDD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C594();
  sub_1007A3CC4();
  sub_1007A3A34();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_100629AF4()
{
  v1 = *v0;
  sub_1007A3C04();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1007A3C14(v2);
  return sub_1007A3C44();
}

void sub_100629B44()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_1007A3C14(v1);
}

Swift::Int sub_100629B7C()
{
  v1 = *v0;
  sub_1007A3C04();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1007A3C14(v2);
  return sub_1007A3C44();
}

void *sub_100629BC8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100629BE8(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_100629CB0(void *a1)
{
  v3 = v1;
  v5 = sub_1001F1160(&qword_100AEEDE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C4B4();
  sub_1007A3CC4();
  LOBYTE(v10) = 0;
  sub_1007A39E4();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1007A3A14();
    LOBYTE(v10) = *(v3 + 32);
    v11 = 2;
    sub_10063C5E8();
    sub_1007A3A44();
    LOBYTE(v10) = 3;
    sub_1007A3A24();
    LOBYTE(v10) = 4;
    sub_1007A3A24();
    LOBYTE(v10) = 5;
    sub_1007A3A24();
    v10 = *(v3 + 40);
    v11 = 6;
    sub_1001F1160(&unk_100AD61F0);
    sub_10063C63C(&qword_100AEEDF0);
    sub_1007A3A44();
    LOBYTE(v10) = 7;
    sub_1007A3A34();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100629F88(char a1)
{
  result = 0x6E656D7461657274;
  switch(a1)
  {
    case 1:
      return 0x444965726F7473;
    case 2:
      return 0xD000000000000012;
    case 3:
      return 0xD000000000000012;
    case 4:
      return 0x746963696C707865;
    case 5:
      return 0xD000000000000010;
    case 6:
      v4 = 1114532205;
      return v4 | 0x736B6F6F00000000;
    case 7:
      v4 = 1115185517;
      return v4 | 0x736B6F6F00000000;
    case 8:
      return 0xD000000000000019;
    case 9:
      return 0x697463656C6C6F63;
    case 10:
      return 0xD000000000000012;
    case 11:
      v3 = 5;
      goto LABEL_7;
    case 12:
      v3 = 9;
LABEL_7:
      result = v3 | 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x707954616964656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10062A178(void *a1)
{
  v3 = v1;
  v5 = sub_1001F1160(&qword_100AEEDF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C2E4();
  sub_1007A3CC4();
  LOBYTE(v11) = 0;
  sub_1007A39E4();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1007A3A14();
    LOBYTE(v11) = 2;
    sub_1007A3A24();
    LOBYTE(v11) = 3;
    sub_1007A3A24();
    LOBYTE(v11) = 4;
    sub_1007A3A24();
    v11 = v3[5];
    HIBYTE(v10) = 5;
    sub_1001F1160(&unk_100AD61F0);
    sub_10063C63C(&qword_100AEEDF0);
    sub_1007A3A44();
    LOBYTE(v11) = 6;
    sub_1007A39F4();
    LOBYTE(v11) = 7;
    sub_1007A39F4();
    v11 = v3[10];
    HIBYTE(v10) = 8;
    sub_1001F1160(&unk_100AF23A0);
    sub_10063C338(&qword_100AEEE00);
    sub_1007A3A04();
    v11 = v3[11];
    HIBYTE(v10) = 9;
    sub_1007A3A04();
    LOBYTE(v11) = 10;
    sub_1007A39F4();
    v11 = v3[14];
    HIBYTE(v10) = 11;
    sub_1001F1160(&qword_100AEEB30);
    sub_10063C6A8(&qword_100AEEE08);
    sub_1007A3A04();
    v11 = v3[15];
    HIBYTE(v10) = 12;
    sub_1001F1160(&qword_100AEEB40);
    sub_10063C718();
    sub_1007A3A04();
    v11 = v3[16];
    HIBYTE(v10) = 13;
    sub_1007A3A04();
    LOBYTE(v11) = 14;
    sub_1007A39F4();
    type metadata accessor for CollectionRecommendationsConfiguration();
    LOBYTE(v11) = 15;
    sub_10079A0B4();
    sub_10063C7C4(&qword_100AEEE18, &type metadata accessor for MediaTypeMethod);
    sub_1007A3A04();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10062A6A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = sub_1001F1160(&qword_100AEEAF8);
  __chkstk_darwin(v4 - 8);
  v6 = v47 - v5;
  v54 = sub_1001F1160(&qword_100AEED78);
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v9 = v47 - v8;
  v10 = type metadata accessor for CollectionRecommendationsConfiguration();
  __chkstk_darwin(v10);
  v12 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v55 = a1;
  sub_10000E3E8(a1, v13);
  sub_10063C2E4();
  v53 = v9;
  sub_1007A3CB4();
  if (v2)
  {
    return sub_1000074E0(v55);
  }

  v50 = v6;
  v51 = v12;
  v14 = v7;
  LOBYTE(v57) = 0;
  v15 = v53;
  v16 = v54;
  v17 = sub_1007A3974();
  v19 = v51;
  *v51 = v17;
  v19[1] = v20;
  v48 = v20;
  LOBYTE(v57) = 1;
  v19[2] = sub_1007A39A4();
  v19[3] = v21;
  LOBYTE(v57) = 2;
  *(v19 + 32) = sub_1007A39B4() & 1;
  LOBYTE(v57) = 3;
  *(v19 + 33) = sub_1007A39B4() & 1;
  LOBYTE(v57) = 4;
  v25 = sub_1007A39B4();
  v49 = 0;
  *(v19 + 34) = v25 & 1;
  v26 = sub_1001F1160(&unk_100AD61F0);
  v56 = 5;
  v47[2] = sub_10063C63C(&qword_100AEED88);
  v27 = v49;
  sub_1007A39D4();
  if (v27)
  {
    v49 = v27;
    (*(v14 + 8))(v15, v16);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_5;
  }

  v47[1] = v26;
  v19[5] = v57;
  LOBYTE(v57) = 6;
  v19[6] = sub_1007A3984();
  *(v19 + 56) = v28 & 1;
  LOBYTE(v57) = 7;
  v29 = sub_1007A3984();
  v49 = 0;
  v19[8] = v29;
  *(v19 + 72) = v30 & 1;
  sub_1001F1160(&unk_100AF23A0);
  v56 = 8;
  sub_10063C338(&qword_100AEED90);
  v31 = v49;
  sub_1007A3994();
  v49 = v31;
  if (v31)
  {
    (*(v14 + 8))(v15, v16);
    v23 = 0;
    v24 = 0;
    v22 = 1;
    goto LABEL_5;
  }

  v19[10] = v57;
  v56 = 9;
  v32 = v49;
  sub_1007A3994();
  v49 = v32;
  if (v32)
  {
    (*(v14 + 8))(v53, v54);
    v24 = 0;
    v22 = 1;
    v23 = 1;
    goto LABEL_5;
  }

  v51[11] = v57;
  LOBYTE(v57) = 10;
  v33 = v49;
  v34 = sub_1007A3984();
  v49 = v33;
  if (v33 || (v36 = v51, v51[12] = v34, *(v36 + 104) = v35 & 1, sub_1001F1160(&qword_100AEEB30), v56 = 11, sub_10063C6A8(&qword_100AEED98), v37 = v49, sub_1007A3994(), (v49 = v37) != 0))
  {
    (*(v14 + 8))(v53, v54);
    v22 = 1;
    v23 = 1;
    v24 = 1;
LABEL_5:
    sub_1000074E0(v55);

    if (v22)
    {

      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (!v23)
    {
LABEL_7:
      if (!v24)
      {
        return result;
      }
    }

    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  v51[14] = v57;
  sub_1001F1160(&qword_100AEEB40);
  v56 = 12;
  sub_10063C3A4();
  v38 = v49;
  sub_1007A3994();
  v39 = v38;
  if (v38)
  {
    (*(v14 + 8))(v53, v54);
    sub_1000074E0(v55);
    v40 = 0;
    v49 = v38;
  }

  else
  {
    v51[15] = v57;
    v56 = 13;
    sub_1007A3994();
    v49 = 0;
    v51[16] = v57;
    LOBYTE(v57) = 14;
    v41 = v49;
    v42 = sub_1007A3984();
    v49 = v41;
    if (v41)
    {
      (*(v14 + 8))(v53, v54);
      sub_1000074E0(v55);
    }

    else
    {
      v44 = v51;
      v51[17] = v42;
      *(v44 + 144) = v43 & 1;
      sub_10079A0B4();
      LOBYTE(v57) = 15;
      sub_10063C7C4(&qword_100AEEDA8, &type metadata accessor for MediaTypeMethod);
      v45 = v49;
      sub_1007A3994();
      v49 = v45;
      if (!v45)
      {
        (*(v14 + 8))(v53, v54);
        v46 = v51;
        sub_10020B3C8(v50, v51 + *(v10 + 76), &qword_100AEEAF8);
        sub_10063C450(v46, v52);
        sub_1000074E0(v55);
        return sub_10063A218(v46);
      }

      (*(v14 + 8))(v53, v54);
      sub_1000074E0(v55);
      v48 = v51[1];
    }

    v40 = 1;
  }

  if (v39)
  {
    if (v40)
    {
    }
  }

  else
  {

    if (v40)
    {
    }
  }

  return result;
}

uint64_t sub_10062AF30()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000012;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    if (v1 != 4)
    {
      v6 = 0x746963696C707865;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E656D7461657274;
    v3 = 0x707954616964656DLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 0x444965726F7473;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_10062B050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006391FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10062B084(uint64_t a1)
{
  v2 = sub_10063C4B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10062B0C0(uint64_t a1)
{
  v2 = sub_10063C4B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10062B0FC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006394B0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10062B198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100639914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10062B1CC(uint64_t a1)
{
  v2 = sub_10063C2E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10062B208(uint64_t a1)
{
  v2 = sub_10063C2E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10062B274(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___recommendationService;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v6, &qword_100AEEC70);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
  }

  else
  {
    v4 = v1;
    sub_100007840(&v6, &qword_100AEEC70);
    sub_100017E74();
    v5 = sub_1007A2D74();
    sub_1001F1160(&qword_100AEEC78);
    sub_1007A2CC4();

    if (v7)
    {
      sub_1000077C0(&v6, a1);
      sub_100009864(a1, &v6);
      swift_beginAccess();
      sub_1002391EC(&v6, v4 + v3, &qword_100AEEC70);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10062B3D0(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___collectionRecommendationService;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v6, &qword_100AEEC60);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
  }

  else
  {
    v4 = v1;
    sub_100007840(&v6, &qword_100AEEC60);
    sub_100017E74();
    v5 = sub_1007A2D74();
    sub_1001F1160(&qword_100AEEC68);
    sub_1007A2CC4();

    if (v7)
    {
      sub_1000077C0(&v6, a1);
      sub_100009864(a1, &v6);
      swift_beginAccess();
      sub_1002391EC(&v6, v4 + v3, &qword_100AEEC60);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10062B52C(uint64_t *a1)
{
  v2 = [objc_opt_self() delegate];
  v3 = [v2 containerHost];
  sub_1000076D8(v5);

  sub_10000E3E8(v5, v5[3]);
  sub_1001F1160(a1);
  sub_100798CD4();

  return sub_1000074E0(v5);
}

void sub_10062B5FC(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___postHydrationFilteringService;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v6, &qword_100AEEC50);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
  }

  else
  {
    v4 = v1;
    sub_100007840(&v6, &qword_100AEEC50);
    sub_100017E74();
    v5 = sub_1007A2D74();
    sub_1001F1160(&qword_100AEEC58);
    sub_1007A2CC4();

    if (v7)
    {
      sub_1000077C0(&v6, a1);
      sub_100009864(a1, &v6);
      swift_beginAccess();
      sub_1002391EC(&v6, v4 + v3, &qword_100AEEC50);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10062B758(uint64_t a1, void *a2)
{
  v33 = a2;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v3;
  v30 = sub_10079A734();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100799AC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100639E1C();
  if (v14)
  {
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AEEA88);
    v16 = sub_10079ACC4();
    v17 = sub_1007A29B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get hydrated books fetch limit from JS, fall back to use default value for booksYouMightLike", v18, 2u);
    }

    v19 = &unk_100837430;
  }

  else
  {
    v19 = &unk_100837438;
  }

  (*(v4 + 104))(v6, enum case for Book.MediaType.ebook(_:), v30);
  sub_100799A74();
  (*(v8 + 104))(v13, enum case for Collection.booksYouMightLike(_:), v7);
  v20 = sub_1007A2744();
  v21 = v32;
  (*(*(v20 - 8) + 56))(v32, 1, 1, v20);
  (*(v8 + 16))(v10, v13, v7);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v31;
  *(v24 + 4) = v31;
  (*(v8 + 32))(&v24[v22], v10, v7);
  v26 = v33;
  *&v24[v23] = v33;
  v27 = v25;
  v28 = v26;
  sub_1005E3DA4(0, 0, v21, v19, v24);

  sub_100007840(v21, &qword_100AD67D0);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_10062BBA0(uint64_t a1, void *a2)
{
  v33 = a2;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v3;
  v30 = sub_10079A734();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100799AC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100639E1C();
  if (v14)
  {
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AEEA88);
    v16 = sub_10079ACC4();
    v17 = sub_1007A29B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get hydrated books fetch limit from JS, fall back to use default value for audiobooksYouMightLike", v18, 2u);
    }

    v19 = &unk_100837420;
  }

  else
  {
    v19 = &unk_100837428;
  }

  (*(v4 + 104))(v6, enum case for Book.MediaType.audiobook(_:), v30);
  sub_100799A74();
  (*(v8 + 104))(v13, enum case for Collection.booksYouMightLike(_:), v7);
  v20 = sub_1007A2744();
  v21 = v32;
  (*(*(v20 - 8) + 56))(v32, 1, 1, v20);
  (*(v8 + 16))(v10, v13, v7);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v31;
  *(v24 + 4) = v31;
  (*(v8 + 32))(&v24[v22], v10, v7);
  v26 = v33;
  *&v24[v23] = v33;
  v27 = v25;
  v28 = v26;
  sub_1005E3DA4(0, 0, v21, v19, v24);

  sub_100007840(v21, &qword_100AD67D0);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_10062BFE8(uint64_t a1, void *a2)
{
  v33 = a2;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v3;
  v30 = sub_10079A734();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100799AC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100639E1C();
  if (v14)
  {
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AEEA88);
    v16 = sub_10079ACC4();
    v17 = sub_1007A29B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get hydrated books fetch limit from JS, fall back to use default value for moreFromYourAuthors", v18, 2u);
    }

    v19 = &unk_100837410;
  }

  else
  {
    v19 = &unk_100837418;
  }

  (*(v4 + 104))(v6, enum case for Book.MediaType.ebook(_:), v30);
  sub_10079A374();
  (*(v8 + 104))(v13, enum case for Collection.moreFromYourAuthors(_:), v7);
  v20 = sub_1007A2744();
  v21 = v32;
  (*(*(v20 - 8) + 56))(v32, 1, 1, v20);
  (*(v8 + 16))(v10, v13, v7);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v31;
  *(v24 + 4) = v31;
  (*(v8 + 32))(&v24[v22], v10, v7);
  v26 = v33;
  *&v24[v23] = v33;
  v27 = v25;
  v28 = v26;
  sub_1005E3DA4(0, 0, v21, v19, v24);

  sub_100007840(v21, &qword_100AD67D0);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_10062C434(uint64_t a1, objc_class *a2)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v44 = &v38 - v3;
  v43 = sub_100799AC4();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v43);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_10079A1C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AEEC38);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  sub_10062CD74(&v38 - v17);
  sub_1000077D8(v18, v16, &qword_100AEEC38);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    sub_100007840(v16, &qword_100AEEC38);
    v19 = [objc_opt_self() sharedInstance];
    v49._countAndFlagsBits = 0x80000001008E2480;
    v20.super.isa = v47;
    v48.value._rawValue = 0;
    v48.is_nil = 108;
    v49._object = 216;
    sub_1007A32F4(v20, v48, v49, v21);
  }

  else
  {
    v22 = *(v10 + 32);
    v40 = v12;
    v41 = v9;
    v22(v12, v16, v9);
    v23 = v8;
    (*(v10 + 16))(v8, v12, v9);
    v24 = v4;
    v25 = *(v4 + 104);
    v39 = v23;
    v26 = v43;
    v25(v23, enum case for Collection.suggestions(_:), v43);
    v27 = sub_1007A2744();
    v28 = v44;
    (*(*(v27 - 8) + 56))(v44, 1, 1, v27);
    v29 = v42;
    (*(v24 + 16))(v42, v23, v26);
    v30 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v31 = (v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v45;
    *(v32 + 4) = v45;
    (*(v24 + 32))(&v32[v30], v29, v26);
    v34 = v47;
    *&v32[v31] = v47;
    v35 = v33;
    v36 = v34;
    sub_1005E3DA4(0, 0, v28, &unk_1008373F8, v32);

    sub_100007840(v28, &qword_100AD67D0);
    (*(v24 + 8))(v39, v26);
    (*(v10 + 8))(v40, v41);
  }

  return sub_100007840(v18, &qword_100AEEC38);
}

uint64_t sub_10062C8F4(uint64_t a1, objc_class *a2)
{
  v35 = a2;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v34 = &v30 - v3;
  v4 = sub_10079A514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_1001F1160(&qword_100AEEB78);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  sub_10062D814(&v30 - v15);
  sub_1000077D8(v16, v13, &qword_100AEEB78);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_100007840(v13, &qword_100AEEB78);
    v17 = [objc_opt_self() sharedInstance];
    v37._countAndFlagsBits = 0x80000001008E2480;
    v18.super.isa = v35;
    v36.value._rawValue = 0;
    v36.is_nil = 108;
    v37._object = 226;
    sub_1007A32F4(v18, v36, v37, v19);
  }

  else
  {
    v32 = *(v5 + 32);
    v32(v10, v13, v4);
    v20 = sub_1007A2744();
    v21 = v34;
    (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
    (*(v5 + 16))(v7, v10, v4);
    v22 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    v31 = v10;
    v24 = v32;
    v25 = v33;
    *(v23 + 4) = v33;
    v24(&v23[v22], v7, v4);
    v26 = v35;
    *&v23[(v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v35;
    v27 = v25;
    v28 = v26;
    sub_1005E3DA4(0, 0, v21, &unk_100837368, v23);

    sub_100007840(v21, &qword_100AD67D0);
    (*(v5 + 8))(v31, v4);
  }

  return sub_100007840(v16, &qword_100AEEB78);
}

uint64_t sub_10062CCD4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  v8 = sub_1007A2044();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

uint64_t sub_10062CD74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10079A734();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10079AA24();
  __chkstk_darwin(v5 - 8);
  v74 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079A9A4();
  __chkstk_darwin(v7 - 8);
  v73 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100799B74();
  v77 = *(v9 - 8);
  v78 = v9;
  v10 = __chkstk_darwin(v9);
  v80 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v67 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v67 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v67 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v67 - v22;
  __chkstk_darwin(v21);
  v72 = v67 - v24;
  v25 = objc_opt_self();
  isa = sub_1007A2024().super.isa;
  *&v84[0] = 0;
  v27 = [v25 dataWithJSONObject:isa options:0 error:v84];

  v28 = *&v84[0];
  if (v27)
  {
    v29 = sub_1007969D4();
    v31 = v30;

    sub_100796464();
    swift_allocObject();
    sub_100796454();
    sub_10063A274();
    v76 = v29;
    sub_100796444();

    v81[0] = v84[0];
    v81[1] = v84[1];
    v82 = v85;
    v83 = v86;
    if (BYTE1(v85) == 1)
    {
      v39 = v2;
      sub_100799B54();
      v40 = sub_10066C5F0(0, 1, 1, _swiftEmptyArrayStorage);
      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = sub_10066C5F0(v41 > 1, v42 + 1, 1, v40);
      }

      v40[2] = v42 + 1;
      v43 = v40;
      (*(v77 + 32))(v40 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v42, v23, v78);
      v2 = v39;
    }

    else
    {
      v43 = _swiftEmptyArrayStorage;
    }

    v46 = v17;
    v71 = v31;
    if (BYTE2(v82) == 1)
    {
      sub_100799B64();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v78;
      v49 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_10066C5F0(0, v43[2] + 1, 1, v43);
      }

      v50 = v43;
      v52 = v43[2];
      v51 = v43[3];
      if (v52 >= v51 >> 1)
      {
        v50 = sub_10066C5F0(v51 > 1, v52 + 1, 1, v43);
      }

      *(v50 + 16) = v52 + 1;
      v53 = v20;
      v54 = v50;
      (*(v77 + 32))(v50 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v52, v53, v48);
      v2 = v49;
    }

    else
    {
      v54 = v43;
    }

    sub_10063C7C4(&qword_100AEEB68, &type metadata accessor for SaleOptions);
    sub_1007A3584();
    v55 = v54[2];
    if (v55)
    {
      v68 = v2;
      v69 = v4;
      v70 = a1;
      v79 = *(v77 + 16);
      v56 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v57 = v46;
      v67[1] = v54;
      v58 = v54 + v56;
      v59 = *(v77 + 72);
      v60 = (v77 + 8);
      v61 = v78;
      do
      {
        v79(v14, v58, v61);
        sub_1007A3564();
        (*v60)(v80, v61);
        v58 += v59;
        --v55;
      }

      while (v55);

      a1 = v70;
      v4 = v69;
      v2 = v68;
      v46 = v57;
    }

    else
    {
    }

    v62 = v77;
    v63 = v78;
    v64 = v72;
    (*(v77 + 32))(v72, v46, v78);

    sub_10079A994();

    sub_10079AA14();
    v65 = &enum case for Book.MediaType.audiobook(_:);
    if (!v82)
    {
      v65 = &enum case for Book.MediaType.ebook(_:);
    }

    (*(v75 + 104))(v4, *v65, v2);
    (*(v62 + 16))(v80, v64, v63);
    sub_10079A1B4();
    sub_10000ADCC(v76, v71);
    sub_10063A2C8(v81);
    (*(v62 + 8))(v64, v63);
    v66 = sub_10079A1C4();
    return (*(*(v66 - 8) + 56))(a1, 0, 1, v66);
  }

  else
  {
    v32 = v28;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v33 = sub_10079ACE4();
    sub_100008B98(v33, qword_100AEEA88);
    swift_errorRetain();
    v34 = sub_10079ACC4();
    v35 = sub_1007A29B4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to convert provided configuration dictionary to JSON: %@", v36, 0xCu);
      sub_100007840(v37, &unk_100AD9480);
    }

    else
    {
    }

    v44 = sub_10079A1C4();
    return (*(*(v44 - 8) + 56))(a1, 1, 1, v44);
  }
}

uint64_t sub_10062D814@<X0>(int64_t a1@<X8>)
{
  v233 = a1;
  v1 = sub_1001F1160(&qword_100AEEAE8);
  __chkstk_darwin(v1 - 8);
  v3 = v190 - v2;
  v4 = sub_1001F1160(&qword_100AEEAF0);
  __chkstk_darwin(v4 - 8);
  v220 = v190 - v5;
  v6 = sub_1001F1160(&qword_100AEEAF8);
  __chkstk_darwin(v6 - 8);
  v8 = v190 - v7;
  v9 = sub_10079A154();
  __chkstk_darwin(v9 - 8);
  v227 = v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079AA24();
  __chkstk_darwin(v11 - 8);
  v226 = v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079A9A4();
  __chkstk_darwin(v13 - 8);
  v225 = v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F1160(&qword_100AEEB00);
  __chkstk_darwin(v15 - 8);
  v238 = v190 - v16;
  v240 = sub_10079A184();
  v237 = *(v240 - 1);
  __chkstk_darwin(v240);
  v239 = v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_10079A144();
  v216 = *(v236 - 1);
  __chkstk_darwin(v236);
  v207 = v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v206 = v190 - v20;
  v213 = sub_10079A4E4();
  v214 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v208 = v190 - v23;
  v24 = sub_1001F1160(&qword_100AEEB08);
  __chkstk_darwin(v24 - 8);
  v210 = v190 - v25;
  v221 = sub_10079A404();
  v215 = *(v221 - 8);
  __chkstk_darwin(v221);
  v219 = v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v211 = v190 - v28;
  v224 = sub_100799B74();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v222 = v190 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v232 = v190 - v31;
  v32 = type metadata accessor for CollectionRecommendationsConfiguration();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v231 = v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1001F1160(&qword_100AEEB10);
  __chkstk_darwin(v35 - 8);
  v37 = v190 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = v190 - v39;
  __chkstk_darwin(v41);
  v43 = v190 - v42;
  v44 = objc_opt_self();
  isa = sub_1007A2024().super.isa;
  v241[0] = 0;
  v46 = [v44 dataWithJSONObject:isa options:0 error:v241];

  v47 = v241[0];
  if (!v46)
  {
    v59 = v233;
    v60 = v47;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v61 = sub_10079ACE4();
    sub_100008B98(v61, qword_100AEEA88);
    swift_errorRetain();
    v62 = sub_10079ACC4();
    v63 = sub_1007A29B4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v64 + 4) = v66;
      *v65 = v66;
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to convert provided configuration dictionary to JSON: %@", v64, 0xCu);
      sub_100007840(v65, &unk_100AD9480);
    }

    else
    {
    }

    v67 = 1;
    goto LABEL_91;
  }

  v209 = v8;
  v204 = v3;
  v48 = sub_1007969D4();
  v50 = v49;

  v235 = v33;
  v51 = *(v33 + 56);
  v51(v43, 1, 1, v32);
  sub_100796464();
  swift_allocObject();
  sub_100796454();
  sub_10063C7C4(&qword_100AEEB18, type metadata accessor for CollectionRecommendationsConfiguration);
  v217 = v48;
  v218 = v50;
  sub_100796444();
  sub_100007840(v43, &qword_100AEEB10);

  v51(v40, 0, 1, v32);
  sub_10020B3C8(v40, v43, &qword_100AEEB10);
  v68 = v43;
  v69 = v235;
  while (1)
  {
    sub_1000077D8(v68, v37, &qword_100AEEB10);
    if (v69[6](v37, 1, v32) == 1)
    {
      sub_100007840(v68, &qword_100AEEB10);
      sub_10000ADCC(v217, v218);
      sub_100007840(v37, &qword_100AEEB10);
      v67 = 1;
      v59 = v233;
      goto LABEL_91;
    }

    v202 = v32;
    v70 = v231;
    sub_100639198(v37, v231);
    sub_10062F86C(v70);
    v32 = *(v70 + 56) ? 5 : *(v70 + 48);
    v71 = *(v70 + 72) ? 100 : *(v70 + 64);
    v37 = *(v70 + 112);
    v203 = v68;
    v201 = v32;
    v200 = v71;
    if (v37 && (v72 = *(v70 + 120)) != 0 && ((v241[0] = v37, sub_1001F1160(&qword_100AEEB30), sub_100005920(&qword_100AEEB38, &qword_100AEEB30), (sub_1007A28A4() & 1) != 0) || (v242 = v72, sub_1001F1160(&qword_100AEEB40), sub_100005920(&qword_100AEEB48, &qword_100AEEB40), v73 = sub_1007A28A4(), v70 = v231, (v73 & 1) != 0)))
    {

      v75 = sub_10040F850(v74);

      v77 = sub_10061F1D4(v76, v75);
      v78 = v77;
      v242 = _swiftEmptyDictionarySingleton;
      v79 = v77 + 56;
      v80 = 1 << *(v77 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v82 = v81 & *(v77 + 56);
      v83 = (v80 + 63) >> 6;

      v84 = 0;
      if (v82)
      {
        while (1)
        {
          v59 = v84;
LABEL_30:
          v85 = *(v78 + 48) + ((v59 << 10) | (16 * __clz(__rbit64(v82))));
          v32 = *(v85 + 8);
          v241[0] = *v85;
          v241[1] = v32;

          sub_10062FBC0(&v242, v241, v37, v72);
          v82 &= v82 - 1;

          v84 = v59;
          if (!v82)
          {
            goto LABEL_27;
          }
        }
      }

      while (1)
      {
LABEL_27:
        v59 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_94;
        }

        if (v59 >= v83)
        {
          break;
        }

        v82 = *(v79 + 8 * v59);
        ++v84;
        if (v82)
        {
          goto LABEL_30;
        }
      }

      v125 = v242;
    }

    else
    {
      v86 = *(v70 + 88);
      if (!v86)
      {
        sub_1001F1160(&qword_100AEEB20);
        v126 = sub_1001F1160(&unk_100AD36B0);
        v127 = *(*(v126 - 8) + 72);
        v128 = (*(*(v126 - 8) + 80) + 32) & ~*(*(v126 - 8) + 80);
        v129 = swift_allocObject();
        v230 = v129;
        *(v129 + 16) = xmmword_100837290;
        v130 = *(v215 + 104);
        v131 = v129 + v128;
        v132 = v221;
        v130();
        v133 = sub_10079A114();
        sub_10040E480(v133);

        sub_10079A4D4();
        v234 = v131;
        (v130)(v127 + v131, enum case for CollectionRecommendationType.book(_:), v132);
        v134 = sub_10079A114();
        sub_10040E480(v134);

        sub_10079A4D4();
        (v130)(v131 + 2 * v127, enum case for CollectionRecommendationType.books(_:), v132);
        v135 = sub_10079A114();
        sub_10040E480(v135);

        sub_10079A4D4();
        v235 = v127;
        v136 = v234;
        (v130)(v234 + 3 * v127, enum case for CollectionRecommendationType.booksBySuggestedAuthors(_:), v132);
        v137 = sub_10079A114();
        sub_10040E480(v137);

        sub_10079A4D4();
        v229 = v126;
        (v130)(v136 + 4 * v127, enum case for CollectionRecommendationType.booksYouMightLike(_:), v132);
        v138 = sub_10079A114();
        sub_10040E480(v138);

        sub_10079A4D4();
        v228 = *(v126 + 48);
        (v130)(v235 + 4 * v127 + v136, enum case for CollectionRecommendationType.mangaYouMightLike(_:), v132);
        v139 = v130;
        sub_1001F1160(&qword_100AEEB28);
        v140 = v216;
        v141 = (*(v216 + 80) + 32) & ~*(v216 + 80);
        v142 = swift_allocObject();
        *(v142 + 16) = xmmword_10080B690;
        v143 = v236;
        (*(v140 + 104))(v142 + v141, enum case for ClusteringOptions.MediaType.ebook(_:), v236);
        sub_1001F3070(v142);
        swift_setDeallocating();
        (*(v140 + 8))(v142 + v141, v143);
        swift_deallocClassInstance();
        sub_10079A4D4();
        v144 = v235;
        v145 = v221;
        (v130)(v136 + 6 * v235, enum case for CollectionRecommendationType.moreFromYourAuthors(_:), v221);
        v146 = sub_10079A114();
        sub_10040E480(v146);

        sub_10079A4D4();
        v236 = (8 * v144);
        v147 = v136 + 7 * v144;
        v148 = v136;
        v149 = v145;
        (v139)(v147, enum case for CollectionRecommendationType.series(_:), v145);
        v150 = sub_10079A114();
        sub_10040E480(v150);

        sub_10079A4D4();
        v151 = v236;
        (v139)(v236 + v148, enum case for CollectionRecommendationType.booksBasedOnSeed(_:), v149);
        v152 = sub_10079A114();
        sub_10040E480(v152);

        sub_10079A4D4();
        v154 = v234;
        v153 = v235;
        (v139)(v235 + v151 + v234, enum case for CollectionRecommendationType.booksInGenre(_:), v149);
        v155 = sub_10079A114();
        sub_10040E480(v155);

        sub_10079A4D4();
        (v139)(v154 + 10 * v153, enum case for CollectionRecommendationType.booksByAuthor(_:), v149);
        v156 = sub_10079A114();
        sub_10040E480(v156);

        sub_10079A4D4();
        (v139)(v154 + 11 * v153, enum case for CollectionRecommendationType.nextInSeries(_:), v149);
        v157 = sub_10079A114();
        sub_10040E480(v157);

        sub_10079A4D4();
        (v139)(v154 + 12 * v153, enum case for CollectionRecommendationType.moreInSeries(_:), v149);
        v158 = sub_10079A114();
        v37 = sub_10040E480(v158);

        sub_10079A4D4();
        v205 = sub_1001EF9FC(v230);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_62;
      }

      v87 = *(v86 + 16);
      if (v87)
      {
        v32 = 0;
        v235 = (v215 + 48);
        v196 = (v215 + 32);
        v199 = (v215 + 16);
        v59 = v216 + 8;
        v198 = (v214 + 32);
        v195 = (v215 + 8);
        v192 = v214 + 40;
        v88 = v86 + 40;
        v234 = v87;
        v193 = v87 - 1;
        v205 = _swiftEmptyDictionarySingleton;
        v89 = v221;
        v90 = v210;
        v230 = v216 + 16;
        v194 = v86 + 40;
        while (1)
        {
          v91 = (v88 + 16 * v32);
          v92 = v32;
          while (1)
          {
            if (v92 >= *(v86 + 16))
            {
              goto LABEL_95;
            }

            v32 = v92 + 1;
            v37 = *v91;

            sub_10079A3F4();
            if ((*v235)(v90, 1, v89) != 1)
            {
              break;
            }

            sub_100007840(v90, &qword_100AEEB08);
            v91 += 2;
            ++v92;
            if (v234 == v32)
            {
              goto LABEL_62;
            }
          }

          v93 = v211;
          (*v196)(v211, v90, v89);
          v191 = *v199;
          v191(v219, v93, v89);
          v94 = sub_10079A114();
          sub_10063C7C4(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType);
          v95 = v236;
          v96 = sub_1007A2854();
          v97 = v94;
          v241[0] = v96;
          v98 = *(v94 + 16);
          v197 = v86;
          if (v98)
          {
            v99 = (*(v216 + 80) + 32) & ~*(v216 + 80);
            v190[1] = v97;
            v100 = v97 + v99;
            v101 = *(v216 + 72);
            v228 = *(v216 + 16);
            v229 = v101;
            v102 = v206;
            v103 = v207;
            do
            {
              v228(v102, v100, v95);
              sub_1006E74B4(v103, v102);
              v95 = v236;
              (*v59)(v103, v236);
              v100 += v229;
              --v98;
            }

            while (v98);

            v90 = v210;
            v104 = v205;
            v86 = v197;
          }

          else
          {

            v104 = v205;
          }

          v105 = v208;
          sub_10079A4D4();
          v229 = *v198;
          (v229)(v212, v105, v213);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v241[0] = v104;
          v107 = sub_1002ECD5C(v219);
          v109 = v104[2];
          v110 = (v108 & 1) == 0;
          v111 = __OFADD__(v109, v110);
          v112 = v109 + v110;
          v89 = v221;
          if (v111)
          {
            __break(1u);
LABEL_97:
            __break(1u);
          }

          if (v104[3] >= v112)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v123 = v107;
              v124 = v108;
              sub_1002F2C28();
              LOBYTE(v108) = v124;
              v107 = v123;
            }
          }

          else
          {
            LODWORD(v228) = v108;
            sub_1003D70E0(v112, isUniquelyReferenced_nonNull_native);
            v107 = sub_1002ECD5C(v219);
            v113 = v108 & 1;
            LOBYTE(v108) = v228;
            if ((v228 & 1) != v113)
            {
              result = sub_1007A3B24();
              __break(1u);
              return result;
            }
          }

          v114 = v241[0];
          v205 = v241[0];
          if (v108)
          {
            (*(v214 + 40))(*(v241[0] + 7) + *(v214 + 72) * v107, v212, v213);

            v37 = v195;
            v115 = *v195;
            (*v195)(v219, v89);
            v115(v211, v89);
          }

          else
          {
            *(v241[0] + (v107 >> 6) + 8) |= 1 << v107;
            v116 = v215;
            v117 = v107;
            v118 = v114;
            v119 = v219;
            v191(v114[6] + *(v215 + 72) * v107, v219, v89);
            (v229)(v118[7] + *(v214 + 72) * v117, v212, v213);

            v120 = *(v116 + 8);
            v120(v119, v89);
            v120(v211, v89);
            v121 = v118[2];
            v111 = __OFADD__(v121, 1);
            v122 = v121 + 1;
            if (v111)
            {
              goto LABEL_97;
            }

            v118[2] = v122;
            v86 = v197;
          }

          v88 = v194;
          if (v193 == v92)
          {
            goto LABEL_62;
          }
        }
      }

      v125 = _swiftEmptyDictionarySingleton;
    }

    v205 = v125;
LABEL_62:

    v159 = v231;
    v160 = *(v231 + 80);
    if (!v160)
    {
      v236 = &_swiftEmptySetSingleton;
      v32 = v238;
      v166 = v209;
      v59 = v233;
      v167 = *(v231 + 128);
      if (!v167)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v161 = *(v160 + 16);
    v162 = _swiftEmptyArrayStorage;
    if (!v161)
    {
      break;
    }

    v241[0] = _swiftEmptyArrayStorage;
    sub_1003BD8A8(0, v161, 0);
    v162 = v241[0];
    v32 = v160 + 32;
    v59 = v233;
    while (1)
    {
      v164 = *v32;
      v32 += 8;
      v163 = v164;
      if (v164 < 0)
      {
        break;
      }

      v241[0] = v162;
      v37 = v162[2];
      v165 = v162[3];
      if (v37 >= v165 >> 1)
      {
        sub_1003BD8A8((v165 > 1), v37 + 1, 1);
        v162 = v241[0];
      }

      v162[2] = v37 + 1;
      v162[v37 + 4] = v163;
      if (!--v161)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    swift_once();
    v52 = sub_10079ACE4();
    sub_100008B98(v52, qword_100AEEA88);
    swift_errorRetain();
    v53 = sub_10079ACC4();
    v54 = sub_1007A29B4();

    v55 = os_log_type_enabled(v53, v54);
    v68 = v59;
    v69 = v235;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      swift_errorRetain();
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v58;
      *v57 = v58;
      _os_log_impl(&_mh_execute_header, v53, v54, "Failed to deserialize JSON into configuration object: %@", v56, 0xCu);
      sub_100007840(v57, &unk_100AD9480);
    }

    else
    {
    }
  }

  v59 = v233;
LABEL_73:
  v236 = sub_10040E40C(v162);

  v32 = v238;
  v166 = v209;
  v167 = *(v159 + 128);
  if (!v167)
  {
LABEL_71:
    v240 = &_swiftEmptySetSingleton;
    goto LABEL_87;
  }

LABEL_74:
  v168 = *(v167 + 16);
  if (v168)
  {
    v59 = 0;
    v169 = (v237 + 48);
    v170 = (v237 + 32);
    v171 = v167 + 40;
    v172 = _swiftEmptyArrayStorage;
    while (v59 < *(v167 + 16))
    {
      v37 = *(v171 - 8);

      v173 = v240;
      sub_10079A174();
      if ((*v169)(v32, 1, v173) == 1)
      {
        sub_100007840(v32, &qword_100AEEB00);
      }

      else
      {
        v37 = *v170;
        (*v170)(v239, v32, v173);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_10066C618(0, v172[2] + 1, 1, v172);
        }

        v175 = v172[2];
        v174 = v172[3];
        if (v175 >= v174 >> 1)
        {
          v172 = sub_10066C618(v174 > 1, v175 + 1, 1, v172);
        }

        v172[2] = v175 + 1;
        (v37)(v172 + ((*(v237 + 80) + 32) & ~*(v237 + 80)) + *(v237 + 72) * v175, v239, v240);
        v32 = v238;
      }

      ++v59;
      v171 += 16;
      if (v168 == v59)
      {
        goto LABEL_86;
      }
    }

    goto LABEL_93;
  }

  v172 = _swiftEmptyArrayStorage;
LABEL_86:
  v240 = sub_10040E61C(v172);

  v59 = v233;
  v166 = v209;
  v159 = v231;
LABEL_87:

  sub_10079A994();

  sub_10079AA14();
  (*(v223 + 16))(v222, v232, v224);
  sub_10079A104();
  sub_1000077D8(v159 + *(v202 + 76), v166, &qword_100AEEAF8);
  v176 = sub_10079A444();
  (*(*(v176 - 8) + 56))(v220, 1, 1, v176);
  v177 = [objc_opt_self() standardUserDefaults];
  v178 = sub_1007A2214();
  v179 = [v177 BOOLForKey:v178];

  if (v179)
  {
    v180 = enum case for CollectionRecommendationSource.derived(_:);
    v181 = sub_10079A454();
    v182 = *(v181 - 8);
    v183 = v204;
    (*(v182 + 104))(v204, v180, v181);
    (*(v182 + 56))(v183, 0, 1, v181);
  }

  else
  {
    v184 = sub_10079A454();
    (*(*(v184 - 8) + 56))(v204, 1, 1, v184);
  }

  v185 = v203;
  v186 = v218;
  v187 = v217;
  sub_10079A504();
  sub_10000ADCC(v187, v186);
  (*(v223 + 8))(v232, v224);
  sub_100007840(v185, &qword_100AEEB10);
  sub_10063A218(v159);
  v67 = 0;
LABEL_91:
  v188 = sub_10079A514();
  return (*(*(v188 - 8) + 56))(v59, v67, 1, v188);
}

uint64_t sub_10062F86C(uint64_t a1)
{
  v2 = sub_100799B74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  if (*(a1 + 32) == 1)
  {
    sub_100799B54();
    v15 = sub_10066C5F0(0, 1, 1, _swiftEmptyArrayStorage);
    v17 = v15[2];
    v16 = v15[3];
    v18 = v15;
    if (v17 >= v16 >> 1)
    {
      v18 = sub_10066C5F0(v16 > 1, v17 + 1, 1, v15);
    }

    *(v18 + 16) = v17 + 1;
    v19 = v14;
    v20 = v18;
    (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v19, v2);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  if (*(a1 + 33) == 1)
  {
    sub_100799B64();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10066C5F0(0, v20[2] + 1, 1, v20);
    }

    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_10066C5F0(v21 > 1, v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    (*(v3 + 32))(v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v11, v2);
  }

  sub_10063C7C4(&qword_100AEEB68, &type metadata accessor for SaleOptions);
  sub_1007A3584();
  v23 = v20[2];
  if (v23)
  {
    v25 = *(v3 + 16);
    v24 = v3 + 16;
    v30 = v20;
    v31 = v25;
    v26 = v20 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v27 = *(v24 + 56);
    v28 = (v24 - 8);
    do
    {
      v31(v8, v26, v2);
      sub_1007A3564();
      (*v28)(v5, v2);
      v26 += v27;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10062FBC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v57 = a1;
  v6 = sub_1001F1160(&qword_100AED4B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_1001F1160(&qword_100AEEB50);
  __chkstk_darwin(v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_10079A144();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v62 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F1160(&qword_100AEEB08);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_10079A404();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v56 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  v23 = *a2;
  v24 = a2[1];
  sub_10079A3F4();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_100007840(v16, &qword_100AEEB08);
  }

  v54 = v18;
  (*(v18 + 32))(v22, v16, v17);
  v26 = v17;
  if (*(a3 + 16) && (v27 = sub_10000E53C(v23, v24), (v28 & 1) != 0))
  {
    v52 = 0;
    v53 = *(*(a3 + 56) + 8 * v27);
  }

  else
  {
    v53 = sub_1006301C0();
    v52 = v29;
  }

  v31 = v60;
  v30 = v61;
  v32 = *(v61 + 16);
  v55 = v8;
  if (!v32 || (v33 = sub_10000E53C(v23, v24), (v34 & 1) == 0))
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_23:
    v63 = v40;
    sub_1001F1160(&qword_100AEEB58);
    sub_100005920(&qword_100AEEB60, &qword_100AEEB58);
    if ((sub_1007A28A4() & 1) == 0)
    {

      v40 = sub_10079A114();
    }

    v47 = v54;
    v46 = v55;
    sub_10040E480(v40);

    v48 = v56;
    (*(v47 + 16))(v56, v22, v26);
    sub_10079A4D4();
    v49 = sub_10079A4E4();
    (*(*(v49 - 8) + 56))(v46, 0, 1, v49);
    sub_1005EA3F4(v46, v48);
    return (*(v47 + 8))(v22, v26);
  }

  v50 = v22;
  v51 = v26;
  v35 = *(*(v30 + 56) + 8 * v33);
  v36 = *(v35 + 16);

  if (!v36)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_22:

    v22 = v50;
    v26 = v51;
    goto LABEL_23;
  }

  v37 = 0;
  v38 = (v59 + 48);
  v61 = v59 + 32;
  v39 = v35 + 40;
  v40 = _swiftEmptyArrayStorage;
  v58 = v36;
  while (v37 < *(v35 + 16))
  {

    sub_10079A124();
    if ((*v38)(v11, 1, v31) == 1)
    {
      result = sub_100007840(v11, &qword_100AEEB50);
    }

    else
    {
      v41 = v35;
      v42 = *v61;
      (*v61)(v62, v11, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_10066C640(0, v40[2] + 1, 1, v40);
      }

      v44 = v40[2];
      v43 = v40[3];
      if (v44 >= v43 >> 1)
      {
        v40 = sub_10066C640(v43 > 1, v44 + 1, 1, v40);
      }

      v40[2] = v44 + 1;
      v45 = v40 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v44;
      v31 = v60;
      result = (v42)(v45, v62, v60);
      v35 = v41;
      v36 = v58;
    }

    ++v37;
    v39 += 16;
    if (v36 == v37)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006301C0()
{
  v1 = v0;
  v2 = sub_10079A404();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for CollectionRecommendationType.book(_:))
  {
    return 8;
  }

  if (v7 == enum case for CollectionRecommendationType.books(_:) || v7 == enum case for CollectionRecommendationType.booksBasedOnSeed(_:) || v7 == enum case for CollectionRecommendationType.booksByAuthor(_:) || v7 == enum case for CollectionRecommendationType.booksBySuggestedAuthors(_:) || v7 == enum case for CollectionRecommendationType.booksInGenre(_:) || v7 == enum case for CollectionRecommendationType.booksYouMightLike(_:) || v7 == enum case for CollectionRecommendationType.mangaYouMightLike(_:) || v7 == enum case for CollectionRecommendationType.moreFromYourAuthors(_:))
  {
    return 1;
  }

  if (v7 == enum case for CollectionRecommendationType.series(_:) || v7 == enum case for CollectionRecommendationType.nextInSeries(_:) || v7 == enum case for CollectionRecommendationType.moreInSeries(_:))
  {
    return 8;
  }

  if (v7 == enum case for CollectionRecommendationType.highlights(_:))
  {
    return 1;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

void sub_1006304E8(unint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v90 = a3;
  v94 = a4;
  v88 = a2;
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v89 = v74 - v6;
  v7 = sub_1001F1160(&qword_100AEEAE0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (v74 - v9);
  v11 = sub_10079A594();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_104:
    v73 = v13;
    v99 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_1007A38D4();
    v13 = v73;
  }

  else
  {
    v99 = a1 & 0xFFFFFFFFFFFFFF8;
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v16;
  v95 = a1;
  if (!v16)
  {
    v96 = _swiftEmptyArrayStorage;
    goto LABEL_94;
  }

  v83 = v15;
  v84 = v13;
  v85 = v8;
  v87 = v10;
  v15 = 0;
  v8 = 0;
  v17 = a1 & 0xC000000000000001;
  v18 = (a1 + 32);
  v92 = v100 + 1;
  v96 = _swiftEmptyArrayStorage;
  v82 = v12 + 4;
  v10 = &unk_10081EB10;
  a1 = v98;
  v86 = v7;
  v97 = v17;
  while (2)
  {
    v7 = &unk_100AEF1B0;
    while (1)
    {
      if (v17)
      {
        v13 = sub_1007A3784();
        v19 = v13;
        v20 = __OFADD__(v15++, 1);
        if (v20)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (v15 >= *(v99 + 16))
        {
          goto LABEL_103;
        }

        v19 = *&v18[8 * v15];
        v13 = swift_unknownObjectRetain();
        v20 = __OFADD__(v15++, 1);
        if (v20)
        {
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }
      }

      v100[0] = v19;
      swift_unknownObjectRetain();
      sub_1001F1160(&unk_100AEF1B0);
      if (swift_dynamicCast())
      {
        break;
      }

      v13 = swift_unknownObjectRelease();
LABEL_7:
      if (v15 == a1)
      {
        goto LABEL_94;
      }
    }

    sub_100630F44(v101);

    sub_1007995B4();
    sub_100799444();
    v21 = sub_100799544();

    v12 = v21;
    v22 = sub_100799574();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    v26 = v22 & 0xFFFFFFFFFFFFLL;
    if ((v24 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v27 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {

      swift_unknownObjectRelease();

      v17 = v97;
      a1 = v98;
      goto LABEL_7;
    }

    if ((v24 & 0x1000000000000000) == 0)
    {
      if ((v24 & 0x2000000000000000) != 0)
      {
        v100[0] = v22;
        v100[1] = v24 & 0xFFFFFFFFFFFFFFLL;
        if (v22 == 43)
        {
          if (!v25)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          if (--v25)
          {
            v30 = 0;
            v38 = v92;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              if (!is_mul_ok(v30, 0xAuLL))
              {
                break;
              }

              v33 = __CFADD__(10 * v30, v39);
              v30 = 10 * v30 + v39;
              if (v33)
              {
                break;
              }

              ++v38;
              if (!--v25)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v22 == 45)
        {
          if (!v25)
          {
            goto LABEL_107;
          }

          if (--v25)
          {
            v30 = 0;
            v34 = v92;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                break;
              }

              if (!is_mul_ok(v30, 0xAuLL))
              {
                break;
              }

              v33 = 10 * v30 >= v35;
              v30 = 10 * v30 - v35;
              if (!v33)
              {
                break;
              }

              ++v34;
              if (!--v25)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v25)
        {
          v30 = 0;
          v41 = v100;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              break;
            }

            v33 = __CFADD__(10 * v30, v42);
            v30 = 10 * v30 + v42;
            if (v33)
            {
              break;
            }

            ++v41;
            if (!--v25)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      if ((v22 & 0x1000000000000000) != 0)
      {
        v28 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v28 = sub_1007A37B4();
      }

      v29 = *v28;
      if (v29 == 43)
      {
        if (v26 < 1)
        {
          goto LABEL_106;
        }

        v25 = v26 - 1;
        if (v26 == 1)
        {
          goto LABEL_74;
        }

        v30 = 0;
        if (v28)
        {
          v36 = v28 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              goto LABEL_74;
            }

            v33 = __CFADD__(10 * v30, v37);
            v30 = 10 * v30 + v37;
            if (v33)
            {
              goto LABEL_74;
            }

            ++v36;
            if (!--v25)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else if (v29 == 45)
      {
        if (v26 < 1)
        {
          goto LABEL_108;
        }

        v25 = v26 - 1;
        if (v26 == 1)
        {
          goto LABEL_74;
        }

        v30 = 0;
        if (v28)
        {
          v31 = v28 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              goto LABEL_74;
            }

            v33 = 10 * v30 >= v32;
            v30 = 10 * v30 - v32;
            if (!v33)
            {
              goto LABEL_74;
            }

            ++v31;
            if (!--v25)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else
      {
        if (!v26)
        {
LABEL_74:
          v30 = 0;
          LOBYTE(v25) = 1;
          goto LABEL_75;
        }

        v30 = 0;
        if (v28)
        {
          do
          {
            v40 = *v28 - 48;
            if (v40 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              goto LABEL_74;
            }

            v33 = __CFADD__(10 * v30, v40);
            v30 = 10 * v30 + v40;
            if (v33)
            {
              goto LABEL_74;
            }

            ++v28;
          }

          while (--v26);
        }
      }

      LOBYTE(v25) = 0;
LABEL_75:
      LOBYTE(v101) = v25;
      v43 = v25;
      goto LABEL_76;
    }

    LOBYTE(v101) = 0;
    v30 = sub_10063E4AC(v22, v24, 10);
    v43 = v44;
LABEL_76:

    if (v43)
    {
      swift_unknownObjectRelease();

      v17 = v97;
      a1 = v98;
      v7 = &unk_100AEF1B0;
      goto LABEL_7;
    }

    v80 = sub_1007993D4();
    v79 = v45;
    v78 = sub_100799364();
    v77 = v46;
    v76 = sub_100799404();
    v75 = v47;
    v74[1] = [v12 isPreorder];
    v48 = [v12 artworkURL];
    if (v48)
    {
      v81 = sub_1007A2254();
    }

    else
    {
      v81 = 0;
    }

    v49 = v86;
    sub_100799384();
    v50 = v83;
    sub_10079A584();
    v51 = *(v49 + 12);
    v52 = v87;
    *v87 = v30;
    (*v82)(v52 + v51, v50, v84);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_10066C668(0, v96[2] + 1, 1, v96);
    }

    v54 = v96[2];
    v53 = v96[3];
    if (v54 >= v53 >> 1)
    {
      v96 = sub_10066C668(v53 > 1, v54 + 1, 1, v96);
    }

    swift_unknownObjectRelease();

    v55 = v96;
    v96[2] = v54 + 1;
    v13 = sub_10020B3C8(v87, v55 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v54, &qword_100AEEAE0);
    v17 = v97;
    a1 = v98;
    if (v15 != v98)
    {
      continue;
    }

    break;
  }

LABEL_94:
  v56 = v96;
  v57 = v96[2];
  if (v93)
  {
    v58 = v95;
    if (v57 == sub_1007A38D4())
    {
      goto LABEL_101;
    }

LABEL_96:

    if (qword_100AD1990 != -1)
    {
LABEL_109:
      swift_once();
    }

    v59 = sub_10079ACE4();
    sub_100008B98(v59, qword_100AEEA88);
    v60 = sub_10079ACC4();
    v61 = sub_1007A29B4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Failed to decode array of resource objects", v62, 2u);
    }

    v63 = [objc_opt_self() sharedInstance];
    v103._countAndFlagsBits = 0x80000001008E2480;
    v64.super.isa = v94;
    v102.value._rawValue = 0;
    v102.is_nil = 108;
    v103._object = 420;
    sub_1007A32F4(v64, v102, v103, v65);
  }

  else
  {
    v58 = v95;
    if (v57 != *(v99 + 16))
    {
      goto LABEL_96;
    }

LABEL_101:
    v66 = sub_1007A2744();
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    v68 = swift_allocObject();
    v68[2] = 0;
    v68[3] = 0;
    v69 = v91;
    v68[4] = v91;
    v68[5] = v56;
    v68[6] = v88;
    v68[7] = v90;
    v68[8] = v58;
    v70 = v94;
    v68[9] = v94;

    v71 = v70;
    v72 = v69;
    sub_1003457A0(0, 0, v67, &unk_1008372E0, v68);
  }
}

uint64_t sub_100630F44(uint64_t a1)
{
  v72 = a1;
  v1 = sub_100799594();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v71 - v6;
  sub_1001F1160(qword_100AEA1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 32) = 0x657079745FLL;
  v75 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v9 = *(v2 + 104);
  v9(v7, enum case for MResource.Keys.type(_:), v1);

  v10 = sub_100799584();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v7, v1);
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 64) = 0x666572685FLL;
  *(inited + 72) = 0xE500000000000000;
  v9(v4, enum case for MResource.Keys.href(_:), v1);
  v14 = sub_100799584();
  v16 = v15;
  v13(v4, v1);
  v17 = v72;
  *(inited + 80) = v14;
  *(inited + 88) = v16;
  v18 = sub_1001ED994(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AE0920);
  swift_arrayDestroy();
  v73 = 0;
  v19 = 0;
  v21 = v18 + 64;
  v20 = *(v18 + 64);
  v75 = v18;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v74 = v17;
  if ((v23 & v20) == 0)
  {
    while (1)
    {
LABEL_7:
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v26 >= v25)
      {
        break;
      }

      v24 = *(v21 + 8 * v26);
      ++v19;
      if (v24)
      {
        v19 = v26;
        goto LABEL_11;
      }
    }

    if (v73)
    {
      return v74;
    }

    return v17;
  }

  while (1)
  {
LABEL_11:
    while (1)
    {
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v28 = (v19 << 10) | (16 * v27);
      v29 = (*(v75 + 48) + v28);
      v30 = *v29;
      v31 = v29[1];
      v32 = (*(v75 + 56) + v28);
      v33 = *v32;
      v34 = v32[1];
      *&v79 = *v29;
      *(&v79 + 1) = v31;
      swift_bridgeObjectRetain_n();

      sub_1007A36B4();
      if (*(v17 + 16))
      {
        v35 = sub_10000E2A4(v81);
        if (v36)
        {
          break;
        }
      }

      sub_10002899C(v81);

      v80 = 0u;
      v79 = 0u;
LABEL_6:
      sub_100007840(&v79, &unk_100AD5B40);
      if (!v24)
      {
        goto LABEL_7;
      }
    }

    sub_100007484(*(v17 + 56) + 32 * v35, &v79);
    sub_10002899C(v81);
    sub_100007840(&v79, &unk_100AD5B40);
    *&v79 = v33;
    *(&v79 + 1) = v34;

    sub_1007A36B4();
    if (*(v17 + 16))
    {
      v37 = sub_10000E2A4(v81);
      if (v38)
      {
        v39 = v37;

        sub_100007484(*(v17 + 56) + 32 * v39, &v79);
        sub_10002899C(v81);
        goto LABEL_6;
      }
    }

    sub_10002899C(v81);
    v79 = 0u;
    v80 = 0u;
    sub_100007840(&v79, &unk_100AD5B40);
    *&v79 = v33;
    *(&v79 + 1) = v34;
    sub_1007A36B4();
    *&v78[0] = v30;
    *(&v78[0] + 1) = v31;

    sub_1007A36B4();
    if (!*(v17 + 16) || (v40 = sub_10000E2A4(&v79), (v41 & 1) == 0))
    {
      sub_10002899C(&v79);
      v52 = v74;
      v53 = sub_10000E2A4(v81);
      if (v54)
      {
        v55 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v52;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002F1744();
          v52 = *&v77[0];
        }

        sub_10002899C(*(v52 + 48) + 40 * v55);
        sub_1000076D4((*(v52 + 56) + 32 * v55), v78);
        v74 = v52;
        sub_1002EFB38(v55, v52);
        sub_10002899C(v81);
      }

      else
      {
        sub_10002899C(v81);
        memset(v78, 0, sizeof(v78));
      }

      sub_100007840(v78, &unk_100AD5B40);
      goto LABEL_28;
    }

    sub_100007484(*(v17 + 56) + 32 * v40, v78);
    sub_10002899C(&v79);
    sub_1000076D4(v78, v77);
    v42 = v74;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v42;
    v44 = sub_10000E2A4(v81);
    v46 = v42[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      break;
    }

    if (v42[3] >= v49)
    {
      if ((v43 & 1) == 0)
      {
        v68 = v44;
        v69 = v45;
        sub_1002F1744();
        v45 = v69;
        v44 = v68;
      }
    }

    else
    {
      v50 = v45;
      sub_1003D5034(v49, v43);
      v44 = sub_10000E2A4(v81);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_48;
      }

      v45 = v50;
    }

    v62 = v76;
    v74 = v76;
    if (v45)
    {
      v63 = (v76[7] + 32 * v44);
      sub_1000074E0(v63);
      sub_1000076D4(v77, v63);
      sub_10002899C(v81);
    }

    else
    {
      v64 = v17;
      v76[(v44 >> 6) + 8] |= 1 << v44;
      v65 = v44;
      sub_100028940(v81, v62[6] + 40 * v44);
      sub_1000076D4(v77, (v62[7] + 32 * v65));
      sub_10002899C(v81);
      v66 = v62[2];
      v48 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v48)
      {
        goto LABEL_47;
      }

      v62[2] = v67;
      v17 = v64;
    }

LABEL_28:
    *&v79 = v30;
    *(&v79 + 1) = v31;
    sub_1007A36B4();
    v57 = v74;
    v58 = sub_10000E2A4(v81);
    if (v59)
    {
      v60 = v58;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v78[0] = v57;
      if (!v61)
      {
        sub_1002F1744();
        v57 = *&v78[0];
      }

      sub_10002899C(*(v57 + 48) + 40 * v60);
      sub_1000076D4((*(v57 + 56) + 32 * v60), &v79);
      v74 = v57;
      sub_1002EFB38(v60, v57);
      sub_10002899C(v81);
    }

    else
    {
      sub_10002899C(v81);
      v79 = 0u;
      v80 = 0u;
    }

    sub_100007840(&v79, &unk_100AD5B40);
    v73 = 1;
    if (!v24)
    {
      goto LABEL_7;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_10063177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a8;
  v8[27] = v12;
  v8[24] = a6;
  v8[25] = a7;
  v8[22] = a4;
  v8[23] = a5;
  v9 = sub_100799594();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();

  return _swift_task_switch(sub_10063184C, 0, 0);
}

uint64_t sub_10063184C()
{
  sub_10062B5FC((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10000E3E8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_100631918;
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[23];

  return dispatch thunk of BookRecommendationPostHydrationFilteringServiceType.storeIDsOfDuplicateAssets(fromCandidates:collectionType:)(v6, v4, v5, v1, v2);
}

uint64_t sub_100631918(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_100632168;
  }

  else
  {
    v4 = sub_100631A2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

unint64_t sub_100631A2C()
{
  v65 = v0;
  v1 = v0[26];
  sub_1000074E0((v0 + 2));
  v62 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v3 = 0;
    v4 = v0[29];
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v61 = enum case for MResource.Keys.id(_:);
    v59 = (v4 + 8);
    v60 = (v4 + 104);
    v57 = v0[32];
    v58 = v57 + 56;
    while (v5)
    {
      v7 = sub_1007A3784();
      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        goto LABEL_94;
      }

LABEL_7:
      v0[20] = v7;
      swift_unknownObjectRetain();
      sub_1001F1160(&unk_100AEF1B0);
      if (!swift_dynamicCast())
      {
        goto LABEL_32;
      }

      v9 = i;
      v10 = v6;
      v11 = v5;
      v12 = v0[30];
      v13 = v0[28];
      v14 = v0[21];
      (*v60)(v12, v61, v13);
      v15 = sub_100799584();
      v17 = v16;
      (*v59)(v12, v13);
      v0[16] = v15;
      v0[17] = v17;
      sub_1007A36B4();
      if (!*(v14 + 16) || (v18 = sub_10000E2A4((v0 + 7)), (v19 & 1) == 0))
      {

        sub_10002899C((v0 + 7));
        v5 = v11;
        v6 = v10;
        i = v9;
        goto LABEL_32;
      }

      sub_100007484(*(v14 + 56) + 32 * v18, (v0 + 12));
      sub_10002899C((v0 + 7));

      v5 = v11;
      v6 = v10;
      i = v9;
      if (swift_dynamicCast())
      {
        v21 = v0[18];
        result = v0[19];
        v22 = HIBYTE(result) & 0xF;
        v23 = v21 & 0xFFFFFFFFFFFFLL;
        if ((result & 0x2000000000000000) != 0)
        {
          v24 = HIBYTE(result) & 0xF;
        }

        else
        {
          v24 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (!v24)
        {

          goto LABEL_32;
        }

        if ((result & 0x1000000000000000) != 0)
        {
          v1 = sub_10063E4AC(v0[18], v0[19], 10);
          v47 = v46;

          if ((v47 & 1) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_32;
        }

        if ((result & 0x2000000000000000) != 0)
        {
          v64[0] = v0[18];
          v64[1] = result & 0xFFFFFFFFFFFFFFLL;
          if (v21 == 43)
          {
            if (!v22)
            {
              goto LABEL_103;
            }

            v25 = (v22 - 1);
            if (v22 != 1)
            {
              v1 = 0;
              v36 = v64 + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v1, 0xAuLL))
                {
                  break;
                }

                v30 = __CFADD__(10 * v1, v37);
                v1 = 10 * v1 + v37;
                if (v30)
                {
                  break;
                }

                ++v36;
                if (!--v25)
                {
                  goto LABEL_77;
                }
              }
            }
          }

          else if (v21 == 45)
          {
            if (!v22)
            {
              goto LABEL_104;
            }

            v25 = (v22 - 1);
            if (v22 != 1)
            {
              v1 = 0;
              v31 = v64 + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v1, 0xAuLL))
                {
                  break;
                }

                v30 = 10 * v1 >= v32;
                v1 = 10 * v1 - v32;
                if (!v30)
                {
                  break;
                }

                ++v31;
                if (!--v25)
                {
                  goto LABEL_77;
                }
              }
            }
          }

          else if (v22)
          {
            v1 = 0;
            v39 = v64;
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                break;
              }

              if (!is_mul_ok(v1, 0xAuLL))
              {
                break;
              }

              v30 = __CFADD__(10 * v1, v40);
              v1 = 10 * v1 + v40;
              if (v30)
              {
                break;
              }

              ++v39;
              if (!--v22)
              {
LABEL_75:
                LOBYTE(v25) = 0;
                goto LABEL_77;
              }
            }
          }
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v25 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v48 = v0[19];
            v25 = sub_1007A37B4();
            result = v48;
          }

          v26 = *v25;
          if (v26 == 43)
          {
            if (v23 < 1)
            {
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
              return result;
            }

            v33 = v23 - 1;
            if (v23 != 1)
            {
              v1 = 0;
              if (!v25)
              {
                goto LABEL_77;
              }

              v34 = v25 + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v1, 0xAuLL))
                {
                  break;
                }

                v30 = __CFADD__(10 * v1, v35);
                v1 = 10 * v1 + v35;
                if (v30)
                {
                  break;
                }

                ++v34;
                if (!--v33)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v26 == 45)
          {
            if (v23 < 1)
            {
              goto LABEL_102;
            }

            v27 = v23 - 1;
            if (v23 != 1)
            {
              v1 = 0;
              if (!v25)
              {
                goto LABEL_77;
              }

              v28 = v25 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v1, 0xAuLL))
                {
                  break;
                }

                v30 = 10 * v1 >= v29;
                v1 = 10 * v1 - v29;
                if (!v30)
                {
                  break;
                }

                ++v28;
                if (!--v27)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v23)
          {
            v1 = 0;
            if (!v25)
            {
              goto LABEL_77;
            }

            while (1)
            {
              v38 = *v25 - 48;
              if (v38 > 9)
              {
                break;
              }

              if (!is_mul_ok(v1, 0xAuLL))
              {
                break;
              }

              v30 = __CFADD__(10 * v1, v38);
              v1 = 10 * v1 + v38;
              if (v30)
              {
                break;
              }

              ++v25;
              if (!--v23)
              {
                goto LABEL_75;
              }
            }
          }
        }

        v1 = 0;
        LOBYTE(v25) = 1;
LABEL_77:
        v63 = v25;
        v41 = v25;

        if (v41)
        {
          goto LABEL_32;
        }

LABEL_78:
        if (!*(v57 + 16))
        {
          goto LABEL_32;
        }

        v42 = sub_1007A3BF4();
        v43 = -1 << *(v57 + 32);
        v44 = v42 & ~v43;
        if (((*(v58 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
        {
          goto LABEL_32;
        }

        v45 = ~v43;
        while (*(*(v57 + 48) + 8 * v44) != v1)
        {
          v44 = (v44 + 1) & v45;
          if (((*(v58 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        swift_unknownObjectRelease();
        if (v3 == v9)
        {
LABEL_93:
          v49 = v62;
          goto LABEL_98;
        }
      }

      else
      {
LABEL_32:
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        v1 = &v62;
        sub_1007A37E4();
        if (v3 == i)
        {
          goto LABEL_93;
        }
      }
    }

    if (v3 >= *(v6 + 16))
    {
      goto LABEL_95;
    }

    v7 = swift_unknownObjectRetain();
    v8 = __OFADD__(v3++, 1);
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    ;
  }

  v49 = _swiftEmptyArrayStorage;
LABEL_98:
  v50 = v0[27];

  v51 = sub_1003BC474(v49);

  v52 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10080B690;
  *(v53 + 56) = sub_1001F1160(&qword_100ADEC60);
  *(v53 + 32) = v51;
  v68._countAndFlagsBits = 0x80000001008E2480;
  v54.super.isa = v50;
  v67.value._rawValue = v53;
  v67.is_nil = 108;
  v68._object = 439;
  sub_1007A32F4(v54, v67, v68, v55);

  v56 = v0[1];

  return v56();
}

uint64_t sub_100632168()
{
  sub_1000074E0(v0 + 16);
  if (qword_100AD1990 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AEEA88);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to deduplicate assets.  Error=%@", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480);
  }

  v7 = *(v0 + 216);

  v8 = [objc_opt_self() sharedInstance];
  v15._countAndFlagsBits = 0x80000001008E2480;
  v9.super.isa = v7;
  v14.value._rawValue = 0;
  v14.is_nil = 108;
  v15._object = 442;
  sub_1007A32F4(v9, v14, v15, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100632364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = sub_100799B14();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  sub_1001F1160(&qword_100AE7680);
  v6[25] = swift_task_alloc();
  sub_1001F1160(&qword_100AEEC40);
  v6[26] = swift_task_alloc();
  v8 = sub_100799AC4();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v9 = sub_10079A2F4();
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100632550, 0, 0);
}

uint64_t sub_100632550()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[20];
  sub_10062B274((v0 + 2));
  v7 = v0[5];
  v13 = v0[6];
  sub_10000E3E8(v0 + 2, v7);
  (*(v1 + 16))(v2, v6, v4);
  v8 = sub_10079A0E4();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = sub_10079A874();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10079A2E4();
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = sub_1006326F8;
  v11 = v0[32];

  return dispatch thunk of BookRecommendationServiceType.fetchRecommendations(for:)(v11, v7, v13);
}

uint64_t sub_1006326F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v4[34] = v1;

  v6 = (v5 + 8);
  v7 = v4[32];
  v8 = v4[30];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_100632BE4;
  }

  else
  {
    v4[35] = a1;
    (*v6)(v7, v8);
    v9 = sub_100632884;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100632884()
{
  v1 = *(v0 + 280);
  sub_1000074E0(v0 + 16);
  v2 = *(v0 + 272);
  sub_100796494();
  swift_allocObject();
  result = sub_100796484();
  v20 = result;
  if (!v1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_17:
    v12 = *(v0 + 168);
    v13 = [objc_opt_self() sharedInstance];
    sub_1001F1160(&qword_100AD7FB0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10080B690;
    *(v14 + 56) = sub_1001F1160(&qword_100ADEC60);
    *(v14 + 32) = v8;
    v23._countAndFlagsBits = 0x80000001008E2480;
    v15.super.isa = v12;
    v22.value._rawValue = v14;
    v22.is_nil = 108;
    v23._object = 502;
    sub_1007A32F4(v15, v22, v23, v16);

    v17 = *(v0 + 8);

    return v17();
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_16:

    goto LABEL_17;
  }

  v5 = 0;
  v6 = *(v0 + 184);
  v7 = (v6 + 8);
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v5 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v6 + 16))(*(v0 + 192), v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, *(v0 + 176));
    sub_100632EB4(v20, (v0 + 88));
    v9 = *(v0 + 176);
    if (v2)
    {
      break;
    }

    (*v7)(*(v0 + 192), v9);
    if (*(v0 + 112))
    {
      sub_1000076D4((v0 + 88), (v0 + 56));
      sub_1000076D4((v0 + 56), (v0 + 120));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10066A640(0, *(v8 + 2) + 1, 1, v8);
      }

      v11 = *(v8 + 2);
      v10 = *(v8 + 3);
      if (v11 >= v10 >> 1)
      {
        v8 = sub_10066A640((v10 > 1), v11 + 1, 1, v8);
      }

      *(v8 + 2) = v11 + 1;
      result = sub_1000076D4((v0 + 120), &v8[32 * v11 + 32]);
    }

    else
    {
      result = sub_100007840(v0 + 88, &unk_100AD5B40);
    }

    v2 = 0;
    if (v4 == ++v5)
    {
      goto LABEL_16;
    }
  }

  v18 = *(v0 + 192);
  v19 = v9;

  (*v7)(v18, v19);
}

uint64_t sub_100632BE4()
{
  sub_1000074E0(v0 + 16);
  if (qword_100AD1990 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AEEA88);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch recommendations. error: %@)", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480);
  }

  else
  {
  }

  sub_100796494();
  swift_allocObject();
  sub_100796484();
  v7 = *(v0 + 168);
  v8 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080B690;
  *(v9 + 56) = sub_1001F1160(&qword_100ADEC60);
  *(v9 + 32) = _swiftEmptyArrayStorage;
  v16._countAndFlagsBits = 0x80000001008E2480;
  v10.super.isa = v7;
  v15.value._rawValue = v9;
  v15.is_nil = 108;
  v16._object = 502;
  sub_1007A32F4(v10, v15, v16, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100632EB4@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v33 = sub_10079A7A4();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100799AE4();
  *&v32 = sub_100633328();
  *(&v32 + 1) = v6;
  v8 = v7;
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *&v37 = sub_10079A5F4();
  *(inited + 48) = sub_1007A3A74();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x73656372756F73;
  *(inited + 88) = 0xE700000000000000;
  v11 = sub_10079A5D4();
  v12 = sub_1001F1160(&qword_100AEEC00);
  *(inited + 96) = v11;
  *(inited + 120) = v12;
  *(inited + 128) = 0x65726F6373;
  *(inited + 136) = 0xE500000000000000;
  sub_100799AF4();
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = v13;
  v14 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  if (v8)
  {
    *&v37 = v8;
    sub_1001F1160(&qword_100AEEC10);
    sub_10063BAA8();
    v15 = sub_100796474();
    if (v2)
    {
    }

    else
    {
      v22 = v15;
      v23 = v16;

      v24 = objc_opt_self();
      isa = sub_1007969C4().super.isa;
      *&v37 = 0;
      v26 = [v24 JSONObjectWithData:isa options:0 error:{&v37, v31}];

      if (v26)
      {
        v27 = v37;
        sub_1007A3504();
        swift_unknownObjectRelease();
        v28 = sub_1001F1160(&qword_100AD6710);
        if (swift_dynamicCast())
        {
          v38 = v28;
          *&v37 = *&v36[0];
          sub_1000076D4(&v37, v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = v14;
          sub_1002F4B78(v36, 0x746E65746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          sub_10000ADCC(v22, v23);
          v14 = v35;
        }

        else
        {
          sub_10000ADCC(v22, v23);
        }
      }

      else
      {
        v30 = v37;
        sub_1007967D4();

        swift_willThrow();
        sub_10000ADCC(v22, v23);
      }
    }
  }

  if (*(&v32 + 1))
  {
    v38 = &type metadata for String;
    v37 = v32;
    sub_1000076D4(&v37, v36);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v14;
    sub_1002F4B78(v36, 1684957547, 0xE400000000000000, v17);
    v14 = v35;
  }

  v18 = sub_1001F1160(&qword_100AD6710);
  v19 = v33;
  v20 = v34;
  v34[3] = v18;
  *v20 = v14;
  return (*(v3 + 8))(v5, v19);
}

uint64_t sub_100633328()
{
  v0 = sub_1001F1160(&qword_100AD6730);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10079A5B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_10079A5C4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100007840(v2, &qword_100AD6730);
    return 0;
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 16))(v6, v9, v3);
  v11 = (*(v4 + 88))(v6, v3);
  if (v11 == enum case for Book.Content.ebook(_:))
  {
    (*(v4 + 96))(v6, v3);
    (*(v4 + 8))(v9, v3);
    return 0x6B6F6F6265;
  }

  else
  {
    if (v11 != enum case for Book.Content.audiobook(_:))
    {
      v12 = *(v4 + 8);
      v12(v9, v3);
      v12(v6, v3);
      return 0;
    }

    (*(v4 + 96))(v6, v3);
    (*(v4 + 8))(v9, v3);
    return 0x6F6F626F69647561;
  }
}

uint64_t sub_1006335EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return _swift_task_switch(sub_100633610, 0, 0);
}

uint64_t sub_100633610()
{
  sub_10062B3D0((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  sub_10000E3E8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1006336DC;
  v4 = v0[13];

  return dispatch thunk of CollectionRecommendationServiceType.recommend(for:)(v0 + 7, v4, v1, v2);
}

uint64_t sub_1006336DC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1006339C0;
  }

  else
  {
    v2 = sub_1006337F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006337F0()
{
  v1 = *(v0 + 112);
  v12 = *(v0 + 96);
  sub_10000E3E8((v0 + 56), *(v0 + 80));
  v2 = sub_10079A554();
  sub_1000074E0(v0 + 56);
  sub_1000074E0(v0 + 16);
  sub_100796494();
  swift_allocObject();
  v3 = sub_100796484();
  v4 = swift_task_alloc();
  *(v4 + 16) = v12;
  *(v4 + 32) = v3;
  v5 = sub_100401A7C(sub_10063A428, v4, v2);

  v6 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080B690;
  *(v7 + 56) = sub_1001F1160(&qword_100ADEC60);
  *(v7 + 32) = v5;
  v15._countAndFlagsBits = 0x80000001008E2480;
  v8.super.isa = v1;
  v14.value._rawValue = v7;
  v14.is_nil = 108;
  v15._object = 643;
  sub_1007A32F4(v8, v14, v15, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1006339C0()
{
  sub_1000074E0(v0 + 16);
  if (qword_100AD1990 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AEEA88);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch recommendations. error: %@)", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480);
  }

  else
  {
  }

  v7 = *(v0 + 112);
  v8 = [objc_opt_self() sharedInstance];
  v15._countAndFlagsBits = 0x80000001008E2480;
  v9.super.isa = v7;
  v14.value._rawValue = 0;
  v14.is_nil = 108;
  v15._object = 520;
  sub_1007A32F4(v9, v14, v15, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100633BC4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, unint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v563 = a3;
  v553 = a2;
  v554 = a4;
  v513 = sub_100799C14();
  v512 = *(v513 - 8);
  __chkstk_darwin(v513);
  v511 = &v500 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v537 = sub_10079A984();
  v536 = *(v537 - 8);
  __chkstk_darwin(v537);
  v533 = &v500 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079A734();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v562 = &v500 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v561 = sub_10079A7A4();
  v538 = *(v561 - 8);
  __chkstk_darwin(v561);
  v560 = &v500 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v546 = sub_1001F1160(&qword_100AEEB80);
  v547 = *(v546 - 8);
  __chkstk_darwin(v546);
  v516 = &v500 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v519 = &v500 - v13;
  __chkstk_darwin(v14);
  v522 = &v500 - v15;
  __chkstk_darwin(v16);
  v526 = &v500 - v17;
  __chkstk_darwin(v18);
  v528 = &v500 - v19;
  __chkstk_darwin(v20);
  v532 = &v500 - v21;
  __chkstk_darwin(v22);
  v535 = &v500 - v23;
  __chkstk_darwin(v24);
  v504 = &v500 - v25;
  __chkstk_darwin(v26);
  v541 = &v500 - v27;
  __chkstk_darwin(v28);
  v545 = &v500 - v29;
  v549 = sub_10079A0E4();
  v550 = *(v549 - 8);
  __chkstk_darwin(v549);
  v514 = &v500 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v517 = &v500 - v32;
  __chkstk_darwin(v33);
  v515 = &v500 - v34;
  __chkstk_darwin(v35);
  v520 = &v500 - v36;
  __chkstk_darwin(v37);
  v518 = &v500 - v38;
  __chkstk_darwin(v39);
  v523 = &v500 - v40;
  __chkstk_darwin(v41);
  v503 = &v500 - v42;
  __chkstk_darwin(v43);
  v508 = &v500 - v44;
  __chkstk_darwin(v45);
  v506 = &v500 - v46;
  __chkstk_darwin(v47);
  v510 = &v500 - v48;
  __chkstk_darwin(v49);
  v521 = &v500 - v50;
  __chkstk_darwin(v51);
  v524 = &v500 - v52;
  __chkstk_darwin(v53);
  v525 = &v500 - v54;
  __chkstk_darwin(v55);
  v529 = &v500 - v56;
  __chkstk_darwin(v57);
  v527 = &v500 - v58;
  __chkstk_darwin(v59);
  v530 = &v500 - v60;
  __chkstk_darwin(v61);
  v531 = &v500 - v62;
  __chkstk_darwin(v63);
  v539 = &v500 - v64;
  __chkstk_darwin(v65);
  v502 = &v500 - v66;
  __chkstk_darwin(v67);
  v505 = &v500 - v68;
  __chkstk_darwin(v69);
  v534 = &v500 - v70;
  __chkstk_darwin(v71);
  v540 = &v500 - v72;
  __chkstk_darwin(v73);
  v542 = &v500 - v74;
  __chkstk_darwin(v75);
  v543 = &v500 - v76;
  v77 = sub_100799B14();
  v78 = *(v77 - 8);
  v564 = v77;
  v565 = v78;
  __chkstk_darwin(v77);
  v507 = &v500 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v509 = &v500 - v81;
  __chkstk_darwin(v82);
  v559 = &v500 - v83;
  __chkstk_darwin(v84);
  v544 = &v500 - v85;
  v551 = sub_10079A274();
  v552 = *(v551 - 1);
  __chkstk_darwin(v551);
  v548 = &v500 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10079A404();
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v90 = &v500 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1001F1160(&qword_100AE3180);
  __chkstk_darwin(v91 - 8);
  v93 = &v500 - v92;
  v94 = sub_10079A254();
  sub_100401E98(v94, v93);

  if ((*(v8 + 48))(v93, 1, v7) == 1)
  {
    result = sub_100007840(v93, &qword_100AE3180);
LABEL_8:
    v119 = v554;
    *v554 = 0u;
    *(v119 + 1) = 0u;
    return result;
  }

  v501 = sub_10079A724();
  v97 = *(v8 + 8);
  v96 = v8 + 8;
  v558 = v7;
  v557 = v97;
  v97(v93, v7);
  v98 = sub_10079A254();
  sub_10079A244();
  v99 = sub_10063A448(v98, v90);
  v101 = v100;

  (*(v88 + 8))(v90, v87);
  v553 = v101;
  if (!v101)
  {

    goto LABEL_8;
  }

  v102 = a1;
  v103 = v99;
  v104 = v552;
  v105 = v548;
  v106 = v551;
  (*(v552 + 16))(v548, v102, v551);
  v107 = (*(v104 + 88))(v105, v106);
  if (v107 == enum case for CollectionRecommendation.book(_:))
  {

    (*(v104 + 96))(v105, v106);
    v108 = v544;
    (*(v565 + 32))(v544, v105, v564);
    v109 = sub_10063A938(v563, v501);

    v569 = &type metadata for String;
    *&v568 = 1802465122;
    *(&v568 + 1) = 0xE400000000000000;
    sub_1000076D4(&v568, &v567);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v566 = v109;
    sub_1002F4B78(&v567, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v111 = v566;
    v112 = v543;
    sub_10079A264();
    v113 = v550;
    v114 = v542;
    v115 = v549;
    (*(v550 + 16))(v542, v112, v549);
    v116 = (*(v113 + 88))(v114, v115);
    if (v116 == enum case for CollectionSource.appleMediaDiscovery(_:))
    {
      v117 = 0xD000000000000013;
      v118 = 0x80000001008BF780;
LABEL_43:
      (*(v113 + 8))(v112, v115);
      v569 = &type metadata for String;
      *&v568 = v117;
      *(&v568 + 1) = v118;
      sub_1000076D4(&v568, &v567);
      v198 = swift_isUniquelyReferenced_nonNull_native();
      v566 = v111;
      sub_1002F4B78(&v567, 0x656372756F73, 0xE600000000000000, v198);
      v199 = v566;
      v200 = sub_1001F1160(&qword_100AD6710);
      v201 = v554;
      v554[3] = v200;
      *v201 = v199;
      return (*(v565 + 8))(v108, v564);
    }

    if (v116 == enum case for CollectionSource.mediaAPI(_:))
    {
      v117 = 1768972653;
LABEL_18:
      v118 = 0xE400000000000000;
      goto LABEL_43;
    }

    if (v116 == enum case for CollectionSource.bookHistory(_:))
    {
      v117 = 7365743;
      v118 = 0xE300000000000000;
      goto LABEL_43;
    }

    if (v116 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
    {
      v118 = 0x80000001008BF7B0;
      v117 = 0xD000000000000022;
      goto LABEL_43;
    }

    if (v116 == enum case for CollectionSource.tabi(_:))
    {
      v117 = 1768055156;
      goto LABEL_18;
    }

    goto LABEL_236;
  }

  if (v107 == enum case for CollectionRecommendation.books(_:))
  {
    v120 = v96;

    (*(v104 + 96))(v105, v106);
    v121 = v547;
    v122 = v545;
    v123 = v546;
    (*(v547 + 32))(v545, v105, v546);
    v124 = v540;
    sub_10079A264();
    sub_1001F1160(&unk_100ADE550);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_100815060;
    *(v125 + 32) = 1701869940;
    v548 = (v125 + 32);
    *(v125 + 40) = 0xE400000000000000;
    *(v125 + 48) = 0x736B6F6F62;
    *(v125 + 56) = 0xE500000000000000;
    *(v125 + 72) = &type metadata for String;
    *(v125 + 80) = 1684957547;
    *(v125 + 88) = 0xE400000000000000;
    *(v125 + 96) = v103;
    *(v125 + 104) = v553;
    *(v125 + 120) = &type metadata for String;
    *(v125 + 128) = 0x736B6F6F62;
    *(v125 + 136) = 0xE500000000000000;
    (*(v121 + 16))(v541, v122, v123);
    sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
    v126 = sub_1007A2504();
    v127 = *(v126 + 16);
    if (v127)
    {
      v544 = v125;
      v556 = v120;
      *&v568 = _swiftEmptyArrayStorage;
      sub_1003BD7D8(0, v127, 0);
      v128 = v568;
      v553 = *(v565 + 16);
      v129 = (*(v565 + 80) + 32) & ~*(v565 + 80);
      v543 = v126;
      v130 = v126 + v129;
      v552 = *(v565 + 72);
      v551 = (v538 + 8);
      v565 += 16;
      v131 = (v565 - 8);
      do
      {
        v132 = v559;
        v133 = v564;
        v553(v559, v130, v564);
        v134 = v560;
        sub_100799AE4();
        v135 = v562;
        sub_10079A784();
        (*v551)(v134, v561);
        v136 = sub_10079A724();
        v557(v135, v558);
        v137 = sub_10063A938(v563, v136);

        (*v131)(v132, v133);
        *&v568 = v128;
        v139 = v128[2];
        v138 = v128[3];
        if (v139 >= v138 >> 1)
        {
          sub_1003BD7D8((v138 > 1), v139 + 1, 1);
          v128 = v568;
        }

        v128[2] = v139 + 1;
        v128[v139 + 4] = v137;
        v130 += v552;
        --v127;
      }

      while (v127);

      v124 = v540;
      v125 = v544;
    }

    else
    {

      v128 = _swiftEmptyArrayStorage;
    }

    v191 = sub_1001F1160(&qword_100ADE598);
    *(v125 + 144) = v128;
    *(v125 + 168) = v191;
    *(v125 + 176) = 0x656372756F73;
    *(v125 + 184) = 0xE600000000000000;
    v192 = v550;
    v193 = v534;
    v194 = v549;
    (*(v550 + 16))(v534, v124, v549);
    v195 = (*(v192 + 88))(v193, v194);
    if (v195 == enum case for CollectionSource.appleMediaDiscovery(_:))
    {
      v196 = 0xD000000000000013;
      v197 = 0x80000001008BF780;
LABEL_70:
      *(v125 + 216) = &type metadata for String;
      *(v125 + 192) = v196;
      *(v125 + 200) = v197;
      v265 = sub_100019158(v125);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v192 + 8))(v124, v194);
      v266 = sub_1001F1160(&qword_100AD6710);
      v267 = v554;
      v554[3] = v266;
      *v267 = v265;
      return (*(v547 + 8))(v545, v546);
    }

    if (v195 == enum case for CollectionSource.mediaAPI(_:))
    {
      v196 = 1768972653;
LABEL_40:
      v197 = 0xE400000000000000;
      goto LABEL_70;
    }

    if (v195 == enum case for CollectionSource.bookHistory(_:))
    {
      v196 = 7365743;
      v197 = 0xE300000000000000;
      goto LABEL_70;
    }

    if (v195 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
    {
      v197 = 0x80000001008BF7B0;
      v196 = 0xD000000000000022;
      goto LABEL_70;
    }

    if (v195 == enum case for CollectionSource.tabi(_:))
    {
      v196 = 1768055156;
      goto LABEL_40;
    }

LABEL_236:
    v499 = 0;
    i = 790;
    goto LABEL_237;
  }

  v556 = v96;
  if (v107 != enum case for CollectionRecommendation.booksBasedOnSeed(_:))
  {
    if (v107 == enum case for CollectionRecommendation.booksByAuthor(_:))
    {

      (*(v104 + 96))(v105, v106);
      v164 = sub_1001F1160(&qword_100AEEB98);
      v165 = *&v105[*(v164 + 48)];
      v166 = *(v164 + 64);
      v167 = v103;
      v168 = v547;
      v169 = v105;
      v170 = v532;
      v171 = v546;
      (*(v547 + 32))(v532, v169, v546);
      v172 = v550;
      v173 = &v169[v166];
      v174 = v530;
      v175 = v549;
      (*(v550 + 32))(v530, v173, v549);
      sub_1001F1160(&unk_100ADE550);
      v176 = swift_allocObject();
      *(v176 + 16) = xmmword_100815060;
      *(v176 + 32) = 1701869940;
      v545 = v176 + 32;
      *(v176 + 40) = 0xE400000000000000;
      *(v176 + 48) = 0x79622D736B6F6F62;
      *(v176 + 56) = 0xEF726F687475612DLL;
      *(v176 + 72) = &type metadata for String;
      *(v176 + 80) = 1684957547;
      *(v176 + 88) = 0xE400000000000000;
      *(v176 + 96) = v167;
      *(v176 + 104) = v553;
      *(v176 + 120) = &type metadata for String;
      *(v176 + 128) = 0x736B6F6F62;
      v548 = v176;
      *(v176 + 136) = 0xE500000000000000;
      (*(v168 + 16))(v541, v170, v171);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
      v177 = sub_1007A2504();
      v178 = *(v177 + 16);
      if (v178)
      {
        v544 = v165;
        *&v568 = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v178, 0);
        v179 = v568;
        v553 = *(v565 + 16);
        v180 = (*(v565 + 80) + 32) & ~*(v565 + 80);
        v543 = v177;
        v181 = v177 + v180;
        v552 = *(v565 + 72);
        v551 = (v538 + 8);
        v565 += 16;
        v182 = (v565 - 8);
        do
        {
          v183 = v559;
          v184 = v564;
          v553(v559, v181, v564);
          v185 = v560;
          sub_100799AE4();
          v186 = v562;
          sub_10079A784();
          (*v551)(v185, v561);
          v187 = sub_10079A724();
          v557(v186, v558);
          v188 = sub_10063A938(v563, v187);

          (*v182)(v183, v184);
          *&v568 = v179;
          v190 = v179[2];
          v189 = v179[3];
          if (v190 >= v189 >> 1)
          {
            sub_1003BD7D8((v189 > 1), v190 + 1, 1);
            v179 = v568;
          }

          v179[2] = v190 + 1;
          v179[v190 + 4] = v188;
          v181 += v552;
          --v178;
        }

        while (v178);

        v172 = v550;
        v175 = v549;
        v174 = v530;
        v165 = v544;
      }

      else
      {

        v179 = _swiftEmptyArrayStorage;
      }

      v268 = sub_1001F1160(&qword_100ADE598);
      v269 = v548;
      *(v548 + 18) = v179;
      *(v269 + 21) = v268;
      *(v269 + 22) = 0x656372756F73;
      *(v269 + 23) = 0xE600000000000000;
      v270 = v527;
      (*(v172 + 16))(v527, v174, v175);
      v271 = (*(v172 + 88))(v270, v175);
      if (v271 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v272 = 0xD000000000000013;
        v273 = 0x80000001008BF780;
      }

      else
      {
        if (v271 == enum case for CollectionSource.mediaAPI(_:))
        {
          v272 = 1768972653;
        }

        else
        {
          if (v271 == enum case for CollectionSource.bookHistory(_:))
          {
            v272 = 7365743;
            v273 = 0xE300000000000000;
            goto LABEL_117;
          }

          if (v271 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
          {
            v273 = 0x80000001008BF7B0;
            v272 = 0xD000000000000022;
            goto LABEL_117;
          }

          if (v271 != enum case for CollectionSource.tabi(_:))
          {
            goto LABEL_236;
          }

          v272 = 1768055156;
        }

        v273 = 0xE400000000000000;
      }

LABEL_117:
      *(v269 + 27) = &type metadata for String;
      *(v269 + 24) = v272;
      *(v269 + 25) = v273;
      v352 = sub_100019158(v269);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *&v568 = v165;
      v353 = sub_1007A3A74();
      v569 = &type metadata for String;
      *&v568 = v353;
      *(&v568 + 1) = v354;
      sub_1000076D4(&v568, &v567);
      v355 = swift_isUniquelyReferenced_nonNull_native();
      v566 = v352;
      sub_1002F4B78(&v567, 25705, 0xE200000000000000, v355);
      v356 = v566;
      v357 = sub_1001F1160(&qword_100AD6710);
      v358 = v554;
      v554[3] = v357;
      *v358 = v356;
      (*(v172 + 8))(v174, v175);
      return (*(v547 + 8))(v532, v546);
    }

    if (v107 == enum case for CollectionRecommendation.booksBySuggestedAuthors(_:))
    {
      v202 = 0xD000000000000013;

      (*(v104 + 96))(v105, v106);
      v203 = *(sub_1001F1160(&qword_100AEEB88) + 48);
      v204 = v103;
      v205 = v547;
      v206 = v528;
      v207 = v105;
      v208 = v105;
      v209 = v546;
      (*(v547 + 32))(v528, v207, v546);
      v210 = v550;
      v211 = &v208[v203];
      v212 = v549;
      (*(v550 + 32))(v529, v211, v549);
      sub_1001F1160(&unk_100ADE550);
      v213 = swift_allocObject();
      *(v213 + 16) = xmmword_100815060;
      *(v213 + 32) = 1701869940;
      v545 = v213 + 32;
      *(v213 + 40) = 0xE400000000000000;
      *(v213 + 48) = 0xD00000000000001ALL;
      *(v213 + 56) = 0x80000001008BFCE0;
      *(v213 + 72) = &type metadata for String;
      *(v213 + 80) = 1684957547;
      *(v213 + 88) = 0xE400000000000000;
      *(v213 + 96) = v204;
      *(v213 + 104) = v553;
      *(v213 + 120) = &type metadata for String;
      *(v213 + 128) = 0x736B6F6F62;
      v548 = v213;
      *(v213 + 136) = 0xE500000000000000;
      (*(v205 + 16))(v541, v206, v209);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
      v214 = sub_1007A2504();
      v215 = *(v214 + 16);
      if (v215)
      {
        *&v568 = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v215, 0);
        v216 = v568;
        v553 = *(v565 + 16);
        v217 = (*(v565 + 80) + 32) & ~*(v565 + 80);
        v544 = v214;
        v218 = v214 + v217;
        v552 = *(v565 + 72);
        v551 = (v538 + 8);
        v565 += 16;
        v219 = (v565 - 8);
        do
        {
          v220 = v559;
          v221 = v564;
          v553(v559, v218, v564);
          v222 = v560;
          sub_100799AE4();
          v223 = v562;
          sub_10079A784();
          (*v551)(v222, v561);
          v224 = sub_10079A724();
          v557(v223, v558);
          v225 = sub_10063A938(v563, v224);

          (*v219)(v220, v221);
          *&v568 = v216;
          v227 = v216[2];
          v226 = v216[3];
          if (v227 >= v226 >> 1)
          {
            sub_1003BD7D8((v226 > 1), v227 + 1, 1);
            v216 = v568;
          }

          v216[2] = v227 + 1;
          v216[v227 + 4] = v225;
          v218 += v552;
          --v215;
        }

        while (v215);

        v210 = v550;
        v212 = v549;
        v202 = 0xD000000000000013;
      }

      else
      {

        v216 = _swiftEmptyArrayStorage;
      }

      v320 = sub_1001F1160(&qword_100ADE598);
      v321 = v548;
      *(v548 + 18) = v216;
      v322 = v321;
      *(v321 + 21) = v320;
      *(v321 + 22) = 0x656372756F73;
      *(v321 + 23) = 0xE600000000000000;
      v323 = v525;
      (*(v210 + 16))(v525, v529, v212);
      v324 = (*(v210 + 88))(v323, v212);
      if (v324 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v325 = 0x80000001008BF780;
LABEL_137:
        *(v322 + 27) = &type metadata for String;
        *(v322 + 24) = v202;
        *(v322 + 25) = v325;
        v391 = sub_100019158(v322);
        swift_setDeallocating();
        sub_1001F1160(&unk_100ADD560);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v392 = sub_1001F1160(&qword_100AD6710);
        v393 = v554;
        v554[3] = v392;
        *v393 = v391;
        (*(v210 + 8))(v529, v212);
        return (*(v547 + 8))(v528, v546);
      }

      if (v324 == enum case for CollectionSource.mediaAPI(_:))
      {
        v202 = 1768972653;
LABEL_105:
        v325 = 0xE400000000000000;
        goto LABEL_137;
      }

      if (v324 == enum case for CollectionSource.bookHistory(_:))
      {
        v202 = 7365743;
        v325 = 0xE300000000000000;
        goto LABEL_137;
      }

      if (v324 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
      {
        v325 = 0x80000001008BF7B0;
        v202 = 0xD000000000000022;
        goto LABEL_137;
      }

      if (v324 == enum case for CollectionSource.tabi(_:))
      {
        v202 = 1768055156;
        goto LABEL_105;
      }

      goto LABEL_239;
    }

    if (v107 == enum case for CollectionRecommendation.booksInGenre(_:))
    {

      (*(v104 + 96))(v105, v106);
      v238 = sub_1001F1160(&qword_100AEEB98);
      v239 = *&v105[*(v238 + 48)];
      v240 = *(v238 + 64);
      v241 = v103;
      v242 = v547;
      v243 = v105;
      v244 = v526;
      v245 = v546;
      (*(v547 + 32))(v526, v243, v546);
      v246 = v550;
      v247 = &v243[v240];
      v248 = v524;
      v249 = v549;
      (*(v550 + 32))(v524, v247, v549);
      sub_1001F1160(&unk_100ADE550);
      v250 = swift_allocObject();
      *(v250 + 16) = xmmword_100815060;
      *(v250 + 32) = 1701869940;
      v545 = v250 + 32;
      *(v250 + 40) = 0xE400000000000000;
      strcpy((v250 + 48), "books-in-genre");
      *(v250 + 63) = -18;
      *(v250 + 72) = &type metadata for String;
      *(v250 + 80) = 1684957547;
      *(v250 + 88) = 0xE400000000000000;
      *(v250 + 96) = v241;
      *(v250 + 104) = v553;
      *(v250 + 120) = &type metadata for String;
      *(v250 + 128) = 0x736B6F6F62;
      v548 = v250;
      *(v250 + 136) = 0xE500000000000000;
      (*(v242 + 16))(v541, v244, v245);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
      v251 = sub_1007A2504();
      v252 = *(v251 + 16);
      if (v252)
      {
        v544 = v239;
        *&v568 = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v252, 0);
        v253 = v568;
        v553 = *(v565 + 16);
        v254 = (*(v565 + 80) + 32) & ~*(v565 + 80);
        v543 = v251;
        v255 = v251 + v254;
        v552 = *(v565 + 72);
        v551 = (v538 + 8);
        v565 += 16;
        v256 = (v565 - 8);
        do
        {
          v257 = v559;
          v258 = v564;
          v553(v559, v255, v564);
          v259 = v560;
          sub_100799AE4();
          v260 = v562;
          sub_10079A784();
          (*v551)(v259, v561);
          v261 = sub_10079A724();
          v557(v260, v558);
          v262 = sub_10063A938(v563, v261);

          (*v256)(v257, v258);
          *&v568 = v253;
          v264 = v253[2];
          v263 = v253[3];
          if (v264 >= v263 >> 1)
          {
            sub_1003BD7D8((v263 > 1), v264 + 1, 1);
            v253 = v568;
          }

          v253[2] = v264 + 1;
          v253[v264 + 4] = v262;
          v255 += v552;
          --v252;
        }

        while (v252);

        v246 = v550;
        v249 = v549;
        v248 = v524;
        v239 = v544;
      }

      else
      {

        v253 = _swiftEmptyArrayStorage;
      }

      v359 = sub_1001F1160(&qword_100ADE598);
      v360 = v548;
      *(v548 + 18) = v253;
      *(v360 + 21) = v359;
      *(v360 + 22) = 0x656372756F73;
      *(v360 + 23) = 0xE600000000000000;
      v361 = v521;
      (*(v246 + 16))(v521, v248, v249);
      v362 = (*(v246 + 88))(v361, v249);
      if (v362 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v363 = 0xD000000000000013;
        v364 = 0x80000001008BF780;
      }

      else
      {
        if (v362 == enum case for CollectionSource.mediaAPI(_:))
        {
          v363 = 1768972653;
        }

        else
        {
          if (v362 == enum case for CollectionSource.bookHistory(_:))
          {
            v363 = 7365743;
            v364 = 0xE300000000000000;
            goto LABEL_152;
          }

          if (v362 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
          {
            v364 = 0x80000001008BF7B0;
            v363 = 0xD000000000000022;
            goto LABEL_152;
          }

          if (v362 != enum case for CollectionSource.tabi(_:))
          {
            goto LABEL_236;
          }

          v363 = 1768055156;
        }

        v364 = 0xE400000000000000;
      }

LABEL_152:
      *(v360 + 27) = &type metadata for String;
      *(v360 + 24) = v363;
      *(v360 + 25) = v364;
      v407 = sub_100019158(v360);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *&v568 = v239;
      v408 = sub_1007A3A74();
      v569 = &type metadata for String;
      *&v568 = v408;
      *(&v568 + 1) = v409;
      sub_1000076D4(&v568, &v567);
      v410 = swift_isUniquelyReferenced_nonNull_native();
      v566 = v407;
      sub_1002F4B78(&v567, 25705, 0xE200000000000000, v410);
      v411 = v566;
      v412 = sub_1001F1160(&qword_100AD6710);
      v413 = v554;
      v554[3] = v412;
      *v413 = v411;
      (*(v246 + 8))(v248, v249);
      return (*(v547 + 8))(v526, v546);
    }

    if (v107 == enum case for CollectionRecommendation.booksYouMightLike(_:))
    {
      v274 = 0xD000000000000013;

      (*(v104 + 96))(v105, v106);
      v275 = *(sub_1001F1160(&qword_100AEEB88) + 48);
      v276 = v103;
      v277 = v547;
      v278 = v522;
      v279 = v105;
      v280 = v105;
      v281 = v546;
      (*(v547 + 32))(v522, v279, v546);
      v282 = v550;
      v283 = &v280[v275];
      v284 = v549;
      (*(v550 + 32))(v523, v283, v549);
      sub_1001F1160(&unk_100ADE550);
      v285 = swift_allocObject();
      *(v285 + 16) = xmmword_100815060;
      *(v285 + 32) = 1701869940;
      v545 = v285 + 32;
      *(v285 + 40) = 0xE400000000000000;
      *(v285 + 48) = 0xD000000000000014;
      *(v285 + 56) = 0x80000001008BFD00;
      *(v285 + 72) = &type metadata for String;
      *(v285 + 80) = 1684957547;
      *(v285 + 88) = 0xE400000000000000;
      *(v285 + 96) = v276;
      *(v285 + 104) = v553;
      *(v285 + 120) = &type metadata for String;
      *(v285 + 128) = 0x736B6F6F62;
      v548 = v285;
      *(v285 + 136) = 0xE500000000000000;
      (*(v277 + 16))(v541, v278, v281);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
      v286 = sub_1007A2504();
      v287 = *(v286 + 16);
      if (v287)
      {
        *&v568 = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v287, 0);
        v288 = v568;
        v553 = *(v565 + 16);
        v289 = (*(v565 + 80) + 32) & ~*(v565 + 80);
        v544 = v286;
        v290 = v286 + v289;
        v552 = *(v565 + 72);
        v551 = (v538 + 8);
        v565 += 16;
        v291 = (v565 - 8);
        do
        {
          v292 = v559;
          v293 = v564;
          v553(v559, v290, v564);
          v294 = v560;
          sub_100799AE4();
          v295 = v562;
          sub_10079A784();
          (*v551)(v294, v561);
          v296 = sub_10079A724();
          v557(v295, v558);
          v297 = sub_10063A938(v563, v296);

          (*v291)(v292, v293);
          *&v568 = v288;
          v299 = v288[2];
          v298 = v288[3];
          if (v299 >= v298 >> 1)
          {
            sub_1003BD7D8((v298 > 1), v299 + 1, 1);
            v288 = v568;
          }

          v288[2] = v299 + 1;
          v288[v299 + 4] = v297;
          v290 += v552;
          --v287;
        }

        while (v287);

        v282 = v550;
        v284 = v549;
        v274 = 0xD000000000000013;
      }

      else
      {

        v288 = _swiftEmptyArrayStorage;
      }

      v394 = sub_1001F1160(&qword_100ADE598);
      v395 = v548;
      *(v548 + 18) = v288;
      v396 = v395;
      *(v395 + 21) = v394;
      *(v395 + 22) = 0x656372756F73;
      *(v395 + 23) = 0xE600000000000000;
      v397 = v518;
      (*(v282 + 16))(v518, v523, v284);
      v398 = (*(v282 + 88))(v397, v284);
      if (v398 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v399 = 0x80000001008BF780;
      }

      else
      {
        if (v398 == enum case for CollectionSource.mediaAPI(_:))
        {
          v274 = 1768972653;
        }

        else
        {
          if (v398 == enum case for CollectionSource.bookHistory(_:))
          {
            v274 = 7365743;
            v399 = 0xE300000000000000;
            goto LABEL_168;
          }

          if (v398 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
          {
            v399 = 0x80000001008BF7B0;
            v274 = 0xD000000000000022;
            goto LABEL_168;
          }

          if (v398 != enum case for CollectionSource.tabi(_:))
          {
LABEL_239:
            v499 = 0;
            i = 790;
            goto LABEL_237;
          }

          v274 = 1768055156;
        }

        v399 = 0xE400000000000000;
      }

LABEL_168:
      *(v396 + 27) = &type metadata for String;
      *(v396 + 24) = v274;
      *(v396 + 25) = v399;
      v431 = sub_100019158(v396);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v432 = sub_1001F1160(&qword_100AD6710);
      v433 = v554;
      v554[3] = v432;
      *v433 = v431;
      (*(v282 + 8))(v523, v284);
      return (*(v547 + 8))(v522, v546);
    }

    if (v107 == enum case for CollectionRecommendation.mangaYouMightLike(_:))
    {
      v326 = 0xD000000000000013;

      (*(v104 + 96))(v105, v106);
      v327 = *(sub_1001F1160(&qword_100AEEB88) + 48);
      v328 = v103;
      v329 = v547;
      v330 = v519;
      v331 = v105;
      v332 = v105;
      v333 = v546;
      (*(v547 + 32))(v519, v331, v546);
      v334 = v550;
      v335 = &v332[v327];
      v336 = v549;
      (*(v550 + 32))(v520, v335, v549);
      sub_1001F1160(&unk_100ADE550);
      v337 = swift_allocObject();
      *(v337 + 16) = xmmword_100815060;
      *(v337 + 32) = 1701869940;
      v545 = v337 + 32;
      *(v337 + 40) = 0xE400000000000000;
      *(v337 + 48) = 0xD000000000000014;
      *(v337 + 56) = 0x80000001008BFD20;
      *(v337 + 72) = &type metadata for String;
      *(v337 + 80) = 1684957547;
      *(v337 + 88) = 0xE400000000000000;
      *(v337 + 96) = v328;
      *(v337 + 104) = v553;
      *(v337 + 120) = &type metadata for String;
      *(v337 + 128) = 0x736B6F6F62;
      v548 = v337;
      *(v337 + 136) = 0xE500000000000000;
      (*(v329 + 16))(v541, v330, v333);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
      v338 = sub_1007A2504();
      v339 = *(v338 + 16);
      if (v339)
      {
        *&v568 = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v339, 0);
        v340 = v568;
        v553 = *(v565 + 16);
        v341 = (*(v565 + 80) + 32) & ~*(v565 + 80);
        v544 = v338;
        v342 = v338 + v341;
        v552 = *(v565 + 72);
        v551 = (v538 + 8);
        v565 += 16;
        v343 = (v565 - 8);
        do
        {
          v344 = v559;
          v345 = v564;
          v553(v559, v342, v564);
          v346 = v560;
          sub_100799AE4();
          v347 = v562;
          sub_10079A784();
          (*v551)(v346, v561);
          v348 = sub_10079A724();
          v557(v347, v558);
          v349 = sub_10063A938(v563, v348);

          (*v343)(v344, v345);
          *&v568 = v340;
          v351 = v340[2];
          v350 = v340[3];
          if (v351 >= v350 >> 1)
          {
            sub_1003BD7D8((v350 > 1), v351 + 1, 1);
            v340 = v568;
          }

          v340[2] = v351 + 1;
          v340[v351 + 4] = v349;
          v342 += v552;
          --v339;
        }

        while (v339);

        v334 = v550;
        v336 = v549;
        v326 = 0xD000000000000013;
      }

      else
      {

        v340 = _swiftEmptyArrayStorage;
      }

      v414 = sub_1001F1160(&qword_100ADE598);
      v415 = v548;
      *(v548 + 18) = v340;
      v416 = v415;
      *(v415 + 21) = v414;
      *(v415 + 22) = 0x656372756F73;
      *(v415 + 23) = 0xE600000000000000;
      v417 = v515;
      (*(v334 + 16))(v515, v520, v336);
      v418 = (*(v334 + 88))(v417, v336);
      if (v418 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v419 = 0x80000001008BF780;
LABEL_183:
        *(v416 + 27) = &type metadata for String;
        *(v416 + 24) = v326;
        *(v416 + 25) = v419;
        v451 = sub_100019158(v416);
        swift_setDeallocating();
        sub_1001F1160(&unk_100ADD560);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v452 = sub_1001F1160(&qword_100AD6710);
        v453 = v554;
        v554[3] = v452;
        *v453 = v451;
        (*(v334 + 8))(v520, v336);
        return (*(v547 + 8))(v519, v546);
      }

      if (v418 == enum case for CollectionSource.mediaAPI(_:))
      {
        v326 = 1768972653;
LABEL_160:
        v419 = 0xE400000000000000;
        goto LABEL_183;
      }

      if (v418 == enum case for CollectionSource.bookHistory(_:))
      {
        v326 = 7365743;
        v419 = 0xE300000000000000;
        goto LABEL_183;
      }

      if (v418 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
      {
        v419 = 0x80000001008BF7B0;
        v326 = 0xD000000000000022;
        goto LABEL_183;
      }

      if (v418 == enum case for CollectionSource.tabi(_:))
      {
        v326 = 1768055156;
        goto LABEL_160;
      }

LABEL_240:
      v499 = 0;
      for (i = 790; ; i = 790)
      {
LABEL_237:
        sub_1007A38A4();
        __break(1u);
LABEL_238:
        v499 = 0;
      }
    }

    if (v107 == enum case for CollectionRecommendation.moreFromYourAuthors(_:))
    {
      v365 = 0xD000000000000013;

      (*(v104 + 96))(v105, v106);
      v366 = *(sub_1001F1160(&qword_100AEEB88) + 48);
      v367 = v103;
      v368 = v547;
      v369 = v516;
      v370 = v105;
      v371 = v105;
      v372 = v546;
      (*(v547 + 32))(v516, v370, v546);
      v373 = v550;
      v374 = &v371[v366];
      v375 = v549;
      (*(v550 + 32))(v517, v374, v549);
      sub_1001F1160(&unk_100ADE550);
      v376 = swift_allocObject();
      *(v376 + 16) = xmmword_100815060;
      *(v376 + 32) = 1701869940;
      v545 = v376 + 32;
      *(v376 + 40) = 0xE400000000000000;
      *(v376 + 48) = 0xD000000000000016;
      *(v376 + 56) = 0x80000001008BFD40;
      *(v376 + 72) = &type metadata for String;
      *(v376 + 80) = 1684957547;
      *(v376 + 88) = 0xE400000000000000;
      *(v376 + 96) = v367;
      *(v376 + 104) = v553;
      *(v376 + 120) = &type metadata for String;
      *(v376 + 128) = 0x736B6F6F62;
      v548 = v376;
      *(v376 + 136) = 0xE500000000000000;
      (*(v368 + 16))(v541, v369, v372);
      sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
      v377 = sub_1007A2504();
      v378 = *(v377 + 16);
      if (v378)
      {
        *&v568 = _swiftEmptyArrayStorage;
        sub_1003BD7D8(0, v378, 0);
        v379 = v568;
        v553 = *(v565 + 16);
        v380 = (*(v565 + 80) + 32) & ~*(v565 + 80);
        v544 = v377;
        v381 = v377 + v380;
        v552 = *(v565 + 72);
        v551 = (v538 + 8);
        v565 += 16;
        v382 = (v565 - 8);
        do
        {
          v383 = v559;
          v384 = v564;
          v553(v559, v381, v564);
          v385 = v560;
          sub_100799AE4();
          v386 = v562;
          sub_10079A784();
          (*v551)(v385, v561);
          v387 = sub_10079A724();
          v557(v386, v558);
          v388 = sub_10063A938(v563, v387);

          (*v382)(v383, v384);
          *&v568 = v379;
          v390 = v379[2];
          v389 = v379[3];
          if (v390 >= v389 >> 1)
          {
            sub_1003BD7D8((v389 > 1), v390 + 1, 1);
            v379 = v568;
          }

          v379[2] = v390 + 1;
          v379[v390 + 4] = v388;
          v381 += v552;
          --v378;
        }

        while (v378);

        v373 = v550;
        v375 = v549;
        v365 = 0xD000000000000013;
      }

      else
      {

        v379 = _swiftEmptyArrayStorage;
      }

      v434 = sub_1001F1160(&qword_100ADE598);
      v435 = v548;
      *(v548 + 18) = v379;
      v436 = v435;
      *(v435 + 21) = v434;
      *(v435 + 22) = 0x656372756F73;
      *(v435 + 23) = 0xE600000000000000;
      v437 = v514;
      (*(v373 + 16))(v514, v517, v375);
      v438 = (*(v373 + 88))(v437, v375);
      if (v438 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v439 = 0x80000001008BF780;
      }

      else if (v438 == enum case for CollectionSource.mediaAPI(_:))
      {
        v365 = 1768972653;
        v439 = 0xE400000000000000;
      }

      else if (v438 == enum case for CollectionSource.bookHistory(_:))
      {
        v365 = 7365743;
        v439 = 0xE300000000000000;
      }

      else
      {
        if (v438 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
        {
          v439 = 0x80000001008BF7B0;
          v365 = 0xD000000000000022;
        }

        else
        {
          if (v438 != enum case for CollectionSource.tabi(_:))
          {
            goto LABEL_240;
          }

          v365 = 1768055156;
          v439 = 0xE400000000000000;
        }

        v373 = v550;
        v375 = v549;
        v436 = v548;
      }

      *(v436 + 27) = &type metadata for String;
      *(v436 + 24) = v365;
      *(v436 + 25) = v439;
      v475 = sub_100019158(v436);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v476 = sub_1001F1160(&qword_100AD6710);
      v477 = v554;
      v554[3] = v476;
      *v477 = v475;
      (*(v373 + 8))(v517, v375);
      return (*(v547 + 8))(v516, v546);
    }

    if (v107 == enum case for CollectionRecommendation.series(_:))
    {

      (*(v104 + 96))(v105, v106);
      v400 = v512;
      v401 = v105;
      v402 = v511;
      v403 = v513;
      (*(v512 + 32))(v511, v401, v513);
      v404 = sub_10063B1A8(v563);
      v405 = sub_1001F1160(&qword_100AD6710);
      v406 = v554;
      v554[3] = v405;
      *v406 = v404;
      return (*(v400 + 8))(v402, v403);
    }

    if (v107 == enum case for CollectionRecommendation.nextInSeries(_:))
    {

      (*(v104 + 96))(v105, v106);
      v420 = v509;
      (*(v565 + 32))(v509, v105, v564);
      v421 = sub_10063A938(v563, v501);

      v569 = &type metadata for String;
      strcpy(&v568, "next-in-series");
      HIBYTE(v568) = -18;
      sub_1000076D4(&v568, &v567);
      v422 = swift_isUniquelyReferenced_nonNull_native();
      v566 = v421;
      sub_1002F4B78(&v567, 1701869940, 0xE400000000000000, v422);
      v423 = v566;
      v424 = v510;
      sub_10079A264();
      v425 = v550;
      v426 = v506;
      v427 = v549;
      (*(v550 + 16))(v506, v424, v549);
      v428 = (*(v425 + 88))(v426, v427);
      if (v428 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v429 = 0xD000000000000013;
        v430 = 0x80000001008BF780;
LABEL_215:
        (*(v425 + 8))(v424, v427);
        v569 = &type metadata for String;
        *&v568 = v429;
        *(&v568 + 1) = v430;
        sub_1000076D4(&v568, &v567);
        v478 = swift_isUniquelyReferenced_nonNull_native();
        v566 = v423;
        sub_1002F4B78(&v567, 0x656372756F73, 0xE600000000000000, v478);
        v479 = v566;
        v480 = sub_1001F1160(&qword_100AD6710);
        v481 = v554;
        v554[3] = v480;
        *v481 = v479;
        return (*(v565 + 8))(v420, v564);
      }

      if (v428 == enum case for CollectionSource.mediaAPI(_:))
      {
        v429 = 1768972653;
      }

      else
      {
        if (v428 == enum case for CollectionSource.bookHistory(_:))
        {
          v429 = 7365743;
          v430 = 0xE300000000000000;
          goto LABEL_214;
        }

        if (v428 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
        {
          v430 = 0x80000001008BF7B0;
          v429 = 0xD000000000000022;
          goto LABEL_214;
        }

        if (v428 != enum case for CollectionSource.tabi(_:))
        {
          goto LABEL_236;
        }

        v429 = 1768055156;
      }

      v430 = 0xE400000000000000;
LABEL_214:
      v425 = v550;
      v427 = v549;
      v424 = v510;
      v420 = v509;
      goto LABEL_215;
    }

    if (v107 == enum case for CollectionRecommendation.moreInSeries(_:))
    {

      (*(v104 + 96))(v105, v106);
      (*(v565 + 32))(v507, v105, v564);
      v440 = sub_10063A938(v563, v501);

      v569 = &type metadata for String;
      strcpy(&v568, "more-in-series");
      HIBYTE(v568) = -18;
      sub_1000076D4(&v568, &v567);
      v441 = swift_isUniquelyReferenced_nonNull_native();
      v566 = v440;
      sub_1002F4B78(&v567, 1701869940, 0xE400000000000000, v441);
      v442 = v566;
      v443 = v508;
      sub_10079A264();
      v444 = v550;
      v445 = v503;
      v446 = v443;
      v447 = v549;
      (*(v550 + 16))(v503, v446, v549);
      v448 = (*(v444 + 88))(v445, v447);
      if (v448 == enum case for CollectionSource.appleMediaDiscovery(_:))
      {
        v449 = 0xD000000000000013;
        v450 = 0x80000001008BF780;
      }

      else
      {
        if (v448 == enum case for CollectionSource.mediaAPI(_:))
        {
          v449 = 1768972653;
        }

        else
        {
          if (v448 == enum case for CollectionSource.bookHistory(_:))
          {
            v449 = 7365743;
            v450 = 0xE300000000000000;
            goto LABEL_224;
          }

          if (v448 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
          {
            v450 = 0x80000001008BF7B0;
            v449 = 0xD000000000000022;
            goto LABEL_224;
          }

          if (v448 != enum case for CollectionSource.tabi(_:))
          {
            goto LABEL_236;
          }

          v449 = 1768055156;
        }

        v450 = 0xE400000000000000;
      }

LABEL_224:
      (*(v550 + 8))(v508, v549);
      v569 = &type metadata for String;
      *&v568 = v449;
      *(&v568 + 1) = v450;
      sub_1000076D4(&v568, &v567);
      v490 = swift_isUniquelyReferenced_nonNull_native();
      v566 = v442;
      sub_1002F4B78(&v567, 0x656372756F73, 0xE600000000000000, v490);
      v491 = v566;
      v492 = sub_1001F1160(&qword_100AD6710);
      v493 = v554;
      v554[3] = v492;
      *v493 = v491;
      return (*(v565 + 8))(v507, v564);
    }

    v454 = v103;
    v455 = v107;
    v456 = enum case for CollectionRecommendation.highlights(_:);

    if (v455 != v456)
    {

      v474 = v554;
      *v554 = 0u;
      *(v474 + 1) = 0u;
      return (*(v104 + 8))(v105, v106);
    }

    (*(v104 + 96))(v105, v106);
    v457 = v547;
    v458 = v105;
    v459 = v504;
    v460 = v546;
    (*(v547 + 32))(v504, v458, v546);
    sub_10079A264();
    sub_1001F1160(&unk_100ADE550);
    v461 = swift_allocObject();
    *(v461 + 16) = xmmword_100815060;
    *(v461 + 32) = 1701869940;
    v544 = (v461 + 32);
    *(v461 + 40) = 0xE400000000000000;
    *(v461 + 48) = 0x6867696C68676968;
    *(v461 + 56) = 0xEA00000000007374;
    *(v461 + 72) = &type metadata for String;
    *(v461 + 80) = 1684957547;
    *(v461 + 88) = 0xE400000000000000;
    *(v461 + 96) = v454;
    *(v461 + 104) = v553;
    *(v461 + 120) = &type metadata for String;
    *(v461 + 128) = 0x736B6F6F62;
    v548 = v461;
    *(v461 + 136) = 0xE500000000000000;
    (*(v457 + 16))(v541, v459, v460);
    sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
    v545 = sub_1007A2504();
    v462 = *(v545 + 16);
    if (v462)
    {
      *&v568 = _swiftEmptyArrayStorage;
      sub_1003BD7D8(0, v462, 0);
      v463 = v568;
      v553 = *(v565 + 16);
      v464 = v545 + ((*(v565 + 80) + 32) & ~*(v565 + 80));
      v552 = *(v565 + 72);
      v551 = (v538 + 8);
      v565 += 16;
      v465 = (v565 - 8);
      do
      {
        v466 = v559;
        v467 = v564;
        v553(v559, v464, v564);
        v468 = v560;
        sub_100799AE4();
        v469 = v562;
        sub_10079A784();
        (*v551)(v468, v561);
        v470 = sub_10079A724();
        v557(v469, v558);
        v471 = sub_10063A938(v563, v470);

        (*v465)(v466, v467);
        *&v568 = v463;
        v473 = v463[2];
        v472 = v463[3];
        if (v473 >= v472 >> 1)
        {
          sub_1003BD7D8((v472 > 1), v473 + 1, 1);
          v463 = v568;
        }

        v463[2] = v473 + 1;
        v463[v473 + 4] = v471;
        v464 += v552;
        --v462;
      }

      while (v462);
    }

    else
    {

      v463 = _swiftEmptyArrayStorage;
    }

    v482 = sub_1001F1160(&qword_100ADE598);
    v483 = v548;
    *(v548 + 18) = v463;
    *(v483 + 21) = v482;
    *(v483 + 22) = 0x656372756F73;
    *(v483 + 23) = 0xE600000000000000;
    v484 = v550;
    v485 = v502;
    v486 = v549;
    (*(v550 + 16))(v502, v505, v549);
    v487 = (*(v484 + 88))(v485, v486);
    if (v487 == enum case for CollectionSource.appleMediaDiscovery(_:))
    {
      v488 = 0xD000000000000013;
      v489 = 0x80000001008BF780;
    }

    else
    {
      if (v487 == enum case for CollectionSource.mediaAPI(_:))
      {
        v488 = 1768972653;
      }

      else
      {
        if (v487 == enum case for CollectionSource.bookHistory(_:))
        {
          v488 = 7365743;
          v489 = 0xE300000000000000;
          goto LABEL_233;
        }

        if (v487 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
        {
          v489 = 0x80000001008BF7B0;
          v488 = 0xD000000000000022;
          goto LABEL_233;
        }

        if (v487 != enum case for CollectionSource.tabi(_:))
        {
          goto LABEL_236;
        }

        v488 = 1768055156;
      }

      v489 = 0xE400000000000000;
    }

LABEL_233:
    v494 = v548;
    *(v548 + 27) = &type metadata for String;
    *(v494 + 192) = v488;
    *(v494 + 200) = v489;
    v495 = sub_100019158(v494);
    swift_setDeallocating();
    sub_1001F1160(&unk_100ADD560);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v550 + 8))(v505, v549);
    v496 = sub_1001F1160(&qword_100AD6710);
    v497 = v554;
    v554[3] = v496;
    *v497 = v495;
    return (*(v547 + 8))(v504, v546);
  }

  (*(v104 + 96))(v105, v106);
  v140 = sub_1001F1160(&qword_100AEEBA0);
  v141 = *(v140 + 48);
  v545 = *&v105[*(v140 + 64)];
  v142 = v547;
  v143 = v535;
  v144 = v105;
  v145 = v105;
  v146 = v546;
  (*(v547 + 32))(v535, v144, v546);
  v147 = &v145[v141];
  v148 = v533;
  (*(v536 + 32))(v533, v147, v537);
  sub_10079A264();
  sub_1001F1160(&unk_100ADE550);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_100815060;
  *(v149 + 32) = 1701869940;
  v543 = (v149 + 32);
  *(v149 + 40) = 0xE400000000000000;
  *(v149 + 48) = 0xD000000000000013;
  *(v149 + 56) = 0x80000001008E2590;
  *(v149 + 72) = &type metadata for String;
  *(v149 + 80) = 1684957547;
  *(v149 + 88) = 0xE400000000000000;
  *(v149 + 96) = v103;
  *(v149 + 104) = v553;
  *(v149 + 120) = &type metadata for String;
  *(v149 + 128) = 0x736B6F6F62;
  v544 = v149;
  *(v149 + 136) = 0xE500000000000000;
  (*(v142 + 16))(v541, v143, v146);
  sub_100005920(&qword_100AEEB90, &qword_100AEEB80);
  v150 = sub_1007A2504();
  v151 = *(v150 + 16);
  v152 = v558;
  if (v151)
  {
    *&v568 = _swiftEmptyArrayStorage;
    sub_1003BD7D8(0, v151, 0);
    v153 = v568;
    v553 = *(v565 + 16);
    v154 = (*(v565 + 80) + 32) & ~*(v565 + 80);
    v542 = v150;
    v155 = v150 + v154;
    v552 = *(v565 + 72);
    v551 = (v538 + 8);
    v565 += 16;
    v548 = (v565 - 8);
    do
    {
      v156 = v559;
      v157 = v564;
      v553(v559, v155, v564);
      v158 = v560;
      sub_100799AE4();
      v159 = v562;
      sub_10079A784();
      (*v551)(v158, v561);
      v160 = sub_10079A724();
      v557(v159, v152);
      v161 = sub_10063A938(v563, v160);

      (*v548)(v156, v157);
      *&v568 = v153;
      v163 = v153[2];
      v162 = v153[3];
      if (v163 >= v162 >> 1)
      {
        sub_1003BD7D8((v162 > 1), v163 + 1, 1);
        v153 = v568;
      }

      v153[2] = v163 + 1;
      v153[v163 + 4] = v161;
      v155 += v552;
      --v151;
      v152 = v558;
    }

    while (v151);

    v148 = v533;
  }

  else
  {

    v153 = _swiftEmptyArrayStorage;
  }

  v228 = sub_1001F1160(&qword_100ADE598);
  v229 = v544;
  *(v544 + 18) = v153;
  v230 = v229;
  *(v229 + 21) = v228;
  *(v229 + 22) = 0x656372756F73;
  *(v229 + 23) = 0xE600000000000000;
  v231 = v550;
  v232 = v531;
  v233 = v549;
  (*(v550 + 16))(v531, v539, v549);
  v234 = (*(v231 + 88))(v232, v233);
  v235 = v555;
  if (v234 == enum case for CollectionSource.appleMediaDiscovery(_:))
  {
    v236 = 0x80000001008BF780;
    v237 = 0xD000000000000013;
  }

  else
  {
    if (v234 == enum case for CollectionSource.mediaAPI(_:))
    {
      v237 = 1768972653;
    }

    else
    {
      if (v234 == enum case for CollectionSource.bookHistory(_:))
      {
        v237 = 7365743;
        v236 = 0xE300000000000000;
        goto LABEL_90;
      }

      if (v234 == enum case for CollectionSource.bookHistoryThenAppleMediaDiscovery(_:))
      {
        v236 = 0x80000001008BF7B0;
        v237 = 0xD000000000000022;
        goto LABEL_90;
      }

      if (v234 != enum case for CollectionSource.tabi(_:))
      {
        goto LABEL_238;
      }

      v237 = 1768055156;
    }

    v236 = 0xE400000000000000;
  }

LABEL_90:
  *(v230 + 27) = &type metadata for String;
  *(v230 + 24) = v237;
  *(v230 + 25) = v236;
  v300 = sub_100019158(v230);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v301 = (*(v231 + 8))(v539, v233);
  __chkstk_darwin(v301);
  i = v148;
  v302 = v235;
  v303 = sub_100629488(_swiftEmptyDictionarySingleton, sub_10063B890, (&v500 - 4), v545);

  sub_1001F1160(&qword_100AEEBA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = 0xD000000000000016;
  v305 = inited + 32;
  *(inited + 40) = 0x80000001008E25B0;
  *(inited + 48) = v303;
  v306 = sub_1001EFC1C(inited);
  swift_setDeallocating();
  sub_100007840(v305, &qword_100AEEBB0);
  *&v568 = v306;
  sub_1001F1160(&qword_100AEEBB8);
  sub_10063B8AC();
  v307 = sub_100796474();
  if (v302)
  {
  }

  else
  {
    v311 = v307;
    v312 = v308;

    v313 = objc_opt_self();
    isa = sub_1007969C4().super.isa;
    *&v568 = 0;
    v315 = [v313 JSONObjectWithData:isa options:0 error:&v568];

    if (v315)
    {
      v316 = v568;
      sub_1007A3504();
      swift_unknownObjectRelease();
      v317 = sub_1001F1160(&qword_100AD6710);
      if (swift_dynamicCast())
      {
        v569 = v317;
        *&v568 = v567;
        sub_1000076D4(&v568, &v567);
        v318 = swift_isUniquelyReferenced_nonNull_native();
        v566 = v300;
        sub_1002F4B78(&v567, 0x6C616E6F69746172, 0xE900000000000065, v318);
        sub_10000ADCC(v311, v312);
        v300 = v566;
      }

      else
      {
        sub_10000ADCC(v311, v312);
      }
    }

    else
    {
      v319 = v568;
      sub_1007967D4();

      swift_willThrow();
      sub_10000ADCC(v311, v312);
    }
  }

  v309 = sub_1001F1160(&qword_100AD6710);
  v310 = v554;
  v554[3] = v309;
  *v310 = v300;
  (*(v547 + 8))(v535, v546);
  return (*(v536 + 8))(v148, v537);
}