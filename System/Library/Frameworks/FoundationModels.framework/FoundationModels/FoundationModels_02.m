unint64_t sub_23882E3F8()
{
  while (1)
  {
    v1 = v0[1];
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(v1) & 0xF;
    }

    if (v0[2] >> 14 >= (4 * v2))
    {
      break;
    }

    result = sub_23882E438();
  }

  return result;
}

unint64_t sub_23882E438()
{
  while (1)
  {
    sub_23882E494();
    if (v0 == 2)
    {
      break;
    }

    if (v0)
    {
      sub_23882EC50();

      return sub_23882E1B8();
    }

    sub_23882E1B8();
  }

  return sub_23882EC50();
}

void sub_23882E494()
{
  v1 = *(v0 + 3);
  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v2 + 16 * v3);
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {

        sub_23882E708();
      }

      else
      {

        sub_23882E7C4();
      }

      return;
    }

    if (!v5)
    {

      sub_23882E684();
      return;
    }
  }

  else
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        v17 = *v0;
        v20 = v0[1];
        v23 = v0[2];
        v26 = v0[3];
        sub_23882DCEC();
      }

      else
      {

        sub_23882E9BC();
      }

      return;
    }

    if (v5 != 6)
    {
      if (v5 == 7)
      {
        v15 = *v0;
        v18 = v0[1];
        v21 = v0[2];
        v24 = v0[3];
        if (sub_23882DCEC() == 58)
        {
          v6 = 8;
LABEL_25:
          sub_23882DED4(v6);
          return;
        }

        v8 = *v0;
        v10 = v0[1];
        v12 = v0[2];
        v14 = v0[3];
        sub_23882DCEC();
        return;
      }

LABEL_8:
      sub_23882E8B4();
      return;
    }
  }

  v16 = *v0;
  v19 = v0[1];
  v22 = v0[2];
  v25 = v0[3];
  if (sub_23882DCEC() != 34)
  {
    v7 = *v0;
    v9 = v0[1];
    v11 = v0[2];
    v13 = v0[3];
    if (sub_23882DCEC() == 92)
    {
      v6 = 0;
      goto LABEL_25;
    }
  }
}

void sub_23882E684()
{
  v1 = *(v0 + 3);
  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (v4)
  {
    if (sub_23882EEBC(*(v2 + 16 * v3 + 8), *(v0 + 2), *v0, *(v0 + 1)) == 1)
    {
      v5 = *v0;
      v6 = v0[1];
      v7 = v0[2];
      v8 = v0[3];
      sub_23882DCEC();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23882E708()
{
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  if (sub_23882DCEC() == 93)
  {
    return 1;
  }

  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  if (sub_23882DCEC() != 44)
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = v0[2];
    v6 = v0[3];
    v2 = sub_23882DCEC();
    if (v2 > 0x20 || ((1 << v2) & 0x100002600) == 0)
    {
      sub_23882E8B4();
    }
  }

  return 2;
}

uint64_t sub_23882E7C4()
{
  v15 = *v0;
  v16 = v0[1];
  v17 = v0[2];
  v18 = v0[3];
  if (sub_23882DCEC() == 125)
  {
    return 1;
  }

  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  if (sub_23882DCEC() != 44)
  {
    v7 = *v0;
    v8 = v0[1];
    v9 = v0[2];
    v10 = v0[3];
    v2 = sub_23882DCEC();
    if (v2 > 0x20 || ((1 << v2) & 0x100002600) == 0)
    {
      v3 = *v0;
      v4 = v0[1];
      v5 = v0[2];
      v6 = v0[3];
      if (sub_23882DCEC() == 34)
      {
        sub_23882DED4(7);
        sub_23882DED4(6);
      }
    }
  }

  return 2;
}

uint64_t sub_23882E8B4()
{
  sub_23882ECDC();
  v1 = *(v0 + 1);
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (*(v0 + 2) >> 14 < (4 * v2))
  {
    v12 = *v0;
    v13 = v0[1];
    v14 = v0[2];
    v15 = v0[3];
    v3 = sub_23882DCEC();
    switch(v3)
    {
      case '""':
        v4 = 1;
        goto LABEL_17;
      case '[':
        v4 = 2;
        goto LABEL_17;
      case '{':
        v4 = 3;
LABEL_17:
        sub_23882DED4(v4);
        return 2;
    }

    if ((v3 - 58) > 0xFFFFFFF5)
    {
      v4 = 4;
      goto LABEL_17;
    }

    v5 = v3;
    v4 = 4;
    if (v5 == 43 || v5 == 45)
    {
      goto LABEL_17;
    }

    v8 = *v0;
    v9 = v0[1];
    v10 = v0[2];
    v11 = v0[3];
    v6 = sub_23882DCEC() - 97;
    if (v6 <= 0x14 && ((0x1E2831u >> v6) & 1) != 0)
    {
      v4 = 5;
      goto LABEL_17;
    }
  }

  return 2;
}

uint64_t sub_23882E9BC()
{
  v1 = v0;
  v2 = v0[1];
  v32 = *v0;
  v33 = v2;
  v3 = v0[3];
  v34 = v0[2];
  v35 = v3;
  if (sub_23882DCEC() == 101)
  {
    return 1;
  }

  v5 = v0[1];
  v28 = *v0;
  v29 = v5;
  v6 = v0[3];
  v30 = v0[2];
  v31 = v6;
  if (sub_23882DCEC() == 108)
  {
    v7 = v28;
    v8 = sub_23882FB70(v29, v28, *(&v28 + 1));
    if (v8 < 0x4000)
    {
      __break(1u);
    }

    else if ((*(&v28 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(&v28 + 1) & 0x2000000000000000) != 0)
      {
        *&v27[0] = v28;
        *(&v27[0] + 1) = *(&v28 + 1) & 0xFFFFFFFFFFFFFFLL;
        v13 = v27 + (v8 >> 16);
        if ((*(v13 - 1) & 0xC0) == 0x80)
        {
          v11 = -2;
          do
          {
            v14 = v13[v11--] & 0xC0;
          }

          while (v14 == 128);
          goto LABEL_16;
        }
      }

      else
      {
        if ((v28 & 0x1000000000000000) != 0)
        {
          v9 = (*(&v28 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v26 = v8;
          v9 = sub_2388D3008();
          v8 = v26;
        }

        v10 = v9 + (v8 >> 16);
        if ((*(v10 - 1) & 0xC0) == 0x80)
        {
          v11 = -2;
          do
          {
            v12 = *(v10 + v11--) & 0xC0;
          }

          while (v12 == 128);
LABEL_16:
          v15 = v11 + 1;
LABEL_18:
          v16 = sub_238880FF0((v8 + (v15 << 16)) & 0xFFFFFFFFFFFF0000 | 5, v28, *(&v28 + 1)) >> 16;
          if ((*(&v7 + 1) & 0x2000000000000000) != 0)
          {
            *&v27[0] = v7;
            *(&v27[0] + 1) = *(&v7 + 1) & 0xFFFFFFFFFFFFFFLL;
            v18 = v27 + v16;
          }

          else
          {
            if ((v7 & 0x1000000000000000) != 0)
            {
              v17 = (*(&v7 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v25 = v16;
              v17 = sub_2388D3008();
              v16 = v25;
            }

            v18 = (v17 + v16);
          }

          v19 = *v18;
          if (*v18 < 0)
          {
            v23 = (__clz(v19 ^ 0xFF) - 24);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                v19 = ((v19 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3F;
              }

              else
              {
                v19 = ((v19 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3F;
              }
            }

            else if (v23 != 1)
            {
              v19 = v18[1] & 0x3F | ((v19 & 0x1F) << 6);
            }
          }

LABEL_24:
          if (v19 == 108)
          {
            return 1;
          }

          goto LABEL_25;
        }
      }

      v15 = -1;
      goto LABEL_18;
    }

    v24 = sub_2388D28F8();
    sub_238880FF0(v24, v28, *(&v28 + 1));
    v19 = sub_2388D2F98();
    goto LABEL_24;
  }

LABEL_25:
  v20 = v1[1];
  v27[0] = *v1;
  v27[1] = v20;
  v21 = v1[3];
  v27[2] = v1[2];
  v27[3] = v21;
  v22 = sub_23882DCEC() - 97;
  if (v22 > 0x14)
  {
    return 0;
  }

  else
  {
    return byte_2388D523A[v22];
  }
}

unint64_t sub_23882EC50()
{
  v2 = *v0;
  v1 = v0[1];
  result = v0[2];
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (result >> 14 < 4 * v4)
  {
    v5 = sub_238880FF0(result, *v0, v0[1]);
    if ((v1 & 0x1000000000000000) != 0)
    {
      result = sub_2388D28E8();
    }

    else
    {
      result = ((sub_2388D2F88() + (v5 >> 16)) << 16) | 5;
    }

    v0[2] = result;
  }

  return result;
}

void sub_23882ECDC()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v0[2];
  if (4 * v3 > v4 >> 14)
  {
    v5 = v0;
    v6 = (v1 >> 59) & 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
    }

    v7 = 4 << v6;
    while (1)
    {
      v8 = v5[5];
      v15[2] = v1;
      v15[3] = v2;
      v15[4] = v4;
      v16 = *(v5 + 3);
      v17 = v8;
      v18 = *(v5 + 3);
      v9 = sub_23882DCEC();
      if (v9 > 0x20 || ((1 << v9) & 0x100002600) == 0)
      {
        return;
      }

      if (v4 & 0xC) != v7 && (v4)
      {
        break;
      }

      if ((v4 & 0xC) == v7)
      {
        v4 = sub_238880F74(v4, v1, v2);
        if (v3 <= v4 >> 16)
        {
          goto LABEL_33;
        }
      }

      else if (v3 <= v4 >> 16)
      {
        goto LABEL_33;
      }

      if (v4)
      {
        goto LABEL_17;
      }

      v4 = v4 & 0xC | sub_238880E50(v4, v1, v2) & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v2 & 0x1000000000000000) == 0)
      {
LABEL_18:
        v10 = v4 >> 16;
        if ((v2 & 0x2000000000000000) != 0)
        {
          v15[0] = v1;
          v15[1] = v2 & 0xFFFFFFFFFFFFFFLL;
          v12 = *(v15 + v10);
        }

        else
        {
          v11 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v1 & 0x1000000000000000) == 0)
          {
            v11 = sub_2388D3008();
          }

          v12 = *(v11 + v10);
        }

        v13 = v12;
        v14 = __clz(v12 ^ 0xFF) - 24;
        if (v13 >= 0)
        {
          LOBYTE(v14) = 1;
        }

        v4 = ((v10 + v14) << 16) | 5;
        goto LABEL_26;
      }

LABEL_31:
      v4 = sub_2388D28E8();
LABEL_26:
      v5[2] = v4;
      if (4 * v3 <= v4 >> 14)
      {
        return;
      }
    }

    if (v3 <= v4 >> 16)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

LABEL_17:
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }
}

unint64_t sub_23882EEBC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_23882FB70(a1, a3, a4);
  v8 = sub_23882FB70(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_37;
        }

        if ((a4 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = sub_2388D28F8();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v29 = a3;
        v30 = a4 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_32;
        }
      }

      else
      {
        v21 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = sub_2388D3008();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_32;
        }
      }

      v25 = -1;
LABEL_32:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_2388D28E8();
    }

    else
    {
      v14 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v29 = a3;
        v30 = a4 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v15 = sub_2388D3008();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_23882F0E0()
{
  v2 = *v0;
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = (v1 & 0x1000000000000000) == 0 || (v2 & 0x800000000000000) != 0;
  v5 = 11;
  if (v4)
  {
    v5 = 7;
  }

  v6 = v5 | (v3 << 16);
  v7 = v0[3];
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

  v9 = v8 - 1;
  v10 = v7 + 32;
  v11 = (v7 + 32 + 16 * (v8 - 1));
  v12 = *v11;
  v13 = *(v11 + 1);
  if (v12 == 4)
  {
    v68 = *(v11 + 1);
    v69 = v10;
    v70 = v8;
    v71 = v4;
    if (v3)
    {
      v14 = 4 * v3;
      v15 = 4 << v4;
      v72 = v1 & 0xFFFFFFFFFFFFFFLL;
      while (1)
      {
        if ((v6 & 0xC) == v15 || (v6 & 1) == 0)
        {
          v17 = v6;
          if ((v6 & 0xC) == v15)
          {
            v17 = sub_238880F74(v6, v2, v1);
            if (v3 < v17 >> 16)
            {
              goto LABEL_185;
            }
          }

          else if (v3 < v6 >> 16)
          {
            goto LABEL_185;
          }

          if ((v17 & 1) == 0)
          {
            v17 = v17 & 0xC | sub_238880E50(v17, v2, v1) & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else
        {
          v17 = v6;
          if (v3 < v6 >> 16)
          {
            goto LABEL_186;
          }
        }

        if (v17 < 0x4000)
        {
          goto LABEL_183;
        }

        if ((v1 & 0x1000000000000000) == 0)
        {
          break;
        }

        v24 = sub_2388D28F8();
LABEL_39:
        if ((v24 & 0xC) == v15 || (v24 & 1) == 0)
        {
          v28 = v24;
          if ((v24 & 0xC) == v15)
          {
            v28 = sub_238880F74(v24, v2, v1);
          }

          v29 = v28 >> 16;
          if (v28 >> 16 >= v3)
          {
            goto LABEL_188;
          }

          if ((v28 & 1) == 0)
          {
            v29 = sub_238880E50(v28, v2, v1) >> 16;
          }
        }

        else
        {
          v29 = v24 >> 16;
          if (v24 >> 16 >= v3)
          {
            goto LABEL_187;
          }
        }

        if ((v1 & 0x1000000000000000) != 0)
        {
          v32 = sub_2388D2F98();
        }

        else
        {
          if ((v1 & 0x2000000000000000) != 0)
          {
            v73 = v2;
            v74 = v72;
            v31 = &v73 + v29;
          }

          else
          {
            v30 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v2 & 0x1000000000000000) == 0)
            {
              v30 = sub_2388D3008();
            }

            v31 = (v30 + v29);
          }

          v32 = *v31;
          if (*v31 < 0)
          {
            v33 = (__clz(v32 ^ 0xFF) - 24);
            if (v33 > 2)
            {
              if (v33 == 3)
              {
                v32 = ((v32 & 0xF) << 12) | ((v31[1] & 0x3F) << 6) | v31[2] & 0x3F;
              }

              else
              {
                v32 = ((v32 & 0xF) << 18) | ((v31[1] & 0x3F) << 12) | ((v31[2] & 0x3F) << 6) | v31[3] & 0x3F;
              }
            }

            else if (v33 != 1)
            {
              v32 = v31[1] & 0x3F | ((v32 & 0x1F) << 6);
            }
          }
        }

        if ((v32 - 43) > 0x3A || ((1 << (v32 - 43)) & 0x40000000400000DLL) == 0)
        {
          goto LABEL_72;
        }

        v14 = v24 >> 14;
        v6 = v24;
        if (!(v24 >> 14))
        {
          v6 = v24;
          goto LABEL_72;
        }
      }

      v18 = v17 >> 16;
      if ((v1 & 0x2000000000000000) != 0)
      {
        v73 = v2;
        v74 = v72;
        if ((*(&v72 + v18 + 7) & 0xC0) == 0x80)
        {
          v25 = -2;
          do
          {
            v26 = *(&v73 + v18 + v25--) & 0xC0;
          }

          while (v26 == 128);
          v23 = v25 + 1;
          goto LABEL_38;
        }
      }

      else
      {
        v19 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v2 & 0x1000000000000000) == 0)
        {
          v34 = v17;
          v19 = sub_2388D3008();
          v17 = v34;
        }

        v20 = v19 + v18;
        if ((*(v20 - 1) & 0xC0) == 0x80)
        {
          v21 = -2;
          do
          {
            v22 = *(v20 + v21--) & 0xC0;
          }

          while (v22 == 128);
          v23 = v21 + 1;
          goto LABEL_38;
        }
      }

      v23 = -1;
LABEL_38:
      v24 = (v17 + (v23 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      goto LABEL_39;
    }

    v14 = 0;
LABEL_72:
    v8 = v70;
    LOBYTE(v4) = v71;
    v13 = v68;
    v10 = v69;
    if (v14 <= v68 >> 14)
    {
      v9 = v70 - 2;
    }

    v12 = 4;
  }

  if (v12 == 6)
  {
    if (v9 >= v8)
    {
LABEL_198:
      __break(1u);
      return;
    }

    v37 = (v10 + 16 * v9 + 8);
    v38 = -1;
  }

  else
  {
    if (v12)
    {
      goto LABEL_83;
    }

    v35 = v9 - 1;
    if (v9 < 1)
    {
LABEL_197:
      __break(1u);
      goto LABEL_198;
    }

    v36 = (v10 + 16 * v35);
    if (*v36 != 6)
    {
      --v9;
      v6 = v13;
      if (v35 < v8)
      {
        goto LABEL_85;
      }

LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    v37 = (v36 + 8);
    v38 = -2;
  }

  v6 = *v37;
  v9 += v38;
LABEL_83:
  if (v9 < 0)
  {
    return;
  }

  if (v9 >= v8)
  {
    goto LABEL_182;
  }

LABEL_85:
  v39 = v10 + 16 * v9;
  if (*v39 == 8)
  {
    v6 = *(v39 + 8);
    if (!v9)
    {
      return;
    }

    --v9;
  }

  if (v9 >= v8)
  {
    goto LABEL_195;
  }

  v40 = v10 + 16 * v9;
  if (*v40 == 7)
  {
    v6 = *(v40 + 8);
    if (!v9)
    {
      return;
    }

    --v9;
  }

  if (v9 >= v8)
  {
    goto LABEL_196;
  }

  if ((*(v10 + 16 * v9) & 0xFE) == 2 && v6 >= 0x4000)
  {
    v41 = 4 << v4;
    v72 = v1 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      if ((v6 & 0xC) == v41 || (v6 & 1) == 0)
      {
        v44 = v6;
        if ((v6 & 0xC) == v41)
        {
          v44 = sub_238880F74(v6, v2, v1);
          if (v3 < v44 >> 16)
          {
            goto LABEL_189;
          }
        }

        else if (v3 < v6 >> 16)
        {
          goto LABEL_189;
        }

        if (v44)
        {
          if (v44 < 0x4000)
          {
            goto LABEL_184;
          }
        }

        else
        {
          v44 = v44 & 0xC | sub_238880E50(v44, v2, v1) & 0xFFFFFFFFFFFFFFF3 | 1;
          if (v44 < 0x4000)
          {
            goto LABEL_184;
          }
        }
      }

      else
      {
        v44 = v6;
        if (v3 < v6 >> 16)
        {
          goto LABEL_190;
        }
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v50 = sub_2388D28F8();
        goto LABEL_125;
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        v73 = v2;
        v74 = v72;
        if ((*(&v72 + (v44 >> 16) + 7) & 0xC0) == 0x80)
        {
          v51 = -2;
          do
          {
            v52 = *(&v73 + (v44 >> 16) + v51--) & 0xC0;
          }

          while (v52 == 128);
          v49 = v51 + 1;
          goto LABEL_124;
        }
      }

      else
      {
        v45 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v2 & 0x1000000000000000) == 0)
        {
          v67 = v44;
          v45 = sub_2388D3008();
          v44 = v67;
        }

        v46 = v45 + (v44 >> 16);
        if ((*(v46 - 1) & 0xC0) == 0x80)
        {
          v47 = -2;
          do
          {
            v48 = *(v46 + v47--) & 0xC0;
          }

          while (v48 == 128);
          v49 = v47 + 1;
          goto LABEL_124;
        }
      }

      v49 = -1;
LABEL_124:
      v50 = (v44 + (v49 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
LABEL_125:
      v53 = v50 & 0xC;
      v54 = (v50 & 1) == 0 || v53 == v41;
      v55 = v54;
      if (v54)
      {
        v56 = v50;
        if (v53 == v41)
        {
          v56 = sub_238880F74(v50, v2, v1);
        }

        v57 = v56 >> 16;
        if (v56 >> 16 >= v3)
        {
          goto LABEL_192;
        }

        if ((v56 & 1) == 0)
        {
          v57 = sub_238880E50(v56, v2, v1) >> 16;
        }
      }

      else
      {
        v57 = v50 >> 16;
        if (v50 >> 16 >= v3)
        {
          goto LABEL_191;
        }
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v60 = sub_2388D2F98();
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v73 = v2;
          v74 = v72;
          v59 = &v73 + v57;
        }

        else
        {
          v58 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v2 & 0x1000000000000000) == 0)
          {
            v58 = sub_2388D3008();
          }

          v59 = (v58 + v57);
        }

        v60 = *v59;
        if (*v59 < 0)
        {
          v63 = (__clz(v60 ^ 0xFF) - 24);
          if (v63 > 2)
          {
            if (v63 == 3)
            {
              v60 = ((v60 & 0xF) << 12) | ((v59[1] & 0x3F) << 6) | v59[2] & 0x3F;
            }

            else
            {
              v60 = ((v60 & 0xF) << 18) | ((v59[1] & 0x3F) << 12) | ((v59[2] & 0x3F) << 6) | v59[3] & 0x3F;
            }
          }

          else if (v63 != 1)
          {
            v60 = v59[1] & 0x3F | ((v60 & 0x1F) << 6);
          }
        }
      }

      if (v60 > 0x20 || ((1 << v60) & 0x100002600) == 0)
      {
        if (v55)
        {
          v61 = v50;
          if (v53 == v41)
          {
            v61 = sub_238880F74(v50, v2, v1);
          }

          v62 = v61 >> 16;
          if (v61 >> 16 >= v3)
          {
            goto LABEL_194;
          }

          if ((v61 & 1) == 0)
          {
            v62 = sub_238880E50(v61, v2, v1) >> 16;
          }
        }

        else
        {
          v62 = v50 >> 16;
          if (v50 >> 16 >= v3)
          {
            goto LABEL_193;
          }
        }

        if ((v1 & 0x1000000000000000) != 0)
        {
          v42 = sub_2388D2F98();
        }

        else
        {
          if ((v1 & 0x2000000000000000) != 0)
          {
            v73 = v2;
            v74 = v72;
            v65 = &v73 + v62;
          }

          else
          {
            v64 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v2 & 0x1000000000000000) == 0)
            {
              v64 = sub_2388D3008();
            }

            v65 = (v64 + v62);
          }

          v42 = *v65;
          if (*v65 < 0)
          {
            v66 = (__clz(v42 ^ 0xFF) - 24);
            if (v66 > 2)
            {
              if (v66 == 3)
              {
                v42 = ((v42 & 0xF) << 12) | ((v65[1] & 0x3F) << 6) | v65[2] & 0x3F;
              }

              else
              {
                v42 = ((v42 & 0xF) << 18) | ((v65[1] & 0x3F) << 12) | ((v65[2] & 0x3F) << 6) | v65[3] & 0x3F;
              }
            }

            else if (v66 != 1)
            {
              v42 = v65[1] & 0x3F | ((v42 & 0x1F) << 6);
            }
          }
        }

        if (v42 != 44)
        {
          return;
        }
      }

      v6 = v50;
    }

    while (v50 >> 14);
  }
}

uint64_t sub_23882F9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v6 = (a5 + 32);
    sub_2388300B8();

    do
    {
      v7 = *v6++;
      sub_2388D2DB8();
      --v5;
    }

    while (v5);
    return a1;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_23882FAB4()
{
  sub_2388D34A8();
  MEMORY[0x23EE67750](0);
  return sub_2388D34E8();
}

uint64_t sub_23882FB20()
{
  sub_2388D34A8();
  MEMORY[0x23EE67750](0);
  return sub_2388D34E8();
}

unint64_t sub_23882FB70(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23882FC08(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_238880E50(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23882FC08(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_238880F74(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23882FC7C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_238820B20(a3, a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_2388223BC(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_238820B20(a3, a4, a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_2388D3438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_238821120();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 16 * v17);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 32 * v17);
  *v32 = a3;
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = a6;
  v33 = (v28[7] + 16 * v17);
  *v33 = a1;
  v33[1] = a2;
  v34 = v28[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v35;
}

char *sub_23882FE28(uint64_t *a1, uint64_t a2, int64_t a3, char a4)
{
  v7 = a1[3];
  v26 = v7;
  v8 = *(v7 + 16);
  result = sub_2388B6E18(0, v8, 0, MEMORY[0x277D84F90]);
  v10 = result;
  if ((a4 & 1) != 0 || a3 < 0 || !v8)
  {

    v18 = *a1;
    v19 = a1[1];

    return v18;
  }

  v11 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8 < v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v11 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = (v7 + 16 * a3 + 32);
  while (a3 < v11)
  {
    v17 = *v12;
    switch(v17)
    {
      case 1:
        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        v16 = 34;
        goto LABEL_9;
      case 3:
        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        v16 = 125;
LABEL_9:
        if (v14 >= v13 >> 1)
        {
          v10 = sub_2388B6E18((v13 > 1), v15, 1, v10);
        }

        *(v10 + 2) = v15;
        *&v10[4 * v14 + 32] = v16;
        break;
      case 2:
        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        v16 = 93;
        goto LABEL_9;
    }

    --a3;
    v12 -= 16;
    if (a3 == -1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  sub_238830050(&v26);
  v20 = *a1;
  v21 = a1[1];
  v22 = sub_2388D2918();
  sub_23882F9E8(v22, v23, v24, v25, v10);

  return sub_2388D2A18();
}

unint64_t sub_23882FFFC()
{
  result = qword_27DF2FCB8;
  if (!qword_27DF2FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCB8);
  }

  return result;
}

uint64_t sub_238830050(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FCC0, &qword_2388D4F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2388300B8()
{
  result = qword_27DF2FCC8;
  if (!qword_27DF2FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCC8);
  }

  return result;
}

uint64_t sub_23883011C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23883016C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2388301C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2388301D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONCompletion.Scope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[16])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONCompletion.Scope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnrecoverableCompletionError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UnrecoverableCompletionError(_WORD *result, int a2, int a3)
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

__n128 sub_238830384(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238830398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2388303E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_238830444()
{
  result = qword_27DF2FCD0;
  if (!qword_27DF2FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCD0);
  }

  return result;
}

unint64_t sub_23883049C()
{
  result = qword_27DF2FCD8;
  if (!qword_27DF2FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCD8);
  }

  return result;
}

unint64_t sub_2388304F4()
{
  result = qword_27DF2FCE0;
  if (!qword_27DF2FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONCompletion.Scope.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONCompletion.Scope.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2388306B8()
{
  result = qword_27DF2FCE8;
  if (!qword_27DF2FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FCE8);
  }

  return result;
}

uint64_t sub_238830718@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  MEMORY[0x23EE66C20]();
  v5 = *a1;
  v4 = a1[1];
  *a2 = *a1;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v4;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_238830764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 8);

  *a4 = a2;
  a4[1] = a3;
  return result;
}

uint64_t sub_2388307A8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = a1;
}

uint64_t sub_2388307C4()
{
  v1 = sub_2388D0D88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = *(v0 + 8);
  v15 = *v0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 17);
  v7 = sub_2388D0DC8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v11 = *(v2 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815B14();
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v13 = sub_238819C1C(v15, v4, v5, v10);

  return v13;
}

void sub_2388309C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5[0] = v4;
  v5[1] = v3;

  sub_23882D770(v5, a2);
}

double sub_238830A00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23882D83C(a1, a2, &v8);
  if (!v3)
  {
    v6 = v9;
    if (v9)
    {
      v7 = v11 & 0x1FF;
      *a3 = v8;
      *(a3 + 8) = v6;
      *(a3 + 16) = v10;
      *(a3 + 32) = v7;
      result = *&v12;
      *(a3 + 40) = v12;
    }

    else
    {
      *(a3 + 48) = 0;
      result = 0.0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
    }
  }

  return result;
}

uint64_t sub_238830A88@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 16);
  v8 = 256;
  if (!*(v2 + 17))
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFF00 | *(v2 + 16) | 0x8000000000000000;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v9;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = a1;
  sub_238814698(v4, v3, v7);
}

__n128 sub_238830B00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238830B14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 4) & 0xFFFFFFE0 | (*(a1 + 16) >> 3);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_238830B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (16 * -a2) & 0xFFFFFFE00 | (8 * (-a2 & 0x1FLL));
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238830BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238830CBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RawResponseStream()
{
  result = qword_27DF2FCF8;
  if (!qword_27DF2FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238830DB8()
{
  sub_238830E94(319, &qword_27DF2FD08, &type metadata for StreamableContentEnvelope, MEMORY[0x277D858D8]);
  if (v0 <= 0x3F)
  {
    sub_238830E94(319, &qword_27DF2FD10, &type metadata for ResponseEnvelope, MEMORY[0x277D857D8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238830E94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_238830F10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2388D0D88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  if (v9 < 0)
  {
    v12 = sub_2388D0DC8();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v18 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v15 = *(v5 + 72);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    sub_238815B14();
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
    sub_2388D2F08();
    sub_2388D0D98();
    v7 = sub_238819C1C(v7, v8, v9, v18);
    v8 = v17;
  }

  else
  {
    v10 = a1[1];
  }

  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t sub_2388310FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = MEMORY[0x277D84F90];
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v37 = a1[1];
  v38 = *a1;
  v43 = *(a1 + 1);
  v10 = a1[4];
  v9 = a1[5];
  *&v41 = v10;
  *(&v41 + 1) = v9;
  LOBYTE(v42) = 2;
  v39 = v9;
  swift_bridgeObjectRetain_n();

  sub_238827E14(&v43, &v40, &qword_27DF2FD18, &unk_2388D5400);
  v11 = sub_23881EF9C(&v41);
  v35 = v12;
  v36 = v11;
  v34 = v13;
  swift_bridgeObjectRelease_n();
  v14 = a1[6];
  v41 = *(a1 + 7);
  v42 = a1[9];
  v15 = *(v8 + 16);
  v33 = v14;
  result = swift_unknownObjectRetain();
  v17 = 0;
LABEL_5:
  v18 = 24 * v17;
  while (1)
  {
    if (v15 == v17)
    {

      v40 = v7;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
      v26 = sub_2388D27B8();
      v28 = v27;

      v29 = sub_2388D3578();
      result = sub_2388D3578();
      *(a3 + 40) = v10;
      *(a3 + 48) = v39;
      *a3 = v26;
      *(a3 + 8) = v28;
      *(a3 + 16) = v30 / 1.0e18 + v29;
      *(a3 + 24) = v43;
      *(a3 + 56) = v36;
      *(a3 + 64) = v35;
      *(a3 + 72) = v34;
      *(a3 + 73) = HIBYTE(v34) & 1;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *(a3 + 96) = v33;
      *(a3 + 104) = v41;
      *(a3 + 120) = v42;
      return result;
    }

    if (v17 >= *(v8 + 16))
    {
      break;
    }

    ++v17;
    v19 = v18 + 24;
    v20 = *(v8 + v18 + 48);
    v18 += 24;
    if ((v20 & 1) == 0)
    {
      v21 = *(v8 + v19 + 16);
      v31 = *(v8 + v19 + 8);
      v32 = v10;

      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v4;
      if ((result & 1) == 0)
      {
        result = sub_2388B686C(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v24 = *(v7 + 16);
      v23 = *(v7 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_2388B686C((v23 > 1), v24 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v24 + 1;
      v25 = v7 + 16 * v24;
      *(v25 + 32) = v31;
      *(v25 + 40) = v21;
      v4 = v22;
      v10 = v32;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2388313C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v11 = *a1;
  if (v3 < 0)
  {
    v10 = *(a1 + 24);
    v6 = a1[1] & 0x1FF;
    sub_238814698(*a1, *(a1 + 1), v3);

    v8 = v10;
    v7 = v11;
  }

  else
  {
    v4 = *(a1 + 8) >> 64;
    v12[0] = 0;
    v12[1] = 0;

    result = GeneratedContent.init(id:text:)(v12, v11, v4, &v13);
    v7 = v13;
    v8 = v16;
    v9 = 256;
    if (!v15)
    {
      v9 = 0;
    }

    v6 = v9 | v14;
  }

  *a2 = v7;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_2388314A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2[1];
  v43[0] = *a2;
  v43[1] = v8;
  v9 = a1[4];
  v10 = a1[5];

  result = GeneratedContent.init(id:text:)(v43, v9, v10, v44);
  if (!v4)
  {
    v12 = v44[0];
    v13 = v44[1];
    v42 = v45;
    v40 = v46;
    v14 = MEMORY[0x277D84F90];
    v41 = v48;
    if (a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v38 = *a1;
    v39 = v47;
    v37 = a1[1];
    v51 = *(a1 + 1);
    v16 = *(a1 + 4);
    v49 = *(a1 + 3);
    v50 = v16;
    v17 = *(v15 + 16);

    sub_238827E14(&v51, v44, &qword_27DF2FD18, &unk_2388D5400);
    result = sub_238827E14(&v49, v44, &qword_27DF2FD20, &unk_2388D5C40);
    v18 = 0;
LABEL_6:
    v19 = 24 * v18;
    while (1)
    {
      if (v17 == v18)
      {

        v44[0] = v14;
        sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
        sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
        v27 = sub_2388D27B8();
        v29 = v28;

        v30 = sub_2388D3578();
        sub_2388D3578();
        *(a4 + 40) = v12;
        *(a4 + 48) = v13;
        *(a4 + 56) = v42;
        *(a4 + 57) = v40;
        *a4 = v27;
        *(a4 + 8) = v29;
        *(a4 + 16) = v31 / 1.0e18 + v30;
        *(a4 + 24) = v51;
        *&v32 = v39;
        *(&v32 + 1) = v41;
        *&v33 = v12;
        *(&v33 + 1) = v13;
        *(a4 + 64) = v32;
        *(a4 + 80) = v33;
        *(a4 + 96) = v42;
        *(a4 + 97) = v40;
        *(a4 + 104) = v39;
        *(a4 + 112) = v41;
        v34 = v50;
        *(a4 + 120) = v49;
        *(a4 + 136) = v34;
        sub_238814698(v12, v13, v42);
      }

      if (v18 >= *(v15 + 16))
      {
        break;
      }

      ++v18;
      v20 = v19 + 24;
      v21 = *(v15 + v19 + 48);
      v19 += 24;
      if ((v21 & 1) == 0)
      {
        v36 = v12;
        v22 = *(v15 + v20 + 8);
        v23 = *(v15 + v20 + 16);

        result = swift_isUniquelyReferenced_nonNull_native();
        v35 = v13;
        if ((result & 1) == 0)
        {
          result = sub_2388B686C(0, *(v14 + 16) + 1, 1, v14);
          v14 = result;
        }

        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_2388B686C((v24 > 1), v25 + 1, 1, v14);
          v14 = result;
        }

        *(v14 + 16) = v25 + 1;
        v26 = v14 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v13 = v35;
        v12 = v36;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2388317A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a7;
  v54 = a8;
  v51 = a1;
  v52 = a5;
  v49 = a2;
  v50 = a3;
  v9 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v42 - v11;
  type metadata accessor for StreamSnapshot();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v12 = sub_2388D2CB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v42 - v15);
  v48 = sub_2388D2CE8();
  v46 = *(v48 - 8);
  v17 = *(v46 + 64);
  v18 = MEMORY[0x28223BE20](v48);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v47 = swift_allocBox();
  v21 = a6;
  v22 = *(*(a6 - 8) + 32);
  v43 = a6;
  v22(v23, v49, a6);
  v24 = v50[1];
  v49 = *v50;
  swift_checkMetadataState();
  *v16 = 1;
  (*(v13 + 104))(v16, *MEMORY[0x277D85898], v12);
  v44 = v20;
  sub_2388D2C78();
  (*(v13 + 8))(v16, v12);
  v25 = sub_2388D2BE8();
  (*(*(v25 - 8) + 56))(v55, 1, 1, v25);
  v26 = v45;
  v27 = v46;
  v28 = v20;
  v29 = v48;
  (*(v46 + 16))(v45, v28, v48);
  v30 = (*(v27 + 80) + 88) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v33 = v52;
  v32 = v53;
  v31[4] = v52;
  v31[5] = v21;
  v34 = v54;
  v31[6] = v32;
  v31[7] = v34;
  v31[8] = v49;
  v31[9] = v24;
  v31[10] = v47;
  v35 = v31 + v30;
  v36 = v29;
  (*(v27 + 32))(v35, v26, v29);

  v37 = sub_2388864A4(0, 0, v55, &unk_2388D5428, v31);
  v38 = swift_allocObject();
  v39 = v43;
  v38[2] = v33;
  v38[3] = v39;
  v38[4] = v32;
  v38[5] = v34;
  v38[6] = v37;

  v40 = v44;
  sub_2388D2CA8();
  (*(v27 + 8))(v40, v36);

  return v37;
}

uint64_t sub_238831BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v49;
  v8[44] = v50;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a4;
  v8[40] = a5;
  v8[38] = a1;
  v10 = type metadata accessor for StreamSnapshot();
  v8[45] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[46] = swift_task_alloc();
  v8[47] = sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v12 = sub_2388D2C98();
  v8[48] = v12;
  v13 = *(v12 - 8);
  v8[49] = v13;
  v14 = *(v13 + 64) + 15;
  v8[50] = swift_task_alloc();
  v8[51] = swift_getTupleTypeMetadata2();
  v15 = sub_2388D2E78();
  v8[52] = v15;
  v16 = *(v15 - 8);
  v8[53] = v16;
  v17 = *(v16 + 64) + 15;
  v8[54] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[55] = TupleTypeMetadata2;
  v19 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v8[56] = swift_task_alloc();
  v20 = *(a8 - 8);
  v8[57] = v20;
  v8[58] = v20;
  v21 = *(v20 + 64) + 15;
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v22 = *(*(sub_238810E44(&qword_27DF2FD30, &qword_2388D5430) - 8) + 64) + 15;
  v8[61] = swift_task_alloc();
  v23 = sub_2388D17B8();
  v8[62] = v23;
  v24 = *(v23 - 8);
  v8[63] = v24;
  v25 = *(v24 + 64) + 15;
  v8[64] = swift_task_alloc();
  v26 = sub_2388D14A8();
  v8[65] = v26;
  v27 = *(v26 - 8);
  v8[66] = v27;
  v28 = *(v27 + 64) + 15;
  v8[67] = swift_task_alloc();
  v29 = sub_2388D14C8();
  v8[68] = v29;
  v30 = *(v29 - 8);
  v8[69] = v30;
  v31 = *(v30 + 64) + 15;
  v8[70] = swift_task_alloc();
  v32 = *(*(sub_238810E44(&qword_27DF2FD38, &qword_2388D5438) - 8) + 64) + 15;
  v8[71] = swift_task_alloc();
  v33 = sub_2388D1768();
  v8[72] = v33;
  v34 = *(v33 - 8);
  v8[73] = v34;
  v35 = *(v34 + 64) + 15;
  v8[74] = swift_task_alloc();
  v36 = *(v49 - 8);
  v8[75] = v36;
  v37 = *(v36 + 64) + 15;
  v8[76] = swift_task_alloc();
  v8[77] = *(v51 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[78] = AssociatedTypeWitness;
  v39 = *(AssociatedTypeWitness - 8);
  v8[79] = v39;
  v40 = *(v39 + 64) + 15;
  v8[80] = swift_task_alloc();
  v41 = swift_getAssociatedTypeWitness();
  v8[81] = v41;
  v42 = *(v41 - 8);
  v8[82] = v42;
  v43 = *(v42 + 64) + 15;
  v8[83] = swift_task_alloc();
  v44 = sub_2388D1508();
  v8[84] = v44;
  v45 = *(v44 - 8);
  v8[85] = v45;
  v46 = *(v45 + 64) + 15;
  v8[86] = swift_task_alloc();
  v8[87] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_238832200, 0, 0);
}

uint64_t sub_238832200()
{
  v23 = v0;
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[83];
  v20 = v0[80];
  v21 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v9 = v0[39];
  v10 = v0[40];
  sub_2388D14F8();
  v0[25] = 0;
  v0[26] = 0xE000000000000000;
  v22[0] = v9;
  v22[1] = v10;
  (*(v6 + 16))(v22, v8, v6);
  swift_beginAccess();
  (*(v5 + 16))(v4, v1, v7);
  sub_2388D2C58();
  v0[89] = MEMORY[0x277D84F90];
  v0[88] = 0;
  v11 = v0[78];
  v12 = v0[77];
  v13 = v0[43];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(MEMORY[0x277D856D8] + 4);
  v16 = swift_task_alloc();
  v0[90] = v16;
  *v16 = v0;
  v16[1] = sub_2388323A8;
  v17 = v0[80];
  v18 = v0[78];

  return MEMORY[0x282200310](v0 + 2, 0, 0, v0 + 31, v18, AssociatedConformanceWitness);
}

uint64_t sub_2388323A8()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v8 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = *(v2 + 712);
    v5 = *(v2 + 208);

    v6 = sub_23883307C;
  }

  else
  {
    v6 = sub_2388324D0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2388324D0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 688);
    v2 = *(v0 + 576);
    v3 = *(v0 + 568);
    sub_238826B08((v0 + 16), v0 + 56);
    sub_2388D14E8();
    sub_238815814(v0 + 56, v0 + 96);
    sub_238810E44(qword_27DF2FD40, &qword_2388D5440);
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 712);
      v5 = *(v0 + 592);
      v6 = *(v0 + 584);
      v7 = *(v0 + 576);
      v8 = *(v0 + 568);
      v9 = *(v0 + 560);
      v10 = *(v0 + 552);
      v11 = *(v0 + 544);

      (*(v6 + 56))(v8, 0, 1, v7);
      (*(v6 + 32))(v5, v8, v7);
      sub_2388D1758();
      v12 = sub_2388D14B8();
      (*(v10 + 8))(v9, v11);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v0 + 528);
        *(v0 + 296) = MEMORY[0x277D84F90];
        sub_2388B7BD0(0, v13, 0);
        v15 = *(v0 + 296);
        v16 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v17 = *(v14 + 16);
        v159 = v17;
        v162 = *(v14 + 72);
        do
        {
          v165 = v13;
          v168 = v15;
          v18 = *(v0 + 528) + 16;
          v159(*(v0 + 536), v16, *(v0 + 520));
          v19 = sub_2388D1488();
          v21 = v20;
          v22 = sub_2388D1498();
          if (v23)
          {
            *(v0 + 232) = 95;
            *(v0 + 240) = 0xE100000000000000;
            MEMORY[0x23EE66C20](v22);

            v24 = *(v0 + 232);
            v25 = *(v0 + 240);
          }

          else
          {
            v24 = 0;
            v25 = 0xE000000000000000;
          }

          v26 = *(v0 + 536);
          v27 = *(v171 + 528);
          v28 = *(v171 + 520);
          *(v171 + 216) = v19;
          *(v171 + 224) = v21;

          MEMORY[0x23EE66C20](v24, v25);

          v29 = *(v171 + 216);
          v30 = *(v171 + 224);
          (*(v27 + 8))(v26, v28);
          v15 = v168;
          v0 = v171;
          *(v171 + 296) = v168;
          v32 = *(v168 + 16);
          v31 = *(v168 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_2388B7BD0((v31 > 1), v32 + 1, 1);
            v15 = *(v171 + 296);
          }

          *(v15 + 16) = v32 + 1;
          v33 = v15 + 16 * v32;
          *(v33 + 32) = v29;
          *(v33 + 40) = v30;
          v16 += v162;
          v13 = v165 - 1;
        }

        while (v165 != 1);
        (*(*(v171 + 584) + 8))(*(v171 + 592), *(v171 + 576));
      }

      else
      {
        v45 = *(v0 + 592);
        v46 = *(v0 + 584);
        v47 = *(v0 + 576);

        (*(v46 + 8))(v45, v47);
        v15 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v44 = *(v0 + 568);
      (*(*(v0 + 584) + 56))(v44, 1, 1, *(v0 + 576));
      sub_238827E88(v44, &qword_27DF2FD38, &qword_2388D5438);
      v15 = *(v0 + 712);
    }

    v48 = *(v0 + 488);
    v49 = *(v0 + 496);
    sub_238815814(v0 + 56, v0 + 136);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v84 = *(v0 + 496);
      v85 = *(v0 + 504);
      v86 = *(v0 + 488);
      sub_2388158BC((v0 + 56));
      (*(v85 + 56))(v86, 1, 1, v84);
      sub_238827E88(v86, &qword_27DF2FD30, &qword_2388D5430);
      v62 = *(v0 + 704);
LABEL_21:
      *(v0 + 712) = v15;
      *(v0 + 704) = v62;
      v87 = *(v0 + 624);
      v88 = *(v0 + 616);
      v89 = *(v0 + 344);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v91 = *(MEMORY[0x277D856D8] + 4);
      v92 = swift_task_alloc();
      *(v0 + 720) = v92;
      *v92 = v0;
      v92[1] = sub_2388323A8;
      v93 = *(v0 + 640);
      v60 = *(v0 + 624);
      v56 = v0 + 16;
      v59 = v0 + 248;
      v57 = 0;
      v58 = 0;
      v61 = AssociatedConformanceWitness;

      return MEMORY[0x282200310](v56, v57, v58, v59, v60, v61);
    }

    v50 = *(v0 + 704);
    v52 = *(v0 + 504);
    v51 = *(v0 + 512);
    v54 = *(v0 + 488);
    v53 = *(v0 + 496);
    (*(v52 + 56))(v54, 0, 1, v53);
    (*(v52 + 32))(v51, v54, v53);
    v55 = sub_2388D1778();
    MEMORY[0x23EE66C20](v55);

    v62 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      return MEMORY[0x282200310](v56, v57, v58, v59, v60, v61);
    }

    v63 = *(v0 + 728);
    v64 = *(v0 + 664);
    v65 = *(v0 + 512);
    v66 = *(v0 + 432);
    v67 = *(v0 + 352);
    v68 = *(v0 + 336);
    v69 = sub_2388D1778();
    (*(v67 + 24))(v69);
    if (!v63)
    {
      v94 = *(v0 + 432);
      v95 = *(v0 + 408);

      v96 = (*(*(v95 - 8) + 48))(v94, 1, v95);
      v97 = *(v0 + 496);
      if (v96 == 1)
      {
        v99 = *(v0 + 424);
        v98 = *(v0 + 432);
        v100 = *(v0 + 416);
        (*(*(v0 + 504) + 8))(*(v0 + 512), v97);
        sub_2388158BC((v0 + 56));
        (*(v99 + 8))(v98, v100);
      }

      else
      {
        v125 = *(v0 + 480);
        v144 = *(v0 + 472);
        v148 = *(v0 + 456);
        v127 = *(v0 + 440);
        v126 = *(v0 + 448);
        v128 = *(v0 + 432);
        v173 = *(v0 + 512);
        v156 = *(v0 + 504);
        v158 = *(v0 + 400);
        v164 = *(v0 + 392);
        v167 = *(v0 + 384);
        v152 = *(v0 + 376);
        v170 = v15;
        v129 = *(v0 + 368);
        v150 = *(v0 + 360);
        v145 = *(v0 + 352);
        v146 = *(v0 + 464);
        v130 = *(v0 + 336);
        v154 = *(v0 + 328);
        v131 = *(v128 + 1);
        v132 = *(*(v0 + 408) + 48);
        v133 = *(v127 + 48);
        *v126 = *v128;
        *(v126 + 1) = v131;
        v134 = *(v146 + 32);
        v161 = v97;
        v134(&v126[v133], &v128[v132], v130);
        v135 = *(v126 + 1);

        v134(v125, &v126[*(v127 + 48)], v130);

        v136 = sub_2388D17A8();
        v138 = v137;
        v139 = sub_2388D1788();
        (*(v146 + 16))(v144, v125, v130);
        v140 = *(v0 + 208);
        v143 = *(v0 + 200);
        *v129 = v170;
        *(v129 + 1) = v136;
        *(v129 + 2) = v138;
        *(v129 + 3) = v139;
        *(v129 + 4) = v62;
        v141 = type metadata accessor for StreamSnapshot();
        (*(v148 + 32))(&v129[v141[12]], v144, v130);
        v142 = &v129[v141[13]];
        *v142 = v143;
        *(v142 + 1) = v140;
        v129[v141[14]] = 0;
        sub_2388D2CE8();

        v15 = v170;
        sub_2388D2CC8();
        (*(v164 + 8))(v158, v167);
        (*(v146 + 8))(v125, v130);
        (*(v156 + 8))(v173, v161);
        sub_2388158BC((v0 + 56));
      }

      goto LABEL_21;
    }

    v70 = *(v0 + 376);

    sub_23882FFFC();
    v71 = swift_allocError();
    *(v0 + 280) = v71;
    v72 = v71;
    v73 = swift_dynamicCast();
    v74 = v0;
    if (v73)
    {
      v76 = *(v0 + 504);
      v75 = *(v0 + 512);
      v77 = *(v0 + 496);
      v78 = *(v0 + 376);
      v79 = *(v171 + 360);
      v80 = *(v171 + 328);
      sub_2388151C8();
      v81 = swift_allocError();
      v82 = MEMORY[0x277D84F90];
      *v83 = 0xD000000000000027;
      *(v83 + 8) = 0x80000002388DE310;
      *(v83 + 16) = v82;
      *(v83 + 24) = 0;
      *(v83 + 32) = 5;
      *(v171 + 288) = v81;
      v0 = v171;
      sub_2388D2CE8();
      sub_2388D2CD8();
      (*(v76 + 8))(v75, v77);
      sub_2388158BC((v171 + 56));

      goto LABEL_21;
    }

    v101 = *(v0 + 640);
    v102 = *(v0 + 632);
    v103 = v74[78];
    v105 = v74[63];
    v104 = v74[64];
    v106 = *(v171 + 496);

    v107 = v106;
    v42 = v171;
    (*(v105 + 8))(v104, v107);
    sub_2388158BC((v171 + 56));
    (*(v102 + 8))(v101, v103);
    v108 = *(v171 + 208);

    v109 = *(v171 + 376);
    v110 = *(v171 + 360);
    v111 = *(v171 + 328);
    *(v171 + 256) = v71;
    sub_2388D2CE8();
  }

  else
  {
    v34 = *(v0 + 712);
    v35 = *(v171 + 640);
    v36 = *(v171 + 632);
    v37 = *(v171 + 624);
    v38 = *(v171 + 376);
    v39 = *(v171 + 360);
    v40 = *(v171 + 328);

    v41 = v35;
    v42 = v171;
    (*(v36 + 8))(v41, v37);
    v43 = *(v171 + 208);

    *(v171 + 264) = 0;
    sub_2388D2CE8();
  }

  sub_2388D2CD8();
  v112 = v42[86];
  v113 = v42[85];
  v114 = v42[84];
  v115 = v42[83];
  v116 = v42[82];
  v117 = v42[81];
  v118 = v42;
  v119 = v42[80];
  v120 = v118[76];
  v121 = v118[74];
  v147 = v118[71];
  v149 = v118[70];
  v151 = v118[67];
  v153 = v118[64];
  v155 = v118[61];
  v157 = v118[60];
  v160 = v118[59];
  v163 = v118[56];
  v166 = v118[54];
  v169 = v118[50];
  v172 = v118[46];
  v122 = v118[38];
  sub_2388D14D8();
  (*(v116 + 8))(v115, v117);
  (*(v113 + 8))(v112, v114);

  v123 = v118[1];

  return v123();
}

uint64_t sub_23883307C()
{
  (*(v0[79] + 8))(v0[80], v0[78]);
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[41];
  v0[32] = v0[31];
  sub_2388D2CE8();
  sub_2388D2CD8();
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[80];
  v11 = v0[76];
  v12 = v0[74];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[67];
  v19 = v0[64];
  v20 = v0[61];
  v21 = v0[60];
  v22 = v0[59];
  v23 = v0[56];
  v24 = v0[54];
  v25 = v0[50];
  v26 = v0[46];
  v13 = v0[38];
  sub_2388D14D8();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  v14 = v0[1];

  return v14();
}

uint64_t sub_23883325C(uint64_t a1)
{
  type metadata accessor for StreamSnapshot();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v2 = sub_2388D2C88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, a1, v2);
  LODWORD(a1) = (*(v3 + 88))(v6, v2);
  v7 = *MEMORY[0x277D85870];
  result = (*(v3 + 8))(v6, v2);
  if (a1 == v7)
  {
    sub_2388D15A8();
    return sub_2388D2C08();
  }

  return result;
}

uint64_t sub_2388333E8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  type metadata accessor for StreamSnapshot();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v3 = sub_2388D2CE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 88) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 9);

  v10 = *(v0 + 10);

  (*(v4 + 8))(&v0[v6], v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_2388334F4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[6];
  v15 = v1[7];
  v16 = v1[5];
  type metadata accessor for StreamSnapshot();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v6 = *(sub_2388D2CE8() - 8);
  v7 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_238833668;

  return sub_238831BF8(a1, v8, v9, v10, v11, v12, v1 + v7, v4);
}

uint64_t sub_238833668()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23883375C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238833794(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_23883325C(a1);
}

__n128 initializeBufferWithCopyOfBuffer for StreamingSafetyCheckCounter(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StreamingSafetyCheckCounter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StreamingSafetyCheckCounter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_23883381C(uint64_t a1)
{
  sub_238833C40();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2388338C8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 40) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_238833A40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 40) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_238833C40()
{
  if (!qword_27DF2FDC8)
  {
    v0 = sub_2388D2B18();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF2FDC8);
    }
  }
}

uint64_t sub_238833C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 4) & 0xFFFFFFE0 | (*(a1 + 16) >> 3);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_238833CE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = (16 * -a2) & 0xFFFFFFE00 | (8 * (-a2 & 0x1FLL));
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238833D78(uint64_t a1)
{
  v2 = sub_2388D2708();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2388B8078(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2388B8078((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x277D42E98];
      v15 = sub_238841100(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_238826B08(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_238833F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2388B81E4(0, v1, 0);
    v2 = v17;
    v4 = a1 + 32;
    do
    {
      sub_238827E14(v4, v12, &qword_27DF2FF80, &unk_2388D5890);
      sub_238810E44(&qword_27DF2FF80, &unk_2388D5890);
      sub_238810E44(&qword_27DF2FF88, &unk_2388D5CC0);
      swift_dynamicCast();
      v17 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2388B81E4((v5 > 1), v6 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 56 * v6;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      *(v7 + 80) = v16;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_238834090(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2388B8264(0, v1, 0);
    v2 = v27;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 16);
      v6 = *(v4 + 48);
      v19 = *(v4 + 32);
      v20 = v6;
      v7 = *(v4 + 16);
      v18[0] = *v4;
      v18[1] = v7;
      v8 = *(v4 + 48);
      v24 = v19;
      v25 = v8;
      v21 = *(v4 + 64);
      v26 = *(v4 + 64);
      v22 = v18[0];
      v23 = v5;
      sub_238827E14(v18, v16, &qword_27DF2FF70, &unk_2388D5880);
      sub_238810E44(&qword_27DF2FF70, &unk_2388D5880);
      sub_238810E44(&qword_27DF2FF78, &qword_2388DC1E0);
      swift_dynamicCast();
      v26 = v17;
      v24 = v16[2];
      v25 = v16[3];
      v22 = v16[0];
      v23 = v16[1];
      v27 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2388B8264((v9 > 1), v10 + 1, 1);
        v2 = v27;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 72 * v10;
      *(v11 + 32) = v22;
      v12 = v23;
      v13 = v24;
      v14 = v25;
      *(v11 + 96) = v26;
      *(v11 + 64) = v13;
      *(v11 + 80) = v14;
      *(v11 + 48) = v12;
      v4 += 72;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_238834238(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2388B84F8(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_2388B84F8((v9 > 1), v10 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for DynamicGenerationSchema.JSONKey;
      v15 = sub_238841320();
      v11 = swift_allocObject();
      *&v13 = v11;
      *(v11 + 16) = v6;
      *(v11 + 24) = v5;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      *(v2 + 16) = v10 + 1;
      sub_238826B08(&v13, v2 + 40 * v10 + 32);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_23883435C(uint64_t a1)
{
  v2 = v1;
  v33 = *v1;
  v4 = sub_2388D1B18();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2388D1BD8();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2388D1058();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID);
  sub_2388D1048();
  v17 = sub_2388D1038();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  *v16 = v17;
  v16[1] = v19;
  v20 = a1;
  v21 = (a1 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  v22 = *(a1 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  v23 = *(a1 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID + 8);
  v24 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle;

  v25 = sub_23883FAD4(v20 + v24, v22, v23, v17, v19);

  v2[2] = v25;
  v26 = *(v20 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails);
  *(v2 + 24) = v26;
  v36[2] = v26;
  sub_238834690(v10);
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_promptSanitizer, v10, v31);
  v36[1] = *(v2 + 24);
  v27 = v32;
  sub_238834A84(v32);
  (*(v34 + 32))(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_responseSanitizer, v27, v35);
  v28 = *v21;
  v29 = v21[1];
  v36[0] = *(v2 + 24);
  *(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_moderator) = sub_23883FDAC(v28, v29, v36);
  *(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) = v20;
  return v2;
}

uint64_t sub_238834690@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_238810E44(&qword_27DF2FFA0, qword_2388D58B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v30 - v3;
  v4 = sub_2388D1B78();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2388D1BB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2388D1A38();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v30);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  sub_2388D11B8();
  v21 = v36;
  v20 = v37;
  v22 = sub_238815878(v35, v36);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  MEMORY[0x23EE65CC0](v25, v21, *(v20 + 16));
  v27 = v30;
  (*(v13 + 16))(v17, v19, v30);
  sub_2388D1BA8();
  (*(v9 + 16))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v31 + 104))(v7, *MEMORY[0x277D0E5C0], v32);
  v28 = sub_2388D1B28();
  (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  sub_2388D1BC8();
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v19, v27);
  return sub_2388158BC(v35);
}

uint64_t sub_238834A84@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_238810E44(&qword_27DF2FF98, &qword_2388D58A8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v30 - v3;
  v4 = sub_2388D1AB8();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2388D1AF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2388D1A58();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v30);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  sub_2388D11C8();
  v21 = v36;
  v20 = v37;
  v22 = sub_238815878(v35, v36);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  MEMORY[0x23EE65CE0](v25, v21, *(v20 + 16));
  v27 = v30;
  (*(v13 + 16))(v17, v19, v30);
  sub_2388D1AE8();
  (*(v9 + 16))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v31 + 104))(v7, *MEMORY[0x277D0E578], v32);
  v28 = sub_2388D1A68();
  (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  sub_2388D1B08();
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v19, v27);
  return sub_2388158BC(v35);
}

uint64_t sub_238834E78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2388D1AA8();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2388D1B68();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238810E44(&qword_27DF2FF50, &qword_2388D5848);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = sub_2388D1478();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + 16);
  sub_2388D1468();
  sub_238835260(a1, 0, v14);
  v21 = *MEMORY[0x277D71DA8];
  v22 = sub_2388D1458();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v14, v21, v22);
  (*(v23 + 56))(v14, 0, 1, v22);
  sub_2388D13D8();
  (*(v16 + 8))(v19, v15);
  v24 = (*(v2 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  v25 = *v24;
  v26 = v24[1];
  v27 = objc_opt_self();

  v28 = [v27 processInfo];
  [v28 processIdentifier];

  sub_2388D1B58();
  sub_2388D1B98();
  (*(v35 + 8))(v10, v36);
  v29 = *v24;
  v30 = v24[1];

  v31 = [v27 processInfo];
  [v31 processIdentifier];

  v32 = v37;
  sub_2388D1A98();
  sub_2388D1AD8();
  return (*(v38 + 8))(v32, v39);
}

uint64_t sub_238835260@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v38 = sub_2388D2708();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Transcript.Entry(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v35 - v16);
  MEMORY[0x28223BE20](v15);
  v20 = &v35 - v18;
  v21 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v22 = *(a1 + 16);
  v36 = v19;
  if (v22)
  {
    v23 = a1;
    sub_238841038(a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), &v35 - v18, type metadata accessor for Transcript.Entry);
    sub_238841038(v20, v17, type metadata accessor for Transcript.Entry);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2388410A0(v17, type metadata accessor for Transcript.Entry);
      sub_2388410A0(v20, type metadata accessor for Transcript.Entry);
      v21 = MEMORY[0x277D84F90];
    }

    else
    {
      v24 = v17[1];
      v35 = v17[2];
      v21 = v17[3];
      sub_2388410A0(v20, type metadata accessor for Transcript.Entry);
    }
  }

  else
  {
    v23 = a1;
  }

  v25 = sub_23884036C(v21);

  if (v22)
  {
    sub_238841038(v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v14, type metadata accessor for Transcript.Entry);
    sub_238841038(v14, v11, type metadata accessor for Transcript.Entry);
    if (!swift_getEnumCaseMultiPayload())
    {
      v31 = v11[1];
      v32 = v11[2];
      v33 = v11[3];
      sub_2388410A0(v14, type metadata accessor for Transcript.Entry);

      goto LABEL_13;
    }

    sub_2388410A0(v11, type metadata accessor for Transcript.Entry);
    sub_2388410A0(v14, type metadata accessor for Transcript.Entry);
  }

  v26 = v37;
  sub_2388D26E8();
  v27 = sub_2388B6F54(0, 1, 1, MEMORY[0x277D84F90]);
  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_2388B6F54(v28 > 1, v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  v30 = (*(v4 + 32))(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v26, v38);
  v41 = v27;
LABEL_13:
  MEMORY[0x28223BE20](v30);
  *(&v35 - 4) = v23;
  *(&v35 - 3) = v25;
  *(&v35 - 16) = v39 & 1;
  *(&v35 - 1) = &v41;
  sub_2388D24A8();
}

uint64_t sub_2388356C0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2388D24F8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_2388D2498();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388357DC, 0, 0);
}

uint64_t sub_2388357DC()
{
  v1 = v0[4];
  sub_238835260(v0[3], 0, v0[10]);
  v0[2] = *(v1 + 16);
  v2 = *(MEMORY[0x277D0D948] + 4);
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = sub_2388D13E8();
  v5 = sub_2388412D8(&qword_27DF2FF38, MEMORY[0x277D71A98]);
  *v3 = v0;
  v3[1] = sub_2388358E8;
  v6 = v0[10];
  v7 = v0[7];

  return MEMORY[0x282165AE0](v7, v0 + 2, v4, v5);
}

uint64_t sub_2388358E8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_238835AE4;
  }

  else
  {
    v3 = sub_2388359FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2388359FC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = sub_2388D24D8();
  v9 = v8;
  v10 = sub_2388D24E8();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v11 = v0[1];

  return v11(v7, v9, v10);
}

uint64_t sub_238835AE4()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_238835B6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_2388D1058() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_2388D1A88();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238835C5C, 0, 0);
}

uint64_t sub_238835C5C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = (*(v0[4] + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  v4 = *v3;
  v5 = v3[1];

  sub_2388D1048();
  v6 = [objc_opt_self() processInfo];
  [v6 processIdentifier];

  sub_2388D1A78();
  v7 = *(MEMORY[0x277D0E4B8] + 4);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_238835DA4;
  v9 = v0[8];
  v11 = v0[2];
  v10 = v0[3];

  return MEMORY[0x2821669B8](v11, v10, v9);
}

uint64_t sub_238835DA4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_2388414A8;
  }

  else
  {

    v3 = sub_2388414B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238835EC4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 160) = a2;
  *(v5 + 168) = v4;
  *(v5 + 225) = a4;
  *(v5 + 224) = a3;
  *(v5 + 152) = a1;
  v6 = sub_238810E44(&qword_27DF2FF20, &unk_2388D5818);
  *(v5 + 176) = v6;
  v7 = *(v6 - 8);
  *(v5 + 184) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238835F9C, 0, 0);
}

uint64_t sub_238835F9C()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_moderator);
  *(v0 + 200) = v2;
  v3 = *(v1 + 24);
  if (v2)
  {
    if (v3 != 2 && (v3 != 1 || *(v0 + 224) == 1))
    {
      v4 = *(v0 + 184);
      v5 = *(v0 + 192);
      v6 = *(v0 + 176);
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v16 = v2;
      v9 = sub_2388D2848();
      *(v0 + 208) = v9;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_238836270;
      swift_continuation_init();
      *(v0 + 136) = v6;
      v10 = sub_238841100((v0 + 112));
      sub_238841164();
      sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
      sub_2388D2B48();
      (*(v4 + 32))(v10, v5, v6);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_238837470;
      *(v0 + 104) = &unk_284B3C648;
      [v16 sanitizeTextAsynchronously:v9 completionHandler:?];
      (*(v4 + 8))(v10, v6);

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  else if (v3 != 2)
  {
    sub_2388151C8();
    swift_allocError();
    *v13 = 0xD000000000000020;
    *(v13 + 8) = 0x80000002388DE640;
    *(v13 + 16) = MEMORY[0x277D84F90];
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    swift_willThrow();
    v14 = *(v0 + 192);

    v12 = *(v0 + 8);
    goto LABEL_11;
  }

  v11 = *(v0 + 192);

  v12 = *(v0 + 8);
LABEL_11:

  return v12();
}

uint64_t sub_238836270()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_238836528;
  }

  else
  {
    v3 = sub_238836380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238836380()
{
  v1 = *(v0 + 144);

  v2 = [v1 adapterViolationCategory];
  if ([v1 safe])
  {
    if ((*(v0 + 225) & 1) != 0 || *(v0 + 224) != 1 || v2 != 20)
    {
      v3 = *(v0 + 200);

      v4 = *(v0 + 192);

      v5 = *(v0 + 8);
      goto LABEL_6;
    }

    sub_23884124C();
    v6 = swift_allocError();
    *v12 = 0xD00000000000001DLL;
    v12[1] = 0x80000002388DE6F0;
  }

  else
  {
    sub_2388151C8();
    v6 = swift_allocError();
    *v7 = 0xD00000000000001ALL;
    *(v7 + 8) = 0x80000002388DE6D0;
    *(v7 + 16) = MEMORY[0x277D84F90];
    *(v7 + 24) = 0;
    *(v7 + 32) = 2;
  }

  v8 = v6;
  swift_willThrow();

  v9 = *(v0 + 200);
  sub_2388BE130(v8, 1);
  swift_willThrow();

  v10 = *(v0 + 192);

  v5 = *(v0 + 8);
LABEL_6:

  return v5();
}

uint64_t sub_238836528()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  v3 = v0[27];
  v4 = v0[25];
  sub_2388BE130(v3, 1);
  swift_willThrow();

  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2388365D4(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = *(*(type metadata accessor for Transcript.Prompt(0) - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v5 = type metadata accessor for Transcript.Entry(0);
  *(v3 + 48) = v5;
  v6 = *(v5 - 8);
  *(v3 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388366D0, 0, 0);
}

void sub_2388366D0()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_29:
    v31 = 0;
    v32 = MEMORY[0x277D84F90];
    v33 = *(v7 + 2);
LABEL_30:
    v34 = 88 * v31;
    while (v33 != v31)
    {
      if (v31 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_47;
      }

      v35 = v34 + 88;
      ++v31;
      v36 = *&v7[v34 + 80] >> 62;
      v34 += 88;
      if (v36 != 2)
      {
        v37 = v36 == 0;
        v38 = 72;
        if (v37)
        {
          v38 = 16;
        }

        v39 = 24;
        if (!v37)
        {
          v39 = 80;
        }

        v40 = *&v7[v38 - 56 + v35];
        v41 = *&v7[v39 - 56 + v35];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2388B686C(0, *(v32 + 2) + 1, 1, v32);
        }

        v43 = *(v32 + 2);
        v42 = *(v32 + 3);
        if (v43 >= v42 >> 1)
        {
          v32 = sub_2388B686C((v42 > 1), v43 + 1, 1, v32);
        }

        *(v32 + 2) = v43 + 1;
        v44 = &v32[16 * v43];
        *(v44 + 4) = v40;
        *(v44 + 5) = v41;
        goto LABEL_30;
      }
    }

    v0[2] = v32;
    sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
    sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
    v45 = sub_2388D27B8();
    v47 = v46;

    v0[10] = v45;
    v0[11] = v47;
    v48 = swift_task_alloc();
    v0[12] = v48;
    *v48 = v0;
    v48[1] = sub_238836BA0;
    v49 = v0[4];

    sub_238836FD4(v45, v47);
    return;
  }

  v3 = v0[7];
  v4 = v0[8];
  v50 = v0[5];
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6 = *(v3 + 72);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
    sub_238841038(v5, v8, type metadata accessor for Transcript.Entry);
    sub_238841038(v8, v9, type metadata accessor for Transcript.Entry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = v0[9];
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v18 = v0[9];
        sub_2388410A0(v0[8], type metadata accessor for Transcript.Entry);
        sub_2388410A0(v18, type metadata accessor for Transcript.Entry);
        v14 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_2388410A0(v12, type metadata accessor for Transcript.Entry);
        v13 = v4[1];
        v15 = v4[3];
        v14 = v4[4];
      }

      else
      {
        sub_2388410A0(v12, type metadata accessor for Transcript.Entry);
        v19 = v4[1];
        v20 = v4[2];
        v14 = v4[3];
      }

      goto LABEL_13;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_2388410A0(v12, type metadata accessor for Transcript.Entry);
      v16 = v4[1];
      v14 = v4[2];
      v17 = v4[3];
LABEL_13:

      goto LABEL_15;
    }

    v21 = v0[8];
    v22 = v0[5];
    sub_2388410A0(v12, type metadata accessor for Transcript.Entry);
    sub_238840F4C(v21, v22, type metadata accessor for Transcript.Prompt);
    v14 = *(v50 + 16);

    sub_2388410A0(v22, type metadata accessor for Transcript.Prompt);
LABEL_15:
    v23 = *(v14 + 16);
    v24 = *(v7 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v25 <= *(v7 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v7 = sub_2388B7158(isUniquelyReferenced_nonNull_native, v27, 1, v7);
      if (*(v14 + 16))
      {
LABEL_24:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v23)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v28 = *(v7 + 2);
          v29 = __OFADD__(v28, v23);
          v30 = v28 + v23;
          if (v29)
          {
            goto LABEL_50;
          }

          *(v7 + 2) = v30;
        }

        goto LABEL_4;
      }
    }

    if (v23)
    {
      goto LABEL_48;
    }

LABEL_4:
    v5 += v6;
    if (!--v2)
    {
      goto LABEL_29;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_238836BA0()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238836EBC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v3 + 112) = v4;
    *v4 = v3;
    v4[1] = sub_238836D1C;
    v5 = *(v3 + 88);
    v6 = *(v3 + 32);
    v7 = *(v3 + 128);
    v8 = *(v3 + 80);

    return sub_238835EC4(v8, v5, v7, 0);
  }
}

uint64_t sub_238836D1C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_238836F48;
  }

  else
  {
    v3 = sub_238836E30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238836E30()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_238836EBC()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_238836F48()
{
  v1 = v0[15];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_238836FD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_2388D1058() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_2388D1B48();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388370C4, 0, 0);
}

uint64_t sub_2388370C4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = (*(v0[4] + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  v4 = *v3;
  v5 = v3[1];

  sub_2388D1048();
  v6 = [objc_opt_self() processInfo];
  [v6 processIdentifier];

  sub_2388D1B38();
  v7 = *(MEMORY[0x277D0E4D8] + 4);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_23883720C;
  v9 = v0[8];
  v11 = v0[2];
  v10 = v0[3];

  return MEMORY[0x2821669F0](v11, v10, v9);
}

uint64_t sub_23883720C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_2388373B4;
  }

  else
  {

    v3 = sub_23883732C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23883732C()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2388373B4()
{
  v1 = v0[10];
  v2 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_2388BE130(v1, 1);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_238837470(uint64_t a1, void *a2, void *a3)
{
  sub_238815878((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_238810E44(&qword_27DF2FF20, &unk_2388D5818);
    sub_2388D2B58();
  }

  else if (a2)
  {
    v6 = a2;
    sub_238810E44(&qword_27DF2FF20, &unk_2388D5818);
    sub_2388D2B68();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238837520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  v10 = type metadata accessor for GenerationSchema(0);
  *(v8 + 168) = v10;
  v11 = *(v10 - 8);
  *(v8 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v13 = sub_2388D1BE8();
  *(v8 + 192) = v13;
  v14 = *(v13 - 8);
  *(v8 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v16 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v17 = sub_2388D15A8();
  *(v8 + 224) = v17;
  v18 = *(v17 - 8);
  *(v8 + 232) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v20 = *(*(sub_238810E44(&qword_27DF2FEA8, &qword_2388D57A8) - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v21 = sub_238810E44(&qword_27DF2FEB0, &qword_2388D57B0);
  *(v8 + 264) = v21;
  v22 = *(v21 - 8);
  *(v8 + 272) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v24 = sub_2388D1398();
  *(v8 + 296) = v24;
  v25 = *(v24 - 8);
  *(v8 + 304) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v27 = *(*(sub_238810E44(&qword_27DF2FE28, &qword_2388D5748) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v28 = sub_2388D16A8();
  *(v8 + 336) = v28;
  v29 = *(v28 - 8);
  *(v8 + 344) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v31 = sub_2388D2498();
  *(v8 + 360) = v31;
  v32 = *(v31 - 8);
  *(v8 + 368) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  v34 = swift_task_alloc();
  v35 = *(a4 + 72);
  *(v8 + 80) = *(a4 + 64);
  v36 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v36;
  v37 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v37;
  *(v8 + 488) = v34;
  *(v8 + 496) = v35;
  *(v8 + 601) = *(a4 + 80);

  return MEMORY[0x2822009F8](sub_2388379BC, 0, 0);
}

uint64_t sub_2388379BC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = *(v2 + 48);
  v0[63] = v4;
  v0[64] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v3, 1, v1) != 1;
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_238837A88;
  v7 = v0[20];
  v8 = v0[14];

  return sub_2388365D4(v8, v5);
}

uint64_t sub_238837A88()
{
  v2 = *(*v1 + 520);
  v5 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = sub_238839358;
  }

  else
  {
    v3 = sub_238837B9C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238837B9C()
{
  v92 = v0;
  if (*(*(v0 + 120) + 16))
  {
    v66 = *(v0 + 602);
    v78 = *(v0 + 480);
    v80 = *(v0 + 488);
    v70 = *(v0 + 456);
    v71 = *(v0 + 464);
    v1 = *(v0 + 440);
    v2 = *(v0 + 432);
    v3 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v7 = *(v0 + 328);
    v67 = *(v0 + 336);
    v82 = *(v0 + 288);
    v8 = *(v0 + 160);
    v68 = *(v0 + 448);
    v74 = *(v0 + 472);
    v76 = *(v0 + 144);
    v72 = *(v0 + 136);
    v9 = *(v0 + 128);
    v69 = *(v0 + 120);
    v10 = *(v0 + 112);
    v11 = v9[3];
    v87 = v9[2];
    v88 = v11;
    v89 = *(v9 + 8);
    v12 = v9[1];
    v85 = *v9;
    v86 = v12;
    *(v0 + 600) = 0;
    sub_238835260(v10, 1, v2);
    v90 = 1;
    LOBYTE(v91) = 0;
    HIBYTE(v91) = v66;
    sub_238839734(&v85);
    sub_2388412D8(&qword_27DF2FEB8, MEMORY[0x277D42D78]);
    sub_2388D2638();
    (*(v6 + 8))(v5, v67);
    v13 = *(v4 + 8);
    *(v0 + 536) = v13;
    *(v0 + 544) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v2, v3);
    v14 = sub_2388D2268();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    sub_2388D2658();
    sub_238827E88(v7, &qword_27DF2FE28, &qword_2388D5748);
    v13(v1, v3);
    sub_238840734(v69);
    sub_2388D2648();

    v13(v68, v3);
    sub_2388D2618();
    v13(v70, v3);
    sub_2388D2628();
    v13(v71, v3);
    sub_2388D25F8();
    v13(v74, v3);
    v15 = *(v8 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID);
    v16 = *(v8 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID + 8);
    sub_2388D2608();
    v13(v78, v3);
    *(v0 + 88) = *(v8 + 16);
    sub_2388D13E8();
    sub_2388D2668();
    v17 = *(MEMORY[0x277D0D8F0] + 4);
    v18 = swift_task_alloc();
    *(v0 + 552) = v18;
    v19 = sub_2388412D8(&qword_27DF2FEC0, MEMORY[0x277D71A98]);
    *v18 = v0;
    v18[1] = sub_238838440;
    v20 = *(v0 + 312);
    v22 = *(v0 + 288);
    v21 = *(v0 + 296);
    v23 = *(v0 + 264);

    return MEMORY[0x282165A80](v20, v21, v23, v19);
  }

  else
  {
    v24 = *(v0 + 601);
    v25 = *(v0 + 496);
    v26 = *(v0 + 480);
    v27 = *(v0 + 368);
    v28 = *(v0 + 376);
    v30 = *(v0 + 352);
    v29 = *(v0 + 360);
    v31 = *(v0 + 344);
    v83 = *(v0 + 336);
    v32 = *(v0 + 160);
    sub_238835260(*(v0 + 112), 0, v26);
    v33 = *(v0 + 64);
    v87 = *(v0 + 48);
    v88 = v33;
    v34 = *(v0 + 80);
    v35 = *(v0 + 32);
    v85 = *(v0 + 16);
    v86 = v35;
    v89 = v34;
    v90 = v25;
    v91 = v24;
    sub_238839734(&v85);
    sub_2388412D8(&qword_27DF2FEB8, MEMORY[0x277D42D78]);
    sub_2388D2638();
    (*(v31 + 8))(v30, v83);
    v36 = *(v27 + 8);
    *(v0 + 568) = v36;
    *(v0 + 576) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v26, v29);
    v38 = *(v0 + 504);
    v37 = *(v0 + 512);
    v39 = *(v0 + 216);
    v40 = *(v0 + 168);
    sub_238827E14(*(v0 + 152), v39, &qword_27DF2FE20, &qword_2388D5740);
    v41 = v38(v39, 1, v40);
    v42 = *(v0 + 320);
    if (v41 == 1)
    {
      v43 = sub_2388D2268();
      (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    }

    else
    {
      v44 = *(v0 + 184);
      v45 = *(v0 + 160);
      sub_238840F4C(*(v0 + 216), v44, type metadata accessor for GenerationSchema);

      sub_238839DC0(v42);
      sub_2388410A0(v44, type metadata accessor for GenerationSchema);
      v46 = sub_2388D2268();
      (*(*(v46 - 8) + 56))(v42, 0, 1, v46);
    }

    v48 = *(v0 + 376);
    v47 = *(v0 + 384);
    v49 = *(v0 + 360);
    v50 = *(v0 + 320);
    sub_2388D2658();
    sub_238827E88(v50, &qword_27DF2FE28, &qword_2388D5748);
    v36(v48, v49);
    v79 = *(v0 + 416);
    v81 = *(v0 + 424);
    v51 = *(v0 + 400);
    v52 = *(v0 + 384);
    v53 = *(v0 + 392);
    v54 = *(v0 + 360);
    v84 = *(v0 + 280);
    v55 = *(v0 + 160);
    v77 = *(v0 + 144);
    v73 = *(v0 + 408);
    v75 = *(v0 + 136);
    sub_2388D2648();

    v36(v52, v54);
    sub_2388D2618();
    v36(v53, v54);
    sub_2388D2628();
    v36(v51, v54);
    sub_2388D25F8();
    v36(v73, v54);
    v56 = *(v55 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID);
    v57 = *(v55 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID + 8);
    sub_2388D2608();
    v36(v79, v54);
    *(v0 + 96) = *(v55 + 16);
    sub_2388D13E8();
    sub_2388D2668();
    v58 = *(MEMORY[0x277D0D8F8] + 4);
    v59 = swift_task_alloc();
    *(v0 + 584) = v59;
    v60 = sub_2388412D8(&qword_27DF2FEC8, MEMORY[0x277D71A98]);
    *v59 = v0;
    v59[1] = sub_238838F58;
    v61 = *(v0 + 280);
    v62 = *(v0 + 264);
    v63 = *(v0 + 208);
    v64 = *(v0 + 192);

    return MEMORY[0x282165A88](v63, v64, v62, v60);
  }
}

uint64_t sub_238838440()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  (*(v2[34] + 8))(v2[36], v2[33]);
  if (v0)
  {
    v5 = sub_238838D60;
  }

  else
  {
    v5 = sub_2388385A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2388385A8()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  sub_2388D1388();
  v5 = sub_2388D1518();
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 256);
  if (*(v5 + 16))
  {
    v7 = sub_2388D1598();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v6, v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 56))(v6, 0, 1, v7);
  }

  else
  {

    v7 = sub_2388D1598();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  v9 = *(v0 + 248);
  sub_238827E14(*(v0 + 256), v9, &qword_27DF2FEA8, &qword_2388D57A8);
  sub_2388D1598();
  v10 = *(v7 - 8);
  v11 = (*(v10 + 48))(v9, 1, v7);
  v68 = *(v0 + 536);
  v71 = *(v0 + 544);
  v66 = *(v0 + 488);
  v12 = *(v0 + 360);
  v13 = *(v0 + 304);
  v14 = *(v0 + 312);
  v15 = *(v0 + 296);
  v16 = *(v0 + 248);
  v17 = *(v0 + 256);
  if (v11 == 1)
  {
    sub_238827E88(*(v0 + 256), &qword_27DF2FEA8, &qword_2388D57A8);
    (*(v13 + 8))(v14, v15);
    v68(v66, v12);
    sub_238827E88(v16, &qword_27DF2FEA8, &qword_2388D57A8);
    v18 = 1;
  }

  else
  {
    v19 = sub_2388D1578();
    sub_238827E88(v17, &qword_27DF2FEA8, &qword_2388D57A8);
    (*(v13 + 8))(v14, v15);
    v68(v66, v12);
    (*(v10 + 8))(v16, v7);
    v20 = *(v19 + 16);

    v18 = v20 == 0;
  }

  v21 = *(v0 + 601);
  v22 = *(v0 + 496);
  v23 = *(v0 + 480);
  v24 = *(v0 + 368);
  v26 = *(v0 + 352);
  v25 = *(v0 + 360);
  v27 = *(v0 + 344);
  v69 = *(v0 + 376);
  v72 = *(v0 + 336);
  v28 = *(v0 + 160);
  sub_238835260(*(v0 + 112), v18, v23);
  v29 = *(v0 + 64);
  v73[2] = *(v0 + 48);
  v73[3] = v29;
  v30 = *(v0 + 80);
  v31 = *(v0 + 32);
  v73[0] = *(v0 + 16);
  v73[1] = v31;
  v74 = v30;
  v75 = v22;
  v76 = v21;
  sub_238839734(v73);
  sub_2388412D8(&qword_27DF2FEB8, MEMORY[0x277D42D78]);
  sub_2388D2638();
  (*(v27 + 8))(v26, v72);
  v32 = *(v24 + 8);
  *(v0 + 568) = v32;
  *(v0 + 576) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v23, v25);
  if (v18)
  {
    v33 = *(v0 + 320);
    v34 = sub_2388D2268();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 504);
    v35 = *(v0 + 512);
    v37 = *(v0 + 216);
    v38 = *(v0 + 168);
    sub_238827E14(*(v0 + 152), v37, &qword_27DF2FE20, &qword_2388D5740);
    v39 = v36(v37, 1, v38);
    v40 = *(v0 + 320);
    if (v39 == 1)
    {
      v41 = sub_2388D2268();
      (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    }

    else
    {
      v42 = *(v0 + 184);
      v43 = *(v0 + 160);
      sub_238840F4C(*(v0 + 216), v42, type metadata accessor for GenerationSchema);

      sub_238839DC0(v40);
      sub_2388410A0(v42, type metadata accessor for GenerationSchema);
      v44 = sub_2388D2268();
      (*(*(v44 - 8) + 56))(v40, 0, 1, v44);
    }
  }

  v46 = *(v0 + 376);
  v45 = *(v0 + 384);
  v47 = *(v0 + 360);
  v48 = *(v0 + 320);
  sub_2388D2658();
  sub_238827E88(v48, &qword_27DF2FE28, &qword_2388D5748);
  v32(v46, v47);
  if (v18)
  {
    sub_238840734(*(v0 + 120));
  }

  v65 = *(v0 + 416);
  v67 = *(v0 + 424);
  v50 = *(v0 + 400);
  v49 = *(v0 + 408);
  v51 = *(v0 + 384);
  v52 = *(v0 + 392);
  v53 = *(v0 + 360);
  v70 = *(v0 + 280);
  v54 = *(v0 + 160);
  v63 = *(v0 + 136);
  v64 = *(v0 + 144);
  sub_2388D2648();

  v32(v51, v53);
  sub_2388D2618();
  v32(v52, v53);
  sub_2388D2628();
  v32(v50, v53);
  sub_2388D25F8();
  v32(v49, v53);
  v55 = *(v54 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID);
  v56 = *(v54 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID + 8);
  sub_2388D2608();
  v32(v65, v53);
  *(v0 + 96) = *(v54 + 16);
  sub_2388D13E8();
  sub_2388D2668();
  v57 = *(MEMORY[0x277D0D8F8] + 4);
  v58 = swift_task_alloc();
  *(v0 + 584) = v58;
  sub_2388412D8(&qword_27DF2FEC8, MEMORY[0x277D71A98]);
  *v58 = v0;
  v58[1] = sub_238838F58;
  v59 = *(v0 + 280);
  v60 = *(v0 + 264);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);

  JUMPOUT(0x2388D1D48);
}

uint64_t sub_238838D60()
{
  v1 = *(v0 + 544);
  (*(v0 + 536))(*(v0 + 488), *(v0 + 360));
  v2 = *(v0 + 560);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v9 = *(v0 + 440);
  v12 = *(v0 + 432);
  v13 = *(v0 + 424);
  v14 = *(v0 + 416);
  v15 = *(v0 + 408);
  v16 = *(v0 + 400);
  v17 = *(v0 + 392);
  v18 = *(v0 + 384);
  v19 = *(v0 + 376);
  v20 = *(v0 + 352);
  v21 = *(v0 + 328);
  v22 = *(v0 + 320);
  v23 = *(v0 + 312);
  v24 = *(v0 + 288);
  v25 = *(v0 + 280);
  v26 = *(v0 + 256);
  v27 = *(v0 + 248);
  v28 = *(v0 + 240);
  v29 = *(v0 + 216);
  v30 = *(v0 + 208);
  v31 = *(v0 + 184);
  sub_2388BE130(v2, 1);
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238838F58()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);
  if (v0)
  {
    v5 = sub_23883953C;
  }

  else
  {
    v5 = sub_2388390C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2388390C0()
{
  v1 = v0[72];
  v2 = v0[71];
  v11 = v0[61];
  v12 = v0[60];
  v13 = v0[59];
  v14 = v0[58];
  v15 = v0[57];
  v16 = v0[56];
  v17 = v0[55];
  v18 = v0[54];
  v3 = v0[53];
  v19 = v0[52];
  v20 = v0[51];
  v21 = v0[50];
  v22 = v0[49];
  v23 = v0[48];
  v24 = v0[47];
  v4 = v0[45];
  v25 = v0[44];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[36];
  v30 = v0[35];
  v31 = v0[32];
  v32 = v0[31];
  v5 = v0[26];
  v33 = v0[30];
  v34 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v35 = v0[23];
  v8 = v0[13];
  *(v8 + 24) = sub_2388D13A8();
  *(v8 + 32) = sub_2388412D8(&qword_27DF2FE50, MEMORY[0x277D719F8]);
  sub_238841100(v8);
  sub_2388412D8(&qword_27DF2FED0, MEMORY[0x277D71D88]);
  sub_2388D1C08();
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  *(v8 + 40) = 1;

  v9 = v0[1];

  return v9();
}

uint64_t sub_238839358()
{
  v1 = v0[66];
  v2 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[55];
  v11 = v0[54];
  v12 = v0[53];
  v13 = v0[52];
  v14 = v0[51];
  v15 = v0[50];
  v16 = v0[49];
  v17 = v0[48];
  v18 = v0[47];
  v19 = v0[44];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[36];
  v24 = v0[35];
  v25 = v0[32];
  v26 = v0[31];
  v27 = v0[30];
  v28 = v0[27];
  v29 = v0[26];
  v30 = v0[23];
  sub_2388BE130(v1, 1);
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_23883953C()
{
  v1 = *(v0 + 576);
  (*(v0 + 568))(*(v0 + 424), *(v0 + 360));
  v2 = *(v0 + 592);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v9 = *(v0 + 440);
  v12 = *(v0 + 432);
  v13 = *(v0 + 424);
  v14 = *(v0 + 416);
  v15 = *(v0 + 408);
  v16 = *(v0 + 400);
  v17 = *(v0 + 392);
  v18 = *(v0 + 384);
  v19 = *(v0 + 376);
  v20 = *(v0 + 352);
  v21 = *(v0 + 328);
  v22 = *(v0 + 320);
  v23 = *(v0 + 312);
  v24 = *(v0 + 288);
  v25 = *(v0 + 280);
  v26 = *(v0 + 256);
  v27 = *(v0 + 248);
  v28 = *(v0 + 240);
  v29 = *(v0 + 216);
  v30 = *(v0 + 208);
  v31 = *(v0 + 184);
  sub_2388BE130(v2, 1);
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_238839734(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FE60, &qword_2388D5760);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = v49 - v4;
  v5 = sub_2388D1708();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238810E44(&qword_27DF2FE68, &qword_2388D5768);
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v49 - v11;
  v13 = sub_2388D1448();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_238810E44(&qword_27DF2FE70, &qword_2388D5770);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v49 - v23;
  v25 = *(a1 + 8);
  v49[0] = *a1;
  v49[1] = v25;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v59 = *(a1 + 32);
  v60 = v26;
  v28 = *(a1 + 40);
  v29 = *(a1 + 48);
  v30 = *(a1 + 56);
  v31 = *(a1 + 64);
  v55 = *(a1 + 72);
  v54 = *(a1 + 80);
  v32 = sub_2388D15E8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v62 = v32;
  v63 = v34;
  v61 = v33 + 56;
  (v34)(v24, 1, 1);
  sub_238827E14(v24, v22, &qword_27DF2FE70, &qword_2388D5770);
  sub_2388D1688();
  sub_2388D1678();
  sub_2388D1608();
  sub_2388D1638();
  sub_238827E88(v24, &qword_27DF2FE70, &qword_2388D5770);
  sub_2388D1668();
  sub_2388D1648();
  sub_2388D1658();
  (*(v14 + 16))(v17, *(v58 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v13);
  v35 = sub_2388D0EF8();
  v37 = v36;
  (*(v14 + 8))(v17, v13);
  sub_2388D11A8();
  v38 = v56;
  v39 = sub_2388D11F8();
  v41 = v40;
  (*(v57 + 8))(v12, v38);
  if (v35 == v39 && v37 == v41)
  {
  }

  else
  {
    v42 = sub_2388D3368();

    if ((v42 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v43 = v50;
  sub_2388D16F8();
  sub_2388D16D8();
  sub_2388D16E8();
  v45 = v51;
  v44 = v52;
  v46 = v53;
  (*(v51 + 16))(v53, v43, v52);
  (*(v45 + 56))(v46, 0, 1, v44);
  sub_2388D15F8();
  (*(v45 + 8))(v43, v44);
LABEL_6:
  if (v59)
  {
    v47 = v60;
  }

  else
  {
    v47 = v60;
    if (v27 <= 0.0)
    {
      goto LABEL_16;
    }

    if (v27 > 1.0)
    {
      sub_2388C0650(v27);
    }
  }

  sub_2388D1628();
  if (v47 > 0xFD)
  {
    sub_2388D15B8();
LABEL_17:
    v63(v24, 0, 1, v62);
    return sub_2388D1698();
  }

  if (!(v47 >> 6))
  {
    sub_2388D15C8();
    goto LABEL_19;
  }

  if (v47 >> 6 != 1)
  {
LABEL_16:
    sub_2388D15D8();
    goto LABEL_17;
  }

  sub_2388D15B8();
LABEL_19:
  v63(v24, 0, 1, v62);
  sub_2388D1698();
  return sub_2388D1618();
}

uint64_t sub_238839DC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2388D2328();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = type metadata accessor for DynamicGenerationSchema(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  sub_2388C16F8((v27 - v16));
  v18 = &v17[*(v10 + 28)];
  v30 = *(v3 + 16);
  v31 = v3 + 16;
  v30(v9, v18, v2);
  v32 = v10;
  v19 = *(v10 + 32);
  v28 = v17;
  v20 = *&v17[v19];
  v21 = *(v20 + 16);
  if (v21)
  {
    v27[1] = v9;
    v27[2] = a1;
    v33 = MEMORY[0x277D84F90];
    sub_2388B7C94(0, v21, 0);
    v22 = v33;
    v23 = v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v29 = *(v11 + 72);
    do
    {
      sub_238841038(v23, v15, type metadata accessor for DynamicGenerationSchema);
      v30(v7, &v15[*(v32 + 28)], v2);
      sub_2388410A0(v15, type metadata accessor for DynamicGenerationSchema);
      v33 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2388B7C94(v24 > 1, v25 + 1, 1);
        v22 = v33;
      }

      *(v22 + 16) = v25 + 1;
      (*(v3 + 32))(v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, v7, v2);
      v23 += v29;
      --v21;
    }

    while (v21);
  }

  sub_2388D2258();
  return sub_2388410A0(v28, type metadata accessor for DynamicGenerationSchema);
}

uint64_t sub_23883A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v10 = sub_238810E44(&qword_27DF2FE18, &qword_2388D5738);
  *(v8 + 168) = v10;
  v11 = *(v10 - 8);
  *(v8 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v13 = sub_2388D1BF8();
  *(v8 + 192) = v13;
  v14 = *(v13 - 8);
  *(v8 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v16 = type metadata accessor for GenerationSchema(0);
  *(v8 + 216) = v16;
  v17 = *(v16 - 8);
  *(v8 + 224) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v19 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v20 = *(*(sub_238810E44(&qword_27DF2FE28, &qword_2388D5748) - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v21 = sub_2388D16A8();
  *(v8 + 256) = v21;
  v22 = *(v21 - 8);
  *(v8 + 264) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v24 = sub_2388D2448();
  *(v8 + 280) = v24;
  v25 = *(v24 - 8);
  *(v8 + 288) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v27 = sub_2388D1118();
  *(v8 + 368) = v27;
  v28 = *(v27 - 8);
  *(v8 + 376) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  v30 = *(*(sub_238810E44(&qword_27DF2FE30, &unk_2388D5750) - 8) + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v31 = *(*(sub_238810E44(&qword_27DF2FE38, &unk_2388D8CD0) - 8) + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v32 = sub_2388D1448();
  *(v8 + 408) = v32;
  v33 = *(v32 - 8);
  *(v8 + 416) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 424) = swift_task_alloc();
  v35 = sub_2388D11E8();
  *(v8 + 432) = v35;
  v36 = *(v35 - 8);
  *(v8 + 440) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 448) = swift_task_alloc();
  v38 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v38;
  *(v8 + 80) = *(a4 + 64);
  *(v8 + 96) = *(a4 + 80);
  v39 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v39;

  return MEMORY[0x2822009F8](sub_23883A5BC, 0, 0);
}

uint64_t sub_23883A5BC()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[49];
  v5 = v0[15];
  (*(v2 + 16))(v1, *(v0[20] + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model) + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v3);
  sub_2388D0EF8();
  (*(v2 + 8))(v1, v3);
  v6 = type metadata accessor for PromptTemplate();
  sub_238827E14(v5 + *(v6 + 24), v4, &qword_27DF2FE30, &unk_2388D5750);
  v7 = sub_2388D1138();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v4, 1, v7);
  v10 = v0[49];
  v11 = v0[50];
  if (v9 == 1)
  {
    sub_238827E88(v0[49], &qword_27DF2FE30, &unk_2388D5750);
    v12 = sub_2388D1068();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v14 = v0[47];
    v13 = v0[48];
    v15 = v0[46];
    sub_2388D1128();
    (*(v8 + 8))(v10, v7);
    sub_2388D10E8();
    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[56];
  v17 = v0[50];
  sub_2388D11D8();
  v18 = v0[56];
  v53 = v0[39];
  v49 = v0[38];
  v20 = v0[36];
  v19 = v0[37];
  v22 = v0[34];
  v21 = v0[35];
  v63 = v0[33];
  v65 = v0[32];
  v57 = v0[30];
  v59 = v0[28];
  v61 = v0[27];
  v51 = v0[20];
  v55 = v0[19];
  v23 = v0[15];
  sub_23883B3BC(*(v23 + 16));
  v24 = swift_task_alloc();
  *(v24 + 16) = v18;
  *(v24 + 24) = v23;
  sub_2388D2458();

  sub_2388412D8(&qword_27DF2FE40, MEMORY[0x277D42D40]);
  sub_2388D2678();

  v25 = *(v20 + 8);
  v0[57] = v25;
  v0[58] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v19, v21);
  sub_238839734((v0 + 2));
  sub_2388D2638();
  (*(v63 + 8))(v22, v65);
  v64 = v25;
  v25(v49, v21);
  sub_238827E14(v55, v57, &qword_27DF2FE20, &qword_2388D5740);
  v26 = (*(v59 + 48))(v57, 1, v61);
  v27 = v0[31];
  if (v26 == 1)
  {
    v28 = sub_2388D2268();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  }

  else
  {
    v29 = v0[29];
    v30 = v0[20];
    sub_238840F4C(v0[30], v29, type metadata accessor for GenerationSchema);

    sub_238839DC0(v27);
    sub_2388410A0(v29, type metadata accessor for GenerationSchema);
    v31 = sub_2388D2268();
    (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
  }

  v58 = v0[44];
  v60 = v0[45];
  v50 = v0[42];
  v52 = v0[43];
  v33 = v0[40];
  v32 = v0[41];
  v34 = v0[39];
  v35 = v0[35];
  v36 = v0[31];
  v62 = v0[23];
  v48 = v0[20];
  v54 = v0[17];
  v56 = v0[18];
  v37 = v0[16];
  sub_2388D2658();
  sub_238827E88(v36, &qword_27DF2FE28, &qword_2388D5748);
  v64(v34, v35);
  sub_238840734(v37);
  sub_2388D2648();

  v64(v33, v35);
  sub_2388D2618();
  v64(v32, v35);
  sub_2388D2628();
  v64(v50, v35);
  sub_2388D25F8();
  v64(v52, v35);
  v38 = *(v48 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID);
  v39 = *(v48 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID + 8);
  sub_2388D2608();
  v64(v58, v35);
  v0[13] = *(v48 + 16);
  sub_2388D13E8();
  sub_2388D2668();
  v40 = *(MEMORY[0x277D0D8D8] + 4);
  v41 = swift_task_alloc();
  v0[59] = v41;
  v42 = sub_2388412D8(&qword_27DF2FE48, MEMORY[0x277D71A98]);
  *v41 = v0;
  v41[1] = sub_23883AE2C;
  v43 = v0[26];
  v45 = v0[23];
  v44 = v0[24];
  v46 = v0[21];

  return MEMORY[0x282165A68](v43, v44, v46, v42);
}

uint64_t sub_23883AE2C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);
  if (v0)
  {
    v5 = sub_23883B1F8;
  }

  else
  {
    v5 = sub_23883AF94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23883AF94()
{
  v11 = v0[57];
  v12 = v0[58];
  v1 = v0[55];
  v2 = v0[56];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[49];
  v3 = v0[45];
  v17 = v0[48];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[42];
  v21 = v0[41];
  v22 = v0[40];
  v23 = v0[39];
  v24 = v0[38];
  v25 = v0[37];
  v4 = v0[35];
  v26 = v0[34];
  v27 = v0[31];
  v28 = v0[30];
  v29 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v30 = v0[23];
  v8 = v0[14];
  *(v8 + 24) = sub_2388D13A8();
  *(v8 + 32) = sub_2388412D8(&qword_27DF2FE50, MEMORY[0x277D719F8]);
  sub_238841100(v8);
  sub_2388412D8(&qword_27DF2FE58, MEMORY[0x277D71D98]);
  sub_2388D1C08();
  (*(v6 + 8))(v5, v7);
  v11(v3, v4);
  *(v8 + 40) = 1;
  (*(v1 + 8))(v2, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23883B1F8()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 432);
  (*(v0 + 456))(*(v0 + 360), *(v0 + 280));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 480);
  v6 = *(v0 + 448);
  v7 = *(v0 + 424);
  v9 = *(v0 + 392);
  v8 = *(v0 + 400);
  v10 = *(v0 + 384);
  v11 = *(v0 + 352);
  v12 = *(v0 + 360);
  v15 = *(v0 + 344);
  v16 = *(v0 + 336);
  v17 = *(v0 + 328);
  v18 = *(v0 + 320);
  v19 = *(v0 + 312);
  v20 = *(v0 + 304);
  v21 = *(v0 + 296);
  v22 = *(v0 + 272);
  v23 = *(v0 + 248);
  v24 = *(v0 + 240);
  v25 = *(v0 + 232);
  v26 = *(v0 + 208);
  v27 = *(v0 + 184);
  sub_2388BE130(v5, 1);
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23883B3BC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v40 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2388411D4(*(a1 + 56) + 32 * v12, v39);
    *&v38 = v15;
    *(&v38 + 1) = v14;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_2388411D4(&v36, &v32);

    sub_238810E44(&qword_27DF2FE88, &qword_2388D5780);
    sub_238810E44(&qword_27DF2FE90, &qword_2388D5788);
    if (swift_dynamicCast())
    {
      if (!*(&v29 + 1))
      {
        goto LABEL_17;
      }

      sub_238826B08(&v28, v34);
      v32 = v35;
      v33[0] = v36;
      v33[1] = v37;
      sub_238826B08(v34, v31);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        sub_238822C3C(v16 + 1, 1);
        v2 = v40;
      }

      v17 = v32;
      v18 = *(v2 + 40);
      sub_2388D34A8();
      sub_2388D2938();
      result = sub_2388D34E8();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v17;
      sub_238826B08(v31, *(v2 + 56) + 40 * v23);
      ++*(v2 + 16);
      result = sub_2388158BC(v33);
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
LABEL_17:
      sub_238827E88(&v35, &qword_27DF2FE98, &qword_2388D5790);
      result = sub_238827E88(&v28, &qword_27DF2FEA0, &qword_2388D5798);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23883B6D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v4 = sub_2388D11E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2388D25D8();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v23, v4);
  v16 = *a2;
  v15 = a2[1];
  v25[3] = sub_2388D1DB8();
  v25[4] = sub_2388412D8(&qword_27DF2FE78, MEMORY[0x277D0E698]);
  sub_238841100(v25);

  sub_2388D1DA8();
  v17 = MEMORY[0x277D42E18];
  sub_2388D2518();
  sub_2388158BC(v25);
  sub_238810E44(&qword_27DF2FE80, &qword_2388D5778);
  v18 = *(v10 + 72);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2388D3F70;
  (*(v11 + 16))(v20 + v19, v14, v9);
  MEMORY[0x23EE667A0](v20, v9, v17);

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_23883B96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a5;
  LODWORD(v61) = a3;
  v60 = a2;
  v62 = sub_2388D2468();
  v7 = *(v62 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v62);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D2498();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v51 = v7;
    v52 = a4;
    v66 = MEMORY[0x277D84F90];
    v15 = a1;
    sub_2388B8078(0, v13, 0);
    v16 = v66;
    v17 = type metadata accessor for Transcript.Entry(0);
    v18 = v15;
    v19 = *(v17 - 8);
    v20 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v59 = *(v19 + 72);
    v21 = v58;
    do
    {
      v22 = v18;
      sub_23883BEC8(v20, v60, v18, v61 & 1, v63);
      v66 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2388B8078((v23 > 1), v24 + 1, 1);
      }

      v25 = v64;
      v26 = v65;
      v27 = sub_238827C28(v63, v64);
      v28 = *(*(v25 - 8) + 64);
      MEMORY[0x28223BE20](v27);
      v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_23883F9F0(v24, v30, &v66, v25, v26);
      sub_2388158BC(v63);
      v16 = v66;
      v20 += v59;
      --v13;
      v18 = v22;
    }

    while (v13);
    v58 = v21;
    v7 = v51;
    a4 = v52;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v32 = *a4;

  v34 = sub_238833D78(v33);

  v63[0] = v34;
  sub_23881FB40(v16);
  v35 = v63[0];
  v36 = *(v63[0] + 16);
  if (v36)
  {
    v66 = v14;
    sub_2388B8034(0, v36, 0);
    v37 = v66;
    v61 = v35;
    v38 = v35 + 32;
    v39 = v53;
    do
    {
      sub_238815814(v38, v63);
      sub_238815878(v63, v64);
      sub_2388D2478();
      sub_2388158BC(v63);
      v66 = v37;
      v41 = *(v37 + 16);
      v40 = *(v37 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2388B8034(v40 > 1, v41 + 1, 1);
        v37 = v66;
      }

      *(v37 + 16) = v41 + 1;
      (*(v7 + 32))(v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v41, v39, v62);
      v38 += 40;
      --v36;
    }

    while (v36);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v63[0] = v37;
  sub_238810E44(&qword_27DF2FED8, &qword_2388D57C0);
  sub_238815180(&qword_27DF2FEE0, &qword_27DF2FED8, &qword_2388D57C0);
  v42 = v54;
  sub_2388D24C8();

  sub_238810E44(&qword_27DF2FEE8, &qword_2388D57C8);
  v43 = v55;
  v44 = *(v55 + 72);
  v45 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2388D3F70;
  v47 = v46 + v45;
  v48 = v56;
  (*(v43 + 16))(v47, v42, v56);
  MEMORY[0x23EE66750](v46);

  return (*(v43 + 8))(v42, v48);
}

void sub_23883BEC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v299 = a4;
  v314 = a3;
  v313 = a2;
  v319 = a5;
  v6 = sub_238810E44(&qword_27DF2FEF0, &qword_2388D57D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v321 = &v282 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v333 = (&v282 - v10);
  v309 = sub_2388D2538();
  v290 = *(v309 - 8);
  v11 = *(v290 + 64);
  MEMORY[0x28223BE20](v309);
  v308 = &v282 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_2388D2578();
  v329 = *(v328 - 1);
  v13 = *(v329 + 64);
  MEMORY[0x28223BE20](v328);
  *&v337 = &v282 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_2388D2178();
  v307 = *(v304 - 8);
  v15 = *(v307 + 64);
  MEMORY[0x28223BE20](v304);
  v285 = &v282 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_2388D2268();
  v287 = *(v293 - 8);
  v17 = *(v287 + 64);
  MEMORY[0x28223BE20](v293);
  v284 = &v282 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_2388D17F8();
  v286 = *(v292 - 8);
  v19 = *(v286 + 64);
  MEMORY[0x28223BE20](v292);
  v283 = &v282 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_2388D26B8();
  v282 = *(v291 - 8);
  v21 = *(v282 + 64);
  MEMORY[0x28223BE20](v291);
  v300 = &v282 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_2388D1D78();
  v302 = *(v326 - 8);
  v23 = *(v302 + 64);
  MEMORY[0x28223BE20](v326);
  v324 = &v282 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_2388D2558();
  v301 = *(v323 - 8);
  v25 = *(v301 + 64);
  v26 = MEMORY[0x28223BE20](v323);
  v335 = &v282 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v334 = &v282 - v28;
  v29 = sub_238810E44(&qword_27DF2FEF8, &qword_2388D57D8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v338 = &v282 - v31;
  v346 = sub_2388D2588();
  v317 = *(v346 - 8);
  v32 = *(v317 + 64);
  v33 = MEMORY[0x28223BE20](v346);
  v320 = (&v282 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v310 = &v282 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v322 = &v282 - v38;
  MEMORY[0x28223BE20](v37);
  v330 = (&v282 - v39);
  v40 = sub_2388D25B8();
  v331 = *(v40 - 8);
  v41 = *(v331 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v332 = &v282 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v311 = &v282 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v336 = &v282 - v47;
  MEMORY[0x28223BE20](v46);
  v327 = &v282 - v48;
  v312 = type metadata accessor for Transcript.ResponseFormat(0);
  v316 = *(v312 - 8);
  v49 = *(v316 + 64);
  MEMORY[0x28223BE20](v312);
  v306 = &v282 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  v51 = *(*(v303 - 8) + 64);
  MEMORY[0x28223BE20](v303);
  v298 = &v282 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v305 = &v282 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v296 = &v282 - v57;
  v58 = sub_238810E44(&qword_27DF2FF08, &unk_2388D57E8);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v58 - 8);
  v288 = &v282 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v297 = &v282 - v62;
  v295 = type metadata accessor for Transcript.Prompt(0);
  v63 = *(*(v295 - 8) + 64);
  MEMORY[0x28223BE20](v295);
  v65 = &v282 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2388D2708();
  v315 = *(v66 - 8);
  v67 = *(v315 + 64);
  MEMORY[0x28223BE20](v66);
  v69 = &v282 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2388D25D8();
  v289 = *(v70 - 1);
  v71 = *(v289 + 64);
  v72 = MEMORY[0x28223BE20](v70);
  v294 = &v282 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v318 = &v282 - v74;
  v75 = type metadata accessor for Transcript.Entry(0);
  v76 = *(v75 - 8);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  v79 = (&v282 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238841038(a1, v79, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v325 = v40;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v81 = 0;
        v82 = v79[1];
        *&v337 = *v79;
        v84 = v79[3];
        v83 = v79[4];
        v85 = (v83 - 40);
        v86 = *(v83 + 16);
        v87 = MEMORY[0x277D84F90];
LABEL_5:
        v88 = &v85[88 * v81];
        while (v86 != v81)
        {
          if (v81 >= *(v83 + 16))
          {
            goto LABEL_101;
          }

          ++v81;
          v89 = (v88 + 88);
          v90 = *(v88 + 15) >> 62;
          v88 += 88;
          if (!v90)
          {
            v335 = v85;
            v92 = *v89;
            v91 = v89[1];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v336 = v84;
            v94 = v82;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v87 = sub_2388B686C(0, *(v87 + 2) + 1, 1, v87);
            }

            v96 = *(v87 + 2);
            v95 = *(v87 + 3);
            if (v96 >= v95 >> 1)
            {
              v87 = sub_2388B686C((v95 > 1), v96 + 1, 1, v87);
            }

            *(v87 + 2) = v96 + 1;
            v97 = &v87[16 * v96];
            *(v97 + 4) = v92;
            *(v97 + 5) = v91;
            v40 = v325;
            v82 = v94;
            v85 = v335;
            v84 = v336;
            goto LABEL_5;
          }
        }

        *&v340 = v87;
        sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
        sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
        sub_2388D27B8();

        v173 = v308;
        sub_2388D2528();

        sub_238810E44(&qword_27DF2FF10, &qword_2388D57F8);
        v174 = v290;
        v175 = *(v290 + 72);
        v176 = (*(v290 + 80) + 32) & ~*(v290 + 80);
        v177 = swift_allocObject();
        v337 = xmmword_2388D3F70;
        *(v177 + 16) = xmmword_2388D3F70;
        (*(v174 + 16))(v177 + v176, v173, v309);
        v178 = v330;
        *v330 = v177;
        v179 = v317;
        v180 = v346;
        (*(v317 + 104))(v178, *MEMORY[0x277D42DB0], v346);
        (*(v179 + 16))(v310, v178, v180);
        v181 = sub_2388D25A8();
        (*(*(v181 - 8) + 56))(v338, 1, 1, v181);
        v182 = v311;
        sub_2388D2598();
        sub_238810E44(&qword_27DF2FF18, &qword_2388D5800);
        v183 = v331;
        v184 = *(v331 + 72);
        v185 = (*(v331 + 80) + 32) & ~*(v331 + 80);
        v186 = swift_allocObject();
        *(v186 + 16) = v337;
        (*(v183 + 16))(v186 + v185, v182, v40);
        sub_2388D2548();
        v187 = sub_2388D2688();
        v188 = MEMORY[0x277D42E70];
        v189 = v319;
        v319[3] = v187;
        v189[4] = v188;
        sub_238841100(v189);
        sub_2388D2698();
        (*(v183 + 8))(v182, v40);
        (*(v179 + 8))(v178, v180);
        (*(v174 + 8))(v308, v309);
        return;
      }

      v134 = v79[2];
      v313 = v79[1];
      v312 = v134;
      v135 = v79[3];
      *&v337 = *(v135 + 2);
      if (!v337)
      {
LABEL_68:

        v213 = v294;
        sub_2388D2548();
        v214 = sub_2388D2718();
        v215 = MEMORY[0x277D42EB8];
        v216 = v319;
        v319[3] = v214;
        v216[4] = v215;
        sub_238841100(v216);
        MEMORY[0x23EE669C0](v213);
        return;
      }

      v136 = 0;
      v137 = v135 + 32;
      LODWORD(v318) = *MEMORY[0x277D42D98];
      v316 = v301 + 104;
      v315 = v302 + 8;
      LODWORD(v314) = *MEMORY[0x277D42DD8];
      v327 = (v317 + 104);
      LODWORD(v322) = *MEMORY[0x277D42DD0];
      v334 = (v331 + 56);
      v329 = v331 + 48;
      v328 = (v331 + 32);
      v138 = MEMORY[0x277D84F90];
      v139 = v321;
      v140 = v335;
      v336 = v135;
      while (1)
      {
        if (v136 >= *(v135 + 2))
        {
          goto LABEL_103;
        }

        v141 = *v137;
        v341 = *(v137 + 1);
        v143 = *(v137 + 3);
        v142 = *(v137 + 4);
        v144 = *(v137 + 2);
        v345 = *(v137 + 10);
        v343 = v143;
        v344 = v142;
        v340 = v141;
        v342 = v144;
        v145 = v341;
        if (v143 >> 62)
        {
          if (v143 >> 62 != 1)
          {
            (*v316)(v140, v318, v323);
            v149 = objc_allocWithZone(MEMORY[0x277CBEB28]);

            v150 = v145;
            v151 = [v149 init];
            v152 = v324;
            sub_2388D1D68();
            sub_2388D1D58();
            (*v315)(v152, v326);
            v153 = sub_2388D2848();

            v154 = CGImageDestinationCreateWithData(v151, v153, 1uLL, 0);

            if (!v154)
            {
              goto LABEL_106;
            }

            CGImageDestinationAddImage(v154, v150, 0);
            CGImageDestinationFinalize(v154);
            MEMORY[0x23EE65230](v151);

            v155 = v320;
            sub_2388D25C8();
            (*v327)(v155, v314, v346);
            v156 = sub_2388D25A8();
            (*(*(v156 - 8) + 56))(v338, 1, 1, v156);
            v139 = v321;
            sub_2388D2598();
            sub_238840EF8(&v340);
            v40 = v325;
            goto LABEL_49;
          }

          v146 = v345;
          v147 = v330;
          *v330 = *(&v344 + 1);
        }

        else
        {
          v146 = *(&v341 + 1);
          v147 = v330;
          *v330 = v341;
        }

        v147[1] = v146;
        (*v327)(v147, v322, v346);
        v148 = sub_2388D25A8();
        (*(*(v148 - 8) + 56))(v338, 1, 1, v148);

        sub_2388D2598();
LABEL_49:
        (*v334)(v139, 0, 1, v40);
        v157 = v333;
        sub_238840FB4(v139, v333, &qword_27DF2FEF0, &qword_2388D57D0);
        if ((*v329)(v157, 1, v40) == 1)
        {
          sub_238827E88(v157, &qword_27DF2FEF0, &qword_2388D57D0);
        }

        else
        {
          v158 = *v328;
          (*v328)(v332, v157, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_2388B74B4(0, *(v138 + 2) + 1, 1, v138);
          }

          v160 = *(v138 + 2);
          v159 = *(v138 + 3);
          if (v160 >= v159 >> 1)
          {
            v138 = sub_2388B74B4(v159 > 1, v160 + 1, 1, v138);
          }

          *(v138 + 2) = v160 + 1;
          v158(&v138[((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v160], v332, v40);
        }

        ++v136;
        v137 += 88;
        v135 = v336;
        v140 = v335;
        if (v337 == v136)
        {
          goto LABEL_68;
        }
      }
    }

    v116 = v79[1];
    v117 = v79[2];
    v118 = *(v117 + 16);
    if (!v118)
    {
      v199 = v79[2];

      v121 = MEMORY[0x277D84F90];
LABEL_67:
      v200 = v330;
      *v330 = v121;
      v201 = v317;
      v202 = v346;
      (*(v317 + 104))(v200, *MEMORY[0x277D42DE0], v346);
      (*(v201 + 16))(v310, v200, v202);
      v203 = sub_2388D25A8();
      (*(*(v203 - 8) + 56))(v338, 1, 1, v203);
      v204 = v311;
      sub_2388D2598();
      sub_238810E44(&qword_27DF2FF18, &qword_2388D5800);
      v205 = v331;
      v206 = *(v331 + 72);
      v207 = (*(v331 + 80) + 32) & ~*(v331 + 80);
      v208 = swift_allocObject();
      *(v208 + 16) = xmmword_2388D3F70;
      (*(v205 + 16))(v208 + v207, v204, v40);
      v209 = v318;
      sub_2388D2548();
      v210 = sub_2388D2718();
      v211 = MEMORY[0x277D42EB8];
      v212 = v319;
      v319[3] = v210;
      v212[4] = v211;
      sub_238841100(v212);
      MEMORY[0x23EE669C0](v209);
      (*(v205 + 8))(v204, v40);
      (*(v201 + 8))(v200, v202);
      return;
    }

    v324 = v79[1];
    *&v340 = MEMORY[0x277D84F90];
    sub_2388B80B8(0, v118, 0);
    v119 = *(v117 + 16);
    if (v118 > v119)
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return;
    }

    v120 = 0;
    v121 = v340;
    v327 = (v329 + 32);
    v326 = v117;
    while (1)
    {
      v336 = v121;
      v332 = v118;
      v122 = v117 + v120;
      v123 = *(v117 + v120 + 32);
      v124 = *(v117 + v120 + 40);
      v125 = *(v117 + v120 + 56);
      v334 = *(v117 + v120 + 48);
      v335 = v123;
      v126 = *(v117 + v120 + 64);
      v127 = *(v122 + 72);
      v128 = *(v122 + 96);
      v333 = *(v122 + 104);
      v129 = *(v122 + 112);
      v130 = *(v122 + 80);

      sub_238814698(v126, v127, v130);

      sub_2388D2568();

      v131 = v130;
      v121 = v336;
      sub_238810DC4(v126, v127, v131);

      *&v340 = v121;
      v133 = *(v121 + 2);
      v132 = *(v121 + 3);
      if (v133 >= v132 >> 1)
      {
        sub_2388B80B8(v132 > 1, v133 + 1, 1);
        v121 = v340;
      }

      *(v121 + 2) = v133 + 1;
      (*(v329 + 32))(&v121[((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v133], v337, v328);
      if (!v119)
      {
        break;
      }

      --v119;
      v120 += 88;
      v118 = (v332 - 1);
      v117 = v326;
      if (v332 == 1)
      {

        v40 = v325;
        goto LABEL_67;
      }
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v332 = v69;
  v333 = v70;
  *&v337 = v66;
  v98 = v314;
  v335 = a1;
  v311 = v65;
  if (!EnumCaseMultiPayload)
  {
    v99 = 0;
    v100 = v79[2];
    v346 = v79[1];
    v338 = v79[3];
    v101 = MEMORY[0x277D84F90];
    v102 = *(v100 + 16);
LABEL_16:
    v103 = 88 * v99;
    v104 = v337;
    v105 = v315;
    while (1)
    {
      if (v102 == v99)
      {

        *&v340 = v101;
        sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
        sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
        v190 = sub_2388D27B8();
        v192 = v191;

        *&v340 = v190;
        *(&v340 + 1) = v192;
        v194 = HIBYTE(v192) & 0xF;
        if ((v192 & 0x2000000000000000) == 0)
        {
          v194 = v190 & 0xFFFFFFFFFFFFLL;
        }

        if (v194)
        {
          *&v339 = 32;
          *(&v339 + 1) = 0xE100000000000000;
          MEMORY[0x23EE66C20](v190, v192);

          v340 = v339;
        }

        MEMORY[0x28223BE20](v193);
        *(&v282 - 2) = &v340;
        v195 = v318;
        sub_2388D25E8();
        v196 = v332;
        sub_2388D26F8();
        v197 = MEMORY[0x277D42E98];
        v198 = v319;
        v319[3] = v104;
        v198[4] = v197;
        sub_238841100(v198);
        sub_2388D26D8();
        (*(v105 + 8))(v196, v104);
        (*(v289 + 8))(v195, v333);

        return;
      }

      if (v99 >= *(v100 + 16))
      {
        break;
      }

      ++v99;
      v106 = v103 + 88;
      v107 = *(v100 + v103 + 80) >> 62;
      v103 += 88;
      if (v107 != 2)
      {
        v108 = v107 == 0;
        v109 = 72;
        if (v108)
        {
          v109 = 16;
        }

        v110 = 24;
        if (!v108)
        {
          v110 = 80;
        }

        v111 = *(v100 + v109 + v106 - 56);
        v112 = *(v100 + v110 + v106 - 56);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_2388B686C(0, *(v101 + 2) + 1, 1, v101);
        }

        v114 = *(v101 + 2);
        v113 = *(v101 + 3);
        if (v114 >= v113 >> 1)
        {
          v101 = sub_2388B686C((v113 > 1), v114 + 1, 1, v101);
        }

        *(v101 + 2) = v114 + 1;
        v115 = &v101[16 * v114];
        *(v115 + 4) = v111;
        *(v115 + 5) = v112;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v161 = v311;
  sub_238840F4C(v79, v311, type metadata accessor for Transcript.Prompt);
  v162 = *(v98 + 16);
  if (!v162)
  {
    Transcript.Entry.id.getter();
    LODWORD(v337) = 0;
    v169 = v307;
    v170 = v306;
    v171 = v298;
LABEL_71:
    v172 = v296;
    goto LABEL_73;
  }

  v163 = v98 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * (v162 - 1);
  v164 = Transcript.Entry.id.getter();
  v166 = v165;
  v167 = Transcript.Entry.id.getter();
  v169 = v307;
  v170 = v306;
  v171 = v298;
  if (!v166)
  {
    LODWORD(v337) = 0;
    goto LABEL_71;
  }

  v172 = v296;
  if (v164 == v167 && v166 == v168)
  {

    LODWORD(v337) = 1;
  }

  else
  {
    LODWORD(v337) = sub_2388D3368();
  }

LABEL_73:

  v217 = *(v295 + 28);
  sub_238827E14(v161 + v217, v172, &qword_27DF2FF00, &qword_2388D57E0);
  v218 = v172;
  v219 = v316 + 48;
  v220 = *(v316 + 48);
  v221 = (v220)(v218, 1, v312);
  v222 = v303;
  v316 = v219;
  v314 = v217;
  if (v221 == 1)
  {
    sub_238827E88(v218, &qword_27DF2FF00, &qword_2388D57E0);
    v223 = v297;
    (*(v169 + 56))(v297, 1, 1, v304);
    sub_238827E88(v223, &qword_27DF2FF08, &unk_2388D57E8);
    v224 = v334;
    v225 = v305;
    v226 = v299;
LABEL_76:
    LODWORD(v313) = v226 & v337;
    goto LABEL_77;
  }

  sub_238841038(v218, v171, type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat);
  sub_2388410A0(v218, type metadata accessor for Transcript.ResponseFormat);
  v227 = v171 + *(v222 + 24);
  v228 = v297;
  v229 = v304;
  (*(v169 + 16))(v297, v227, v304);
  sub_2388410A0(v171, type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat);
  v230 = *(v169 + 56);
  LODWORD(v313) = 1;
  v230(v228, 0, 1, v229);
  v231 = v288;
  sub_238840FB4(v228, v288, &qword_27DF2FF08, &unk_2388D57E8);
  LODWORD(v228) = (*(v169 + 88))(v231, v229);
  v232 = *MEMORY[0x277D0DBF8];
  (*(v169 + 8))(v231, v229);
  v108 = v228 == v232;
  v224 = v334;
  v225 = v305;
  v226 = v299;
  if (!v108)
  {
    goto LABEL_76;
  }

LABEL_77:
  v233 = *(v311 + 2);
  v234 = *(v233 + 16);
  if (!v234)
  {
    goto LABEL_93;
  }

  v310 = v220;
  *&v339 = MEMORY[0x277D84F90];
  *&v337 = v233;
  sub_2388B80FC(0, v234, 0);
  if (!*(v337 + 16))
  {
    goto LABEL_102;
  }

  v235 = 0;
  v236 = v339;
  v237 = (v337 + 32);
  LODWORD(v328) = *MEMORY[0x277D42D98];
  v321 = (v301 + 104);
  v320 = (v302 + 8);
  LODWORD(v315) = *MEMORY[0x277D42DD8];
  v335 = (v317 + 104);
  LODWORD(v329) = *MEMORY[0x277D42DD0];
  v333 = (v331 + 32);
  v332 = (v234 - 1);
  while (1)
  {
    v238 = *v237;
    v341 = v237[1];
    v240 = v237[3];
    v239 = v237[4];
    v241 = v237[2];
    v345 = *(v237 + 10);
    v343 = v240;
    v344 = v239;
    v340 = v238;
    v342 = v241;
    v242 = v341;
    if (!(v240 >> 62))
    {
      v247 = *(&v341 + 1);
      v248 = v330;
      *v330 = v341;
      v248[1] = v247;
      (*v335)(v248, v329, v346);
      v249 = sub_2388D25A8();
      (*(*(v249 - 8) + 56))(v338, 1, 1, v249);

      v243 = v336;
      goto LABEL_84;
    }

    v243 = v336;
    if (v240 >> 62 == 1)
    {
      v244 = v345;
      v245 = v330;
      *v330 = *(&v344 + 1);
      v245[1] = v244;
      (*v335)(v245, v329, v346);
      v246 = sub_2388D25A8();
      (*(*(v246 - 8) + 56))(v338, 1, 1, v246);

LABEL_84:
      sub_2388D2598();
      goto LABEL_87;
    }

    (*v321)(v224, v328, v323);
    v250 = objc_allocWithZone(MEMORY[0x277CBEB28]);

    v251 = v242;
    v252 = [v250 init];
    v253 = v324;
    sub_2388D1D68();
    sub_2388D1D58();
    (*v320)(v253, v326);
    v254 = sub_2388D2848();

    v255 = CGImageDestinationCreateWithData(v252, v254, 1uLL, 0);

    if (!v255)
    {
      goto LABEL_107;
    }

    CGImageDestinationAddImage(v255, v251, 0);
    CGImageDestinationFinalize(v255);
    MEMORY[0x23EE65230](v252);

    v256 = v322;
    sub_2388D25C8();
    (*v335)(v256, v315, v346);
    v257 = sub_2388D25A8();
    (*(*(v257 - 8) + 56))(v338, 1, 1, v257);
    v243 = v336;
    sub_2388D2598();
    sub_238840EF8(&v340);
    v40 = v325;
LABEL_87:
    v258 = *v333;
    v259 = v327;
    (*v333)(v327, v243, v40);
    *&v339 = v236;
    v260 = v40;
    v262 = *(v236 + 16);
    v261 = *(v236 + 24);
    if (v262 >= v261 >> 1)
    {
      sub_2388B80FC(v261 > 1, v262 + 1, 1);
      v259 = v327;
      v236 = v339;
    }

    *(v236 + 16) = v262 + 1;
    v258(v236 + ((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v262, v259, v260);
    if (v332 == v235)
    {
      break;
    }

    v40 = v260;
    v237 = (v237 + 88);
    ++v235;
    v224 = v334;
    if (v235 >= *(v337 + 16))
    {
      goto LABEL_102;
    }
  }

  v169 = v307;
  v170 = v306;
  v225 = v305;
  v220 = v310;
LABEL_93:
  sub_238827E14(&v311[v314], v225, &qword_27DF2FF00, &qword_2388D57E0);
  v263 = (v220)(v225, 1, v312);
  v264 = v293;
  v265 = v292;
  if (v263 == 1)
  {
    sub_238827E88(v225, &qword_27DF2FF00, &qword_2388D57E0);
    goto LABEL_97;
  }

  sub_238840F4C(v225, v170, type metadata accessor for Transcript.ResponseFormat);
  if (v313)
  {
    sub_2388410A0(v170, type metadata accessor for Transcript.ResponseFormat);
LABEL_97:
    v266 = v318;
    sub_2388D2548();
    v267 = MEMORY[0x277D42E78];
    v268 = v319;
    v319[3] = v291;
    v268[4] = v267;
    sub_238841100(v268);
    MEMORY[0x23EE66960](v266);
    v269 = type metadata accessor for Transcript.Prompt;
    v270 = v311;
  }

  else
  {
    v271 = v318;
    sub_2388D2548();
    MEMORY[0x23EE66960](v271);
    v272 = *v170;
    v273 = *(v170 + 1);
    v274 = *(v170 + 2);
    v275 = *(v170 + 3);
    (*(v169 + 16))(v285, &v170[*(v303 + 24)], v304);
    v276 = v284;
    sub_2388D2228();
    v277 = v283;
    sub_2388D17E8();
    (*(v287 + 8))(v276, v264);
    v278 = MEMORY[0x277D42E78];
    v279 = v319;
    v280 = v291;
    v319[3] = v291;
    v279[4] = v278;
    sub_238841100(v279);
    v281 = v300;
    sub_2388D26A8();
    (*(v286 + 8))(v277, v265);
    (*(v282 + 8))(v281, v280);
    sub_2388410A0(v311, type metadata accessor for Transcript.Prompt);
    v269 = type metadata accessor for Transcript.ResponseFormat;
    v270 = v170;
  }

  sub_2388410A0(v270, v269);
}

uint64_t sub_23883E5A4(uint64_t *a1)
{
  v2 = sub_2388D25D8();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v16[3] = MEMORY[0x277D837D0];
  v16[4] = MEMORY[0x277D42EC0];
  v16[0] = v9;
  v16[1] = v8;

  v10 = MEMORY[0x277D42E18];
  sub_2388D2518();
  sub_2388158BC(v16);
  sub_238810E44(&qword_27DF2FE80, &qword_2388D5778);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2388D3F70;
  (*(v4 + 16))(v13 + v12, v7, v2);
  MEMORY[0x23EE667A0](v13, v2, v10);

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_23883E750()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_promptSanitizer;
  v3 = sub_2388D1BD8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_responseSanitizer;
  v5 = sub_2388D1B18();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);

  v6 = *&v0[OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_model];

  v7 = *&v0[OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID + 8];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GenerativeModelInferenceSession()
{
  result = qword_27DF2FDF0;
  if (!qword_27DF2FDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23883E8BC()
{
  result = sub_2388D1BD8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2388D1B18();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_23883E9B8()
{
  result = qword_27DF2FE00;
  if (!qword_27DF2FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FE00);
  }

  return result;
}

uint64_t sub_23883EA0C()
{
  v1 = (*v0 + OBJC_IVAR____TtC16FoundationModels31GenerativeModelInferenceSession_sessionID);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

BOOL sub_23883EA4C()
{
  if (qword_27DF2F9C0 != -1)
  {
    swift_once();
  }

  v0 = off_27DF30D90;
  os_unfair_lock_lock(off_27DF30D90 + 4);
  swift_getKeyPath();
  sub_2388412D8(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel);
  sub_2388D1158();

  os_unfair_lock_opaque_low = LOBYTE(v0[5]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 4);
  return os_unfair_lock_opaque_low == 3;
}

uint64_t sub_23883EB60(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = *v3;
  v7 = swift_task_alloc();
  *(v4 + 40) = v7;
  *v7 = v4;
  v7[1] = sub_23883EC14;

  return sub_238835B6C(a1, a2);
}

uint64_t sub_23883EC14()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v2 + 48) = v7;
    *v7 = v4;
    v7[1] = sub_23883ED94;
    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = *(v2 + 16);

    return sub_238835EC4(v11, v8, v10, 1);
  }
}

uint64_t sub_23883ED94()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23883EE88(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23883EF20;

  return sub_2388356C0(a1);
}

uint64_t sub_23883EF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_23883F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_238833668;

  return sub_238837520(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_23883F120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2388414A0;

  return sub_23883A0FC(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_23883F208(uint64_t a1)
{
  result = sub_23883F230();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23883F230()
{
  result = qword_27DF2FE08;
  if (!qword_27DF2FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FE08);
  }

  return result;
}

unint64_t sub_23883F288()
{
  result = qword_27DF2FE10;
  if (!qword_27DF2FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FE10);
  }

  return result;
}

uint64_t sub_23883F2DC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_23883F2FC, 0, 0);
}

uint64_t sub_23883F2FC()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_238827C28(v1, v2);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_23883F3C4;
  v6 = v0[3];

  return MEMORY[0x282200310](v6, 0, 0, v0 + 2, v2, v3);
}

uint64_t sub_23883F3C4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_23883F4F4, 0, 0);
}

uint64_t sub_23883F4F4()
{
  v1 = v0[2];
  sub_2388BE130(v1, *(v0[4] + 40));
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_23883F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2388D2B38();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[8] = v6;
  v5[9] = v8;

  return MEMORY[0x2822009F8](sub_23883F61C, v6);
}

uint64_t sub_23883F61C()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_238827C28(v1, v2);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_23883F6E0;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  return MEMORY[0x282200310](v8, v6, v7, v0 + 2, v2, v3);
}

uint64_t sub_23883F6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (!v0)
  {
    v7 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v2 + 64);
  v6 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_23883F80C, v5, v6);
}

uint64_t sub_23883F80C()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_2388BE130(v2, *(v0[6] + 40));
  v4 = v3;
  swift_willThrow();

  *v1 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_23883F8A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = sub_238815878(v1, v3);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(a1 + 24) = swift_getAssociatedTypeWitness();
  *(a1 + 32) = swift_getAssociatedConformanceWitness();
  sub_238841100(a1);
  sub_2388D2C58();
  *(a1 + 40) = *(v1 + 40);
  return sub_23883FA88(v1);
}

uint64_t sub_23883F9F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_238841100(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_238826B08(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_23883FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v6 = sub_2388D1408();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2388D16C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_238810E44(&qword_27DF2FF68, &qword_2388D5878);
  v16 = sub_2388D1448();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2388D3F70;
  (*(v17 + 16))(v20 + v19, a1, v16);

  sub_2388D13F8();
  v21 = [objc_opt_self() processInfo];
  [v21 processIdentifier];

  sub_2388D16B8();
  (*(v9 + 16))(v13, v15, v8);
  v22 = sub_2388D13E8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_2388D13B8();
  (*(v9 + 8))(v15, v8);
  return v25;
}

id sub_23883FDAC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (*a3 != 2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D4D360]);
    v5 = sub_2388D2848();
    v6 = [v4 initWithModelManagerServicesUseCaseID_];

    [v6 setMode_];
    [v6 setBackends_];
    v20[0] = 0;
    v3 = [objc_allocWithZone(MEMORY[0x277D4D358]) initWithConfiguration:v6 error:v20];
    v7 = v20[0];
    if (v3)
    {

      goto LABEL_5;
    }

    v10 = v7;
    v11 = sub_2388D0ED8();

    swift_willThrow();
    if (qword_27DF2F9E8 != -1)
    {
      swift_once();
    }

    v12 = sub_2388D2408();
    sub_2388413AC(v12, qword_27DF3F8F8);
    v13 = v11;
    v14 = sub_2388D23E8();
    v15 = sub_2388D2E08();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_23880E000, v14, v15, "Sanitizer unavailable: %{public}@", v16, 0xCu);
      sub_238827E88(v17, &qword_27DF2FF90, &qword_2388D58A0);
      MEMORY[0x23EE68030](v17, -1, -1);
      MEMORY[0x23EE68030](v16, -1, -1);
    }

    else
    {
    }
  }

  v3 = 0;
LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_238840020(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FF40, &qword_2388D5838);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-v4];
  v6 = sub_238810E44(&qword_27DF2FF48, &qword_2388D5840);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27[-v8];
  v10 = sub_238810E44(&qword_27DF2FE38, &unk_2388D8CD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27[-v12];
  v14 = sub_2388D1118();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_2388D1068();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v13, a1, v19);
  (*(v20 + 56))(v13, 0, 1, v19);
  v21 = sub_2388D1098();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = sub_2388D1088();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v23 = sub_2388D10D8();
  if (qword_27DF2F9C8 != -1)
  {
    v23 = swift_once();
  }

  MEMORY[0x28223BE20](v23);
  *&v27[-16] = v18;
  v25 = sub_238842144(sub_2388412A0, &v27[-32], v24);
  (*(v15 + 8))(v18, v14);
  return v25 & 1;
}

uint64_t sub_23884036C(uint64_t a1)
{
  v38 = sub_2388D2178();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2388D2268();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Transcript.ToolDefinition(0);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2388D2208();
  v12 = *(v33 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v33);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2388B7EE0(0, v16, 0);
    v17 = v40;
    v18 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    v30 = (v2 + 16);
    v31 = v19;
    v28[1] = v12 + 32;
    v29 = (v5 + 8);
    v32 = v12;
    v20 = v35;
    do
    {
      v39 = v16;
      sub_238841038(v18, v11, type metadata accessor for Transcript.ToolDefinition);
      v21 = *v11;
      v22 = *(v11 + 1);
      v23 = *(v11 + 2);
      v24 = *(v11 + 3);
      (*v30)(v37, &v11[*(v34 + 24)], v38);
      sub_2388D2228();
      sub_2388D21F8();
      (*v29)(v20, v36);
      sub_2388410A0(v11, type metadata accessor for Transcript.ToolDefinition);
      v40 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2388B7EE0(v25 > 1, v26 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v26 + 1;
      (*(v32 + 32))(v17 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v15, v33);
      v18 += v31;
      v16 = v39 - 1;
    }

    while (v39 != 1);
  }

  return v17;
}

uint64_t sub_238840734(uint64_t a1)
{
  v2 = sub_2388D2328();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v60 - v8;
  v86 = type metadata accessor for DynamicGenerationSchema(0);
  v61 = *(v86 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v86);
  v84 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v60 - v13;
  v14 = type metadata accessor for GenerationSchema(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2388D2268();
  v17 = *(v71 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v71);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v60 - v22;
  v69 = sub_2388D2288();
  v23 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v73 = v9;
  v67 = v26;
  v91 = MEMORY[0x277D84F90];
  v72 = v24;
  v66 = v27;
  sub_2388B7F24(0, v27, 0);
  v29 = 0;
  v81 = v91;
  v65 = a1 + 32;
  v85 = (v3 + 16);
  v82 = v3 + 32;
  v83 = v3;
  v64 = (v17 + 32);
  v63 = (v17 + 8);
  v62 = v72 + 32;
  v30 = v74;
  v68 = v21;
  do
  {
    v31 = v7;
    v79 = v29;
    sub_238815814(v65 + 40 * v29, v88);
    v32 = v89;
    v33 = v90;
    sub_238815878(v88, v89);
    v77 = (*(v33 + 40))(v32, v33);
    v78 = v34;
    v35 = v89;
    v36 = v90;
    sub_238815878(v88, v89);
    v75 = (*(v36 + 48))(v35, v36);
    v76 = v37;
    v38 = v89;
    v39 = v90;
    sub_238815878(v88, v89);
    (*(v39 + 56))(v38, v39);
    sub_2388C16F8(v30);
    v40 = v86;
    v41 = *v85;
    (*v85)(v73, &v30[*(v86 + 28)], v2);
    v42 = *&v30[*(v40 + 32)];
    v43 = *(v42 + 16);
    if (v43)
    {
      v87 = v28;
      sub_2388B7C94(0, v43, 0);
      v44 = v87;
      v45 = v42 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v46 = *(v61 + 72);
      v7 = v31;
      do
      {
        v47 = v84;
        sub_238841038(v45, v84, type metadata accessor for DynamicGenerationSchema);
        v41(v7, (v47 + *(v86 + 28)), v2);
        sub_2388410A0(v47, type metadata accessor for DynamicGenerationSchema);
        v87 = v44;
        v48 = v2;
        v50 = *(v44 + 16);
        v49 = *(v44 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_2388B7C94(v49 > 1, v50 + 1, 1);
          v44 = v87;
        }

        *(v44 + 16) = v50 + 1;
        (*(v83 + 32))(v44 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v50, v7, v48);
        v45 += v46;
        --v43;
        v2 = v48;
      }

      while (v43);
      v30 = v74;
    }

    else
    {
      v7 = v31;
    }

    v51 = v68;
    sub_2388D2258();
    sub_2388410A0(v80, type metadata accessor for GenerationSchema);
    sub_2388410A0(v30, type metadata accessor for DynamicGenerationSchema);
    v52 = v70;
    v53 = v71;
    (*v64)(v70, v51, v71);
    v54 = v67;
    sub_2388D2278();

    (*v63)(v52, v53);
    sub_2388158BC(v88);
    v55 = v81;
    v91 = v81;
    v57 = *(v81 + 16);
    v56 = *(v81 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_2388B7F24(v56 > 1, v57 + 1, 1);
      v55 = v91;
    }

    v29 = v79 + 1;
    *(v55 + 16) = v57 + 1;
    v58 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v81 = v55;
    (*(v72 + 32))(v55 + v58 + *(v72 + 72) * v57, v54, v69);
    v28 = MEMORY[0x277D84F90];
    v30 = v74;
  }

  while (v29 != v66);
  return v81;
}

uint64_t sub_238840F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238840FB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_238810E44(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_238841038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388410A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_238841100(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_238841164()
{
  result = qword_27DF2FF28;
  if (!qword_27DF2FF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF2FF28);
  }

  return result;
}

uint64_t sub_2388411D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23884124C()
{
  result = qword_27DF2FF30;
  if (!qword_27DF2FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FF30);
  }

  return result;
}

uint64_t sub_2388412D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238841320()
{
  result = qword_27DF2FF60;
  if (!qword_27DF2FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FF60);
  }

  return result;
}

uint64_t sub_238841374()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2388413AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2388413FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_238841444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2388414B4(Class *a1, uint64_t a2, uint64_t a3)
{
  v80 = a2;
  v5 = sub_2388D1068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v73 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  v16 = type metadata accessor for Transcript.Prompt(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v88 = (&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for Transcript.Entry(0);
  v19 = *(v91 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v91);
  v22 = (&v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a1;
  v24 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
  v90 = *(v23 + 2);
  if (!v90)
  {

    return 1;
  }

  v73 = v10;
  v74 = v6;
  v81 = v24;
  v25 = a3;
  v26 = 0;
  v89 = v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v77 = v25;
  v75 = v13;
  v76 = v25 + 48;
  v78 = (v6 + 8);
  v79 = v5;
  v84 = v22;
  v85 = v15;
  v86 = v23;
  v87 = v19;
  while (1)
  {
    if (v26 >= *(v23 + 2))
    {
      __break(1u);
      goto LABEL_51;
    }

    sub_238841D74(&v89[*(v19 + 72) * v26], v22);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    if (!EnumCaseMultiPayload)
    {
      v23 = 0;
      v29 = v22[1];
      v28 = v22[2];
      v30 = v28 - 5;
      v31 = v22[3];
      isa = v28[2].isa;
      v33 = MEMORY[0x277D84F90];
LABEL_9:
      v34 = &v30[11 * v23];
      while (1)
      {
        if (isa == v23)
        {

          v92 = v33;
          sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
          sub_238841E3C();
          sub_2388D27B8();

          v23 = v86;
          goto LABEL_30;
        }

        if (v23 >= v28[2].isa)
        {
          break;
        }

        v23 = (v23 + 1);
        v35 = v34 + 11;
        v36 = v34[15].isa >> 62;
        v34 += 11;
        if (!v36)
        {
          v82 = v30;
          v83 = v29;
          v37 = v35->isa;
          v38 = v35[1].isa;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_2388B686C(0, *(v33 + 2) + 1, 1, v33);
          }

          v40 = *(v33 + 2);
          v39 = *(v33 + 3);
          if (v40 >= v39 >> 1)
          {
            v33 = sub_2388B686C((v39 > 1), v40 + 1, 1, v33);
          }

          *(v33 + 2) = v40 + 1;
          v41 = &v33[16 * v40];
          *(v41 + 4) = v37;
          *(v41 + 5) = v38;
          v15 = v85;
          v19 = v87;
          v30 = v82;
          v29 = v83;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:

      v72 = *v78;
      (*v78)(v23, v26);
      v72(v15, v26);
      return 0;
    }

    sub_238841EA0(v22, type metadata accessor for Transcript.Entry);
LABEL_4:
    if (++v26 == v90)
    {

      return 1;
    }
  }

  v28 = v88;
  sub_238841DD8(v22, v88);
  v42 = 0;
  v43 = v28[2].isa;
  v44 = *(v43 + 2);
  v33 = MEMORY[0x277D84F90];
LABEL_19:
  v45 = v43 + 88 * v42 - 40;
  while (v44 != v42)
  {
    if (v42 >= *(v43 + 2))
    {
      goto LABEL_48;
    }

    ++v42;
    v46 = (v45 + 88);
    v47 = *(v45 + 120) >> 62;
    v45 += 88;
    if (!v47)
    {
      v48 = *v46;
      v28 = v46[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_2388B686C(0, *(v33 + 2) + 1, 1, v33);
      }

      v50 = *(v33 + 2);
      v49 = *(v33 + 3);
      if (v50 >= v49 >> 1)
      {
        v33 = sub_2388B686C((v49 > 1), v50 + 1, 1, v33);
      }

      *(v33 + 2) = v50 + 1;
      v51 = &v33[16 * v50];
      *(v51 + 4) = v48;
      *(v51 + 5) = v28;
      v15 = v85;
      v23 = v86;
      goto LABEL_19;
    }
  }

  v92 = v33;
  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  sub_2388D27B8();

  sub_238841EA0(v88, type metadata accessor for Transcript.Prompt);
  v19 = v87;
LABEL_30:

  v52 = sub_2388D2948();

  if (v52 < 80)
  {

LABEL_35:
    v22 = v84;
    goto LABEL_4;
  }

  v53 = sub_2388D2848();

  v54 = v81;
  [v81 processString_];

  v55 = [v54 dominantLanguage];
  if (v55)
  {
    v33 = v55;
    sub_2388D2858();
    sub_2388D1078();
    if (((*(v77 + 48))(v15, v80) & 1) == 0)
    {
      if (qword_27DF2F9E8 != -1)
      {
        swift_once();
      }

      v61 = sub_2388D2408();
      sub_2388413AC(v61, qword_27DF3F8F8);
      v23 = v75;
      v62 = *(v74 + 16);
      v26 = v79;
      v62(v75, v15, v79);
      v28 = sub_2388D23E8();
      v63 = sub_2388D2E08();
      if (os_log_type_enabled(v28, v63))
      {
        v64 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = v91;
        *v64 = 136315138;
        v62(v73, v23, v26);
        v65 = sub_2388D28B8();
        v66 = v26;
        v68 = v67;
        v69 = *v78;
        (*v78)(v23, v66);
        v70 = sub_2388C0770(v65, v68, &v92);

        *(v64 + 4) = v70;
        _os_log_impl(&dword_23880E000, v28, v63, "Unsupported language %s detected.", v64, 0xCu);
        v71 = v91;
        sub_2388158BC(v91);
        MEMORY[0x23EE68030](v71, -1, -1);
        MEMORY[0x23EE68030](v64, -1, -1);

        v69(v85, v66);
        return 0;
      }

      goto LABEL_49;
    }

    (*v78)(v15, v79);

    goto LABEL_35;
  }

  if (qword_27DF2F9E8 == -1)
  {
    goto LABEL_40;
  }

LABEL_51:
  swift_once();
LABEL_40:
  v57 = sub_2388D2408();
  sub_2388413AC(v57, qword_27DF3F8F8);
  v58 = sub_2388D23E8();
  v59 = sub_2388D2E08();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_23880E000, v58, v59, "Unrecognized language detected.", v60, 2u);
    MEMORY[0x23EE68030](v60, -1, -1);
  }

  return 0;
}

uint64_t sub_238841D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238841DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Prompt(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238841E3C()
{
  result = qword_27DF2FBC0;
  if (!qword_27DF2FBC0)
  {
    sub_238810E8C(&qword_27DF2FBB8, &unk_2388D5410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FBC0);
  }

  return result;
}

uint64_t sub_238841EA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238841F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_2388B7BD0(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_2388D2F18();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_2388B7BD0((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_238827E7C(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_238827E7C(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_238842144(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_2388D1118();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23884235C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t LanguageModelSession.transcript.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  *a1 = *(v1 + 16);
}

uint64_t sub_2388424C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_23884258C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_238842650(&v4);
}

uint64_t sub_2388425C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_238842650(&v4);
}

uint64_t type metadata accessor for LanguageModelSession()
{
  result = qword_27DF2FFE8;
  if (!qword_27DF2FFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238842650(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_238890D30(v4, v2);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
    sub_2388D1148();
  }
}

uint64_t sub_238842798(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t LanguageModelSession.isResponding.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 28);
  os_unfair_lock_unlock(v3 + 6);
  return v1;
}

void sub_2388428B4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 28);
  os_unfair_lock_unlock((v3 + 24));
  *a2 = v4;
}

uint64_t sub_238842970()
{
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1178();

  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 28);
  if ((v1 & 1) == 0)
  {
    *(v0 + 28) = 1;
  }

  os_unfair_lock_unlock((v0 + 24));
  swift_getKeyPath();
  sub_2388D1168();

  return v1 ^ 1u;
}

uint64_t LanguageModelSession.__allocating_init(model:tools:instructions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v19[0] = a3;
    v19[1] = a4;
    v18 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D837D0];
    v5 = *(MEMORY[0x277D837D0] - 8);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x28223BE20](a1);
    v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = v10;
    v12 = v7;
    (*(v5 + 16))(v9, v19, v4);
    v13 = off_284B404C0;
    swift_bridgeObjectRetain_n();
    (v13)(&v17);
    v14 = *(v5 + 8);
    v14(v9, v4);
    sub_23881FB68(v17);

    v15 = v18;
    v14(v19, v4);

    a1 = v12;
    a2 = v11;
  }

  else
  {
    v15 = 0;
  }

  v19[0] = v15;
  return _s16FoundationModels20LanguageModelSessionC5model5tools12instructionsAcA06SystemcD0C_SayAA4Tool_pGAA12InstructionsVSgtcfC_0(a1, a2, v19);
}

uint64_t LanguageModelSession.__allocating_init(model:tools:instructions:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v8);
  if (v3)
  {
  }

  else
  {
    v7 = v8;
    return _s16FoundationModels20LanguageModelSessionC5model5tools12instructionsAcA06SystemcD0C_SayAA4Tool_pGAA12InstructionsVSgtcfC_0(a1, a2, &v7);
  }
}

uint64_t LanguageModelSession.__allocating_init(model:tools:transcript:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = type metadata accessor for GenerativeModelInferenceSession();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v10 = sub_23883435C(v9);
  sub_2388A73E8(a2, &v13);

  v11 = sub_238855AE8(a1, v10, a2, v13);

  return v11;
}

{
  v4 = v3;
  v32 = a2;
  v7 = sub_2388D1058();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerModelInferenceSession(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v31 - v18);
  v20 = *a3;
  sub_238857D9C(a1, &v31 + *(v17 + 28) - v18, type metadata accessor for ServerLanguageModel);
  sub_2388D1048();
  v21 = sub_2388D1038();
  v23 = v22;
  (*(v8 + 8))(v11, v7);
  *v19 = v21;
  v19[1] = v23;
  v33 = v20;
  v24 = v32;
  sub_2388A73E8(v32, &v34);

  v25 = v34;
  v26 = *(v4 + 48);
  v27 = *(v4 + 52);
  v28 = swift_allocObject();
  sub_238857D9C(v19, v16, type metadata accessor for ServerModelInferenceSession);
  v29 = sub_2388550CC(v16, v24, v25, v28);
  sub_2388594C4(a1, type metadata accessor for ServerLanguageModel);
  sub_2388594C4(v19, type metadata accessor for ServerModelInferenceSession);
  return v29;
}

uint64_t LanguageModelSession.__allocating_init(model:tools:instructions:)(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = v3;
  v35 = a1;
  v36 = sub_2388D1058();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServerModelInferenceSession(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v37 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (&v35 - v17);
  v19 = type metadata accessor for ServerLanguageModel(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a3;
  sub_238857D9C(a1, v22, type metadata accessor for ServerLanguageModel);
  v39 = v23;
  sub_238843000(&v39, a2, &v40);

  v24 = v40;
  sub_238857D9C(v22, v18 + *(v13 + 28), type metadata accessor for ServerLanguageModel);
  sub_2388D1048();
  v25 = sub_2388D1038();
  v27 = v26;
  (*(v8 + 8))(v11, v36);
  *v18 = v25;
  v18[1] = v27;
  v38 = v24;
  sub_2388A73E8(a2, &v39);

  v28 = v39;
  v29 = *(v4 + 48);
  v30 = *(v4 + 52);
  v31 = swift_allocObject();
  v32 = v37;
  sub_238857D9C(v18, v37, type metadata accessor for ServerModelInferenceSession);
  v33 = sub_2388550CC(v32, a2, v28, v31);
  sub_2388594C4(v35, type metadata accessor for ServerLanguageModel);
  sub_2388594C4(v18, type metadata accessor for ServerModelInferenceSession);
  sub_2388594C4(v22, type metadata accessor for ServerLanguageModel);
  return v33;
}

uint64_t sub_238843000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for GenerationSchema(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v90 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Transcript.ToolDefinition(0);
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_2388D1058();
  v13 = *(v93 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Transcript.Entry(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  result = *a1;
  v22 = *(a2 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22 | result)
  {
    v83 = v20;
    v85 = (v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v86 = v19;
    v87 = a3;
    if (result)
    {
      v24 = result;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v25 = *(v24 + 16);
    v84 = v13;
    if (v25)
    {
      v80 = a2;
      v81 = v22;
      v82 = v12;
      *&v97 = MEMORY[0x277D84F90];

      sub_2388B81C4(0, v25, 0);
      v26 = v97;
      v95 = (v13 + 8);
      v79[1] = v24;
      v27 = (v24 + 48);
      do
      {
        v29 = *(v27 - 2);
        v28 = *(v27 - 1);
        if (*v27)
        {
          sub_2388595AC(*(v27 - 2), *(v27 - 1), 1);
          v30 = v29;
          v31 = v92;
          sub_2388D1048();
          v32 = sub_2388D1038();
          v34 = v33;
          sub_2388595BC(v29, v28, 1);
          (*v95)(v31, v93);
          v35 = v94 & 0x107 | 0x8000000000000000;
          v94 = v35;
        }

        else
        {
          sub_2388595AC(*(v27 - 2), *(v27 - 1), 0);

          v36 = v92;
          sub_2388D1048();
          v32 = sub_2388D1038();
          v34 = v37;
          sub_2388595BC(v29, v28, 0);
          (*v95)(v36, v93);
          v35 = v91 & 0x107;
          v91 = v35;
        }

        *&v97 = v26;
        v39 = *(v26 + 2);
        v38 = *(v26 + 3);
        v40 = v26;
        if (v39 >= v38 >> 1)
        {
          sub_2388B81C4((v38 > 1), v39 + 1, 1);
          v40 = v97;
        }

        *(v40 + 2) = v39 + 1;
        v41 = &v40[88 * v39];
        *(v41 + 4) = v32;
        *(v41 + 5) = v34;
        *(v41 + 6) = v29;
        *(v41 + 7) = v28;
        *(v41 + 10) = v35;
        v27 += 24;
        --v25;
        v26 = v40;
      }

      while (v25);

      v12 = v82;
      v22 = v81;
      a2 = v80;
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v42 = MEMORY[0x277D84F90];
    if (v22)
    {
      v43 = a2 + 32;
      v91 = MEMORY[0x277D84F90];
      do
      {
        sub_238815814(v43, &v97);
        v44 = v98;
        v45 = v99;
        sub_238815878(&v97, v98);
        if ((*(v45 + 64))(v44, v45))
        {
          sub_238826B08(&v97, v96);
          v46 = v91;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v46;
          v100 = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2388B8184(0, *(v46 + 16) + 1, 1);
            v48 = v100;
          }

          v50 = *(v48 + 16);
          v49 = *(v48 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_2388B8184((v49 > 1), v50 + 1, 1);
            v48 = v100;
          }

          *(v48 + 16) = v50 + 1;
          v91 = v48;
          sub_238826B08(v96, v48 + 40 * v50 + 32);
        }

        else
        {
          sub_2388158BC(&v97);
        }

        v43 += 40;
        --v22;
      }

      while (v22);
    }

    else
    {
      v91 = MEMORY[0x277D84F90];
    }

    v51 = *(v91 + 16);
    if (v51)
    {
      v82 = v26;
      *&v96[0] = v42;
      v52 = v91;
      sub_2388B8140(0, v51, 0);
      v53 = *&v96[0];
      v54 = v52 + 32;
      do
      {
        v94 = v53;
        v95 = v51;
        sub_238815814(v54, &v97);
        v55 = v98;
        v56 = v99;
        sub_238815878(&v97, v98);
        v57 = (*(v56 + 40))(v55, v56);
        v59 = v58;
        v61 = v98;
        v60 = v99;
        sub_238815878(&v97, v98);
        v62 = (*(v60 + 48))(v61, v60);
        v64 = v63;
        v65 = v12;
        v67 = v98;
        v66 = v99;
        sub_238815878(&v97, v98);
        v68 = v90;
        v69 = v67;
        v12 = v65;
        (*(v66 + 56))(v69, v66);
        *v65 = v57;
        v65[1] = v59;
        v65[2] = v62;
        v65[3] = v64;
        v53 = v94;
        GenerationSchema.jsonSchema()(v65 + *(v89 + 24));
        sub_2388594C4(v68, type metadata accessor for GenerationSchema);
        sub_2388158BC(&v97);
        *&v96[0] = v53;
        v71 = *(v53 + 16);
        v70 = *(v53 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_2388B8140(v70 > 1, v71 + 1, 1);
          v53 = *&v96[0];
        }

        *(v53 + 16) = v71 + 1;
        sub_2388595CC(v65, v53 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v71, type metadata accessor for Transcript.ToolDefinition);
        v54 += 40;
        v51 = v95 - 1;
      }

      while (v95 != 1);

      v26 = v82;
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
    }

    v72 = v92;
    sub_2388D1048();
    v73 = sub_2388D1038();
    v75 = v74;
    (*(v84 + 8))(v72, v93);
    v76 = v85;
    *v85 = v73;
    v76[1] = v75;
    v76[2] = v26;
    v76[3] = v53;
    swift_storeEnumTagMultiPayload();
    v23 = sub_2388B7500(0, 1, 1, MEMORY[0x277D84F90]);
    v78 = v23[2];
    v77 = v23[3];
    if (v78 >= v77 >> 1)
    {
      v23 = sub_2388B7500(v77 > 1, v78 + 1, 1, v23);
    }

    v23[2] = v78 + 1;
    result = sub_2388595CC(v76, v23 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v78, type metadata accessor for Transcript.Entry);
    a3 = v87;
  }

  *a3 = v23;
  return result;
}

Swift::Void __swiftcall LanguageModelSession.prewarm(promptPrefix:)(FoundationModels::Prompt_optional promptPrefix)
{
  v2 = v1;
  rawValue = promptPrefix.value.components._rawValue;
  v4 = sub_2388D1058();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Transcript.Entry(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *rawValue;
  swift_getKeyPath();
  v44 = v2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v18 = v2[2];
  if (v17)
  {
    v37 = v2;
    v38 = v13;
    v40 = v17;

    v34 = sub_238856398(&v40, sub_2388596CC, sub_2388596D0);
    v19 = type metadata accessor for Transcript.ResponseFormat(0);
    v20 = v4;
    v21 = *(*(v19 - 8) + 56);
    v36 = v12;
    v21(v11, 1, 1, v19);
    v22 = v39;
    sub_2388D1048();
    v33 = sub_2388D1038();
    v35 = v11;
    v24 = v23;
    (*(v5 + 8))(v22, v20);
    LOBYTE(v43[0]) = 1;
    LOBYTE(v42[0]) = 1;
    LOBYTE(v40) = 1;
    LOBYTE(v41[0]) = 1;
    v25 = *(type metadata accessor for Transcript.Prompt(0) + 28);
    v21(&v16[v25], 1, 1, v19);
    v26 = v34;
    *v16 = v33;
    *(v16 + 1) = v24;
    *(v16 + 3) = 0;
    *(v16 + 4) = 0;
    *(v16 + 2) = v26;
    v16[40] = -2;
    *(v16 + 41) = v40;
    *(v16 + 11) = *(&v40 + 3);
    *(v16 + 6) = 0;
    v16[56] = 1;
    *(v16 + 57) = v43[0];
    *(v16 + 15) = *(v43 + 3);
    *(v16 + 8) = 0;
    v16[72] = 1;
    LODWORD(v26) = v42[0];
    *(v16 + 19) = *(v42 + 3);
    *(v16 + 73) = v26;
    *(v16 + 10) = 0;
    v16[88] = 1;
    *(v16 + 89) = v41[0];
    *(v16 + 23) = *(v41 + 3);
    *(v16 + 12) = 0;
    v16[104] = 1;
    v16[105] = 0;
    sub_238856608(v35, &v16[v25]);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_2388B7500(0, v18[2] + 1, 1, v18);
    }

    v28 = v18[2];
    v27 = v18[3];
    v2 = v37;
    v29 = v38;
    if (v28 >= v27 >> 1)
    {
      v18 = sub_2388B7500(v27 > 1, v28 + 1, 1, v18);
    }

    v18[2] = v28 + 1;
    sub_2388595CC(v16, v18 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v28, type metadata accessor for Transcript.Entry);
  }

  else
  {
    v30 = v2[2];
  }

  v31 = v2[10];
  v32 = v2[11];
  sub_238815878(v2 + 7, v31);
  (*(v32 + 40))(v18, v31, v32);
}