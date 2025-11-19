uint64_t sub_1AADD20A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1AACE8B84(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 8 * v13) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_1AAD93B78();
    goto LABEL_7;
  }

  sub_1AAD88774(result, a3 & 1);
  result = sub_1AACE8B84(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1AADB3194(a2, v10);
  return sub_1AADD4304(v13, v10, a1, v19);
}

uint64_t sub_1AADD2208(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AADB05C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1AAD891B4(v16, a4 & 1);
      v11 = sub_1AADB05C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1AAD942C4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 32 * v11;

    return sub_1AADD4904(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 32 * v11);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

unint64_t sub_1AADD2388(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AADB0594(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD89460(v14, a3 & 1);
      result = sub_1AADB0594(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1AAD9445C();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 8 * result) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}

uint64_t sub_1AADD24D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1AADB09E4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1AAD8A130(v13, a3 & 1);
      v18 = sub_1AADB09E4(a2);
      if ((v14 & 1) != (v19 & 1))
      {
LABEL_17:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }

      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1AAD94A74();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_1AAD9AB20(a2, v26);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v20 = v16[6] + 40 * v10;
    v21 = v27;
    v22 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v22;
    *(v20 + 32) = v21;
    *(v16[7] + 8 * v10) = a1;
    v23 = v16[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      v16[2] = v25;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

unint64_t sub_1AADD2654(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACB89FC(a2);
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
      sub_1AAD8A400(v14, a3 & 1);
      result = sub_1AACB89FC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1AAD94C28();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
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

uint64_t sub_1AADD27B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AAF8CBA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1AACED27C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1AAD951A4();
    goto LABEL_7;
  }

  sub_1AAD8A664(result, a3 & 1);
  result = sub_1AACED27C(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1AADD4484(v14, v11, a1, v20);
}

unint64_t sub_1AADD294C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AACE1760(a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1AAD8AF44(v16, a4 & 1);
      result = sub_1AACE1760(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1AAD961D8();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_1AADD2AB4(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0AA8(a2);
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
      sub_1AAD8BCD4(v14, a3 & 1);
      v9 = sub_1AADB0AA8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD96C54();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = (v19[6] + 48 * v9);
    v22 = *a2;
    v23 = a2[1];
    *(v21 + 25) = *(a2 + 25);
    *v21 = v22;
    v21[1] = v23;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return sub_1AADD48A8(a2, &v26);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t sub_1AADD2C2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0B14(a2);
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
      sub_1AAD8C184(v14, a3 & 1);
      v9 = sub_1AADB0B14(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD96E0C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = v19[6] + 72 * v9;
    *v21 = *a2;
    v22 = *(a2 + 16);
    v23 = *(a2 + 32);
    v24 = *(a2 + 48);
    *(v21 + 64) = *(a2 + 64);
    *(v21 + 32) = v23;
    *(v21 + 48) = v24;
    *(v21 + 16) = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return sub_1AAD9B8B0(a2, v27);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_1AADD2DB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1AADB0548(a6);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 < v20 || (a5 & 1) != 0)
    {
      sub_1AAD8C7CC(v20, a5 & 1);
      result = sub_1AADB0548(a6);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1AAD96FEC();
      result = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a6;
    v30 = v25[7] + 32 * result;
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = a3 & 1;
    *(v30 + 24) = a4;
    v31 = v25[2];
    v19 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v19)
    {
      v25[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 32 * result;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3 & 1;
  *(v26 + 24) = a4;
  sub_1AAD04750(v27, v28, v29);
}

unint64_t sub_1AADD2F58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1AADB0A28(a1, a2, a3 & 1, a4);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 < v20 || (a5 & 1) != 0)
    {
      sub_1AAD8CA7C(v20, a5 & 1);
      result = sub_1AADB0A28(a1, a2, a3 & 1, a4);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1AAD97160();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * result) = a6;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v26 = v25[6] + 32 * result;
  *v26 = a1;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3 & 1;
  *(v26 + 24) = a4;
  *(v25[7] + 8 * result) = a6;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;
  sub_1AACD7304(a1, a2, a3 & 1);
}

unint64_t sub_1AADD30F8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AADB0548(a4);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1AAD8CD74(v16, a3 & 1);
      result = sub_1AADB0548(a4);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1AAD97300();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a4;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_1AADD3254(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AADB05C0(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1AAD8CFF0(v16, a3 & 1);
      result = sub_1AADB05C0(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1AAD9745C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_1AADD33B0(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AADB0454(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_1AAD93DA0();
    result = v19;
    goto LABEL_8;
  }

  sub_1AAD88ADC(v16, a2 & 1);
  result = sub_1AADB0454(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v23 = v21[6] + 72 * result;
    *v23 = *a1;
    v24 = *(a1 + 16);
    v25 = *(a1 + 32);
    v26 = *(a1 + 48);
    *(v23 + 64) = *(a1 + 64);
    *(v23 + 32) = v25;
    *(v23 + 48) = v26;
    *(v23 + 16) = v24;
    v27 = (v21[7] + 16 * result);
    *v27 = a3;
    v27[1] = a4;
    v28 = v21[2];
    v15 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v15)
    {
      v21[2] = v29;
      return sub_1AAD9B9C0(a1, v30);
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AADD351C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1AACE1760(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for ChartContentRenderContext.Bins(0);
        return sub_1AADD49BC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ChartContentRenderContext.Bins);
      }

      return sub_1AADD4704(v10, a2, a1, v16, type metadata accessor for ChartContentRenderContext.Bins, type metadata accessor for ChartContentRenderContext.Bins);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1AAD975B8();
      goto LABEL_7;
    }

    sub_1AAD8D288(v13, a3 & 1);
    v20 = sub_1AACE1760(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_1AADD4704(v10, a2, a1, v16, type metadata accessor for ChartContentRenderContext.Bins, type metadata accessor for ChartContentRenderContext.Bins);
    }
  }

  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

unint64_t sub_1AADD3678(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AADB0B80(a3, a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_1AAD97814();
    result = v19;
    goto LABEL_8;
  }

  sub_1AAD8D610(v16, a2 & 1);
  result = sub_1AADB0B80(a3, a4);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
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

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AADD37D8(uint64_t *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v7 = *a1;
  v9 = a1[2];
  v8 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v31 = a1[1];
  v32 = a1[8];
  v33 = a1[9];
  v34 = a1[10];
  v35 = a1[11];
  v36 = a1[12];
  v37 = a1[13];
  v38 = a1[14];
  v39 = a1[15];
  v40 = a1[16];
  v41 = a1[17];
  v42 = a1[18];
  v43 = a1[19];
  v44 = a1[20];
  v45 = a1[21];
  v46 = a1[22];
  v54 = a1[26];
  v56 = a1[27];
  v14 = a1[29];
  v58 = a1[28];
  v15 = a1[36];
  v47 = a1[30];
  v48 = a1[23];
  v49 = a1[31];
  v50 = a1[24];
  v51 = a1[32];
  v52 = a1[25];
  v53 = a1[33];
  v55 = a1[34];
  v57 = a1[35];
  v16 = a1[37];
  v17 = *v3;
  v18 = sub_1AADB0D50(a2);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_12;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 >= v23 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    v26 = v18;
    sub_1AAD97E1C();
    v18 = v26;
    goto LABEL_8;
  }

  sub_1AAD8E1B4(v23, a3 & 1);
  v18 = sub_1AADB0D50(a2);
  if ((v24 & 1) != (v27 & 1))
  {
LABEL_12:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

LABEL_8:
  if (v24)
  {
    v28 = (*(*v4 + 56) + 304 * v18);
    memcpy(__dst, v28, sizeof(__dst));
    *v28 = v7;
    v28[1] = v31;
    v28[6] = v12;
    v28[7] = v13;
    v28[2] = v9;
    v28[3] = v8;
    v28[4] = v11;
    v28[5] = v10;
    v28[8] = v32;
    v28[9] = v33;
    v28[10] = v34;
    v28[11] = v35;
    v28[12] = v36;
    v28[13] = v37;
    v28[14] = v38;
    v28[15] = v39;
    v28[16] = v40;
    v28[17] = v41;
    v28[18] = v42;
    v28[19] = v43;
    v28[20] = v44;
    v28[21] = v45;
    v28[22] = v46;
    v28[23] = v48;
    v28[24] = v50;
    v28[25] = v52;
    v28[26] = v54;
    v28[27] = v56;
    v28[28] = v58;
    v28[29] = v14;
    v28[30] = v47;
    v28[31] = v49;
    v28[32] = v51;
    v28[33] = v53;
    v28[34] = v55;
    v28[35] = v57;
    v28[36] = v15;
    v28[37] = v16;
    return sub_1AADD484C(__dst);
  }

  else
  {
    v60[0] = v7;
    v60[1] = v31;
    v60[6] = v12;
    v60[7] = v13;
    v30 = *v4;
    v60[2] = v9;
    v60[3] = v8;
    v60[4] = v11;
    v60[5] = v10;
    v60[8] = v32;
    v60[9] = v33;
    v60[10] = v34;
    v60[11] = v35;
    v60[12] = v36;
    v60[13] = v37;
    v60[14] = v38;
    v60[15] = v39;
    v60[16] = v40;
    v60[17] = v41;
    v60[18] = v42;
    v60[19] = v43;
    v60[20] = v44;
    v60[21] = v45;
    v60[22] = v46;
    v60[23] = v48;
    v60[24] = v50;
    v60[25] = v52;
    v60[26] = v54;
    v60[27] = v56;
    v60[28] = v58;
    v60[29] = v14;
    v60[30] = v47;
    v60[31] = v49;
    v60[32] = v51;
    v60[33] = v53;
    v60[34] = v55;
    v60[35] = v57;
    v60[36] = v15;
    v60[37] = v16;
    sub_1AADD4584(v18, a2, v60, v30);
    return sub_1AAD81BF4(a2, __dst);
  }
}

uint64_t sub_1AADD3B44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0938(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AAD8F6E8(v14, a3 & 1);
      v9 = sub_1AADB0938(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD98974();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

uint64_t sub_1AADD3CA4(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AADB0D50(a2);
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
      sub_1AAD8FDBC(v14, a3 & 1);
      v9 = sub_1AADB0D50(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD98C90();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v22 = v19[6] + 152 * v9;
    v24 = *(a2 + 64);
    v23 = *(a2 + 80);
    v25 = *(a2 + 48);
    *(v22 + 32) = *(a2 + 32);
    *(v22 + 48) = v25;
    *(v22 + 64) = v24;
    *(v22 + 80) = v23;
    v26 = *(a2 + 16);
    *v22 = *a2;
    *(v22 + 16) = v26;
    v27 = *(a2 + 96);
    v28 = *(a2 + 112);
    v29 = *(a2 + 128);
    *(v22 + 144) = *(a2 + 144);
    *(v22 + 112) = v28;
    *(v22 + 128) = v29;
    *(v22 + 96) = v27;
    memcpy((v19[7] + 312 * v9), a1, 0x138uLL);
    v30 = v19[2];
    v13 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v13)
    {
      v19[2] = v31;
      return sub_1AAD81BF4(a2, v32);
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 312 * v9;

  return sub_1AADD4960(a1, v20);
}

uint64_t sub_1AADD3E4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1AACE1760(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for ChartAccessibilityContent.Builder.Bins(0);
        return sub_1AADD49BC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      }

      return sub_1AADD4704(v10, a2, a1, v16, type metadata accessor for ChartAccessibilityContent.Builder.Bins, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1AAD98EC4();
      goto LABEL_7;
    }

    sub_1AAD903E8(v13, a3 & 1);
    v20 = sub_1AACE1760(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_1AADD4704(v10, a2, a1, v16, type metadata accessor for ChartAccessibilityContent.Builder.Bins, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    }
  }

  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

unint64_t sub_1AADD3FA8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACE1760(a2);
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
      sub_1AAD90770(v14, a3 & 1);
      result = sub_1AACE1760(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1AAD99120();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = (v19[7] + 48 * result);
    v22 = *a1;
    v23 = a1[1];
    *(v21 + 25) = *(a1 + 25);
    *v21 = v22;
    v21[1] = v23;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 48 * result;

  return sub_1AADD47F0(a1, v20);
}

uint64_t sub_1AADD4160(uint64_t a1, _OWORD *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_1AADB0E38(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      v13 = sub_1AADB0E38(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      a4();
      v13 = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v25 = (v23[6] + 96 * v13);
    v26 = a2[1];
    *v25 = *a2;
    v25[1] = v26;
    v27 = a2[2];
    v28 = a2[3];
    v29 = a2[4];
    *(v25 + 73) = *(a2 + 73);
    v25[3] = v28;
    v25[4] = v29;
    v25[2] = v27;
    *(v23[7] + 8 * v13) = a1;
    v30 = v23[2];
    v17 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v17)
    {
      v23[2] = v31;
      return sub_1AAD9C17C(a2, &v32);
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * v13) = a1;
}

uint64_t sub_1AADD4304(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CalendarCache.Key(0);
  result = sub_1AADD4A24(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for CalendarCache.Key);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1AADD43B8(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 776 * a1), __src, 0x301uLL);
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

uint64_t sub_1AADD4484(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1AAF8CBA4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1AADD453C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
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

unint64_t sub_1AADD4584(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 272);
  v5 = *(a3 + 280);
  v6 = *(a3 + 288);
  v7 = *(a3 + 296);
  a4[(result >> 6) + 8] |= 1 << result;
  v8 = a4[6] + 152 * result;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v10;
  v11 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v11;
  *(v8 + 144) = *(a2 + 144);
  v12 = *(a2 + 128);
  *(v8 + 112) = *(a2 + 112);
  *(v8 + 128) = v12;
  *(v8 + 96) = *(a2 + 96);
  v13 = a4[7] + 304 * result;
  v14 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 16) = v14;
  v15 = *(a3 + 48);
  *(v13 + 32) = *(a3 + 32);
  *(v13 + 48) = v15;
  v16 = *(a3 + 80);
  *(v13 + 64) = *(a3 + 64);
  *(v13 + 80) = v16;
  v17 = *(a3 + 112);
  *(v13 + 96) = *(a3 + 96);
  *(v13 + 112) = v17;
  v18 = *(a3 + 144);
  *(v13 + 128) = *(a3 + 128);
  *(v13 + 144) = v18;
  v19 = *(a3 + 176);
  *(v13 + 160) = *(a3 + 160);
  *(v13 + 176) = v19;
  v20 = *(a3 + 208);
  *(v13 + 192) = *(a3 + 192);
  *(v13 + 208) = v20;
  v21 = *(a3 + 240);
  *(v13 + 224) = *(a3 + 224);
  *(v13 + 240) = v21;
  *(v13 + 256) = *(a3 + 256);
  *(v13 + 272) = v4;
  *(v13 + 280) = v5;
  *(v13 + 288) = v6;
  *(v13 + 296) = v7;
  v22 = a4[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v24;
  }

  return result;
}

void *sub_1AADD4660(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 152 * a1;
  v6 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v6;
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = *(a2 + 144);
  v7 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v7;
  v8 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v8;
  v9 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v9;
  result = memcpy((a4[7] + 312 * a1), __src, 0x138uLL);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1AADD4704(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1AADD4A24(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
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

unint64_t sub_1AADD47AC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_1AADD484C(uint64_t a1)
{
  sub_1AAD45FFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADD49BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADD4A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AxisMark.foregroundStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  KeyPath = swift_getKeyPath();
  (*(v8 + 16))(v10, a1, a3);
  v20 = sub_1AAF8DA44();
  return sub_1AADD4C3C(v14, KeyPath, &v20, a2, a4);
}

uint64_t sub_1AADD4C3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v9 = *(v8 + *MEMORY[0x1E69E6CE8] + 8);
  v10 = type metadata accessor for ModifiedAxisMark();
  *(a5 + *(v10 + 44)) = a2;
  v11 = *(*(v9 - 8) + 32);
  v12 = a5 + *(v10 + 48);

  return v11(v12, a3, v9);
}

uint64_t AxisMark.font(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a2, v7);
  KeyPath = swift_getKeyPath();
  v14 = a1;
  sub_1AADD4C3C(v9, KeyPath, &v14, a2, a3);
}

uint64_t AxisMark.offset(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a1, v10);
  (*(v9 + 32))(a2, v12, a1);
  result = type metadata accessor for OffsetAxisMark();
  v14 = (a2 + *(result + 36));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

void sub_1AADD4F60()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AADD4FE8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1AADD50EC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1AADD5288()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AAF90274();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AADD533C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v3 + 64);
  v7 = *(v5 + 80);
  if (v4 <= *(v5 + 84))
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v3 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v10 = ((v7 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7) + *(v5 + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_31:
      if (v4 == v9)
      {
        return (*(v3 + 48))();
      }

      v18 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((v18 + v7 + 8) & ~v7);
      }

      v19 = *v18;
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_31;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 <= 3)
    {
      v16 = ((v7 + ((v6 + 7) & 0xFFFFFFF8) + 8) & ~v7) + *(v5 + 64);
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v9 + (v17 | v15) + 1;
}

unsigned int *sub_1AADD5550(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((v8 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + *(v6 + 64);
  if (a3 > v10)
  {
    if (v11 <= 3)
    {
      v16 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
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
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 >= 4)
    {
      v14 = result;
      bzero(result, v11);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v15 = (v13 >> (8 * v11)) + 1;
    if (v11)
    {
      v18 = v13 & ~(-1 << (8 * v11));
      v19 = result;
      bzero(result, v11);
      result = v19;
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *v19 = v18;
          if (v12 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *v19 = v13;
          if (v12 > 1)
          {
LABEL_14:
            if (v12 == 2)
            {
              *(result + v11) = v15;
            }

            else
            {
              *(result + v11) = v15;
            }

            return result;
          }
        }

LABEL_51:
        if (v12)
        {
          *(result + v11) = v15;
        }

        return result;
      }

      *v19 = v18;
      *(v19 + 2) = BYTE2(v18);
    }

    if (v12 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(result + v11) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_35;
    }

    *(result + v11) = 0;
  }

  else if (v12)
  {
    *(result + v11) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return result;
  }

LABEL_35:
  if (v5 == v10)
  {
    v20 = *(v4 + 56);

    return v20();
  }

  else
  {
    v21 = ((result + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) != 0)
    {
      v23 = *(v6 + 56);

      return v23((v21 + v8 + 8) & ~v8);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v22 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v22 = a2 - 1;
      }

      *v21 = v22;
    }
  }

  return result;
}

uint64_t sub_1AADD5860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a3;
  v23 = a1;
  v25 = *(a4 - 8);
  v7 = v25;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v24 = v22 - v11;
  v14 = *v13;
  v15 = type metadata accessor for ModifiedAxisMark();
  v22[1] = *(a1 + *(v15 + 44));
  swift_beginAccess();
  v16 = *(v14 + 40);
  v29[0] = *(v14 + 32);
  v29[1] = v16;
  v30 = *(v14 + 48);

  v17 = swift_readAtKeyPath();
  v18 = *(v7 + 16);
  v18(v12);
  v17(v28, 0);

  v19 = v23;
  (v18)(v9, v23 + *(v15 + 48), a4);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  v29[0] = v14;
  (*(v26 + 8))(v19, v29);
  v20 = v24;
  (v18)(v9, v24, a4);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  return (*(v25 + 8))(v20, a4);
}

uint64_t sub_1AADD5AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v28 = a2;
  v29 = a5;
  v24 = a1;
  v7 = *(a3 - 8);
  v26 = a4;
  v27 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v25 = &v23 - v11;
  v14 = *v13;
  v15 = type metadata accessor for ModifiedAxisMark();
  v23 = *(a1 + *(v15 + 44));
  swift_beginAccess();
  v16 = *(v14 + 40);
  v31[0] = *(v14 + 32);
  v31[1] = v16;
  v32 = *(v14 + 48);

  v17 = swift_readAtKeyPath();
  v18 = *(v7 + 16);
  v18(v12);
  v17(v30, 0);

  v19 = v24;
  (v18)(v9, v24 + *(v15 + 48), a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  v30[0] = v14;
  (*(v26 + 16))(v31, v19, v30);
  v20 = v31[0];
  v21 = v25;
  (v18)(v9, v25, a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  result = (*(v27 + 8))(v21, a3);
  *v29 = v20;
  return result;
}

uint64_t sub_1AADD5D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AADD144C(v12, v16);
  v13 = type metadata accessor for ModifiedAxisMark();
  (*(v9 + 16))(v11, a1 + *(v13 + 48), a4);
  swift_setAtWritableKeyPath();
  (*(a5 + 24))(a1, v16, a3, a5);
  return sub_1AADD1484(v16);
}

uint64_t sub_1AADD5EDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  v10 = (a1 + *(type metadata accessor for OffsetAxisMark() + 36));
  *(v7 + 48) = v8 + *v10;
  *(v7 + 56) = v9 + v10[1];
  v12 = v7;
  result = (*(a4 + 8))(a1, &v12, a3, a4);
  *(v7 + 48) = v8;
  *(v7 + 56) = v9;
  return result;
}

void *sub_1AADD5F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  swift_beginAccess();
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  v12 = (a1 + *(type metadata accessor for OffsetAxisMark() + 36));
  *(v9 + 48) = v10 + *v12;
  *(v9 + 56) = v11 + v12[1];
  v15 = v9;
  result = (*(a4 + 16))(&v16, a1, &v15, a3, a4);
  v14 = v16;
  *(v9 + 48) = v10;
  *(v9 + 56) = v11;
  *a5 = v14;
  return result;
}

uint64_t sub_1AADD6064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AADD144C(a2, v8);
  v9 = vaddq_f64(*(a1 + *(type metadata accessor for OffsetAxisMark() + 36)), v9);
  (*(a4 + 24))(a1, v8, a3, a4);
  return sub_1AADD1484(v8);
}

void static BuilderPair<>._layoutAxisMark(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BuilderPair();
  v13 = *(v12 + 8);
  sub_1AADCF1A0();
  if (v14)
  {
    v15 = *a2;
    v16 = sub_1AADCF1A8(v12, v13, v12 + 8 * *(v14 + 24), (v12 + 16));
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a6;
    v19[6] = v15;
    v19[7] = v17;
    sub_1AACBC418(a1, sub_1AADD65BC, v19, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AADD63B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[6] = a1;
  v29[7] = a2;
  v21 = *(a3 + 16);
  if (v21)
  {
    v4 = *(a2 + 16);

    v5 = 0;
    v6 = (a3 + 48);
    do
    {
      v23 = *(v6 - 2);
      v13 = *v6;
      v29[8] = *(v6 - 1);
      v14 = *(a1 + v13);
      v15 = *(v4 + 16);
      v16 = *(v15 + 32);
      *&v24 = v5;

      sub_1AAF90024();
      v29[0] = v16;
      swift_beginAccess();
      v17 = *(v15 + 16);
      if (*(v17 + 16) && (v18 = sub_1AACCAE28(v29), (v19 & 1) != 0))
      {
        v8 = *(*(v17 + 56) + 8 * v18);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v5);
        MEMORY[0x1AC5992F0](v16);
        v32 = v26;
        v33 = v27;
        v34 = v28;
        v30 = v24;
        v31 = v25;
        v7 = sub_1AAF906E4();
        v8 = sub_1AACCB060(v7);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v15 + 16);
        *(v15 + 16) = 0x8000000000000000;
        sub_1AACCB154(v8, v29, isUniquelyReferenced_nonNull_native);
        *(v15 + 16) = v35;
      }

      swift_endAccess();
      v10 = sub_1AACCAFF0(v29);
      ++v5;
      v6 += 3;
      v11 = *(v15 + 32);
      *(v15 + 32) = v8;
      v12 = *(v4 + 24);
      *(v4 + 24) = v8;
      sub_1AADD6EB8(v10, v23, v14);
      *(v4 + 24) = v12;
      *(v15 + 32) = v11;
    }

    while (v21 != v5);
  }

  else
  {
  }
}

void static BuilderPair<>._renderAxisMark(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BuilderPair();
  v13 = *(v12 + 8);
  sub_1AADCF1A0();
  if (v14)
  {
    v15 = *a2;
    v16 = sub_1AADCF1A8(v12, v13, v12 + 8 * *(v14 + 24), (v12 + 16));
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a6;
    v19[6] = v15;
    v19[7] = v17;
    sub_1AACBC418(a1, sub_1AADD6A70, v19, v12, MEMORY[0x1E69E73E0], &type metadata for _AxisMarkRenderOutputs, MEMORY[0x1E69E7410], v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AADD6700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v51[6] = a1;
  v51[7] = a2;
  v52 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  v42 = *(a3 + 16);
  if (v42)
  {
    v6 = *(a2 + 16);

    v7 = 0;
    v8 = (a3 + 48);
    do
    {
      v16 = *(v8 - 1);
      v59 = *(v8 - 2);
      v17 = *v8;
      v52 = v16;
      v18 = *(a1 + v17);
      v19 = *(v6 + 16);
      v20 = *(v19 + 32);
      *&v45 = v7;

      sub_1AAF90024();
      v51[0] = v20;
      swift_beginAccess();
      v21 = *(v19 + 16);
      if (*(v21 + 16) && (v22 = sub_1AACCAE28(v51), (v23 & 1) != 0))
      {
        v10 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v7);
        MEMORY[0x1AC5992F0](v20);
        v56 = v48;
        v57 = v49;
        v58 = v50;
        v54 = v45;
        v55 = v47;
        v9 = sub_1AAF906E4();
        v10 = sub_1AACCB060(v9);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = *(v19 + 16);
        *(v19 + 16) = 0x8000000000000000;
        sub_1AACCB154(v10, v51, isUniquelyReferenced_nonNull_native);
        *(v19 + 16) = v44;
      }

      swift_endAccess();
      v12 = sub_1AACCAFF0(v51);
      ++v7;
      v8 += 3;
      v13 = *(v19 + 32);
      *(v19 + 32) = v10;
      v14 = *(v6 + 24);
      *(v6 + 24) = v10;
      sub_1AADD6FE4(v12, v59, v18);
      v15 = v53;
      *(v6 + 24) = v14;
      *(v19 + 32) = v13;
    }

    while (v42 != v7);
    v4 = a2;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v24 = *(*(v4 + 16) + 24);
  v25 = *(v15 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v25, 0);
    v27 = v46;
    v28 = (v15 + 32);
    v29 = *(v46 + 16);
    do
    {
      v31 = *v28++;
      v30 = v31;
      v32 = *(v46 + 24);

      if (v29 >= v32 >> 1)
      {
        sub_1AAD0F6F0((v32 > 1), v29 + 1, 1);
      }

      *(v46 + 16) = v29 + 1;
      *(v46 + 8 * v29++ + 32) = v30;
      --v25;
    }

    while (v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v33 = type metadata accessor for SgGroup(0);
  v34 = swift_allocBox();
  v36 = v35;
  v37 = v33[6];
  v38 = type metadata accessor for SgClipRect(0);
  (*(*(v38 - 8) + 56))(&v36[v37], 1, 1, v38);
  *v36 = v24;
  *(v36 + 1) = v27;
  *&v36[v33[7]] = 0x3FF0000000000000;
  *&v36[v33[8]] = 0;
  *&v36[v33[9]] = v26;
  v36[v33[10]] = 0;
  *a4 = v34;
}

void static BuilderPair<>._collectAxisMark(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BuilderPair();
  v13 = *(v12 + 8);
  sub_1AADCF1A0();
  if (v14)
  {
    v15 = sub_1AADCF1CC(v12, v13, v12 + 8 * *(v14 + 24), (v12 + 16));
    MEMORY[0x1EEE9AC00](v15);
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = a6;
    v18[6] = a2;
    v18[7] = v16;
    sub_1AACBC418(a1, sub_1AADD6C60, v18, v12, MEMORY[0x1E69E73E0], &type metadata for _AxisMarkCollectOutputs, MEMORY[0x1E69E7410], v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AADD6BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AADD144C(a2, &v15);
  v14 = a1;
  v16 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = (a3 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v9 += 3;
      v16 = v11;
      v7 = sub_1AADD6CB8(v7, v10, *(a1 + v12));
      --v8;
    }

    while (v8);
    v7 = v18;
  }

  *a4 = v7;

  return sub_1AADD6E74(&v14);
}

uint64_t sub_1AADD6CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  sub_1AADD144C((v3 + 1), v17);
  v10 = v18;
  v11 = v3[21];
  sub_1AADAD8EC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = v11;
  *(inited + 72) = 0;
  v16 = v10;

  sub_1AADC85B8(inited);
  v13 = v16;

  v18 = v13;
  (*(v7 + 16))(v9, *v4 + v4[20], a2);
  (*(a3 + 24))(&v16, v9, v17, a2, a3);
  result = (*(v7 + 8))(v9, a2);
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = v16;
    v4[21] = v11 + 1;
    sub_1AADC8D3C(v15);
    return sub_1AADD1484(v17);
  }

  return result;
}

uint64_t sub_1AADD6EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, *v3 + v3[2], a2, v7);
  v13 = v3[1];
  v10 = *(a3 + 8);

  v10(v9, &v13, a2, a3);

  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_1AADD6FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *v4 + v4[2], a2, v8);
  v17 = v4[1];
  v11 = *(a3 + 16);

  v11(&v18, v10, &v17, a2, a3);

  (*(v7 + 8))(v10, a2);
  v12 = v18;
  v13 = v4[3];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AAD68DAC(0, *(v13 + 16) + 1, 1, v13);
    v13 = result;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    result = sub_1AAD68DAC((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v16 + 1;
  *(v13 + 8 * v16 + 32) = v12;
  v4[3] = v13;
  return result;
}

__n128 sub_1AADD7188(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1AADD71C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AADD720C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AxisMarkValues.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for AxisMarkValues.Storage(0);
  v3 = *(v2 + 24);
  *(a1 + *(v2 + 20)) = 2;
  *(a1 + v3) = 2;
  v4 = *(*(v2 - 8) + 56);

  return v4(a1, 0, 1, v2);
}

void *AxisMarks.init<A>(preset:position:values:content:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v17 = *a2;
  *a9 = *a1;
  a9[1] = v17;
  v18 = type metadata accessor for AxisMarks();
  v19 = *(v18 + 40);
  sub_1AADD744C(a3, a7, a10, &a9[v19]);
  v20 = type metadata accessor for AxisMarkValues.Storage(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 0, 1, v20);
  v21 = &a9[*(v18 + 44)];
  result = swift_allocObject();
  result[2] = a6;
  result[3] = a7;
  result[4] = a8;
  result[5] = a10;
  result[6] = a4;
  result[7] = a5;
  *v21 = sub_1AADD74C4;
  *(v21 + 1) = result;
  v21[40] = 1;
  return result;
}

uint64_t sub_1AADD744C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_1AACAF550(a1, a2, a3);
  v7 = v6;

  *a4 = v5;
  *(a4 + 8) = v7;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AxisMarkValues.Storage(0);
  v9 = *(result + 24);
  *(a4 + *(result + 20)) = 2;
  *(a4 + v9) = 2;
  return result;
}

uint64_t sub_1AADD74C4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  v6 = *(a1 + 16);
  v8 = *a1;
  v9 = v6;
  v10 = *(a1 + 24);
  a2[3] = v3;
  a2[4] = v4;
  sub_1AACB2508(a2);
  return v5(&v8);
}

uint64_t sub_1AADD7528(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AxisMarks.init<A>(preset:position:values:content:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v17 = *a2;
  v21 = *a1;
  v20 = v17;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a10;
  v18[6] = a4;
  v18[7] = a5;
  return AxisMarks.init<A>(preset:position:values:content:)(&v21, &v20, a3, sub_1AADD775C, v18, a6, a7, a8, a9, a10);
}

uint64_t sub_1AADD7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - v13;
  v15(v12);
  sub_1AACE0800(v11, a4, a6);
  v16 = *(v8 + 8);
  v16(v11, a4);
  sub_1AACE0800(v14, a4, a6);
  return (v16)(v14, a4);
}

uint64_t AxisMarks.init<A>(format:preset:position:values:stroke:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v12 = *a3;
  *a7 = *a2;
  a7[1] = v12;
  sub_1AADD79A8(0, &qword_1EB424C10, &protocol witness table for Never, type metadata accessor for AxisMarks);
  v14 = v13;
  sub_1AACAEB18(a4, &a7[*(v13 + 40)], &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage);
  v15 = &a7[*(v14 + 44)];
  sub_1AADD7908();
  *(v15 + 3) = v16;
  *(v15 + 4) = sub_1AADD79FC();
  v17 = swift_allocObject();
  *v15 = v17;
  sub_1AADCFA24(a1, a5, a6, (v17 + 16));
  sub_1AACD1518(a5, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720], sub_1AACD2D88);
  sub_1AACB767C(a4, type metadata accessor for AxisMarkValues);
  result = (*(*(a6 - 8) + 8))(a1, a6);
  v15[40] = 0;
  return result;
}

void sub_1AADD7908()
{
  if (!qword_1EB424C18)
  {
    sub_1AADD79A8(255, &qword_1EB424BF8, MEMORY[0x1E6982070], type metadata accessor for AxisValueLabel);
    v0 = type metadata accessor for BuilderTuple();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424C18);
    }
  }
}

void sub_1AADD79A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E73E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AADD79FC()
{
  result = qword_1EB424C20;
  if (!qword_1EB424C20)
  {
    sub_1AADD7908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C20);
  }

  return result;
}

uint64_t AxisMarks.init<A, B>(format:preset:position:values:stroke:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v16 = *a3;
  *a9 = *a2;
  a9[1] = v16;
  sub_1AADD79A8(0, &qword_1EB424C10, &protocol witness table for Never, type metadata accessor for AxisMarks);
  v18 = v17;
  v19 = *(v17 + 40);
  sub_1AADD744C(a4, a6, a8, &a9[v19]);
  v20 = type metadata accessor for AxisMarkValues.Storage(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 0, 1, v20);
  v21 = &a9[*(v18 + 44)];
  sub_1AADD7908();
  *(v21 + 3) = v22;
  *(v21 + 4) = sub_1AADD79FC();
  v23 = swift_allocObject();
  *v21 = v23;
  sub_1AADCFA24(a1, a5, a7, (v23 + 16));
  sub_1AACD1518(a5, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720], sub_1AACD2D88);
  result = (*(*(a7 - 8) + 8))(a1, a7);
  v21[40] = 0;
  return result;
}

uint64_t AxisMarks.init<>(preset:position:values:stroke:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = *a2;
  *a5 = *a1;
  a5[1] = v8;
  sub_1AADD79A8(0, &qword_1EB424C10, &protocol witness table for Never, type metadata accessor for AxisMarks);
  v10 = v9;
  sub_1AACAEB18(a3, &a5[*(v9 + 40)], &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage);
  v11 = &a5[*(v10 + 44)];
  sub_1AADD7908();
  *(v11 + 3) = v12;
  *(v11 + 4) = sub_1AADD79FC();
  v13 = swift_allocObject();
  *v11 = v13;
  sub_1AADCF710(a4, (v13 + 16));
  sub_1AACD1518(a4, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720], sub_1AACD2D88);
  result = sub_1AACB767C(a3, type metadata accessor for AxisMarkValues);
  v11[40] = 0;
  return result;
}

uint64_t AxisMarks.init<A>(preset:position:values:stroke:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v12 = *a2;
  *a7 = *a1;
  a7[1] = v12;
  sub_1AADD79A8(0, &qword_1EB424C10, &protocol witness table for Never, type metadata accessor for AxisMarks);
  v14 = v13;
  v15 = *(v13 + 40);
  sub_1AADD744C(a3, a5, a6, &a7[v15]);
  v16 = type metadata accessor for AxisMarkValues.Storage(0);
  (*(*(v16 - 8) + 56))(&a7[v15], 0, 1, v16);
  v17 = &a7[*(v14 + 44)];
  sub_1AADD7908();
  *(v17 + 3) = v18;
  *(v17 + 4) = sub_1AADD79FC();
  v19 = swift_allocObject();
  *v17 = v19;
  sub_1AADCF710(a4, (v19 + 16));
  result = sub_1AACD1518(a4, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720], sub_1AACD2D88);
  v17[40] = 0;
  return result;
}

uint64_t AxisMarkPreset.description.getter()
{
  v1 = 0x6465646E65747865;
  v2 = 0x7465736E69;
  if (*v0 != 2)
  {
    v2 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    v1 = 0x64656E67696C61;
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

uint64_t sub_1AADD7F7C()
{
  v1 = 0x6974616D6F747561;
  if (*v0 == 2)
  {
    v1 = 0x7465736E69;
  }

  v2 = 0x6465646E65747865;
  if (*v0)
  {
    v2 = 0x64656E67696C61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t AxisMarkPosition.description.getter()
{
  v1 = *v0;
  v2 = 0x676E696461656CLL;
  v3 = 0x676E696C69617274;
  if (v1 != 3)
  {
    v3 = 0x6974616D6F747561;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 7368564;
  if (*v0)
  {
    v4 = 0x6D6F74746F62;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AADD808C()
{
  v1 = *v0;
  v2 = 0x6974616D6F747561;
  if (v1 == 3)
  {
    v2 = 0x676E696C69617274;
  }

  if (v1 == 2)
  {
    v2 = 0x676E696461656CLL;
  }

  v3 = 7368564;
  if (*v0)
  {
    v3 = 0x6D6F74746F62;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t static AxisMarkValues.automatic(desiredCount:roundLowerBound:roundUpperBound:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for AxisMarkValues.Storage(0);
  v9 = *(v8 + 24);
  *(a5 + *(v8 + 20)) = a3;
  *(a5 + v9) = a4;
  v10 = *(*(v8 - 8) + 56);

  return v10(a5, 0, 1, v8);
}

uint64_t static AxisMarkValues.automatic<A>(minimumStride:desiredCount:roundLowerBound:roundUpperBound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_1AAD46810();
  sub_1AAF8F354();
  v14 = v18[1];
  *a6 = a2;
  *(a6 + 8) = a3 & 1;
  *(a6 + 16) = v14;
  *(a6 + 24) = 0;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for AxisMarkValues.Storage(0);
  v16 = *(v15 + 24);
  *(a6 + *(v15 + 20)) = a4;
  *(a6 + v16) = a5;
  return (*(*(v15 - 8) + 56))(a6, 0, 1, v15);
}

uint64_t static AxisMarkValues.stride<A>(by:roundLowerBound:roundUpperBound:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_1AAD46810();
  sub_1AAF8F354();
  *a4 = v13[1];
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for AxisMarkValues.Storage(0);
  v11 = *(v10 + 24);
  *(a4 + *(v10 + 20)) = a2;
  *(a4 + v11) = a3;
  return (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
}

uint64_t AxisMarkValues.description.getter()
{
  v87 = sub_1AAF8CA64();
  v91 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v2 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AAF8CB94();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAF184(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v87 - v9;
  v11 = type metadata accessor for AxisMarkValues.Storage(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAEB18(v0, v10, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_1AACB812C(v10, v14, type metadata accessor for AxisMarkValues.Storage);
    sub_1AACB81D4(v14, v7, type metadata accessor for AxisMarkValues.Storage.Stride);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = v14;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v34 = *v7;
        if (v7[8])
        {
          if (v7[8] == 1)
          {
            v93[0] = 0;
            v93[1] = 0xE000000000000000;
            v35 = *(v34 + 16);
            v36 = MEMORY[0x1E69E7CC0];
            if (v35)
            {
              v92 = MEMORY[0x1E69E7CC0];
              sub_1AACEA040(0, v35, 0);
              v36 = v92;
              v37 = v34 + 32;
              v38 = v87;
              do
              {
                sub_1AAF8C844();
                v92 = v36;
                v40 = *(v36 + 2);
                v39 = *(v36 + 3);
                if (v40 >= v39 >> 1)
                {
                  sub_1AACEA040(v39 > 1, v40 + 1, 1);
                  v36 = v92;
                }

                *(v36 + 2) = v40 + 1;
                (*(v91 + 32))(&v36[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v40], v2, v38);
                v37 += 8;
                --v35;
              }

              while (v35);
              v17 = v14;
            }

            else
            {
              v38 = v87;
            }

            v84 = MEMORY[0x1AC598460](v36, v38);
            v86 = v85;

            MEMORY[0x1AC5982F0](v84, v86);

LABEL_64:
            v15 = v93[0];
LABEL_65:
            sub_1AACB767C(v17, type metadata accessor for AxisMarkValues.Storage);
            return v15;
          }

          v83 = MEMORY[0x1E69E6158];
        }

        else
        {
          v83 = MEMORY[0x1E69E63B0];
        }

        v15 = MEMORY[0x1AC598460](*v7, v83);

        goto LABEL_65;
      }

      v18 = v11;
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      MEMORY[0x1AC5982F0](540703074, 0xE400000000000000);
      sub_1AAF8FA24();
      v21 = v93[0];
      v22 = v93[1];
      v20 = sub_1AAD67908(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = sub_1AAD67908((v23 > 1), v24 + 1, 1, v20);
      }

      v15 = 0x656469727473;
      *(v20 + 2) = v24 + 1;
      v25 = &v20[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
    }

    else
    {
      v18 = v11;
      if (!EnumCaseMultiPayload)
      {
        v19 = v7[24];
        if (v7[8])
        {
          v20 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v41 = *v7;
          v93[0] = 0;
          v93[1] = 0xE000000000000000;
          sub_1AAF900D4();

          strcpy(v93, "desiredCount: ");
          HIBYTE(v93[1]) = -18;
          v92 = v41;
          v42 = sub_1AAF90474();
          MEMORY[0x1AC5982F0](v42);

          v43 = v93[0];
          v44 = v93[1];
          v20 = sub_1AAD67908(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v46 = *(v20 + 2);
          v45 = *(v20 + 3);
          if (v46 >= v45 >> 1)
          {
            v20 = sub_1AAD67908((v45 > 1), v46 + 1, 1, v20);
          }

          *(v20 + 2) = v46 + 1;
          v47 = &v20[16 * v46];
          *(v47 + 4) = v43;
          *(v47 + 5) = v44;
        }

        v48 = 0xE900000000000063;
        v15 = 0x6974616D6F747561;
        if ((v19 & 1) == 0)
        {
          v93[0] = 0;
          v93[1] = 0xE000000000000000;
          sub_1AAF900D4();
          MEMORY[0x1AC5982F0](0x536D756D696E696DLL, 0xEF203A6564697274);
          sub_1AAF8FA24();
          v49 = v93[0];
          v50 = v93[1];
          v51 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1AAD67908(0, *(v20 + 2) + 1, 1, v20);
          }

          v53 = *(v20 + 2);
          v52 = *(v20 + 3);
          if (v53 >= v52 >> 1)
          {
            v20 = sub_1AAD67908((v52 > 1), v53 + 1, 1, v20);
          }

          *(v20 + 2) = v53 + 1;
          v54 = &v20[16 * v53];
          *(v54 + 4) = v49;
          *(v54 + 5) = v50;
          v17 = v51;
        }

        goto LABEL_37;
      }

      sub_1AACAF0D8();
      v27 = v26;
      v28 = *&v7[*(v26 + 48)];
      (*(v89 + 32))(v88, v7, v90);
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      MEMORY[0x1AC5982F0](540703074, 0xE400000000000000);
      sub_1AAF90284();
      v29 = v93[0];
      v30 = v93[1];
      v20 = sub_1AAD67908(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v32 = *(v20 + 2);
      v31 = *(v20 + 3);
      if (v32 >= v31 >> 1)
      {
        v20 = sub_1AAD67908((v31 > 1), v32 + 1, 1, v20);
      }

      *(v20 + 2) = v32 + 1;
      v33 = &v20[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
      if (v28 == 1)
      {
        (*(v89 + 8))(v88, v90);
      }

      else
      {
        strcpy(v93, "count: ");
        v93[1] = 0xE700000000000000;
        v92 = v28;
        v55 = sub_1AAF90474();
        MEMORY[0x1AC5982F0](v55);

        v56 = v93[0];
        v57 = v93[1];
        v59 = *(v20 + 2);
        v58 = *(v20 + 3);
        if (v59 >= v58 >> 1)
        {
          v20 = sub_1AAD67908((v58 > 1), v59 + 1, 1, v20);
        }

        (*(v89 + 8))(v88, v90);
        *(v20 + 2) = v59 + 1;
        v60 = &v20[16 * v59];
        *(v60 + 4) = v56;
        *(v60 + 5) = v57;
      }

      v15 = 0x656469727473;
      sub_1AACD1518(&v7[*(v27 + 64)], &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
    }

    v48 = 0xE600000000000000;
LABEL_37:
    v61 = *(v17 + *(v18 + 20));
    if (v61 != 2)
    {
      v62 = v17;
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      sub_1AAF900D4();

      v93[0] = 0xD000000000000011;
      v93[1] = 0x80000001AAFCE600;
      if (v61)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v61)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      MEMORY[0x1AC5982F0](v63, v64);

      v65 = v93[0];
      v66 = v93[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AAD67908(0, *(v20 + 2) + 1, 1, v20);
      }

      v68 = *(v20 + 2);
      v67 = *(v20 + 3);
      if (v68 >= v67 >> 1)
      {
        v20 = sub_1AAD67908((v67 > 1), v68 + 1, 1, v20);
      }

      *(v20 + 2) = v68 + 1;
      v69 = &v20[16 * v68];
      *(v69 + 4) = v65;
      *(v69 + 5) = v66;
      v17 = v62;
    }

    v70 = *(v17 + *(v18 + 24));
    if (v70 == 2)
    {
      if (!*(v20 + 2))
      {
        sub_1AACB767C(v17, type metadata accessor for AxisMarkValues.Storage);

        return v15;
      }
    }

    else
    {
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      sub_1AAF900D4();

      v93[0] = 0xD000000000000011;
      v93[1] = 0x80000001AAFCE5E0;
      if (v70)
      {
        v71 = 1702195828;
      }

      else
      {
        v71 = 0x65736C6166;
      }

      if (v70)
      {
        v72 = 0xE400000000000000;
      }

      else
      {
        v72 = 0xE500000000000000;
      }

      MEMORY[0x1AC5982F0](v71, v72);

      v73 = v93[0];
      v74 = v93[1];
      v75 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1AAD67908(0, *(v20 + 2) + 1, 1, v20);
      }

      v77 = *(v20 + 2);
      v76 = *(v20 + 3);
      if (v77 >= v76 >> 1)
      {
        v20 = sub_1AAD67908((v76 > 1), v77 + 1, 1, v20);
      }

      *(v20 + 2) = v77 + 1;
      v78 = &v20[16 * v77];
      *(v78 + 4) = v73;
      *(v78 + 5) = v74;
      v17 = v75;
    }

    v93[0] = v15;
    v93[1] = v48;
    MEMORY[0x1AC5982F0](40, 0xE100000000000000);
    v92 = v20;
    sub_1AACD2D88(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AADD9348();
    v79 = sub_1AAF8F544();
    v81 = v80;

    MEMORY[0x1AC5982F0](v79, v81);

    MEMORY[0x1AC5982F0](41, 0xE100000000000000);
    goto LABEL_64;
  }

  v15 = 0x6974616D6F747561;
  sub_1AACD1518(v10, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF184);
  return v15;
}

uint64_t sub_1AADD90F0()
{
  if (qword_1EB422C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_1AAD7B1A0(&v3, 5);
  result = swift_endAccess();
  if (v0)
  {
    sub_1AACD2D88(0, &qword_1EB424C30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF92AB0;
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 32) = 0xD000000000000038;
    *(v2 + 40) = 0x80000001AAFCE640;
    sub_1AAF90674();
  }

  return result;
}

uint64_t sub_1AADD9254(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1AADD92F8(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1, result + 1, 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_1AADD9348()
{
  result = qword_1ED9B11D0;
  if (!qword_1ED9B11D0)
  {
    sub_1AACD2D88(255, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B11D0);
  }

  return result;
}

void sub_1AADD93C4()
{
  sub_1AACD2D88(319, &qword_1ED9B4008, &type metadata for AxisMarkPreset.Storage, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AACD2D88(319, &qword_1ED9B3DF8, &type metadata for AxisMarkPosition.Storage, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AACAF184(319, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AxisValueLabelOrientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for AxisMarkPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisMarkPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1AADD96F8()
{
  sub_1AACAF184(319, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1AADD9818()
{
  result = qword_1EB424C28;
  if (!qword_1EB424C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C28);
  }

  return result;
}

unint64_t sub_1AADD9870()
{
  result = qword_1ED9B23E0[0];
  if (!qword_1ED9B23E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B23E0);
  }

  return result;
}

uint64_t sub_1AADD98C4(uint64_t a1, uint64_t a2)
{
  if (!sub_1AACD08D8(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for AxisMarkValues.Storage(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

LABEL_7:
    v9 = *(v4 + 24);
    v10 = *(a1 + v9);
    v11 = *(a2 + v9);
    if (v10 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v7 != 2 && ((v7 ^ v6) & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1AADD99C0()
{
  sub_1AACB6BD8();
  sub_1AAF8E144();
  return v1;
}

uint64_t sub_1AADD9A7C(char a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  v17 = *a2;
  sub_1AACB61E4(0, &qword_1EB423AB8, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AAF92AB0;
  v19 = MEMORY[0x1E6981138];
  *(v18 + 56) = MEMORY[0x1E6981148];
  *(v18 + 64) = v19;
  v20 = swift_allocObject();
  *(v18 + 32) = v20;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5 & 1;
  *(v20 + 40) = a6;
  *(v18 + 72) = v17;
  *(v18 + 80) = a7;
  *(v18 + 88) = a8;
  *(v18 + 96) = a9 & 1;
  *(v18 + 104) = a10;
  *(v18 + 112) = a11 & 1;
  *(v18 + 120) = a3;
  *(v18 + 128) = a4;
  *(v18 + 136) = a5 & 1;
  *(v18 + 144) = a6;
  v25[0] = a1;
  v25[8] = 3;
  v26 = 0;
  v27 = v18;
  sub_1AACD7304(a3, a4, a5 & 1);

  sub_1AACD7304(a3, a4, a5 & 1);

  MEMORY[0x1AC597820](v25, a12, &type metadata for ChartAxisModifier, a13);
}

uint64_t sub_1AADD9C80(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = *a1;
  sub_1AACB61E4(0, &qword_1EB423AB8, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AAF92AB0;
  v24 = a10;
  v25 = a12;
  sub_1AACB2508(&v22);
  a7();
  sub_1AACBB198(&v22, v18 + 32);
  *(v18 + 72) = v17;
  *(v18 + 80) = a2;
  *(v18 + 88) = a3;
  *(v18 + 96) = a4 & 1;
  *(v18 + 104) = a5;
  *(v18 + 112) = a6 & 1;
  *(v18 + 120) = 0u;
  *(v18 + 136) = 0u;
  LOBYTE(v22) = a13;
  BYTE8(v22) = 3;
  v23 = 0;
  v24 = v18;
  MEMORY[0x1AC597820](&v22, a9, &type metadata for ChartAxisModifier, a11);
}

uint64_t sub_1AADD9E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v23 = *a5;

  v14 = sub_1AAF8EA44();
  v16 = v15;
  v18 = v17;
  sub_1AADD9A7C(a13, &v23, v14, v15, v17 & 1, v19, a6, a7, a8 & 1, a9, a10 & 1, a11, a12);
  sub_1AAD04750(v14, v16, v18 & 1);
}

uint64_t View.chartZAxisLabel(_:position:alignment:spacing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v26 = a4;
  v25 = a3;
  v15 = sub_1AAF8C784();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v27 = *a2;
  (*(v18 + 16))(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v19 = sub_1AAF8EA54();
  v21 = v20;
  LOBYTE(a1) = v22;
  sub_1AADD9A7C(2, &v27, v19, v20, v22 & 1, v23, v25, v26, a5 & 1, a6, a7 & 1, a8, a9);
  sub_1AAD04750(v19, v21, a1 & 1);
}

uint64_t sub_1AADDA168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v30 = a3;
  v28 = a5;
  v29 = a2;
  v27 = a8;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v31 = *v17;
  (*(v18 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19, a9, v15);
  v20 = sub_1AAF8EA64();
  v22 = v21;
  v24 = v23;
  sub_1AADD9A7C(a12, &v31, v20, v21, v23 & 1, v25, v29, v30, a4 & 1, v28, a6 & 1, a7, a10);
  sub_1AAD04750(v20, v22, v24 & 1);
}

uint64_t sub_1AADDA2E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AADDA300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AADDA348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AADDA43C()
{
  if (!qword_1EB424C38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424C38);
    }
  }
}

uint64_t sub_1AADDA498(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 == 9)
  {
    if (v3 != 9)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    if (*(a2 + 64))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (*(a2 + 64))
  {
    return 0;
  }

  v4 = a1;
  v5 = a2;
  v6 = sub_1AAF8F0F4();
  a2 = v5;
  v7 = v6;
  a1 = v4;
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v8 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_1AAD45E1C(0, &qword_1ED9B2768);
  return AGCompareValues();
}

void sub_1AADDA580()
{
  if (!qword_1EB424C48)
  {
    sub_1AACB61E4(255, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424C48);
    }
  }
}

uint64_t AxisTick.init(centered:length:stroke:snapToPixel:pixelOffset:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *&v10[7] = *a3;
  *&v10[23] = *(a3 + 16);
  if (a6)
  {
    a5 = 0.0;
  }

  *(a7 + 17) = *v10;
  v8 = *a2;
  v9 = *(a2 + 8);
  *&v10[39] = *(a3 + 32);
  *a7 = result;
  *(a7 + 8) = v8;
  *(a7 + 16) = v9;
  *(a7 + 33) = *&v10[16];
  *(a7 + 48) = *&v10[31];
  *(a7 + 64) = 0;
  *(a7 + 65) = a4 & 1;
  *(a7 + 72) = a5;
  return result;
}

__n128 AxisTick.init(centered:length:stroke:snapToPixel:pixelOffset:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *&v9[7] = *a2;
  *&v9[23] = *(a2 + 16);
  *&v9[39] = *(a2 + 32);
  if (a5)
  {
    a4 = 0.0;
  }

  *a6 = a1;
  *(a6 + 8) = a7;
  *(a6 + 16) = 2;
  *(a6 + 17) = *v9;
  *(a6 + 33) = *&v9[16];
  result = *&v9[31];
  *(a6 + 48) = *&v9[31];
  *(a6 + 64) = 0;
  *(a6 + 65) = a3 & 1;
  *(a6 + 72) = a4;
  return result;
}

__n128 AxisTick.init(centered:length:stroke:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *(a3 + 8) = a4;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 72) = 0;
  *a3 = a1;
  *(a3 + 16) = 2;
  *(a3 + 40) = v5;
  *(a3 + 56) = *(a2 + 32);
  *(a3 + 64) = 0;
  return result;
}

uint64_t AxisTick.Length.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      return sub_1AAF8F9F4();
    }

    else
    {
      return 0x6974616D6F747561;
    }
  }

  else
  {
    if (*(v0 + 8))
    {
      if (v1 == 0.0)
      {
        return 0x4C747365676E6F6CLL;
      }

      sub_1AAF900D4();

      v3 = 0xD00000000000001BLL;
    }

    else
    {
      if (v1 == 0.0)
      {
        return 0x6C6562616CLL;
      }

      sub_1AAF900D4();

      v3 = 0xD000000000000014;
    }

    v5 = v3;
    v4 = sub_1AAF8F9F4();
    MEMORY[0x1AC5982F0](v4);

    MEMORY[0x1AC5982F0](41, 0xE100000000000000);
    return v5;
  }
}

uint64_t static AxisTick._layoutAxisMark(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = *(result + 8);
  }

  else
  {
    if (v2 != 255)
    {
      return result;
    }

    v4 = 4.0;
    if (*(v3 + 24) - 1 > 1)
    {
      return result;
    }
  }

  result = swift_beginAccess();
  v5 = *(v3 + 224);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 224) = v5;
  return result;
}

double *sub_1AADDA960@<X0>(double *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(result + 4);
  v4 = *(result + 2);
  v12[3] = *(result + 3);
  v12[4] = v3;
  v5 = *result;
  v12[1] = *(result + 1);
  v12[2] = v4;
  v12[0] = v5;
  if (*(*a2 + 24))
  {
    *a3 = 0xE000000000000000;
  }

  else
  {
    v6 = result;
    v10 = *a2;
    sub_1AACE477C(v12, v11);
    static AxisTick._renderAxisMark(_:_:)(v6, &v10, a3);
    v8 = *(v6 + 3);
    v11[2] = *(v6 + 2);
    v11[3] = v8;
    v11[4] = *(v6 + 4);
    v9 = *(v6 + 1);
    v11[0] = *v6;
    v11[1] = v9;
    return sub_1AACE1438(v11);
  }

  return result;
}

uint64_t sub_1AADDAA04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[16];
  v20 = *(a1 + 24);
  v21 = *(a1 + 40);
  v6 = *(a1 + 7);
  v7 = a1[64];
  v8 = a1[65];
  v9 = *(a1 + 9);
  v10 = *(a2 + 8);
  v11 = *(a2 + 96);
  if (*(a2 + 128) == 2)
  {
    v12 = *(a2 + 112);
    v13 = *(a2 + 120);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(a2 + 104);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  sub_1AAD049BC(0, &qword_1ED9AD718);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AAF92AB0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v11;
  *(v17 + 48) = v12;
  *(v17 + 56) = v13;
  *(v17 + 64) = v14;
  *(v17 + 65) = v19;
  *(v17 + 72) = v4;
  *(v17 + 80) = v5;
  *(v17 + 104) = v21;
  *(v17 + 88) = v20;
  *(v17 + 120) = v6;
  *(v17 + 128) = v7;
  *(v17 + 129) = v8;
  *(v17 + 136) = v9;
  *(v17 + 144) = v15;
  *(v17 + 152) = v16;
  *(v17 + 296) = 0;
  *a3 = v17;
}

uint64_t sub_1AADDAB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgShapeStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADDABDC(uint64_t a1)
{
  v2 = type metadata accessor for SgShapeStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AxisTick.Length(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisTick.Length(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AADDACE8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 24) && *(result + 16) == 2)
  {
    v3 = *(result + 8);
    result = swift_beginAccess();
    v4 = *(v2 + 224);
    if (v4 <= v3)
    {
      v4 = v3;
    }

    *(v2 + 224) = v4;
  }

  return result;
}

uint64_t sub_1AADDAD64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1AADDADAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double AxisValueLabel.init<>(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char *a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v15 = *(a8 + 16);
  v16 = *(a8 + 18);
  v17 = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = *a8;
  *(a9 + 72) = v15;
  *(a9 + 74) = v16;
  *(a9 + 75) = a10;
  *(a9 + 76) = v17;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  result = 0.0;
  *(a9 + 138) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 154) = 2;
  return result;
}

uint64_t AxisValueLabel.init<A>(format:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char *a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17)
{
  v18 = *(a10 + 16);
  v19 = *(a10 + 18);
  v20 = *a12;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5 & 1;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 56) = *a10;
  *(a9 + 72) = v18;
  *(a9 + 74) = v19;
  *(a9 + 75) = a11;
  *(a9 + 76) = v20;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  result = sub_1AADDB1B4(a1, a17, a9 + 112);
  *(a9 + 154) = 0;
  return result;
}

uint64_t AxisValueLabel.init<>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, char a4@<W7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, char *a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v16 = *(a9 + 16);
  v17 = *(a9 + 18);
  v18 = *a11;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  *(a5 + 48) = a8 & 1;
  *(a5 + 56) = *a9;
  *(a5 + 72) = v16;
  *(a5 + 74) = v17;
  *(a5 + 75) = a10;
  *(a5 + 76) = v18;
  *(a5 + 80) = a12;
  *(a5 + 88) = a13 & 1;
  *(a5 + 96) = a14;
  *(a5 + 104) = a15 & 1;
  result = sub_1AAF8EA44();
  *(a5 + 112) = result;
  *(a5 + 120) = v20;
  *(a5 + 128) = v21 & 1;
  *(a5 + 136) = v22;
  *(a5 + 154) = 1;
  return result;
}

uint64_t AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a6);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v13) = *(a3 + 16);
  v15 = *(a3 + 18);
  v16 = *a5;
  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20 & 1;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = *a3;
  *(a2 + 72) = v13;
  *(a2 + 74) = v15;
  *(a2 + 75) = v24;
  *(a2 + 76) = v16;
  *(a2 + 80) = v25;
  *(a2 + 88) = v26 & 1;
  *(a2 + 96) = v27;
  *(a2 + 104) = v28 & 1;
  (*(v12 + 16))(v14, a1, a10);
  v29 = sub_1AAF8EA64();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  result = (*(v12 + 8))(a1, a10);
  *(a2 + 112) = v29;
  *(a2 + 120) = v31;
  *(a2 + 128) = v33 & 1;
  *(a2 + 136) = v35;
  *(a2 + 154) = 1;
  return result;
}

uint64_t sub_1AADDB1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = type metadata accessor for AnyPrimitiveFormat.PrimitiveFormat();
  *(a3 + 32) = &off_1F1FD54D8;
  v6 = sub_1AACB2508(a3);
  result = (*(*(a2 - 8) + 32))(v6, a1, a2);
  *(a3 + 41) = 0;
  return result;
}

uint64_t sub_1AADDB234()
{
  sub_1AAF8F274();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F1F4();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F214();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F284();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F204();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F224();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F244();
  if (sub_1AAF8F234())
  {
    return 1;
  }

  sub_1AAF8F254();
  if (sub_1AAF8F234())
  {
    return 1;
  }

  sub_1AAF885A0(4);
  return 3;
}

uint64_t sub_1AADDB31C()
{
  sub_1AAF8F244();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F1F4();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F204();
  if (sub_1AAF8F234())
  {
    return 0;
  }

  sub_1AAF8F254();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F214();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F224();
  if (sub_1AAF8F234())
  {
    return 2;
  }

  sub_1AAF8F274();
  if (sub_1AAF8F234())
  {
    return 1;
  }

  sub_1AAF8F284();
  if (sub_1AAF8F234())
  {
    return 1;
  }

  sub_1AAF885A0(4);
  return 3;
}

uint64_t static AxisValueLabel._collectAxisMark(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v55 = a5;
  v9 = type metadata accessor for AxisValueLabel.LabelContent();
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v43 - v11);
  sub_1AADDB8B4(a1, a2, a3, a4, &v91);
  if (*a2)
  {
    v13 = sub_1AAF904F4();

    if ((v13 & 1) == 0)
    {
      v14 = 0;
      v15 = *(a2 + 96);
      LODWORD(v16) = 1;
      v53 = 0;
      v54 = v15;
      goto LABEL_6;
    }
  }

  else
  {
  }

  LODWORD(v16) = 0;
  v15 = *(a2 + 96);
  v14 = 1;
  v53 = v15;
  v54 = 0;
LABEL_6:
  v52 = v15;
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v51 = *(a1 + 24);
  v49 = v20;
  v50 = v19;
  if (v51)
  {
    sub_1AAF8F264();
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v22 = v19;
    v24 = v20;
  }

  v25 = v91;
  if (v92 < 0)
  {
    v47 = *(a2 + 8);
    swift_bridgeObjectRetain_n();
    sub_1AADDCDAC(&v91, &v58);
  }

  else
  {
    v48 = v12;
    v46 = a4;
    LODWORD(v45) = v16;
    v16 = *(a2 + 8);
    *&v58 = v92;

    v12 = v48;
    *&v58 = sub_1AAF8E9F4();
    *(&v58 + 1) = v26;
    LOBYTE(v59[0]) = v27 & 1;
    *(&v59[0] + 1) = v28;
    v25 = sub_1AAF8EF44();
    v47 = v16;
    LOBYTE(v16) = v45;
  }

  v90 = v16;
  v88 = v14;
  v29 = type metadata accessor for AxisValueLabel();
  (*(v57 + 16))(v12, a1 + *(v29 + 64), v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = v25;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v57 + 8))(v12, v56);
    }

    sub_1AACE0A98(a2 + 48, &v58);
    BYTE9(v59[1]) = 1;
  }

  else
  {
    v31 = v12[1];
    v58 = *v12;
    v59[0] = v31;
    *(v59 + 10) = *(v12 + 26);
  }

  v85 = v58;
  v86[0] = v59[0];
  *(v86 + 10) = *(v59 + 10);
  v32 = *(a2 + 104);
  v33 = *a1;
  v34 = *(a1 + 32);
  v35 = *(a1 + 40);
  v36 = *(a1 + 48);
  v37 = *(a1 + 56);
  v38 = *(a1 + 64);
  LODWORD(v57) = *(a1 + 72);
  LODWORD(v56) = *(a1 + 74);
  LODWORD(v46) = *(a1 + 75);
  v45 = *(a1 + 80);
  v44 = *(a1 + 88);
  v43 = *(a1 + 96);
  v39 = *(a1 + 104);
  sub_1AADDCE08(&v85, v84);
  v40 = *(a2 + 24);
  *&v58 = v47;
  *(&v58 + 1) = v52;
  LOBYTE(v59[0]) = v32;
  BYTE1(v59[0]) = v33;
  *(&v59[0] + 1) = v50;
  *&v59[1] = v49;
  BYTE8(v59[1]) = v51;
  v60 = v34;
  v61 = v35;
  v62 = v36;
  v63 = v37;
  v64 = v38;
  v65 = v57;
  v66 = v56;
  v67 = v46;
  v68 = v45;
  v69 = v44;
  v70 = v43;
  v71 = v39;
  v72 = v47;
  v73 = v53;
  v74 = v90;
  *&v75[3] = *&v89[3];
  *v75 = *v89;
  v76 = v54;
  v77 = v88;
  *&v78[3] = *&v87[3];
  *v78 = *v87;
  v79 = v48;
  v80 = v17;
  v81 = v18;
  v82 = v22;
  v83 = v24;
  v84[6] = v40;
  sub_1AACDF8EC(0, &qword_1ED9AD718, &type metadata for CollectedAxisMark, MEMORY[0x1E69E6F90]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1AAF92AB0;
  sub_1AAD57CE8(&v58, v41 + 32);
  *(v41 + 296) = 1;

  sub_1AADDCE40(&v91);
  sub_1AAD57D44(&v58);
  result = sub_1AAD784B8(&v85);
  *v55 = v41;
  return result;
}

uint64_t sub_1AADDB8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v82 = a1;
  sub_1AACDF93C();
  v9 = sub_1AAF8DF74();
  v76 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v73 - v10;
  sub_1AADDDB94();
  v79 = sub_1AAF8DF74();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v73 - v13;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a4;
  v17 = type metadata accessor for AxisValueLabel.LabelContent();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v73 - v19);
  if (*(a2 + 24))
  {
    v83 = *(a2 + 24);
    v21 = *(a2 + 16);
    if (v21)
    {
LABEL_3:

      v22 = v21;
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1ED9B1DA8 != -1)
    {
      swift_once();
    }

    v83 = qword_1ED9C34B8;

    v21 = *(a2 + 16);
    if (v21)
    {
      goto LABEL_3;
    }
  }

  v73 = v14;
  v80 = a5;
  v23 = qword_1ED9B1D98;

  if (v23 != -1)
  {
    swift_once();
  }

  *&v90 = qword_1ED9C34B0;

  v22 = sub_1AAF8DA44();
  a5 = v80;
  v14 = v73;
LABEL_10:
  v24 = type metadata accessor for AxisValueLabel();
  (*(v18 + 16))(v20, v82 + *(v24 + 64), v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v14;
      (*(v14 + 32))();

      v27 = v74;
      v28 = v84;
      sub_1AAF8EBE4();

      *&v90 = v22;
      v29 = sub_1AADDDBEC(&qword_1ED9B11E8, sub_1AACDF93C);
      v94 = v28;
      v95 = v29;
      v84 = MEMORY[0x1E697E858];
      WitnessTable = swift_getWitnessTable();
      v31 = v77;
      sub_1AAF8EB24();
      (*(v76 + 8))(v27, v9);
      v32 = v78;
      v33 = *(v78 + 16);
      v80 = a5;
      v34 = v79;
      v33(v75, v31, v79);
      v35 = sub_1AADDDBEC(&qword_1ED9AF4F0, sub_1AADDDB94);
      v92 = WitnessTable;
      v93 = v35;
      swift_getWitnessTable();
      a5 = v80;
      v36 = sub_1AAF8EF44();

      (*(v32 + 8))(v31, v34);
      result = (*(v26 + 8))(v81, a3);
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0x8000000000000000;
    }

    else
    {
      v84 = v22;
      v49 = *(a2 + 112);
      v50 = *(a2 + 120);
      v51 = *(a2 + 128);

      *&v90 = sub_1AAF75A98(v49, v50, v51);
      *(&v90 + 1) = v52;
      sub_1AADA6144();
      v53 = sub_1AAF8EA64();
      v55 = v54;
      v57 = v56;

      v36 = sub_1AAF8EA24();
      v38 = v58;
      v39 = v59;
      v40 = v60;

      v41 = v84;
      sub_1AAD04750(v53, v55, v57 & 1);
    }
  }

  else
  {
    v84 = v22;
    v42 = v20[1];
    v90 = *v20;
    v91[0] = v42;
    *(v91 + 10) = *(v20 + 26);
    v43 = *(a2 + 112);
    v44 = *(a2 + 120);
    v45 = *(a2 + 128);
    sub_1AADABA40(&v90, &v87);
    if (v89)
    {
      v85 = v87;
      *v86 = *v88;
      *&v86[9] = *&v88[9];

      v46 = sub_1AAF75A98(v43, v44, v45);
      v48 = v47;
      sub_1AAD57C94(&v85);
    }

    else
    {
      sub_1AACBB198(&v87, &v85);
      v61 = *&v86[8];
      v62 = *&v86[16];
      sub_1AACBB42C(&v85, *&v86[8]);
      v63 = *(v62 + 8);

      v46 = v63(v43, v44, v45, v61, v62);
      v48 = v64;
      sub_1AACB634C(&v85);
    }

    *&v87 = v46;
    *(&v87 + 1) = v48;
    sub_1AADA6144();
    v65 = sub_1AAF8EA64();
    v67 = v66;
    v69 = v68;

    v36 = sub_1AAF8EA24();
    v38 = v70;
    v39 = v71;
    v40 = v72;

    sub_1AAD04750(v65, v67, v69 & 1);

    result = sub_1AAD784B8(&v90);
    v41 = v84;
  }

  *a5 = v36;
  a5[1] = v38;
  a5[2] = v39 & 1;
  a5[3] = v40;
  a5[4] = v41;
  return result;
}

unint64_t AxisValueLabelOrientation.description.getter()
{
  v1 = 0x746E6F7A69726F68;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    v1 = 0x6C61636974726576;
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

unint64_t sub_1AADDC1C4()
{
  v1 = 0x6974616D6F747561;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0x746E6F7A69726F68;
  if (*v0)
  {
    v2 = 0x6C61636974726576;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

void static AxisValueLabelCollisionResolution.greedy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
}

uint64_t static AxisValueLabelCollisionResolution.greedy(priority:minimumSpacing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  *(a3 + 18) = 0;
  return result;
}

void static AxisValueLabelCollisionResolution.truncate.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 0;
}

double static AxisValueLabelCollisionResolution.disabled.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1AAF92AC0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 0;
  return result;
}

uint64_t AxisValueLabelCollisionResolution.description.getter()
{
  if (*(v0 + 18))
  {
    return 0x6974616D6F747561;
  }

  v2 = *(v0 + 16);
  if ((v2 & 0x100) != 0)
  {
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = *v0 == 0;
    }

    if (v3)
    {
      return 0x657461636E757274;
    }

    else
    {
      return 0x64656C6261736964;
    }
  }

  else
  {
    if (v2)
    {
      if (*v0 == 0.0)
      {
        return 0x796465657267;
      }

      sub_1AAF900D4();
      MEMORY[0x1AC5982F0](0xD000000000000011, 0x80000001AAFCE6E0);
      sub_1AAF8FA24();
    }

    else
    {
      sub_1AAF900D4();
      MEMORY[0x1AC5982F0](0xD000000000000011, 0x80000001AAFCE6E0);
      sub_1AAF8FA24();
      MEMORY[0x1AC5982F0](0xD000000000000012, 0x80000001AAFCE700);
      v4 = sub_1AAF8F9F4();
      MEMORY[0x1AC5982F0](v4);
    }

    MEMORY[0x1AC5982F0](41, 0xE100000000000000);
    return 0;
  }
}

uint64_t sub_1AADDC474(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v9 = a4[2];
  v8 = a4[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[0] = sub_1AAF8FE74();
  v11 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  v13 = v20 - v12;
  sub_1AACCAE10(a1, a2, a3);
  v14 = a4[4];
  sub_1AACFB938(a1, a2, a3, AssociatedTypeWitness, v14, v13);
  v15 = sub_1AADDC640(v20[1], v9, v8, v14);
  v22 = v9;
  v23 = v8;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v17 = v20[0];
  sub_1AACD90D0(sub_1AADDDE68, v21, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v18, v27);
  (*(v11 + 8))(v13, v17);

  if (v27[1])
  {
    return v27[0];
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_1AADDC640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a2);
  return sub_1AADDDEA8;
}

uint64_t sub_1AADDC770(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56[0] = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8FE74();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v63 = v56 - v7;
  v8 = sub_1AAF8FE74();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v56 - v9;
  v62 = v6;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v56 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v56 - v20;
  v22 = *(v4 + 16);
  v22(v56 - v20, v67, v3, v19);
  v66 = v4;
  v67 = v3;
  v23 = *(v4 + 56);
  v64 = v21;
  v24 = v21;
  v25 = v23;
  v23(v24, 0, 1, v3);
  sub_1AACAEF68(v61, v68);
  sub_1AADDDE04();
  v26 = swift_dynamicCast();
  v27 = a2;
  v28 = *(a2 - 8);
  v29 = *(v28 + 56);
  v56[1] = a2;
  v59 = v14;
  if (v26)
  {
    v30 = v28;
    v31 = v27;
    v29(v10, 0, 1, v27);
    v32 = v67;
    (v22)(v17, v10, v67);
    (*(v30 + 8))(v10, v31);
    v33 = v17;
    v34 = 0;
    v35 = v32;
  }

  else
  {
    v29(v10, 1, 1, a2);
    (*(v57 + 8))(v10, v58);
    v33 = v17;
    v34 = 1;
    v35 = v67;
  }

  v25(v33, v34, 1, v35);
  v36 = v64;
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = *(v11 + 16);
  v39 = v62;
  v40 = v63;
  v38(v63, v64, v62);
  v38(&v40[v37], v17, v39);
  v41 = *(v66 + 48);
  if (v41(v40, 1, v67) != 1)
  {
    v46 = v59;
    v38(v59, v40, v39);
    v44 = v40;
    if (v41(&v40[v37], 1, v67) != 1)
    {
      v48 = v66;
      v49 = &v40[v37];
      v50 = v56[0];
      v51 = v67;
      (*(v66 + 32))(v56[0], v49, v67);
      v45 = sub_1AAF8F5F4();
      v52 = v46;
      v53 = *(v48 + 8);
      v53(v50, v51);
      v54 = *(v11 + 8);
      v54(v17, v39);
      v54(v64, v39);
      v53(v52, v51);
      v54(v44, v39);
      return v45 & 1;
    }

    v47 = *(v11 + 8);
    v47(v17, v39);
    v47(v64, v39);
    (*(v66 + 8))(v46, v67);
    goto LABEL_9;
  }

  v42 = v36;
  v43 = *(v11 + 8);
  v43(v17, v39);
  v43(v42, v39);
  v44 = v40;
  if (v41(&v40[v37], 1, v67) != 1)
  {
LABEL_9:
    (*(v60 + 8))(v44, TupleTypeMetadata2);
    v45 = 0;
    return v45 & 1;
  }

  v43(v40, v39);
  v45 = 1;
  return v45 & 1;
}

void sub_1AADDCE94()
{
  sub_1AACDF8EC(319, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AACDF8EC(319, &qword_1ED9B2760, MEMORY[0x1E6981FA0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AACDF8EC(319, &qword_1ED9B2AF8, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1AACDF8EC(319, &qword_1ED9B2780, &type metadata for AxisValueLabelCollisionResolution.Storage, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1AACDF8EC(319, &qword_1ED9B2788, &type metadata for AxisValueLabelOrientation.Storage, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1AACDF8EC(319, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for AxisValueLabel.LabelContent();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1AADDD070(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x2A)
  {
    v4 = 42;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = *(v3 + 80) & 0xF8;
  v6 = v4 + (~v5 & (v5 + 112)) + 1;
  v7 = 8 * v6;
  if (v6 > 3)
  {
    goto LABEL_6;
  }

  v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
  if (HIWORD(v10))
  {
    v8 = *&a1[v6];
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_25:
    v12 = *a1;
    v13 = v12 >= 2;
    v14 = (v12 + 2147483646) & 0x7FFFFFFF;
    if (!v13)
    {
      v14 = -1;
    }

    if (v14 + 1 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  if (v10 > 0xFF)
  {
    v8 = *&a1[v6];
    if (*&a1[v6])
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (v10 < 2)
  {
    goto LABEL_25;
  }

LABEL_6:
  v8 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1AADDD1E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x2A)
  {
    v6 = 42;
  }

  v7 = *(v5 + 80) & 0xF8;
  v8 = v6 + (~v7 & (v7 + 112)) + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      *a1 = a2 + 2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

__n128 initializeBufferWithCopyOfBuffer for AxisValueLabelCollisionResolution(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisValueLabelCollisionResolution(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 19))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AxisValueLabelCollisionResolution(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 19) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AxisValueLabelCollisionResolution.Storage(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AxisValueLabelCollisionResolution.Storage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AxisValueLabelCollisionResolution.Storage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_1AADDD4B8(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADDD4D4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

__n128 sub_1AADDD508(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AADDD51C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
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

uint64_t sub_1AADDD564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AADDD5C4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AADDD634(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 42;
  if (*(v3 + 64) > 0x2AuLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1AADDD74C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x2A)
  {
    v5 = 42;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1AADDD908()
{
  result = qword_1EB424C50;
  if (!qword_1EB424C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C50);
  }

  return result;
}

uint64_t sub_1AADDD95C(uint64_t a1, uint64_t a2)
{
  sub_1AADABA40(a1, v13);
  sub_1AADABA40(a2, &v14);
  if (v13[41])
  {
    sub_1AADABA40(v13, &v11);
    if (v16 == 1)
    {
      v9 = v11;
      *v10 = v12[0];
      *&v10[9] = *(v12 + 9);
      v7 = v14;
      v8[0] = *v15;
      *(v8 + 9) = *&v15[9];
      v3 = sub_1AAF77A14(&v9, &v7);
      sub_1AAD57C94(&v7);
      sub_1AAD57C94(&v9);
LABEL_9:
      sub_1AADDDB64(v13);
      return v3 & 1;
    }

    sub_1AAD57C94(&v11);
  }

  else
  {
    sub_1AADABA40(v13, &v11);
    if ((v16 & 1) == 0)
    {
      sub_1AACBB198(&v11, &v9);
      sub_1AACBB198(&v14, &v7);
      v4 = *&v10[8];
      v5 = *&v10[16];
      sub_1AACBB42C(&v9, *&v10[8]);
      v3 = (*(v5 + 16))(&v7, v4, v5);
      sub_1AACB634C(&v7);
      sub_1AACB634C(&v9);
      goto LABEL_9;
    }

    sub_1AACB634C(&v11);
  }

  sub_1AADDDAAC(v13);
  v3 = 0;
  return v3 & 1;
}

uint64_t sub_1AADDDAAC(uint64_t a1)
{
  sub_1AADDDB08();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AADDDB08()
{
  if (!qword_1EB424C58)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424C58);
    }
  }
}

void sub_1AADDDB94()
{
  if (!qword_1ED9AF4E8)
  {
    v0 = sub_1AAF8E5F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AF4E8);
    }
  }
}

uint64_t sub_1AADDDBEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AADDDC34(uint64_t a1, uint64_t a2)
{
  sub_1AACDF8EC(0, qword_1ED9B4010, &type metadata for AnyFormatStyle, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADDDCD4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AADDDD44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADDDD80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AADDDDCC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

unint64_t sub_1AADDDE04()
{
  result = qword_1EB424C60;
  if (!qword_1EB424C60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB424C60);
  }

  return result;
}

uint64_t sub_1AADDDE68@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AADDDF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (sub_1AAF8F8D4() != 1)
  {
    v48 = a1;
    *&v50 = a2;
    v15 = sub_1AAF8F914();
    WitnessTable = swift_getWitnessTable();
    result = sub_1AAF8FC24();
    if (result)
    {
      __break(1u);
    }

    else
    {
      *&v50 = a2;
      MEMORY[0x1EEE9AC00](result);
      v37 = a6;
      v38 = v17;
      v46 = a3;
      v47 = v17;
      v39 = v48;
      v45 = a4 & 1;
      LOBYTE(v40) = a4 & 1;
      v44 = a5 & 1;
      BYTE1(v40) = a5 & 1;
      v41 = a3;
      sub_1AADDE62C(0, &qword_1ED9B0CD8, MEMORY[0x1E69E5F90]);
      v20 = sub_1AACB00E0(sub_1AADDE4E8, v36, v15, v18, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);
      v21 = *(v20 + 16);
      v22 = MEMORY[0x1E69E7CC0];
      if (v21)
      {
        v43 = a7;
        *&v50 = MEMORY[0x1E69E7CC0];
        sub_1AAD214F4(0, v21, 0);
        v22 = v50;
        v23 = *(v50 + 16);
        v24 = (v20 + 40);
        do
        {
          v26 = *v24;
          v24 += 2;
          v25 = v26;
          *&v50 = v22;
          v27 = *(v22 + 24);
          if (v23 >= v27 >> 1)
          {
            sub_1AAD214F4((v27 > 1), v23 + 1, 1);
            v22 = v50;
          }

          *(v22 + 16) = v23 + 1;
          *(v22 + 8 * v23++ + 32) = v25;
          --v21;
        }

        while (v21);
      }

      v28 = sub_1AADE6A18(v22);
      v30 = v29;

      v31 = v47;
      if ((v30 & 1) == 0)
      {
        v51 = a2;
        swift_getWitnessTable();
        v32 = sub_1AAF8FB04();
        v49 = v50;
        MEMORY[0x1EEE9AC00](v32);
        v36[0] = a6;
        v36[1] = v31;
        v37 = v20;
        v38 = v28;
        v39 = a2;
        v40 = v48;
        LOBYTE(v41) = v45;
        BYTE1(v41) = v44;
        v42 = v46;
        sub_1AADDE62C(0, &qword_1ED9B29B0, MEMORY[0x1E69E66A8]);
        v33 = sub_1AADDE68C();
        v34 = sub_1AADDE728();
        result = sub_1AAF786F0(sub_1AADDE5F0, &v35, &type metadata for DiffToDesiredCount, v33, v34, &v52);
        if ((v53 & 1) == 0)
        {

          return sub_1AAF8F944();
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  return sub_1AAF8F944();
}

uint64_t sub_1AADDE2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 == v4)
  {
    if (!v4)
    {
      if (!__OFSUB__(a3, a1))
      {
        if (a3 - a1 >= result)
        {
          return result;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = a1 - a3;
  if (a1 < a3)
  {
    v6 = a1 - a2;
    if (!__OFSUB__(a1, a2))
    {
      v4 = __OFSUB__(a1, a3);
      v7 = a1 - a3;
      if (!v4)
      {
        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (__OFSUB__(a1, a3))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = __OFSUB__(a1, a2);
  v9 = a1 - a2;
  if (v4)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v9 < result)
  {
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_1AADDE344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, char a3@<W5>, char a4@<W6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v18;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v14 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v14 + 16 * result + 32) > v15)
  {
    v20 = qword_1EB424C68;
    v21 = unk_1EB424C70;
LABEL_11:
    *a6 = v20;
    a6[1] = v21;
    return result;
  }

  sub_1AAF8F944();
  v22 = (*(a8 + 32))(a2, a3 & 1, a4 & 1, a7, a8);
  result = (*(v13 + 8))(v17, a7);
  v20 = v22 - a5;
  if (__OFSUB__(v22, a5))
  {
    goto LABEL_14;
  }

  if ((v20 & 0x8000000000000000) == 0 || (v23 = __OFSUB__(0, v20), v20 = a5 - v22, !v23))
  {
    if (v22 >= a5)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_1AADDE4C8(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a2[1] < a1[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

uint64_t sub_1AADDE4E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = (*(*(v1 + 24) + 40))(*(v1 + 32), *(v1 + 40), *(v1 + 41), *(v1 + 16));
  result = sub_1AADDE2BC(v3, v4, v5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

BOOL sub_1AADDE564(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a1[1] >= a2[1];
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_1AADDE584(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a2[1] >= a1[1];
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_1AADDE5A4(void *a1, void *a2)
{
  if (*a2 == *a1)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a2 < *a1;
  }
}

void sub_1AADDE62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AADDE68C()
{
  result = qword_1EB424C78;
  if (!qword_1EB424C78)
  {
    sub_1AADDE62C(255, &qword_1ED9B29B0, MEMORY[0x1E69E66A8]);
    sub_1AAD2000C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C78);
  }

  return result;
}

unint64_t sub_1AADDE728()
{
  result = qword_1EB424C80;
  if (!qword_1EB424C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C80);
  }

  return result;
}

unint64_t sub_1AADDE790()
{
  result = qword_1EB424C88;
  if (!qword_1EB424C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424C88);
  }

  return result;
}

uint64_t sub_1AADDE7E4(uint64_t a1)
{
  sub_1AACEC8E4();
  v3 = v2;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  type metadata accessor for CalendarBinningUnit(0);
  v9 = sub_1AACEE9E4(a1);
  v10 = sub_1AACEE9E4(a1 + *(v3 + 36));
  sub_1AACE8E98(v9, v8);
  result = sub_1AACE8E98(v10, v6);
  v12 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1AAF8CA14();
  if (result)
  {
    v14 = __OFSUB__(v13--, 1);
    if (v14)
    {
      goto LABEL_10;
    }
  }

  v15 = sub_1AAF8CA14();
  sub_1AACE8D8C(v6, sub_1AACEC8E4);
  result = sub_1AACE8D8C(v8, sub_1AACEC8E4);
  if ((v15 & 1) == 0)
  {
    return v13;
  }

  v14 = __OFSUB__(v13--, 1);
  if (!v14)
  {
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1AADDE958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AACD57C4();
  v5 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  sub_1AACEC8E4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CalendarBinningUnit(0);
  v15 = sub_1AACEE9E4(a1);
  sub_1AACE8E98(v15, v14);
  if ((sub_1AAF8CA14() & 1) == 0 && (sub_1AAF8CA14() & 1) == 0)
  {
    return sub_1AACD582C(v14, a2, sub_1AACEC8E4);
  }

  v16 = sub_1AAF8CA64();
  sub_1AACECACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
  v17 = sub_1AAF8F584();
  result = sub_1AACE8D8C(v14, sub_1AACEC8E4);
  if (v17)
  {
    v19 = *(v16 - 8);
    v20 = v19[2];
    v20(v10, a1, v16);
    v20(&v10[*(v5 + 48)], a1, v16);
    sub_1AACEDD44(v10, v8, sub_1AACD57C4);
    v21 = *(v5 + 48);
    v22 = v19[4];
    v22(a2, v8, v16);
    v25 = a2;
    v23 = v19[1];
    v23(&v8[v21], v16);
    sub_1AACD582C(v10, v8, sub_1AACD57C4);
    v22(v25 + *(v12 + 36), &v8[*(v5 + 48)], v16);
    return (v23)(v8, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADDEC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  sub_1AACD57C4();
  v49 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - v9;
  v10 = sub_1AAF8CA64();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  sub_1AACEC8E4();
  v18 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v46 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v45 - v24;
  sub_1AADDE958(a1, &v45 - v24);
  v54 = v18;
  v26 = a1 + *(v18 + 36);
  v50 = v3;
  sub_1AADDE958(v26, v23);
  v27 = v25;
  v51 = a2;
  if ((a2 & 1) == 0)
  {
    v27 = &v25[*(v54 + 36)];
  }

  v28 = v11[2];
  v29 = v16;
  v28(v16, v27, v10);
  v30 = v23;
  v31 = v53;
  if (v53)
  {
    v30 = &v23[*(v54 + 36)];
  }

  v52 = v23;
  v32 = v14;
  v28(v14, v30, v10);
  sub_1AACECACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
  v33 = v29;
  if (sub_1AAF8F564())
  {
    v34 = v11[1];
    v34(v32, v10);
    v34(v29, v10);
    sub_1AACE8D8C(v52, sub_1AACEC8E4);
    sub_1AACE8D8C(v25, sub_1AACEC8E4);
    return (v31 & 1) + (v51 & 1);
  }

  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v36 = v32;
  v45 = v32;
  v37 = v48;
  v28(v48, v33, v10);
  v38 = v47;
  v53 = v25;
  v39 = v49;
  v28((v37 + *(v49 + 48)), v36, v10);
  sub_1AACEDD44(v37, v38, sub_1AACD57C4);
  v40 = *(v39 + 48);
  v41 = v11[4];
  v51 = v33;
  v42 = v46;
  v41(v46, v38, v10);
  v43 = v11[1];
  v43(v38 + v40, v10);
  sub_1AACD582C(v37, v38, sub_1AACD57C4);
  v41((v42 + *(v54 + 36)), v38 + *(v39 + 48), v10);
  v43(v38, v10);
  v44 = sub_1AADDE7E4(v42);
  sub_1AACE8D8C(v42, sub_1AACEC8E4);
  v43(v45, v10);
  v43(v51, v10);
  sub_1AACE8D8C(v52, sub_1AACEC8E4);
  sub_1AACE8D8C(v53, sub_1AACEC8E4);
  result = v44 + 1;
  if (__OFADD__(v44, 1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADDF164()
{
  sub_1AACEC8E4();
  sub_1AAF8C854();
  v2 = v1;
  result = sub_1AAF8C854();
  v5 = v2 - v4;
  v6 = ceil((v2 - v4) / *(v0 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_durationBounds + 8));
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = ceil(v5 / *(v0 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_durationBounds)) + 1.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v6;
  if (v7 < v6)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADDF288(uint64_t a1, char a2, char a3)
{
  result = sub_1AADDF164();
  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    v7 = __OFSUB__(result--, 1);
    if (v7)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v7 = __OFADD__(v6++, 1);
    if (v7)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v6 >= result)
    {
      return result;
    }

    __break(1u);
  }

  v7 = __OFADD__(result++, 1);
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < result)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADDF310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1AAF8CB84() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)) && (sub_1AAF8CA14())
  {

    JUMPOUT(0x1AC595760);
  }

  return 0;
}

uint64_t sub_1AADDF3A0()
{
  sub_1AAF90694();
  sub_1AACED800(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AADDF3E4()
{
  sub_1AAF90694();
  sub_1AACED800(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AADDF424()
{
  sub_1AAF8CAD4();
  type metadata accessor for CalendarCache.Value(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AADDF484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CalendarCache.Value(0);
  v7 = MEMORY[0x1EEE9AC00](v23);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  sub_1AADDFDEC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = sub_1AAF8CB94();
  (*(*(v15 - 8) + 16))(v6, a1, v15);
  v16 = sub_1AAF8CA64();
  v17 = *(*(v16 - 8) + 16);
  v17(&v6[v13], a2, v16);
  v18 = v21;
  v17(&v6[v14], v21, v16);
  swift_storeEnumTagMultiPayload();
  v24 = v22;
  v25 = a1;
  v26 = a2;
  v27 = v18;
  swift_beginAccess();
  sub_1AACED630(v6, sub_1AADE42CC, v11);
  swift_endAccess();
  sub_1AACE8D8C(v6, type metadata accessor for CalendarCache.Key);
  sub_1AACEDD44(v11, v9, type metadata accessor for CalendarCache.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AACE8D8C(v11, type metadata accessor for CalendarCache.Value);
    return *v9;
  }

  else
  {
    result = sub_1AACE8D8C(v9, type metadata accessor for CalendarCache.Value);
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADDF734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[2] = a3;
  v18[3] = a4;
  v18[1] = a1;
  v7 = sub_1AAF8C774();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893713CalendarCache_calendar;
  sub_1AACECC0C(0, &qword_1ED9B1E08, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v11 = sub_1AAF8CB94();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AAF92AB0;
  (*(v12 + 16))(v14 + v13, a2, v11);
  sub_1AACEC014(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  sub_1AAF8CAF4();

  v15 = sub_1AAF8C744();
  LOBYTE(a2) = v16;
  (*(v8 + 8))(v10, v7);
  *a5 = v15;
  *(a5 + 8) = a2 & 1;
  type metadata accessor for CalendarCache.Value(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AADDF990()
{
  sub_1AAF8CB54();
  type metadata accessor for CalendarCache.Value(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AADDF9F8()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1AADF70C8(MEMORY[0x1E69E7CC0]);
  sub_1AADE4364();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AAFA1130;
  *(v2 + 32) = v0;
  *(v2 + 40) = -1;
  *(v2 + 48) = -1;
  *(v2 + 56) = v1;
  swift_beginAccess();
  pthread_key_create((v2 + 16), sub_1AAF8AEF0);
  result = swift_endAccess();
  off_1ED9B14C8 = v2;
  return result;
}

uint64_t sub_1AADDFAA8()
{
  v1 = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893713CalendarCache_calendar;
  v2 = sub_1AAF8CBA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AADDFB8C()
{
  result = sub_1AAF8CBA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AADDFC2C()
{
  sub_1AACECC0C(319, &qword_1ED9B2738, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AADDFD14();
    if (v1 <= 0x3F)
    {
      sub_1AACECC0C(319, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1AADDFD14()
{
  if (!qword_1ED9B29B8)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B29B8);
    }
  }
}

void sub_1AADDFD64()
{
  sub_1AACE8B14();
  if (v0 <= 0x3F)
  {
    sub_1AADDFDEC();
    if (v1 <= 0x3F)
    {
      sub_1AADDFE60();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1AADDFDEC()
{
  if (!qword_1ED9B1668)
  {
    sub_1AAF8CB94();
    sub_1AAF8CA64();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED9B1668);
    }
  }
}

void sub_1AADDFE60()
{
  if (!qword_1ED9B1658)
  {
    sub_1AAF8CB94();
    sub_1AAF8CA64();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED9B1658);
    }
  }
}

uint64_t sub_1AADDFF48(uint64_t a1)
{
  result = sub_1AACECACC(&qword_1EB424C90, type metadata accessor for CalendarBinningUnit);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AADDFFE8(uint64_t a1, uint64_t a2)
{
  v710 = sub_1AAF8CBA4();
  v708 = *(v710 - 8);
  v4 = MEMORY[0x1EEE9AC00](v710);
  v704 = &v685 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v693 = &v685 - v6;
  v7 = sub_1AAF8CB94();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v707 = &v685 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v685 - v11;
  sub_1AACECC0C(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v685 - v14;
  v16 = sub_1AAF8CA64();
  v709 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v702 = &v685 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v685 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v685 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v689 = &v685 - v25;
  v26 = *(v8 + 104);
  v690 = *MEMORY[0x1E6969A68];
  v699 = v8 + 104;
  v698 = v26;
  v26(v12);
  v703 = a2;
  sub_1AAF8CAD4();
  v706 = v8;
  v700 = *(v8 + 8);
  v701 = v8 + 8;
  v700(v12, v7);
  v27 = sub_1AAF8C6F4();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v15, 1, v27) == 1)
  {
    sub_1AADE4234(v15);
    (*(v709 + 16))(v689, a1, v16);
  }

  else
  {
    sub_1AAF8C6E4();
    (*(v28 + 8))(v15, v27);
    (*(v709 + 32))(v689, v24, v16);
  }

  v691 = a1;
  sub_1AACECC0C(0, &qword_1ED9B0658, type metadata accessor for CalendarBinningUnit, MEMORY[0x1E69E6F90]);
  v29 = type metadata accessor for CalendarBinningUnit(0);
  v30 = *(v29 - 8);
  v31 = (v29 - 8);
  v692 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  v686 = v33;
  *(v33 + 16) = xmmword_1AAFA1140;
  v34 = v33 + v32;
  LODWORD(v688) = *MEMORY[0x1E6969A98];
  v698(v12);
  v35 = *(v709 + 16);
  v716 = v709 + 16;
  v35(v21, a1, v16);
  v715 = *(v708 + 16);
  v718 = v7;
  v719 = v12;
  v36 = v16;
  v37 = v708 + 16;
  v38 = v710;
  v715(v693, v703, v710);
  v39 = v706 + 16;
  v705 = *(v706 + 16);
  v705(v34, v12, v7);
  v706 = v39;
  *(v34 + v31[7]) = 1;
  v40 = v31[8];
  v714 = v31;
  v41 = (v34 + v40);
  v42 = v34;
  v695 = v34;
  v43 = v36;
  v717 = v35;
  v35(v41, v21, v36);
  v44 = v42 + v31[9];
  v45 = v693;
  v713 = v37;
  v46 = v715;
  v715(v44, v693, v38);
  v47 = v707;
  v705(v707, v719, v718);
  v48 = v702;
  v35(v702, v21, v36);
  v49 = v704;
  v46(v704, v45, v38);
  v694 = type metadata accessor for CalendarBinningImpl(0);
  swift_allocObject();
  v50 = sub_1AACE7AF4(v47, 1, v48, v49);
  v696 = *(v708 + 8);
  v708 += 8;
  v51 = v38;
  v696(v45, v38);
  v52 = *(v709 + 8);
  v709 += 8;
  v697 = v52;
  v53 = v21;
  v52(v21, v43);
  v55 = v718;
  v54 = v719;
  v700(v719, v718);
  v56 = v714;
  v57 = v695;
  *(v695 + v714[10]) = v50;
  v58 = v57 + v692;
  v59 = v55;
  (v698)(v54, v688, v55);
  v711 = v53;
  v712 = v43;
  v60 = v717;
  v717(v53, v691, v43);
  v61 = v693;
  v715(v693, v703, v51);
  v62 = v58;
  v63 = v58;
  v64 = v705;
  v705(v62, v54, v59);
  *(v63 + v56[7]) = 5;
  v65 = v63 + v56[8];
  v687 = v63;
  v60(v65, v53, v43);
  v66 = v60;
  v67 = v61;
  v68 = v710;
  v69 = v715;
  v715((v63 + v56[9]), v67, v710);
  v70 = v707;
  v64(v707, v719, v59);
  v71 = v702;
  v72 = v711;
  v66(v702, v711, v712);
  v73 = v704;
  v74 = v693;
  v69(v704, v693, v68);
  swift_allocObject();
  v75 = sub_1AACE7AF4(v70, 5, v71, v73);
  v76 = v74;
  v696(v74, v68);
  v77 = v72;
  v78 = v712;
  v697(v72, v712);
  v80 = v718;
  v79 = v719;
  v700(v719, v718);
  v81 = v714;
  *(v687 + v714[10]) = v75;
  v687 = 2 * v692;
  v82 = v695 + 2 * v692;
  v83 = v79;
  (v698)(v79, v688, v80);
  v84 = v717;
  v717(v77, v691, v78);
  v85 = v68;
  v86 = v715;
  v715(v76, v703, v85);
  v87 = v80;
  v88 = v705;
  v705(v82, v83, v87);
  *(v82 + v81[7]) = 15;
  v89 = v82 + v81[8];
  v685 = v82;
  v90 = v77;
  v91 = v712;
  v84(v89, v90, v712);
  v92 = v82 + v81[9];
  v93 = v76;
  v94 = v710;
  v86(v92, v76, v710);
  v95 = v707;
  v88(v707, v719, v718);
  v96 = v702;
  v717(v702, v711, v91);
  v97 = v704;
  v86(v704, v76, v94);
  swift_allocObject();
  v98 = sub_1AACE7AF4(v95, 15, v96, v97);
  v99 = v94;
  v696(v76, v94);
  v101 = v711;
  v100 = v712;
  v697(v711, v712);
  v102 = v718;
  v103 = v719;
  v700(v719, v718);
  v104 = v714;
  *(v685 + v714[10]) = v98;
  v105 = v695 + v687 + v692;
  v106 = v102;
  (v698)(v103, v688, v102);
  v107 = v717;
  v717(v101, v691, v100);
  v108 = v715;
  v715(v93, v703, v99);
  v109 = v106;
  v110 = v705;
  v705(v105, v103, v109);
  *(v105 + v104[7]) = 30;
  v111 = v104;
  v112 = v105 + v104[8];
  v113 = v105;
  v687 = v105;
  v114 = v101;
  v115 = v712;
  v107(v112, v101, v712);
  v116 = v113 + v111[9];
  v117 = v693;
  v118 = v710;
  v108(v116, v693, v710);
  v119 = v108;
  v120 = v707;
  v110(v707, v719, v718);
  v121 = v702;
  v717(v702, v114, v115);
  v122 = v704;
  v119(v704, v117, v118);
  swift_allocObject();
  v123 = sub_1AACE7AF4(v120, 30, v121, v122);
  v696(v117, v118);
  v124 = v114;
  v125 = v712;
  v697(v114, v712);
  v126 = v718;
  v127 = v719;
  v700(v719, v718);
  *(v687 + v714[10]) = v123;
  v687 = 4 * v692;
  v128 = v695 + 4 * v692;
  LODWORD(v688) = *MEMORY[0x1E6969A88];
  v698(v127);
  v129 = v717;
  v717(v124, v691, v125);
  v130 = v710;
  v715(v117, v703, v710);
  v131 = v127;
  v132 = v705;
  v705(v128, v131, v126);
  v133 = v714;
  *(v128 + v714[7]) = 1;
  v134 = v133;
  v129(v128 + v133[8], v124, v712);
  v135 = v715;
  v715((v128 + v134[9]), v117, v130);
  v136 = v707;
  v132(v707, v719, v718);
  v137 = v702;
  v139 = v711;
  v138 = v712;
  v717(v702, v711, v712);
  v140 = v704;
  v141 = v710;
  v135(v704, v117, v710);
  swift_allocObject();
  v142 = sub_1AACE7AF4(v136, 1, v137, v140);
  v143 = v117;
  v696(v117, v141);
  v144 = v139;
  v145 = v138;
  v697(v139, v138);
  v147 = v718;
  v146 = v719;
  v700(v719, v718);
  v148 = v714;
  *(v128 + v714[10]) = v142;
  v149 = v695 + v687 + v692;
  (v698)(v146, v688, v147);
  v150 = v144;
  v151 = v144;
  v152 = v717;
  v717(v150, v691, v145);
  v153 = v141;
  v154 = v715;
  v715(v143, v703, v153);
  v155 = v146;
  v156 = v705;
  v705(v149, v155, v147);
  *(v149 + v148[7]) = 5;
  v157 = v149 + v148[8];
  v687 = v149;
  v152(v157, v151, v145);
  v158 = v149 + v148[9];
  v159 = v693;
  v154(v158, v693, v710);
  v160 = v154;
  v161 = v707;
  v156(v707, v719, v718);
  v162 = v702;
  v163 = v151;
  v164 = v712;
  v717(v702, v163, v712);
  v165 = v704;
  v166 = v159;
  v167 = v159;
  v168 = v710;
  v160(v704, v167, v710);
  swift_allocObject();
  v169 = sub_1AACE7AF4(v161, 5, v162, v165);
  v170 = v166;
  v171 = v166;
  v172 = v168;
  v696(v170, v168);
  v173 = v711;
  v174 = v164;
  v697(v711, v164);
  v175 = v718;
  v176 = v719;
  v700(v719, v718);
  v177 = v714;
  *(v687 + v714[10]) = v169;
  v178 = v695 + 6 * v692;
  v179 = v175;
  (v698)(v176, v688, v175);
  v180 = v717;
  v717(v173, v691, v174);
  v181 = v715;
  v715(v171, v703, v172);
  v182 = v179;
  v183 = v705;
  v705(v178, v176, v182);
  *(v178 + v177[7]) = 15;
  v184 = v178 + v177[8];
  v687 = v178;
  v185 = v712;
  v180(v184, v173, v712);
  v186 = v178 + v177[9];
  v187 = v693;
  v188 = v710;
  v181(v186, v693, v710);
  v189 = v707;
  v190 = v718;
  v183(v707, v719, v718);
  v191 = v702;
  v192 = v711;
  v717(v702, v711, v185);
  v193 = v704;
  v715(v704, v187, v188);
  swift_allocObject();
  v194 = sub_1AACE7AF4(v189, 15, v191, v193);
  v696(v187, v188);
  v697(v192, v185);
  v195 = v719;
  v700(v719, v190);
  *(v687 + v714[10]) = v194;
  v687 = 8 * v692;
  v196 = v695 + 7 * v692;
  (v698)(v195, v688, v190);
  v197 = v717;
  v717(v192, v691, v185);
  v198 = v693;
  v199 = v715;
  v715(v693, v703, v188);
  v200 = v195;
  v201 = v705;
  v705(v196, v200, v190);
  v202 = v714;
  *(v196 + v714[7]) = 30;
  v203 = v196 + v202[8];
  v685 = v196;
  v204 = v711;
  v197(v203, v711, v712);
  v205 = v196 + v202[9];
  v206 = v710;
  v199(v205, v198, v710);
  v207 = v707;
  v201(v707, v719, v718);
  v208 = v702;
  v209 = v204;
  v210 = v204;
  v211 = v712;
  v717(v702, v209, v712);
  v212 = v704;
  v213 = v693;
  v214 = v206;
  v199(v704, v693, v206);
  swift_allocObject();
  v215 = sub_1AACE7AF4(v207, 30, v208, v212);
  v696(v213, v206);
  v216 = v211;
  v697(v210, v211);
  v218 = v718;
  v217 = v719;
  v700(v719, v718);
  v219 = v714;
  *(v685 + v714[10]) = v215;
  v220 = v695 + v687;
  LODWORD(v688) = *MEMORY[0x1E6969A58];
  v698(v217);
  v221 = v717;
  v717(v210, v691, v216);
  v715(v213, v703, v214);
  v222 = v218;
  v223 = v705;
  v705(v220, v217, v222);
  v224 = v219;
  *(v220 + v219[7]) = 1;
  v225 = v220 + v219[8];
  v226 = v220;
  v685 = v220;
  v221(v225, v711, v216);
  v227 = v221;
  v228 = v226 + v224[9];
  v229 = v710;
  v230 = v715;
  v715(v228, v213, v710);
  v231 = v707;
  v223(v707, v719, v718);
  v232 = v702;
  v233 = v711;
  v227(v702, v711, v712);
  v234 = v704;
  v235 = v213;
  v236 = v229;
  v230(v704, v213, v229);
  swift_allocObject();
  v237 = sub_1AACE7AF4(v231, 1, v232, v234);
  v696(v213, v229);
  v238 = v712;
  v697(v233, v712);
  v239 = v718;
  v240 = v719;
  v700(v719, v718);
  v241 = v714;
  *(v685 + v714[10]) = v237;
  v242 = v695 + v687 + v692;
  v243 = v240;
  (v698)(v240, v688, v239);
  v244 = v233;
  v245 = v717;
  v717(v244, v691, v238);
  v246 = v715;
  v715(v235, v703, v236);
  v247 = v243;
  v248 = v705;
  v705(v242, v247, v239);
  *(v242 + v241[7]) = 3;
  v249 = v241;
  v250 = v242 + v241[8];
  v687 = v242;
  v251 = v711;
  v245(v250, v711, v712);
  v252 = v242 + v249[9];
  v253 = v235;
  v254 = v235;
  v255 = v710;
  v246(v252, v253, v710);
  v256 = v246;
  v257 = v707;
  v248(v707, v719, v718);
  v258 = v702;
  v259 = v251;
  v717(v702, v251, v712);
  v260 = v704;
  v256(v704, v254, v255);
  swift_allocObject();
  v261 = sub_1AACE7AF4(v257, 3, v258, v260);
  v262 = v254;
  v696(v254, v255);
  v263 = v712;
  v697(v251, v712);
  v264 = v718;
  v265 = v719;
  v700(v719, v718);
  v266 = v714;
  *(v687 + v714[10]) = v261;
  v267 = v695 + 10 * v692;
  (v698)(v265, v688, v264);
  v268 = v263;
  v269 = v717;
  v717(v259, v691, v268);
  v270 = v715;
  v715(v262, v703, v710);
  v271 = v705;
  v705(v267, v265, v264);
  *(v267 + v266[7]) = 6;
  v272 = v267 + v266[8];
  v687 = v267;
  v273 = v259;
  v274 = v712;
  v269(v272, v273, v712);
  v275 = v693;
  v276 = v710;
  v270(v267 + v266[9], v693, v710);
  v277 = v707;
  v271(v707, v719, v718);
  v278 = v702;
  v279 = v711;
  v717(v702, v711, v274);
  v280 = v704;
  v270(v704, v275, v276);
  swift_allocObject();
  v281 = sub_1AACE7AF4(v277, 6, v278, v280);
  v282 = v275;
  v696(v275, v276);
  v697(v279, v274);
  v283 = v718;
  v284 = v719;
  v700(v719, v718);
  v285 = v714;
  *(v687 + v714[10]) = v281;
  v286 = v695 + 11 * v692;
  (v698)(v284, v688, v283);
  v287 = v279;
  v288 = v279;
  v289 = v274;
  v717(v287, v691, v274);
  v715(v282, v703, v710);
  v290 = v705;
  v705(v286, v284, v283);
  *(v286 + v285[7]) = 12;
  v291 = v286 + v285[8];
  v687 = v286;
  v292 = v288;
  v293 = v288;
  v294 = v717;
  v717(v291, v293, v289);
  v295 = v286 + v285[9];
  v296 = v693;
  v297 = v710;
  v715(v295, v693, v710);
  v298 = v707;
  v290(v707, v719, v718);
  v299 = v702;
  v300 = v289;
  v294(v702, v292, v289);
  v301 = v704;
  v715(v704, v296, v297);
  swift_allocObject();
  v302 = sub_1AACE7AF4(v298, 12, v299, v301);
  v696(v296, v297);
  v697(v292, v289);
  v303 = v718;
  v304 = v719;
  v700(v719, v718);
  v305 = v714;
  *(v687 + v714[10]) = v302;
  v306 = v695 + 12 * v692;
  LODWORD(v688) = *MEMORY[0x1E6969A48];
  v698(v304);
  v307 = v717;
  v717(v292, v691, v300);
  v308 = v715;
  v715(v693, v703, v710);
  v309 = v304;
  v310 = v705;
  v705(v306, v309, v303);
  *(v306 + v305[7]) = 1;
  v311 = v306 + v305[8];
  v687 = v306;
  v307(v311, v292, v300);
  v312 = v693;
  v313 = v710;
  v308(v306 + v305[9], v693, v710);
  v314 = v308;
  v315 = v707;
  v310(v707, v719, v718);
  v316 = v702;
  v318 = v711;
  v317 = v712;
  v307(v702, v711, v712);
  v319 = v704;
  v314(v704, v312, v313);
  swift_allocObject();
  v320 = sub_1AACE7AF4(v315, 1, v316, v319);
  v321 = v312;
  v322 = v312;
  v323 = v313;
  v696(v321, v313);
  v697(v318, v317);
  v325 = v718;
  v324 = v719;
  v700(v719, v718);
  *(v687 + v714[10]) = v320;
  v326 = v695 + 13 * v692;
  v327 = v324;
  (v698)(v324, v688, v325);
  v328 = v717;
  v717(v318, v691, v317);
  v329 = v715;
  v715(v322, v703, v323);
  v330 = v325;
  v331 = v705;
  v705(v326, v327, v330);
  v332 = v714;
  *(v326 + v714[7]) = 2;
  v333 = v326 + v332[8];
  v687 = v326;
  v334 = v712;
  v328(v333, v711, v712);
  v335 = v326 + v332[9];
  v336 = v322;
  v337 = v710;
  v329(v335, v322, v710);
  v338 = v329;
  v339 = v707;
  v331(v707, v719, v718);
  v340 = v702;
  v717(v702, v711, v334);
  v341 = v704;
  v338(v704, v322, v337);
  swift_allocObject();
  v342 = sub_1AACE7AF4(v339, 2, v340, v341);
  v696(v322, v337);
  v344 = v711;
  v343 = v712;
  v697(v711, v712);
  v346 = v718;
  v345 = v719;
  v700(v719, v718);
  v347 = v714;
  *(v687 + v714[10]) = v342;
  v348 = v695 + 14 * v692;
  LODWORD(v688) = *MEMORY[0x1E6969A10];
  v698(v345);
  v349 = v717;
  v717(v344, v691, v343);
  v715(v336, v703, v337);
  v350 = v346;
  v351 = v705;
  v705(v348, v345, v350);
  *(v348 + v347[7]) = 1;
  v352 = v348 + v347[8];
  v687 = v348;
  v353 = v712;
  v349(v352, v344, v712);
  v354 = v349;
  v355 = v348 + v347[9];
  v356 = v693;
  v357 = v710;
  v358 = v715;
  v715(v355, v693, v710);
  v359 = v707;
  v351(v707, v719, v718);
  v360 = v702;
  v354(v702, v711, v353);
  v361 = v704;
  v358(v704, v356, v357);
  swift_allocObject();
  v362 = sub_1AACE7AF4(v359, 1, v360, v361);
  v363 = v357;
  v696(v356, v357);
  v364 = v711;
  v365 = v353;
  v697(v711, v353);
  v366 = v718;
  v367 = v719;
  v700(v719, v718);
  v368 = v714;
  *(v687 + v714[10]) = v362;
  v687 = 16 * v692;
  v369 = v695 + 15 * v692;
  v370 = v367;
  (v698)(v367, v688, v366);
  v371 = v717;
  v717(v364, v691, v365);
  v372 = v715;
  v715(v693, v703, v363);
  v373 = v705;
  v705(v369, v370, v366);
  *(v369 + v368[7]) = 2;
  v374 = v369 + v368[8];
  v685 = v369;
  v371(v374, v364, v712);
  v375 = v693;
  v376 = v710;
  v372(v369 + v368[9], v693, v710);
  v377 = v707;
  v373(v707, v719, v718);
  v378 = v702;
  v379 = v712;
  v371(v702, v711, v712);
  v380 = v704;
  v372(v704, v375, v376);
  swift_allocObject();
  v381 = sub_1AACE7AF4(v377, 2, v378, v380);
  v696(v375, v376);
  v382 = v711;
  v697(v711, v379);
  v384 = v718;
  v383 = v719;
  v700(v719, v718);
  v385 = v714;
  *(v685 + v714[10]) = v381;
  v386 = v695 + v687;
  LODWORD(v688) = *MEMORY[0x1E6969A78];
  v387 = v384;
  v698(v383);
  v388 = v717;
  v717(v382, v689, v379);
  v389 = v715;
  v715(v375, v703, v710);
  v390 = v387;
  v391 = v705;
  v705(v386, v383, v390);
  *(v386 + v385[7]) = 1;
  v392 = v385;
  v393 = v386 + v385[8];
  v394 = v386;
  v685 = v386;
  v395 = v711;
  v388(v393, v711, v379);
  v396 = v394 + v392[9];
  v397 = v375;
  v398 = v710;
  v389(v396, v375, v710);
  v399 = v389;
  v391(v707, v719, v718);
  v400 = v702;
  v717(v702, v395, v379);
  v401 = v704;
  v402 = v398;
  v399(v704, v397, v398);
  swift_allocObject();
  v403 = sub_1AACE7AF4(v707, 1, v400, v401);
  v404 = v397;
  v696(v397, v402);
  v405 = v711;
  v406 = v379;
  v697(v711, v379);
  v408 = v718;
  v407 = v719;
  v700(v719, v718);
  *(v685 + v714[10]) = v403;
  v409 = v695 + v687 + v692;
  (v698)(v407, v688, v408);
  v410 = v717;
  v717(v405, v689, v379);
  v411 = v404;
  v412 = v710;
  v715(v411, v703, v710);
  v413 = v705;
  v705(v409, v407, v408);
  v414 = v714;
  *(v409 + v714[7]) = 2;
  v415 = v409 + v414[8];
  v687 = v409;
  v410(v415, v405, v406);
  v416 = v409 + v414[9];
  v417 = v693;
  v418 = v715;
  v715(v416, v693, v412);
  v419 = v707;
  v413(v707, v719, v718);
  v420 = v702;
  v421 = v712;
  v717(v702, v405, v712);
  v422 = v704;
  v418(v704, v417, v412);
  swift_allocObject();
  v423 = sub_1AACE7AF4(v419, 2, v420, v422);
  v424 = v417;
  v696(v417, v412);
  v425 = v421;
  v697(v405, v421);
  v427 = v718;
  v426 = v719;
  v700(v719, v718);
  *(v687 + v714[10]) = v423;
  v428 = v695 + 18 * v692;
  (v698)(v426, v688, v427);
  v429 = v717;
  v717(v405, v689, v425);
  v715(v424, v703, v710);
  v430 = v426;
  v431 = v705;
  v705(v428, v430, v427);
  v432 = v714;
  *(v428 + v714[7]) = 3;
  v429(v428 + v432[8], v405, v425);
  v433 = v428 + v432[9];
  v434 = v710;
  v435 = v715;
  v715(v433, v424, v710);
  v431(v707, v719, v718);
  v436 = v702;
  v437 = v711;
  v438 = v425;
  v429(v702, v711, v425);
  v439 = v704;
  v440 = v693;
  v435(v704, v693, v434);
  swift_allocObject();
  v441 = sub_1AACE7AF4(v707, 3, v436, v439);
  v442 = v440;
  v443 = v434;
  v696(v440, v434);
  v444 = v438;
  v697(v437, v438);
  v445 = v718;
  v446 = v719;
  v700(v719, v718);
  v447 = v714;
  *(v428 + v714[10]) = v441;
  v448 = v695 + 19 * v692;
  (v698)(v446, v688, v445);
  v449 = v437;
  v450 = v717;
  v717(v449, v689, v444);
  v451 = v442;
  v452 = v715;
  v715(v451, v703, v443);
  v453 = v705;
  v705(v448, v446, v445);
  *(v448 + v447[7]) = 6;
  v454 = v448 + v447[8];
  v687 = v448;
  v450(v454, v711, v444);
  v455 = v693;
  v456 = v710;
  v452(v448 + v447[9], v693, v710);
  v457 = v707;
  v453(v707, v719, v445);
  v458 = v702;
  v460 = v711;
  v459 = v712;
  v717(v702, v711, v712);
  v461 = v704;
  v452(v704, v455, v456);
  swift_allocObject();
  v462 = sub_1AACE7AF4(v457, 6, v458, v461);
  v463 = v455;
  v696(v455, v456);
  v464 = v459;
  v697(v460, v459);
  v466 = v718;
  v465 = v719;
  v700(v719, v718);
  *(v687 + v714[10]) = v462;
  v467 = v695 + 20 * v692;
  (v698)(v465, v690, v466);
  v468 = v717;
  v717(v460, v691, v464);
  v469 = v463;
  v470 = v463;
  v471 = v715;
  v715(v470, v703, v456);
  v472 = v466;
  v473 = v705;
  v705(v467, v465, v472);
  v474 = v714;
  *(v467 + v714[7]) = 1;
  v475 = v467 + v474[8];
  v688 = v467;
  v476 = v711;
  v468(v475, v711, v464);
  v477 = v467 + v474[9];
  v478 = v710;
  v479 = v471;
  v471(v477, v469, v710);
  v480 = v707;
  v481 = v718;
  v473(v707, v719, v718);
  v482 = v702;
  v483 = v712;
  v717(v702, v476, v712);
  v484 = v704;
  v479(v704, v469, v478);
  swift_allocObject();
  v485 = sub_1AACE7AF4(v480, 1, v482, v484);
  v486 = v478;
  v696(v469, v478);
  v487 = v711;
  v488 = v483;
  v697(v711, v483);
  v489 = v719;
  v490 = v481;
  v700(v719, v481);
  v491 = v714;
  *(v688 + v714[10]) = v485;
  v492 = v695 + 21 * v692;
  (v698)(v489, v690, v490);
  v493 = v487;
  v494 = v717;
  v717(v493, v691, v488);
  v715(v469, v703, v486);
  v495 = v489;
  v496 = v490;
  v497 = v705;
  v705(v492, v495, v490);
  *(v492 + v491[7]) = 2;
  v498 = v492 + v491[8];
  v688 = v492;
  v499 = v711;
  v500 = v712;
  v494(v498, v711, v712);
  v501 = v492 + v491[9];
  v502 = v693;
  v503 = v710;
  v504 = v715;
  v715(v501, v693, v710);
  v505 = v707;
  v497(v707, v719, v496);
  v506 = v702;
  v507 = v500;
  v717(v702, v499, v500);
  v508 = v704;
  v504(v704, v502, v503);
  swift_allocObject();
  v509 = sub_1AACE7AF4(v505, 2, v506, v508);
  v510 = v502;
  v511 = v503;
  v696(v502, v503);
  v512 = v711;
  v697(v711, v500);
  v514 = v718;
  v513 = v719;
  v700(v719, v718);
  *(v688 + v714[10]) = v509;
  v515 = v695 + 22 * v692;
  (v698)(v513, v690, v514);
  v516 = v717;
  v717(v512, v691, v507);
  v517 = v715;
  v715(v510, v703, v511);
  v518 = v705;
  v705(v515, v513, v514);
  v519 = v714;
  *(v515 + v714[7]) = 5;
  v520 = v515 + v519[8];
  v521 = v515;
  v688 = v515;
  v522 = v712;
  v516(v520, v711, v712);
  v523 = v521 + v519[9];
  v524 = v693;
  v517(v523, v693, v511);
  v525 = v707;
  v526 = v718;
  v518(v707, v719, v718);
  v527 = v702;
  v528 = v711;
  v516(v702, v711, v522);
  v529 = v704;
  v517(v704, v524, v511);
  swift_allocObject();
  v530 = sub_1AACE7AF4(v525, 5, v527, v529);
  v531 = v524;
  v696(v524, v511);
  v532 = v528;
  v533 = v528;
  v534 = v522;
  v697(v533, v522);
  v535 = v719;
  v536 = v526;
  v700(v719, v526);
  *(v688 + v714[10]) = v530;
  v537 = v695 + 23 * v692;
  v538 = v535;
  (v698)(v535, v690, v536);
  v539 = v534;
  v540 = v717;
  v717(v532, v691, v534);
  v541 = v715;
  v715(v531, v703, v511);
  v542 = v705;
  v705(v537, v538, v536);
  v543 = v714;
  *(v537 + v714[7]) = 10;
  v544 = v537 + v543[8];
  v688 = v537;
  v540(v544, v532, v539);
  v545 = v537 + v543[9];
  v546 = v693;
  v541(v545, v693, v710);
  v547 = v541;
  v548 = v707;
  v542(v707, v538, v718);
  v549 = v702;
  v550 = v712;
  v717(v702, v532, v712);
  v551 = v704;
  v552 = v710;
  v547(v704, v546, v710);
  swift_allocObject();
  v553 = sub_1AACE7AF4(v548, 10, v549, v551);
  v554 = v546;
  v696(v546, v552);
  v697(v532, v550);
  v556 = v718;
  v555 = v719;
  v700(v719, v718);
  *(v688 + v714[10]) = v553;
  v557 = v695 + 24 * v692;
  (v698)(v555, v690, v556);
  v558 = v550;
  v559 = v717;
  v717(v532, v691, v558);
  v560 = v554;
  v561 = v710;
  v562 = v715;
  v715(v560, v703, v710);
  v563 = v705;
  v705(v557, v555, v556);
  v564 = v714;
  v565 = v557;
  *(v557 + v714[7]) = 20;
  v566 = v564;
  v567 = v565 + v564[8];
  v688 = v565;
  v559(v567, v532, v712);
  v568 = v565 + v566[9];
  v569 = v693;
  v562(v568, v693, v561);
  v570 = v562;
  v571 = v707;
  v563(v707, v719, v718);
  v572 = v702;
  v573 = v712;
  v717(v702, v532, v712);
  v574 = v704;
  v570(v704, v569, v561);
  swift_allocObject();
  v575 = sub_1AACE7AF4(v571, 20, v572, v574);
  v696(v569, v561);
  v697(v532, v573);
  v577 = v718;
  v576 = v719;
  v700(v719, v718);
  v578 = v714;
  *(v688 + v714[10]) = v575;
  v579 = v695 + 25 * v692;
  v580 = v577;
  (v698)(v576, v690, v577);
  v581 = v717;
  v717(v532, v691, v573);
  v582 = v715;
  v715(v569, v703, v561);
  v583 = v580;
  v584 = v705;
  v705(v579, v576, v583);
  *(v579 + v578[7]) = 50;
  v585 = v579 + v578[8];
  v688 = v579;
  v581(v585, v532, v573);
  v586 = v579 + v578[9];
  v587 = v693;
  v588 = v710;
  v582(v586, v693, v710);
  v589 = v707;
  v584(v707, v576, v718);
  v590 = v702;
  v591 = v711;
  v581(v702, v711, v712);
  v592 = v704;
  v593 = v588;
  v582(v704, v587, v588);
  swift_allocObject();
  v594 = sub_1AACE7AF4(v589, 50, v590, v592);
  v595 = v587;
  v696(v587, v588);
  v596 = v591;
  v597 = v712;
  v697(v591, v712);
  v598 = v718;
  v599 = v719;
  v700(v719, v718);
  v600 = v714;
  *(v688 + v714[10]) = v594;
  v601 = v695 + 26 * v692;
  (v698)(v599, v690, v598);
  v602 = v717;
  v717(v596, v691, v597);
  v715(v595, v703, v593);
  v603 = v598;
  v604 = v598;
  v605 = v705;
  v705(v601, v599, v603);
  *(v601 + v600[7]) = 100;
  v606 = v601 + v600[8];
  v607 = v601;
  v688 = v601;
  v608 = v711;
  v602(v606, v711, v712);
  v609 = v602;
  v610 = v607 + v600[9];
  v611 = v710;
  v612 = v715;
  v715(v610, v693, v710);
  v613 = v707;
  v605(v707, v719, v604);
  v614 = v702;
  v615 = v608;
  v616 = v608;
  v617 = v712;
  v609(v702, v616, v712);
  v618 = v704;
  v619 = v693;
  v612(v704, v693, v611);
  swift_allocObject();
  v620 = sub_1AACE7AF4(v613, 100, v614, v618);
  v696(v619, v611);
  v697(v615, v617);
  v622 = v718;
  v621 = v719;
  v700(v719, v718);
  v623 = v714;
  *(v688 + v714[10]) = v620;
  v624 = v695 + 27 * v692;
  v625 = v621;
  (v698)(v621, v690, v622);
  v626 = v717;
  v717(v615, v691, v617);
  v627 = v619;
  v628 = v611;
  v629 = v715;
  v715(v627, v703, v611);
  v630 = v622;
  v631 = v705;
  v705(v624, v625, v630);
  *(v624 + v623[7]) = 200;
  v632 = v624 + v623[8];
  v688 = v624;
  v633 = v617;
  v626(v632, v615, v617);
  v634 = v693;
  v629(v624 + v623[9], v693, v628);
  v635 = v629;
  v636 = v707;
  v631(v707, v719, v718);
  v637 = v702;
  v638 = v633;
  v626(v702, v711, v633);
  v639 = v704;
  v640 = v634;
  v641 = v634;
  v642 = v628;
  v635(v704, v641, v628);
  swift_allocObject();
  v643 = sub_1AACE7AF4(v636, 200, v637, v639);
  v644 = v640;
  v645 = v642;
  v696(v640, v642);
  v646 = v711;
  v647 = v638;
  v697(v711, v638);
  v649 = v718;
  v648 = v719;
  v700(v719, v718);
  v650 = v714;
  *(v688 + v714[10]) = v643;
  v651 = v695 + 28 * v692;
  (v698)(v648, v690, v649);
  v652 = v717;
  v717(v646, v691, v647);
  v715(v644, v703, v645);
  v653 = v705;
  v705(v651, v648, v649);
  *(v651 + v650[7]) = 500;
  v654 = v650;
  v655 = v651 + v650[8];
  v656 = v711;
  v652(v655, v711, v647);
  v657 = v651 + v654[9];
  v658 = v710;
  v659 = v715;
  v715(v657, v644, v710);
  v660 = v707;
  v653(v707, v719, v718);
  v661 = v702;
  v717(v702, v656, v647);
  v662 = v704;
  v659(v704, v644, v658);
  swift_allocObject();
  v663 = sub_1AACE7AF4(v660, 500, v661, v662);
  v664 = v658;
  v696(v644, v658);
  v665 = v711;
  v697(v711, v647);
  v667 = v718;
  v666 = v719;
  v700(v719, v718);
  v668 = v714;
  *(v651 + v714[10]) = v663;
  v669 = v695 + 29 * v692;
  v670 = v667;
  (v698)(v666, v690, v667);
  v671 = v717;
  v717(v665, v691, v647);
  v672 = v693;
  v673 = v715;
  v715(v693, v703, v664);
  v705(v669, v666, v670);
  *(v669 + v668[7]) = 1000;
  v674 = v669 + v668[8];
  v695 = v669;
  v676 = v711;
  v675 = v712;
  v671(v674, v711, v712);
  v677 = v669 + v668[9];
  v678 = v672;
  v673(v677, v672, v664);
  v679 = v707;
  v705(v707, v719, v718);
  v680 = v702;
  v671(v702, v676, v675);
  v681 = v704;
  v673(v704, v678, v664);
  swift_allocObject();
  v682 = sub_1AACE7AF4(v679, 1000, v680, v681);
  v696(v678, v664);
  v683 = v697;
  v697(v676, v675);
  v700(v719, v718);
  *(v695 + v714[10]) = v682;
  v683(v689, v675);
  return v686;
}

uint64_t sub_1AADE4234(uint64_t a1)
{
  sub_1AACECC0C(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADE42E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AACECC0C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1AADE4364()
{
  if (!qword_1ED9B1368[0])
  {
    sub_1AACE8880(255, qword_1ED9B1208, type metadata accessor for LRUCache);
    v0 = type metadata accessor for ThreadSpecific();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9B1368);
    }
  }
}

uint64_t ChartBinRange.contains(_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1AAF8F584() & 1) == 0)
  {
    return 0;
  }

  if (sub_1AAF8F564())
  {
    return 1;
  }

  if (*(v2 + *(a2 + 40)) == 1)
  {
    return sub_1AAF8F5F4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ChartBinRange.relative<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v42 = a4;
  v45 = a1;
  v46 = a3;
  v44 = a5;
  v8 = *(a2 + 16);
  v9 = sub_1AAF8FCA4();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = sub_1AAF8F5D4();
  v38 = *(v18 - 8);
  v39 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v22 = a2 + 36;
  v21 = *(a2 + 36);
  v23 = *(v6 + *(v22 + 4));
  result = sub_1AAF8F584();
  if (v23 == 1)
  {
    if (result)
    {
      v25 = *(v8 - 8);
      v26 = v25[2];
      v26(v17, v6, v8);
      v26(&v17[*(TupleTypeMetadata2 + 48)], v6 + v21, v8);
      v27 = v43;
      (*(v43 + 16))(v14, v17, TupleTypeMetadata2);
      v41 = *(TupleTypeMetadata2 + 48);
      v28 = v25[4];
      v28(v20, v14, v8);
      v29 = v25[1];
      v29(&v14[v41], v8);
      (*(v27 + 32))(v14, v17, TupleTypeMetadata2);
      v30 = v39;
      v28(&v20[*(v39 + 36)], &v14[*(TupleTypeMetadata2 + 48)], v8);
      v29(v14, v8);
      sub_1AAF8F5C4();
      v31 = v38;
      return (*(v31 + 8))(v20, v30);
    }

    __break(1u);
  }

  else if (result)
  {
    v32 = *(v8 - 8);
    v33 = v32[2];
    v33(v17, v6, v8);
    v33(&v17[*(TupleTypeMetadata2 + 48)], v6 + v21, v8);
    v34 = v43;
    (*(v43 + 16))(v14, v17, TupleTypeMetadata2);
    v39 = *(TupleTypeMetadata2 + 48);
    v35 = v32[4];
    v20 = v11;
    v35(v11, v14, v8);
    v36 = v32[1];
    v36(&v14[v39], v8);
    (*(v34 + 32))(v14, v17, TupleTypeMetadata2);
    v30 = v41;
    v35(&v11[*(v41 + 36)], &v14[*(TupleTypeMetadata2 + 48)], v8);
    v36(v14, v8);
    sub_1AAF8FC94();
    v31 = v40;
    return (*(v31 + 8))(v20, v30);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AADE49F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a4 - 8) + 32);
  v9(a5, a1, a4);
  v10 = type metadata accessor for ChartBinRange();
  result = (v9)(a5 + *(v10 + 36), a2, a4);
  *(a5 + *(v10 + 40)) = a3;
  return result;
}

uint64_t static PlottableValue.value<>(_:_:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  LODWORD(v41) = a2;
  v39 = a7;
  v40 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v38 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v37 = sub_1AAF8FCA4();
  MEMORY[0x1EEE9AC00](v37);
  v18 = &v31 - v17;

  v19 = sub_1AAF8EA44();
  v40 = v21;
  v41 = v20;
  v36 = v22;
  v23 = *(type metadata accessor for ChartBinRange() + 36);
  result = sub_1AAF8F584();
  if (result)
  {
    v25 = *(a4 - 8);
    v33 = v19;
    v26 = v25;
    v35 = a6;
    v27 = *(v25 + 16);
    v34 = a5;
    v27(v16, a3, a4);
    v27(&v16[*(TupleTypeMetadata2 + 48)], a3 + v23, a4);
    v28 = v38;
    (*(v12 + 16))(v38, v16, TupleTypeMetadata2);
    v32 = *(TupleTypeMetadata2 + 48);
    v29 = *(v26 + 32);
    v29(v18, v28, a4);
    v30 = *(v26 + 8);
    v30(&v28[v32], a4);
    (*(v12 + 32))(v28, v16, TupleTypeMetadata2);
    v29(&v18[*(v37 + 36)], &v28[*(TupleTypeMetadata2 + 48)], a4);
    v30(v28, a4);
    return sub_1AAE8C744(v33, v41, v36 & 1, v40, v18, a4, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static PlottableValue.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a1;
  v47 = a7;
  v45 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v44 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v43 = sub_1AAF8FCA4();
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v37 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 16))(&v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a4, v22);
  v25 = sub_1AAF8EA64();
  v46 = v27;
  v47 = v26;
  v42 = v28;
  v29 = *(type metadata accessor for ChartBinRange() + 36);
  result = sub_1AAF8F584();
  if (result)
  {
    v31 = *(a3 - 8);
    v39 = v25;
    v32 = v31;
    v41 = a6;
    v33 = *(v31 + 16);
    v40 = a5;
    v33(v18, a2, a3);
    v33(&v18[*(TupleTypeMetadata2 + 48)], a2 + v29, a3);
    v34 = v44;
    (*(v14 + 16))(v44, v18, TupleTypeMetadata2);
    v38 = *(TupleTypeMetadata2 + 48);
    v35 = *(v32 + 32);
    v35(v20, v34, a3);
    v36 = *(v32 + 8);
    v36(&v34[v38], a3);
    (*(v14 + 32))(v34, v18, TupleTypeMetadata2);
    v35(&v20[*(v43 + 36)], &v34[*(TupleTypeMetadata2 + 48)], a3);
    v36(v34, a3);
    return sub_1AAE8C744(v39, v47, v42 & 1, v46, v20, a3, v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static PlottableValue.value<>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a7;
  v42 = a9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v38 = TupleTypeMetadata2;
  v39 = v17;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v41 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v40 = sub_1AAF8FCA4();
  MEMORY[0x1EEE9AC00](v40);
  v23 = &v34 - v22;
  v24 = *(type metadata accessor for ChartBinRange() + 36);
  v43 = a3;
  v44 = a1;
  v46 = a2;
  sub_1AACD7304(a1, a2, a3 & 1);

  result = sub_1AAF8F584();
  if (result)
  {
    v26 = *(a6 - 8);
    v36 = a4;
    v37 = a8;
    v27 = v26;
    v28 = *(v26 + 16);
    v28(v21, a5, a6);
    v29 = v38;
    v28(&v21[*(v38 + 48)], a5 + v24, a6);
    v30 = v39;
    v31 = v41;
    (*(v39 + 16))(v41, v21, v29);
    v35 = *(v29 + 48);
    v32 = *(v27 + 32);
    v32(v23, v31, a6);
    v33 = *(v27 + 8);
    v33(&v31[v35], a6);
    (*(v30 + 32))(v31, v21, v29);
    v32(&v23[*(v40 + 36)], &v31[*(v29 + 48)], a6);
    v33(v31, a6);
    return sub_1AAE8C744(v44, v46, v43 & 1, v36, v23, a6, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADE5500()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AADE5580(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v11 = v6 + (v9 & ~v8) + 1;
  v12 = 8 * v11;
  if (v11 > 3)
  {
    goto LABEL_7;
  }

  v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
  if (HIWORD(v14))
  {
    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

LABEL_14:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      return v7 + (v11 | v15) + 1;
    }

    v13 = *(a1 + v11);
    if (*(a1 + v11))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *(((a1 + v9) & ~v8) + v6);
  if (v17 < 2)
  {
    return 0;
  }

  return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_1AADE5710(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + ((v8 + v9) & ~v9) + 1;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
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

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v8 + ((v8 + v9) & ~v9) != -1)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v8 + ((v8 + v9) & ~v9) + 1);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 < 0xFE)
  {
    *((&result[v8 + v9] & ~v9) + v8) = a2 + 1;
  }

  else
  {
    v21 = *(v5 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_1AADE595C(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1AAD41148(0, v4, 0);
  v5 = v17;
  v8 = *(type metadata accessor for CalendarBinningUnit(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v16, v9);
    if (v3)
    {
      break;
    }

    v11 = v16;
    v17 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      v15 = v16;
      sub_1AAD41148((v12 > 1), v13 + 1, 1);
      v11 = v15;
      v5 = v17;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 16 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}