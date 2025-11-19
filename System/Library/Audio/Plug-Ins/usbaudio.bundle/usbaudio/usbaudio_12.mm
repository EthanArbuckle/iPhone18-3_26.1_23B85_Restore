uint64_t sub_1000E1F40@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 9);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 9);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v20))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v21 = (v17 - v20 + v19);
      __DataStorage._length.getter();
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v22 = __DataStorage._bytes.getter();
    if (v22)
    {
      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v24))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = (v14 - v24 + v23);
      __DataStorage._length.getter();
      if (v21)
      {
LABEL_15:
        v25 = v21;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v70[0] = v12;
  LOWORD(v70[1]) = v13;
  BYTE2(v70[1]) = BYTE2(v13);
  BYTE3(v70[1]) = BYTE3(v13);
  BYTE4(v70[1]) = BYTE4(v13);
  BYTE5(v70[1]) = BYTE5(v13);
LABEL_17:
  v25 = v70;
LABEL_18:
  v26 = sub_10010C418(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_58;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 18);
  v28 = *(v26 + 19);
  v29 = *(v26 + 40);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v29);
    v31 = v30;
    v67 = v28;
    v68 = v32;
    v33 = sub_1001128D0(v10, v29);
    v35 = v33;
    v36 = v34;
    v37 = v34 >> 62;
    if ((v34 >> 62) <= 1)
    {
      if (!v37)
      {
        v70[0] = v33;
        LOWORD(v70[1]) = v34;
        BYTE2(v70[1]) = BYTE2(v34);
        BYTE3(v70[1]) = BYTE3(v34);
        BYTE4(v70[1]) = BYTE4(v34);
        BYTE5(v70[1]) = BYTE5(v34);
LABEL_34:
        v46 = v70;
        goto LABEL_35;
      }

      if (v33 <= v33 >> 32)
      {
        v43 = __DataStorage._bytes.getter();
        if (v43)
        {
          v44 = v43;
          v45 = __DataStorage._offset.getter();
          if (!__OFSUB__(v35, v45))
          {
            v42 = (v35 - v45 + v44);
            __DataStorage._length.getter();
            if (v42)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v37 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_34;
    }

    v65 = v27;
    v38 = *(v33 + 16);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = v39;
      v41 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v41))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v42 = (v38 - v41 + v40);
      __DataStorage._length.getter();
      v27 = v65;
      if (v42)
      {
LABEL_32:
        v46 = v42;
LABEL_35:
        v47 = sub_10010AC70(v46, v29);
        sub_10007676C(v35, v36);
        if (v31)
        {
          sub_1000D5D10(v31, v68, 2);
          v49 = sub_1001128D0(v31, 2);
          v51 = v49;
          v52 = v50;
          v53 = v50 >> 62;
          if ((v50 >> 62) <= 1)
          {
            if (!v53)
            {
              v70[0] = v49;
              LOWORD(v70[1]) = v50;
              BYTE2(v70[1]) = BYTE2(v50);
              BYTE3(v70[1]) = BYTE3(v50);
              BYTE4(v70[1]) = BYTE4(v50);
              BYTE5(v70[1]) = BYTE5(v50);
LABEL_54:
              v62 = v70;
LABEL_55:
              v63 = sub_10010A954(v62, 1);
              sub_10007676C(v51, v52);
              if (*(v63 + 2))
              {
                v69 = vmovl_u8(v4).u64[0];
                v64 = v63[16];

                *a3 = vuzp1_s8(v69, v69).u32[0];
                *(a3 + 4) = v27;
                *(a3 + 6) = v67;
                *(a3 + 8) = v29;
                *(a3 + 16) = v47;
                *(a3 + 24) = v64;
                return result;
              }

              goto LABEL_64;
            }

            if (v49 > v49 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v59 = __DataStorage._bytes.getter();
            if (v59)
            {
              v60 = v59;
              v61 = __DataStorage._offset.getter();
              if (__OFSUB__(v51, v61))
              {
                goto LABEL_67;
              }

              v58 = (v51 - v61 + v60);
              result = __DataStorage._length.getter();
              if (v58)
              {
LABEL_52:
                v62 = v58;
                goto LABEL_55;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v53 != 2)
          {
            memset(v70, 0, 14);
            goto LABEL_54;
          }

          v66 = v27;
          v54 = *(v49 + 16);
          v55 = __DataStorage._bytes.getter();
          if (v55)
          {
            v56 = v55;
            v57 = __DataStorage._offset.getter();
            if (__OFSUB__(v54, v57))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v58 = (v54 - v57 + v56);
            __DataStorage._length.getter();
            v27 = v66;
            if (v58)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v48 = 57;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000E253C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_10006F564(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) == 0 || (sub_10006D41C(*(a1 + 5) | (*(a1 + 9) << 32), *(a2 + 5) | (*(a2 + 9) << 32)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(*(a1 + 2), *(a1 + 12), *(a2 + 2), *(a2 + 12)) || (sub_1000E48EC(*(a1 + 4), *(a2 + 4)) & 1) == 0 || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v4 = *(a1 + 6);
  v5 = *(a2 + 6);

  return sub_1000EFF58(v4, v5);
}

uint64_t sub_1000E2600(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a1);
  v3 = HIBYTE(a2);
  if (HIBYTE(a1) > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return sub_10006C078(a1 & 0xFFFFFFFFFFFFFFLL, a2 & 0xFFFFFFFFFFFFFFLL);
      }
    }

    else if (v3 == 3)
    {
      return sub_10006C04C(a1 & 0xFFFFFFFFFFLL, a2 & 0xFFFFFFFFFFLL);
    }
  }

  else if (v2)
  {
    if (v3 == 1)
    {
      return sub_10006C034(a1 & 0xFFFFFFFFFFFFLL, a2 & 0xFFFFFFFFFFFFLL);
    }
  }

  else if (!v3)
  {
    return sub_10006F760(a1 & 0xFFFFFF, a2 & 0xFFFFFF);
  }

  return 0;
}

uint64_t sub_1000E2670(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    result = sub_1000D5D10(*a1, a1[1], 3);
    if (v1)
    {
      return result;
    }

    v5 = sub_1001128D0(v2, 3);
    v7 = v5;
    v8 = v6;
    v9 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v9 != 2)
      {
        memset(v26, 0, 14);
        v10 = v26;
        goto LABEL_20;
      }

      v13 = *(v5 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v9)
      {
        v26[0] = v5;
        LOWORD(v26[1]) = v6;
        BYTE2(v26[1]) = BYTE2(v6);
        BYTE3(v26[1]) = BYTE3(v6);
        BYTE4(v26[1]) = BYTE4(v6);
        BYTE5(v26[1]) = BYTE5(v6);
        v10 = v26;
LABEL_20:
        v21 = sub_10010BA44(v10, 1);
        sub_10007676C(v7, v8);
        if (v21[2])
        {
          v22 = *(v21 + 34);

          if (v22 > 33)
          {
            if (v22 == 34)
            {
              v23 = sub_1000D6F24(a1) & 0xFFFFFFFFFFLL;
              v24 = 0x300000000000000;
              return v24 | v23;
            }

            if (v22 == 255)
            {
              v25 = sub_1000D7194(a1);
              v24 = 0;
              v23 = v25 & 0xFFFFFF;
              return v24 | v23;
            }
          }

          else
          {
            if (v22 == 32)
            {
              v23 = sub_1000D745C(a1, sub_10010B940) & 0xFFFFFFFFFFFFLL;
              v24 = 0x100000000000000;
              return v24 | v23;
            }

            if (v22 == 33)
            {
              v23 = sub_1000D6CB4(a1) & 0xFFFFFFFFFFFFFFLL;
              v24 = 0x200000000000000;
              return v24 | v23;
            }
          }

          sub_10000CA2C();
          swift_allocError();
          v12 = 41;
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_33;
      }

      if (v5 > v5 >> 32)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v20))
        {
          goto LABEL_35;
        }

        v17 = (v7 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_18:
          v10 = v17;
          goto LABEL_20;
        }

LABEL_39:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_39;
  }

  sub_10000CA2C();
  swift_allocError();
  v12 = 57;
LABEL_7:
  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000E2994@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v46[0] = v7;
      LOWORD(v46[1]) = v8;
      BYTE2(v46[1]) = BYTE2(v8);
      BYTE3(v46[1]) = BYTE3(v8);
      BYTE4(v46[1]) = BYTE4(v8);
      BYTE5(v46[1]) = BYTE5(v8);
      v12 = v46 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v44 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v46, 0, 14);
    v12 = v46;
LABEL_26:
    sub_1000DD574(v46, v12, &v47);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v44 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000DD574(v15, v25, &v47);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v44;
LABEL_27:
  v27.i32[0] = v47;
  v42 = vmovl_u8(v27).u64[0];
  v43 = BYTE4(v47);
  v28 = v48;
  v29 = v49;
  v30 = v50;
  v40 = v52;
  v41 = v51;
  v31 = *(v48 + 16);
  if (v31)
  {
    v37 = v50;
    v38 = v49;
    v39 = v4;
    v45 = v5;
    v47 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v47;
    v33 = v47[2];
    v34 = 32;
    do
    {
      v35 = *(v28 + v34);
      v47 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v47;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v29 = v38;
    v4 = v39;
    v5 = v45;
    v30 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v42, v42).u32[0];
  *(a3 + 4) = v43;
  *(a3 + 5) = v41;
  *(a3 + 9) = v40;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  *(a3 + 40) = v29;
  *(a3 + 48) = v30;
  return result;
}

uint64_t sub_1000E2DA8@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v45[0] = v7;
      LOWORD(v45[1]) = v8;
      BYTE2(v45[1]) = BYTE2(v8);
      BYTE3(v45[1]) = BYTE3(v8);
      BYTE4(v45[1]) = BYTE4(v8);
      BYTE5(v45[1]) = BYTE5(v8);
      v12 = v45 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v43 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v45, 0, 14);
    v12 = v45;
LABEL_26:
    sub_1000DF940(v45, v12, &v46);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v43 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000DF940(v15, v25, &v46);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v43;
LABEL_27:
  v27.i32[0] = v46;
  v40 = vmovl_u8(v27).u64[0];
  v41 = BYTE6(v46);
  v42 = WORD2(v46);
  v28 = v47;
  v29 = v48;
  v30 = v49;
  v31 = *(v47 + 16);
  if (v31)
  {
    v37 = v49;
    v38 = v48;
    v39 = v4;
    v44 = v5;
    v46 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v46;
    v33 = v46[2];
    v34 = 32;
    do
    {
      v35 = *(v28 + v34);
      v46 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v46;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v29 = v38;
    v4 = v39;
    v5 = v44;
    v30 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v42;
  *(a3 + 6) = v41;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 24) = v32;
  *(a3 + 32) = v29;
  *(a3 + 40) = v30;
  return result;
}

uint64_t sub_1000E3138@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v46[0] = v7;
      LOWORD(v46[1]) = v8;
      BYTE2(v46[1]) = BYTE2(v8);
      BYTE3(v46[1]) = BYTE3(v8);
      BYTE4(v46[1]) = BYTE4(v8);
      BYTE5(v46[1]) = BYTE5(v8);
      v12 = v46 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v44 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v46, 0, 14);
    v12 = v46;
LABEL_26:
    sub_1000E03F0(v46, v12, &v47);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v44 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000E03F0(v15, v25, &v47);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v44;
LABEL_27:
  v27.i32[0] = v47;
  v40 = vmovl_u8(v27).u64[0];
  v28 = WORD2(v47);
  v29 = BYTE6(v47);
  v30 = v48;
  v42 = v50;
  v43 = v49;
  v41 = v51;
  v31 = *(v48 + 16);
  if (v31)
  {
    v37 = BYTE6(v47);
    v38 = WORD2(v47);
    v45 = v5;
    v39 = v4;
    v47 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v47;
    v33 = v47[2];
    v34 = 32;
    do
    {
      v35 = *(v30 + v34);
      v47 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v47;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v28 = v38;
    v4 = v39;
    v5 = v45;
    v29 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v28;
  *(a3 + 6) = v29;
  *(a3 + 7) = v43;
  *(a3 + 9) = v42;
  *(a3 + 13) = v41;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  return result;
}

uint64_t sub_1000E354C@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t (*a4)(void *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  LOWORD(v8) = a2;
  v9 = a1;
  v11 = sub_1000A60F8(a1, a2);
  if (v12 >> 60 == 15)
  {
LABEL_38:
    __break(1u);
  }

  v13 = v11;
  v14 = v12;
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v46, 0, 14);
      v16 = v46;
LABEL_25:
      sub_1000E1134(v46, v16, a3, a4, &v47);
      result = sub_100076B24(v13, v14);
      if (v5)
      {
        return result;
      }

      goto LABEL_26;
    }

    v40 = a4;
    v44 = v9;
    v42 = v8;
    v17 = *(v11 + 16);
    v18 = *(v11 + 24);
    a4 = (v12 & 0x3FFFFFFFFFFFFFFFLL);
    v8 = __DataStorage._bytes.getter();
    if (v8)
    {
      a4 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
      v19 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v19))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 += v17 - v19;
    }

    v20 = __OFSUB__(v18, v17);
    v9 = v18 - v17;
    if (!v20)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v46[0] = v11;
    LOWORD(v46[1]) = v12;
    BYTE2(v46[1]) = BYTE2(v12);
    BYTE3(v46[1]) = BYTE3(v12);
    BYTE4(v46[1]) = BYTE4(v12);
    BYTE5(v46[1]) = BYTE5(v12);
    v16 = v46 + BYTE6(v12);
    goto LABEL_25;
  }

  v44 = v9;
  v9 = (v13 >> 32) - v13;
  if (v13 >> 32 < v13)
  {
    __break(1u);
    goto LABEL_36;
  }

  v40 = a4;
  v42 = v8;
  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v21 = __DataStorage._offset.getter();
    if (!__OFSUB__(v13, v21))
    {
      v8 += v13 - v21;
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_16:
  v22 = __DataStorage._length.getter();
  if (v22 >= v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = v22;
  }

  v24 = &v8[v23];
  if (v8)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000E1134(v8, v25, a3, v40, &v47);
  result = sub_100076B24(v13, v14);
  if (v5)
  {
    return result;
  }

  LOWORD(v8) = v42;
  v9 = v44;
LABEL_26:
  v27.i32[0] = v47;
  v39 = vmovl_u8(v27).u64[0];
  v28 = BYTE4(v47);
  v29 = v48;
  v30 = v49;
  v41 = v50;
  v31 = *(v48 + 16);
  if (v31)
  {
    v37 = v49;
    v38 = BYTE4(v47);
    v45 = v9;
    v43 = v8;
    v47 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v47;
    v33 = v47[2];
    v34 = 32;
    do
    {
      v35 = *(v29 + v34);
      v47 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v47;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    LOWORD(v8) = v43;
    v9 = v45;
    v30 = v37;
    v28 = v38;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a5 = vuzp1_s8(v39, v39).u32[0];
  *(a5 + 4) = v28;
  *(a5 + 5) = v30;
  *(a5 + 9) = v41;
  *(a5 + 16) = v9;
  *(a5 + 24) = v8;
  *(a5 + 32) = v32;
  return result;
}

uint64_t sub_1000E3908@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v45[0] = v7;
      LOWORD(v45[1]) = v8;
      BYTE2(v45[1]) = BYTE2(v8);
      BYTE3(v45[1]) = BYTE3(v8);
      BYTE4(v45[1]) = BYTE4(v8);
      BYTE5(v45[1]) = BYTE5(v8);
      v12 = v45 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v43 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v45, 0, 14);
    v12 = v45;
LABEL_26:
    sub_1000E1F40(v45, v12, &v46);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v43 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000E1F40(v15, v25, &v46);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v43;
LABEL_27:
  v27.i32[0] = v46;
  v40 = vmovl_u8(v27).u64[0];
  v28 = WORD2(v46);
  v41 = v47;
  v42 = HIWORD(v46);
  v29 = v48;
  v30 = v49;
  v31 = *(v48 + 16);
  if (v31)
  {
    v37 = WORD2(v46);
    v38 = v49;
    v44 = v5;
    v39 = v4;
    v46 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v46;
    v33 = v46[2];
    v34 = 32;
    do
    {
      v35 = *(v29 + v34);
      v46 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v46;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v30 = v38;
    v4 = v39;
    v5 = v44;
    v28 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v28;
  *(a3 + 6) = v42;
  *(a3 + 8) = v41;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  *(a3 + 40) = v30;
  return result;
}

__n128 sub_1000E3C60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000E3C7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E3CC4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 sub_1000E3D38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000E3D60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1000E3DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E3E00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000E3E48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ADC3ClusterDescriptorSegment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 8))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 7);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ADC3ClusterDescriptorSegment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000E3F70()
{
  result = qword_1001785D8;
  if (!qword_1001785D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785D8);
  }

  return result;
}

unint64_t sub_1000E3FC8()
{
  result = qword_1001785E0;
  if (!qword_1001785E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785E0);
  }

  return result;
}

unint64_t sub_1000E401C(uint64_t a1)
{
  result = sub_1000E4044();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E4044()
{
  result = qword_1001785E8;
  if (!qword_1001785E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785E8);
  }

  return result;
}

unint64_t sub_1000E409C()
{
  result = qword_1001785F0;
  if (!qword_1001785F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785F0);
  }

  return result;
}

unint64_t sub_1000E40F0(uint64_t a1)
{
  result = sub_1000E4118();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E4118()
{
  result = qword_1001785F8;
  if (!qword_1001785F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001785F8);
  }

  return result;
}

unint64_t sub_1000E4170()
{
  result = qword_100178600;
  if (!qword_100178600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178600);
  }

  return result;
}

unint64_t sub_1000E41C4(uint64_t a1)
{
  result = sub_1000E41EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E41EC()
{
  result = qword_100178608;
  if (!qword_100178608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178608);
  }

  return result;
}

unint64_t sub_1000E4244()
{
  result = qword_100178610;
  if (!qword_100178610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178610);
  }

  return result;
}

unint64_t sub_1000E4298(uint64_t a1)
{
  result = sub_1000E42C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E42C0()
{
  result = qword_100178618;
  if (!qword_100178618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178618);
  }

  return result;
}

unint64_t sub_1000E4318()
{
  result = qword_100178620;
  if (!qword_100178620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178620);
  }

  return result;
}

unint64_t sub_1000E436C(uint64_t a1)
{
  result = sub_1000E4394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E4394()
{
  result = qword_100178628;
  if (!qword_100178628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178628);
  }

  return result;
}

unint64_t sub_1000E43EC()
{
  result = qword_100178630;
  if (!qword_100178630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178630);
  }

  return result;
}

unint64_t sub_1000E4440(uint64_t a1)
{
  result = sub_1000E4468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E4468()
{
  result = qword_100178638;
  if (!qword_100178638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178638);
  }

  return result;
}

unint64_t sub_1000E44C0()
{
  result = qword_100178640;
  if (!qword_100178640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178640);
  }

  return result;
}

unint64_t sub_1000E4514(uint64_t a1)
{
  result = sub_1000E453C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E453C()
{
  result = qword_100178648;
  if (!qword_100178648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178648);
  }

  return result;
}

void *sub_1000E45A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1001193F0(*(a1 + 16), 0);
  v4 = sub_10011B610(&v6, v3 + 32, v2, a1);
  sub_100022644();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

BOOL sub_1000E4630(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = sub_1000A8314(*v3 | (*(v3 + 2) << 16), *v4 | (*(v4 + 2) << 16));
        if (!v5)
        {
          break;
        }

        v3 = (v3 + 3);
        v4 = (v4 + 3);
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1000E46CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (result + 48);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v8 = *v3;
    v3 += 3;
    v7 = v8;
    result = *(v4 - 2) == v5 && *(v4 - 1) == v6 && *v4 == v7;
    v11 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E4744(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  v3 = a1 + 8;
  v4 = a2 + 8;
  do
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 2);
    v7 = *(v4 - 2);
    v8 = *(v4 - 2);
    if (v6)
    {
      if (!v8)
      {
        return 0;
      }

      if (*(v3 - 3) == *(v4 - 3) && v6 == v8)
      {
        if (v5 != v7)
        {
          return 0;
        }
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v10 & 1) == 0 || v5 != v7)
        {
          return result;
        }
      }
    }

    else
    {
      if (v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v5 == v7;
      }

      if (!v12)
      {
        return 0;
      }
    }

    if (!--v2)
    {
      return 1;
    }

    result = 0;
    v14 = *v3;
    v3 += 4;
    v13 = v14;
    v15 = *v4;
    v4 += 4;
  }

  while (v13 == v15);
  return result;
}

uint64_t sub_1000E4834(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E4890(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E48EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E4948(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E49A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v45 = result + 32;
  v4 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      return result;
    }

    v5 = v45 + 80 * v3;
    v6 = v4 + 80 * v3;
    if (*v5 != *v6)
    {
      return 0;
    }

    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = *(v5 + 25);
    v11 = *(v5 + 32);
    v12 = *(v5 + 40);
    v13 = *(v5 + 48);
    v14 = *(v5 + 49);
    v15 = *(v5 + 56);
    v16 = *(v5 + 64);
    v17 = *(v5 + 72);
    v19 = *(v6 + 8);
    v18 = *(v6 + 16);
    v20 = *(v6 + 24);
    v21 = *(v6 + 25);
    v22 = *(v6 + 32);
    v23 = *(v6 + 40);
    v24 = *(v6 + 48);
    v25 = *(v6 + 49);
    v26 = *(v6 + 56);
    v27 = *(v6 + 64);
    v28 = *(v6 + 72);
    if (v8)
    {
      result = 0;
      if (!v19 || v8 != v19)
      {
        return result;
      }
    }

    else if (v19)
    {
      return 0;
    }

    if (v7)
    {
      result = 0;
      if (!v18 || v7 != v18)
      {
        return result;
      }
    }

    else if (v18)
    {
      return 0;
    }

    if (v10)
    {
      if ((v21 & (v11 ^ v22 ^ 1)) != 1 || v12 != v23)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v21)
      {
        return result;
      }

      v30 = v11 ^ v22;
      v31 = v9 == v20 && v30 == 0;
      if (!v31 || v12 != v23)
      {
        return result;
      }
    }

    if (v14)
    {
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (v13 == v24)
      {
        v33 = v25;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    if (!v15)
    {
      if (v26)
      {
        return 0;
      }

      goto LABEL_49;
    }

    if (!v26)
    {
      return 0;
    }

    v34 = *(v15 + 16);
    if (v34 != *(v26 + 16))
    {
      return 0;
    }

    if (v34 && v15 != v26)
    {
      break;
    }

LABEL_49:
    if (v16)
    {
      if (!v27)
      {
        return 0;
      }

      v37 = *(v16 + 16);
      if (v37 != *(v27 + 16))
      {
        return 0;
      }

      if (v37 && v16 != v27)
      {
        v38 = (v16 + 48);
        v39 = (v27 + 48);
        do
        {
          v40 = *(v38 - 2) == *(v39 - 2) && *(v38 - 1) == *(v39 - 1);
          if (!v40 || *v38 != *v39)
          {
            return 0;
          }

          v38 += 3;
          v39 += 3;
        }

        while (--v37);
      }
    }

    else if (v27)
    {
      return 0;
    }

    if (v17)
    {
      if (!v28)
      {
        return 0;
      }

      v42 = *(v17 + 16);
      if (v42 != *(v28 + 16))
      {
        return 0;
      }

      if (v42 && v17 != v28)
      {
        v43 = (v17 + 32);
        v44 = (v28 + 32);
        while (*v43 == *v44)
        {
          ++v43;
          ++v44;
          if (!--v42)
          {
            goto LABEL_76;
          }
        }

        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }

LABEL_76:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v35 = (v15 + 32);
  v36 = (v26 + 32);
  while (sub_1000A8314(*v35 | (*(v35 + 2) << 16), *v36 | (*(v36 + 2) << 16)))
  {
    v35 = (v35 + 3);
    v36 = (v36 + 3);
    if (!--v34)
    {
      goto LABEL_49;
    }
  }

  return 0;
}

uint64_t sub_1000E4C6C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
LABEL_146:
      __break(1u);
      return result;
    }

    v6 = v4 + 80 * v3;
    v7 = v5 + 80 * v3;
    result = *(v7 + 24);
    if (*v6 != *v7 || *(v6 + 8) != *(v7 + 8) || *(v6 + 16) != *(v7 + 16) || *(v6 + 24) != result || *(v6 + 32) != *(v7 + 32))
    {
      return 0;
    }

    v12 = *(v6 + 40);
    v14 = *(v6 + 56);
    v13 = *(v6 + 64);
    v15 = *(v7 + 40);
    v16 = *(v7 + 49);
    v18 = *(v7 + 56);
    v17 = *(v7 + 64);
    v19 = *(v7 + 72);
    v82 = v19;
    v83 = *(v6 + 72);
    if (*(v6 + 49) > 1u)
    {
      if (*(v6 + 49) == 2)
      {
        result = 0;
        if (v16 != 2)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v16 != 3)
        {
          return result;
        }
      }

      if (*(v6 + 40) != v15)
      {
        return result;
      }
    }

    else if (*(v6 + 49))
    {
      if (v16 != 1)
      {
        return 0;
      }

      v20 = *(v6 + 48);
      v21 = *(v7 + 48);
      v22 = v12;
      v23 = (v15 ^ v12) >> 32;
      v24 = v22 == v15 && v23 == 0;
      if (!v24 || v20 != v21)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (*(v7 + 49) || *(v6 + 40) != v15 || WORD1(v12) != WORD1(v15) || BYTE4(*(v6 + 40)) != BYTE4(v15))
      {
        return result;
      }
    }

    v26 = *(v14 + 16);
    if (v26 != *(v18 + 16))
    {
      return 0;
    }

    if (v26)
    {
      v27 = v14 == v18;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      v31 = 0;
      v77 = v18 + 32;
      v78 = v14 + 32;
      v75 = v17;
      v76 = v13;
      while (v31 != v26)
      {
        v32 = v78 + 80 * v31;
        v33 = v77 + 80 * v31;
        if (*v32 != *v33)
        {
          return 0;
        }

        v35 = *(v32 + 8);
        v34 = *(v32 + 16);
        v36 = *(v32 + 24);
        v37 = *(v32 + 25);
        v38 = *(v32 + 32);
        v39 = *(v32 + 40);
        v40 = *(v32 + 48);
        v41 = *(v32 + 49);
        v42 = *(v32 + 56);
        v81 = *(v32 + 64);
        v43 = *(v32 + 72);
        v45 = *(v33 + 8);
        v44 = *(v33 + 16);
        v46 = *(v33 + 24);
        v47 = *(v33 + 25);
        v48 = *(v33 + 32);
        v49 = *(v33 + 40);
        v50 = *(v33 + 48);
        v51 = *(v33 + 49);
        v52 = *(v33 + 56);
        v53 = *(v33 + 64);
        result = *(v33 + 72);
        v79 = result;
        v80 = v53;
        if (v35)
        {
          result = 0;
          if (!v45 || v35 != v45)
          {
            return result;
          }
        }

        else if (v45)
        {
          return 0;
        }

        if (v34)
        {
          result = 0;
          if (!v44 || v34 != v44)
          {
            return result;
          }
        }

        else if (v44)
        {
          return 0;
        }

        if (v37)
        {
          if ((v47 & (v38 ^ v48 ^ 1)) != 1 || v39 != v49)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v47)
          {
            return result;
          }

          v55 = v38 ^ v48;
          v56 = v36 == v46 && v55 == 0;
          if (!v56 || v39 != v49)
          {
            return result;
          }
        }

        if (v41)
        {
          if (!v51)
          {
            return 0;
          }
        }

        else
        {
          if (v40 == v50)
          {
            v58 = v51;
          }

          else
          {
            v58 = 1;
          }

          if (v58)
          {
            return 0;
          }
        }

        if (v42)
        {
          if (!v52)
          {
            return 0;
          }

          v59 = v5;
          v60 = *(v42 + 16);
          if (v60 != *(v52 + 16))
          {
            return 0;
          }

          v61 = v4;
          if (v60 && v42 != v52)
          {
            v62 = (v42 + 32);
            v63 = (v52 + 32);
            do
            {
              result = sub_1000A8314(*v62 | (*(v62 + 2) << 16), *v63 | (*(v63 + 2) << 16));
              if ((result & 1) == 0)
              {
                return 0;
              }

              v62 = (v62 + 3);
              v63 = (v63 + 3);
            }

            while (--v60);
          }
        }

        else
        {
          v59 = v5;
          v61 = v4;
          if (v52)
          {
            return 0;
          }
        }

        if (v81)
        {
          if (!v80)
          {
            return 0;
          }

          v64 = *(v81 + 16);
          if (v64 != *(v80 + 16))
          {
            return 0;
          }

          v4 = v61;
          v5 = v59;
          v17 = v75;
          v13 = v76;
          if (v64 && v81 != v80)
          {
            v65 = (v81 + 48);
            v66 = (v80 + 48);
            do
            {
              v67 = *(v65 - 2) == *(v66 - 2) && *(v65 - 1) == *(v66 - 1);
              if (!v67 || *v65 != *v66)
              {
                return 0;
              }

              v65 += 3;
              v66 += 3;
            }

            while (--v64);
          }
        }

        else
        {
          v4 = v61;
          v5 = v59;
          v17 = v75;
          v13 = v76;
          if (v80)
          {
            return 0;
          }
        }

        if (v43)
        {
          if (!v79)
          {
            return 0;
          }

          v69 = *(v43 + 16);
          if (v69 != *(v79 + 16))
          {
            return 0;
          }

          if (v69 && v43 != v79)
          {
            v70 = (v43 + 32);
            v71 = (v79 + 32);
            while (*v70 == *v71)
            {
              ++v70;
              ++v71;
              if (!--v69)
              {
                goto LABEL_127;
              }
            }

            return 0;
          }
        }

        else if (v79)
        {
          return 0;
        }

LABEL_127:
        if (++v31 == v26)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_146;
    }

LABEL_47:
    if (!v13)
    {
      if (v17)
      {
        return 0;
      }

      goto LABEL_130;
    }

    if (!v17)
    {
      return 0;
    }

    v28 = *(v13 + 16);
    if (v28 != *(v17 + 16))
    {
      return 0;
    }

    if (v28 && v13 != v17)
    {
      break;
    }

LABEL_130:
    if (v83)
    {
      if (!v82)
      {
        return 0;
      }

      v72 = *(v83 + 16);
      if (v72 != *(v82 + 16))
      {
        return 0;
      }

      if (v72 && v83 != v82)
      {
        v73 = (v83 + 32);
        v74 = (v82 + 32);
        while (*v73 == *v74)
        {
          ++v73;
          ++v74;
          if (!--v72)
          {
            goto LABEL_140;
          }
        }

        return 0;
      }
    }

    else if (v82)
    {
      return 0;
    }

LABEL_140:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v29 = (v13 + 32);
  v30 = (v17 + 32);
  while (sub_1000A8314(*v29 | (*(v29 + 2) << 16), *v30 | (*(v30 + 2) << 16)))
  {
    v29 = (v29 + 3);
    v30 = (v30 + 3);
    if (!--v28)
    {
      goto LABEL_130;
    }
  }

  return 0;
}

__n128 sub_1000E51AC@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v8 = a4 >> 8;
  v9 = (a2 << 16) | HIBYTE(a1) | (BYTE2(a2) << 32);
  v10 = BYTE3(a1);
  if (HIBYTE(a2))
  {
    v11 = HIBYTE(a2);
  }

  else
  {
    v11 = -65536;
  }

  v12 = WORD2(a1);
  v13 = BYTE6(a1);
  sub_100001AB4(&qword_100175F98, &qword_100121748);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10011DE90;
  *(v14 + 32) = v9;
  *(v14 + 40) = 0;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = 0;
  BYTE2(v21) = BYTE2(v11);
  LOWORD(v21) = v11;
  *(&v21 + 1) = v10;
  v22.n128_u64[0] = a3;
  v22.n128_u8[8] = v5;
  v22.n128_u8[9] = v8;
  *&v23[8] = xmmword_100122890;
  *&v23[24] = 0;
  v24 = 0;
  *v23 = v14;
  v25[0] = v12;
  v25[1] = v13;
  v26 = 0;
  v27 = 0;
  v29 = BYTE2(v11);
  v28 = v11;
  v30 = v10;
  v31 = a3;
  v32 = v5;
  v33 = v8;
  v35 = xmmword_100122890;
  v36 = 0;
  v37 = 0;
  v34 = v14;
  sub_1000767C0(&v19, &v18);
  sub_10007681C(v25);
  v15 = *&v23[16];
  *(a5 + 64) = *v23;
  *(a5 + 80) = v15;
  *(a5 + 96) = v24;
  v16 = v20;
  *a5 = v19;
  *(a5 + 16) = v16;
  result = v22;
  *(a5 + 32) = v21;
  *(a5 + 48) = result;
  return result;
}

double sub_1000E5310@<D0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, __int16 a4@<W3>, _OWORD *a5@<X8>)
{
  v11[96] = 0;
  *&v12 = WORD2(a1);
  *(&v12 + 1) = BYTE6(a1);
  LOBYTE(v13) = 0;
  v6 = a2;
  *(&v13 + 1) = 0;
  if (!a2)
  {
    v6 = -65536;
  }

  LOWORD(v14) = v6;
  BYTE2(v14) = BYTE2(v6);
  *(&v14 + 1) = HIBYTE(a1);
  LOBYTE(v15) = 0;
  *(&v15 + 1) = BYTE3(a1);
  *&v16 = 0;
  *(&v16 + 1) = a3;
  LOWORD(v17) = a4;
  *(&v17 + 1) = 0;
  v18[0] = WORD2(a1);
  v18[1] = BYTE6(a1);
  v19 = 0;
  v20 = 0;
  v21 = v6;
  v22 = BYTE2(v6);
  v23 = HIBYTE(a1);
  v24 = 0;
  v25 = BYTE3(a1);
  v26 = 0;
  v27 = a3;
  v28 = a4;
  v29 = 0;
  sub_1000766B0(&v12, v11);
  sub_100076AD0(v18);
  v7 = v15;
  a5[2] = v14;
  a5[3] = v7;
  v8 = v17;
  a5[4] = v16;
  a5[5] = v8;
  result = *&v12;
  v10 = v13;
  *a5 = v12;
  a5[1] = v10;
  return result;
}

double sub_1000E5400@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 5) | (*(v1 + 6) << 16) | (*(v1 + 8) << 32);
  v5 = *(v1 + 3);
  if (!*(v1 + 48))
  {
    v3 = -65536;
  }

  v6 = *(v1 + 32);
  v28 = *(v1 + 40);
  v29 = v6;
  *&v11[5] = *(v1 + 16);
  *&v11[13] = *(v1 + 24);
  v12 = 1;
  *&v13 = 0;
  BYTE8(v13) = 1;
  *v14 = v5;
  v14[10] = BYTE2(v3);
  *&v14[8] = v3;
  *&v14[18] = *&v11[7];
  *&v14[11] = *v11;
  *&v14[28] = v4;
  *&v14[36] = 0;
  *&v14[40] = v6;
  v15 = v28;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v19 = v5;
  v21 = BYTE2(v3);
  v20 = v3;
  *&v22[7] = *&v11[7];
  *v22 = *v11;
  *&v22[17] = v4;
  v23 = 0;
  v24 = v6;
  v25 = v28;
  v26 = 0;
  v27 = 0;
  sub_10000D0B8(&v29, v10, &qword_100176868, &unk_100122140);
  sub_10000D0B8(&v28, v10, &qword_100175CA8, &unk_100124860);
  sub_10002317C(&v13, v10);
  sub_100076A7C(&v17);
  v7 = *&v14[32];
  *(a1 + 32) = *&v14[16];
  *(a1 + 48) = v7;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  result = *&v13;
  v9 = *v14;
  *a1 = v13;
  *(a1 + 16) = v9;
  return result;
}

__n128 sub_1000E555C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v2 + 32);
  v5 = *(v2 + 3);
  v6 = *(v2 + 24);
  if (!*(v2 + 32))
  {
    v4 = -65536;
  }

  *&v10[13] = *(v2 + 16);
  *&v10[5] = *(v2 + 8);
  v11 = 1;
  *&v12 = 0;
  BYTE8(v12) = 1;
  *&v13[0] = v5;
  WORD4(v13[0]) = v4;
  *(&v13[1] + 2) = *&v10[7];
  *(v13 + 11) = *v10;
  BYTE10(v13[0]) = BYTE2(v4);
  v17 = 1;
  *&v14 = v6;
  *(&v14 + 1) = &off_10015A190;
  v15 = 0;
  v16 = 0;
  v18 = v5;
  v20 = BYTE2(v4);
  v19 = v4;
  *&v21[7] = *&v10[7];
  *v21 = *v10;
  *&v21[21] = v6;
  *&v21[29] = &off_10015A190;
  *&v21[37] = 0;
  sub_1000EED38(v2, v9);
  sub_1000267DC(&v12, v9);
  sub_100076980(&v16);
  v7 = v14;
  *(a1 + 32) = v13[1];
  *(a1 + 48) = v7;
  *(a1 + 64) = v15;
  result = v13[0];
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1000E5664@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100047060(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;
      v18[0] = v7;
      sub_1000EA318(v18, &v19);
      v8 = v19;
      v23 = v5;
      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_100047060((v9 > 1), v10 + 1, 1);
        v5 = v23;
      }

      v5[2] = v10 + 1;
      v5[v10 + 4] = v8;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v11 = *(v1 + 32);
  if (*(v1 + 40))
  {
    v12 = *(v1 + 40);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = *(v1 + 3);
  v14 = *(v1 + 4);
  *(v29 + 5) = *(v1 + 8);
  *(&v29[1] + 5) = *(v1 + 16);
  if (v12[2])
  {
  }

  else
  {

    v12 = 0;
  }

  v30 = 0;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = -65536;
  }

  *&v19 = v14;
  BYTE8(v19) = 0;
  *&v20[0] = v13;
  WORD4(v20[0]) = v15;
  *(v20 + 11) = v29[0];
  *(&v20[1] + 2) = *(v29 + 7);
  BYTE10(v20[0]) = BYTE2(v15);
  v21 = v5;
  v22 = v12;
  v23 = v14;
  v24 = 0;
  v25 = v13;
  v26 = v15;
  v27 = BYTE2(v15);
  *&v28[7] = *(v29 + 7);
  *v28 = v29[0];
  *&v28[21] = v5;
  *&v28[29] = 0;
  *&v28[37] = v12;
  sub_100076614(&v19, v18);
  sub_100091CF0(&v23);
  v16 = v21;
  *(a1 + 32) = v20[1];
  *(a1 + 48) = v16;
  *(a1 + 64) = v22;
  result = v20[0];
  *a1 = v19;
  *(a1 + 16) = result;
  return result;
}

void sub_1000E5854(_OWORD *a1@<X8>)
{
  v2 = v1;
  v68 = &_swiftEmptySetSingleton;
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  if (*(v1 + 6) != 1)
  {
    sub_10009B498(&v50, 19);
  }

  if (*(v1 + 11) != 1)
  {
    sub_10009B498(&v50, 21);
  }

  v44 = a1;
  v43 = v4;
  v72 = v1;
  if (v5 <= 3)
  {
    if (v5 != 1)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v6 = *(*(v1 + 56) + 16);
          if (v6 > 0xFF)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          if (v6)
          {
            sub_10009B498(&v50, 20);
          }

          sub_100001AB4(&qword_100178750, &qword_100126EB8);
          v7 = swift_allocObject();
          v8 = v7;
          *(v7 + 16) = xmmword_100121960;
          *(v7 + 32) = 1;
          *(v7 + 35) = 80;
          *(v7 + 33) = 385;
          v9 = 2;
          *(v7 + 36) = 2;
          v10 = 513;
          v11 = 112;
          goto LABEL_30;
        }

        goto LABEL_24;
      }

      v15 = *(*(v1 + 56) + 16);
      if (v15 > 0xFF)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v15 >= 4)
      {
        sub_10009B498(&v50, 20);
      }
    }

    sub_100001AB4(&qword_100178750, &qword_100126EB8);
    v7 = swift_allocObject();
    v8 = v7;
    *(v7 + 16) = xmmword_100121960;
    *(v7 + 32) = 1;
    *(v7 + 35) = 80;
    *(v7 + 33) = 385;
    v9 = 2;
    *(v7 + 36) = 2;
    v10 = 705;
    v11 = 96;
LABEL_30:
    *(v7 + 39) = v11;
    *(v7 + 37) = v10;
    goto LABEL_35;
  }

  switch(v5)
  {
    case 4:
      sub_10009B498(&v50, 23);
      v13 = *(*(v1 + 56) + 16);
      if (v13 > 0xFF)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v13)
      {
        sub_10009B498(&v50, 20);
      }

      sub_100001AB4(&qword_100178750, &qword_100126EB8);
      v8 = swift_allocObject();
      *(v8 + 1) = xmmword_100120CD0;
      *(v8 + 32) = 1;
      *(v8 + 35) = 80;
      *(v8 + 33) = 385;
      *(v8 + 36) = 2;
      *(v8 + 37) = 65;
      *(v8 + 39) = 42009712;
      *(v8 + 43) = 112;
      *(v8 + 44) = 8;
      *(v8 + 45) = 275841985;
      *(v8 + 51) = 0x80;
      v9 = 5;
      *(v8 + 49) = 1025;
      break;
    case 5:
      v16 = *(*(v1 + 56) + 16);
      if (v16 > 0xFF)
      {
LABEL_69:
        __break(1u);
        return;
      }

      if (v16)
      {
        sub_10009B498(&v50, 20);
      }

      sub_100001AB4(&qword_100178750, &qword_100126EB8);
      v8 = swift_allocObject();
      *(v8 + 1) = xmmword_100120A30;
      *(v8 + 32) = 1;
      *(v8 + 35) = 80;
      *(v8 + 33) = 385;
      *(v8 + 36) = 2;
      *(v8 + 39) = 112;
      *(v8 + 37) = 641;
      v9 = 4;
      *(v8 + 40) = 4;
      *(v8 + 41) = 769;
      *(v8 + 43) = 2193;
      *(v8 + 47) = -111;
      *(v8 + 45) = 1089;
      break;
    case 6:
      v12 = *(*(v1 + 56) + 16);
      if (v12 > 0xFF)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v12)
      {
        sub_10009B498(&v50, 20);
      }

      sub_100001AB4(&qword_100178750, &qword_100126EB8);
      v8 = swift_allocObject();
      *(v8 + 1) = xmmword_1001215B0;
      *(v8 + 32) = 1;
      *(v8 + 35) = 80;
      *(v8 + 33) = 385;
      *(v8 + 36) = 2;
      *(v8 + 39) = -111;
      *(v8 + 37) = 641;
      *(v8 + 40) = 4;
      *(v8 + 43) = -111;
      *(v8 + 41) = 961;
      *(v8 + 44) = 8;
      *(v8 + 47) = -95;
      *(v8 + 45) = 1025;
      *(v8 + 48) = 16;
      *(v8 + 51) = -95;
      *(v8 + 49) = 1345;
      *(v8 + 52) = 32;
      *(v8 + 55) = -95;
      v9 = 6;
      *(v8 + 53) = 1665;
      break;
    default:
LABEL_24:
      sub_10009B498(&v50, 18);
      v8 = _swiftEmptyArrayStorage;
      v9 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage;
      if (!v9)
      {
        goto LABEL_45;
      }

      break;
  }

LABEL_35:
  v17 = *(v2 + 40);
  if (!*(v17 + 16))
  {
    __break(1u);
    goto LABEL_65;
  }

  v18 = *(v17 + 32);
  v19 = (v8 + 33);
  v14 = _swiftEmptyArrayStorage;
  do
  {
    if ((*(v19 - 1) & v18) != 0)
    {
      v21 = *(v19 + 2);
      v22 = *v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100024518(0, *(v14 + 2) + 1, 1, v14);
      }

      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      if (v24 >= v23 >> 1)
      {
        v14 = sub_100024518((v23 > 1), v24 + 1, 1, v14);
      }

      *(v14 + 2) = v24 + 1;
      v20 = &v14[3 * v24];
      v20[34] = (v22 | (v21 << 16)) >> 16;
      *(v20 + 16) = v22;
    }

    v19 += 2;
    --v9;
  }

  while (v9);
  v2 = v72;
LABEL_45:

  v25 = *(v2 + 48);
  v71[0] = *(v2 + 32);
  v26 = *(v2 + 56);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v25;
    sub_10000D0B8(v71, &v50, &qword_100176868, &unk_100122140);
    v50 = _swiftEmptyArrayStorage;

    sub_100047080(0, v27, 0);
    v29 = v50;
    v30 = (v26 + 32);
    v31 = v50[2];
    do
    {
      v33 = *v30++;
      v32 = v33;
      v50 = v29;
      v34 = v29[3];
      if (v31 >= v34 >> 1)
      {
        sub_100047080((v34 > 1), v31 + 1, 1);
        v29 = v50;
      }

      v29[2] = v31 + 1;
      *(v29 + v31++ + 8) = v32;
      --v27;
    }

    while (v27);

    v25 = v28;
  }

  else
  {
    sub_10000D0B8(v71, &v50, &qword_100176868, &unk_100122140);
    v29 = _swiftEmptyArrayStorage;
  }

  v35 = v68;
  v36 = v68[2];
  if (!v36)
  {
    goto LABEL_55;
  }

  v37 = sub_1001193F0(v68[2], 0);
  v38 = sub_10011B610(&v50, v37 + 32, v36, v35);
  sub_100022644();
  if (v38 != v36)
  {
    __break(1u);
LABEL_55:

    v37 = _swiftEmptyArrayStorage;
  }

  v69 = *(v72 + 16);
  v70 = *(v72 + 24);
  v39 = v71[0];
  if (!*(v14 + 2))
  {

    v14 = 0;
  }

  if (!v37[2])
  {

    v37 = 0;
  }

  if (v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = -65536;
  }

  *(v65 + 5) = v69;
  *(&v65[1] + 5) = v70;
  v67 = 0;
  *&v46 = 0;
  BYTE8(v46) = 0;
  *(&v46 + 9) = *v66;
  HIDWORD(v46) = *&v66[3];
  *v47 = v43;
  *&v47[8] = v40;
  v47[10] = BYTE2(v40);
  *&v47[11] = v65[0];
  *&v47[18] = *(v65 + 7);
  *&v47[30] = v64;
  *&v47[26] = v63;
  *&v48 = v37;
  *(&v48 + 1) = v39;
  *&v49 = v14;
  *(&v49 + 1) = v29;
  v50 = 0;
  v51 = 0;
  *&v52[3] = *&v66[3];
  *v52 = *v66;
  v53 = v43;
  v55 = BYTE2(v40);
  v54 = v40;
  *&v56[7] = *(v65 + 7);
  *v56 = v65[0];
  v58 = v64;
  v57 = v63;
  v59 = v37;
  v60 = v39;
  v61 = v14;
  v62 = v29;
  sub_100076430(&v46, v45);
  sub_10007692C(&v50);
  v41 = v48;
  v44[2] = *&v47[16];
  v44[3] = v41;
  v44[4] = v49;
  v42 = *v47;
  *v44 = v46;
  v44[1] = v42;
}

double sub_1000E6064@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 3);
  v5 = *(v1 + 32);
  if (!*(v1 + 48))
  {
    v3 = -65536;
  }

  v25 = *(v1 + 32);
  *&v12[5] = *(v1 + 16);
  *&v12[13] = *(v1 + 24);
  v13 = 0;
  *&v14 = 0;
  BYTE8(v14) = 0;
  *v15 = v4;
  *&v15[8] = v3;
  v15[10] = BYTE2(v3);
  *&v15[18] = *&v12[7];
  *&v15[11] = *v12;
  *&v17 = 0;
  v16 = v5;
  BYTE8(v17) = 0;
  v18 = 0uLL;
  v19 = 0;
  v20 = 0;
  v21 = v4;
  v23 = BYTE2(v3);
  v22 = v3;
  *&v24[7] = *&v12[7];
  *v24 = *v12;
  memset(&v24[29], 0, 17);
  *&v24[21] = v5;
  *&v24[53] = 0;
  *&v24[61] = 0;
  sub_10000D0B8(&v25, v11, &qword_100176868, &unk_100122140);
  sub_10007651C(&v14, v11);
  sub_100076A28(&v19);
  v6 = v16;
  v7 = v17;
  v8 = *v15;
  a1[2] = *&v15[16];
  a1[3] = v6;
  v9 = v18;
  a1[4] = v7;
  a1[5] = v9;
  result = *&v14;
  *a1 = v14;
  a1[1] = v8;
  return result;
}

uint64_t static ADC1AssembledFormatTypeIDescriptor.assemble(_:)(_BYTE *a1, __int16 a2)
{
  v3 = sub_1000A60F8(a1, a2);
  if (v4 >> 60 == 15)
  {
LABEL_30:
    __break(1u);
  }

  v5 = v3;
  v6 = v4;
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v21, 0, 14);
      v9 = v21;
      v8 = v21;
      goto LABEL_24;
    }

    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
    v12 = __DataStorage._bytes.getter();
    if (v12)
    {
      v13 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v13))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v12 += v10 - v13;
    }

    v14 = __OFSUB__(v11, v10);
    v15 = v11 - v10;
    if (!v14)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v21[0] = v3;
    LOWORD(v21[1]) = v4;
    BYTE2(v21[1]) = BYTE2(v4);
    BYTE3(v21[1]) = BYTE3(v4);
    BYTE4(v21[1]) = BYTE4(v4);
    BYTE5(v21[1]) = BYTE5(v4);
    v8 = v21 + BYTE6(v4);
    v9 = v21;
    goto LABEL_24;
  }

  v15 = (v5 >> 32) - v5;
  if (v5 >> 32 < v5)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v16 = __DataStorage._offset.getter();
    if (!__OFSUB__(v5, v16))
    {
      v12 += v5 - v16;
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_16:
  v17 = __DataStorage._length.getter();
  if (v17 >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  v19 = (v18 + v12);
  if (v12)
  {
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  v9 = v12;
LABEL_24:
  sub_1000EC290(v9, v8, &v22);
  result = sub_100076B24(v5, v6);
  if (!v2)
  {
    return v22;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC1ACInterfaceHeaderDescriptor()
{
  v1 = sub_1000640B4(*v0);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000E6474()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = sub_1000640B4(v1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

Swift::Int ADC1InputTerminalDescriptor.hashValue.getter(uint64_t a1, int a2)
{
  Hasher.init(_seed:)();
  v4 = sub_1000676C8(a1, a2);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC1InputTerminalDescriptor()
{
  v1 = sub_1000676C8(*v0, *(v0 + 8));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000E6660()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = sub_1000676C8(v1, v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int ADC1OutputTerminalDescriptor.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  v4 = sub_10006616C(a1, a2);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC1OutputTerminalDescriptor()
{
  v1 = sub_10006616C(*v0, *(v0 + 8));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000E6864()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = sub_10006616C(v1, v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC1MixerUnitDescriptorPart2()
{
  v1 = sub_100066448(*v0);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000E6A4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = sub_100066448(v1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000E6B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 1) << 8));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000E6BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 1);
  Hasher.init(_seed:)();
  v8 = a4(v6 | (v7 << 8));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int ADC1FeatureUnitDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = sub_100068378(a1 & 0xFFFFFFFFFFFFLL);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC1FeatureUnitDescriptor()
{
  v1 = sub_100068378(*v0 | (*(v0 + 1) << 16));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000E6E18()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  Hasher.init(_seed:)();
  v3 = sub_100068378(v2 | (v1 << 16));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000E7018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 2) << 32) | (*(v4 + 6) << 48));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000E70F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 6);
  v8 = *v4;
  Hasher.init(_seed:)();
  v9 = a4(v8 | (v6 << 32) | (v7 << 48));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_10001EDEC(v11, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000E71F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000E72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 4) << 32));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000E739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 4);
  v7 = *v4;
  Hasher.init(_seed:)();
  v8 = a4(v7 | (v6 << 32));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000E7484(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC1ASInterfaceDescriptor()
{
  v1 = sub_100068664(*v0 | (*(v0 + 4) << 32) | (*(v0 + 5) << 40));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000E75F0()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *v0;
  Hasher.init(_seed:)();
  v4 = sub_100068664(v3 | (v1 << 32) | (v2 << 40));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000E7728(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000E77E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(*v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_1000E78A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  v7 = a4(v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_10001EDEC(v9, v11);
      AnyHashable.hash(into:)();
      sub_10001E070(v11);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000E7960(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC1ASFormatTypeDescriptorHeader()
{
  v1 = sub_100063AD4(*v0);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000E7AAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = sub_100063AD4(v1);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000E7B44@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 12);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 12);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v23, 0, 14);
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        v23[0] = v7;
        LOWORD(v23[1]) = v8;
        BYTE2(v23[1]) = BYTE2(v8);
        BYTE3(v23[1]) = BYTE3(v8);
        BYTE4(v23[1]) = BYTE4(v8);
        BYTE5(v23[1]) = BYTE5(v8);
LABEL_18:
        v21 = v23;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010C528(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23[0] = v22[4];
            LODWORD(v23[1]) = *(v22 + 10);

            *a3 = v23[0];
            *(a3 + 8) = v23[1];
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1000E7DA4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 9);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 9);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v23, 0, 14);
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        v23[0] = v7;
        LOWORD(v23[1]) = v8;
        BYTE2(v23[1]) = BYTE2(v8);
        BYTE3(v23[1]) = BYTE3(v8);
        BYTE4(v23[1]) = BYTE4(v8);
        BYTE5(v23[1]) = BYTE5(v8);
LABEL_18:
        v21 = v23;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010C624(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23[0] = v22[4];
            LOBYTE(v23[1]) = *(v22 + 40);

            *a3 = v23[0];
            *(a3 + 8) = v23[1];
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1000E8004@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_74;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 5);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v113, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
LABEL_113:
      __DataStorage._length.getter();
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_95;
    }

    v21 = (v17 - v20 + v19);
    __DataStorage._length.getter();
    if (!v21)
    {
      goto LABEL_114;
    }

LABEL_15:
    v25 = v21;
    goto LABEL_18;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v22 = __DataStorage._bytes.getter();
    if (!v22)
    {
LABEL_115:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_116;
    }

    v23 = v22;
    v24 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v24))
    {
      goto LABEL_96;
    }

    v21 = (v14 - v24 + v23);
    __DataStorage._length.getter();
    if (!v21)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    goto LABEL_15;
  }

  v113[0] = v12;
  LOWORD(v113[1]) = v13;
  BYTE2(v113[1]) = BYTE2(v13);
  BYTE3(v113[1]) = BYTE3(v13);
  BYTE4(v113[1]) = BYTE4(v13);
  BYTE5(v113[1]) = BYTE5(v13);
LABEL_17:
  v25 = v113;
LABEL_18:
  v26 = sub_10010C820(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_94;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 36);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v27);
    v29 = v28;
    v111 = v30;
    v31 = sub_1001128D0(v10, v27);
    v33 = v31;
    v34 = v32;
    v35 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v35 != 2)
      {
        memset(v113, 0, 14);
        goto LABEL_34;
      }

      v36 = *(v31 + 16);
      v37 = __DataStorage._bytes.getter();
      if (!v37)
      {
LABEL_117:
        __DataStorage._length.getter();
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (!__OFSUB__(v36, v39))
      {
        v40 = (v36 - v39 + v38);
        __DataStorage._length.getter();
        if (!v40)
        {
          goto LABEL_118;
        }

        goto LABEL_32;
      }

      goto LABEL_98;
    }

    if (!v35)
    {
      v113[0] = v31;
      LOWORD(v113[1]) = v32;
      BYTE2(v113[1]) = BYTE2(v32);
      BYTE3(v113[1]) = BYTE3(v32);
      BYTE4(v113[1]) = BYTE4(v32);
      BYTE5(v113[1]) = BYTE5(v32);
LABEL_34:
      v44 = v113;
LABEL_35:
      v45 = sub_10010AC70(v44, v27);
      sub_10007676C(v33, v34);
      if (!v29)
      {
        goto LABEL_73;
      }

      sub_1000D5D10(v29, v111, 4);
      v47 = v46;
      v109 = v48;
      v49 = sub_1001128D0(v29, 4);
      v51 = v49;
      v52 = v50;
      v53 = v50 >> 62;
      if ((v50 >> 62) > 1)
      {
        if (v53 != 2)
        {
          memset(v113, 0, 14);
          goto LABEL_50;
        }

        v106 = v45;
        v54 = *(v49 + 16);
        v55 = __DataStorage._bytes.getter();
        if (!v55)
        {
LABEL_121:
          __DataStorage._length.getter();
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v56 = v55;
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v57))
        {
          goto LABEL_104;
        }

        v58 = (v54 - v57 + v56);
        __DataStorage._length.getter();
        v45 = v106;
        if (!v58)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (!v53)
        {
          v113[0] = v49;
          LOWORD(v113[1]) = v50;
          BYTE2(v113[1]) = BYTE2(v50);
          BYTE3(v113[1]) = BYTE3(v50);
          BYTE4(v113[1]) = BYTE4(v50);
          BYTE5(v113[1]) = BYTE5(v50);
LABEL_50:
          v62 = v113;
LABEL_51:
          v63 = sub_10010C71C(v62, 1);
          sub_10007676C(v51, v52);
          if (v63[2])
          {
            v112 = vmovl_u8(v4).u64[0];
            v64 = *(v63 + 32);
            v65 = *(v63 + 33);
            v105 = *(v63 + 35);

            v66 = v112.u16[0] - 10;
            if ((v66 & 0xFFFFFF00) == 0)
            {
              if ((((v112.i8[0] - 10) - v27) & 0xFFFFFF00) == 0)
              {
                if (v47)
                {
                  sub_1000D5D10(v47, v109, (v66 - v27));
                  v68 = v67;
                  v110 = v65;
                  v103 = v64;
                  v104 = v69;
                  v70 = sub_1001128D0(v47, (v112.i8[0] - 10 - v27));
                  v72 = v70;
                  v73 = v71;
                  v74 = v71 >> 62;
                  if ((v71 >> 62) > 1)
                  {
                    if (v74 != 2)
                    {
                      memset(v113, 0, 14);
                      goto LABEL_69;
                    }

                    v102 = v68;
                    v107 = v45;
                    v75 = *(v70 + 16);
                    v76 = __DataStorage._bytes.getter();
                    if (!v76)
                    {
LABEL_125:
                      __DataStorage._length.getter();
LABEL_126:
                      __break(1u);
                      goto LABEL_127;
                    }

                    v77 = v76;
                    v78 = __DataStorage._offset.getter();
                    if (!__OFSUB__(v75, v78))
                    {
                      v79 = (v75 - v78 + v77);
                      __DataStorage._length.getter();
                      v45 = v107;
                      if (!v79)
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    if (!v74)
                    {
                      v113[0] = v70;
                      LOWORD(v113[1]) = v71;
                      BYTE2(v113[1]) = BYTE2(v71);
                      BYTE3(v113[1]) = BYTE3(v71);
                      BYTE4(v113[1]) = BYTE4(v71);
                      BYTE5(v113[1]) = BYTE5(v71);
LABEL_69:
                      v83 = sub_10010AC70(v113, (v112.i8[0] - 10 - v27));
                      sub_10007676C(v72, v73);
                      goto LABEL_70;
                    }

                    v102 = v68;
                    if (v70 <= v70 >> 32)
                    {
                      v80 = __DataStorage._bytes.getter();
                      if (!v80)
                      {
LABEL_127:
                        __DataStorage._length.getter();
                        __break(1u);
                        goto LABEL_128;
                      }

                      v81 = v80;
                      v82 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v72, v82))
                      {
                        v79 = (v72 - v82 + v81);
                        __DataStorage._length.getter();
                        if (!v79)
                        {
LABEL_128:
                          __break(1u);
                          goto LABEL_129;
                        }

LABEL_67:
                        v83 = sub_10010AC70(v79, (v112.i8[0] - 10 - v27));
                        sub_10007676C(v72, v73);
                        v68 = v102;
LABEL_70:
                        v84 = v110;
                        if (v68)
                        {
                          sub_1000D5D10(v68, v104, 1);
                          v86 = sub_1001128D0(v68, 1);
                          v88 = v86;
                          v89 = v87;
                          v90 = v87 >> 62;
                          if ((v87 >> 62) > 1)
                          {
                            if (v90 != 2)
                            {
                              memset(v113, 0, 14);
                              goto LABEL_90;
                            }

                            v108 = v45;
                            v91 = *(v86 + 16);
                            v92 = __DataStorage._bytes.getter();
                            if (!v92)
                            {
LABEL_129:
                              __DataStorage._length.getter();
LABEL_130:
                              __break(1u);
                              goto LABEL_131;
                            }

                            v93 = v92;
                            v94 = __DataStorage._offset.getter();
                            if (__OFSUB__(v91, v94))
                            {
                              goto LABEL_111;
                            }

                            v95 = (v91 - v94 + v93);
                            __DataStorage._length.getter();
                            v45 = v108;
                            if (!v95)
                            {
                              goto LABEL_130;
                            }
                          }

                          else
                          {
                            if (!v90)
                            {
                              v113[0] = v86;
                              LOWORD(v113[1]) = v87;
                              BYTE2(v113[1]) = BYTE2(v87);
                              BYTE3(v113[1]) = BYTE3(v87);
                              BYTE4(v113[1]) = BYTE4(v87);
                              BYTE5(v113[1]) = BYTE5(v87);
LABEL_90:
                              v99 = sub_10010AC70(v113, 1);
                              sub_10007676C(v88, v89);
LABEL_91:
                              if (*(v99 + 2))
                              {
                                v100 = v45;
                                v101 = v99[32];

                                *a3 = vuzp1_s8(v112, v112).u32[0];
                                *(a3 + 4) = v27;
                                *(a3 + 8) = v100;
                                *(a3 + 16) = v103;
                                *(a3 + 17) = v84;
                                *(a3 + 19) = v105;
                                *(a3 + 24) = v83;
                                *(a3 + 32) = v101;
                                return result;
                              }

                              goto LABEL_109;
                            }

                            if (v86 > v86 >> 32)
                            {
LABEL_110:
                              __break(1u);
LABEL_111:
                              __break(1u);
LABEL_112:
                              __break(1u);
                              goto LABEL_113;
                            }

                            v96 = __DataStorage._bytes.getter();
                            if (!v96)
                            {
LABEL_131:
                              result = __DataStorage._length.getter();
                              __break(1u);
                              goto LABEL_132;
                            }

                            v97 = v96;
                            v98 = __DataStorage._offset.getter();
                            if (__OFSUB__(v88, v98))
                            {
                              goto LABEL_112;
                            }

                            v95 = (v88 - v98 + v97);
                            result = __DataStorage._length.getter();
                            if (!v95)
                            {
LABEL_132:
                              __break(1u);
                              return result;
                            }
                          }

                          v99 = sub_10010AC70(v95, 1);
                          sub_10007676C(v88, v89);
                          v84 = v110;
                          goto LABEL_91;
                        }

                        goto LABEL_73;
                      }

LABEL_108:
                      __break(1u);
LABEL_109:
                      __break(1u);
                      goto LABEL_110;
                    }

                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_108;
                }

LABEL_73:

                goto LABEL_74;
              }

              goto LABEL_102;
            }

LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        if (v49 > v49 >> 32)
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v59 = __DataStorage._bytes.getter();
        if (!v59)
        {
LABEL_123:
          __DataStorage._length.getter();
          __break(1u);
          goto LABEL_124;
        }

        v60 = v59;
        v61 = __DataStorage._offset.getter();
        if (__OFSUB__(v51, v61))
        {
LABEL_105:
          __break(1u);
        }

        v58 = (v51 - v61 + v60);
        __DataStorage._length.getter();
        if (!v58)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }
      }

      v62 = v58;
      goto LABEL_51;
    }

    if (v31 <= v31 >> 32)
    {
      v41 = __DataStorage._bytes.getter();
      if (!v41)
      {
LABEL_119:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_120;
      }

      v42 = v41;
      v43 = __DataStorage._offset.getter();
      if (!__OFSUB__(v33, v43))
      {
        v40 = (v33 - v43 + v42);
        __DataStorage._length.getter();
        if (!v40)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

LABEL_32:
        v44 = v40;
        goto LABEL_35;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

LABEL_74:
  sub_10000CA2C();
  swift_allocError();
  *v85 = 57;
  *(v85 + 8) = 0;
  *(v85 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000E89F4(uint64_t a1)
{
  v3 = sub_100068F68(*v1 | (*(v1 + 1) << 8));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v17);
      AnyHashable.hash(into:)();
      sub_10001E070(v17);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_100066448(*(v1 + 5));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v17);
      AnyHashable.hash(into:)();
      sub_10001E070(v17);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v9 = *(v1 + 4);
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11++;
      Hasher._combine(_:)(v12);
      --v10;
    }

    while (v10);
  }

  v13 = *(v1 + 5);
  v14 = *(v13 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15++;
      Hasher._combine(_:)(v16);
      --v14;
    }

    while (v14);
  }

  Hasher._combine(_:)(v1[48]);
}

BOOL sub_1000E8B80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000EE920(v5, v7);
}

uint64_t sub_1000E8BDC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 5);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v65, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v20))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v21 = (v17 - v20 + v19);
      __DataStorage._length.getter();
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v22 = __DataStorage._bytes.getter();
    if (v22)
    {
      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v24))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = (v14 - v24 + v23);
      __DataStorage._length.getter();
      if (v21)
      {
LABEL_15:
        v25 = v21;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v65[0] = v12;
  LOWORD(v65[1]) = v13;
  BYTE2(v65[1]) = BYTE2(v13);
  BYTE3(v65[1]) = BYTE3(v13);
  BYTE4(v65[1]) = BYTE4(v13);
  BYTE5(v65[1]) = BYTE5(v13);
LABEL_17:
  v25 = v65;
LABEL_18:
  v26 = sub_10010C84C(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_58;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 36);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v27);
    v29 = v28;
    v63 = v30;
    v31 = sub_1001128D0(v10, v27);
    v33 = v31;
    v34 = v32;
    v35 = v32 >> 62;
    if ((v32 >> 62) <= 1)
    {
      if (!v35)
      {
        v65[0] = v31;
        LOWORD(v65[1]) = v32;
        BYTE2(v65[1]) = BYTE2(v32);
        BYTE3(v65[1]) = BYTE3(v32);
        BYTE4(v65[1]) = BYTE4(v32);
        BYTE5(v65[1]) = BYTE5(v32);
LABEL_34:
        v44 = v65;
        goto LABEL_35;
      }

      if (v31 <= v31 >> 32)
      {
        v41 = __DataStorage._bytes.getter();
        if (v41)
        {
          v42 = v41;
          v43 = __DataStorage._offset.getter();
          if (!__OFSUB__(v33, v43))
          {
            v40 = (v33 - v43 + v42);
            __DataStorage._length.getter();
            if (v40)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v35 != 2)
    {
      memset(v65, 0, 14);
      goto LABEL_34;
    }

    v36 = *(v31 + 16);
    v37 = __DataStorage._bytes.getter();
    if (v37)
    {
      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v39))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v40 = (v36 - v39 + v38);
      __DataStorage._length.getter();
      if (v40)
      {
LABEL_32:
        v44 = v40;
LABEL_35:
        v45 = sub_10010AC70(v44, v27);
        sub_10007676C(v33, v34);
        if (v29)
        {
          sub_1000D5D10(v29, v63, 1);
          v47 = sub_1001128D0(v29, 1);
          v49 = v47;
          v50 = v48;
          v51 = v48 >> 62;
          if ((v48 >> 62) <= 1)
          {
            if (!v51)
            {
              v65[0] = v47;
              LOWORD(v65[1]) = v48;
              BYTE2(v65[1]) = BYTE2(v48);
              BYTE3(v65[1]) = BYTE3(v48);
              BYTE4(v65[1]) = BYTE4(v48);
              BYTE5(v65[1]) = BYTE5(v48);
LABEL_54:
              v60 = v65;
LABEL_55:
              v61 = sub_10010AC70(v60, 1);
              sub_10007676C(v49, v50);
              if (*(v61 + 2))
              {
                v64 = vmovl_u8(v4).u64[0];
                v62 = v61[32];

                *a3 = vuzp1_s8(v64, v64).u32[0];
                *(a3 + 4) = v27;
                *(a3 + 8) = v45;
                *(a3 + 16) = v62;
                return result;
              }

              goto LABEL_64;
            }

            if (v47 > v47 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v57 = __DataStorage._bytes.getter();
            if (v57)
            {
              v58 = v57;
              v59 = __DataStorage._offset.getter();
              if (__OFSUB__(v49, v59))
              {
                goto LABEL_67;
              }

              v56 = (v49 - v59 + v58);
              result = __DataStorage._length.getter();
              if (v56)
              {
LABEL_52:
                v60 = v56;
                goto LABEL_55;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v51 != 2)
          {
            memset(v65, 0, 14);
            goto LABEL_54;
          }

          v52 = *(v47 + 16);
          v53 = __DataStorage._bytes.getter();
          if (v53)
          {
            v54 = v53;
            v55 = __DataStorage._offset.getter();
            if (__OFSUB__(v52, v55))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v56 = (v52 - v55 + v54);
            __DataStorage._length.getter();
            if (v56)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v46 = 57;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000E91A0(uint64_t a1)
{
  v3 = sub_100067FB8(*v1 | (*(v1 + 1) << 8));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 1), *(v1 + 8));
  v6 = *(v1 + 3);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(v1[32]);
}

Swift::Int sub_1000E927C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 1);
  Hasher.init(_seed:)();
  v4 = sub_100067FB8(v2 | (v3 << 8));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v7 = *(v1 + 3);
  USBDescriptor.hash(into:)(v13, *(v1 + 1), *(v1 + 8));
  v8 = *(v7 + 16);
  Hasher._combine(_:)(v8);
  if (v8)
  {
    v9 = (v7 + 32);
    do
    {
      v10 = *v9++;
      Hasher._combine(_:)(v10);
      --v8;
    }

    while (v8);
  }

  Hasher._combine(_:)(v1[32]);
  return Hasher._finalize()();
}

Swift::Int sub_1000E9370()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = v0[17];
  v6 = *(v0 + 3);
  v7 = v0[32];
  Hasher.init(_seed:)();
  v8 = sub_100067FB8(v1 | (v2 << 8));
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v15);
      AnyHashable.hash(into:)();
      sub_10001E070(v15);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  USBDescriptor.hash(into:)(v16, v3, v4 | (v5 << 8));
  Hasher._combine(_:)(*(v6 + 16));
  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = (v6 + 32);
    do
    {
      v13 = *v12++;
      Hasher._combine(_:)(v13);
      --v11;
    }

    while (v11);
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t sub_1000E9474(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = a1[16];
  v4 = a1[17];
  v5 = *(a1 + 3);
  v6 = a1[32];
  v7 = *(a2 + 1);
  v8 = a2[16];
  v9 = a2[17];
  v10 = *(a2 + 3);
  v11 = a2[32];
  if ((sub_10006E52C(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) != 0 && _s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v7, v8 | (v9 << 8)))
  {
    return sub_1000E48EC(v5, v10) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E9538@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_110;
  }

  result = sub_1000D5D10(a1, a2, 6);
  LOBYTE(v15) = v3;
  if (v3)
  {
    return result;
  }

  v16 = v13;
  v134 = v14;
  v128 = a3;
  v17 = sub_1001128D0(a1, 6);
  v19 = v17;
  v20 = v18;
  v21 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v21)
    {
      *__dst = v17;
      *&__dst[8] = v18;
      __dst[10] = BYTE2(v18);
      __dst[11] = BYTE3(v18);
      __dst[12] = BYTE4(v18);
      __dst[13] = BYTE5(v18);
LABEL_17:
      v29 = __dst;
      goto LABEL_18;
    }

    v133 = 0;
    if (v17 <= v17 >> 32)
    {
      v26 = __DataStorage._bytes.getter();
      if (v26)
      {
        v27 = v26;
        v28 = __DataStorage._offset.getter();
        if (!__OFSUB__(v19, v28))
        {
          v15 = v19 - v28 + v27;
          __DataStorage._length.getter();
          if (v15)
          {
            goto LABEL_15;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

LABEL_155:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_156;
    }

    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v21 != 2)
  {
    memset(__dst, 0, sizeof(__dst));
    goto LABEL_17;
  }

  v133 = 0;
  v22 = *(v17 + 16);
  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
LABEL_153:
    __DataStorage._length.getter();
    goto LABEL_154;
  }

  v24 = v23;
  v25 = __DataStorage._offset.getter();
  if (__OFSUB__(v22, v25))
  {
    goto LABEL_139;
  }

  v15 = v22 - v25 + v24;
  __DataStorage._length.getter();
  if (!v15)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

LABEL_15:
  v29 = v15;
  v3 = v133;
LABEL_18:
  v30 = sub_10010C97C(v29, 1);
  v31 = v3;
  sub_10007676C(v19, v20);
  if (!v30[2])
  {
    goto LABEL_134;
  }

  v4.i32[0] = *(v30 + 8);
  LODWORD(v19) = *(v30 + 36);
  v32 = *(v30 + 37);

  if (!v32)
  {
    sub_10000CA2C();
    swift_allocError();
    v47 = 22;
    goto LABEL_111;
  }

  v133 = v3;
  v127 = vmovl_u8(v4);
  LODWORD(v15) = v127.u16[0] - 7;
  if ((v15 & 0xFFFFFF00) != 0)
  {
    goto LABEL_135;
  }

  v33 = v32;
  v34 = (v127.i8[0] - 7) / v32;
  v135 = v32;
  v131 = v34;
  if (v15 == v34 * v32)
  {
    goto LABEL_26;
  }

  v31 = "ADC1 Feature Unit with a non-integral number of channels. There is an extra byte in the descriptor.";
  if (qword_100173CB8 != -1)
  {
    goto LABEL_137;
  }

  while (1)
  {
    v35 = sub_10000A1BC(v8, qword_1001794F0);
    sub_10000A2A4(v35, v11);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v36, qword_100179508);
    sub_100039F58(1, v11, 0xD000000000000063, ((v31 - 32) | 0x8000000000000000));
    sub_10000C9D0(v11);
    sub_10009B498(__dst, 22);
    v33 = v135;
    v34 = v131;
LABEL_26:
    if (v33 == 2)
    {
      if (!v16)
      {
        goto LABEL_110;
      }

      v48 = v133;
      result = sub_1000D5D10(v16, v134, 2 * v34);
      if (v48)
      {
        return result;
      }

      v40 = v49;
      v134 = v50;
      v51 = sub_1001128D0(v16, 2 * v34);
      v43 = v51;
      v44 = v52;
      v53 = v52 >> 62;
      v126 = v19;
      if ((v52 >> 62) > 1)
      {
        if (v53 != 2)
        {
          memset(__dst, 0, sizeof(__dst));
          goto LABEL_104;
        }

        v87 = *(v51 + 16);
        v88 = __DataStorage._bytes.getter();
        if (!v88)
        {
LABEL_163:
          __DataStorage._length.getter();
          __break(1u);
LABEL_164:
          __DataStorage._length.getter();
          __break(1u);
LABEL_165:
          result = __DataStorage._length.getter();
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v89 = v88;
        v90 = __DataStorage._offset.getter();
        if (__OFSUB__(v87, v90))
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v91 = (v87 - v90 + v89);
        __DataStorage._length.getter();
        if (!v91)
        {
          __break(1u);
          goto LABEL_84;
        }
      }

      else
      {
        if (!v53)
        {
          *__dst = v51;
          *&__dst[8] = v52;
          __dst[10] = BYTE2(v52);
          __dst[11] = BYTE3(v52);
          __dst[12] = BYTE4(v52);
          __dst[13] = BYTE5(v52);
LABEL_104:
          v106 = __dst;
          v107 = v34;
          goto LABEL_105;
        }

        if (v51 > v51 >> 32)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v103 = __DataStorage._bytes.getter();
        if (!v103)
        {
          goto LABEL_165;
        }

        v104 = v103;
        v105 = __DataStorage._offset.getter();
        if (__OFSUB__(v43, v105))
        {
          goto LABEL_150;
        }

        v91 = (v43 - v105 + v104);
        result = __DataStorage._length.getter();
        if (!v91)
        {
          goto LABEL_166;
        }
      }

      v106 = v91;
      v107 = v131;
      v48 = 0;
LABEL_105:
      v19 = sub_10010A954(v106, v107);
      v15 = v48;
      sub_10007676C(v43, v44);
      goto LABEL_106;
    }

    if (v33 == 1)
    {
      if (!v16)
      {
        goto LABEL_110;
      }

      v37 = v133;
      result = sub_1000D5D10(v16, v134, v34);
      if (v37)
      {
        return result;
      }

      v40 = v38;
      v134 = v39;
      v41 = sub_1001128D0(v16, v34);
      v43 = v41;
      v44 = v42;
      v45 = v42 >> 62;
      if ((v42 >> 62) > 1)
      {
        if (v45 != 2)
        {
          memset(__dst, 0, sizeof(__dst));
          goto LABEL_90;
        }

        v82 = *(v41 + 16);
        v83 = __DataStorage._bytes.getter();
        if (!v83)
        {
LABEL_161:
          __DataStorage._length.getter();
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v84 = v83;
        v85 = __DataStorage._offset.getter();
        if (__OFSUB__(v82, v85))
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v86 = (v82 - v85 + v84);
        __DataStorage._length.getter();
        if (!v86)
        {
          goto LABEL_162;
        }

LABEL_88:
        v95 = v86;
        v96 = v131;
        v37 = 0;
        goto LABEL_91;
      }

      if (!v45)
      {
        *__dst = v41;
        *&__dst[8] = v42;
        __dst[10] = BYTE2(v42);
        __dst[11] = BYTE3(v42);
        __dst[12] = BYTE4(v42);
        __dst[13] = BYTE5(v42);
LABEL_90:
        v95 = __dst;
        v96 = v34;
LABEL_91:
        v97 = sub_10010AC70(v95, v96);
        v15 = v37;
        sub_10007676C(v43, v44);
        v126 = v19;
        v98 = *(v97 + 2);
        if (v98)
        {
          v132 = v40;
          v79 = v37;
          *__dst = _swiftEmptyArrayStorage;
          sub_1000470A0(0, v98, 0);
          v19 = *__dst;
          v99 = *(*__dst + 16);
          v100 = 32;
          do
          {
            v101 = v97[v100];
            *__dst = v19;
            v102 = *(v19 + 3);
            if (v99 >= v102 >> 1)
            {
              sub_1000470A0((v102 > 1), v99 + 1, 1);
              v19 = *__dst;
            }

            *(v19 + 2) = v99 + 1;
            v19[v99 + 16] = v101;
            ++v100;
            ++v99;
            --v98;
          }

          while (v98);
LABEL_96:

          v15 = v79;
          v40 = v132;
        }

        else
        {
LABEL_97:

          v19 = _swiftEmptyArrayStorage;
        }

LABEL_106:
        if (!v40)
        {
          goto LABEL_109;
        }

        sub_1000D5D10(v40, v134, 1);
        if (v15)
        {
        }

        v108 = sub_1001128D0(v40, 1);
        v110 = v108;
        v111 = v109;
        v112 = v109 >> 62;
        if ((v109 >> 62) <= 1)
        {
          if (!v112)
          {
            *__dst = v108;
            *&__dst[8] = v109;
            __dst[10] = BYTE2(v109);
            __dst[11] = BYTE3(v109);
            __dst[12] = BYTE4(v109);
            __dst[13] = BYTE5(v109);
LABEL_127:
            v121 = __dst;
LABEL_128:
            v122 = sub_10010AC70(v121, 1);
            sub_10007676C(v110, v111);
            if (*(v122 + 2))
            {
              v123 = v122[32];

              v124 = v128;
              *v128 = vuzp1_s8(*v127.i8, *v127.i8).u32[0];
              *(v124 + 4) = v126;
              *(v124 + 5) = v135;
              *(v124 + 1) = v19;
              *(v124 + 16) = v123;
              return result;
            }

            goto LABEL_141;
          }

          if (v108 > v108 >> 32)
          {
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          v118 = __DataStorage._bytes.getter();
          if (v118)
          {
            v119 = v118;
            v120 = __DataStorage._offset.getter();
            if (__OFSUB__(v110, v120))
            {
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            v117 = (v110 - v120 + v119);
            __DataStorage._length.getter();
            if (v117)
            {
LABEL_125:
              v121 = v117;
              goto LABEL_128;
            }

            goto LABEL_160;
          }

LABEL_159:
          __DataStorage._length.getter();
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (v112 != 2)
        {
          memset(__dst, 0, sizeof(__dst));
          goto LABEL_127;
        }

        v113 = *(v108 + 16);
        v114 = __DataStorage._bytes.getter();
        if (v114)
        {
          v115 = v114;
          v116 = __DataStorage._offset.getter();
          if (__OFSUB__(v113, v116))
          {
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          v117 = (v113 - v116 + v115);
          __DataStorage._length.getter();
          if (v117)
          {
            goto LABEL_125;
          }

          goto LABEL_158;
        }

LABEL_157:
        __DataStorage._length.getter();
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

LABEL_84:
      if (v43 > v43 >> 32)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v92 = __DataStorage._bytes.getter();
      if (!v92)
      {
        goto LABEL_164;
      }

      v93 = v92;
      v94 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v94))
      {
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
      }

      v86 = (v43 - v94 + v93);
      result = __DataStorage._length.getter();
      if (!v86)
      {
LABEL_167:
        __break(1u);
        return result;
      }

      goto LABEL_88;
    }

    v126 = v19;
    sub_10009B498(__dst, 21);
    v31 = v135;
    v11 = _swiftEmptyArrayStorage;
    if (v135 <= v15)
    {
      break;
    }

    v40 = v16;
    v15 = v133;
LABEL_65:
    v8 = *(v11 + 2);
    if (!v8)
    {
      goto LABEL_97;
    }

    v132 = v40;
    v79 = v15;
    *__dst = _swiftEmptyArrayStorage;
    sub_1000470A0(0, v8, 0);
    v15 = 32;
    v19 = *__dst;
    while (1)
    {
      v31 = *&v11[v15];
      if (WORD1(v31))
      {
        break;
      }

      *__dst = v19;
      v81 = *(v19 + 2);
      v80 = *(v19 + 3);
      v16 = (v81 + 1);
      if (v81 >= v80 >> 1)
      {
        sub_1000470A0((v80 > 1), v81 + 1, 1);
        v19 = *__dst;
      }

      *(v19 + 2) = v16;
      v19[v81 + 16] = v31;
      v15 += 4;
      if (!--v8)
      {
        goto LABEL_96;
      }
    }

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
LABEL_137:
    swift_once();
  }

  v54 = 0;
  v129 = xmmword_10011DE90;
  v19 = v136;
  v15 = v133;
  while (v16)
  {
    sub_1000D5D10(v16, v134, v31);
    if (v15)
    {
    }

    v130 = v54;
    v134 = v56;
    v132 = v55;
    if (v31 < 0xF)
    {
      memset(__dst, 0, sizeof(__dst));
      v138 = v31;
      memcpy(__dst, v16, v135);
      *v136 = *__dst;
      *&v136[6] = *&__dst[6];
      *__dst = _swiftEmptyArrayStorage;
      sub_100046824(0, v135, 0);
      v68 = v135;
      v69 = 0;
      v64 = *__dst;
      v70 = *(*__dst + 16);
      do
      {
        v31 = v136[v69];
        *__dst = v64;
        v71 = *(v64 + 24);
        v8 = v70 + 1;
        if (v70 >= v71 >> 1)
        {
          sub_100046824((v71 > 1), v70 + 1, 1);
          v68 = v135;
          v64 = *__dst;
        }

        ++v69;
        *(v64 + 16) = v8;
        *(v64 + v70++ + 32) = v31;
      }

      while (v68 != v69);
    }

    else
    {
      v57 = type metadata accessor for __DataStorage();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      v60 = __DataStorage._bytes.getter();
      if (!v60)
      {
        __DataStorage._length.getter();
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v16 = v60;
      v61 = __DataStorage._offset.getter();
      if (__OFSUB__(0, v61))
      {
        goto LABEL_136;
      }

      v133 = 0;
      v62 = &v16[-v61];
      __DataStorage._length.getter();
      if (!v62)
      {
        goto LABEL_152;
      }

      *__dst = _swiftEmptyArrayStorage;
      v63 = v135;
      sub_100046824(0, v135, 0);
      v64 = *__dst;
      v16 = *(*__dst + 16);
      do
      {
        v66 = *v62++;
        v65 = v66;
        *__dst = v64;
        v67 = *(v64 + 24);
        v31 = (v16 + 1);
        if (v16 >= v67 >> 1)
        {
          sub_100046824((v67 > 1), (v16 + 1), 1);
          v64 = *__dst;
        }

        *(v64 + 16) = v31;
        (v16++)[v64 + 32] = v65;
        --v63;
      }

      while (v63);

      v15 = v133;
    }

    sub_100001AB4(&qword_100175490, &qword_100126EB0);
    inited = swift_initStackObject();
    *(inited + 16) = v129;
    v73 = *(v64 + 16);
    v40 = v132;
    if (!v73)
    {
      goto LABEL_131;
    }

    v8 = inited;
    v31 = *(v64 + 32);

    if (v73 == 1)
    {
      goto LABEL_132;
    }

    *(v8 + 32) = v31;
    v74 = *(v11 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v76 = *(v11 + 3) >> 1, v76 <= v74))
    {
      v11 = sub_100025EF4(isUniquelyReferenced_nonNull_native, v74 + 1, 1, v11);
      v76 = *(v11 + 3) >> 1;
    }

    v31 = v131;
    v77 = *(v11 + 2);
    if (v76 <= v77)
    {
      goto LABEL_133;
    }

    v54 = v130 + 1;
    *&v11[4 * v77 + 32] = *(v8 + 32);

    ++*(v11 + 2);
    v78 = v31 == v54;
    v16 = v40;
    v31 = v135;
    if (v78)
    {
      goto LABEL_65;
    }
  }

LABEL_109:

LABEL_110:
  sub_10000CA2C();
  swift_allocError();
  v47 = 57;
LABEL_111:
  *v46 = v47;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000EA318@<X0>(uint64_t result@<X0>, char **a2@<X8>)
{
  v3 = 0;
  v4 = *result;
  v13 = 29425665;
  v14 = 16;
  v15 = 33619970;
  v16 = 33;
  v17 = 54591492;
  v18 = 32;
  v19 = 8;
  v20 = 1153;
  v21 = 32;
  v22 = 16;
  v24 = 32;
  v23 = 1473;
  v25 = 100728864;
  v26 = 53;
  v27 = 121700416;
  v28 = 48;
  v29 = 142672000;
  v30 = 49;
  v31 = 256;
  v33 = 48;
  v32 = 2497;
  v34 = 167838208;
  v35 = 64;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v7 = &v12[v3];
    if ((*&v12[v3 + 32] & v4) != 0)
    {
      v8 = v7[36];
      v9 = *(v7 + 17);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100024518(0, *(v5 + 2) + 1, 1, v5);
        v5 = result;
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        result = sub_100024518((v10 > 1), v11 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 2) = v11 + 1;
      v6 = &v5[3 * v11];
      v6[34] = (v9 | (v8 << 16)) >> 16;
      *(v6 + 16) = v9;
    }

    v3 += 6;
  }

  while (v3 != 60);
  *a2 = v5;
  return result;
}

void sub_1000EA4FC(uint64_t a1)
{
  v3 = sub_100068378(*v1 | (*(v1 + 1) << 16));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v14);
      AnyHashable.hash(into:)();
      sub_10001E070(v14);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 1), v1[8]);
  v6 = *(v1 + 3);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(*(v1 + 32));
  v10 = *(v1 + 5);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    v11 = *(v10 + 16);
    Hasher._combine(_:)(v11);
    if (v11)
    {
      v12 = (v10 + 32);
      do
      {
        v13 = *v12++;
        Hasher._combine(_:)(v13);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000EA624()
{
  Hasher.init(_seed:)();
  sub_1000EA4FC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000EA668()
{
  Hasher.init(_seed:)();
  sub_1000EA4FC(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000EA6A4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1000EE87C(v7, v8) & 1;
}

uint64_t sub_1000EA6EC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_118;
  }

  result = sub_1000D5D10(a1, a2, 7);
  v12 = v3;
  if (v3)
  {
    return result;
  }

  v13 = v10;
  v14 = v11;
  v15 = sub_1001128D0(a1, 7);
  v17 = v15;
  v18 = v16;
  v19 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v19 != 2)
    {
      memset(v142, 0, 14);
      goto LABEL_17;
    }

    v5 = *(v15 + 16);
    v20 = __DataStorage._bytes.getter();
    if (!v20)
    {
LABEL_147:
      __DataStorage._length.getter();
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v4 = v20;
    v21 = __DataStorage._offset.getter();
    if (!__OFSUB__(v5, v21))
    {
      v4 += v5 - v21;
      __DataStorage._length.getter();
      if (!v4)
      {
        goto LABEL_148;
      }

      goto LABEL_15;
    }

    goto LABEL_101;
  }

  if (v19)
  {
    LOBYTE(v5) = v15;
    if (v15 <= v15 >> 32)
    {
      v22 = __DataStorage._bytes.getter();
      if (!v22)
      {
LABEL_149:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_150;
      }

      v4 = v22;
      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v17, v23))
      {
        v4 += v17 - v23;
        __DataStorage._length.getter();
        if (!v4)
        {
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

LABEL_15:
        v24 = v4;
        goto LABEL_18;
      }

LABEL_102:
      __break(1u);
LABEL_103:
      if (v14 > v14 >> 32)
      {
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v110 = __DataStorage._bytes.getter();
      if (!v110)
      {
LABEL_176:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_177;
      }

      v111 = v110;
      v112 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v112))
      {
        goto LABEL_158;
      }

      v109 = (v14 - v112 + v111);
      __DataStorage._length.getter();
      if (!v109)
      {
LABEL_177:
        __break(1u);
LABEL_178:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_179;
      }

      goto LABEL_107;
    }

    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v142[0] = v15;
  LOWORD(v142[1]) = v16;
  BYTE2(v142[1]) = BYTE2(v16);
  BYTE3(v142[1]) = BYTE3(v16);
  BYTE4(v142[1]) = BYTE4(v16);
  BYTE5(v142[1]) = BYTE5(v16);
LABEL_17:
  v24 = v142;
LABEL_18:
  v12 = sub_10010CAC0(v24, 1);
  sub_10007676C(v17, v18);
  v25 = v12[2];
  if (!v25)
  {
    __break(1u);
    goto LABEL_95;
  }

  v7.i32[0] = *(v12 + 8);
  v26 = *(v12 + 18);
  v27 = *(v12 + 38);

  if (v13)
  {
    sub_1000D5D10(v13, v14, v27);
    v29 = v28;
    v140 = v26;
    v5 = v30;
    v31 = sub_1001128D0(v13, v27);
    v33 = v31;
    v17 = v32;
    v34 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v34 != 2)
      {
        memset(v142, 0, 14);
        goto LABEL_34;
      }

      v6 = v27;
      v35 = *(v31 + 16);
      v36 = __DataStorage._bytes.getter();
      if (!v36)
      {
LABEL_152:
        __DataStorage._length.getter();
LABEL_153:
        __break(1u);
LABEL_154:
        __DataStorage._length.getter();
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v13 = v36;
      v37 = __DataStorage._offset.getter();
      if (__OFSUB__(v35, v37))
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v38 = &v13[v35 - v37];
      __DataStorage._length.getter();
      if (!v38)
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (!v34)
      {
        v142[0] = v31;
        LOWORD(v142[1]) = v32;
        BYTE2(v142[1]) = BYTE2(v32);
        BYTE3(v142[1]) = BYTE3(v32);
        BYTE4(v142[1]) = BYTE4(v32);
        BYTE5(v142[1]) = BYTE5(v32);
LABEL_34:
        v41 = v142;
LABEL_35:
        v13 = sub_10010AC70(v41, v27);
        sub_10007676C(v33, v17);
        if (!v29)
        {
LABEL_117:

          goto LABEL_118;
        }

        sub_1000D5D10(v29, v5, 5);
        v17 = v42;
        v135 = v43;
        v44 = sub_1001128D0(v29, 5);
        v5 = v44;
        v29 = v45;
        v46 = v45 >> 62;
        if ((v45 >> 62) > 1)
        {
          if (v46 != 2)
          {
            memset(v142, 0, 14);
            goto LABEL_50;
          }

          v6 = v27;
          v47 = *(v44 + 16);
          v48 = __DataStorage._bytes.getter();
          if (!v48)
          {
LABEL_159:
            __DataStorage._length.getter();
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          v49 = v48;
          v50 = __DataStorage._offset.getter();
          if (!__OFSUB__(v47, v50))
          {
            v33 = v47 - v50 + v49;
            __DataStorage._length.getter();
            if (!v33)
            {
              goto LABEL_160;
            }

            goto LABEL_48;
          }
        }

        else
        {
          if (!v46)
          {
            v142[0] = v44;
            LOWORD(v142[1]) = v45;
            BYTE2(v142[1]) = BYTE2(v45);
            BYTE3(v142[1]) = BYTE3(v45);
            BYTE4(v142[1]) = BYTE4(v45);
            BYTE5(v142[1]) = BYTE5(v45);
LABEL_50:
            v54 = v142;
LABEL_51:
            sub_10010CA94(v54, 1);
            v56 = v55;
            sub_10007676C(v5, v29);
            if (!*(v56 + 16))
            {
LABEL_128:
              __break(1u);
              goto LABEL_129;
            }

            v57 = *(v56 + 32);
            v58 = *(v56 + 33);
            v59 = *(v56 + 35);
            v60 = *(v56 + 36);

            if (!v17)
            {
              goto LABEL_117;
            }

            v134 = v59;
            sub_1000D5D10(v17, v135, v60);
            v12 = v3;
            v62 = v61;
            v130 = v58;
            v131 = v57;
            v136 = v63;
            v64 = sub_1001128D0(v17, v60);
            v66 = v64;
            v67 = v65;
            v68 = v65 >> 62;
            if ((v65 >> 62) > 1)
            {
              if (v68 != 2)
              {
                memset(v142, 0, 14);
                goto LABEL_67;
              }

              v133 = v60;
              v69 = v27;
              v70 = *(v64 + 16);
              v71 = __DataStorage._bytes.getter();
              if (!v71)
              {
LABEL_166:
                __DataStorage._length.getter();
LABEL_167:
                __break(1u);
                goto LABEL_168;
              }

              v72 = v71;
              v73 = __DataStorage._offset.getter();
              if (!__OFSUB__(v70, v73))
              {
                v74 = (v70 - v73 + v72);
                __DataStorage._length.getter();
                if (!v74)
                {
                  goto LABEL_167;
                }

                goto LABEL_65;
              }
            }

            else
            {
              if (!v68)
              {
                v142[0] = v64;
                LOWORD(v142[1]) = v65;
                BYTE2(v142[1]) = BYTE2(v65);
                BYTE3(v142[1]) = BYTE3(v65);
                BYTE4(v142[1]) = BYTE4(v65);
                BYTE5(v142[1]) = BYTE5(v65);
LABEL_67:
                v78 = v142;
LABEL_68:
                v17 = sub_10010AC70(v78, v60);
                sub_10007676C(v66, v67);
                if (!v62)
                {
                  goto LABEL_116;
                }

                sub_1000D5D10(v62, v136, 1);
                v129 = v80;
                v137 = v79;
                v81 = sub_1001128D0(v62, 1);
                v83 = v81;
                v84 = v82;
                v85 = v82 >> 62;
                v132 = v60;
                if ((v82 >> 62) > 1)
                {
                  if (v85 != 2)
                  {
                    memset(v142, 0, 14);
                    goto LABEL_85;
                  }

                  v86 = v27;
                  v87 = *(v81 + 16);
                  v88 = __DataStorage._bytes.getter();
                  if (!v88)
                  {
LABEL_170:
                    __DataStorage._length.getter();
LABEL_171:
                    __break(1u);
                    goto LABEL_172;
                  }

                  v89 = v88;
                  v90 = __DataStorage._offset.getter();
                  if (__OFSUB__(v87, v90))
                  {
                    goto LABEL_145;
                  }

                  v91 = (v87 - v90 + v89);
                  __DataStorage._length.getter();
                  if (!v91)
                  {
                    goto LABEL_171;
                  }
                }

                else
                {
                  if (!v85)
                  {
                    v142[0] = v81;
                    LOWORD(v142[1]) = v82;
                    BYTE2(v142[1]) = BYTE2(v82);
                    BYTE3(v142[1]) = BYTE3(v82);
                    BYTE4(v142[1]) = BYTE4(v82);
                    BYTE5(v142[1]) = BYTE5(v82);
LABEL_85:
                    v95 = v142;
LABEL_86:
                    v96 = sub_10010AC70(v95, 1);
                    sub_10007676C(v83, v84);
                    v97 = v134;
                    if (*(v96 + 2))
                    {
                      LOBYTE(v5) = v96[32];

                      if ((v140 - 1) > 1)
                      {
                        v102 = _swiftEmptyArrayStorage;
                        v103 = a3;
LABEL_93:
                        v104 = vmovl_u8(v7).u64[0];
                        *v103 = vuzp1_s8(v104, v104).u32[0];
                        *(v103 + 4) = v140;
                        *(v103 + 6) = v27;
                        *(v103 + 8) = v13;
                        *(v103 + 16) = v131;
                        *(v103 + 17) = v130;
                        *(v103 + 19) = v97;
                        *(v103 + 20) = v132;
                        *(v103 + 24) = v17;
                        *(v103 + 32) = v5;
                        *(v103 + 40) = v102;
                        return result;
                      }

                      if (v137)
                      {
                        sub_1000D5D10(v137, v129, 1);
                        v126 = v27;
                        v127 = v98;
                        v128 = v99;
                        v100 = sub_1001128D0(v137, 1);
                        v14 = v100;
                        v4 = v101;
                        v25 = v101 >> 62;
                        if ((v101 >> 62) <= 1)
                        {
                          if (!v25)
                          {
                            v142[0] = v100;
                            LOWORD(v142[1]) = v101;
                            BYTE2(v142[1]) = BYTE2(v101);
                            BYTE3(v142[1]) = BYTE3(v101);
                            BYTE4(v142[1]) = BYTE4(v101);
                            BYTE5(v142[1]) = BYTE5(v101);
LABEL_109:
                            v113 = v142;
LABEL_110:
                            v114 = v12;
                            v115 = sub_10010AC70(v113, 1);
                            sub_10007676C(v14, v4);
                            if (*(v115 + 2))
                            {
                              v29 = v115[32];

                              if (v128)
                              {
                                sub_1000D5D10(v128, v127, 2 * v29);
                                if (v114)
                                {
                                }

                                v116 = sub_1001128D0(v128, 2 * v29);
                                v6 = v116;
                                v33 = v117;
                                v118 = v117 >> 62;
                                if ((v117 >> 62) <= 1)
                                {
                                  if (!v118)
                                  {
                                    v142[0] = v116;
                                    LOWORD(v142[1]) = v117;
                                    BYTE2(v142[1]) = BYTE2(v117);
                                    BYTE3(v142[1]) = BYTE3(v117);
                                    BYTE4(v142[1]) = BYTE4(v117);
                                    BYTE5(v142[1]) = BYTE5(v117);
LABEL_135:
                                    v125 = v142;
                                    goto LABEL_136;
                                  }

LABEL_129:
                                  if (v6 <= v6 >> 32)
                                  {
                                    v139 = __DataStorage._bytes.getter();
                                    if (!v139)
                                    {
LABEL_179:
                                      result = __DataStorage._length.getter();
LABEL_180:
                                      __break(1u);
                                      return result;
                                    }

                                    v124 = __DataStorage._offset.getter();
                                    if (!__OFSUB__(v6, v124))
                                    {
                                      v123 = (v6 - v124 + v139);
                                      result = __DataStorage._length.getter();
                                      if (v123)
                                      {
                                        goto LABEL_133;
                                      }

                                      goto LABEL_180;
                                    }

                                    goto LABEL_165;
                                  }

                                  goto LABEL_163;
                                }

                                if (v118 != 2)
                                {
                                  memset(v142, 0, 14);
                                  goto LABEL_135;
                                }

                                v138 = *(v116 + 16);
                                v120 = __DataStorage._bytes.getter();
                                if (!v120)
                                {
                                  goto LABEL_178;
                                }

                                v121 = v120;
                                v122 = __DataStorage._offset.getter();
                                if (__OFSUB__(v138, v122))
                                {
                                  goto LABEL_164;
                                }

                                v123 = (v138 - v122 + v121);
                                __DataStorage._length.getter();
                                if (v123)
                                {
LABEL_133:
                                  v125 = v123;
LABEL_136:
                                  v102 = sub_10010A954(v125, v29);
                                  result = sub_10007676C(v6, v33);
                                  v103 = a3;
                                  LOBYTE(v27) = v126;
                                  v97 = v134;
                                  goto LABEL_93;
                                }

                                __break(1u);
                                goto LABEL_125;
                              }

                              goto LABEL_116;
                            }

                            goto LABEL_151;
                          }

                          goto LABEL_103;
                        }

LABEL_95:
                        if (v25 != 2)
                        {
                          memset(v142, 0, 14);
                          goto LABEL_109;
                        }

                        v105 = *(v14 + 16);
                        v106 = __DataStorage._bytes.getter();
                        if (!v106)
                        {
LABEL_174:
                          __DataStorage._length.getter();
LABEL_175:
                          __break(1u);
                          goto LABEL_176;
                        }

                        v107 = v106;
                        v108 = __DataStorage._offset.getter();
                        if (__OFSUB__(v105, v108))
                        {
                          goto LABEL_157;
                        }

                        v109 = (v105 - v108 + v107);
                        __DataStorage._length.getter();
                        if (!v109)
                        {
                          goto LABEL_175;
                        }

LABEL_107:
                        v113 = v109;
                        goto LABEL_110;
                      }

LABEL_116:

                      goto LABEL_117;
                    }

                    goto LABEL_143;
                  }

                  v86 = v27;
                  if (v81 > v81 >> 32)
                  {
LABEL_144:
                    __break(1u);
LABEL_145:
                    __break(1u);
LABEL_146:
                    __break(1u);
                    goto LABEL_147;
                  }

                  v92 = __DataStorage._bytes.getter();
                  if (!v92)
                  {
LABEL_172:
                    __DataStorage._length.getter();
                    __break(1u);
                    goto LABEL_173;
                  }

                  v93 = v92;
                  v94 = __DataStorage._offset.getter();
                  if (__OFSUB__(v83, v94))
                  {
                    goto LABEL_146;
                  }

                  v91 = (v83 - v94 + v93);
                  __DataStorage._length.getter();
                  if (!v91)
                  {
LABEL_173:
                    __break(1u);
                    goto LABEL_174;
                  }
                }

                LOBYTE(v27) = v86;
                v95 = v91;
                goto LABEL_86;
              }

              v133 = v60;
              v69 = v27;
              if (v64 <= v64 >> 32)
              {
                v75 = __DataStorage._bytes.getter();
                if (!v75)
                {
LABEL_168:
                  __DataStorage._length.getter();
                  __break(1u);
                  goto LABEL_169;
                }

                v76 = v75;
                v77 = __DataStorage._offset.getter();
                if (!__OFSUB__(v66, v77))
                {
                  v74 = (v66 - v77 + v76);
                  __DataStorage._length.getter();
                  if (!v74)
                  {
LABEL_169:
                    __break(1u);
                    goto LABEL_170;
                  }

LABEL_65:
                  LOBYTE(v27) = v69;
                  v78 = v74;
                  v60 = v133;
                  goto LABEL_68;
                }

LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
                goto LABEL_144;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_142;
          }

          v6 = v27;
          if (v44 <= v44 >> 32)
          {
            v51 = __DataStorage._bytes.getter();
            if (!v51)
            {
LABEL_161:
              __DataStorage._length.getter();
              __break(1u);
              goto LABEL_162;
            }

            v52 = v51;
            v53 = __DataStorage._offset.getter();
            if (!__OFSUB__(v5, v53))
            {
              v33 = v5 - v53 + v52;
              __DataStorage._length.getter();
              if (!v33)
              {
LABEL_162:
                __break(1u);
LABEL_163:
                __break(1u);
LABEL_164:
                __break(1u);
LABEL_165:
                __break(1u);
                goto LABEL_166;
              }

LABEL_48:
              LOBYTE(v27) = v6;
              v54 = v33;
              goto LABEL_51;
            }

LABEL_139:
            __break(1u);
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_139;
      }

      v6 = v27;
      if (v31 > v31 >> 32)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v39 = __DataStorage._bytes.getter();
      if (!v39)
      {
        goto LABEL_154;
      }

      v13 = v39;
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v33, v40))
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v38 = &v13[v33 - v40];
      __DataStorage._length.getter();
      if (!v38)
      {
        goto LABEL_155;
      }
    }

    v27 = v6;
    v41 = v38;
    goto LABEL_35;
  }

LABEL_118:
  sub_10000CA2C();
  swift_allocError();
  *v119 = 57;
  *(v119 + 8) = 0;
  *(v119 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000EB3EC(uint64_t a1)
{
  v3 = sub_100066154(*v1 | (*(v1 + 2) << 32) | (*(v1 + 6) << 48));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v21);
      AnyHashable.hash(into:)();
      sub_10001E070(v21);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_100062988(*(v1 + 7) | (*(v1 + 11) << 32));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v21);
      AnyHashable.hash(into:)();
      sub_10001E070(v21);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v9 = *(v1 + 4);
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11++;
      Hasher._combine(_:)(v12);
      --v10;
    }

    while (v10);
  }

  v13 = *(v1 + 5);
  v14 = *(v13 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15++;
      Hasher._combine(_:)(v16);
      --v14;
    }

    while (v14);
  }

  Hasher._combine(_:)(*(v1 + 48));
  v17 = *(v1 + 7);
  v18 = *(v17 + 16);
  Hasher._combine(_:)(v18);
  if (v18)
  {
    v19 = (v17 + 32);
    do
    {
      v20 = *v19++;
      Hasher._combine(_:)(v20);
      --v18;
    }

    while (v18);
  }
}

Swift::Int sub_1000EB580()
{
  Hasher.init(_seed:)();
  sub_1000EB3EC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000EB5C4()
{
  Hasher.init(_seed:)();
  sub_1000EB3EC(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000EB600(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1000EE6D4(v7, v8) & 1;
}

uint64_t sub_1000EB64C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_72;
  }

  result = sub_1000D5D10(a1, a2, 7);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 7);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v117, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
LABEL_109:
      __DataStorage._length.getter();
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_93;
    }

    v21 = (v17 - v20 + v19);
    __DataStorage._length.getter();
    if (!v21)
    {
      goto LABEL_110;
    }

LABEL_15:
    v25 = v21;
    goto LABEL_18;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v22 = __DataStorage._bytes.getter();
    if (!v22)
    {
LABEL_111:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_112;
    }

    v23 = v22;
    v24 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v24))
    {
      goto LABEL_94;
    }

    v21 = (v14 - v24 + v23);
    __DataStorage._length.getter();
    if (!v21)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    goto LABEL_15;
  }

  v117[0] = v12;
  LOWORD(v117[1]) = v13;
  BYTE2(v117[1]) = BYTE2(v13);
  BYTE3(v117[1]) = BYTE3(v13);
  BYTE4(v117[1]) = BYTE4(v13);
  BYTE5(v117[1]) = BYTE5(v13);
LABEL_17:
  v25 = v117;
LABEL_18:
  v26 = sub_10010CC38(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_92;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 18);
  v28 = *(v26 + 38);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v28);
    v30 = v29;
    v110 = v27;
    v111 = v31;
    v32 = sub_1001128D0(v10, v28);
    v34 = v32;
    v35 = v33;
    v36 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v36 != 2)
      {
        memset(v117, 0, 14);
        goto LABEL_34;
      }

      v37 = *(v32 + 16);
      v38 = __DataStorage._bytes.getter();
      if (!v38)
      {
LABEL_113:
        __DataStorage._length.getter();
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v39 = v38;
      v40 = __DataStorage._offset.getter();
      if (!__OFSUB__(v37, v40))
      {
        v41 = (v37 - v40 + v39);
        __DataStorage._length.getter();
        if (!v41)
        {
          goto LABEL_114;
        }

        goto LABEL_32;
      }

      goto LABEL_96;
    }

    if (!v36)
    {
      v117[0] = v32;
      LOWORD(v117[1]) = v33;
      BYTE2(v117[1]) = BYTE2(v33);
      BYTE3(v117[1]) = BYTE3(v33);
      BYTE4(v117[1]) = BYTE4(v33);
      BYTE5(v117[1]) = BYTE5(v33);
LABEL_34:
      v45 = v117;
LABEL_35:
      v46 = sub_10010AC70(v45, v28);
      sub_10007676C(v34, v35);
      if (!v30)
      {
        goto LABEL_71;
      }

      sub_1000D5D10(v30, v111, 5);
      v48 = v47;
      v112 = v49;
      v50 = sub_1001128D0(v30, 5);
      v52 = v50;
      v53 = v51;
      v54 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        if (v54 != 2)
        {
          memset(v117, 0, 14);
          goto LABEL_50;
        }

        v106 = v46;
        v55 = *(v50 + 16);
        v56 = __DataStorage._bytes.getter();
        if (!v56)
        {
LABEL_117:
          __DataStorage._length.getter();
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        v57 = v56;
        v58 = __DataStorage._offset.getter();
        if (__OFSUB__(v55, v58))
        {
          goto LABEL_100;
        }

        v59 = (v55 - v58 + v57);
        __DataStorage._length.getter();
        v46 = v106;
        if (!v59)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (!v54)
        {
          v117[0] = v50;
          LOWORD(v117[1]) = v51;
          BYTE2(v117[1]) = BYTE2(v51);
          BYTE3(v117[1]) = BYTE3(v51);
          BYTE4(v117[1]) = BYTE4(v51);
          BYTE5(v117[1]) = BYTE5(v51);
LABEL_50:
          v63 = v117;
LABEL_51:
          sub_10010CAEC(v63, 1);
          v65 = v64;
          sub_10007676C(v52, v53);
          if (*(v65 + 16))
          {
            v66 = *(v65 + 32);
            v67 = *(v65 + 33);
            v105 = *(v65 + 35);
            v68 = *(v65 + 36);

            if (v48)
            {
              sub_1000D5D10(v48, v112, v68);
              v70 = v69;
              v103 = v66;
              v104 = v67;
              v113 = v71;
              v72 = sub_1001128D0(v48, v68);
              v74 = v72;
              v75 = v73;
              v76 = v73 >> 62;
              if ((v73 >> 62) > 1)
              {
                if (v76 != 2)
                {
                  memset(v117, 0, 14);
                  goto LABEL_67;
                }

                v102 = v70;
                v107 = v46;
                v77 = *(v72 + 16);
                v78 = __DataStorage._bytes.getter();
                if (!v78)
                {
LABEL_121:
                  __DataStorage._length.getter();
LABEL_122:
                  __break(1u);
                  goto LABEL_123;
                }

                v79 = v78;
                v80 = __DataStorage._offset.getter();
                if (!__OFSUB__(v77, v80))
                {
                  v81 = (v77 - v80 + v79);
                  __DataStorage._length.getter();
                  v46 = v107;
                  if (!v81)
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_65;
                }
              }

              else
              {
                if (!v76)
                {
                  v117[0] = v72;
                  LOWORD(v117[1]) = v73;
                  BYTE2(v117[1]) = BYTE2(v73);
                  BYTE3(v117[1]) = BYTE3(v73);
                  BYTE4(v117[1]) = BYTE4(v73);
                  BYTE5(v117[1]) = BYTE5(v73);
LABEL_67:
                  v85 = sub_10010AC70(v117, v68);
                  sub_10007676C(v74, v75);
                  goto LABEL_68;
                }

                v102 = v70;
                if (v72 <= v72 >> 32)
                {
                  v82 = __DataStorage._bytes.getter();
                  if (!v82)
                  {
LABEL_123:
                    __DataStorage._length.getter();
                    __break(1u);
                    goto LABEL_124;
                  }

                  v83 = v82;
                  v84 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v74, v84))
                  {
                    v81 = (v74 - v84 + v83);
                    __DataStorage._length.getter();
                    if (!v81)
                    {
LABEL_124:
                      __break(1u);
                      goto LABEL_125;
                    }

LABEL_65:
                    v85 = sub_10010AC70(v81, v68);
                    sub_10007676C(v74, v75);
                    v70 = v102;
LABEL_68:
                    if (v70)
                    {
                      sub_1000D5D10(v70, v113, 1);
                      v87 = sub_1001128D0(v70, 1);
                      v89 = v87;
                      v90 = v88;
                      v91 = v88 >> 62;
                      if ((v88 >> 62) > 1)
                      {
                        if (v91 == 2)
                        {
                          v108 = v46;
                          v114 = *(v87 + 16);
                          v92 = __DataStorage._bytes.getter();
                          if (!v92)
                          {
LABEL_125:
                            __DataStorage._length.getter();
LABEL_126:
                            __break(1u);
                            goto LABEL_127;
                          }

                          v93 = v92;
                          v94 = __DataStorage._offset.getter();
                          if (__OFSUB__(v114, v94))
                          {
                            goto LABEL_107;
                          }

                          v95 = (v114 - v94 + v93);
                          __DataStorage._length.getter();
                          v96 = v95;
                          v46 = v108;
                          if (!v96)
                          {
                            goto LABEL_126;
                          }

                          goto LABEL_89;
                        }
                      }

                      else
                      {
                        if (!v91)
                        {
                          v117[0] = v87;
                          LOWORD(v117[1]) = v88;
                          BYTE2(v117[1]) = BYTE2(v88);
                          BYTE3(v117[1]) = BYTE3(v88);
                          BYTE4(v117[1]) = BYTE4(v88);
                          BYTE5(v117[1]) = BYTE5(v88);
LABEL_88:
                          v96 = v117;
LABEL_89:
                          v99 = sub_10010AC70(v96, 1);
                          sub_10007676C(v89, v90);
                          if (*(v99 + 2))
                          {
                            v100 = v46;
                            v116 = vmovl_u8(v4).u64[0];
                            v101 = v99[32];

                            *a3 = vuzp1_s8(v116, v116).u32[0];
                            *(a3 + 4) = v110;
                            *(a3 + 6) = v28;
                            *(a3 + 8) = v100;
                            *(a3 + 16) = v103;
                            *(a3 + 17) = v104;
                            *(a3 + 19) = v105;
                            *(a3 + 20) = v68;
                            *(a3 + 24) = v85;
                            *(a3 + 32) = v101;
                            return result;
                          }

                          goto LABEL_105;
                        }

                        v109 = v46;
                        if (v87 > v87 >> 32)
                        {
LABEL_106:
                          __break(1u);
LABEL_107:
                          __break(1u);
LABEL_108:
                          __break(1u);
                          goto LABEL_109;
                        }

                        v115 = __DataStorage._bytes.getter();
                        if (!v115)
                        {
LABEL_127:
                          result = __DataStorage._length.getter();
                          __break(1u);
                          return result;
                        }

                        v97 = __DataStorage._offset.getter();
                        if (__OFSUB__(v89, v97))
                        {
                          goto LABEL_108;
                        }

                        v98 = (v89 - v97 + v115);
                        __DataStorage._length.getter();
                        v96 = v98;
                        v46 = v109;
                        if (v96)
                        {
                          goto LABEL_89;
                        }

                        __break(1u);
                      }

                      memset(v117, 0, 14);
                      goto LABEL_88;
                    }

                    goto LABEL_71;
                  }

LABEL_104:
                  __break(1u);
LABEL_105:
                  __break(1u);
                  goto LABEL_106;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_104;
            }

LABEL_71:

            goto LABEL_72;
          }

          goto LABEL_98;
        }

        if (v50 > v50 >> 32)
        {
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v60 = __DataStorage._bytes.getter();
        if (!v60)
        {
LABEL_119:
          __DataStorage._length.getter();
          __break(1u);
          goto LABEL_120;
        }

        v61 = v60;
        v62 = __DataStorage._offset.getter();
        if (__OFSUB__(v52, v62))
        {
LABEL_101:
          __break(1u);
        }

        v59 = (v52 - v62 + v61);
        __DataStorage._length.getter();
        if (!v59)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }
      }

      v63 = v59;
      goto LABEL_51;
    }

    if (v32 <= v32 >> 32)
    {
      v42 = __DataStorage._bytes.getter();
      if (!v42)
      {
LABEL_115:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_116;
      }

      v43 = v42;
      v44 = __DataStorage._offset.getter();
      if (!__OFSUB__(v34, v44))
      {
        v41 = (v34 - v44 + v43);
        __DataStorage._length.getter();
        if (!v41)
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

LABEL_32:
        v45 = v41;
        goto LABEL_35;
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_72:
  sub_10000CA2C();
  swift_allocError();
  *v86 = 57;
  *(v86 + 8) = 0;
  *(v86 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000EC00C(uint64_t a1)
{
  v3 = sub_100067C78(*v1 | (*(v1 + 2) << 32) | (*(v1 + 6) << 48));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v17);
      AnyHashable.hash(into:)();
      sub_10001E070(v17);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_1000637E8(*(v1 + 7) | (*(v1 + 11) << 32));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v17);
      AnyHashable.hash(into:)();
      sub_10001E070(v17);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v9 = *(v1 + 4);
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      v12 = *v11++;
      Hasher._combine(_:)(v12);
      --v10;
    }

    while (v10);
  }

  v13 = *(v1 + 5);
  v14 = *(v13 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15++;
      Hasher._combine(_:)(v16);
      --v14;
    }

    while (v14);
  }

  Hasher._combine(_:)(*(v1 + 48));
}

Swift::Int sub_1000EC18C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1000EC1F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

BOOL sub_1000EC234(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000EE7B8(v5, v7);
}

uint64_t sub_1000EC290@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_66;
  }

  v94 = v10;
  result = sub_1000D5D10(a1, a2, 8);
  v16 = v3;
  if (v3)
  {
    return result;
  }

  v17 = v14;
  v18 = v15;
  v19 = sub_1001128D0(a1, 8);
  v21 = v19;
  v22 = v20;
  v23 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v23 != 2)
    {
      memset(v95, 0, 14);
      goto LABEL_17;
    }

    v91 = a3;
    v4 = *(v19 + 16);
    v24 = __DataStorage._bytes.getter();
    if (!v24)
    {
LABEL_107:
      __DataStorage._length.getter();
LABEL_108:
      __break(1u);
LABEL_109:
      __DataStorage._length.getter();
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    a3 = v24;
    v25 = __DataStorage._offset.getter();
    if (__OFSUB__(v4, v25))
    {
      goto LABEL_95;
    }

    v26 = (v4 - v25 + a3);
    __DataStorage._length.getter();
    if (!v26)
    {
      goto LABEL_108;
    }

LABEL_15:
    v29 = sub_10010CD7C(v26, 1uLL);
    sub_10007676C(v21, v22);
    a3 = v91;
    goto LABEL_18;
  }

  if (v23)
  {
    v91 = a3;
    v4 = v19;
    if (v19 > v19 >> 32)
    {
      goto LABEL_94;
    }

    v27 = __DataStorage._bytes.getter();
    if (!v27)
    {
      goto LABEL_109;
    }

    a3 = v27;
    v28 = __DataStorage._offset.getter();
    if (__OFSUB__(v21, v28))
    {
      goto LABEL_96;
    }

    v26 = (v21 - v28 + a3);
    __DataStorage._length.getter();
    if (!v26)
    {
      goto LABEL_110;
    }

    goto LABEL_15;
  }

  v95[0] = v19;
  LOWORD(v95[1]) = v20;
  BYTE2(v95[1]) = BYTE2(v20);
  BYTE3(v95[1]) = BYTE3(v20);
  BYTE4(v95[1]) = BYTE4(v20);
  BYTE5(v95[1]) = BYTE5(v20);
LABEL_17:
  v29 = sub_10010CD7C(v95, 1uLL);
  sub_10007676C(v21, v22);
LABEL_18:
  if (!v29[2])
  {
    goto LABEL_93;
  }

  v96[0] = *(v29 + 8);
  *(v96 + 3) = *(v29 + 35);
  v30 = *(v29 + 39);

  v92 = v30;
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = 2;
  }

  v32 = &v18[-v17];
  if (!v17)
  {
    v32 = 0;
  }

  if ((v32 & 0x8000000000000000) != 0 || v32 < v31 + 2 * v31)
  {
    sub_10000CA2C();
    swift_allocError();
    v51 = 51;
LABEL_67:
    *v50 = v51;
    *(v50 + 8) = 0;
    *(v50 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v33 = v18;
  if (!v92)
  {
    if (v17)
    {
      sub_1000D5D10(v17, v18, 3);
      v53 = v52;
      v91 = a3;
      v18 = v54;
      v55 = sub_1001128D0(v17, 3);
      a3 = v55;
      v57 = v56;
      v58 = v56 >> 62;
      if ((v56 >> 62) > 1)
      {
        if (v58 != 2)
        {
          memset(v95, 0, 14);
          goto LABEL_62;
        }

        v4 = *(v55 + 16);
        v61 = __DataStorage._bytes.getter();
        if (!v61)
        {
LABEL_111:
          __DataStorage._length.getter();
LABEL_112:
          __break(1u);
LABEL_113:
          __DataStorage._length.getter();
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __DataStorage._length.getter();
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v17 = v61;
        v62 = __DataStorage._offset.getter();
        if (__OFSUB__(v4, v62))
        {
          goto LABEL_98;
        }

        v63 = (v4 - v62 + v17);
        __DataStorage._length.getter();
        if (!v63)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v58)
        {
          v95[0] = v55;
          LOWORD(v95[1]) = v56;
          BYTE2(v95[1]) = BYTE2(v56);
          BYTE3(v95[1]) = BYTE3(v56);
          BYTE4(v95[1]) = BYTE4(v56);
          BYTE5(v95[1]) = BYTE5(v56);
LABEL_62:
          v66 = v95;
          goto LABEL_63;
        }

        v4 = v55;
        if (v55 > v55 >> 32)
        {
          goto LABEL_97;
        }

        v64 = __DataStorage._bytes.getter();
        if (!v64)
        {
          goto LABEL_113;
        }

        v17 = v64;
        v65 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v65))
        {
          goto LABEL_99;
        }

        v63 = (a3 - v65 + v17);
        __DataStorage._length.getter();
        if (!v63)
        {
          goto LABEL_114;
        }
      }

      v66 = v63;
LABEL_63:
      v17 = sub_10010AC70(v66, 3);
      sub_10007676C(a3, v57);
      if (v53)
      {
        sub_1000D5D10(v53, v18, 3);
        v67 = sub_1001128D0(v53, 3);
        v69 = v67;
        v70 = v68;
        v71 = v68 >> 62;
        if ((v68 >> 62) > 1)
        {
          if (v71 != 2)
          {
            memset(v95, 0, 14);
            goto LABEL_83;
          }

          v72 = *(v67 + 16);
          v73 = __DataStorage._bytes.getter();
          if (!v73)
          {
            goto LABEL_115;
          }

          v74 = v73;
          v75 = __DataStorage._offset.getter();
          if (!__OFSUB__(v72, v75))
          {
            v76 = (v72 - v75 + v74);
            __DataStorage._length.getter();
            if (v76)
            {
LABEL_81:
              v80 = v76;
              goto LABEL_84;
            }

            goto LABEL_116;
          }
        }

        else
        {
          if (!v71)
          {
            v95[0] = v67;
            LOWORD(v95[1]) = v68;
            BYTE2(v95[1]) = BYTE2(v68);
            BYTE3(v95[1]) = BYTE3(v68);
            BYTE4(v95[1]) = BYTE4(v68);
            BYTE5(v95[1]) = BYTE5(v68);
LABEL_83:
            v80 = v95;
LABEL_84:
            a3 = sub_10010AC70(v80, 3);
            sub_10007676C(v69, v70);
            v18 = "ADC1 found EP frequency range.";
            v81 = v94;
            if (qword_100173CB8 != -1)
            {
              goto LABEL_100;
            }

            goto LABEL_85;
          }

          if (v67 <= v67 >> 32)
          {
            v77 = __DataStorage._bytes.getter();
            if (!v77)
            {
LABEL_117:
              result = __DataStorage._length.getter();
              __break(1u);
              goto LABEL_118;
            }

            v78 = v77;
            v79 = __DataStorage._offset.getter();
            if (!__OFSUB__(v69, v79))
            {
              v76 = (v69 - v79 + v78);
              result = __DataStorage._length.getter();
              if (v76)
              {
                goto LABEL_81;
              }

LABEL_118:
              __break(1u);
              return result;
            }

            goto LABEL_106;
          }

          __break(1u);
        }

        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }
    }

LABEL_66:
    sub_10000CA2C();
    swift_allocError();
    v51 = 57;
    goto LABEL_67;
  }

  v91 = a3;
  a3 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!v17)
    {
      sub_10000CA2C();
      swift_allocError();
      v60 = 57;
LABEL_50:
      *v59 = v60;
      *(v59 + 8) = 0;
      *(v59 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    v18 = &v33[-v17];
    if (&v33[-v17] < 3)
    {
      sub_10000CA2C();
      swift_allocError();
      v60 = 56;
      goto LABEL_50;
    }

    v93 = v16;
    v34 = *v17;
    v4 = *(v17 + 1);
    LODWORD(v94) = *(v17 + 2);
    v95[0] = _swiftEmptyArrayStorage;
    sub_100046824(0, 3, 0);
    v35 = v95[0];
    v37 = *(v95[0] + 16);
    v36 = *(v95[0] + 24);
    v38 = v36 >> 1;
    v39 = v37 + 1;
    if (v36 >> 1 <= v37)
    {
      sub_100046824((v36 > 1), v37 + 1, 1);
      v35 = v95[0];
      v36 = *(v95[0] + 24);
      v38 = v36 >> 1;
    }

    *(v35 + 16) = v39;
    *(v35 + v37 + 32) = v34;
    v40 = v37 + 2;
    if (v38 < (v37 + 2))
    {
      sub_100046824((v36 > 1), v37 + 2, 1);
      v35 = v95[0];
      v36 = *(v95[0] + 24);
      v38 = v36 >> 1;
    }

    *(v35 + 16) = v40;
    *(v35 + v39 + 32) = v4;
    v41 = v37 + 3;
    if (v38 < (v37 + 3))
    {
      sub_100046824((v36 > 1), v37 + 3, 1);
      v42 = v95[0];
      *(v95[0] + 16) = v41;
      v42[v40 + 32] = v94;
      goto LABEL_36;
    }

    v42 = v95[0];
    *(v95[0] + 16) = v41;
    v42[v40 + 32] = v94;
    if (v37 > 0x7FFFFFFFFFFFFFFCLL)
    {
      break;
    }

LABEL_36:
    v43 = v42[34];
    v44 = v42[33];
    v45 = v42[32];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100025FF8(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v47 = *(v12 + 2);
    v46 = *(v12 + 3);
    if (v47 >= v46 >> 1)
    {
      result = sub_100025FF8((v46 > 1), v47 + 1, 1, v12);
      v12 = result;
    }

    a3 = (a3 + 1);
    v33 = &v18[v17];
    v17 += 3;
    v48 = (v43 << 16) | (v44 << 8) | v45;
    *(v12 + 2) = v47 + 1;
    v49 = &v12[24 * v47];
    *(v49 + 4) = v48;
    *(v49 + 5) = v48;
    *(v49 + 6) = 0;
    v16 = v93;
    if (a3 == v92)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_93:
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
LABEL_100:
  swift_once();
  v81 = v94;
LABEL_85:
  v82 = (v18 - 32);
  v83 = sub_10000A1BC(v81, qword_1001794F0);
  sub_10000A2A4(v83, v12);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for AUALog(0);
  v85 = sub_10000A1BC(v84, qword_100179508);
  sub_100039AA0(1, v12, 0xD00000000000001ELL, (v82 | 0x8000000000000000));
  sub_10000C9D0(v12);
  v86 = *(v17 + 16);
  if (v86 < 3)
  {
    __break(1u);
    goto LABEL_102;
  }

  v4 = *(v17 + 34);
  v85 = *(v17 + 33);
  v82 = *(v17 + 32);

  v86 = *(a3 + 16);
  if (v86 < 3)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v82 |= (v4 << 16) | (v85 << 8);
  v87 = (*(a3 + 34) << 16) | (*(a3 + 33) << 8);
  v88 = *(a3 + 32);

  v4 = v87 | v88;
  result = sub_100025FF8(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = result;
  v17 = *(result + 16);
  v86 = *(result + 24);
  v85 = v17 + 1;
  if (v17 >= v86 >> 1)
  {
LABEL_103:
    result = sub_100025FF8((v86 > 1), v85, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v85;
  v89 = &v12[24 * v17];
  *(v89 + 4) = v82;
  *(v89 + 5) = v4;
  *(v89 + 6) = 1;
LABEL_91:
  v90 = v91;
  *v91 = v96[0];
  *(v90 + 3) = *(v96 + 3);
  *(v90 + 7) = v92;
  *(v90 + 1) = v12;
  return result;
}

uint64_t static ADC1AssembledFormatTypeIDescriptor.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  if ((sub_10006EC38(a1, a5) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(a2, a3, a6, a7))
  {
    return 0;
  }

  return sub_1000E46CC(a4, a8);
}

void ADC1AssembledFormatTypeIDescriptor.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt a3, __int16 a4, uint64_t a5)
{
  v9 = sub_100068360(a2);
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      sub_10001EDEC(v11, v17);
      AnyHashable.hash(into:)();
      sub_10001E070(v17);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  USBDescriptor.hash(into:)(a1, a3, a4);
  v12 = *(a5 + 16);
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v13 = (a5 + 48);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      v13 += 3;
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v16);
      --v12;
    }

    while (v12);
  }
}

Swift::Int ADC1AssembledFormatTypeIDescriptor.hashValue.getter(uint64_t a1, Swift::UInt a2, __int16 a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  ADC1AssembledFormatTypeIDescriptor.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_1000ECEE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  ADC1AssembledFormatTypeIDescriptor.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000ECF58()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  ADC1AssembledFormatTypeIDescriptor.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

uint64_t sub_1000ECFB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v9 = *(a2 + 24);
  if ((sub_10006EC38(*a1, *a2) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v6, v7 | (v8 << 8)))
  {
    return 0;
  }

  return sub_1000E46CC(v5, v9);
}

uint64_t sub_1000ED068@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v5 = v3;
  v9 = type metadata accessor for LogID(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_58;
  }

  v91 = v11;
  result = sub_1000D5D10(a1, a2, 8);
  if (v3)
  {
    return result;
  }

  v17 = v15;
  v89 = v16;
  v18 = sub_1001128D0(a1, 8);
  v20 = v18;
  v21 = v19;
  v22 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v22 != 2)
    {
      memset(v92, 0, 14);
      goto LABEL_17;
    }

    v5 = a3;
    a3 = *(v18 + 16);
    v23 = __DataStorage._bytes.getter();
    if (!v23)
    {
LABEL_98:
      __DataStorage._length.getter();
LABEL_99:
      __break(1u);
LABEL_100:
      __DataStorage._length.getter();
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v4 = v23;
    v24 = __DataStorage._offset.getter();
    if (__OFSUB__(a3, v24))
    {
      goto LABEL_86;
    }

    v25 = (a3 - v24 + v4);
    __DataStorage._length.getter();
    if (!v25)
    {
      goto LABEL_99;
    }

LABEL_15:
    v28 = sub_10010CDA8(v25, 1uLL);
    v4 = 0;
    sub_10007676C(v20, v21);
    a3 = v5;
    goto LABEL_18;
  }

  if (v22)
  {
    v5 = a3;
    a3 = v18;
    if (v18 > v18 >> 32)
    {
      goto LABEL_85;
    }

    v26 = __DataStorage._bytes.getter();
    if (!v26)
    {
      goto LABEL_100;
    }

    v4 = v26;
    v27 = __DataStorage._offset.getter();
    if (__OFSUB__(v20, v27))
    {
      goto LABEL_87;
    }

    v25 = (v20 - v27 + v4);
    __DataStorage._length.getter();
    if (!v25)
    {
      goto LABEL_101;
    }

    goto LABEL_15;
  }

  v92[0] = v18;
  LOWORD(v92[1]) = v19;
  BYTE2(v92[1]) = BYTE2(v19);
  BYTE3(v92[1]) = BYTE3(v19);
  BYTE4(v92[1]) = BYTE4(v19);
  BYTE5(v92[1]) = BYTE5(v19);
LABEL_17:
  v28 = sub_10010CDA8(v92, 1uLL);
  v4 = 0;
  sub_10007676C(v20, v21);
LABEL_18:
  if (!v28[2])
  {
    goto LABEL_84;
  }

  v93[0] = *(v28 + 8);
  *(v93 + 3) = *(v28 + 35);
  v5 = *(v28 + 39);

  v90 = v5;
  if (!v5)
  {
    if (!v17)
    {
      goto LABEL_58;
    }

    sub_1000D5D10(v17, v89, 3);
    v47 = v46;
    v88 = a3;
    a3 = v48;
    v49 = sub_1001128D0(v17, 3);
    v4 = v49;
    v51 = v50;
    v52 = v50 >> 62;
    if ((v50 >> 62) > 1)
    {
      if (v52 != 2)
      {
        memset(v92, 0, 14);
        goto LABEL_54;
      }

      v5 = *(v49 + 16);
      v55 = __DataStorage._bytes.getter();
      if (!v55)
      {
LABEL_102:
        __DataStorage._length.getter();
LABEL_103:
        __break(1u);
LABEL_104:
        __DataStorage._length.getter();
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __DataStorage._length.getter();
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v17 = v55;
      v56 = __DataStorage._offset.getter();
      if (__OFSUB__(v5, v56))
      {
        goto LABEL_89;
      }

      v57 = (v5 - v56 + v17);
      __DataStorage._length.getter();
      if (!v57)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (!v52)
      {
        v92[0] = v49;
        LOWORD(v92[1]) = v50;
        BYTE2(v92[1]) = BYTE2(v50);
        BYTE3(v92[1]) = BYTE3(v50);
        BYTE4(v92[1]) = BYTE4(v50);
        BYTE5(v92[1]) = BYTE5(v50);
LABEL_54:
        v60 = v92;
        goto LABEL_55;
      }

      v5 = v49;
      if (v49 > v49 >> 32)
      {
        goto LABEL_88;
      }

      v58 = __DataStorage._bytes.getter();
      if (!v58)
      {
        goto LABEL_104;
      }

      v17 = v58;
      v59 = __DataStorage._offset.getter();
      if (__OFSUB__(v4, v59))
      {
        goto LABEL_90;
      }

      v57 = (v4 - v59 + v17);
      __DataStorage._length.getter();
      if (!v57)
      {
        goto LABEL_105;
      }
    }

    v60 = v57;
LABEL_55:
    v17 = sub_10010AC70(v60, 3);
    sub_10007676C(v4, v51);
    if (v47)
    {
      sub_1000D5D10(v47, a3, 3);
      v62 = sub_1001128D0(v47, 3);
      v64 = v62;
      v65 = v63;
      v66 = v63 >> 62;
      if ((v63 >> 62) > 1)
      {
        if (v66 != 2)
        {
          memset(v92, 0, 14);
          goto LABEL_74;
        }

        v67 = *(v62 + 16);
        v68 = __DataStorage._bytes.getter();
        if (!v68)
        {
          goto LABEL_106;
        }

        v69 = v68;
        v70 = __DataStorage._offset.getter();
        if (!__OFSUB__(v67, v70))
        {
          v71 = (v67 - v70 + v69);
          __DataStorage._length.getter();
          if (v71)
          {
LABEL_72:
            v75 = v71;
            goto LABEL_75;
          }

          goto LABEL_107;
        }
      }

      else
      {
        if (!v66)
        {
          v92[0] = v62;
          LOWORD(v92[1]) = v63;
          BYTE2(v92[1]) = BYTE2(v63);
          BYTE3(v92[1]) = BYTE3(v63);
          BYTE4(v92[1]) = BYTE4(v63);
          BYTE5(v92[1]) = BYTE5(v63);
LABEL_74:
          v75 = v92;
LABEL_75:
          v4 = sub_10010AC70(v75, 3);
          v87 = 0;
          sub_10007676C(v64, v65);
          a3 = "ADC1 found EP frequency range.";
          v76 = v91;
          if (qword_100173CB8 != -1)
          {
            goto LABEL_91;
          }

          goto LABEL_76;
        }

        if (v62 <= v62 >> 32)
        {
          v72 = __DataStorage._bytes.getter();
          if (!v72)
          {
LABEL_108:
            result = __DataStorage._length.getter();
            __break(1u);
            goto LABEL_109;
          }

          v73 = v72;
          v74 = __DataStorage._offset.getter();
          if (!__OFSUB__(v64, v74))
          {
            v71 = (v64 - v74 + v73);
            result = __DataStorage._length.getter();
            if (v71)
            {
              goto LABEL_72;
            }

LABEL_109:
            __break(1u);
            return result;
          }

          goto LABEL_97;
        }

        __break(1u);
      }

      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

LABEL_58:
    sub_10000CA2C();
    swift_allocError();
    *v61 = 57;
    *(v61 + 8) = 0;
    *(v61 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v87 = 0;
  v88 = a3;
  v4 = 0;
  v13 = _swiftEmptyArrayStorage;
  v29 = v89;
  while (1)
  {
    if (!v17)
    {
      sub_10000CA2C();
      swift_allocError();
      v54 = 57;
LABEL_42:
      *v53 = v54;
      *(v53 + 8) = 0;
      *(v53 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    v30 = v29 - v17;
    if ((v29 - v17) < 3)
    {
      sub_10000CA2C();
      swift_allocError();
      v54 = 56;
      goto LABEL_42;
    }

    v31 = *v17;
    v5 = *(v17 + 1);
    LODWORD(v91) = *(v17 + 2);
    v92[0] = _swiftEmptyArrayStorage;
    sub_100046824(0, 3, 0);
    v32 = v92[0];
    a3 = *(v92[0] + 16);
    v33 = *(v92[0] + 24);
    v34 = v33 >> 1;
    v35 = a3 + 1;
    if (v33 >> 1 <= a3)
    {
      sub_100046824((v33 > 1), a3 + 1, 1);
      v32 = v92[0];
      v33 = *(v92[0] + 24);
      v34 = v33 >> 1;
    }

    *(v32 + 16) = v35;
    *(v32 + a3 + 32) = v31;
    v36 = a3 + 2;
    if (v34 < (a3 + 2))
    {
      sub_100046824((v33 > 1), a3 + 2, 1);
      v32 = v92[0];
      v33 = *(v92[0] + 24);
      v34 = v33 >> 1;
    }

    *(v32 + 16) = v36;
    *(v32 + v35 + 32) = v5;
    v37 = a3 + 3;
    if (v34 < (a3 + 3))
    {
      sub_100046824((v33 > 1), a3 + 3, 1);
      v38 = v92[0];
      *(v92[0] + 16) = v37;
      v38[v36 + 32] = v91;
      goto LABEL_29;
    }

    v38 = v92[0];
    *(v92[0] + 16) = v37;
    v38[v36 + 32] = v91;
    if (a3 > 0x7FFFFFFFFFFFFFFCLL)
    {
      break;
    }

LABEL_29:
    v39 = v38[34];
    v40 = v38[33];
    v41 = v38[32];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100025FF8(0, *(v13 + 2) + 1, 1, v13);
      v13 = result;
    }

    v43 = *(v13 + 2);
    v42 = *(v13 + 3);
    if (v43 >= v42 >> 1)
    {
      result = sub_100025FF8((v42 > 1), v43 + 1, 1, v13);
      v13 = result;
    }

    v4 = (v4 + 1);
    v29 = v17 + v30;
    v17 += 3;
    v44 = (v39 << 16) | (v40 << 8) | v41;
    *(v13 + 2) = v43 + 1;
    v45 = &v13[24 * v43];
    *(v45 + 4) = v44;
    *(v45 + 5) = v44;
    *(v45 + 6) = 0;
    if (v4 == v90)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
  v76 = v91;
LABEL_76:
  v77 = a3 - 32;
  v78 = sub_10000A1BC(v76, qword_1001794F0);
  sub_10000A2A4(v78, v13);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for AUALog(0);
  v80 = sub_10000A1BC(v79, qword_100179508);
  sub_100039AA0(1, v13, 0xD00000000000001ELL, (v77 | 0x8000000000000000));
  sub_10000C9D0(v13);
  v81 = *(v17 + 16);
  if (v81 < 3)
  {
    __break(1u);
    goto LABEL_93;
  }

  v5 = *(v17 + 34);
  v80 = *(v17 + 33);
  v77 = *(v17 + 32);

  v81 = *(v4 + 16);
  if (v81 < 3)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v77 |= (v5 << 16) | (v80 << 8);
  v82 = (*(v4 + 34) << 16) | (*(v4 + 33) << 8);
  v83 = *(v4 + 32);

  v5 = v82 | v83;
  result = sub_100025FF8(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = result;
  v17 = *(result + 16);
  v81 = *(result + 24);
  v80 = v17 + 1;
  if (v17 >= v81 >> 1)
  {
LABEL_94:
    result = sub_100025FF8((v81 > 1), v80, 1, v13);
    v13 = result;
  }

  *(v13 + 2) = v80;
  v84 = &v13[24 * v17];
  *(v84 + 4) = v77;
  *(v84 + 5) = v5;
  *(v84 + 6) = 1;
LABEL_82:
  v85 = v88;
  *v88 = v93[0];
  *(v85 + 3) = *(v93 + 3);
  *(v85 + 7) = v90;
  *(v85 + 1) = v13;
  return result;
}

uint64_t sub_1000EDA7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1000E9538(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000EDBA4(v5, v6, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000EDBA4(v5, v6, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1000E9538(v8, v4, a3);
}