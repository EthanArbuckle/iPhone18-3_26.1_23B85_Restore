unint64_t sub_1001EF820(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD35D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD35E0);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD35D8);
      v11 = *v5;
      result = sub_1002F9CDC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_10079A1A4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EF9FC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD36B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100ADADF0);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &unk_100AD36B0);
      result = sub_1002ECD5C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10079A404();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_10079A4E4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EFC30(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3A30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3A38);
    v7 = sub_1007A3924();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      v10 = sub_1000077D8(v8, v5, &qword_100AD3A30);
      result = sub_1002F9CE4(v10);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v7 + 56);
      v15 = sub_100796134();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = *(v7 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v18;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EFDFC(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3A20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3A28);
    v7 = sub_1007A3924();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      v10 = sub_1000077D8(v8, v5, &qword_100AD3A20);
      result = sub_1002F9CE4(v10);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v7 + 56);
      v15 = sub_100796134();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = *(v7 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v18;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001EFFDC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1001F1160(a2);
    v4 = sub_1007A3924();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      swift_unknownObjectRetain();
      result = sub_10000E53C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001F00EC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1001F1160(a2);
    v4 = sub_1007A3924();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_10000E53C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001F01E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3BB0);
    v3 = sub_1007A3924();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1001F36B0(v7, v8, v9);
      result = sub_10000E53C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001F030C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD35F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3600);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD35F8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000E53C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for NoteHighlight(0);
      result = sub_1001F22D4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001F04E0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3620);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3628);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3620);
      result = sub_1002ECE30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100799B44();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001F06C8(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3A10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3A18);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3A10);
      v11 = *v5;
      result = sub_1002F9CF8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100796134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001F08B0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3630);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3638);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3630);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000E53C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_10079A9B4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001F0A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3BA8);
    v3 = sub_1007A3924();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1002ED154(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001F0B9C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3640);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F1160(&qword_100AD3648);
    v7 = sub_1007A3924();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1000077D8(v9, v5, &qword_100AD3640);
      v11 = *v5;
      result = sub_1002F9CDC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_10079A0D4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001F0D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1001F0DB4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1007A38D4();
    if (result)
    {
LABEL_3:
      sub_1001F1160(&unk_100AD3700);
      result = sub_1007A36F4();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1007A38D4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_1007A3784();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_10079B884();
    sub_1001F18F0(&qword_100AE1500, &type metadata accessor for AnyCancellable);
    result = sub_1007A2074();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1001F18F0(&qword_100AD3710, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = sub_1007A2124();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1001F1048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3CC8);
    v3 = sub_1007A36F4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_1007A3BF4();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001F1160(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1001F11A8()
{
  result = qword_100AD1C80;
  if (!qword_100AD1C80)
  {
    sub_1001F1234(&qword_100AD1C70);
    sub_1001F127C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1C80);
  }

  return result;
}

uint64_t sub_1001F1234(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1001F127C()
{
  result = qword_100AD1C88;
  if (!qword_100AD1C88)
  {
    sub_1001F1234(&qword_100AD1C90);
    sub_1001F1308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1C88);
  }

  return result;
}

unint64_t sub_1001F1308()
{
  result = qword_100AD1C98;
  if (!qword_100AD1C98)
  {
    sub_1001F1234(&qword_100AD1CA0);
    sub_1001F1234(&qword_100AD1CA8);
    sub_1001F1234(&qword_100AD1CB0);
    sub_1001F1440();
    sub_1001F16F4();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD1D38, &qword_100AD1D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1C98);
  }

  return result;
}

unint64_t sub_1001F1440()
{
  result = qword_100AD1CB8;
  if (!qword_100AD1CB8)
  {
    sub_1001F1234(&qword_100AD1CA8);
    sub_1001F14CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1CB8);
  }

  return result;
}

unint64_t sub_1001F14CC()
{
  result = qword_100AD1CC0;
  if (!qword_100AD1CC0)
  {
    sub_1001F1234(&qword_100AD1CC8);
    sub_1001F1584();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1CC0);
  }

  return result;
}

unint64_t sub_1001F1584()
{
  result = qword_100AD1CD0;
  if (!qword_100AD1CD0)
  {
    sub_1001F1234(&qword_100AD1CD8);
    sub_1001F163C();
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1CD0);
  }

  return result;
}

unint64_t sub_1001F163C()
{
  result = qword_100AD1CE0;
  if (!qword_100AD1CE0)
  {
    sub_1001F1234(&qword_100AD1CE8);
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1CE0);
  }

  return result;
}

unint64_t sub_1001F16F4()
{
  result = qword_100AD1D20;
  if (!qword_100AD1D20)
  {
    sub_1001F1234(&qword_100AD1CB0);
    sub_1001F1440();
    sub_100005920(&qword_100AD1D28, &qword_100AD1D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1D20);
  }

  return result;
}

unint64_t sub_1001F17AC()
{
  result = qword_100AD1D50;
  if (!qword_100AD1D50)
  {
    sub_1001F1234(&qword_100AD1D48);
    sub_1001F18F0(&qword_100AD1D58, type metadata accessor for TipContentView);
    sub_100005920(&qword_100AD1D60, &unk_100ADB260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1D50);
  }

  return result;
}

uint64_t sub_1001F1894(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1001F18A4()
{
  result = qword_100AD1DE8;
  if (!qword_100AD1DE8)
  {
    sub_10079C0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1DE8);
  }

  return result;
}

uint64_t sub_1001F18F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001F194C()
{
  result = qword_100AD1EB8;
  if (!qword_100AD1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1EB8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AudiobookLocationMovement(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1001F1B5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F1B7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_1001F1BCC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001F22D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteHighlight(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1001F2338(uint64_t a1)
{
  v2 = sub_100796D84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1001F1160(&qword_100AD3C38);
    v9 = sub_1007A36F4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1001F18F0(&qword_100AD3C40, &type metadata accessor for Calendar.Component);
      v16 = sub_1007A2074();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1001F18F0(&qword_100AD3C48, &type metadata accessor for Calendar.Component);
          v23 = sub_1007A2124();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1001F2658(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1007A38D4())
    {
LABEL_3:
      sub_1001F1160(&qword_100AD3C50);
      v3 = sub_1007A36F4();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1007A38D4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_1007A3784();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1007A3174(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000A7C4(0, &qword_100AD3C58);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_1007A3184();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_1007A3174(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000A7C4(0, &qword_100AD3C58);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_1007A3184();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_1001F2948(uint64_t a1)
{
  v2 = sub_10079C9C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1001F1160(&qword_100AD4038);
    v9 = sub_1007A36F4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1001F18F0(&qword_100AD4040, &type metadata accessor for PresentationDetent);
      v16 = sub_1007A2074();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1001F18F0(&qword_100AD4048, &type metadata accessor for PresentationDetent);
          v23 = sub_1007A2124();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1001F2C68(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1007A38D4())
    {
LABEL_3:
      sub_1001F1160(&qword_100AD36F8);
      v3 = sub_1007A36F4();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1007A38D4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_1007A3784();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1007A3174(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for BKTapActionView();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_1007A3184();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_1007A3174(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for BKTapActionView();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_1007A3184();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int sub_1001F2F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3BC0);
    v3 = sub_1007A36F4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1007A3C04();
      sub_1007A3C14(v10);
      result = sub_1007A3C44();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1001F3070(uint64_t a1)
{
  v2 = sub_10079A144();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1001F1160(&qword_100AD36C0);
    v9 = sub_1007A36F4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1001F18F0(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType);
      v16 = sub_1007A2074();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1001F18F0(&qword_100AD36D0, &type metadata accessor for ClusteringOptions.MediaType);
          v23 = sub_1007A2124();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1001F3390(uint64_t a1)
{
  v2 = sub_100799B44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1001F1160(&qword_100AD3608);
    v9 = sub_1007A36F4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1001F18F0(&qword_100AD3610, &type metadata accessor for Methodology);
      v16 = sub_1007A2074();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1001F18F0(&qword_100AD3618, &type metadata accessor for Methodology);
          v23 = sub_1007A2124();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001F36B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1001F43A4()
{
  result = qword_100AD3F88;
  if (!qword_100AD3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F88);
  }

  return result;
}

void sub_1001F45E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1001F476C()
{
  swift_getObjectType();
  sub_1001F1160(qword_100AD48F8);
  v1 = sub_1007A22E4();
  v3 = v2;
  sub_1007A3744(86);
  v7._countAndFlagsBits = v1;
  v7._object = v3;
  sub_1007A23D4(v7);

  v8._countAndFlagsBits = 0x3D656C746974203ALL;
  v8._object = 0xE800000000000000;
  sub_1007A23D4(v8);
  v4 = *(v0 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_title);
  v5 = *(v0 + OBJC_IVAR____TtC5Books20CarPlayAudiobookData_title + 8);

  v9._countAndFlagsBits = v4;
  v9._object = v5;
  sub_1007A23D4(v9);

  v10._object = 0x80000001008C1F50;
  v10._countAndFlagsBits = 0xD000000000000013;
  sub_1007A23D4(v10);
  v11._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v11);

  v12._object = 0x80000001008C1F70;
  v12._countAndFlagsBits = 0xD000000000000013;
  sub_1007A23D4(v12);
  v13._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v13);

  v14._countAndFlagsBits = 0x746E657272756320;
  v14._object = 0xEE003D7865646E49;
  sub_1007A23D4(v14);
  v15._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v15);

  v16._countAndFlagsBits = 0x63616279616C7020;
  v16._object = 0xEE003D657461526BLL;
  sub_1007A23D4(v16);
  sub_1007A2814();
  return 0;
}

id sub_1001F4A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayAudiobookData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001F4AC8()
{
  sub_1001F4FE8();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1001F5040();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001F4B74(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10079C104() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v6 + v9 + 1;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((v10 + (v12 & ~v9) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v19 = (v17 - 1) << (8 * v13);
    if (v13 <= 3)
    {
      v20 = *a1;
    }

    else
    {
      v19 = 0;
      v20 = *a1;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v8 > 0xFE)
  {
    v22 = *(*(*(a3 + 16) - 8) + 48);

    return v22(&a1[v12] & ~v9);
  }

  else
  {
    v21 = a1[v6];
    if (v21 >= 2)
    {
      return (v21 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1001F4D40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10079C104() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + 1;
  v15 = v9 + 1 + v12;
  v16 = ((*(v10 + 64) + (v15 & ~v12) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v16] = 0;
      }

      else if (v19)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v11 > 0xFE)
      {
        v22 = *(v10 + 56);

        v22(&a1[v15] & ~v12, a2);
      }

      else if (a2 > 0xFE)
      {
        if (v14 <= 3)
        {
          v23 = ~(-1 << (8 * v14));
        }

        else
        {
          v23 = -1;
        }

        if (v9 != -1)
        {
          v24 = v23 & (a2 - 255);
          if (v14 <= 3)
          {
            v25 = v9 + 1;
          }

          else
          {
            v25 = 4;
          }

          bzero(a1, v14);
          if (v25 > 2)
          {
            if (v25 == 3)
            {
              *a1 = v24;
              a1[2] = BYTE2(v24);
            }

            else
            {
              *a1 = v24;
            }
          }

          else if (v25 == 1)
          {
            *a1 = v24;
          }

          else
          {
            *a1 = v24;
          }
        }
      }

      else
      {
        a1[v9] = -a2;
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v16);
  if (v16 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v16] = v21;
      }

      else
      {
        *&a1[v16] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v16] = v21;
  }
}

void sub_1001F4FE8()
{
  if (!qword_100AF35B0)
  {
    sub_10079C104();
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF35B0);
    }
  }
}

void sub_1001F5040()
{
  if (!qword_100AD4980)
  {
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD4980);
    }
  }
}

uint64_t sub_1001F50D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB740);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1001FA2C8(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079C104();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1001F52BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v20 = a2;
  sub_1001F1234(&qword_100AD4988);
  v21 = *(a1 + 16);
  sub_1001F1234(&qword_100ADBCE0);
  sub_10079C2A4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  sub_10079CCB4();
  WitnessTable = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v3 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v43 = v3;
  v44 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079C2A4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079CCB4();
  v41 = swift_getWitnessTable();
  v42 = sub_1001FA1F0();
  v39 = swift_getWitnessTable();
  v40 = v39;
  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_10079E1A4();
  sub_10079C2A4();
  v17[2] = sub_10079C2A4();
  v17[0] = sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  v17[3] = v4;
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  v17[1] = sub_10079CCB4();
  v35 = swift_getWitnessTable();
  v36 = &protocol witness table for _FlexFrameLayout;
  v33 = swift_getWitnessTable();
  v34 = &protocol witness table for _PaddingLayout;
  v31 = swift_getWitnessTable();
  v32 = &protocol witness table for _PaddingLayout;
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v25 = v5;
  v26 = swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = sub_10079E184();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  v13 = *(v18 + 24);
  v22 = v21;
  v23 = v13;
  v24 = v19;
  sub_1001F6304();
  v14 = swift_getWitnessTable();
  sub_10039232C(v10, v6, v14);
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_10039232C(v12, v6, v14);
  return (v15)(v12, v6);
}

uint64_t sub_1001F59DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a1;
  v18 = a3;
  v19 = a4;
  sub_1001F1234(&qword_100AD4988);
  v16 = sub_1001F1234(&qword_100ADBCE0);
  sub_10079C2A4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  sub_10079CCB4();
  WitnessTable = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v29 = v5;
  v30 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079C2A4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079CCB4();
  v27 = swift_getWitnessTable();
  v28 = sub_1001FA1F0();
  v25 = swift_getWitnessTable();
  v26 = v25;
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = sub_10079E1A4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v20 = a2;
  v21 = v18;
  v22 = v17;
  type metadata accessor for EdgeHuggingView();
  sub_1001F5F78();
  v13 = swift_getWitnessTable();
  sub_10039232C(v10, v6, v13);
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_10039232C(v12, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_1001F5E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EdgeHuggingView();
  sub_10039232C(a1 + *(v9 + 36), a2, a3);
  sub_10039232C(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1001F5F78()
{
  sub_10079E474();
  sub_1001F1234(&qword_100AD4988);
  sub_1001F1234(&qword_100ADBCE0);
  sub_10079C2A4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  sub_10079CCB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079C2A4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079CCB4();
  swift_getWitnessTable();
  sub_1001FA1F0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_10079E194();
}

uint64_t sub_1001F6304()
{
  sub_10079CB24();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  sub_10079CCB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_10079E174();
}

uint64_t sub_1001F65B0@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v160 = a7;
  v142 = a4;
  v143 = a6;
  WitnessTable = a3;
  v146 = a2;
  v144 = a1;
  v155 = a8;
  swift_getTupleTypeMetadata3();
  v9 = sub_10079E5C4();
  v130 = *(v9 - 8);
  __chkstk_darwin(v9);
  v136 = &v125 - v10;
  v11 = sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  v12 = sub_10079E5C4();
  v156 = v9;
  v13 = sub_10079CCB4();
  v139 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v138 = &v125 - v15;
  v157 = v12;
  v129 = *(v12 - 8);
  __chkstk_darwin(v14);
  v135 = &v125 - v16;
  swift_getTupleTypeMetadata2();
  v17 = sub_10079E5C4();
  v128 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v134 = &v125 - v19;
  v141 = v11;
  v133 = *(v11 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v147 = &v125 - v23;
  v24 = sub_10079C2A4();
  v25 = sub_10079C2A4();
  v26 = sub_10079C2A4();
  v153 = v17;
  v27 = sub_10079CCB4();
  v137 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v140 = &v125 - v29;
  v30 = *(a5 - 1);
  v31 = __chkstk_darwin(v28);
  v33 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v36 = &v125 - v35;
  v158 = v24;
  v126 = *(v24 - 8);
  v37 = __chkstk_darwin(v34);
  v39 = &v125 - v38;
  v159 = v25;
  v127 = *(v25 - 8);
  v40 = __chkstk_darwin(v37);
  v42 = &v125 - v41;
  v151 = v26;
  v43 = *(v26 - 8);
  v44 = __chkstk_darwin(v40);
  v132 = &v125 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v131 = &v125 - v46;
  v152 = v47;
  v154 = v13;
  v48 = sub_10079CCB4();
  v149 = *(v48 - 8);
  v150 = v48;
  __chkstk_darwin(v48);
  v148 = &v125 - v49;
  v50 = type metadata accessor for EdgeHuggingView();
  v51 = *(v144 + *(v50 + 40) + 8);
  v52 = v144 + *(v50 + 44);
  v144 = *v52;
  v53 = *(v52 + 8);
  if (v51)
  {
    v146();
    if (v53)
    {
      v54 = v160;
      sub_10039232C(v33, a5, v160);
      v55 = *(v30 + 8);
      v55(v33, a5);
      v56 = v55;
      v146 = v55;
      v147 = (v30 + 8);
      v57 = v144;
      v225 = v144;
      v226 = 1;
      v227 = &v225;
      (*(v30 + 16))(v33, v36, a5);
      v223 = v57;
      v224 = 1;
      v228 = v33;
      v229 = &v223;
      v220 = &type metadata for Spacer;
      v221 = a5;
      v222 = &type metadata for Spacer;
      v217 = &protocol witness table for Spacer;
      v218 = v54;
      v219 = &protocol witness table for Spacer;
      v58 = v136;
      sub_10038FA94(&v227, 3uLL, &v220);
      v56(v33, a5);
      v59 = v157;
      WitnessTable = swift_getWitnessTable();
      v60 = v156;
      v144 = swift_getWitnessTable();
      v61 = v138;
      sub_10028B708(v58, v59, v60);
      v215 = v54;
      v216 = &protocol witness table for _FlexFrameLayout;
      v213 = swift_getWitnessTable();
      v214 = &protocol witness table for _PaddingLayout;
      v211 = swift_getWitnessTable();
      v212 = &protocol witness table for _PaddingLayout;
      v62 = swift_getWitnessTable();
      v63 = swift_getWitnessTable();
      v209 = v62;
      v210 = v63;
      v64 = v152;
      swift_getWitnessTable();
      v207 = WitnessTable;
      v208 = v144;
      v65 = v154;
      swift_getWitnessTable();
      v66 = v148;
      sub_10028B708(v61, v64, v65);
      (*(v139 + 8))(v61, v65);
      (*(v130 + 8))(v136, v60);
      (v146)(v36, a5);
    }

    else
    {
      sub_10079D2B4();
      v85 = v160;
      sub_10079DBE4();
      (*(v30 + 8))(v36, a5);
      v193 = v85;
      v194 = &protocol witness table for _PaddingLayout;
      v86 = v141;
      v87 = swift_getWitnessTable();
      v88 = v147;
      sub_10039232C(v22, v86, v87);
      v89 = v133;
      v90 = (v133 + 8);
      v91 = *(v133 + 8);
      v91(v22, v86);
      WitnessTable = v91;
      v146 = v90;
      v225 = 0;
      v226 = 1;
      v227 = &v225;
      (*(v89 + 16))(v22, v88, v86);
      v228 = v22;
      v220 = &type metadata for Spacer;
      v221 = v86;
      v217 = &protocol witness table for Spacer;
      v218 = v87;
      v92 = v135;
      sub_10038FA94(&v227, 2uLL, &v220);
      v91(v22, v86);
      v93 = v157;
      v144 = swift_getWitnessTable();
      v94 = swift_getWitnessTable();
      v95 = v138;
      sub_10028B610(v92, v93);
      v191 = v160;
      v192 = &protocol witness table for _FlexFrameLayout;
      v189 = swift_getWitnessTable();
      v190 = &protocol witness table for _PaddingLayout;
      v187 = swift_getWitnessTable();
      v188 = &protocol witness table for _PaddingLayout;
      v96 = swift_getWitnessTable();
      v97 = swift_getWitnessTable();
      v185 = v96;
      v186 = v97;
      v98 = v152;
      swift_getWitnessTable();
      v183 = v144;
      v184 = v94;
      v99 = v154;
      swift_getWitnessTable();
      v66 = v148;
      sub_10028B708(v95, v98, v99);
      (*(v139 + 8))(v95, v99);
      (*(v129 + 8))(v135, v93);
      WitnessTable(v147, v86);
    }

    v67 = v160;
  }

  else
  {
    v143 = v43;
    v146();
    if (v53)
    {
      sub_10079D2A4();
      v68 = v160;
      sub_10079DBE4();
      (*(v30 + 8))(v36, a5);
      v181 = v68;
      v69 = v68;
      v182 = &protocol witness table for _PaddingLayout;
      v70 = v141;
      v71 = swift_getWitnessTable();
      v72 = v147;
      sub_10039232C(v22, v70, v71);
      v73 = v133;
      v75 = (v133 + 8);
      v74 = *(v133 + 8);
      v74(v22, v70);
      WitnessTable = v74;
      v146 = v75;
      (*(v73 + 16))(v22, v72, v70);
      v225 = v144;
      v226 = 1;
      v227 = v22;
      v228 = &v225;
      v220 = v70;
      v221 = &type metadata for Spacer;
      v217 = v71;
      v218 = &protocol witness table for Spacer;
      v76 = v134;
      sub_10038FA94(&v227, 2uLL, &v220);
      v74(v22, v70);
      v179 = v69;
      v180 = &protocol witness table for _FlexFrameLayout;
      v177 = swift_getWitnessTable();
      v178 = &protocol witness table for _PaddingLayout;
      v175 = swift_getWitnessTable();
      v176 = &protocol witness table for _PaddingLayout;
      v77 = v151;
      v78 = swift_getWitnessTable();
      v79 = v153;
      v80 = swift_getWitnessTable();
      v81 = v140;
      sub_10028B708(v76, v77, v79);
      v173 = v78;
      v174 = v80;
      v82 = v152;
      swift_getWitnessTable();
      v83 = swift_getWitnessTable();
      v84 = swift_getWitnessTable();
      v171 = v83;
      v172 = v84;
      swift_getWitnessTable();
      v66 = v148;
      sub_10028B610(v81, v82);
      (*(v137 + 8))(v81, v82);
      (*(v128 + 8))(v134, v79);
      WitnessTable(v147, v141);
      v67 = v160;
    }

    else
    {
      sub_10079E474();
      v100 = v160;
      sub_10079DB24();
      (*(v30 + 8))(v36, a5);
      sub_10079D2A4();
      v169 = v100;
      v170 = &protocol witness table for _FlexFrameLayout;
      v101 = v158;
      v102 = swift_getWitnessTable();
      sub_10079DBE4();
      (*(v126 + 8))(v39, v101);
      sub_10079D2B4();
      v167 = v102;
      v168 = &protocol witness table for _PaddingLayout;
      v103 = v159;
      v104 = swift_getWitnessTable();
      v105 = v132;
      sub_10079DBE4();
      (*(v127 + 8))(v42, v103);
      v165 = v104;
      v166 = &protocol witness table for _PaddingLayout;
      v106 = v151;
      v107 = swift_getWitnessTable();
      v108 = v131;
      sub_10039232C(v105, v106, v107);
      v147 = *(v143 + 8);
      (v147)(v105, v106);
      sub_10039232C(v108, v106, v107);
      v109 = swift_getWitnessTable();
      sub_10028B610(v105, v106);
      v163 = v107;
      v164 = v109;
      v110 = v152;
      v146 = swift_getWitnessTable();
      v111 = swift_getWitnessTable();
      v112 = swift_getWitnessTable();
      v161 = v111;
      v162 = v112;
      swift_getWitnessTable();
      v113 = v148;
      v114 = v140;
      sub_10028B610(v140, v110);
      (*(v137 + 8))(v114, v110);
      v115 = v147;
      (v147)(v132, v106);
      v115(v131, v106);
      v67 = v160;
      v66 = v113;
    }
  }

  v205 = v67;
  v206 = &protocol witness table for _FlexFrameLayout;
  v203 = swift_getWitnessTable();
  v204 = &protocol witness table for _PaddingLayout;
  v201 = swift_getWitnessTable();
  v202 = &protocol witness table for _PaddingLayout;
  v116 = swift_getWitnessTable();
  v117 = swift_getWitnessTable();
  v199 = v116;
  v200 = v117;
  v118 = swift_getWitnessTable();
  v119 = swift_getWitnessTable();
  v120 = swift_getWitnessTable();
  v197 = v119;
  v198 = v120;
  v121 = swift_getWitnessTable();
  v195 = v118;
  v196 = v121;
  v122 = v150;
  v123 = swift_getWitnessTable();
  sub_10039232C(v66, v122, v123);
  return (*(v149 + 8))(v66, v122);
}

uint64_t sub_1001F790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v82 = a7;
  v81 = a6;
  v80 = a4;
  v84 = a3;
  v83 = a2;
  v79 = a1;
  v87 = a8;
  swift_getTupleTypeMetadata3();
  v70 = sub_10079E5C4();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_10079E0A4();
  v72 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v67 - v12;
  sub_1001F1234(&qword_100AD4988);
  sub_1001F1234(&qword_100ADBCE0);
  v85 = a5;
  sub_10079C2A4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  sub_10079CCB4();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v110 = v13;
  v111 = v14;
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v108 = v16;
  v109 = v17;
  v18 = swift_getWitnessTable();
  v106 = v15;
  v107 = v18;
  swift_getWitnessTable();
  v19 = sub_10079E0A4();
  v20 = sub_10079C2A4();
  v21 = sub_10079CCB4();
  v77 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v76 = &v67 - v23;
  v78 = *(v20 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v75 = &v67 - v27;
  v86 = v9;
  v28 = v79;
  v29 = sub_10079CCB4();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v67 - v31;
  v33 = v80;
  v34 = v81;
  v35 = type metadata accessor for EdgeHuggingView();
  if (*(v28 + v35[12] + 8) != 1 || (*(v28 + v35[13] + 8) & 1) == 0)
  {
    sub_1001F847C(v83, v84, v35, v85, v82, v26);
    v74 = v19;
    v49 = v21;
    v50 = swift_getWitnessTable();
    v51 = sub_1001FA1F0();
    v90 = v50;
    v91 = v51;
    v52 = swift_getWitnessTable();
    v53 = v75;
    sub_10039232C(v26, v20, v52);
    v85 = v30;
    v84 = v29;
    v54 = *(v78 + 8);
    v54(v26, v20);
    sub_10039232C(v53, v20, v52);
    v55 = v76;
    sub_10028B610(v26, v20);
    v88 = v52;
    v89 = v52;
LABEL_7:
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_10028B610(v55, v49);
    (*(v77 + 8))(v55, v49);
    v54(v26, v20);
    v54(v53, v20);
    v29 = v84;
    v30 = v85;
    goto LABEL_8;
  }

  v68 = v21;
  v36 = v28 + v35[15];
  v37 = *(v36 + 8);
  v38 = v28 + v35[14];
  v39 = *(v38 + 8);
  if (v37 != 1 || (v39 & 1) == 0)
  {
    sub_1001F8628(*v38, (v37 ^ 1) & v39, *v36, v37, v83, v84, v35, v85, v26, v82);
    v74 = v19;
    v62 = swift_getWitnessTable();
    v63 = sub_1001FA1F0();
    v94 = v62;
    v95 = v63;
    v64 = swift_getWitnessTable();
    v53 = v75;
    sub_10039232C(v26, v20, v64);
    v85 = v30;
    v84 = v29;
    v54 = *(v78 + 8);
    v54(v26, v20);
    sub_10039232C(v53, v20, v64);
    v55 = v76;
    sub_10028B708(v26, v20, v20);
    v92 = v64;
    v93 = v64;
    v49 = v68;
    goto LABEL_7;
  }

  __chkstk_darwin(v35);
  v40 = v85;
  *(&v67 - 6) = v33;
  *(&v67 - 5) = v40;
  v41 = v82;
  *(&v67 - 4) = v34;
  *(&v67 - 3) = v41;
  v65 = v83;
  v66 = v84;
  sub_10079C8F4();
  v42 = v71;
  sub_10079E094();
  v43 = v86;
  v84 = swift_getWitnessTable();
  v44 = v73;
  sub_10039232C(v42, v43, v84);
  v85 = *(v72 + 8);
  v85(v42, v43);
  sub_10039232C(v44, v43, v84);
  v45 = swift_getWitnessTable();
  v46 = sub_1001FA1F0();
  v104 = v45;
  v105 = v46;
  v102 = swift_getWitnessTable();
  v103 = v102;
  v47 = v68;
  swift_getWitnessTable();
  sub_10028B708(v42, v47, v43);
  v48 = v85;
  v85(v42, v43);
  v48(v73, v43);
LABEL_8:
  v56 = swift_getWitnessTable();
  v57 = sub_1001FA1F0();
  v100 = v56;
  v101 = v57;
  v98 = swift_getWitnessTable();
  v99 = v98;
  v58 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v96 = v58;
  v97 = v59;
  v60 = swift_getWitnessTable();
  sub_10039232C(v32, v29, v60);
  return (*(v30 + 1))(v32, v29);
}

uint64_t sub_1001F847C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a2;
  v25 = a4;
  v23 = a1;
  v10 = sub_10079C104();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_1001F50D4(&v22 - v15);
  (*(v11 + 104))(v14, enum case for LayoutDirection.leftToRight(_:), v10);
  v17 = sub_10079C0F4();
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  v19 = 48;
  if (v17)
  {
    v20 = 52;
  }

  else
  {
    v20 = 48;
  }

  if ((v17 & 1) == 0)
  {
    v19 = 52;
  }

  return sub_1001F8628(*(v6 + *(a3 + v19)), *(v6 + *(a3 + v19) + 8), *(v6 + *(a3 + v20)), *(v6 + *(a3 + v20) + 8), v23, v24, a3, v25, a6, a5);
}

uint64_t sub_1001F8628@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a8;
  v28 = a7;
  v34 = a6;
  v33 = a5;
  v32 = a4;
  v31 = a3;
  v30 = a2;
  v29 = a1;
  v37 = a9;
  v27 = a10;
  v36 = sub_10079C104();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1234(&qword_100AD4988);
  sub_1001F1234(&qword_100ADBCE0);
  sub_10079C2A4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  sub_10079CCB4();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v53 = WitnessTable;
  v54 = v14;
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v51 = v16;
  v52 = v17;
  v18 = swift_getWitnessTable();
  v49 = v15;
  v50 = v18;
  swift_getWitnessTable();
  v19 = sub_10079E0A4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - v21;
  v23 = *(v28 + 24);
  v38 = *(v28 + 16);
  v39 = v26;
  v40 = v23;
  v41 = v27;
  v42 = v29;
  v43 = v30 & 1;
  v44 = v31;
  v45 = v32 & 1;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  sub_10079C8F4();
  sub_10079E094();
  swift_getKeyPath();
  v24 = v36;
  (*(v10 + 104))(v12, enum case for LayoutDirection.leftToRight(_:), v36);
  swift_getWitnessTable();
  sub_10079D6D4();

  (*(v10 + 8))(v12, v24);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_1001F8AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v17 - v13;
  v12();
  sub_10039232C(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  v21 = 0;
  v22 = 1;
  v23[0] = &v21;
  (*(v8 + 16))(v11, v14, a4);
  v19 = 0;
  v20 = 1;
  v23[1] = v11;
  v23[2] = &v19;
  v18[0] = &type metadata for Spacer;
  v18[1] = a4;
  v18[2] = &type metadata for Spacer;
  v17[1] = &protocol witness table for Spacer;
  v17[2] = a6;
  v17[3] = &protocol witness table for Spacer;
  sub_10038FA94(v23, 3uLL, v18);
  v15(v14, a4);
  return (v15)(v11, a4);
}

uint64_t sub_1001F8CA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, void (*a9)(char *, uint64_t), uint64_t a10, void (*a11)(void, void))
{
  v151 = a5;
  v152 = a7;
  v150 = a6;
  LODWORD(v149) = a4;
  v164 = a8;
  v165 = a3;
  LODWORD(v148) = a2;
  v138 = a1;
  v155 = a11;
  sub_1001F1234(&qword_100ADBCE0);
  v11 = sub_10079C2A4();
  swift_getTupleTypeMetadata3();
  v12 = sub_10079E5C4();
  v137 = *(v12 - 8);
  __chkstk_darwin(v12);
  v142 = &v133 - v13;
  v14 = sub_1001F1234(&qword_100AD4988);
  swift_getTupleTypeMetadata3();
  v15 = sub_10079E5C4();
  v163 = v12;
  v16 = sub_10079CCB4();
  v146 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v144 = &v133 - v18;
  v161 = v15;
  v136 = *(v15 - 8);
  __chkstk_darwin(v17);
  v141 = &v133 - v19;
  swift_getTupleTypeMetadata3();
  v20 = sub_10079E5C4();
  v135 = *(v20 - 8);
  __chkstk_darwin(v20);
  v140 = &v133 - v21;
  swift_getTupleTypeMetadata3();
  v22 = sub_10079E5C4();
  v166 = v20;
  v23 = sub_10079CCB4();
  v145 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v143 = &v133 - v25;
  v159 = v22;
  v134 = *(v22 - 8);
  __chkstk_darwin(v24);
  v139 = &v133 - v26;
  v147 = sub_10079C104();
  v27 = *(v147 - 8);
  v28 = __chkstk_darwin(v147);
  v30 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = a9;
  v31 = *(a9 - 1);
  v32 = __chkstk_darwin(v28);
  v34 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = v11;
  v154 = *(v11 - 8);
  v35 = __chkstk_darwin(v32);
  v37 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v168 = &v133 - v38;
  v160 = v23;
  v162 = v16;
  v39 = sub_10079CCB4();
  v157 = *(v39 - 8);
  v158 = v39;
  v40 = __chkstk_darwin(v39);
  v156 = &v133 - v41;
  if ((v148 & 1) == 0)
  {
    v148 = v14;
    if (v149)
    {
      sub_10079E474();
      v64 = sub_10079BE54();
      v142 = v179;
      v144 = v181;
      v149 = v184;
      v146 = v185;
      LOBYTE(v196[0]) = 1;
      LOBYTE(v194[0]) = v180;
      LOBYTE(v192[0]) = v182;
      v151(v64);
      swift_getKeyPath();
      sub_1001F50D4(v30);
      v65 = v153;
      v66 = v155;
      sub_10079D6D4();

      (*(v27 + 8))(v30, v147);
      (*(v31 + 8))(v34, v65);
      v67 = sub_1001FA1F0();
      v204 = v66;
      v205 = v67;
      v68 = v167;
      WitnessTable = swift_getWitnessTable();
      v70 = v168;
      sub_10039232C(v37, v68, WitnessTable);
      v71 = v154;
      v72 = (v154 + 8);
      v73 = *(v154 + 8);
      v73(v37, v68);
      v153 = v73;
      v155 = v72;
      v74 = v165;
      v213 = v165;
      LOBYTE(v214) = v196[0];
      *(&v214 + 1) = v173;
      HIDWORD(v214) = *(&v173 + 3);
      v215 = v142;
      v216 = v194[0];
      *v217 = *v226;
      *&v217[3] = *&v226[3];
      v218 = v144;
      v219 = v192[0];
      *v220 = *v225;
      *&v220[3] = *&v225[3];
      v221 = v149;
      v222 = v146;
      v245 = &v213;
      (*(v71 + 16))(v37, v70, v68);
      v176 = v74;
      LOBYTE(v177) = 1;
      v246 = v37;
      v247 = &v176;
      v239 = v148;
      v240 = v68;
      v241 = &type metadata for Spacer;
      v210 = sub_1001FA380();
      v211 = WitnessTable;
      v212 = &protocol witness table for Spacer;
      v75 = v140;
      sub_10038FA94(&v245, 3uLL, &v239);
      v73(v37, v68);
      v76 = v159;
      v77 = swift_getWitnessTable();
      v78 = v166;
      v79 = swift_getWitnessTable();
      v80 = v143;
      sub_10028B708(v75, v76, v78);
      v202 = v77;
      v203 = v79;
      v81 = v160;
      v165 = swift_getWitnessTable();
      v82 = swift_getWitnessTable();
      v83 = swift_getWitnessTable();
      v200 = v82;
      v201 = v83;
      swift_getWitnessTable();
      v63 = v156;
      sub_10028B610(v80, v81);
      (*(v145 + 8))(v80, v81);
      (*(v135 + 8))(v140, v78);
      v153(v168, v167);
      goto LABEL_9;
    }

    sub_10079E474();
    v103 = sub_10079BE54();
    v142 = v239;
    v144 = v241;
    v149 = v243;
    v146 = v244;
    v195 = 1;
    v193 = v240;
    v191 = v242;
    v151(v103);
    swift_getKeyPath();
    sub_1001F50D4(v30);
    v104 = v153;
    v105 = v155;
    sub_10079D6D4();

    (*(v27 + 8))(v30, v147);
    (*(v31 + 8))(v34, v104);
    v106 = sub_1001FA1F0();
    v188 = v105;
    v189 = v106;
    v107 = v167;
    v152 = swift_getWitnessTable();
    v108 = v168;
    sub_10039232C(v37, v107, v152);
    v109 = v154;
    v110 = *(v154 + 8);
    v153 = (v154 + 8);
    v155 = v110;
    v110(v37, v107);
    sub_10079E474();
    sub_10079BE54();
    v111 = v245;
    v112 = v247;
    v113 = v249;
    v114 = v250;
    v199 = 1;
    v198 = v246;
    v197 = v248;
    v213 = 0;
    LOBYTE(v214) = v195;
    *(&v214 + 1) = v194[0];
    HIDWORD(v214) = *(v194 + 3);
    v215 = v142;
    v216 = v193;
    *v217 = v192[0];
    *&v217[3] = *(v192 + 3);
    v218 = v144;
    v219 = v191;
    *&v220[3] = *&v190[3];
    *v220 = *v190;
    v221 = v149;
    v222 = v146;
    v210 = &v213;
    (*(v109 + 16))(v37, v108, v107);
    v179 = 0;
    LOBYTE(v180) = v199;
    *(&v180 + 1) = *v226;
    HIDWORD(v180) = *&v226[3];
    v181 = v111;
    v182 = v198;
    *v183 = *v225;
    *&v183[3] = *&v225[3];
    v184 = v112;
    LOBYTE(v185) = v197;
    *(&v185 + 1) = v196[0];
    HIDWORD(v185) = *(v196 + 3);
    v186 = v113;
    v187 = v114;
    v211 = v37;
    v212 = &v179;
    v176 = v148;
    v177 = v107;
    v178 = v148;
    v173 = sub_1001FA380();
    v174 = v152;
    v175 = v173;
    v115 = v139;
    sub_10038FA94(&v210, 3uLL, &v176);
    v155(v37, v107);
    v116 = v159;
    v117 = swift_getWitnessTable();
    v118 = swift_getWitnessTable();
    v119 = v143;
    sub_10028B610(v115, v116);
    v171 = v117;
    v172 = v118;
    v120 = v160;
    v165 = swift_getWitnessTable();
    v121 = swift_getWitnessTable();
    v122 = swift_getWitnessTable();
    v169 = v121;
    v170 = v122;
    v123 = v116;
    swift_getWitnessTable();
    v63 = v156;
    sub_10028B610(v119, v120);
    (*(v145 + 8))(v119, v120);
    (*(v134 + 8))(v139, v123);
LABEL_8:
    v155(v168, v167);
    goto LABEL_9;
  }

  if ((v149 & 1) == 0)
  {
    v151(v40);
    swift_getKeyPath();
    sub_1001F50D4(v30);
    v148 = v14;
    v84 = v153;
    v85 = v155;
    sub_10079D6D4();

    (*(v27 + 8))(v30, v147);
    (*(v31 + 8))(v34, v84);
    v86 = sub_1001FA1F0();
    v223 = v85;
    v224 = v86;
    v87 = v167;
    v152 = swift_getWitnessTable();
    v88 = v168;
    sub_10039232C(v37, v87, v152);
    v89 = v154;
    v90 = *(v154 + 8);
    v153 = (v154 + 8);
    v155 = v90;
    v90(v37, v87);
    sub_10079E474();
    sub_10079BE54();
    v91 = v179;
    v92 = v181;
    v94 = v184;
    v93 = v185;
    LOBYTE(v196[0]) = 1;
    LOBYTE(v194[0]) = v180;
    LOBYTE(v192[0]) = v182;
    v176 = 0;
    LOBYTE(v177) = 1;
    v245 = &v176;
    (*(v89 + 16))(v37, v88, v87);
    v213 = 0;
    LOBYTE(v214) = v196[0];
    *(&v214 + 1) = v173;
    HIDWORD(v214) = *(&v173 + 3);
    v215 = v91;
    v216 = v194[0];
    *v217 = *v226;
    *&v217[3] = *&v226[3];
    v218 = v92;
    v219 = v192[0];
    *v220 = *v225;
    *&v220[3] = *&v225[3];
    v221 = v94;
    v222 = v93;
    v246 = v37;
    v247 = &v213;
    v239 = &type metadata for Spacer;
    v240 = v87;
    v241 = v148;
    v210 = &protocol witness table for Spacer;
    v211 = v152;
    v212 = sub_1001FA380();
    v95 = v141;
    sub_10038FA94(&v245, 3uLL, &v239);
    v155(v37, v87);
    v96 = v161;
    v165 = swift_getWitnessTable();
    v97 = swift_getWitnessTable();
    v98 = v144;
    sub_10028B610(v95, v96);
    v99 = swift_getWitnessTable();
    v100 = swift_getWitnessTable();
    v208 = v99;
    v209 = v100;
    v101 = v160;
    swift_getWitnessTable();
    v206 = v165;
    v207 = v97;
    v102 = v162;
    swift_getWitnessTable();
    v63 = v156;
    sub_10028B708(v98, v101, v102);
    (*(v146 + 8))(v98, v102);
    (*(v136 + 8))(v141, v96);
    goto LABEL_8;
  }

  v151(v40);
  swift_getKeyPath();
  sub_1001F50D4(v30);
  v42 = v153;
  v43 = v155;
  sub_10079D6D4();

  (*(v27 + 8))(v30, v147);
  (*(v31 + 8))(v34, v42);
  v44 = sub_1001FA1F0();
  v237 = v43;
  v238 = v44;
  v45 = v167;
  v46 = swift_getWitnessTable();
  v47 = v168;
  sub_10039232C(v37, v45, v46);
  v48 = v154;
  v49 = (v154 + 8);
  v50 = *(v154 + 8);
  v50(v37, v45);
  v51 = v50;
  v153 = v50;
  v155 = v49;
  v52 = v165;
  v239 = v165;
  LOBYTE(v240) = 1;
  v213 = &v239;
  (*(v48 + 16))(v37, v47, v45);
  v210 = v52;
  LOBYTE(v211) = 1;
  v214 = v37;
  v215 = &v210;
  v179 = &type metadata for Spacer;
  v180 = v45;
  v181 = &type metadata for Spacer;
  v245 = &protocol witness table for Spacer;
  v246 = v46;
  v247 = &protocol witness table for Spacer;
  v53 = v142;
  sub_10038FA94(&v213, 3uLL, &v179);
  v51(v37, v45);
  v54 = v161;
  v55 = swift_getWitnessTable();
  v56 = v163;
  v57 = swift_getWitnessTable();
  v58 = v144;
  sub_10028B708(v53, v54, v56);
  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v235 = v59;
  v236 = v60;
  v61 = v160;
  swift_getWitnessTable();
  v233 = v55;
  v234 = v57;
  v62 = v162;
  swift_getWitnessTable();
  v63 = v156;
  sub_10028B708(v58, v61, v62);
  (*(v146 + 8))(v58, v62);
  (*(v137 + 8))(v142, v56);
  v153(v168, v167);
LABEL_9:
  v124 = swift_getWitnessTable();
  v125 = swift_getWitnessTable();
  v231 = v124;
  v232 = v125;
  v126 = swift_getWitnessTable();
  v127 = swift_getWitnessTable();
  v128 = swift_getWitnessTable();
  v229 = v127;
  v230 = v128;
  v129 = swift_getWitnessTable();
  v227 = v126;
  v228 = v129;
  v130 = v158;
  v131 = swift_getWitnessTable();
  sub_10039232C(v63, v130, v131);
  return (*(v157 + 8))(v63, v130);
}

unint64_t sub_1001FA1F0()
{
  result = qword_100AD4990;
  if (!qword_100AD4990)
  {
    sub_1001F1234(&qword_100ADBCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4990);
  }

  return result;
}

uint64_t sub_1001FA2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADB740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001FA380()
{
  result = qword_100AE4170;
  if (!qword_100AE4170)
  {
    sub_1001F1234(&qword_100AD4988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4170);
  }

  return result;
}

uint64_t sub_1001FA404()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD4998);
  sub_100008B98(v0, qword_100AD4998);
  return sub_10079ACD4();
}

uint64_t sub_1001FA488()
{
  v0 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  v6 = __chkstk_darwin(v25);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B22DE8);
  v21[1] = sub_100008B98(v18, qword_100B22DE8);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v14, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_1001FA89C()
{
  v0 = sub_1001F1160(&qword_100AD5D10);
  __chkstk_darwin(v0 - 8);
  v162 = &v126 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v2 - 8);
  v161 = &v126 - v3;
  v156 = sub_1007967F4();
  v160 = *(v156 - 8);
  __chkstk_darwin(v156);
  v5 = (&v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_100796CF4();
  v147 = *(v136 - 8);
  v6 = __chkstk_darwin(v136);
  v150 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v126 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v126 - v15;
  v158 = sub_100796814();
  v126 = *(v158 - 8);
  v130 = v126;
  v17 = __chkstk_darwin(v158);
  v128 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v126 - v19;
  sub_1001F1160(&qword_100AD4A78);
  v20 = sub_1001F1160(&qword_100AD3B90);
  v159 = v20;
  v21 = *(v20 - 8);
  v139 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v129 = v23;
  *(v23 + 16) = xmmword_10080E7D0;
  v151 = v23 + v22;
  v127 = *(v20 + 48);
  *(v23 + v22) = 0;
  v143 = v16;
  sub_1007A2154();
  v24 = v9;
  sub_100796C94();
  v25 = *(v11 + 16);
  v141 = v11 + 16;
  v155 = v25;
  v149 = v14;
  v26 = v16;
  v27 = v10;
  v25(v14, v26, v10);
  v28 = v147;
  v29 = *(v147 + 16);
  v157 = v147 + 16;
  v154 = v29;
  v30 = v9;
  v31 = v136;
  v29(v150, v30, v136);
  v153 = type metadata accessor for BundleFinder();
  *v5 = v153;
  v152 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v32 = *(v160 + 104);
  v160 += 104;
  v140 = v32;
  v33 = v5;
  v144 = v5;
  v34 = v156;
  v32(v33);
  sub_100796834();
  v35 = *(v28 + 8);
  v147 = v28 + 8;
  v145 = v35;
  v35(v24, v31);
  v36 = *(v11 + 8);
  v146 = v11 + 8;
  v148 = v36;
  v37 = v143;
  v132 = v27;
  v36(v143, v27);
  v38 = v130;
  v39 = *(v130 + 56);
  v142 = v130 + 56;
  v138 = v39;
  v39(v161, 1, 1, v158);
  v134 = sub_100796104();
  v40 = *(v134 - 8);
  v133 = *(v40 + 56);
  v135 = v40 + 56;
  v133(v162, 1, 1, v134);
  sub_1001F1160(&qword_100AD4A80);
  v126 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10080B690;
  sub_1007A2154();
  sub_100796C94();
  v42 = v155;
  v155(v149, v37, v27);
  v43 = v136;
  v154(v150, v24, v136);
  v44 = v144;
  *v144 = v153;
  v45 = v34;
  v46 = v140;
  v140(v44, v152, v45);
  v47 = v128;
  sub_100796834();
  v145(v24, v43);
  v48 = v143;
  v49 = v132;
  v148(v143, v132);
  v50 = v47;
  v51 = v158;
  (*(v130 + 32))(v41 + v126, v50, v158);
  v52 = v151;
  sub_100796114();
  v128 = v52 + v139;
  v130 = *(v159 + 48);
  *v128 = 1;
  sub_1007A2154();
  sub_100796C94();
  v42(v149, v48, v49);
  v53 = v136;
  v154(v150, v24, v136);
  v54 = v144;
  *v144 = v153;
  v46(v54, v152, v156);
  sub_100796834();
  v145(v24, v53);
  v55 = v143;
  v148(v143, v49);
  v56 = v138;
  v138(v161, 1, 1, v51);
  v133(v162, 1, 1, v134);
  sub_100796124();
  v130 = 2 * v139;
  v127 = v151 + 2 * v139;
  v128 = *(v159 + 48);
  *v127 = 2;
  sub_1007A2154();
  sub_100796C94();
  v155(v149, v55, v49);
  v57 = v136;
  v154(v150, v24, v136);
  *v54 = v153;
  v140(v54, v152, v156);
  sub_100796834();
  v145(v24, v57);
  v58 = v143;
  v148(v143, v49);
  v56(v161, 1, 1, v158);
  v133(v162, 1, 1, v134);
  sub_100796124();
  v128 = v151 + v130 + v139;
  v130 = *(v159 + 48);
  *v128 = 3;
  sub_1007A2154();
  sub_100796C94();
  v59 = v149;
  v60 = v58;
  v61 = v49;
  v155(v149, v58, v49);
  v62 = v136;
  v154(v150, v24, v136);
  v63 = v144;
  *v144 = v153;
  v140(v63, v152, v156);
  sub_100796834();
  v145(v24, v62);
  v148(v60, v49);
  v138(v161, 1, 1, v158);
  v133(v162, 1, 1, v134);
  sub_100796124();
  v64 = v139;
  v130 = 4 * v139;
  v127 = v151 + 4 * v139;
  v128 = *(v159 + 48);
  *v127 = 4;
  sub_1007A2154();
  sub_100796C94();
  v155(v59, v60, v49);
  v154(v150, v24, v62);
  *v63 = v153;
  v65 = v140;
  v140(v63, v152, v156);
  sub_100796834();
  v145(v24, v62);
  v66 = v143;
  v148(v143, v61);
  v138(v161, 1, 1, v158);
  v133(v162, 1, 1, v134);
  sub_100796124();
  v128 = v151 + v130 + v64;
  v130 = *(v159 + 48);
  *v128 = 5;
  sub_1007A2154();
  sub_100796C94();
  v155(v149, v66, v61);
  v131 = v24;
  v154(v150, v24, v62);
  v67 = v144;
  *v144 = v153;
  v65(v67, v152, v156);
  sub_100796834();
  v68 = v62;
  v69 = v145;
  v145(v24, v68);
  v70 = v143;
  v71 = v148;
  v148(v143, v61);
  v72 = v138;
  v138(v161, 1, 1, v158);
  v133(v162, 1, 1, v134);
  sub_100796124();
  v134 = v151 + 6 * v139;
  v135 = *(v159 + 48);
  *v134 = 6;
  sub_1007A2154();
  v73 = v131;
  sub_100796C94();
  v155(v149, v70, v61);
  v74 = v73;
  v75 = v73;
  v76 = v136;
  v154(v150, v74, v136);
  v77 = v144;
  *v144 = v153;
  v140(v77, v152, v156);
  sub_100796834();
  v69(v75, v76);
  v78 = v143;
  v79 = v132;
  v71(v143, v132);
  v72(v161, 1, 1, v158);
  sub_1007960E4();
  sub_100796124();
  v135 = 8 * v139;
  v133 = (v151 + 7 * v139);
  v134 = *(v159 + 48);
  *v133 = 7;
  sub_1007A2154();
  sub_100796C94();
  v80 = v79;
  v155(v149, v78, v79);
  v81 = v75;
  v154(v150, v75, v76);
  v82 = v144;
  *v144 = v153;
  v83 = v152;
  v84 = v140;
  v140(v82, v152, v156);
  sub_100796834();
  v85 = v76;
  v145(v81, v76);
  v86 = v143;
  v148(v143, v80);
  v138(v161, 1, 1, v158);
  sub_1007960E4();
  sub_100796124();
  v133 = (v151 + v135);
  v134 = *(v159 + 48);
  *v133 = 8;
  sub_1007A2154();
  v87 = v131;
  sub_100796C94();
  v88 = v132;
  v155(v149, v86, v132);
  v89 = v150;
  v154(v150, v87, v85);
  v90 = v144;
  *v144 = v153;
  v84(v90, v83, v156);
  v91 = v89;
  sub_100796834();
  v145(v87, v85);
  v92 = v143;
  v93 = v88;
  v148(v143, v88);
  v94 = v138;
  v138(v161, 1, 1, v158);
  sub_1007960E4();
  sub_100796124();
  v95 = v151;
  v134 = v151 + v135 + v139;
  v135 = *(v159 + 48);
  *v134 = 9;
  sub_1007A2154();
  sub_100796C94();
  v155(v149, v92, v93);
  v96 = v91;
  v97 = v87;
  v98 = v136;
  v154(v96, v87, v136);
  v99 = v153;
  v100 = v144;
  *v144 = v153;
  v140(v100, v152, v156);
  sub_100796834();
  v145(v97, v98);
  v101 = v143;
  v148(v143, v93);
  v94(v161, 1, 1, v158);
  sub_1007960E4();
  sub_100796124();
  v102 = v139;
  v134 = v95 + 10 * v139;
  v135 = *(v159 + 48);
  *v134 = 10;
  sub_1007A2154();
  v103 = v131;
  sub_100796C94();
  v104 = v93;
  v155(v149, v101, v93);
  v105 = v150;
  v106 = v154;
  v154(v150, v103, v98);
  v107 = v144;
  *v144 = v99;
  v140(v107, v152, v156);
  v108 = v105;
  sub_100796834();
  v145(v103, v98);
  v109 = v143;
  v110 = v104;
  v148(v143, v104);
  v138(v161, 1, 1, v158);
  sub_1007960E4();
  sub_100796124();
  v134 = v151 + 11 * v102;
  v135 = *(v159 + 48);
  *v134 = 11;
  v111 = v109;
  sub_1007A2154();
  sub_100796C94();
  v155(v149, v109, v104);
  v112 = v136;
  v106(v108, v103, v136);
  v113 = v144;
  *v144 = v153;
  v140(v113, v152, v156);
  sub_100796834();
  v114 = v145;
  v145(v103, v112);
  v148(v111, v110);
  v115 = v138;
  v138(v161, 1, 1, v158);
  sub_1007960E4();
  sub_100796124();
  v134 = v151 + 12 * v139;
  v135 = *(v159 + 48);
  *v134 = 12;
  sub_1007A2154();
  v116 = v103;
  sub_100796C94();
  v155(v149, v111, v110);
  v117 = v136;
  v154(v150, v116, v136);
  v118 = v144;
  *v144 = v153;
  v140(v118, v152, v156);
  sub_100796834();
  v119 = v117;
  v114(v116, v117);
  v120 = v143;
  v121 = v148;
  v148(v143, v110);
  v115(v161, 1, 1, v158);
  sub_1007960E4();
  sub_100796124();
  v122 = (v151 + 13 * v139);
  v139 = *(v159 + 48);
  *v122 = 13;
  sub_1007A2154();
  sub_100796C94();
  v155(v149, v120, v110);
  v154(v150, v116, v119);
  v123 = v144;
  *v144 = v153;
  v140(v123, v152, v156);
  sub_100796834();
  v145(v116, v119);
  v121(v120, v110);
  v138(v161, 1, 1, v158);
  sub_1007960E4();
  sub_100796124();
  v124 = sub_1001ECB58(v129);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B22E00 = v124;
  return result;
}

unint64_t sub_1001FC874(char a1)
{
  result = 0x626154656D6F68;
  switch(a1)
  {
    case 1:
      result = 0x547972617262696CLL;
      break;
    case 2:
      result = 0x726F74536B6F6F62;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6154686372616573;
      break;
    case 5:
      result = 0x62615461676E616DLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6C6F43736B6F6F62;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6C6C6F4373666470;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001FCA20(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1001FC874(*a1);
  v5 = v4;
  if (v3 == sub_1001FC874(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1007A3AB4();
  }

  return v8 & 1;
}

unint64_t sub_1001FCAAC()
{
  result = qword_100AD49B0;
  if (!qword_100AD49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49B0);
  }

  return result;
}

Swift::Int sub_1001FCB00()
{
  v1 = *v0;
  sub_1007A3C04();
  sub_1001FC874(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1001FCB64()
{
  sub_1001FC874(*v0);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1001FCBB8()
{
  v1 = *v0;
  sub_1007A3C04();
  sub_1001FC874(v1);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1001FCC18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001FE05C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1001FCC48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001FC874(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001FCC74()
{
  result = qword_100AD49B8;
  if (!qword_100AD49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49B8);
  }

  return result;
}

unint64_t sub_1001FCCCC()
{
  result = qword_100AD49C0;
  if (!qword_100AD49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49C0);
  }

  return result;
}

unint64_t sub_1001FCD24()
{
  result = qword_100AD49C8;
  if (!qword_100AD49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49C8);
  }

  return result;
}

unint64_t sub_1001FCD88()
{
  result = qword_100AD49D0;
  if (!qword_100AD49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49D0);
  }

  return result;
}

unint64_t sub_1001FCDDC()
{
  result = qword_100AD49D8;
  if (!qword_100AD49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49D8);
  }

  return result;
}

unint64_t sub_1001FCE30()
{
  result = qword_100AD49E0;
  if (!qword_100AD49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49E0);
  }

  return result;
}

unint64_t sub_1001FCE88()
{
  result = qword_100AD49E8;
  if (!qword_100AD49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49E8);
  }

  return result;
}

unint64_t sub_1001FCF64()
{
  result = qword_100AD49F0;
  if (!qword_100AD49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49F0);
  }

  return result;
}

uint64_t sub_1001FCFB8(uint64_t a1)
{
  v2 = sub_1001FCF64();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001FD008()
{
  result = qword_100AD49F8;
  if (!qword_100AD49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD49F8);
  }

  return result;
}

unint64_t sub_1001FD060()
{
  result = qword_100AD4A00;
  if (!qword_100AD4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4A00);
  }

  return result;
}

unint64_t sub_1001FD0B8()
{
  result = qword_100AD4A08;
  if (!qword_100AD4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4A08);
  }

  return result;
}

uint64_t sub_1001FD10C()
{
  if (qword_100AD1230 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001FD168(uint64_t a1)
{
  v2 = sub_1001FCE88();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001FD20C()
{
  result = qword_100AD4A20;
  if (!qword_100AD4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4A20);
  }

  return result;
}

uint64_t sub_1001FD260()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  v6 = __chkstk_darwin(v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B22E08);
  v21 = sub_100008B98(v3, qword_100B22E08);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v15, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v8, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1001FD628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1007A26F4();
  v3[5] = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_1001FD6C4, v5, v4);
}

uint64_t sub_1001FD6C4()
{

  sub_100795DF4();
  v1 = *(v0 + 48);
  v2 = sub_1001FE0A8();
  switch(v1)
  {
    case 1:
      sub_10023E494(1u);
      break;
    case 2:
      sub_10023E494(2u);
      break;
    case 3:
      sub_10023E494(3u);
      break;
    case 4:
      sub_10023E494(4u);
      break;
    case 5:
      sub_10023E494(5u);
      break;
    case 6:
      v3 = 0;
      goto LABEL_16;
    case 7:
      v3 = 1;
      goto LABEL_16;
    case 8:
      v3 = 2;
      goto LABEL_16;
    case 9:
      v3 = 3;
      goto LABEL_16;
    case 10:
      v3 = 4;
      goto LABEL_16;
    case 11:
      v3 = 5;
      goto LABEL_16;
    case 12:
      v3 = 6;
      goto LABEL_16;
    case 13:
      v3 = 7;
LABEL_16:
      sub_10023EC48(v3);
      break;
    default:
      sub_10023E494(0);
      break;
  }

  sub_100795D24();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001FD870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100795DF4();
  *a1 = v3;
  return result;
}

void (*sub_1001FD8E4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1001FD958;
}

void sub_1001FD958(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1001FD9A8()
{
  result = qword_100AD4A28;
  if (!qword_100AD4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4A28);
  }

  return result;
}

unint64_t sub_1001FDA00()
{
  result = qword_100AD4A30;
  if (!qword_100AD4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4A30);
  }

  return result;
}

unint64_t sub_1001FDA58()
{
  result = qword_100AD4A38;
  if (!qword_100AD4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4A38);
  }

  return result;
}

uint64_t sub_1001FDB1C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100008B98(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1001FDBC4()
{
  v0 = sub_1001F1160(&qword_100AD4A60);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AD4A68);
  __chkstk_darwin(v1);
  sub_1007961D4();
  v3._countAndFlagsBits = 0x206F74206E65704FLL;
  v3._object = 0xE800000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD4A70);
  sub_1007961B4();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_1007961C4(v4);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_1001FDD68(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_1001FD628(a1, v5, v4);
}

uint64_t sub_1001FDE14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001FE228();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001FDE3C(uint64_t a1)
{
  v2 = sub_1001FD9A8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1001FDE78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001FDEC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeepLinkItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeepLinkItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001FE05C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0B940;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001FE0A8()
{
  sub_100795A94();
  v0 = [v8 primarySceneController];

  v1 = [v0 rootBarCoordinator];
  if (v1)
  {
    type metadata accessor for RootBarCoordinator();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100AD1220 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AD4998);
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed getting root bar coordinator.", v6, 2u);
  }

  sub_1001FE9A0();
  swift_allocError();
  *v7 = 0;
  return swift_willThrow();
}

uint64_t sub_1001FE228()
{
  v0 = sub_100796274();
  v58 = *(v0 - 8);
  v59 = v0;
  __chkstk_darwin(v0);
  v57 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0);
  v3 = __chkstk_darwin(v2 - 8);
  v56 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v40 - v5;
  v6 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v6 - 8);
  v54 = &v40 - v7;
  v61 = sub_1007967F4();
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_100796CF4();
  v62 = *(v49 - 8);
  v10 = v62;
  v11 = __chkstk_darwin(v49);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = sub_1007A21D4();
  v60 = v16;
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v23 = sub_100796814();
  v51 = *(v23 - 8);
  v52 = v23;
  __chkstk_darwin(v23);
  v50 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1001F1160(&qword_100AD4A50);
  sub_1007A2154();
  sub_100796C94();
  v48 = *(v17 + 16);
  v41 = v20;
  v48(v20, v22, v16);
  v47 = *(v10 + 16);
  v25 = v13;
  v26 = v13;
  v27 = v49;
  v47(v26, v15, v49);
  v46 = type metadata accessor for BundleFinder();
  *v9 = v46;
  v44 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v28 = *(v63 + 104);
  v63 += 104;
  v45 = v28;
  v42 = v9;
  v28(v9);
  sub_100796834();
  v29 = *(v62 + 8);
  v62 += 8;
  v30 = v27;
  v29(v15, v27);
  v31 = *(v17 + 8);
  v43 = v17 + 8;
  v32 = v60;
  v31(v22, v60);
  sub_1007A2154();
  sub_100796C94();
  v48(v41, v22, v32);
  v33 = v30;
  v47(v25, v15, v30);
  v34 = v42;
  *v42 = v46;
  v45(v34, v44, v61);
  v35 = v54;
  sub_100796834();
  v29(v15, v33);
  v31(v22, v60);
  (*(v51 + 56))(v35, 0, 1, v52);
  LOBYTE(v64) = 14;
  v36 = sub_100795CE4();
  v37 = *(*(v36 - 8) + 56);
  v37(v55, 1, 1, v36);
  v37(v56, 1, 1, v36);
  (*(v58 + 104))(v57, enum case for InputConnectionBehavior.default(_:), v59);
  sub_1001FCF64();
  v38 = sub_100795E54();
  sub_1001F1160(&qword_100AD4A58);
  sub_100795B74();
  v64 = 0u;
  v65 = 0u;
  v66 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v38;
}

unint64_t sub_1001FE9A0()
{
  result = qword_100ADE0B0;
  if (!qword_100ADE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE0B0);
  }

  return result;
}

uint64_t type metadata accessor for ReportAnIssueActionItem()
{
  result = qword_100AD4AE0;
  if (!qword_100AD4AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FEA74()
{
  sub_1001FEBC8(319, &qword_100AD4AF0);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &unk_100AE9C00);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_100797144();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001FEB70()
{
  if (!qword_100AD4AF8)
  {
    sub_100798454();
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD4AF8);
    }
  }
}

uint64_t sub_1001FEBC8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_1001FEC24@<D0>(_OWORD *a1@<X8>)
{
  sub_10000E3E8((v1 + 40), *(v1 + 64));
  sub_1007977A4();
  if (v5)
  {
    sub_1001FF70C(v4);
  }

  else
  {
    sub_1000077C0(v4, v6);
    sub_1000077C0(v6, v4);
    sub_1001F1160(&qword_100AD4B48);
    sub_1001F1160(qword_100AD4B50);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001FECF8()
{
  sub_1001FEC24(&v11);
  if (!v12)
  {
    sub_1001FF760(&v11);
LABEL_17:
    v9 = 0;
    return v9 & 1;
  }

  sub_1001FF7C8(&v11, &v13);
  sub_10000E3E8(&v13, v14);
  sub_1007976B4();
  if ((sub_1007972D4() & 1) == 0 || (sub_10000E3E8(&v13, v14), (sub_1002C5624() & 1) == 0))
  {
LABEL_16:
    sub_1000074E0(&v13);
    goto LABEL_17;
  }

  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentAudiobook];
  if (!v1)
  {
LABEL_15:

    goto LABEL_16;
  }

  v2 = v1;
  v3 = [v1 assetID];
  v4 = sub_1007A2254();
  v6 = v5;

  sub_10000E3E8(&v13, v14);
  if (v4 != sub_100797674() || v6 != v7)
  {
    v8 = sub_1007A3AB4();

    if (v8)
    {
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

LABEL_10:
  if ([v2 isSG])
  {
    v9 = 1;
  }

  else
  {
    sub_10000E3E8(&v13, v14);
    v9 = sub_1002C58E8();
  }

  swift_unknownObjectRelease();
  sub_1000074E0(&v13);
  return v9 & 1;
}

uint64_t sub_1001FEEE8()
{
  v1[13] = v0;
  v2 = sub_10079ACE4();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_1007A26F4();
  v1[17] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[18] = v4;
  v1[19] = v3;

  return _swift_task_switch(sub_1001FEFDC, v4, v3);
}

uint64_t sub_1001FEFDC()
{
  v1 = *(v0 + 104);
  v2 = v1[10];
  *(v0 + 160) = v2;
  if (!v2)
  {

    goto LABEL_5;
  }

  sub_10000E3E8(v1 + 5, v1[8]);
  v3 = v2;
  sub_1007977A4();
  if (*(v0 + 56))
  {

    sub_1001FF70C(v0 + 16);
LABEL_5:
    sub_10079AC44();
    v4 = sub_10079ACC4();
    v5 = sub_1007A29B4();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 112);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "ReportAnIssueActionItem tracker does not exist.", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);

    v11 = *(v0 + 8);

    return v11();
  }

  sub_1000077C0((v0 + 16), v0 + 64);
  sub_1004145AC(v3, (v0 + 64));
  sub_10000E3E8((v0 + 64), *(v0 + 88));
  v13 = sub_100797674();
  v15 = v14;
  sub_10000E3E8((v0 + 64), *(v0 + 88));
  v16 = sub_100797634();
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v19 = [objc_allocWithZone(NSNumber) initWithInteger:v18];
  *(v0 + 168) = v19;
  objc_allocWithZone(sub_1001F1160(&qword_100AD4B38));
  v20 = v3;
  v21 = swift_task_alloc();
  *(v0 + 176) = v21;
  *v21 = v0;
  v21[1] = sub_1001FF280;

  return sub_1005DE8A4(v13, v15, v19, v20);
}

uint64_t sub_1001FF280(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  *(*v1 + 184) = a1;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);

  return _swift_task_switch(sub_1001FF3E0, v6, v5);
}

uint64_t sub_1001FF3E0()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[13];

  sub_10000E3E8(v3, v3[3]);
  sub_100796EC4();

  sub_1000074E0((v0 + 8));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FF4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_100797144();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001FF530()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1001FEEE8();
}

void *ExplicitDeclineActionItem.tracker.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_1001FF644@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.reportConcern(_:);
  v13 = sub_100797144();
  (*(*(v13 - 8) + 104))(a6 + v11, v12, v13);
  sub_1000077C0(a1, a6 + 40);
  sub_1000077C0(a2, a6);
  *(a6 + 80) = a3;

  return sub_1000077C0(a4, a6 + 88);
}

uint64_t sub_1001FF760(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD4B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1001FF7C8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1001FF7EC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001FF87C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1001FFA10(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1001FFCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v38 = *(v6 + 16);
  sub_1001F1234(&qword_100ADB490);
  v9 = sub_10079C2A4();
  v10 = *(a1 + 24);
  v11 = sub_100005920(&unk_100AD1D10, &qword_100ADB490);
  v44 = v10;
  v45 = v11;
  v29 = v10;
  WitnessTable = swift_getWitnessTable();
  v34 = v9;
  v40 = v9;
  v41 = v9;
  v42 = WitnessTable;
  v43 = WitnessTable;
  v32 = type metadata accessor for ContrastingLeadingTrailingView();
  v35 = *(v32 - 8);
  v12 = __chkstk_darwin(v32);
  v30 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v31 = &v29 - v14;
  v15 = *(v39 + 16);
  v16 = *(v3 + 16);
  v16(v8);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v38;
  *(v18 + 24) = v10;
  v19 = *(v3 + 32);
  v19(v18 + v17, v8, a1);
  v20 = v36;
  (v16)(v36, v39, a1);
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 16) = v38;
  *(v21 + 24) = v22;
  v19(v21 + v17, v20, a1);
  v23 = v30;
  sub_100200450(sub_100200510, sub_100200620, v30, v15);
  v24 = v32;
  v25 = swift_getWitnessTable();
  v26 = v31;
  sub_10039232C(v23, v24, v25);
  v27 = *(v35 + 8);
  v27(v23, v24);
  sub_10039232C(v26, v24, v25);
  return (v27)(v26, v24);
}

uint64_t sub_100200090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001F1234(&qword_100ADB490);
  v4 = sub_10079C2A4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  type metadata accessor for ContrastingLeadingTrailingColorsView();
  sub_10079D7F4();
  v11 = sub_100005920(&unk_100AD1D10, &qword_100ADB490);
  v15[0] = a3;
  v15[1] = v11;
  WitnessTable = swift_getWitnessTable();
  sub_10039232C(v8, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_10039232C(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_100200270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001F1234(&qword_100ADB490);
  v4 = sub_10079C2A4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  type metadata accessor for ContrastingLeadingTrailingColorsView();
  sub_10079D7F4();
  v11 = sub_100005920(&unk_100AD1D10, &qword_100ADB490);
  v15[0] = a3;
  v15[1] = v11;
  WitnessTable = swift_getWitnessTable();
  sub_10039232C(v8, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_10039232C(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_100200450@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, double *a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  v6 = type metadata accessor for ContrastingLeadingTrailingView();
  v10 = a1(v6, v7, v8, v9);
  a2(v10);
}

uint64_t sub_100200528()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ContrastingLeadingTrailingColorsView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[13], v1);

  return swift_deallocObject();
}

uint64_t sub_100200638(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for ContrastingLeadingTrailingColorsView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1002006D8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100200774(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((v10 + v11 + ((v9 + 8) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        v21 = (a1 + v9 + 8) & ~v9;
        if (v5 >= v8)
        {
          return (*(v4 + 48))(v21);
        }

        else
        {
          return (*(v7 + 48))((v21 + v10 + v11) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100200974(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v24 = &a1[v11 + 8] & ~v11;
  if (v7 >= v10)
  {
    v27 = *(v6 + 56);

    v27(v24);
  }

  else
  {
    v25 = *(v9 + 56);
    v26 = (v24 + v12 + v13) & ~v13;

    v25(v26);
  }
}

uint64_t sub_100200C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v4 = *(a1 + 16);
  sub_1001F1234(&qword_100AD4C58);
  sub_10079C2A4();
  v5 = *(a1 + 24);
  sub_1001F1234(&qword_100AD4C60);
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v6 = sub_10079E1A4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  sub_10079E484();
  v16[4] = v4;
  v16[5] = v5;
  v17 = *(a1 + 32);
  v18 = v2;
  sub_10079E194();
  WitnessTable = swift_getWitnessTable();
  sub_10039232C(v10, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_10039232C(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_100200ECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v42 = a4;
  v52 = a5;
  sub_1001F1234(&qword_100AD4C60);
  v43 = a2;
  v9 = sub_10079C2A4();
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  v11 = __chkstk_darwin(v9);
  v48 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = v39 - v13;
  sub_1001F1234(&qword_100AD4C58);
  v14 = sub_10079C2A4();
  v15 = *(v14 - 8);
  v53 = v14;
  v54 = v15;
  v16 = __chkstk_darwin(v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v55 = v39 - v19;
  *&v79 = a1;
  *(&v79 + 1) = a2;
  *v80 = a3;
  *&v80[8] = a4;
  v44 = type metadata accessor for ContrastingLeadingTrailingView();
  v47 = *(v44 + 52);
  v20 = sub_10079C8F4();
  LOBYTE(v78[0]) = 1;
  sub_1002015A0(&v79);
  v67 = *&v80[16];
  v68[0] = *&v80[32];
  *(v68 + 9) = *&v80[41];
  v65 = v79;
  v66 = *v80;
  v69[2] = *&v80[16];
  v70[0] = *&v80[32];
  *(v70 + 9) = *&v80[41];
  v69[0] = v79;
  v69[1] = *v80;
  sub_1000077D8(&v65, &v59, &qword_100AD4C68);
  sub_100007840(v69, &qword_100AD4C68);
  *(v64 + 7) = v65;
  v64[4] = *(v68 + 9);
  *(&v64[3] + 7) = v68[0];
  *(&v64[2] + 7) = v67;
  *(&v64[1] + 7) = v66;
  *&v80[17] = v64[1];
  *&v80[33] = v64[2];
  *&v80[49] = v64[3];
  *&v80[65] = v64[4];
  v79 = v20;
  v80[0] = v78[0];
  *&v80[1] = v64[0];
  sub_1001F1160(&qword_100AD4C70);
  v41 = &protocol conformance descriptor for HStack<A>;
  sub_100005920(&qword_100AD4C78, &qword_100AD4C70);
  sub_10079DAE4();
  v71[4] = *&v80[48];
  v71[5] = *&v80[64];
  v72 = v80[80];
  v71[0] = v79;
  v71[1] = *v80;
  v71[2] = *&v80[16];
  v71[3] = *&v80[32];
  sub_100007840(v71, &qword_100AD4C70);
  v21 = sub_100005920(&qword_100AD4C80, &qword_100AD4C58);
  v62 = a3;
  v63 = v21;
  v39[1] = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v22 = v53;
  WitnessTable = swift_getWitnessTable();
  v40 = v18;
  sub_10039232C(v18, v22, WitnessTable);
  v46 = *(v54 + 8);
  v47 = v54 + 8;
  v46(v18, v22);
  v23 = sub_10079C8F4();
  LOBYTE(v58[0]) = 0;
  v24 = v42;
  sub_10020169C(&v79);
  v75 = *&v80[16];
  v76 = *&v80[32];
  v73 = v79;
  v74 = *v80;
  v78[2] = *&v80[16];
  v78[3] = *&v80[32];
  v78[4] = *&v80[48];
  v78[1] = *v80;
  v77 = *&v80[48];
  v78[0] = v79;
  sub_1000077D8(&v73, &v59, &qword_100AD4C88);
  sub_100007840(v78, &qword_100AD4C88);
  *&v61[7] = v73;
  *&v61[71] = v77;
  *&v61[55] = v76;
  *&v61[39] = v75;
  *&v61[23] = v74;
  v59 = v23;
  v60[0] = v58[0];
  *&v60[33] = *&v61[32];
  *&v60[49] = *&v61[48];
  *&v60[65] = *&v61[64];
  *&v60[80] = *(&v77 + 1);
  *&v60[1] = *v61;
  *&v60[17] = *&v61[16];
  sub_1001F1160(&qword_100AD4C90);
  sub_100005920(&qword_100AD4C98, &qword_100AD4C90);
  v25 = v48;
  sub_10079DAE4();
  *&v80[48] = *&v60[48];
  *&v80[64] = *&v60[64];
  *&v80[80] = *&v60[80];
  v79 = v59;
  *v80 = *v60;
  *&v80[16] = *&v60[16];
  *&v80[32] = *&v60[32];
  sub_100007840(&v79, &qword_100AD4C90);
  v26 = sub_100005920(&qword_100AD4CA0, &qword_100AD4C60);
  v58[2] = v24;
  v58[3] = v26;
  v27 = v50;
  v28 = swift_getWitnessTable();
  v29 = v49;
  v30 = v25;
  v31 = v25;
  v32 = v27;
  sub_10039232C(v31, v27, v28);
  v33 = v51;
  v34 = *(v51 + 8);
  v34(v30, v32);
  v35 = v40;
  v36 = v53;
  (*(v54 + 16))(v40, v55, v53);
  *&v59 = v35;
  (*(v33 + 16))(v30, v29, v32);
  *(&v59 + 1) = v30;
  v58[0] = v36;
  v58[1] = v32;
  v56 = WitnessTable;
  v57 = v28;
  sub_10038FA94(&v59, 2uLL, v58);
  v34(v29, v32);
  v37 = v46;
  v46(v55, v36);
  v34(v30, v32);
  return v37(v35, v36);
}

uint64_t sub_1002015A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10079DDF4();
  KeyPath = swift_getKeyPath();
  sub_10079E474();
  sub_10079BE54();
  *&v14[0] = KeyPath;
  *(&v14[0] + 1) = v2;
  v4 = v11;
  v5 = v11;
  v6 = v12;
  v14[1] = v11;
  v14[2] = v12;
  v7 = v13;
  v14[3] = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v7;
  v8 = v13;
  *a1 = v14[0];
  *(a1 + 16) = v4;
  v10[64] = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v15[0] = KeyPath;
  v15[1] = v2;
  v16 = v5;
  v17 = v6;
  v18 = v8;
  sub_1000077D8(v14, v10, &qword_100AD4CA8);
  return sub_100007840(v15, &qword_100AD4CA8);
}

uint64_t sub_10020169C@<X0>(uint64_t a1@<X8>)
{
  sub_10079E474();
  sub_10079BE54();
  v2 = sub_10079DDF4();
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = result;
  *(a1 + 72) = v2;
  return result;
}

Swift::Int sub_100201788()
{
  sub_1007A3C04();
  sub_1007A3C14(0);
  return sub_1007A3C44();
}

Swift::Int sub_1002017CC()
{
  sub_1007A3C04();
  sub_1007A3C14(0);
  return sub_1007A3C44();
}

uint64_t sub_10020180C()
{
  v1 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v13 = sub_1001F1160(&qword_100AD4D78);
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v12 - v5;
  sub_1001F1160(&qword_100AD4D80);
  swift_allocObject();
  v7 = sub_10079B8D4();
  v12 = v0;
  *(v0 + 16) = v7;
  *(v0 + 24) = &_swiftEmptySetSingleton;
  v14 = v7;
  sub_100017E74();

  v8 = sub_1007A2D74();
  v15 = v8;
  v9 = sub_1007A2D24();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_100005920(&qword_100AD4D88, &qword_100AD4D80);
  sub_100017E1C();
  sub_10079BAB4();
  sub_100201E64(v3);

  sub_100005920(&unk_100AD4D90, &qword_100AD4D78);
  v10 = v13;
  sub_10079BB04();
  (*(v4 + 8))(v6, v10);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return v12;
}

void sub_100201AE4()
{
  v0 = [objc_opt_self() sceneManager];
  v2[4] = sub_100201BB0;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_100201C54;
  v2[3] = &unk_100A0E578;
  v1 = _Block_copy(v2);
  [v0 requestPrimaryScene:v1];
  _Block_release(v1);
}

void sub_100201BB0(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 bk_window];
  v4 = [v2 jsa_topMostViewControllerForWindow:v3];

  [v4 dismissViewControllerAnimated:1 completion:0];
}

void sub_100201C54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100201CBC()
{

  return swift_deallocClassInstance();
}

uint64_t _s13RoutingActionOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s13RoutingActionOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100201E04()
{
  result = qword_100AD4D58;
  if (!qword_100AD4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4D58);
  }

  return result;
}

uint64_t sub_100201E64(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD7EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_100201ED4()
{
  v1 = *v0;
  sub_1007A3C04();
  sub_1007A3C14(v1);
  return sub_1007A3C44();
}

Swift::Int sub_100201F1C()
{
  v1 = *v0;
  sub_1007A3C04();
  sub_1007A3C14(v1);
  return sub_1007A3C44();
}

uint64_t sub_100201F60(float a1)
{
  if (qword_100AD1240 != -1)
  {
    swift_once();
  }

  v2 = qword_100AD4DA0;
  isa = sub_1007A27E4().super.super.isa;
  v4 = [v2 stringForObjectValue:isa];

  if (v4)
  {
    v5 = sub_1007A2254();
  }

  else
  {
    sub_1001F1160(&unk_100AD5090);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10080B690;
    *(v6 + 56) = &type metadata for Float;
    *(v6 + 64) = &protocol witness table for Float;
    *(v6 + 32) = a1;
    v5 = sub_1007A2284();
  }

  v8._countAndFlagsBits = 38851;
  v8._object = 0xA200000000000000;
  sub_1007A23D4(v8);
  return v5;
}

uint64_t sub_100202090(float a1)
{
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v26 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v26 - v14;
  if (a1 == 0.5 || a1 == 1.0 || a1 == 1.5 || a1 == 2.0 || a1 == 3.0)
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v10 + 16))(v13, v15, v9);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v3 + 16))(v6, v8, v2);
    v17 = sub_1007A22D4();
    (*(v3 + 8))(v8, v2);
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v10 + 16))(v13, v15, v9);
    type metadata accessor for BundleFinder();
    v19 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass:v19];
    (*(v3 + 16))(v6, v8, v2);
    sub_1007A22D4();
    (*(v3 + 8))(v8, v2);
    (*(v10 + 8))(v15, v9);
    sub_1001F1160(&unk_100AD5090);
    v21 = swift_allocObject();
    v26[0] = xmmword_10080B690;
    *(v21 + 16) = xmmword_10080B690;
    v22 = swift_allocObject();
    *(v22 + 16) = v26[0];
    *(v22 + 56) = &type metadata for Float;
    *(v22 + 64) = &protocol witness table for Float;
    *(v22 + 32) = a1;
    v23 = sub_1007A2284();
    v25 = v24;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_10000E4C4();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    v17 = sub_1007A2284();
  }

  return v17;
}

id sub_1002027F4()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setNumberStyle:1];
  [v0 setMaximumFractionDigits:1];
  [v0 setMinimumFractionDigits:0];
  result = [v0 setUsesGroupingSeparator:0];
  qword_100AD4DA0 = v0;
  return result;
}

uint64_t sub_1002028A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_10020291C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t (*sub_1002029B8())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1002060AC;
}

uint64_t sub_100202AD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100202BE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100202C68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100202D14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

float sub_100202DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100202E60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

double sub_100202EE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

float sub_100202F4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_100202FC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_100203038()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_1002030AC()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1002030E4()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v1 = *(v0 + 32);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1007A3C34(*&v1);
  return sub_1007A3C44();
}

uint64_t sub_100203144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007A3764();
  *a1 = result;
  return result;
}

void sub_1002031A8()
{
  v1 = *v0;
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v2 = *(v1 + 32);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1007A3C34(*&v2);
}

Swift::Int sub_1002031F0()
{
  v1 = *v0;
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v2 = *(v1 + 32);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1007A3C34(*&v2);
  return sub_1007A3C44();
}

BOOL sub_100203250(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 32);
  v3 = *(*a2 + 32);
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return v2 == v3;
  }

  v5 = sub_1007A3AB4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

Swift::Int sub_1002032C0()
{
  v1 = *(v0 + 16);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14([v1 hash]);
  return sub_1007A3C44();
}

void sub_100203330()
{
  v1 = *(v0 + 16);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14([v1 hash]);
}

Swift::Int sub_100203374()
{
  v1 = *(v0 + 16);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14([v1 hash]);
  return sub_1007A3C44();
}

id sub_1002033E0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return [v2 isEqual:v3];
  }

  v5 = sub_1007A3AB4();
  result = 0;
  if (v5)
  {
    return [v2 isEqual:v3];
  }

  return result;
}

uint64_t sub_10020345C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  return v1;
}

uint64_t sub_1002034C8()
{
  v0 = sub_100796CF4();
  v30 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v28 - v4;
  v6 = sub_1007A21D4();
  v29 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  sub_1002060B4();
  v12 = sub_1007A28A4();

  if (v12 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(), , , v13 = sub_1007A28A4(), , (v13))
  {
    sub_1007A2154();
    sub_100796C94();
    v14 = v29;
    (*(v29 + 16))(v9, v11, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v17 = v30;
    (*(v30 + 16))(v3, v5, v0);
    sub_1007A22D4();
    (*(v17 + 8))(v5, v0);
    (*(v14 + 8))(v11, v6);
    sub_1001F1160(&unk_100AD5090);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10080EFF0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v19 = v31;
    v20 = v32;
    *(v18 + 56) = &type metadata for String;
    v21 = sub_10000E4C4();
    *(v18 + 64) = v21;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v22 = v31;
    v23 = v32;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v21;
    *(v18 + 72) = v22;
    *(v18 + 80) = v23;
    v24 = sub_1007A2284();

    return v24;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v26 = sub_1007A28A4();

    if (v26 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(), , , v27 = sub_1007A28A4(), , (v27))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      return v31;
    }

    else
    {
      return 0;
    }
  }
}

id sub_100203A8C()
{
  ObjectType = swift_getObjectType();
  v126 = sub_1001F1160(&qword_100AD50A8);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v96 - v1;
  v123 = sub_1001F1160(&qword_100AD50B0);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v96 - v2;
  v120 = sub_1001F1160(&qword_100AD50B8);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v96 - v3;
  v117 = sub_1001F1160(&qword_100AD50C0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v96 - v4;
  v114 = sub_1001F1160(&qword_100AD50C8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v96 - v5;
  v111 = sub_1001F1160(&unk_100AD50D0);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v96 - v6;
  v108 = sub_1001F1160(&qword_100AD82E0);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v96 - v7;
  v135 = sub_1001F1160(&qword_100AD50E0);
  v105 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v96 - v8;
  v104 = sub_1001F1160(&qword_100AD50E8);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v96 - v9;
  v133 = sub_1001F1160(&unk_100AD50F0);
  v139 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v96 - v10;
  v11 = sub_1001F1160(&unk_100AE1570);
  v12 = *(v11 - 8);
  v136 = v11;
  v137 = v12;
  __chkstk_darwin(v11);
  v130 = &v96 - v13;
  v99 = sub_1001F1160(&unk_100AD5100);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v96 - v14;
  v132 = sub_1001F1160(&unk_100ADF120);
  v140 = *(v132 - 8);
  __chkstk_darwin(v132);
  v138 = &v96 - v15;
  v101 = sub_1001F1160(&unk_100AD5110);
  v16 = *(v101 - 1);
  __chkstk_darwin(v101);
  v18 = &v96 - v17;
  v19 = sub_1001F1160(&unk_100AD8260);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v96 - v21;
  v23 = sub_1001F1160(&unk_100AD5120);
  v128 = v23;
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v96 - v25;
  v27 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__absolutePlayedInterval;
  *&v143[0] = 0;
  sub_10079B964();
  v129 = *(v24 + 32);
  v129(&v0[v27], v26, v23);
  v28 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__artwork;
  *&v143[0] = 0;
  sub_1001F1160(&qword_100AD4F20);
  sub_10079B964();
  (*(v20 + 32))(&v0[v28], v22, v19);
  v29 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__assetID;
  v143[0] = 0uLL;
  sub_1001F1160(&qword_100AD4F30);
  sub_10079B964();
  (*(v16 + 32))(&v0[v29], v18, v101);
  v30 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__audiobookTitle;
  *&v143[0] = 0;
  *(&v143[0] + 1) = 0xE000000000000000;
  v31 = v138;
  sub_10079B964();
  v32 = v140 + 32;
  v33 = *(v140 + 32);
  v34 = v132;
  v33(&v0[v30], v31, v132);
  v35 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__authorName;
  *&v143[0] = 0;
  *(&v143[0] + 1) = 0xE000000000000000;
  sub_10079B964();
  v36 = v34;
  v33(&v0[v35], v31, v34);
  v140 = v32;
  v101 = v33;
  v37 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__backgroundColorClosure;
  v143[0] = 0uLL;
  sub_1001F1160(&qword_100AD4F48);
  v38 = v97;
  sub_10079B964();
  v98[4](&v0[v37], v38, v99);
  v39 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__bufferedProportion;
  *&v143[0] = 0;
  sub_10079B964();
  v40 = v128;
  v100 = v24 + 32;
  v41 = v129;
  v129(&v0[v39], v26, v128);
  v42 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__chapterPlayedProportion;
  *&v143[0] = 0;
  sub_10079B964();
  v41(&v0[v42], v26, v40);
  v43 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__chapterTitle;
  *&v143[0] = 0;
  *(&v143[0] + 1) = 0xE000000000000000;
  v44 = v138;
  sub_10079B964();
  v33(&v0[v43], v44, v36);
  v45 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__currentChapterIndex;
  *&v143[0] = 0;
  v46 = v130;
  sub_10079B964();
  v47 = *(v137 + 32);
  v137 += 32;
  v47(&v0[v45], v46, v136);
  v48 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__downloadProgress;
  *&v143[0] = 0;
  BYTE8(v143[0]) = 1;
  v99 = sub_1001F1160(&qword_100AD4F60);
  v49 = v131;
  sub_10079B964();
  v50 = *(v139 + 32);
  v139 += 32;
  v98 = v50;
  (v50)(&v0[v48], v49, v133);
  v51 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__downloadState;
  LOBYTE(v143[0]) = 3;
  sub_1001F1160(&unk_100AD4F70);
  v52 = v102;
  sub_10079B964();
  (*(v103 + 32))(&v0[v51], v52, v104);
  v53 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__isFirstEverLaunch;
  LOBYTE(v143[0]) = 0;
  v54 = v134;
  sub_10079B964();
  v55 = *(v105 + 32);
  v56 = v135;
  v55(&v0[v53], v54, v135);
  v57 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__isLoadingResources;
  LOBYTE(v143[0]) = 0;
  sub_10079B964();
  v55(&v0[v57], v54, v56);
  v58 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__isPlaying;
  LOBYTE(v143[0]) = 0;
  sub_10079B964();
  v55(&v0[v58], v54, v56);
  v59 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__isPreview;
  LOBYTE(v143[0]) = 0;
  sub_10079B964();
  v55(&v0[v59], v54, v56);
  v60 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__isScrubbing;
  LOBYTE(v143[0]) = 0;
  sub_10079B964();
  v55(&v0[v60], v54, v56);
  v61 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__isSkipping;
  LOBYTE(v143[0]) = 0;
  sub_10079B964();
  v55(&v0[v61], v54, v56);
  v62 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__isStalling;
  LOBYTE(v143[0]) = 0;
  sub_10079B964();
  v55(&v0[v62], v54, v56);
  v63 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__listeningSessionStartChapterIndex;
  *&v143[0] = 0;
  v64 = v130;
  sub_10079B964();
  v47(&v0[v63], v64, v136);
  v65 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__listeningSessionStartTimeProportion;
  *&v143[0] = 0;
  BYTE8(v143[0]) = 1;
  v66 = v131;
  sub_10079B964();
  (v98)(&v0[v65], v66, v133);
  v67 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__multipleRoutes;
  LOBYTE(v143[0]) = 1;
  sub_10079B964();
  v55(&v0[v67], v54, v56);
  v68 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__skipBackwardInterval;
  *&v143[0] = 0x402E000000000000;
  sub_10079B964();
  v69 = v128;
  v70 = v129;
  v129(&v0[v68], v26, v128);
  v71 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__skipForwardInterval;
  *&v143[0] = 0x402E000000000000;
  sub_10079B964();
  v70(&v0[v71], v26, v69);
  v72 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__playButtonState;
  LOBYTE(v143[0]) = 0;
  v73 = v106;
  sub_10079B964();
  (*(v107 + 32))(&v0[v72], v73, v108);
  v74 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__playedInterval;
  *&v143[0] = 0;
  sub_10079B964();
  v70(&v0[v74], v26, v69);
  v75 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__skippingCumulativeDelta;
  *&v143[0] = 0;
  sub_10079B964();
  v70(&v0[v75], v26, v69);
  v76 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__sleepTimerInitialDuration;
  *&v143[0] = 0;
  sub_10079B964();
  v70(&v0[v76], v26, v69);
  v77 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__sleepTimerRemainingTime;
  *&v143[0] = 0;
  sub_10079B964();
  v70(&v0[v77], v26, v69);
  v78 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__playbackRate;
  LODWORD(v143[0]) = 0;
  v79 = v109;
  sub_10079B964();
  (*(v110 + 32))(&v0[v78], v79, v111);
  v80 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__widestRateString;
  *&v143[0] = 0;
  *(&v143[0] + 1) = 0xE000000000000000;
  v81 = v138;
  sub_10079B964();
  v101(&v0[v80], v81, v132);
  v82 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__toPlayInterval;
  *&v143[0] = 0;
  sub_10079B964();
  v70(&v0[v82], v26, v69);
  v83 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__volume;
  LODWORD(v143[0]) = 1065353216;
  v84 = v112;
  sub_10079B964();
  (*(v113 + 32))(&v0[v83], v84, v114);
  v85 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__buyButtonProvider;
  v144 = 0;
  memset(v143, 0, sizeof(v143));
  sub_100206108(v143, v142);
  sub_1001F1160(&qword_100AD4FA0);
  v86 = v115;
  sub_10079B964();
  sub_100206178(v143);
  (*(v116 + 32))(&v0[v85], v86, v117);
  v87 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__sleepTimerSelectedOption;
  *&v143[0] = 0;
  v88 = v118;
  sub_10079B964();
  (*(v119 + 32))(&v0[v87], v88, v120);
  v89 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__chapters;
  *&v143[0] = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100AD4FB8);
  v90 = v121;
  sub_10079B964();
  (*(v122 + 32))(&v0[v89], v90, v123);
  v91 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__supplementalContents;
  *&v143[0] = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100AD7EA0);
  v92 = v124;
  sub_10079B964();
  (*(v125 + 32))(&v0[v91], v92, v126);
  v93 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingViewModel__isSG;
  LOBYTE(v143[0]) = 0;
  v94 = v134;
  sub_10079B964();
  v55(&v0[v93], v94, v135);
  v141.receiver = v0;
  v141.super_class = ObjectType;
  return objc_msgSendSuper2(&v141, "init");
}

id AudiobookNowPlayingFullscreenTouchViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudiobookNowPlayingViewModel()
{
  result = qword_100AD4F00;
  if (!qword_100AD4F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002056E0()
{
  sub_100205C6C(319, &qword_100AD4F10);
  if (v0 <= 0x3F)
  {
    sub_100205CB8(319, &qword_100AD4F18, &qword_100AD4F20);
    if (v1 <= 0x3F)
    {
      sub_100205CB8(319, &qword_100AD4F28, &qword_100AD4F30);
      if (v2 <= 0x3F)
      {
        sub_100205C6C(319, &qword_100AD4F38);
        if (v3 <= 0x3F)
        {
          sub_100205CB8(319, &qword_100AD4F40, &qword_100AD4F48);
          if (v4 <= 0x3F)
          {
            sub_100205C6C(319, &qword_100AD4F50);
            if (v5 <= 0x3F)
            {
              sub_100205CB8(319, &qword_100AD4F58, &qword_100AD4F60);
              if (v6 <= 0x3F)
              {
                sub_100205CB8(319, &qword_100AD4F68, &unk_100AD4F70);
                if (v7 <= 0x3F)
                {
                  sub_100205C6C(319, &qword_100AEB4D0);
                  if (v8 <= 0x3F)
                  {
                    sub_100205C6C(319, &qword_100AD4F80);
                    if (v9 <= 0x3F)
                    {
                      sub_100205C6C(319, &qword_100AD4F88);
                      if (v10 <= 0x3F)
                      {
                        sub_100205C6C(319, &qword_100AD4F90);
                        if (v11 <= 0x3F)
                        {
                          sub_100205CB8(319, &qword_100AD4F98, &qword_100AD4FA0);
                          if (v12 <= 0x3F)
                          {
                            sub_100205C6C(319, &qword_100AD4FA8);
                            if (v13 <= 0x3F)
                            {
                              sub_100205CB8(319, &qword_100AD4FB0, &qword_100AD4FB8);
                              if (v14 <= 0x3F)
                              {
                                sub_100205CB8(319, &unk_100AD4FC0, &qword_100AD7EA0);
                                if (v15 <= 0x3F)
                                {
                                  swift_updateClassMetadata2();
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
        }
      }
    }
  }
}

void sub_100205C6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10079B9D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100205CB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1001F1234(a3);
    v4 = sub_10079B9D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 _s14descr100A007F9C5StateV9SkipStateVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100205D54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100205D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudiobookNowPlaying.ButtonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudiobookNowPlaying.ButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100205F50()
{
  result = qword_100AD5078;
  if (!qword_100AD5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5078);
  }

  return result;
}

unint64_t sub_100205FA8()
{
  result = qword_100AD5080;
  if (!qword_100AD5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5080);
  }

  return result;
}

unint64_t sub_100206000()
{
  result = qword_100AD5088;
  if (!qword_100AD5088)
  {
    type metadata accessor for AudiobookNowPlayingViewModel.Chapter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5088);
  }

  return result;
}

uint64_t sub_10020606C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_10079B8B4();
  *a1 = result;
  return result;
}

unint64_t sub_1002060B4()
{
  result = qword_100AD5A80;
  if (!qword_100AD5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5A80);
  }

  return result;
}

uint64_t sub_100206108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD4FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206178(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD4FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100206200()
{
  v1 = [*(*(v0 + 16) + 16) activeCookiesForDefaultURL];
  if (v1)
  {
    v2 = v1;
    sub_10020694C();
    v3 = sub_1007A2044();

    if (*(v3 + 16) && (v4 = sub_10000E53C(0x62615F7078, 0xE500000000000000), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = [v6 value];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1007A2254();
        v11 = v10;

        v12 = sub_100206998(v9, v11);

        v15 = sub_100206CA0(v12);
        v17 = v16;

        v18 = v17;
        v1 = v15;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v1 = 0;
  }

  v18 = 0;
LABEL_9:
  v13 = *(v0 + 8);

  return v13(v1, v18);
}

uint64_t sub_1002063C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100206434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002064C4;

  return sub_1002061E0();
}

uint64_t sub_1002064C4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1002065D4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1007A3AB4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1007A3AB4();
    }
  }

  return result;
}

uint64_t sub_100206678@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v5 = sub_1001F1160(&qword_100AD5318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v22 = *a1;
  v23 = v9;
  v24 = v10;
  sub_1007996B4();
  v21[2] = 58;
  v21[3] = 0xE100000000000000;
  sub_100206F20();
  sub_1002060B4();
  sub_100005920(&qword_100AD5328, &qword_100AD5318);
  sub_1007A28F4();
  (*(v6 + 8))(v8, v5);
  sub_100206F74();
  v11 = sub_1007A34D4();

  if (*(v11 + 16) == 2)
  {

    v12 = sub_1007A2334();
    v14 = v13;

    if (*(v11 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {

      v16 = sub_1007A2334();
      v18 = v17;

      *a3 = v12;
      a3[1] = v14;
      a3[2] = v16;
      a3[3] = v18;
    }
  }

  else
  {
    sub_100206FC8();
    v19 = swift_allocError();
    *v20 = v11;
    result = swift_willThrow();
    *v25 = v19;
  }

  return result;
}

unint64_t sub_10020694C()
{
  result = qword_100AD5310;
  if (!qword_100AD5310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD5310);
  }

  return result;
}

void *sub_100206998(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&qword_100AD5318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  sub_1007996B4();
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_100206E78();
  sub_1002060B4();
  sub_100005920(&qword_100AD5328, &qword_100AD5318);
  sub_1007A28F4();
  (*(v6 + 8))(v8, v5);
  sub_100206ECC();
  v9 = sub_1007A34D4();

  v10 = *(v9 + 16);
  if (v10)
  {
    v32 = _swiftEmptyArrayStorage;
    result = sub_1003BD094(0, v10, 0);
    v12 = 0;
    v13 = v32;
    v14 = (v9 + 56);
    v25 = v10;
    v26 = v9;
    while (v12 < *(v9 + 16))
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v28 = *(v14 - 3);
      v29 = v15;
      v30 = v16;

      sub_100206678(&v28, &v34, v31);
      if (v2)
      {

        return v13;
      }

      v27 = 0;

      v17 = v31[0];
      v18 = v31[1];
      v19 = v31[2];
      v20 = v31[3];
      v32 = v13;
      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1003BD094((v21 > 1), v22 + 1, 1);
        v13 = v32;
      }

      ++v12;
      v13[2] = v22 + 1;
      v23 = &v13[4 * v22];
      v23[4] = v17;
      v23[5] = v18;
      v23[6] = v19;
      v23[7] = v20;
      v14 += 4;
      v9 = v26;
      v2 = v27;
      if (v25 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100206CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1003BD0CC(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v13 = *(v3 - 3);
      v14 = *(v3 - 2);
      swift_bridgeObjectRetain_n();

      v15._countAndFlagsBits = 58;
      v15._object = 0xE100000000000000;
      sub_1007A23D4(v15);

      v16._countAndFlagsBits = v4;
      v16._object = v5;
      sub_1007A23D4(v16);

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_1003BD0CC((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v13;
      v8[5] = v14;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0);
  v9 = sub_1007A20B4();
  v11 = v10;

  v17._countAndFlagsBits = v9;
  v17._object = v11;
  sub_1007A23D4(v17);

  v18._countAndFlagsBits = 125;
  v18._object = 0xE100000000000000;
  sub_1007A23D4(v18);
  return 123;
}

unint64_t sub_100206E78()
{
  result = qword_100AD5320;
  if (!qword_100AD5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5320);
  }

  return result;
}

unint64_t sub_100206ECC()
{
  result = qword_100AD61C0;
  if (!qword_100AD61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD61C0);
  }

  return result;
}

unint64_t sub_100206F20()
{
  result = qword_100AD5330;
  if (!qword_100AD5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5330);
  }

  return result;
}

unint64_t sub_100206F74()
{
  result = qword_100AD5338;
  if (!qword_100AD5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5338);
  }

  return result;
}

unint64_t sub_100206FC8()
{
  result = qword_100AD5340;
  if (!qword_100AD5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5340);
  }

  return result;
}

uint64_t sub_100207028(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_100207070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002070BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100207104(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100207158(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10020717C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002071C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10020724C()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 24);
  result = *(v0 + 16);
  v8 = result;
  if ((v9 & 1) == 0)
  {

    sub_1007A29C4();
    v6 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v8, &qword_100AD55D0);
    (*(v2 + 8))(v4, v1);
    return v7[1];
  }

  return result;
}

uint64_t sub_1002073A4()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 40);
  v5 = *(v0 + 32);
  v9 = v5;
  if (v10 != 1)
  {

    sub_1007A29C4();
    v6 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v9, &qword_100AD55B8);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

BOOL sub_100207504()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  v5 = *(v0 + 16);
  v9 = v5;
  if ((v10 & 1) == 0)
  {

    sub_1007A29C4();
    v6 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v9, &qword_100AD55D0);
    (*(v2 + 8))(v4, v1);
    v5 = v8[1];
  }

  return v5 == 2;
}

uint64_t sub_100207664@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v83 = sub_10079CCF4();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1001F1160(&qword_100AD53E8);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v5 = &v73 - v4;
  v74 = sub_1001F1160(&qword_100AD53D8);
  __chkstk_darwin(v74);
  v7 = &v73 - v6;
  v77 = sub_1001F1160(&qword_100AD53C0);
  __chkstk_darwin(v77);
  v9 = &v73 - v8;
  v80 = sub_1001F1160(&qword_100AD5400);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v11 = &v73 - v10;
  v84 = sub_1001F1160(&qword_100AD53A8);
  __chkstk_darwin(v84);
  v78 = &v73 - v12;
  v88 = sub_1001F1160(&qword_100AD5408);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v73 - v13;
  v91 = sub_1001F1160(&qword_100AD53A0);
  v14 = __chkstk_darwin(v91);
  v87 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v89 = &v73 - v17;
  __chkstk_darwin(v16);
  v90 = &v73 - v18;
  v98 = *(v1 + 88);
  v99 = *(v1 + 104);
  v93 = *(v1 + 88);
  v94 = *(v1 + 104);
  sub_1001F1160(&qword_100AD5410);
  sub_10079DFF4();
  v19 = 0.0;
  v20 = 0.0;
  if (v96 != 0.0)
  {
    v93 = v98;
    v94 = v99;
    sub_10079DFF4();
    if ((44.0 - v96) * 0.5 < 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = (44.0 - v96) * 0.5;
    }
  }

  v93 = v98;
  v94 = v99;
  v21 = sub_10079DFF4();
  if (v97 != 0.0)
  {
    v93 = v98;
    v94 = v99;
    v21 = sub_10079DFF4();
    if ((44.0 - v97) * 0.5 < 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = (44.0 - v97) * 0.5;
    }
  }

  __chkstk_darwin(v21);
  *(&v73 - 4) = v1;
  *(&v73 - 3) = v19;
  *(&v73 - 2) = v20;

  sub_1001F1160(&qword_100AD5418);
  sub_10020A64C();
  sub_10079E054();
  sub_1001F1160(&qword_100AE17F0);
  inited = swift_initStackObject();
  v73 = xmmword_10080EFF0;
  *(inited + 16) = xmmword_10080EFF0;
  v23 = sub_10079D2A4();
  *(inited + 32) = v23;
  v24 = sub_10079D2B4();
  *(inited + 33) = v24;
  v25 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v23)
  {
    v25 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v24)
  {
    v25 = sub_10079D2D4();
  }

  v26 = v11;
  sub_10079BBA4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  (*(v75 + 32))(v7, v5, v76);
  v35 = &v7[*(v74 + 36)];
  *v35 = v25;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = swift_initStackObject();
  *(v36 + 16) = v73;
  v37 = sub_10079D2C4();
  *(v36 + 32) = v37;
  v38 = sub_10079D2E4();
  *(v36 + 33) = v38;
  v39 = sub_10079D2D4();
  sub_10079D2D4();
  v40 = sub_10079D2D4();
  v41 = v78;
  if (v40 != v37)
  {
    v39 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v38)
  {
    v39 = sub_10079D2D4();
  }

  v42 = v84;
  sub_10079BBA4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_10020B3C8(v7, v9, &qword_100AD53D8);
  v51 = &v9[*(v77 + 36)];
  *v51 = v39;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = v81;
  sub_10079C464();
  sub_10020AB80(&qword_100AD53C8, &qword_100AD53C0, &unk_100810188, sub_10020A588);
  sub_10020B278(&qword_100AD53F0, &type metadata accessor for HighlightHoverEffect);
  v53 = v83;
  sub_10079D6F4();
  (*(v82 + 8))(v52, v53);
  sub_100007840(v9, &qword_100AD53C0);
  v54 = *v2;
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = v54;
    sub_10079B9A4();

    v56 = v93;
    KeyPath = swift_getKeyPath();
    (*(v79 + 32))(v41, v26, v80);
    v58 = (v41 + *(v42 + 36));
    *v58 = KeyPath;
    v58[1] = v56;
    if (qword_100AD17C8 != -1)
    {
      swift_once();
    }

    v59 = sub_1001F1160(&qword_100AD53B0);
    sub_100008B98(v59, qword_100B23478);
    v60 = sub_10020A410();
    v61 = sub_100005920(&qword_100AE40D0, &qword_100AD53B0);
    v62 = v85;
    sub_10079D7E4();
    sub_100007840(v41, &qword_100AD53A8);
    v96 = COERCE_DOUBLE(sub_1002090BC());
    v97 = v63;
    *&v93 = v42;
    *(&v93 + 1) = v59;
    v94 = v60;
    v95 = v61;
    swift_getOpaqueTypeConformance2();
    sub_100206ECC();
    v64 = v87;
    v65 = v88;
    sub_10079D8E4();

    (*(v86 + 8))(v62, v65);
    *&v93 = sub_100209570(*(v2 + 48), *(v2 + 56));
    *(&v93 + 1) = v66;
    v67 = v89;
    sub_10079C1E4();

    sub_100007840(v64, &qword_100AD53A0);
    sub_1002073A4();
    v68 = v90;
    sub_10079C224();
    sub_100007840(v67, &qword_100AD53A0);
    v69 = swift_getKeyPath();
    v70 = v92;
    sub_10002AE48(v68, v92);
    result = sub_1001F1160(&qword_100AD5350);
    v72 = v70 + *(result + 36);
    *v72 = v69;
    *(v72 + 8) = 0;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10020B278(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002082C8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1001F1160(&qword_100AD55C0);
  __chkstk_darwin(v8);
  v10 = &v128 - v9;
  *&v136 = sub_1001F1160(&qword_100AD5470);
  __chkstk_darwin(v136);
  v12 = &v128 - v11;
  v137 = sub_1001F1160(&qword_100AD5460);
  __chkstk_darwin(v137);
  *&v138 = &v128 - v13;
  v14 = sub_1001F1160(&qword_100AD5450);
  __chkstk_darwin(v14);
  v16 = &v128 - v15;
  v139 = sub_1001F1160(&qword_100AD5440);
  v17 = __chkstk_darwin(v139);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v128 - v20;
  if (sub_100207504())
  {
    v128 = v19;
    v129 = v14;
    v130 = v16;
    v131 = v21;
    v132 = a3;
    v133 = a4;
    v134 = v8;
    v135 = a2;
    sub_100208E78(&v166);
    v146 = v172;
    v147 = v173;
    v148 = v174;
    v149 = v175;
    v142 = v168;
    v143 = v169;
    v144 = v170;
    v145 = v171;
    v140 = v166;
    v141 = v167;
    v22 = sub_10079D2F4();
    sub_10079BBA4();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v150[0] = 0;
    v31 = sub_10079D284();
    sub_10079BBA4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    LOBYTE(v162[0]) = 0;
    type metadata accessor for ChromeStyle();
    sub_10020B278(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    v40 = sub_10079C484();
    v42 = v41;
    v43 = &v12[*(sub_1001F1160(&qword_100AD5490) + 36)];
    v44 = enum case for RoundedCornerStyle.continuous(_:);
    v45 = sub_10079C9E4();
    (*(*(v45 - 8) + 104))(v43, v44, v45);
    *&v43[*(sub_1001F1160(&unk_100AE42C0) + 36)] = 256;
    v46 = v147;
    *(v12 + 6) = v146;
    *(v12 + 7) = v46;
    v47 = v149;
    *(v12 + 8) = v148;
    *(v12 + 9) = v47;
    v48 = v143;
    *(v12 + 2) = v142;
    *(v12 + 3) = v48;
    v49 = v145;
    *(v12 + 4) = v144;
    *(v12 + 5) = v49;
    v50 = v141;
    *v12 = v140;
    *(v12 + 1) = v50;
    *(v12 + 80) = 257;
    v12[168] = v22;
    *(v12 + 22) = v24;
    *(v12 + 23) = v26;
    *(v12 + 24) = v28;
    *(v12 + 25) = v30;
    v12[208] = 0;
    v12[216] = v31;
    *(v12 + 28) = v33;
    *(v12 + 29) = v35;
    *(v12 + 30) = v37;
    *(v12 + 31) = v39;
    v12[256] = 0;
    *(v12 + 33) = 0x3FF0000000000000;
    *(v12 + 34) = v40;
    *(v12 + 35) = v42;
    v51 = swift_allocObject();
    v52 = a1[5];
    v51[5] = a1[4];
    v51[6] = v52;
    v51[7] = a1[6];
    v53 = a1[1];
    v51[1] = *a1;
    v51[2] = v53;
    v54 = a1[3];
    v51[3] = a1[2];
    v51[4] = v54;
    sub_10020B2C4(a1, v162);
    v55 = sub_10079E474();
    v57 = v56;
    v58 = &v12[*(sub_1001F1160(&qword_100AD5480) + 36)];
    *v58 = sub_100364208;
    v58[1] = 0;
    v58[2] = v55;
    v58[3] = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_10020B540;
    *(v59 + 24) = v51;
    v60 = &v12[*(v136 + 36)];
    *v60 = sub_10020B544;
    v60[1] = v59;
    sub_1001F1160(&qword_100AE17F0);
    v61 = swift_allocObject();
    v136 = xmmword_10080EFF0;
    *(v61 + 16) = xmmword_10080EFF0;
    LOBYTE(v42) = sub_10079D2A4();
    *(v61 + 32) = v42;
    v62 = sub_10079D2B4();
    *(v61 + 33) = v62;
    v63 = sub_10079D2D4();
    sub_10079D2D4();
    if (sub_10079D2D4() != v42)
    {
      v63 = sub_10079D2D4();
    }

    sub_10079D2D4();
    v64 = sub_10079D2D4();
    v65 = v138;
    if (v64 != v62)
    {
      v63 = sub_10079D2D4();
    }

    sub_10079BBA4();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    sub_10020B3C8(v12, v65, &qword_100AD5470);
    v74 = v65 + *(v137 + 36);
    *v74 = v63;
    *(v74 + 8) = v67;
    *(v74 + 16) = v69;
    *(v74 + 24) = v71;
    *(v74 + 32) = v73;
    *(v74 + 40) = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = v136;
    v76 = sub_10079D2C4();
    *(v75 + 32) = v76;
    v77 = sub_10079D2E4();
    *(v75 + 33) = v77;
    v78 = sub_10079D2D4();
    sub_10079D2D4();
    if (sub_10079D2D4() != v76)
    {
      v78 = sub_10079D2D4();
    }

    sub_10079D2D4();
    if (sub_10079D2D4() != v77)
    {
      v78 = sub_10079D2D4();
    }

    v80 = v129;
    v79 = v130;
    sub_10079BBA4();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    sub_10020B3C8(v65, v79, &qword_100AD5460);
    v89 = v79 + *(v80 + 36);
    *v89 = v78;
    *(v89 + 8) = v82;
    *(v89 + 16) = v84;
    *(v89 + 24) = v86;
    *(v89 + 32) = v88;
    *(v89 + 40) = 0;
    v90 = v79;
    v91 = v128;
    sub_10020B3C8(v90, v128, &qword_100AD5450);
    *(v91 + *(v139 + 36)) = 0;
    v92 = v131;
    sub_10020B3C8(v91, v131, &qword_100AD5440);
    sub_1000077D8(v92, v10, &qword_100AD5440);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AD5570);
    sub_10020A75C();
    sub_10020AF38();
    sub_10079CCA4();
    return sub_100007840(v92, &qword_100AD5440);
  }

  else
  {
    sub_100208E78(v161);
    v157 = v161[6];
    v158 = v161[7];
    v159 = v161[8];
    v160 = v161[9];
    v153 = v161[2];
    v154 = v161[3];
    v155 = v161[4];
    v156 = v161[5];
    v151 = v161[0];
    v152 = v161[1];
    v94 = swift_allocObject();
    v95 = a1[5];
    v94[5] = a1[4];
    v94[6] = v95;
    v94[7] = a1[6];
    v96 = a1[1];
    v94[1] = *a1;
    v94[2] = v96;
    v97 = a1[3];
    v94[3] = a1[2];
    v94[4] = v97;
    sub_10020B2C4(a1, &v166);
    v98 = sub_10079E474();
    v100 = v99;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_10020B2C0;
    *(v101 + 24) = v94;
    v162[6] = v157;
    v162[7] = v158;
    v162[8] = v159;
    v162[9] = v160;
    v162[2] = v153;
    v162[3] = v154;
    v162[4] = v155;
    v162[5] = v156;
    v162[0] = v151;
    v162[1] = v152;
    LOWORD(v163) = 257;
    *(&v163 + 1) = sub_100364208;
    *&v164 = 0;
    *(&v164 + 1) = v98;
    v165 = v100;
    v193 = v100;
    v187 = v157;
    v188 = v158;
    v190 = v160;
    v189 = v159;
    v183 = v153;
    v184 = v154;
    v186 = v156;
    v185 = v155;
    v182 = v152;
    v181 = v151;
    v191 = v163;
    v192 = v164;
    v172 = v157;
    v173 = v158;
    v174 = v159;
    v175 = v160;
    v168 = v153;
    v169 = v154;
    v170 = v155;
    v171 = v156;
    v166 = v151;
    v167 = v152;
    v176 = 257;
    v177 = sub_100364208;
    v178 = 0;
    v179 = v98;
    v180 = v100;
    sub_1000077D8(v162, v150, &qword_100AD55B0);
    sub_100007840(&v166, &qword_100AD55B0);
    sub_1001F1160(&qword_100AE17F0);
    v102 = swift_allocObject();
    v138 = xmmword_10080EFF0;
    *(v102 + 16) = xmmword_10080EFF0;
    v103 = sub_10079D2A4();
    *(v102 + 32) = v103;
    v104 = sub_10079D2B4();
    *(v102 + 33) = v104;
    v105 = sub_10079D2D4();
    sub_10079D2D4();
    if (sub_10079D2D4() != v103)
    {
      v105 = sub_10079D2D4();
    }

    sub_10079D2D4();
    if (sub_10079D2D4() != v104)
    {
      v105 = sub_10079D2D4();
    }

    sub_10079BBA4();
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v113 = v112;
    LOBYTE(v151) = 0;
    v114 = swift_allocObject();
    *(v114 + 16) = v138;
    v115 = sub_10079D2C4();
    *(v114 + 32) = v115;
    v116 = sub_10079D2E4();
    *(v114 + 33) = v116;
    v117 = sub_10079D2D4();
    sub_10079D2D4();
    if (sub_10079D2D4() != v115)
    {
      v117 = sub_10079D2D4();
    }

    sub_10079D2D4();
    if (sub_10079D2D4() != v116)
    {
      v117 = sub_10079D2D4();
    }

    sub_10079BBA4();
    v150[0] = 0;
    v118 = v192;
    *(v10 + 10) = v191;
    *(v10 + 11) = v118;
    *(v10 + 24) = v193;
    v119 = v188;
    *(v10 + 6) = v187;
    *(v10 + 7) = v119;
    v120 = v190;
    *(v10 + 8) = v189;
    *(v10 + 9) = v120;
    v121 = v184;
    *(v10 + 2) = v183;
    *(v10 + 3) = v121;
    v122 = v186;
    *(v10 + 4) = v185;
    *(v10 + 5) = v122;
    v123 = v182;
    *v10 = v181;
    *(v10 + 1) = v123;
    *(v10 + 25) = sub_10020B2FC;
    *(v10 + 26) = v101;
    v10[216] = v105;
    *(v10 + 28) = v107;
    *(v10 + 29) = v109;
    *(v10 + 30) = v111;
    *(v10 + 31) = v113;
    v10[256] = 0;
    v10[264] = v117;
    *(v10 + 34) = v124;
    *(v10 + 35) = v125;
    *(v10 + 36) = v126;
    *(v10 + 37) = v127;
    *(v10 + 152) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AD5570);
    sub_10020A75C();
    sub_10020AF38();
    return sub_10079CCA4();
  }
}

uint64_t sub_100208E78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C8F4();
  v22 = 0;
  sub_1002099DC(v1, &v17);
  v24 = v18;
  v25 = v19;
  v26[0] = v20[0];
  *(v26 + 9) = *(v20 + 9);
  v23 = v17;
  v27[2] = v19;
  v28[0] = v20[0];
  *(v28 + 9) = *(v20 + 9);
  v27[0] = v17;
  v27[1] = v18;
  sub_1000077D8(&v23, v16, &qword_100AD55C8);
  sub_100007840(v27, &qword_100AD55C8);
  *&v21[23] = v24;
  *&v21[39] = v25;
  *&v21[55] = v26[0];
  *&v21[64] = *(v26 + 9);
  *&v21[7] = v23;
  v4 = v1[7];
  v5 = *v1;
  if (*v1)
  {
    v6 = v22;
    v7 = v1[6];
    swift_getKeyPath();
    swift_getKeyPath();

    v8 = v5;
    sub_10079B9A4();

    v9 = v17;
    KeyPath = swift_getKeyPath();
    sub_10020724C();
    if (sub_1007A2BB4())
    {
      v11 = sub_10079D4B4();
    }

    else
    {
      v11 = sub_10079D354();
    }

    v12 = v11;
    result = swift_getKeyPath();
    v14 = *v21;
    *(a1 + 33) = *&v21[16];
    v15 = *&v21[48];
    *(a1 + 49) = *&v21[32];
    *(a1 + 65) = v15;
    *(a1 + 81) = *&v21[64];
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 16) = v6;
    *(a1 + 17) = v14;
    *(a1 + 104) = 0;
    *(a1 + 112) = v7;
    *(a1 + 120) = v4;
    *(a1 + 128) = KeyPath;
    *(a1 + 136) = v9;
    *(a1 + 144) = result;
    *(a1 + 152) = v12;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10020B278(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002090BC()
{
  v1 = sub_100796CF4();
  v32 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v28 - v5;
  v7 = sub_1007A21D4();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = sub_10079C824();
  v14 = __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v0 + 40);
  v18 = *(v0 + 32);
  v34 = v18;
  if (v35 == 1)
  {
    if (v18)
    {
      return 0;
    }
  }

  else
  {
    v28 = v15;
    v29 = v14;

    sub_1007A29C4();
    v20 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v34, &qword_100AD55B8);
    (*(v28 + 8))(v17, v29);
    if (v33)
    {
      return 0;
    }
  }

  v21 = v30;
  v22 = (v30 + 16);
  v23 = v32;
  v24 = (v32 + 16);
  sub_1007A2154();
  sub_100796C94();
  v25 = v31;
  (*v22)(v10, v12, v31);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*v24)(v4, v6, v1);
  v27 = sub_1007A22D4();
  (*(v23 + 8))(v6, v1);
  (*(v21 + 8))(v12, v25);
  return v27;
}

uint64_t sub_100209570(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = sub_1007A21D4();
  v37 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v33 - v13;
  v14 = sub_10079C824();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v2 + 40);
  v18 = *(v2 + 32);
  v41 = v18;
  if (v42 == 1)
  {
    if (v18)
    {
      return 0;
    }
  }

  else
  {

    sub_1007A29C4();
    v20 = sub_10079D244();
    v34 = v7;
    v21 = v9;
    v22 = v10;
    v23 = v4;
    v24 = v3;
    v25 = v20;
    sub_10079AB44();

    v3 = v24;
    v4 = v23;
    v10 = v22;
    v9 = v21;
    v7 = v34;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v41, &qword_100AD55B8);
    (*(v15 + 8))(v17, v14);
    if (v40)
    {
      return 0;
    }
  }

  v26 = v36;
  sub_1007A2154();
  sub_100796C94();
  v27 = v37;
  (*(v37 + 16))(v35, v26, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v4 + 16))(v7, v9, v3);
  sub_1007A22D4();
  (*(v4 + 8))(v9, v3);
  (*(v27 + 8))(v26, v10);
  sub_1001F1160(&unk_100AD5090);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10080B690;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_10000E4C4();
  v31 = v39;
  *(v30 + 32) = v38;
  *(v30 + 40) = v31;

  v32 = sub_1007A2224();

  return v32;
}

__n128 sub_1002099DC@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 64))
  {
    sub_10079DF24();
    sub_100206ECC();

    v2 = sub_10079D5D4();
    v4 = v3;
    v6 = v5 & 1;

    sub_1001F1894(v2, v4, v6);

    sub_1001F1894(32, 0xE100000000000000, 0);

    sub_1001F1894(v2, v4, v6);

    sub_10020B430(v2, v4, v6);

    sub_10020B430(32, 0xE100000000000000, 0);

    sub_1001F1160(&qword_100AD55D8);
    sub_1001F1160(&qword_100AD55E0);
    sub_100005920(&qword_100AD55E8, &qword_100AD55D8);
    sub_100005920(&qword_100AD55F0, &qword_100AD55E0);
    sub_10079CCA4();
    sub_10020B430(v2, v4, v6);
  }

  else
  {
    sub_100206ECC();

    v7 = sub_10079D5D4();
    v9 = v8;
    v11 = v10;
    sub_10079DF24();
    sub_1001F1894(v7, v9, v11 & 1);

    sub_1001F1894(v7, v9, v11 & 1);

    sub_1001F1894(32, 0xE100000000000000, 0);

    sub_10020B430(32, 0xE100000000000000, 0);

    sub_10020B430(v7, v9, v11 & 1);

    sub_1001F1160(&qword_100AD55D8);
    sub_1001F1160(&qword_100AD55E0);
    sub_100005920(&qword_100AD55E8, &qword_100AD55D8);
    sub_100005920(&qword_100AD55F0, &qword_100AD55E0);
    sub_10079CCA4();

    sub_10020B430(v7, v9, v11 & 1);
  }

  *v18 = *v17;
  *&v18[9] = *&v17[9];
  a2[2] = v16;
  a2[3] = *v18;
  *(a2 + 57) = *&v17[9];
  result = v15;
  *a2 = v14;
  a2[1] = v15;
  return result;
}

uint64_t sub_100209E4C()
{
  v1 = sub_1001F1160(&qword_100AD5348);
  __chkstk_darwin(v1);
  v3 = v11 - v2;
  v4 = sub_1001F1160(&qword_100AD5350);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  v7 = v0[5];
  v11[4] = v0[4];
  v11[5] = v7;
  v11[6] = v0[6];
  v8 = v0[1];
  v11[0] = *v0;
  v11[1] = v8;
  v9 = v0[3];
  v11[2] = v0[2];
  v11[3] = v9;
  sub_100207664(v11 - v5);
  sub_10002ADC0(v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_1001F1160(&qword_100AD5358);
  sub_100209FD4();
  sub_10020A200();
  sub_10079CCA4();
  return sub_100007840(v6, &qword_100AD5350);
}

unint64_t sub_100209FD4()
{
  result = qword_100AD5360;
  if (!qword_100AD5360)
  {
    sub_1001F1234(&qword_100AD5358);
    sub_1001F1234(&qword_100AD5368);
    sub_10079CDF4();
    sub_10020A11C();
    sub_10020B278(&qword_100AD5388, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10020B278(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5360);
  }

  return result;
}

unint64_t sub_10020A11C()
{
  result = qword_100AD5370;
  if (!qword_100AD5370)
  {
    sub_1001F1234(&qword_100AD5368);
    sub_100005920(&qword_100AD5378, &qword_100AD5380);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5370);
  }

  return result;
}

unint64_t sub_10020A200()
{
  result = qword_100AD5390;
  if (!qword_100AD5390)
  {
    sub_1001F1234(&qword_100AD5350);
    sub_10020A2B8();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5390);
  }

  return result;
}

unint64_t sub_10020A2B8()
{
  result = qword_100AD5398;
  if (!qword_100AD5398)
  {
    sub_1001F1234(&qword_100AD53A0);
    sub_1001F1234(&qword_100AD53A8);
    sub_1001F1234(&qword_100AD53B0);
    sub_10020A410();
    sub_100005920(&qword_100AE40D0, &qword_100AD53B0);
    swift_getOpaqueTypeConformance2();
    sub_10020B278(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5398);
  }

  return result;
}

unint64_t sub_10020A410()
{
  result = qword_100AD53B8;
  if (!qword_100AD53B8)
  {
    sub_1001F1234(&qword_100AD53A8);
    sub_1001F1234(&qword_100AD53C0);
    sub_10079CCF4();
    sub_10020AB80(&qword_100AD53C8, &qword_100AD53C0, &unk_100810188, sub_10020A588);
    sub_10020B278(&qword_100AD53F0, &type metadata accessor for HighlightHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD53B8);
  }

  return result;
}

unint64_t sub_10020A588()
{
  result = qword_100AD53D0;
  if (!qword_100AD53D0)
  {
    sub_1001F1234(&qword_100AD53D8);
    sub_100005920(&qword_100AD53E0, &qword_100AD53E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD53D0);
  }

  return result;
}

unint64_t sub_10020A64C()
{
  result = qword_100AD5420;
  if (!qword_100AD5420)
  {
    sub_1001F1234(&qword_100AD5418);
    sub_10020A6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5420);
  }

  return result;
}

unint64_t sub_10020A6D0()
{
  result = qword_100AD5428;
  if (!qword_100AD5428)
  {
    sub_1001F1234(&qword_100AD5430);
    sub_10020A75C();
    sub_10020AF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5428);
  }

  return result;
}

unint64_t sub_10020A75C()
{
  result = qword_100AD5438;
  if (!qword_100AD5438)
  {
    sub_1001F1234(&qword_100AD5440);
    sub_10020AB80(&qword_100AD5448, &qword_100AD5450, &unk_1008101D0, sub_10020A840);
    sub_100005920(&qword_100AD5558, &qword_100AD5560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5438);
  }

  return result;
}

unint64_t sub_10020A870()
{
  result = qword_100AD5468;
  if (!qword_100AD5468)
  {
    sub_1001F1234(&qword_100AD5470);
    sub_10020A928();
    sub_100005920(&qword_100AD5548, &qword_100AD5550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5468);
  }

  return result;
}

unint64_t sub_10020A928()
{
  result = qword_100AD5478;
  if (!qword_100AD5478)
  {
    sub_1001F1234(&qword_100AD5480);
    sub_10020A9E0();
    sub_100005920(&qword_100AD5538, &qword_100AD5540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5478);
  }

  return result;
}

unint64_t sub_10020A9E0()
{
  result = qword_100AD5488;
  if (!qword_100AD5488)
  {
    sub_1001F1234(&qword_100AD5490);
    sub_10020AA98();
    sub_100005920(&qword_100AD5530, &unk_100AE42C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5488);
  }

  return result;
}

unint64_t sub_10020AA98()
{
  result = qword_100AD5498;
  if (!qword_100AD5498)
  {
    sub_1001F1234(&qword_100AD54A0);
    sub_10020AB80(&qword_100AD54A8, &qword_100AD54B0, &unk_100810200, sub_10020AB50);
    sub_10020AEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5498);
  }

  return result;
}