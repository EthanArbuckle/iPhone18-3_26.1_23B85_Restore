char *sub_162384()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPlaylistTraits])
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = [v0 traits];
  v2 = v1;
  if ((v1 & 0x20) != 0)
  {
    v3 = sub_6A6AC(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v6 = *(v3 + 3);
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v10 = v3;
      v11 = *(v3 + 2);
      v12 = sub_6A6AC((v6 > 1), v5 + 1, 1, v10);
      v5 = v11;
      v3 = v12;
    }

    *(v3 + 2) = v7;
    v3[v5 + 32] = 4;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v3 = _swiftEmptyArrayStorage;
  if ((v1 & 0x10) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_6A6AC((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v3[v9 + 32] = 3;
  }

LABEL_14:
  v13 = v3;

  sub_162F48(&v13);

  return v13;
}

char *sub_162544(void *a1)
{
  if (![v1 hasLoadedValueForKey:*a1])
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = [v1 traits];
  v3 = v2;
  if ((v2 & 2) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v4 = sub_6A6AC(0, 1, 1, _swiftEmptyArrayStorage);
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  v8 = v6 + 1;
  if (v6 >= v7 >> 1)
  {
    v20 = v4;
    v21 = *(v4 + 2);
    v22 = sub_6A6AC((v7 > 1), v6 + 1, 1, v20);
    v6 = v21;
    v4 = v22;
  }

  *(v4 + 2) = v8;
  v4[v6 + 32] = 6;
  if ((v3 & 4) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6A6AC(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v10 = *(v4 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v23 = v4;
      v24 = *(v4 + 2);
      v25 = sub_6A6AC((v10 > 1), v9 + 1, 1, v23);
      v9 = v24;
      v4 = v25;
    }

    *(v4 + 2) = v11;
    v4[v9 + 32] = 5;
  }

LABEL_14:
  if ((v3 & 0x20) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6A6AC(0, *(v4 + 2) + 1, 1, v4);
    }

    v15 = *(v4 + 2);
    v16 = *(v4 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v29 = v4;
      v30 = *(v4 + 2);
      v31 = sub_6A6AC((v16 > 1), v15 + 1, 1, v29);
      v15 = v30;
      v4 = v31;
    }

    *(v4 + 2) = v17;
    v4[v15 + 32] = 3;
    if ((v3 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_6A6AC(0, *(v4 + 2) + 1, 1, v4);
  }

  v12 = *(v4 + 2);
  v13 = *(v4 + 3);
  v14 = v12 + 1;
  if (v12 >= v13 >> 1)
  {
    v26 = v4;
    v27 = *(v4 + 2);
    v28 = sub_6A6AC((v13 > 1), v12 + 1, 1, v26);
    v12 = v27;
    v4 = v28;
  }

  *(v4 + 2) = v14;
  v4[v12 + 32] = 4;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v3)
  {
LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6A6AC(0, *(v4 + 2) + 1, 1, v4);
    }

    v19 = *(v4 + 2);
    v18 = *(v4 + 3);
    if (v19 >= v18 >> 1)
    {
      v4 = sub_6A6AC((v18 > 1), v19 + 1, 1, v4);
    }

    *(v4 + 2) = v19 + 1;
    v4[v19 + 32] = 7;
  }

LABEL_33:
  v32 = v4;

  sub_162F48(&v32);

  return v32;
}

char *sub_16286C()
{
  v1 = [v0 traits];
  v2 = v1;
  if ((v1 & 2) == 0)
  {
    v3 = _swiftEmptyArrayStorage;
    if ((v1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v3 = sub_6A6AC(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_6A6AC((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v3[v5 + 32] = 6;
  if ((v2 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_6A6AC((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v3[v7 + 32] = 5;
  }

LABEL_12:
  if ((v2 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_6A6AC((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v3[v9 + 32] = 4;
    if ((v2 & 0x10) == 0)
    {
LABEL_14:
      if ((v2 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = sub_6A6AC((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v11 + 1;
  v3[v11 + 32] = 3;
  if (v2)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_6A6AC(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    if (v13 >= v12 >> 1)
    {
      v3 = sub_6A6AC((v12 > 1), v13 + 1, 1, v3);
    }

    *(v3 + 2) = v13 + 1;
    v3[v13 + 32] = 7;
  }

LABEL_31:
  v15 = v3;

  sub_162F48(&v15);

  return v15;
}

char *sub_162B74(uint64_t (*a1)(uint64_t))
{
  v2 = sub_AB8550();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v41 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v42 = &v30[-v7];
  v8 = __chkstk_darwin(v6);
  v10 = &v30[-v9];
  v11 = a1(v8);
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {

    return _swiftEmptyArrayStorage;
  }

  v15 = *(v3 + 16);
  v14 = v3 + 16;
  v13 = v15;
  v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
  v32 = v11;
  v17 = v11 + v16;
  v18 = *(v14 + 56);
  v38 = (v14 + 72);
  v39 = v18;
  v37 = enum case for AudioVariant.dolbyAtmos(_:);
  v36 = enum case for AudioVariant.dolbyAudio(_:);
  v35 = enum case for AudioVariant.lossless(_:);
  v34 = enum case for AudioVariant.highResolutionLossless(_:);
  v33 = enum case for AudioVariant.lossyStereo(_:);
  v31 = enum case for AudioVariant.spatialAudio(_:);
  v40 = v14;
  v19 = (v14 - 8);
  v20 = _swiftEmptyArrayStorage;
  do
  {
    v13(v10, v17, v2);
    v21 = v42;
    v13(v42, v10, v2);
    v22 = v41;
    v13(v41, v21, v2);
    v23 = (*v38)(v22, v2);
    if (v23 == v37)
    {
      v24 = 3;
    }

    else if (v23 == v36)
    {
      v24 = 4;
    }

    else if (v23 == v35)
    {
      v24 = 6;
    }

    else
    {
      if (v23 != v34)
      {
        if (v23 == v33)
        {
          v28 = *v19;
          (*v19)(v10, v2);
        }

        else
        {
          if (v23 == v31)
          {
            v24 = 8;
            goto LABEL_12;
          }

          v28 = *v19;
          (*v19)(v10, v2);
          v28(v41, v2);
        }

        v28(v42, v2);
        goto LABEL_17;
      }

      v24 = 5;
    }

LABEL_12:
    v25 = *v19;
    (*v19)(v10, v2);
    v25(v42, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_6A6AC(0, *(v20 + 2) + 1, 1, v20);
    }

    v27 = *(v20 + 2);
    v26 = *(v20 + 3);
    if (v27 >= v26 >> 1)
    {
      v20 = sub_6A6AC((v26 > 1), v27 + 1, 1, v20);
    }

    *(v20 + 2) = v27 + 1;
    v20[v27 + 32] = v24;
LABEL_17:
    v17 += v39;
    --v12;
  }

  while (v12);

  return v20;
}

Swift::Int sub_162F48(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_163DB8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_162FB4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_162FB4(uint64_t *a1)
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
      sub_1631D8(v7, v8, a1, v4);
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
    return sub_1630AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1630AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6:
            if (v10 == 6)
            {
              goto LABEL_4;
            }

            v11 = 3;
            goto LABEL_27;
          case 7:
            if (v10 == 7)
            {
              goto LABEL_4;
            }

            v11 = 4;
            goto LABEL_27;
          case 8:
            if (v10 == 8)
            {
              goto LABEL_4;
            }

            v11 = 5;
            goto LABEL_27;
        }
      }

      else
      {
        switch(v7)
        {
          case 3:
            if (v10 == 3)
            {
              goto LABEL_4;
            }

            v11 = 0;
            goto LABEL_27;
          case 4:
            if (v10 == 4)
            {
              goto LABEL_4;
            }

            v11 = 1;
            goto LABEL_27;
          case 5:
            if (v10 == 5)
            {
              goto LABEL_4;
            }

            v11 = 2;
            goto LABEL_27;
        }
      }

      if (v10 - 3 > 5)
      {
        if (v7 >= v10)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }

      v11 = 6;
LABEL_27:
      result = (v10 - 3);
      if (v10 - 3 >= 6)
      {
        v12 = 6;
      }

      else
      {
        v12 = (v10 - 3);
      }

      if (v11 >= v12)
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_31:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      *v9 = v10;
      *--v9 = v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1631D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_175:
    v4 = *v90;
    if (!*v90)
    {
      goto LABEL_216;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_177:
      v82 = v7 + 2;
      v83 = v7[2];
      if (v83 >= 2)
      {
        while (*a3)
        {
          v84 = &v7[2 * v83];
          v85 = *v84;
          v86 = &v82[2 * v83];
          v87 = v86[1];
          sub_1639A0((*a3 + *v84), (*a3 + *v86), *a3 + v87, v4);
          if (v92)
          {
          }

          if (v87 < v85)
          {
            goto LABEL_202;
          }

          if (v83 - 2 >= *v82)
          {
            goto LABEL_203;
          }

          *v84 = v85;
          v84[1] = v87;
          v88 = *v82 - v83;
          if (*v82 < v83)
          {
            goto LABEL_204;
          }

          v92 = 0;
          v83 = *v82 - 1;
          result = memmove(v86, v86 + 2, 16 * v88);
          *v82 = v83;
          if (v83 <= 1)
          {
          }
        }

        goto LABEL_214;
      }
    }

LABEL_210:
    result = sub_163DA4(v7);
    v7 = result;
    goto LABEL_177;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  result = 6;
  v89 = a4;
  while (2)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_81;
    }

    v9 = *(*a3 + v6);
    v10 = *(*a3 + v8);
    if (v9 > 5)
    {
      switch(v9)
      {
        case 6u:
          if (v10 != 6)
          {
            v11 = 3;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 7u:
          if (v10 != 7)
          {
            v11 = 4;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 8u:
          if (v10 != 8)
          {
            v11 = 5;
            goto LABEL_28;
          }

LABEL_25:
          v12 = 0;
          goto LABEL_35;
      }
    }

    else
    {
      switch(v9)
      {
        case 3u:
          if (v10 != 3)
          {
            v11 = 0;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 4u:
          if (v10 != 4)
          {
            v11 = 1;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 5u:
          if (v10 != 5)
          {
            v11 = 2;
LABEL_28:
            LODWORD(v14) = v10 - 3;
            if (v14 >= 6)
            {
              v14 = 6;
            }

            else
            {
              v14 = v14;
            }

            v13 = v11 >= v14;
            goto LABEL_32;
          }

          goto LABEL_25;
      }
    }

    if (v10 - 3 < 6)
    {
      v11 = 6;
      goto LABEL_28;
    }

    v13 = v9 >= v10;
LABEL_32:
    v12 = !v13;
LABEL_35:
    v6 = v8 + 2;
    if (v8 + 2 >= v5)
    {
      goto LABEL_72;
    }

    do
    {
      v15 = *(*a3 + v6);
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6u:
            if (v9 == 6)
            {
              goto LABEL_37;
            }

            v16 = 3;
            goto LABEL_60;
          case 7u:
            if (v9 == 7)
            {
              goto LABEL_37;
            }

            v16 = 4;
            goto LABEL_60;
          case 8u:
            if (v9 == 8)
            {
              goto LABEL_37;
            }

            v16 = 5;
            goto LABEL_60;
        }
      }

      else
      {
        switch(v15)
        {
          case 3u:
            if (v9 == 3)
            {
              goto LABEL_37;
            }

            v16 = 0;
            goto LABEL_60;
          case 4u:
            if (v9 == 4)
            {
              goto LABEL_37;
            }

            v16 = 1;
            goto LABEL_60;
          case 5u:
            if (v9 == 5)
            {
              goto LABEL_37;
            }

            v16 = 2;
            goto LABEL_60;
        }
      }

      if ((v9 - 3) < 6u)
      {
        v16 = 6;
LABEL_60:
        LODWORD(v17) = (v9 - 3);
        if (v17 >= 6)
        {
          v17 = 6;
        }

        else
        {
          v17 = v17;
        }

        v18 = v16 >= v17;
        goto LABEL_64;
      }

      v18 = v15 >= v9;
      if (v15 == v9)
      {
LABEL_37:
        if (v12)
        {
          goto LABEL_73;
        }

        goto LABEL_38;
      }

LABEL_64:
      v19 = !v18;
      if (v12 != v19)
      {
        goto LABEL_72;
      }

LABEL_38:
      ++v6;
      LOBYTE(v9) = v15;
    }

    while (v5 != v6);
    v6 = v5;
LABEL_72:
    if (v12)
    {
LABEL_73:
      if (v6 < v8)
      {
        goto LABEL_207;
      }

      if (v8 < v6)
      {
        v20 = v6 - 1;
        v21 = v8;
        do
        {
          if (v21 != v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_213;
            }

            v24 = *(v23 + v21);
            *(v23 + v21) = *(v23 + v20);
            *(v23 + v20) = v24;
          }
        }

        while (++v21 < v20--);
        v5 = a3[1];
      }
    }

LABEL_81:
    if (v6 >= v5)
    {
      goto LABEL_124;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_206;
    }

    if (v6 - v8 >= a4)
    {
      goto LABEL_124;
    }

    if (__OFADD__(v8, a4))
    {
      goto LABEL_208;
    }

    if (v8 + a4 < v5)
    {
      v5 = v8 + a4;
    }

    if (v5 < v8)
    {
LABEL_209:
      __break(1u);
      goto LABEL_210;
    }

    if (v6 == v5)
    {
LABEL_124:
      if (v6 < v8)
      {
        goto LABEL_205;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_6A6C0(0, v7[2] + 1, 1, v7);
        v7 = result;
      }

      v35 = v7[2];
      v34 = v7[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        result = sub_6A6C0((v34 > 1), v35 + 1, 1, v7);
        v7 = result;
      }

      v7[2] = v36;
      v4 = (v7 + 4);
      v37 = &v7[2 * v35 + 4];
      *v37 = v8;
      v37[1] = v6;
      v38 = *v90;
      if (!*v90)
      {
        goto LABEL_215;
      }

      if (!v35)
      {
LABEL_3:
        v5 = a3[1];
        a4 = v89;
        result = 6;
        if (v6 >= v5)
        {
          goto LABEL_175;
        }

        continue;
      }

      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = v7[4];
          v41 = v7[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_144:
          if (v43)
          {
            goto LABEL_192;
          }

          v56 = &v7[2 * v36];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_194;
          }

          v62 = &v4[16 * v39];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_197;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_199;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_166;
          }

          goto LABEL_159;
        }

        if (v36 < 2)
        {
          goto LABEL_200;
        }

        v66 = &v7[2 * v36];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_159:
        if (v61)
        {
          goto LABEL_196;
        }

        v69 = &v4[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_198;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_166:
        if (v39 - 1 >= v36)
        {
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
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        if (!*a3)
        {
          goto LABEL_212;
        }

        v77 = &v4[16 * v39 - 16];
        v78 = *v77;
        v79 = &v4[16 * v39];
        v80 = *(v79 + 1);
        sub_1639A0((*a3 + *v77), (*a3 + *v79), *a3 + v80, v38);
        if (v92)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_187;
        }

        if (v39 > v7[2])
        {
          goto LABEL_188;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = v7[2];
        if (v39 >= v81)
        {
          goto LABEL_189;
        }

        v92 = 0;
        v36 = v81 - 1;
        result = memmove(&v4[16 * v39], v79 + 16, 16 * (v81 - 1 - v39));
        v7[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v4[16 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_190;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_191;
      }

      v51 = &v7[2 * v36];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_193;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_195;
      }

      if (v55 >= v47)
      {
        v73 = &v4[16 * v39];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_201;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_166;
      }

      goto LABEL_144;
    }

    break;
  }

  v25 = *a3;
  v26 = (*a3 + v6);
  v27 = v8 - v6;
  while (2)
  {
    v28 = *(v25 + v6);
    v29 = v27;
    v30 = v26;
LABEL_92:
    v31 = *(v30 - 1);
    if (v28 > 5)
    {
      switch(v28)
      {
        case 6:
          if (v31 == 6)
          {
            goto LABEL_90;
          }

          v32 = 3;
          break;
        case 7:
          if (v31 == 7)
          {
            goto LABEL_90;
          }

          v32 = 4;
          break;
        case 8:
          if (v31 == 8)
          {
            goto LABEL_90;
          }

          v32 = 5;
          break;
        default:
          goto LABEL_107;
      }

LABEL_113:
      if (v31 - 3 >= 6)
      {
        v33 = 6;
      }

      else
      {
        v33 = (v31 - 3);
      }

      if (v32 < v33)
      {
        goto LABEL_117;
      }

LABEL_90:
      ++v6;
      ++v26;
      --v27;
      if (v6 == v5)
      {
        v6 = v5;
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  switch(v28)
  {
    case 3:
      if (v31 == 3)
      {
        goto LABEL_90;
      }

      v32 = 0;
      goto LABEL_113;
    case 4:
      if (v31 == 4)
      {
        goto LABEL_90;
      }

      v32 = 1;
      goto LABEL_113;
    case 5:
      if (v31 == 5)
      {
        goto LABEL_90;
      }

      v32 = 2;
      goto LABEL_113;
  }

LABEL_107:
  if (v31 - 3 <= 5)
  {
    v32 = 6;
    goto LABEL_113;
  }

  if (v28 >= v31)
  {
    goto LABEL_90;
  }

LABEL_117:
  if (v25)
  {
    *v30 = v31;
    *--v30 = v28;
    v13 = __CFADD__(v29++, 1);
    if (v13)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
  return result;
}

uint64_t sub_1639A0(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v11 > 5)
        {
          switch(v11)
          {
            case 6u:
              if (v12 == 6)
              {
                goto LABEL_36;
              }

              v13 = 3;
              goto LABEL_28;
            case 7u:
              if (v12 == 7)
              {
                goto LABEL_36;
              }

              v13 = 4;
              goto LABEL_28;
            case 8u:
              if (v12 == 8)
              {
                goto LABEL_36;
              }

              v13 = 5;
              goto LABEL_28;
          }
        }

        else
        {
          switch(v11)
          {
            case 3u:
              if (v12 == 3)
              {
                goto LABEL_36;
              }

              v13 = 0;
              goto LABEL_28;
            case 4u:
              if (v12 == 4)
              {
                goto LABEL_36;
              }

              v13 = 1;
              goto LABEL_28;
            case 5u:
              if (v12 == 5)
              {
                goto LABEL_36;
              }

              v13 = 2;
              goto LABEL_28;
          }
        }

        if (v12 - 3 > 5)
        {
          if (v11 < v12)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }

        v13 = 6;
LABEL_28:
        if (v12 - 3 >= 6)
        {
          v14 = 6;
        }

        else
        {
          v14 = (v12 - 3);
        }

        if (v13 < v14)
        {
LABEL_32:
          v15 = v6 + 1;
          if (v7 >= v6 && v7 < v15)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_36:
        v16 = v4 + 1;
        LOBYTE(v11) = *v4;
        v15 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v16)
          {
            goto LABEL_41;
          }
        }

LABEL_40:
        *v7 = v11;
LABEL_41:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_92;
    }

LABEL_91:
    if (v6 >= v10)
    {
      goto LABEL_92;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_90:
    if (v6 != v4)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  do
  {
    v17 = v6 - 1;
    --v5;
    v18 = v10;
    while (1)
    {
      v20 = *--v18;
      v19 = v20;
      v21 = *v17;
      if (v20 > 5)
      {
        break;
      }

      if (v19 == 3)
      {
        if (v21 != 3)
        {
          v22 = 0;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      if (v19 != 4)
      {
        if (v19 == 5)
        {
          if (v21 != 5)
          {
            v22 = 2;
            goto LABEL_74;
          }

          goto LABEL_78;
        }

LABEL_68:
        if (v21 - 3 <= 5)
        {
          v22 = 6;
          goto LABEL_74;
        }

        if (v19 < v21)
        {
          goto LABEL_82;
        }

        goto LABEL_78;
      }

      if (v21 != 4)
      {
        v22 = 1;
        goto LABEL_74;
      }

LABEL_78:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v19;
      }

      --v5;
      v10 = v18;
      if (v18 <= v4)
      {
        v10 = v18;
        goto LABEL_90;
      }
    }

    if (v19 == 6)
    {
      if (v21 != 6)
      {
        v22 = 3;
        goto LABEL_74;
      }

      goto LABEL_78;
    }

    if (v19 != 7)
    {
      if (v19 == 8)
      {
        if (v21 != 8)
        {
          v22 = 5;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      goto LABEL_68;
    }

    if (v21 == 7)
    {
      goto LABEL_78;
    }

    v22 = 4;
LABEL_74:
    if (v21 - 3 >= 6)
    {
      v23 = 6;
    }

    else
    {
      v23 = (v21 - 3);
    }

    if (v22 >= v23)
    {
      goto LABEL_78;
    }

LABEL_82:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v21;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v17 > v7);
  v6 = v17;
  if (v17 == v4)
  {
    goto LABEL_91;
  }

LABEL_92:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_163D18(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_163DA4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

BOOL sub_163E30(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    switch(a1)
    {
      case 3u:
        return a2 == 3;
      case 4u:
        return a2 == 4;
      case 5u:
        return a2 == 5;
    }

LABEL_16:
    if (a2 - 3 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 6)
  {
    return a2 == 6;
  }

  if (a1 != 7)
  {
    if (a1 == 8)
    {
      return a2 == 8;
    }

    goto LABEL_16;
  }

  return a2 == 7;
}

BOOL sub_163EF0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    switch(a1)
    {
      case 6u:
        if (a2 == 6)
        {
          return 0;
        }

        v3 = 3;
        goto LABEL_29;
      case 7u:
        if (a2 == 7)
        {
          return 0;
        }

        v3 = 4;
        goto LABEL_29;
      case 8u:
        if (a2 == 8)
        {
          return 0;
        }

        v3 = 5;
        goto LABEL_29;
    }
  }

  else
  {
    switch(a1)
    {
      case 3u:
        if (a2 == 3)
        {
          return 0;
        }

        v3 = 0;
        goto LABEL_29;
      case 4u:
        if (a2 == 4)
        {
          return 0;
        }

        v3 = 1;
        goto LABEL_29;
      case 5u:
        if (a2 == 5)
        {
          return 0;
        }

        v3 = 2;
        goto LABEL_29;
    }
  }

  if ((a2 - 3) >= 6u)
  {
    return a1 < a2;
  }

  v3 = 6;
LABEL_29:
  if ((a2 - 3) >= 6u)
  {
    v4 = 6;
  }

  else
  {
    v4 = (a2 - 3);
  }

  return v3 < v4;
}

_UNKNOWN **sub_164018()
{
  sub_6D5C0(0, 3, 0);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_6D5C0((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < (v1 + 2))
  {
    sub_6D5C0((v0 > 1), v1 + 2, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  if (v2 < (v1 + 3))
  {
    sub_6D5C0((v0 > 1), v1 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v1 + 3;
  *(&_swiftEmptyArrayStorage[4] + v4) = 2;
  sub_19694(_swiftEmptyArrayStorage);
  return &off_CF0360;
}

uint64_t getEnumTagSinglePayload for AudioTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1642A0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1642B4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1642D4()
{
  result = qword_DF2790;
  if (!qword_DF2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2790);
  }

  return result;
}

unint64_t sub_164370()
{
  result = qword_DF27A8;
  if (!qword_DF27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF27A8);
  }

  return result;
}

void sub_164494(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSGridModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel] = v5;
    v7 = v5;
  }
}

uint64_t sub_1645B8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1657A8, v12);
}

uint64_t sub_164688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_164928(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication27JSGridModelRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel];
  if (v2)
  {
    v40 = v2;
    v3 = [v1 sectionProperties];
    if (v3)
    {
      v4 = v3;
      v5 = type metadata accessor for JSModelGridSectionBuilder();
      v6 = objc_allocWithZone(v5);
      v7 = &v6[OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_initializedProperties];
      v7[2] = 0;
      *v7 = 2;
      *&v6[OBJC_IVAR____TtC16MusicApplication25JSModelGridSectionBuilder_requestedProperties] = v4;
      v53.receiver = v6;
      v53.super_class = v5;
      v8 = objc_msgSendSuper2(&v53, "init");
    }

    else
    {
      v8 = 0;
    }

    v9 = [v1 itemProperties];
    v39 = v1;
    if (v9)
    {
      v10 = v9;
      v11 = [v1 itemKind];
      if (!v11 || (v12 = v11, [v11 modelClass], v12, swift_getObjCClassMetadata(), (v13 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v13 = [objc_opt_self() emptyPropertySet];
      }

      v14 = [v10 propertySetByCombiningWithPropertySet:{v13, v1}];

      v15 = objc_allocWithZone(type metadata accessor for JSModelGridItemBuilder());
      v16 = sub_4E1C54(v14);
    }

    else
    {
      v16 = 0;
    }

    v52 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v51 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v17 = JSGrid.sections.getter();
    v18 = v17;
    if (v17 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v20 = 0;
      v45 = v8;
      v46 = v18 & 0xC000000000000001;
      v41 = v18 + 32;
      v42 = v18 & 0xFFFFFFFFFFFFFF8;
      v43 = i;
      v44 = v18;
      while (1)
      {
        if (v46)
        {
          v21 = sub_35FC8C(v20, v18);
        }

        else
        {
          if (v20 >= *(v42 + 16))
          {
            goto LABEL_42;
          }

          v21 = *(v41 + 8 * v20);
        }

        v22 = v21;
        if (__OFADD__(v20++, 1))
        {
          break;
        }

        if (v8)
        {
          v47 = sub_1A5D14(v21);
          [v52 appendSection:?];
          [v51 appendSection:v22];
          v24 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items;
          swift_beginAccess();
          v25 = *&v22[v24];
          if (v25 >> 62)
          {
            v26 = sub_ABB060();
            v48 = v22;
            v49 = v20;
            if (v26)
            {
LABEL_24:

              v27 = 0;
              while (1)
              {
                if ((v25 & 0xC000000000000001) != 0)
                {
                  v31 = sub_360C78(v27, v25);
                }

                else
                {
                  if (v27 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_40;
                  }

                  v31 = *(v25 + 8 * v27 + 32);
                }

                v18 = v31;
                v32 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  break;
                }

                if (v16)
                {
                  v33 = [a1 userIdentity];
                  if (!v33)
                  {
                    __break(1u);
                    goto LABEL_45;
                  }

                  v28 = v33;
                  v29 = sub_4DFEA4(v18, v33);

                  v8 = &selRef__authenticateReturningError_;
                  [v51 appendItem:v18];
                  v30 = v29;
                  [v52 appendItem:v30];
                }

                ++v27;
                if (v32 == v26)
                {
                  goto LABEL_15;
                }
              }

              __break(1u);
LABEL_40:
              __break(1u);
              break;
            }
          }

          else
          {
            v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
            v48 = v22;
            v49 = v20;
            if (v26)
            {
              goto LABEL_24;
            }
          }

LABEL_15:

          v18 = v44;
          v8 = v45;
          i = v43;
          v20 = v49;
          if (v49 == v43)
          {
            goto LABEL_44;
          }
        }

        else
        {

          if (v20 == i)
          {
            goto LABEL_44;
          }
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    v34 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v39 unpersonalizedContentDescriptors:v52];
    [v34 setRepresentedObjects:v51];
    v35 = swift_allocObject();
    *(v35 + 16) = v39;
    *(v35 + 24) = a1;
    aBlock[4] = sub_1656BC;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_27_0;
    v36 = _Block_copy(aBlock);
    v37 = v39;
    v38 = a1;

    [v34 performWithResponseHandler:v36];

    _Block_release(v36);
  }

  else
  {
LABEL_45:
    __break(1u);
  }
}

void sub_164E9C(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSGridModelResponse());
    v9 = a1;
    v13 = sub_1650F8(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication27JSGridModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication27JSGridModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_1650F8(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_sectionsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSGridModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel];
    v12 = v11;
    v13 = *JSGrid.sectionsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_sectionsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_165524(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1655EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_16563C()
{

  return swift_deallocObject();
}

uint64_t sub_16567C()
{

  return swift_deallocObject();
}

uint64_t sub_1656C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1656FC()
{

  return swift_deallocObject();
}

uint64_t sub_165750()
{

  return swift_deallocObject();
}

uint64_t sub_1657B8()
{

  return swift_deallocObject();
}

void sub_16580C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetail);
  v2 = type metadata accessor for JSTVShowEpisodeDetailModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail] = v1;
  v113.receiver = v3;
  v113.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v113, "init");
  v6 = objc_opt_self();
  v7 = v5;
  v110 = v7;
  v8 = [v6 standardUserDefaults];
  LOBYTE(v5) = NSUserDefaults.showAllTVShows.getter();

  if (v5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = [objc_opt_self() kindWithVariants:v9];
  [v7 setItemKind:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_B00DA0;
  *(v106 + 32) = sub_AB92A0();
  *(v106 + 40) = v11;
  *(v106 + 48) = sub_AB92A0();
  *(v106 + 56) = v12;
  *(v106 + 64) = sub_AB92A0();
  *(v106 + 72) = v13;
  *(v106 + 80) = sub_AB92A0();
  *(v106 + 88) = v14;
  *(v106 + 96) = sub_AB92A0();
  *(v106 + 104) = v15;
  *(v106 + 112) = sub_AB92A0();
  *(v106 + 120) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v108 = inited;
  v109 = inited + 32;
  *(inited + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_AF85F0;
  v107 = v21;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF85E0;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  *(v23 + 48) = sub_AB92A0();
  *(v23 + 56) = v25;
  *(v23 + 64) = sub_AB92A0();
  *(v23 + 72) = v26;
  *(v23 + 80) = sub_AB92A0();
  *(v23 + 88) = v27;
  *(v23 + 96) = sub_AB92A0();
  *(v23 + 104) = v28;
  *(v23 + 112) = sub_AB92A0();
  *(v23 + 120) = v29;
  *(v23 + 128) = sub_AB92A0();
  *(v23 + 136) = v30;
  *(v23 + 144) = sub_AB92A0();
  *(v23 + 152) = v31;
  *(v23 + 160) = sub_AB92A0();
  *(v23 + 168) = v32;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_AF8820;
  *(v33 + 32) = sub_AB92A0();
  *(v33 + 40) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_AF4EC0;
  *(v35 + 32) = sub_AB92A0();
  *(v35 + 40) = v36;
  isa = sub_AB9740().super.isa;
  v38 = objc_opt_self();
  v39 = [v38 propertySetWithProperties:isa];

  *(v33 + 48) = v39;
  *(v33 + 56) = sub_AB92A0();
  *(v33 + 64) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_AF85F0;
  *(v41 + 32) = sub_AB92A0();
  *(v41 + 40) = v42;
  *(v41 + 48) = sub_AB92A0();
  *(v41 + 56) = v43;
  v44 = sub_AB9740().super.isa;
  v45 = [v38 propertySetWithProperties:v44];

  *(v33 + 72) = v45;
  *(v33 + 80) = sub_AB92A0();
  *(v33 + 88) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_AF85F0;
  *(v47 + 32) = sub_AB92A0();
  *(v47 + 40) = v48;
  *(v47 + 48) = sub_AB92A0();
  *(v47 + 56) = v49;
  v50 = sub_AB9740().super.isa;
  v51 = [v38 propertySetWithProperties:v50];

  *(v33 + 96) = v51;
  sub_96EA4(v33);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v52 = objc_allocWithZone(MPPropertySet);
  v53 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v54 = sub_AB8FD0().super.isa;

  v55 = [v52 initWithProperties:v53 relationships:v54];

  sub_13C80(0, &unk_DE9C00);
  v56 = sub_10F414();
  v57 = [v55 propertySetByCombiningWithPropertySet:v56];

  v58 = sub_10F414();
  v59 = [v57 propertySetByCombiningWithPropertySet:v58];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v62 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v63 = [v61 propertySetByCombiningWithPropertySet:v62];

  v64 = [v59 propertySetByCombiningWithPropertySet:v63];
  v107[6] = v64;
  v107[7] = sub_AB92A0();
  v107[8] = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_B00DB0;
  *(v66 + 32) = sub_AB92A0();
  *(v66 + 40) = v67;
  *(v66 + 48) = sub_AB92A0();
  *(v66 + 56) = v68;
  *(v66 + 64) = sub_AB92A0();
  *(v66 + 72) = v69;
  *(v66 + 80) = sub_AB92A0();
  *(v66 + 88) = v70;
  *(v66 + 96) = sub_AB92A0();
  *(v66 + 104) = v71;
  *(v66 + 112) = sub_AB92A0();
  *(v66 + 120) = v72;
  *(v66 + 128) = sub_AB92A0();
  *(v66 + 136) = v73;
  *(v66 + 144) = sub_AB92A0();
  *(v66 + 152) = v74;
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_AF4EC0;
  *(v75 + 32) = sub_AB92A0();
  *(v75 + 40) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_AF85F0;
  *(v77 + 32) = sub_AB92A0();
  *(v77 + 40) = v78;
  *(v77 + 48) = sub_AB92A0();
  *(v77 + 56) = v79;
  v80 = sub_AB9740().super.isa;
  v81 = [v38 propertySetWithProperties:v80];

  *(v75 + 48) = v81;
  sub_96EA4(v75);
  swift_setDeallocating();
  sub_12E1C(v75 + 32, &unk_DE8E80);
  v82 = objc_allocWithZone(MPPropertySet);
  v83 = sub_AB9740().super.isa;

  v84 = sub_AB8FD0().super.isa;

  v85 = [v82 initWithProperties:v83 relationships:v84];

  sub_13C80(0, &unk_E03780);
  v86 = sub_10F414();
  v87 = [v85 propertySetByCombiningWithPropertySet:v86];

  v88 = sub_10F414();
  v89 = [v87 propertySetByCombiningWithPropertySet:v88];

  v90 = swift_getObjCClassFromMetadata();
  v91 = [v90 requiredLibraryNavigationHandlerProperties];
  v92 = [v90 requiredStoreNavigationHandlerProperties];
  v93 = [v91 propertySetByCombiningWithPropertySet:v92];

  v94 = [v89 propertySetByCombiningWithPropertySet:v93];
  v107[9] = v94;
  sub_96EA4(v107);
  swift_setDeallocating();
  swift_arrayDestroy();
  v95 = objc_allocWithZone(MPPropertySet);
  v96 = sub_AB9740().super.isa;

  v97 = sub_AB8FD0().super.isa;

  v98 = [v95 initWithProperties:v96 relationships:v97];

  *(v108 + 48) = v98;
  sub_96EA4(v108);
  swift_setDeallocating();
  sub_12E1C(v109, &unk_DE8E80);
  v99 = objc_allocWithZone(MPPropertySet);
  v100 = sub_AB9740().super.isa;

  v101 = sub_AB8FD0().super.isa;

  v102 = [v99 initWithProperties:v100 relationships:v101];

  [v110 setItemProperties:v102];
  v103 = swift_allocObject();
  *(v103 + 16) = v111;
  aBlock[4] = sub_169C44;
  aBlock[5] = v103;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_49;
  v104 = _Block_copy(aBlock);
  v105 = v111;

  [v110 performWithResponseHandler:v104];
  _Block_release(v104);
}

void sub_166518()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor:qword_E71898];
    type metadata accessor for TVShowEpisodeDetailView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *&v0[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
    *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView] = v4;
    v6 = v4;

    v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_isHeaderLockupBlurEnabled] = 0;
    *(*&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView] + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled) = 0;
    sub_25DF4C();
    *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_artworkCachingReference] = *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_artworkCachingReference];
    swift_retain_n();

    sub_22B15C();

    [v3 addSubview:v6];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = &v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playButtonHandler];
    v9 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playButtonHandler];
    *v8 = sub_169CE4;
    v8[1] = v7;

    sub_17654(v9);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = &v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showNameButtonHandler];
    v12 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showNameButtonHandler];
    *v11 = sub_169CEC;
    v11[1] = v10;

    sub_17654(v12);

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = &v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
    v15 = *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
    *v14 = sub_169CF4;
    v14[1] = v13;

    sub_17654(v15);

    *&v6[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalStatusControllableDelegate + 8] = &off_D127D8;
    swift_unknownObjectWeakAssign();
    sub_167A64();
  }

  else
  {
    __break(1u);
  }
}

void sub_166808()
{
  v0 = sub_AB3430();
  v74 = *(v0 - 8);
  v75 = v0;
  __chkstk_darwin(v0);
  v73 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v72 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v17 - 8);
  v76 = &v65 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  v70 = v2;
  v21 = v3;
  v22 = *&Strong[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem];
  if (!v22)
  {

    return;
  }

  v69 = v5;
  v23 = v22;
  v71 = JSTVShowEpisodeDetail.item.getter();
  if (!v71)
  {

    return;
  }

  v24 = v23;
  v25 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  v26 = MPModelObject.bestIdentifier(for:)(*v25, 1u);
  if (!v27)
  {

    return;
  }

  v67 = v22;
  v83 = &type metadata for String;
  *&v82 = v26;
  *(&v82 + 1) = v27;
  v28 = [v24 innerObject];
  if (v28)
  {
    v29 = v24;
    v30 = v28;
    v31 = MPModelObject.metricsDictionary.getter();

    v24 = v29;
  }

  else
  {
    v31 = 0;
  }

  v32 = v21;
  sub_9ACFC(&v82, v84);
  v85 = 256;
  v86 = 2;
  v87 = v31;
  v33 = *JSMetricsController.shared.unsafeMutableAddressor();
  JSMetricsController.recordNativeEvent(_:)();

  v65 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  memset(v88, 0, sizeof(v88));
  v89 = 0;
  v90 = xmmword_AF7710;
  v66 = v20;
  PresentationSource.init(viewController:position:)(v66, v88, &v82);
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v68 = v24;
  v34 = [v24 innerObject];
  sub_2641C4(v34, v20, static MPMediaLibraryFilteringOptions.none.getter, 0, v76);

  sub_15F84(v80, &v77, &unk_DE8E30);
  v35 = v70;
  if (*(&v78 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v36 = _s30CollectionViewSelectionHandlerVMa();
    v37 = swift_dynamicCast();
    v38 = *(v36 - 8);
    (*(v38 + 56))(v10, v37 ^ 1u, 1, v36);
    v39 = (*(v38 + 48))(v10, 1, v36);
    v40 = v69;
    if (v39 != 1)
    {
      (*(v32 + 16))(v16, &v10[*(v36 + 20)], v35);
      sub_2D6C0(v10, _s30CollectionViewSelectionHandlerVMa);
      v41 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_12E1C(&v77, &unk_DE8E30);
    v42 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
    v40 = v69;
  }

  sub_12E1C(v10, &qword_E037A0);
  v41 = 1;
LABEL_16:
  (*(v32 + 56))(v16, v41, 1, v35);
  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43 && (v44 = v43, sub_12B2FC(), v46 = v45, v48 = v47, v44, v46))
  {
    ObjectType = swift_getObjectType();
    (*(v48 + 8))(ObjectType, v48);
    v51 = v50;
    swift_unknownObjectRelease();
    sub_15F84(v16, v14, &unk_DE8E20);
    if ((*(v32 + 48))(v14, 1, v35) == 1)
    {
      sub_12E1C(v14, &unk_DE8E20);
      v77 = 0u;
      v78 = 0u;
      v79 = 0;
    }

    else
    {
      (*(v32 + 32))(v72, v14, v35);
      sub_2D668();
      sub_ABAD10();
    }

    v53 = swift_getObjectType();
    v54 = v73;
    sub_3B8F68();
    v52 = sub_21CCAC(1, v54, &v77, v53, v51);
    (*(v74 + 8))(v54, v75);
    sub_12E1C(&v77, &qword_DF2BD0);
    sub_12E1C(v16, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v16, &unk_DE8E20);
    v52 = 0;
  }

  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    sub_12AFE8();
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  sub_15F28(&v82, &v77);
  sub_15F84(v80, (v7 + 104), &unk_DE8E30);
  v59 = v76;
  sub_15F84(v76, &v7[*(v40 + 28)], &unk_DEA510);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 8) = 1;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  sub_2D594(&v77, v7);
  *(v7 + 12) = v67;
  v60 = *v65;
  *(&v78 + 1) = v40;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v77);
  sub_2D604(v7, boxed_opaque_existential_0);
  v62 = v68;
  v63 = v60;
  v64 = v71;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v71, 0, v52, v58, &v77);

  sub_12E1C(v59, &unk_DEA510);
  sub_12E1C(v80, &unk_DE8E30);
  sub_1611C(&v82);
  sub_169BB8(v84);
  sub_2D6C0(v7, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v77, &unk_DE8E40);
}

void sub_16714C(void *a1)
{
  v2 = sub_AB3430();
  v70 = *(v2 - 8);
  __chkstk_darwin(v2);
  v69 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB3820();
  v71 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v18 - 8);
  v72 = &v63 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v63 = v2;
  v67 = v6;
  v22 = *(Strong + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetail);
  v23 = OBJC_IVAR____TtC11MusicJSCore21JSTVShowEpisodeDetail_containerDetailLink;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!v24)
  {

    return;
  }

  v66 = v24;
  v64 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v25 = v21;
  [a1 bounds];
  v87[0] = a1;
  v87[1] = v26;
  v87[2] = v27;
  v87[3] = v28;
  v87[4] = v29;
  v88 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v87, 15, v79);
  v83[0] = v79[0];
  v83[1] = v79[1];
  v84 = v80;
  v85 = v81;
  v86 = v82;
  v30 = a1;
  v65 = v25;
  PresentationSource.init(viewController:position:)(v25, v83, v78);
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  (*(*(v31 - 8) + 56))(v72, 1, 1, v31);
  sub_15F84(v76, &v73, &unk_DE8E30);
  if (*(&v74 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v32 = _s30CollectionViewSelectionHandlerVMa();
    v33 = swift_dynamicCast();
    v34 = *(v32 - 8);
    (*(v34 + 56))(v11, v33 ^ 1u, 1, v32);
    v35 = (*(v34 + 48))(v11, 1, v32);
    v36 = v67;
    v37 = v71;
    if (v35 != 1)
    {
      (*(v71 + 16))(v17, &v11[*(v32 + 20)], v4);
      sub_2D6C0(v11, _s30CollectionViewSelectionHandlerVMa);
      v38 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_12E1C(&v73, &unk_DE8E30);
    v39 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
    v36 = v67;
    v37 = v71;
  }

  sub_12E1C(v11, &qword_E037A0);
  v38 = 1;
LABEL_9:
  (*(v37 + 56))(v17, v38, 1, v4);
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40 && (v41 = v40, sub_12B2FC(), v43 = v42, v45 = v44, v41, v43))
  {
    ObjectType = swift_getObjectType();
    (*(v45 + 8))(ObjectType, v45);
    v48 = v47;
    swift_unknownObjectRelease();
    sub_15F84(v17, v15, &unk_DE8E20);
    if ((*(v37 + 48))(v15, 1, v4) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20);
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
    }

    else
    {
      (*(v37 + 32))(v68, v15, v4);
      sub_2D668();
      sub_ABAD10();
    }

    v50 = swift_getObjectType();
    v51 = v69;
    sub_3B8F68();
    v49 = sub_21CCAC(1, v51, &v73, v50, v48);
    (*(v70 + 8))(v51, v63);
    sub_12E1C(&v73, &qword_DF2BD0);
    sub_12E1C(v17, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E20);
    v49 = 0;
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_12AFE8();
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  sub_15F28(v78, &v73);
  sub_15F84(v76, (v8 + 104), &unk_DE8E30);
  v56 = v36;
  v57 = &v8[*(v36 + 28)];
  v58 = v72;
  sub_15F84(v72, v57, &unk_DEA510);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 1;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  sub_2D594(&v73, v8);
  *(v8 + 12) = 0;
  v59 = *v64;
  *(&v74 + 1) = v56;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v73);
  sub_2D604(v8, boxed_opaque_existential_0);
  v61 = v59;
  v62 = v66;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v66, 0, v49, v55, &v73);

  sub_12E1C(v58, &unk_DEA510);
  sub_12E1C(v76, &unk_DE8E30);
  sub_1611C(v78);
  sub_2D6C0(v8, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v73, &unk_DE8E40);
}

void sub_1679E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    [v2 setNeedsLayout];
  }
}

void sub_167A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = v1;
  sub_1689FC();
  v5 = [v3 itemType];
  if (v5 == &dword_8)
  {
    v6 = &selRef_episode;
  }

  else
  {
    if (v5 != &dword_C)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = &selRef_movie;
  }

  v7 = [v3 *v6];
LABEL_10:
  v8 = v7;
  sub_2294C0(v7, 0);
}

void sub_167B9C()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 traitCollection];
    v13 = *&v0[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
    if (v13)
    {
      v14 = v13;
      sub_229208(v5, v7, v9, v11);
      if (*&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem])
      {
        sub_22921C(v12, v9);
        v16 = v15;
      }

      else
      {
        v16 = 1.0;
      }
    }

    else
    {
      v16 = 1.0;
    }

    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    [v1 setPreferredContentSize:{CGRectGetWidth(v18), v16}];
  }

  else
  {
    __break(1u);
  }
}

void sub_167D34(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
  if (v3)
  {
    v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_isHeaderLockupBlurEnabled] = 1;
    *(*&v3[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView] + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled) = 1;
    v4 = v3;
    sub_25DF4C();
  }
}

void sub_167E20(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse];
  if (a1)
  {
    if (v3 == a1 || v3 == 0)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = [v3 results];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 firstItem];

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 contentItem];
      v10 = *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem];
      *&v1[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem] = v9;
      if (v10)
      {
        if (v9 == v10)
        {
          v12 = v10;
          swift_unknownObjectRelease();
LABEL_20:

          return;
        }

LABEL_17:
        v12 = v10;
        v11 = v9;
        if ([v1 isViewLoaded])
        {
          sub_167A64();
          sub_1689FC();
        }

        swift_unknownObjectRelease();

        goto LABEL_20;
      }

      if (v9)
      {
        goto LABEL_17;
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_167F9C(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_169CDC, v3);
}

void sub_16806C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
    v6 = a2;
    v7 = v5;
    sub_417214(a2);
    sub_167E20(v5);
  }
}

void sub_1680F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7F40);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v58 - v9;
  v11 = OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem;
  v12 = *&v3[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem];
  if (!v12)
  {
    return;
  }

  v13 = [v12 episode];
  if (!v13)
  {
    v19 = *&v3[v11];
    if (!v19)
    {
      return;
    }

    v13 = [v19 movie];
    if (!v13)
    {
      return;
    }
  }

  v63 = v13;
  v14 = [v13 relativeModelObjectForStoreLibraryPersonalization];
  if (!v14)
  {
    v18 = v63;
    goto LABEL_11;
  }

  v15 = *&v3[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
  v62 = v14;
  if (v15)
  {
    v16 = (v15 + OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_libraryAddKeepLocalCompositeStatus);
    v17 = v16[4];
    if ((v17 & 0xFE) != 0xF8)
    {
      v20 = *v16;
      v58 = v16[1];
      v59 = v20;
      v21 = v16[5];
      v60 = v16[3];
      v61 = v21;
      v22 = v16[2];
      if ((v17 & 0xFE) != 0x7A && v17 >> 1 == 127)
      {
        v23 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
        v24 = MPModelObject.bestIdentifier(for:)(*v23, 0);
        if (v25)
        {
          v68[3] = &type metadata for String;
          v68[0] = v24;
          v68[1] = v25;
          v26 = MPModelObject.metricsDictionary.getter();
          v69 = 0;
          v70 = 0;
          v71 = v26;
          v27 = *JSMetricsController.shared.unsafeMutableAddressor();
          JSMetricsController.recordNativeEvent(_:)();
          sub_169BB8(v68);
        }
      }

      v28 = [objc_allocWithZone(MPMutableSectionedCollection) init];
      v29 = sub_AB9260();
      [v28 appendSection:v29];

      [v28 appendItem:v62];
      v30 = type metadata accessor for LibraryAddKeepLocalHandlingController();
      v31 = v28;
      [a3 bounds];
      v84[0] = a3;
      v84[1] = v32;
      v84[2] = v33;
      v84[3] = v34;
      v84[4] = v35;
      v85 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v84, 15, v72);
      v80[0] = v72[0];
      v80[1] = v72[1];
      v81 = v73;
      v82 = v74;
      v83 = v75;
      v36 = a3;
      *&v37 = PresentationSource.init(viewController:position:)(v3, v80, v68).n128_u64[0];
      if ((v17 & 0xFE) == 0x7A)
      {
        goto LABEL_19;
      }

      v38 = v17 >> 1;
      if (v38 <= 0x7C)
      {
        if (v38 != 62)
        {
          if (v38 == 63)
          {
            goto LABEL_26;
          }

LABEL_29:
          if (v17 < 0)
          {
            MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)(v61, v7);
            v53 = sub_AB8230();
            v54 = *(v53 - 8);
            if ((*(v54 + 48))(v7, 1, v53) == 1)
            {

              sub_1611C(v68);
              v55 = &qword_DE7F40;
              v56 = v7;
            }

            else
            {
              MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter(v76);
              (*(v54 + 8))(v7, v53);
              if (!v78)
              {
                goto LABEL_19;
              }

              v64[0] = v76[0];
              v64[1] = v76[1];
              v64[2] = v76[2];
              v65 = v77;
              v66 = v78;
              v67 = v79;
              v57 = Alert.uiAlertController.getter();
              PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v57, 1, 1, 0, 0);

              sub_1611C(v68);
              v55 = &unk_DE7F48;
              v56 = v76;
            }

            sub_12E1C(v56, v55);
            goto LABEL_21;
          }

          if ([v31 firstItem])
          {
            objc_opt_self();
            v42 = swift_dynamicCastObjCClass();
            if (v42)
            {
              v43 = v42;
              v44 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
              [v44 setModelObject:v43];
              [v44 setEnableState:3];
              v45 = [objc_opt_self() sharedDeviceLibraryController];
              [v45 performKeepLocalChangeRequest:v44 withRelatedModelObjects:0];

              sub_1611C(v68);
              swift_unknownObjectRelease();

              return;
            }

            goto LABEL_43;
          }

LABEL_19:

LABEL_20:
          sub_1611C(v68);
LABEL_21:

          return;
        }

        if (![v31 firstItem])
        {
          goto LABEL_19;
        }

        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v49 = v48;
          if (([v48 libraryRemovalSupportedOptions] & 2) != 0)
          {
            sub_2BA534(v49, 0);
          }

          else
          {
            sub_2BAC50(v49, 0);
          }

          goto LABEL_50;
        }
      }

      else
      {
        if (v38 == 125)
        {
          if ([v31 firstItem])
          {
            objc_opt_self();
            v46 = swift_dynamicCastObjCClass();
            if (!v46)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v46 = 0;
          }

          v50 = sub_AB9990();
          (*(*(v50 - 8) + 56))(v10, 1, 1, v50);
          sub_15F28(v68, v64);
          sub_AB9940();
          v51 = sub_AB9930();
          v52 = swift_allocObject();
          *(v52 + 16) = v51;
          *(v52 + 24) = &protocol witness table for MainActor;
          sub_17704(v64, v52 + 32);
          sub_DBDC8(0, 0, v10, &unk_AF79B0, v52);

          sub_1611C(v68);
          goto LABEL_46;
        }

        if (v38 != 126)
        {
          if (v38 == 127)
          {
LABEL_26:
            v39 = sub_AB9990();
            (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
            sub_15F28(v68, v64);
            v40 = swift_allocObject();
            *(v40 + 16) = 0;
            *(v40 + 24) = 0;
            *(v40 + 32) = v30;
            *(v40 + 40) = v28;
            v41 = v58;
            *(v40 + 48) = v59;
            *(v40 + 56) = v41;
            *(v40 + 64) = v22;
            *(v40 + 72) = v60;
            *(v40 + 80) = v17;
            *(v40 + 81) = v76[0];
            *(v40 + 84) = *(v76 + 3);
            *(v40 + 96) = 0;
            *(v40 + 104) = 0;
            *(v40 + 88) = v61;
            sub_17704(v64, v40 + 112);
            sub_DC0B8(0, 0, v10, &unk_AF79C0, v40);
            sub_1611C(v68);

LABEL_46:

            return;
          }

          goto LABEL_29;
        }

        if (![v31 firstItem])
        {
          goto LABEL_19;
        }

        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          sub_2B9FD0(v47, 0, v68);
LABEL_50:

          sub_1611C(v68);
          swift_unknownObjectRelease();
          return;
        }
      }

LABEL_43:

      swift_unknownObjectRelease();
      goto LABEL_20;
    }
  }

  v18 = v62;
LABEL_11:
}

void sub_1689FC()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_tvShowEpisodeDetailView];
  if (!v1)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse];
  if (!v2)
  {
    return;
  }

  v183 = v1;
  v3 = [v2 results];
  if (!v3)
  {
LABEL_138:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 firstItem];

  if (!v5)
  {
    v12 = v183;
    goto LABEL_15;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem];
    if (v7)
    {
      v8 = v6;
      v179 = v0;
      v180 = v7;
      v10 = MPModelStoreBrowseContentItem.kind.getter();
      v11 = v9;
      if (v9 != 8)
      {
        if (v9 != 12)
        {
          if (v9 == 255)
          {

            swift_unknownObjectRelease();
            v12 = v180;
LABEL_15:

            return;
          }

LABEL_132:
          v170 = [v179 view];
          [v170 setNeedsLayout];

          sub_3EB30(v10, v11);
          swift_unknownObjectRelease();

          return;
        }

        v13 = [v8 headlineText];
        if (v13)
        {
          v14 = v13;
          v15 = sub_AB92A0();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0xE000000000000000;
        }

        v23 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
        v24 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
        v25 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline + 8];
        *v23 = v15;
        v23[1] = v17;
        sub_22A254(v24, v25);

        v26 = [v8 titleText];
        if (v26)
        {
          v27 = v26;
          v28 = sub_AB92A0();
          v30 = v29;

          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (v31)
          {
LABEL_39:
            v47 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
            v48 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
            v49 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title + 8];
            *v47 = v28;
            v47[1] = v30;
            sub_22A3A4(v48, v49);

            v50 = [v8 showNameText];
            if (v50)
            {
              v51 = v50;
              v52 = sub_AB92A0();
              v54 = v53;

              v55 = HIBYTE(v54) & 0xF;
              if ((v54 & 0x2000000000000000) == 0)
              {
                v55 = v52 & 0xFFFFFFFFFFFFLL;
              }

              if (v55)
              {
                v56 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
                v57 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
                v58 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName + 8];
                *v56 = v52;
                v56[1] = v54;
                if ((v57 != v52 || v58 != v54) && (sub_ABB3C0() & 1) == 0)
                {
                  v59 = sub_22A108();

                  String.trim()();

                  v60 = sub_AB9260();

                  [v59 setTitle:v60 forState:0];

                  [v183 setNeedsLayout];
                  v61 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
                  if (v61)
                  {

                    v61(v183);
                    sub_17654(v61);
                  }
                }
              }
            }

            v62 = [v8 descriptionText];
            if (v62)
            {
              v63 = v62;
              v64 = sub_AB92A0();
              v66 = v65;

              v67 = HIBYTE(v66) & 0xF;
              if ((v66 & 0x2000000000000000) == 0)
              {
                v67 = v64 & 0xFFFFFFFFFFFFLL;
              }

              if (v67)
              {
                goto LABEL_57;
              }
            }

            v68 = [v10 descriptionText];
            if (v68)
            {
              v69 = v68;
              v64 = sub_AB92A0();
              v66 = v70;
            }

            else
            {
              v64 = 0;
              v66 = 0xE000000000000000;
            }

LABEL_57:
            v71 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
            v72 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
            v73 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText + 8];
            *v71 = v64;
            v71[1] = v66;
            sub_22A4D8(v72, v73);

            v74 = [v8 episodeInformationItems];
            v177 = v8;
            if (!v74 || (v75 = v74, v76 = sub_AB9760(), v75, v77 = sub_12DAD4(v76), , !v77))
            {
              v81 = _swiftEmptyArrayStorage;
              v92 = v183;
              goto LABEL_88;
            }

            v78 = v77;
            v175 = v10;
            if (v77 >> 62)
            {
              v171 = sub_ABB060();
              v78 = v77;
              v79 = v171;
            }

            else
            {
              v79 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
            }

            v173 = v11;
            if (!v79)
            {
              v81 = _swiftEmptyArrayStorage;
LABEL_87:

              v92 = v183;
              v10 = v175;
              v11 = v173;
LABEL_88:
              *&v92[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_episodeInformationItems] = v81;

              sub_22A608();
              v112 = [v177 backgroundArtworkCatalog];
              if (!v112)
              {
                v112 = [v10 editorialArtworkCatalog];
              }

              v113 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog];
              *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog] = v112;
              v114 = v112;
              v115 = v112;

              v116 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
              v117 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
              v118 = *(v117 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog);
              *(v117 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = v114;
              v119 = v115;

              sub_74EA4(v114);

              v120 = [v10 playbackPosition];
              if (v120)
              {
LABEL_91:
                v121 = v120;
                [v120 bookmarkTime];
                v123 = v122;

                goto LABEL_130;
              }

LABEL_129:
              v123 = 0.0;
LABEL_130:
              [v10 duration];
              v168 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playbackPosition];
              *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_playbackPosition] = v123 / v169;
              if (sub_AB38D0())
              {
                *(*v116 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition) = *v168;
                sub_25DD64();
              }

              goto LABEL_132;
            }

            if (v79 >= 1)
            {
              v80 = 0;
              v181 = v78 & 0xC000000000000001;
              v81 = _swiftEmptyArrayStorage;
              v82 = v78;
              do
              {
                if (v181)
                {
                  v83 = sub_360360(v80, v78);
                }

                else
                {
                  v83 = *(v78 + 8 * v80 + 32);
                }

                v84 = v83;
                v85 = (*&stru_68.segname[swift_isaMask & *v83])();
                v86 = (*(&stru_68.size + (swift_isaMask & *v84)))();
                v88 = v87;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v81 = sub_6B1FC(0, *(v81 + 2) + 1, 1, v81);
                }

                v90 = *(v81 + 2);
                v89 = *(v81 + 3);
                if (v90 >= v89 >> 1)
                {
                  v81 = sub_6B1FC((v89 > 1), v90 + 1, 1, v81);
                }

                *(v81 + 2) = v90 + 1;
                v91 = &v81[24 * v90];
                v91[32] = v85 & 1;
                ++v80;
                *(v91 + 5) = v86;
                *(v91 + 6) = v88;

                v78 = v82;
              }

              while (v79 != v80);
              goto LABEL_87;
            }

            __break(1u);
            goto LABEL_137;
          }
        }

        v32 = [v10 title];
        if (v32)
        {
          v33 = v32;
          v28 = sub_AB92A0();
          v30 = v34;
        }

        else
        {
          v28 = 0;
          v30 = 0xE000000000000000;
        }

        goto LABEL_39;
      }

      v18 = [v8 headlineText];
      if (v18)
      {
        v19 = v18;
        v20 = sub_AB92A0();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v35 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
      v36 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline];
      v37 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headline + 8];
      *v35 = v20;
      v35[1] = v22;
      sub_22A254(v36, v37);

      v38 = [v8 titleText];
      if (v38)
      {
        v39 = v38;
        v40 = sub_AB92A0();
        v42 = v41;

        v43 = HIBYTE(v42) & 0xF;
        if ((v42 & 0x2000000000000000) == 0)
        {
          v43 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v43)
        {
LABEL_75:
          v93 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
          v94 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title];
          v95 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_title + 8];
          *v93 = v40;
          v93[1] = v42;
          sub_22A3A4(v94, v95);

          v96 = [v8 showNameText];
          if (v96)
          {
            v97 = v96;
            v98 = sub_AB92A0();
            v100 = v99;

            v101 = HIBYTE(v100) & 0xF;
            if ((v100 & 0x2000000000000000) == 0)
            {
              v101 = v98 & 0xFFFFFFFFFFFFLL;
            }

            if (v101)
            {
              v102 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
              v103 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
              v104 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName + 8];
              *v102 = v98;
              v102[1] = v100;
              if (v103 == v98 && v104 == v100)
              {
                goto LABEL_99;
              }

LABEL_96:
              if ((sub_ABB3C0() & 1) == 0)
              {
                v127 = sub_22A108();

                String.trim()();

                v128 = sub_AB9260();

                [v127 setTitle:v128 forState:0];

                [v183 setNeedsLayout];
                v129 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_layoutInvalidationHandler];
                if (v129)
                {

                  v129(v183);
                  sub_17654(v129);
                }
              }

LABEL_99:

              v130 = [v8 descriptionText];
              if (v130)
              {
                v131 = v130;
                v132 = sub_AB92A0();
                v134 = v133;

                v135 = HIBYTE(v134) & 0xF;
                if ((v134 & 0x2000000000000000) == 0)
                {
                  v135 = v132 & 0xFFFFFFFFFFFFLL;
                }

                if (v135)
                {
LABEL_107:
                  v139 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
                  v140 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText];
                  v141 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_descriptionText + 8];
                  *v139 = v132;
                  v139[1] = v134;
                  sub_22A4D8(v140, v141);

                  v142 = [v8 episodeInformationItems];
                  v178 = v8;
                  if (v142 && (v143 = v142, v144 = sub_AB9760(), v143, v145 = sub_12DAD4(v144), , v145))
                  {
                    v146 = v145;
                    if (v145 >> 62)
                    {
                      v172 = sub_ABB060();
                      v146 = v145;
                      v147 = v172;
                    }

                    else
                    {
                      v147 = *(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8));
                    }

                    v176 = v10;
                    v174 = v11;
                    if (v147)
                    {
                      if (v147 < 1)
                      {
LABEL_137:
                        __break(1u);
                        goto LABEL_138;
                      }

                      v148 = 0;
                      v182 = v146 & 0xC000000000000001;
                      v149 = _swiftEmptyArrayStorage;
                      v150 = v146;
                      do
                      {
                        if (v182)
                        {
                          v151 = sub_360360(v148, v146);
                        }

                        else
                        {
                          v151 = *(v146 + 8 * v148 + 32);
                        }

                        v152 = v151;
                        v153 = (*&stru_68.segname[swift_isaMask & *v151])();
                        v154 = (*(&stru_68.size + (swift_isaMask & *v152)))();
                        v156 = v155;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v149 = sub_6B1FC(0, *(v149 + 2) + 1, 1, v149);
                        }

                        v158 = *(v149 + 2);
                        v157 = *(v149 + 3);
                        if (v158 >= v157 >> 1)
                        {
                          v149 = sub_6B1FC((v157 > 1), v158 + 1, 1, v149);
                        }

                        *(v149 + 2) = v158 + 1;
                        v159 = &v149[24 * v158];
                        v159[32] = v153 & 1;
                        ++v148;
                        *(v159 + 5) = v154;
                        *(v159 + 6) = v156;

                        v146 = v150;
                      }

                      while (v147 != v148);
                    }

                    else
                    {
                      v149 = _swiftEmptyArrayStorage;
                    }

                    v160 = v183;
                    v10 = v176;
                    v11 = v174;
                  }

                  else
                  {
                    v149 = _swiftEmptyArrayStorage;
                    v160 = v183;
                  }

                  *&v160[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_episodeInformationItems] = v149;

                  sub_22A608();
                  v161 = [v178 backgroundArtworkCatalog];
                  if (!v161)
                  {
                    v161 = [v10 artworkCatalog];
                  }

                  v162 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog];
                  *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_lockupImageArtworkCatalog] = v161;
                  v163 = v161;
                  v164 = v161;

                  v116 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
                  v165 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_headerLockupView];
                  v166 = *(v165 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog);
                  *(v165 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = v163;
                  v167 = v164;

                  sub_74EA4(v163);

                  v120 = [v10 playbackPosition];
                  if (v120)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_129;
                }
              }

              v136 = [v10 descriptionText];
              if (v136)
              {
                v137 = v136;
                v132 = sub_AB92A0();
                v134 = v138;
              }

              else
              {
                v132 = 0;
                v134 = 0xE000000000000000;
              }

              goto LABEL_107;
            }
          }

          v105 = [v10 show];
          if (v105)
          {
            v106 = v105;
            v107 = [v105 title];
            if (v107)
            {
              v108 = v107;
              v109 = sub_AB92A0();
              v111 = v110;

LABEL_94:
              v124 = &v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
              v125 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName];
              v126 = *&v183[OBJC_IVAR____TtC16MusicApplication23TVShowEpisodeDetailView_showName + 8];
              *v124 = v109;
              v124[1] = v111;
              if (v125 == v109 && v126 == v111)
              {
                goto LABEL_99;
              }

              goto LABEL_96;
            }
          }

          v109 = 0;
          v111 = 0xE000000000000000;
          goto LABEL_94;
        }
      }

      v44 = [v10 title];
      if (v44)
      {
        v45 = v44;
        v40 = sub_AB92A0();
        v42 = v46;
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      goto LABEL_75;
    }
  }

  swift_unknownObjectRelease();
}

void sub_1699B8()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication35JSTVShowEpisodeDetailViewController_contentItem);
}

uint64_t sub_169AA8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_169B24()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_169C0C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_169C64()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_169C9C()
{

  return swift_deallocObject();
}

void sub_169CFC(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v29 = sub_AB3470();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v6 = 0;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v23 = (v3 + 8);
    v24 = i;
    v25 = a1;
    while (1)
    {
      if (v27)
      {
        v7 = sub_3624F0(v6, a1);
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v28;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v32 = sub_AB3440();
      v12 = v11;
      (*v23)(v10, v29);
      v13 = [v8 value];
      v14 = sub_AB92A0();
      v16 = v15;

      v17 = v30;
      sub_1A9FC(&v31, v14, v16);

      v18 = *(v17 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 120) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_6B80C(0, *(v18 + 2) + 1, 1, v18);
        *(v30 + 120) = v18;
      }

      v3 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v3 >= v20 >> 1)
      {
        v18 = sub_6B80C((v20 > 1), v3 + 1, 1, v18);
        *(v30 + 120) = v18;
      }

      *(v18 + 2) = v3 + 1;
      v21 = &v18[40 * v3];
      *(v21 + 4) = v32;
      *(v21 + 5) = v12;
      *(v21 + 6) = v14;
      *(v21 + 7) = v16;
      v21[64] = 1;

      ++v6;
      a1 = v25;
      if (v9 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_169F8C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_3624F0(v6, a1);
      }

      else
      {
        if (v6 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_16B110(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_16A080(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE8);
    v1 = sub_ABB0C0();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v11 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v11);
        ++v8;
        if (v4)
        {
          v8 = v11;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v12 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v4)))));
    swift_unknownObjectRetain();
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      break;
    }

    v14 = v13;
    sub_AB92A0();
    sub_ABB5C0();
    sub_AB93F0();
    v15 = sub_ABB610();

    v16 = -1 << v1[32];
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      v10 = v12;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
    v10 = v12;
LABEL_9:
    v4 &= v4 - 1;
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    *(*(v1 + 6) + 8 * v9) = v10;
    *(*(v1 + 7) + 8 * v9) = v14;
    ++*(v1 + 2);
  }

  swift_unknownObjectRelease();
  return 0;
}

unint64_t sub_16A318(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BC0);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_9ACA0(*(a1 + 48) + 40 * v12, v24);
        sub_808B0(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_9ACA0(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_12E1C(v21, &unk_DF2B40);

          return 0;
        }

        sub_808B0(v22 + 8, v20);
        sub_12E1C(v21, &unk_DF2B40);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_2EBF88(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_16A5E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEFE0);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_9ACA0(*(a1 + 48) + 40 * v12, v27);
        sub_808B0(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_9ACA0(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_808B0(v25 + 8, v20);
        sub_12E1C(v24, &unk_DF2B40);
        v21 = v18;
        sub_9ACFC(v20, v22);
        v13 = v21;
        sub_9ACFC(v22, v23);
        sub_9ACFC(v23, &v21);
        result = sub_2EBF88(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_9ACFC(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_9ACFC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_12E1C(v24, &unk_DF2B40);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_16A8C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEED0);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_9ACA0(*(a1 + 48) + 40 * v12, v33);
        sub_808B0(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_9ACA0(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_12E1C(v30, &unk_DF2B40);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        sub_808B0(v31 + 8, v23);
        sub_12E1C(v30, &unk_DF2B40);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = sub_2EBF88(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = sub_9AD68(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v2[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_12E1C(&v24, &qword_DF2BD0);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_16ABF0(uint64_t a1)
{
  v1 = *(a1 + 112);
  v18 = *(a1 + 96);
  v19 = v1;
  v20 = *(a1 + 128);
  v21 = *(a1 + 144);
  v2 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v2;
  v3 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v3;
  v4 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v4;
  if (sub_90064(v17) == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = *(&v18 + 1);
    v5 = v18;
    if (*(&v18 + 1))
    {
    }
  }

  sub_16C270(0xD00000000000001ALL, 0x8000000000B54160, &v15);
  if (!v16)
  {
    sub_12E1C(&v15, &unk_DE8E40);
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v14;
  }

  else
  {
    v9 = 0;
  }

  if (!v6)
  {
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_21:
    v10 = 0;
    return v10 & 1;
  }

  if (v9)
  {
    if (v5 != v8 || v6 != v9)
    {
      v11 = sub_ABB3C0();

      v10 = v11 ^ 1;
      return v10 & 1;
    }

    goto LABEL_21;
  }

LABEL_20:

  v10 = 1;
  return v10 & 1;
}

Swift::Int sub_16AD70()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  sub_AB93F0();
  if (v1)
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

void sub_16ADF4()
{
  v1 = *(v0 + 8);
  sub_AB93F0();
  if (v1)
  {
    sub_ABB5E0(1u);

    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }
}

Swift::Int sub_16AE70()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  sub_AB93F0();
  if (v1)
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  return sub_ABB610();
}

uint64_t sub_16AEF0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a2[1];
  v7 = a2[11];
  v8 = a2[12];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_ABB3C0();
}

uint64_t sub_16AFA0(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_AB92A0();
  sub_16CCAC(v3, v4, &v10);

  v5 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B90);
  v6 = sub_AB9760();
  sub_169CFC(v6, &v10);

  v7 = [a1 phoneNumbers];
  v8 = sub_AB9760();
  sub_169F8C(v8, &v10);

  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v13;
  sub_2B7BC(v18, v20);
  sub_1ADEC(v19, v18);
  sub_2B818(v19);
  v20[4] = v14;
  v20[5] = v15;
  v20[6] = v16;
  v20[7] = v17;
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  return sub_2B818(v20);
}

uint64_t sub_16B110(void **a1, uint64_t a2)
{
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v29 = sub_AB3440();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = [v8 value];
  v12 = [v11 unformattedInternationalStringValue];
  if (v12)
  {
    v13 = v12;
  }

  else
  {

    v13 = [v8 value];
    v11 = [v13 stringValue];
  }

  v14 = sub_AB92A0();
  v16 = v15;

  v17 = [v8 value];
  v18 = [v17 unformattedInternationalStringValue];
  if (v18)
  {
    v19 = v18;
    v20 = sub_AB92A0();
    v22 = v21;
  }

  else
  {

    v20 = 0;
    v22 = 0;
  }

  sub_1A9FC(&v30, v14, v16);

  v23 = *(a2 + 120);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v23;
  if ((result & 1) == 0)
  {
    result = sub_6B80C(0, *(v23 + 16) + 1, 1, v23);
    v23 = result;
    *(a2 + 120) = result;
  }

  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  if (v26 >= v25 >> 1)
  {
    result = sub_6B80C((v25 > 1), v26 + 1, 1, v23);
    v23 = result;
    *(a2 + 120) = result;
  }

  *(v23 + 16) = v26 + 1;
  v27 = v23 + 40 * v26;
  *(v27 + 32) = v29;
  *(v27 + 40) = v10;
  *(v27 + 48) = v20;
  *(v27 + 56) = v22;
  *(v27 + 64) = 0;
  return result;
}

void sub_16B388(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_16B3E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *(a2 + 112);
  *(v8 + 120) = *(a2 + 96);
  *(v8 + 136) = v9;
  *(v8 + 152) = *(a2 + 128);
  v10 = *(a2 + 48);
  *(v8 + 56) = *(a2 + 32);
  *(v8 + 72) = v10;
  v11 = *(a2 + 80);
  *(v8 + 88) = *(a2 + 64);
  *(v8 + 104) = v11;
  v12 = *(a2 + 16);
  *(v8 + 24) = *a2;
  *(v8 + 16) = a1 & 1;
  v13 = *(a2 + 144);
  *(v8 + 40) = v12;
  *(v8 + 168) = v13;
  *(v8 + 176) = a3;
  *(v8 + 184) = a4;
  sub_15F84(a2, v21, &unk_E05300);
  sub_307CC(a3);
  BagProvider.shared.unsafeMutableAddressor();
  v14 = swift_allocObject();
  v15 = *(a2 + 112);
  *(v14 + 120) = *(a2 + 96);
  *(v14 + 136) = v15;
  *(v14 + 152) = *(a2 + 128);
  v16 = *(a2 + 48);
  *(v14 + 56) = *(a2 + 32);
  *(v14 + 72) = v16;
  v17 = *(a2 + 80);
  *(v14 + 88) = *(a2 + 64);
  *(v14 + 104) = v17;
  v18 = *(a2 + 16);
  *(v14 + 24) = *a2;
  *(v14 + 16) = a1 & 1;
  v19 = *(a2 + 144);
  *(v14 + 40) = v18;
  *(v14 + 168) = v19;
  *(v14 + 176) = sub_16D11C;
  *(v14 + 184) = v8;
  sub_15F84(a2, v21, &unk_E05300);

  BagProvider.getBag(completion:)(sub_16D12C, v14);
}

uint64_t sub_16B598(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v14 = result;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v18 = a6;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_AF4EC0;
    swift_errorRetain();
    sub_ABAD90(77);
    v19._object = 0x8000000000B54110;
    v19._countAndFlagsBits = 0xD000000000000047;
    sub_AB94A0(v19);
    sub_ABAF70();
    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    sub_AB94A0(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    sub_ABAF70();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    sub_ABACD0();
    a6 = v18;
  }

  if (v14 == 1 || a4 || (a5 & 1) != 0)
  {
    if ((a5 & 1) == 0)
    {
      sub_13C80(0, &qword_DE8ED0);
      result = static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_171210, 0);
    }

    if (a7)
    {
      return a7(v14, a2, a3, a4);
    }
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a7;
    *(v17 + 24) = a8;
    sub_307CC(a7);
    sub_16DE94(v14, a2, a3, a6, sub_170C70, v17);
  }

  return result;
}

uint64_t sub_16B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_13C80(0, &qword_DE8ED0);
  result = static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_171210, 0);
  if (a5)
  {
    return a5(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_16B8A8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v28[1] = a1;
  v30 = a3;
  v29 = sub_AB2A90();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v7 - 8);
  v9 = v28 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v28 - v15;
  sub_AB3180();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    sub_AB2A50();
    sub_AB2A20();
    v33._countAndFlagsBits = 0x2D746E65746E6F43;
    v33._object = 0xEC00000065707954;
    v31.value._countAndFlagsBits = 0xD00000000000001FLL;
    v31.value._object = 0x8000000000B54060;
    sub_AB2A80(v31, v33);
    isa = 0;
    if (a2 >> 60 != 15)
    {
      isa = sub_AB3250().super.isa;
    }

    v21 = MSVGzipCompressData();

    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = sub_AB3260();
    v24 = v23;

    v25 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v25 != 2 || *(v22 + 16) == *(v22 + 24))
      {
        goto LABEL_14;
      }
    }

    else if (v25)
    {
      if (v22 == v22 >> 32)
      {
LABEL_14:
        sub_466B8(v22, v24);
        goto LABEL_15;
      }
    }

    else if ((v24 & 0xFF000000000000) == 0)
    {
      goto LABEL_14;
    }

    v34._object = 0x8000000000B54080;
    v32.value._countAndFlagsBits = 1885960807;
    v32.value._object = 0xE400000000000000;
    v34._countAndFlagsBits = 0xD000000000000010;
    sub_AB2A80(v32, v34);
    sub_AB2A70();
LABEL_15:
    (*(v11 + 8))(v16, v10);
    v19 = v30;
    v26 = v6;
    v18 = v29;
    (*(v4 + 32))(v30, v26, v29);
    v17 = 0;
    return (*(v4 + 56))(v19, v17, 1, v18);
  }

  sub_12E1C(v9, &unk_DF2AE0);
  v17 = 1;
  v18 = v29;
  v19 = v30;
  return (*(v4 + 56))(v19, v17, 1, v18);
}

void sub_16BC90(void *a1, uint64_t a2, void (*a3)(uint64_t, void, void, uint64_t), uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (a3)
    {
      a3(1, 0, 0, a2);
    }
  }

  else if (a1 && (v12 = [a1 parsedBodyDictionary]) != 0 && (v13 = v12, v14 = sub_AB8FF0(), v13, v15 = sub_16A5E8(v14), , v15))
  {
    v16 = sub_16D13C(a5 & 1);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = a6;
    v17[4] = a7;
    v17[5] = a3;
    v17[6] = a4;
    v21[4] = sub_170BD0;
    v21[5] = v17;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1B5EB4;
    v21[3] = &block_descriptor_16;
    v18 = _Block_copy(v21);

    sub_307CC(a3);

    [v16 addOperationWithBlock:v18];
    _Block_release(v18);
  }

  else if (a3)
  {
    sub_170A5C();
    v19 = swift_allocError();
    *v20 = 4;
    a3(1, 0, 0, v19);
  }
}

uint64_t sub_16BEBC(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (a4)
  {
    v6 = result;

    a4(v6, a2, a3, 0);
  }

  return result;
}

void sub_16BF58(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2 & 1;
  v10 = sub_16D13C(a2 & 1);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v9;
  v12 = *(a3 + 112);
  *(v11 + 128) = *(a3 + 96);
  *(v11 + 144) = v12;
  *(v11 + 160) = *(a3 + 128);
  v13 = *(a3 + 144);
  v14 = *(a3 + 48);
  *(v11 + 64) = *(a3 + 32);
  *(v11 + 80) = v14;
  v15 = *(a3 + 80);
  *(v11 + 96) = *(a3 + 64);
  *(v11 + 112) = v15;
  v16 = *(a3 + 16);
  *(v11 + 32) = *a3;
  *(v11 + 48) = v16;
  *(v11 + 176) = v13;
  *(v11 + 184) = a4;
  *(v11 + 192) = a5;
  aBlock[4] = sub_16D29C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_50;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  sub_15F84(a3, v19, &unk_E05300);
  sub_307CC(a4);

  [v10 addOperationWithBlock:v17];
  _Block_release(v17);
}

void sub_16C0C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = OBJC_IVAR____TtC11MusicJSCore7JSStore_account;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    type metadata accessor for SocialContactsCoordinator();
    v6 = *(a2 + 112);
    v16[6] = *(a2 + 96);
    v16[7] = v6;
    v16[8] = *(a2 + 128);
    v17 = *(a2 + 144);
    v7 = *(a2 + 48);
    v16[2] = *(a2 + 32);
    v16[3] = v7;
    v8 = *(a2 + 80);
    v16[4] = *(a2 + 64);
    v16[5] = v8;
    v9 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v9;
    v10 = sub_90064(v16);
    v11 = v5;
    if (v10 != 1)
    {
      sub_15F84(a2, &v13, &unk_E05300);
      if ((sub_16ABF0(a2) & 1) == 0)
      {
        sub_16C270(0xD000000000000010, 0x8000000000B4F1E0, &v14);
        sub_12E1C(a2, &unk_E05300);
        if (*(&v15 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BB0);
          if (swift_dynamicCast())
          {
            v12 = v13;
            goto LABEL_8;
          }

LABEL_7:
          v12 = &_swiftEmptySetSingleton;
LABEL_8:
          JSAccount.friendsDiscoverySocialProfileIDs.setter(v12);

          return;
        }

LABEL_6:
        sub_12E1C(&v14, &unk_DE8E40);
        goto LABEL_7;
      }

      sub_12E1C(a2, &unk_E05300);
    }

    v14 = 0u;
    v15 = 0u;
    goto LABEL_6;
  }
}

void sub_16C270(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  if (qword_DE68E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_DF2A28);
  sub_15F84(v14, v8, &unk_DF2AE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &unk_DF2AE0);
LABEL_10:
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_AB3160();
  v15 = sub_AB9260();

  v16 = [v13 fileExistsAtPath:v15];

  if (!v16 || (sub_AB3160(), v17 = sub_AB9260(), , v18 = [v13 contentsAtPath:v17], v17, !v18))
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  v27 = a2;
  v19 = sub_AB3260();
  v21 = v20;

  sub_13C80(0, &qword_DEBB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2B10);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AF85D0;
  *(v22 + 32) = sub_13C80(0, &qword_DF2B18);
  *(v22 + 40) = sub_13C80(0, &unk_DF2B20);
  *(v22 + 48) = sub_13C80(0, &qword_DE8170);
  *(v22 + 56) = sub_13C80(0, &qword_DF1300);
  v28 = v19;
  v29 = v21;
  sub_ABA0E0();

  if (!*(&v32 + 1))
  {
    (*(v10 + 8))(v12, v9);
    sub_12E1C(&v31, &unk_DE8E40);
LABEL_8:
    sub_466B8(v28, v29);
    goto LABEL_10;
  }

  sub_9ACFC(&v31, v33);
  sub_808B0(v33, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    (*(v10 + 8))(v12, v9);
    goto LABEL_8;
  }

  v23 = v30;
  if (*(v30 + 16) && (v24 = sub_2EBF88(a1, v27), (v25 & 1) != 0))
  {
    sub_808B0(*(v23 + 56) + 32 * v24, a3);
    __swift_destroy_boxed_opaque_existential_0(v33);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    (*(v10 + 8))(v12, v9);
    *a3 = 0u;
    a3[1] = 0u;
  }

  sub_466B8(v28, v29);
LABEL_11:
}

id sub_16C784()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_DF2A10 = result;
  return result;
}

uint64_t sub_16C7CC()
{
  v1[0] = 0xD000000000000018;
  v1[1] = 0x8000000000B54040;
  sub_36A48();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (!v3)
  {
    sub_12E1C(&v2, &unk_DE8E40);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if ((v1[0] + 1) >= 3)
  {
    return 1;
  }

  else
  {
    return (LODWORD(v1[0]) + 1);
  }
}

uint64_t sub_16C880()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __swift_allocate_value_buffer(v0, qword_DF2A28);
  v1 = __swift_project_value_buffer(v0, qword_DF2A28);
  return sub_16C8D8(v1);
}

uint64_t sub_16C8D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v18[-v8];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = [objc_opt_self() defaultManager];
  v19 = 0;
  v13 = [v12 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v19];
  v14 = v19;

  if (v13)
  {
    sub_AB3150();

    (*(v3 + 32))(v11, v9, v2);
    sub_AB3110();
    sub_AB3120();
    v15 = *(v3 + 8);
    v15(v6, v2);
    v15(v11, v2);
    v16 = 0;
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v16 = 1;
  }

  return (*(v3 + 56))(a1, v16, 1, v2);
}

uint64_t sub_16CB9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_16CBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_16CC58()
{
  result = qword_DF2AD8;
  if (!qword_DF2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2AD8);
  }

  return result;
}

double sub_16CCAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = sub_AB3440();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  LOWORD(v22[0]) = 0;
  BYTE2(v22[0]) = 0;
  *(v22 + 3) = v19;
  BYTE7(v22[0]) = v20;
  *(v22 + 8) = 0u;
  *(&v22[1] + 8) = 0u;
  *(&v22[2] + 8) = 0u;
  *(&v22[3] + 8) = 0u;
  *(&v22[4] + 1) = v10;
  *&v23 = v12;
  *(&v23 + 1) = &_swiftEmptySetSingleton;
  *&v24 = &_swiftEmptySetSingleton;
  *(&v24 + 1) = _swiftEmptyArrayStorage;
  v25[0] = a1;
  v25[1] = a2;
  v26 = 0;
  v27 = 0;
  v29 = v20;
  v28 = v19;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v34 = v10;
  v35 = v12;
  v36 = &_swiftEmptySetSingleton;
  v37 = &_swiftEmptySetSingleton;
  v38 = _swiftEmptyArrayStorage;
  sub_2B7BC(&v21, v18);
  sub_2B818(v25);
  v13 = v22[4];
  a3[4] = v22[3];
  a3[5] = v13;
  v14 = v24;
  a3[6] = v23;
  a3[7] = v14;
  v15 = v22[0];
  *a3 = v21;
  a3[1] = v15;
  result = *&v22[1];
  v17 = v22[2];
  a3[2] = v22[1];
  a3[3] = v17;
  return result;
}

uint64_t sub_16CE70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v0);
  v2 = &v15[-v1];
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_DE68E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_DF2A28);
  sub_15F84(v7, v2, &unk_DF2AE0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_12E1C(v2, &unk_DF2AE0);
  }

  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_opt_self() defaultManager];
  sub_AB30F0(v10);
  v12 = v11;
  v16 = 0;
  v13 = [v9 removeItemAtURL:v11 error:&v16];
  v14 = v16;

  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  sub_AB3050();

  swift_willThrow();
  (*(v4 + 8))(v6, v3);
}

id sub_16D13C(char a1)
{
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  if (a1)
  {
    v3 = 25;
  }

  else
  {
    v3 = 9;
  }

  v4 = sub_AB9260();
  [v2 setName:v4];

  [v2 setQualityOfService:v3];
  return v2;
}

uint64_t sub_16D1F4()
{
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 184))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_16D2C8(char a1, uint64_t a2, void (*a3)(uint64_t, void, void, uint64_t), uint64_t a4)
{
  if (a1)
  {
    goto LABEL_8;
  }

  if (byte_DF2A18 != 1)
  {
    byte_DF2A18 = 1;
LABEL_8:
    v9 = a1 & 1;
    v10 = sub_16D13C(a1 & 1);
    v11 = swift_allocObject();
    v12 = *(a2 + 112);
    *(v11 + 120) = *(a2 + 96);
    *(v11 + 136) = v12;
    *(v11 + 152) = *(a2 + 128);
    v13 = *(a2 + 48);
    *(v11 + 56) = *(a2 + 32);
    *(v11 + 72) = v13;
    v14 = *(a2 + 80);
    *(v11 + 88) = *(a2 + 64);
    *(v11 + 104) = v14;
    v15 = *(a2 + 16);
    *(v11 + 24) = *a2;
    *(v11 + 16) = v9;
    v16 = *(a2 + 144);
    *(v11 + 40) = v15;
    *(v11 + 168) = v16;
    *(v11 + 176) = a3;
    *(v11 + 184) = a4;
    aBlock[4] = sub_C3538;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_37;
    v17 = _Block_copy(aBlock);
    sub_15F84(a2, v18, &unk_E05300);
    sub_307CC(a3);

    [v10 addOperationWithBlock:v17];
    _Block_release(v17);

    return;
  }

  if (a3)
  {
    sub_170A5C();
    v7 = swift_allocError();
    *v8 = 1;
    a3(1, 0, 0, v7);
  }
}

void *sub_16D4C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  *(inited + 48) = sub_AB92A0();
  *(inited + 56) = v2;
  *(inited + 64) = sub_AB92A0();
  *(inited + 72) = v3;
  sub_12B708(inited);
  v4 = objc_allocWithZone(CNContactFetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA10);
  isa = sub_AB9740().super.isa;
  v6 = [v4 initWithKeysToFetch:isa];

  v16 = &_swiftEmptySetSingleton;
  if (qword_DE68D8 != -1)
  {
    swift_once();
  }

  v7 = qword_DF2A10;
  v8 = swift_allocObject();
  *(v8 + 16) = &v16;
  v9 = swift_allocObject();
  v9[2] = sub_170BF0;
  v9[3] = v8;
  aBlock[4] = sub_170C08;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_16B388;
  aBlock[3] = &block_descriptor_25_0;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 enumerateContactsWithFetchRequest:v6 error:aBlock usingBlock:v10];
  v12 = aBlock[0];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  if (!v11)
  {
    sub_AB3050();

    swift_willThrow();
  }

  v13 = v16;

  swift_setDeallocating();
  swift_arrayDestroy();

  return v13;
}

uint64_t sub_16D7D0(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 112);
  v50 = *(a2 + 96);
  v51 = v13;
  v52 = *(a2 + 128);
  v53 = *(a2 + 144);
  v14 = *(a2 + 48);
  v49[2] = *(a2 + 32);
  v49[3] = v14;
  v15 = *(a2 + 80);
  v49[4] = *(a2 + 64);
  v49[5] = v15;
  v16 = *(a2 + 16);
  v49[0] = *a2;
  v49[1] = v16;
  result = sub_90064(v49);
  if (result != 1)
  {
    v54 = v50;
    v18 = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      v45 = v54;
      if (qword_DE68E8 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v7, qword_DF2A28);
      sub_15F84(v19, v9, &unk_DF2AE0);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        return sub_12E1C(v9, &unk_DF2AE0);
      }

      else
      {
        (*(v11 + 32))(v47, v9, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
        inited = swift_initStackObject();
        v44 = v11;
        v21 = inited;
        *(inited + 16) = xmmword_AF8820;
        *(inited + 32) = 0xD000000000000017;
        *(inited + 40) = 0x8000000000B54020;
        sub_AB3420();
        sub_AB32B0();
        v23 = v22;
        (*(v4 + 8))(v6, v3);
        v21[6] = v23;
        v21[9] = &type metadata for Double;
        v21[10] = 0xD000000000000010;
        v21[11] = 0x8000000000B4F1E0;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BB0);
        v21[12] = v46;
        v21[15] = v24;
        v21[16] = 0xD00000000000001ALL;
        v21[21] = &type metadata for String;
        v25 = v45;
        v21[17] = 0x8000000000B54160;
        v21[18] = v25;
        v21[19] = v18;

        sub_15F84(&v54, v48, &unk_DEE6F0);
        sub_97420(v21);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
        swift_arrayDestroy();
        v26 = objc_opt_self();
        isa = sub_AB8FD0().super.isa;
        v48[0] = 0;
        v28 = [v26 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v48];
        v29 = v48[0];

        if (v28)
        {
          v30 = sub_AB3260();
          v32 = v31;

          sub_AB3270();
          if (qword_DE68E0 != -1)
          {
            swift_once();
          }

          v33 = qword_DF2A20;

          v34 = v46;
          v35 = sub_4CA4C8(v46, v33);

          if (v35)
          {
            (*(v44 + 8))(v47, v10);
          }

          else
          {
            qword_DF2A20 = v34;

            v36 = *JSBridge.shared.unsafeMutableAddressor();
            v37 = swift_allocObject();
            v38 = *(a2 + 80);
            *(v37 + 80) = *(a2 + 64);
            *(v37 + 96) = v38;
            v39 = *(a2 + 48);
            *(v37 + 48) = *(a2 + 32);
            *(v37 + 64) = v39;
            *(v37 + 160) = *(a2 + 144);
            v40 = *(a2 + 128);
            *(v37 + 128) = *(a2 + 112);
            *(v37 + 144) = v40;
            *(v37 + 112) = *(a2 + 96);
            v41 = *(a2 + 16);
            *(v37 + 16) = *a2;
            *(v37 + 32) = v41;
            v42 = *&stru_B8.segname[(swift_isaMask & *v36) + 16];
            v43 = v36;
            sub_15F84(a2, v48, &unk_E05300);
            v42(sub_170D5C, v37);
            (*(v44 + 8))(v47, v10);
          }

          sub_466B8(v30, v32);
        }

        else
        {
          sub_AB3050();

          swift_willThrow();
          (*(v44 + 8))(v47, v10);
        }
      }
    }
  }

  return result;
}

uint64_t sub_16DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v12 = sub_AB9300();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !a2 || (v85 = result, !*(a1 + 16)) || (result = sub_2EBF88(0x73646E65697266, 0xE700000000000000), (v17 & 1) == 0) || (sub_808B0(*(a1 + 56) + 32 * result, v90), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B80), result = swift_dynamicCast(), (result & 1) == 0))
  {
    if (a5)
    {
      sub_170A5C();
      v21 = swift_allocError();
      *v22 = 4;
      a5(1, 0, 0, v21);
    }

    return result;
  }

  v83 = a4;
  v87 = &_swiftEmptySetSingleton;
  v18 = *(v88 + 16);
  if (!v18)
  {

    v70 = &_swiftEmptySetSingleton;
    goto LABEL_55;
  }

  v84 = a2;
  v78 = a3;
  v79 = a6;
  v75 = (v13 + 8);
  v19 = 32;
  v20 = v88;
  v82 = v88;
  do
  {
    v23 = *(v20 + v19);
    if (!*(v23 + 16))
    {
      goto LABEL_12;
    }

    v24 = sub_2EBF88(0x49746361746E6F63, 0xE900000000000064);
    if ((v25 & 1) == 0 || !*(v23 + 16))
    {
      goto LABEL_25;
    }

    v26 = (*(v23 + 56) + 16 * v24);
    v27 = *v26;
    v28 = v26[1];

    v29 = sub_2EBF88(0x64616F6C796170, 0xE700000000000000);
    if ((v30 & 1) == 0 || !*(v84 + 16))
    {
      goto LABEL_11;
    }

    v31 = (*(v23 + 56) + 16 * v29);
    v32 = v31[1];
    v81 = *v31;

    v33 = v84;
    v34 = sub_2EBF88(v27, v28);
    if ((v35 & 1) == 0)
    {

      v20 = v82;
LABEL_11:

      goto LABEL_12;
    }

    v80 = v32;
    v36 = *(*(v33 + 56) + (v34 << 6) + 8);

    if (!v36)
    {

      goto LABEL_36;
    }

    v77 = v36;
    v38 = v80;
    v37 = v81;
    sub_AB9460();
    sub_AB9590();
    v74 = sub_AB93B0();
    v76 = v39;

    v40 = sub_AB9460();
    v41 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v41 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v41 < v40 >> 14)
    {
      __break(1u);
    }

    sub_AB9590();
    v81 = sub_AB93B0();

    v42 = sub_AB31E0();
    if (v43 >> 60 == 15)
    {

      goto LABEL_36;
    }

    v72 = v42;
    v73 = v43;
    v44 = sub_AB31E0();
    if (v45 >> 60 == 15)
    {

LABEL_35:
      sub_466A4(v72, v73);

      goto LABEL_36;
    }

    v46 = v44;
    v47 = v45;
    v48 = sub_AB31E0();
    if (v49 >> 60 == 15)
    {
      goto LABEL_34;
    }

    v50 = v49;
    v81 = v48;
    v51 = sub_281A6C(1uLL, v48, v49, v72, v73, v46, v47, 0);
    if (v52 >> 60 == 15)
    {
      sub_466A4(v81, v50);
LABEL_34:
      sub_466A4(v46, v47);
      goto LABEL_35;
    }

    v71 = v50;
    v74 = v46;
    v76 = v51;
    *&v90[0] = v51;
    *(&v90[0] + 1) = v52;
    v53 = v52;
    sub_AB92F0();
    sub_170C78();
    sub_AB92D0();
    if (!v54)
    {
      sub_466A4(v76, v53);
      sub_466A4(v81, v71);
      sub_466A4(v74, v47);
      v68 = v72;
      v69 = v73;
      goto LABEL_46;
    }

    sub_466A4(v76, v53);
    sub_466A4(v81, v71);
    sub_466A4(v74, v47);
    sub_466A4(v72, v73);
    sub_AB92F0();
    v55 = sub_AB92B0();
    v57 = v56;
    (*v75)(v16, v85);

    if (v57 >> 60 == 15)
    {
      goto LABEL_47;
    }

    v58 = objc_opt_self();
    v76 = v55;
    v81 = v57;
    isa = sub_AB3250().super.isa;
    v86 = 0;
    v60 = [v58 JSONObjectWithData:isa options:0 error:&v86];
    v61 = v86;

    if (!v60)
    {
      sub_AB3050();

      swift_willThrow();

      v88 = 0u;
      v89 = 0u;
      v20 = v82;
LABEL_49:
      sub_12E1C(&v88, &unk_DE8E40);
      goto LABEL_51;
    }

    sub_ABAB50();
    swift_unknownObjectRelease();
    v20 = v82;
    if (!*(&v89 + 1))
    {
      goto LABEL_49;
    }

    sub_9ACFC(&v88, v90);
    sub_808B0(v90, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v90);
LABEL_51:
      sub_466A4(v76, v81);

LABEL_25:

      goto LABEL_12;
    }

    v62 = v86;
    if (*(v86 + 2))
    {
      v63 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
      if (v64)
      {
        v65 = (v62[7] + 16 * v63);
        v66 = *v65;
        v67 = v65[1];

        sub_1A9FC(&v88, v66, v67);
        __swift_destroy_boxed_opaque_existential_0(v90);

        v68 = v76;
        v69 = v81;
LABEL_46:
        sub_466A4(v68, v69);
LABEL_47:

LABEL_36:

        v20 = v82;
        goto LABEL_12;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v90);

    sub_466A4(v76, v81);

    v20 = v82;
LABEL_12:
    v19 += 8;
    --v18;
  }

  while (v18);

  v70 = v87;
  a3 = v78;
  a2 = v84;
LABEL_55:
  sub_16D7D0(v70, v83);

  if (a5)
  {
    return a5(a1, a2, a3, 0);
  }

  return result;
}

void *sub_16E7B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB9300();
  v5 = __chkstk_darwin(v4);
  v8 = *(a1 + 16);
  if (v8)
  {
    v82 = v5;
    v83 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v84 = a2;
    v9 = (a1 + 32);
    v80 = "currentUserSocialProfileID";
    v81 = (v6 + 8);
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v13 = *v9;
      v14 = *(*v9 + 16);

      if (v14)
      {
        v15 = sub_2EBF88(0x72506C6169636F73, 0xEF6449656C69666FLL);
        if (v16)
        {
          sub_15F84(*(v13 + 56) + 32 * v15, &v90, &unk_DE8E40);
          sub_12E1C(&v90, &qword_DF2BD8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_6B828(0, v10[2] + 1, 1, v10);
          }

          v18 = v10[2];
          v17 = v10[3];
          if (v18 >= v17 >> 1)
          {
            v10 = sub_6B828((v17 > 1), v18 + 1, 1, v10);
          }

          v10[2] = v18 + 1;
          v10[v18 + 4] = v13;
          goto LABEL_5;
        }
      }

      v90 = 0uLL;
      *&v91 = 0;
      *(&v91 + 1) = 1;
      sub_12E1C(&v90, &qword_DF2BD8);
      if (!*(v13 + 16))
      {
        goto LABEL_62;
      }

      v19 = sub_2EBF88(0x49746361746E6F63, 0xE900000000000064);
      if ((v20 & 1) == 0)
      {
        goto LABEL_62;
      }

      sub_15F84(*(v13 + 56) + 32 * v19, &v88, &unk_DE8E40);
      v90 = v88;
      v91 = v89;
      if (!*(&v89 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_62;
      }

      v21 = v87;
      v85 = v86;
      if (*(v13 + 16) && (v22 = sub_2EBF88(0x64616F6C796170, 0xE700000000000000), (v23 & 1) != 0))
      {
        sub_15F84(*(v13 + 56) + 32 * v22, &v88, &unk_DE8E40);
      }

      else
      {
        v88 = 0uLL;
        *&v89 = 0;
        *(&v89 + 1) = 1;
      }

      if (*(&v89 + 1) == 1)
      {

        v11 = &v88;
        v12 = &qword_DF2BD8;
LABEL_4:
        sub_12E1C(v11, v12);
        goto LABEL_5;
      }

      v90 = v88;
      v91 = v89;
      if (!*(&v89 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_62;
      }

      v79 = v21;
      v24 = v84;
      if (!*(v84 + 16))
      {
        goto LABEL_35;
      }

      v77 = v86;
      v78 = v87;
      v25 = sub_2EBF88(v85, v79);
      if ((v26 & 1) == 0 || (v27 = (*(v24 + 56) + (v25 << 6)), (v28 = v27[1]) == 0))
      {

        goto LABEL_62;
      }

      v75 = *v27;

      v76 = v28;
      v29 = v78;
      sub_AB9460();
      v30 = v29;
      sub_AB9590();
      v73 = sub_AB93B0();
      v74 = v31;

      v32 = v77;
      v33 = sub_AB9460();
      v34 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v34 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v34 < v33 >> 14)
      {
        __break(1u);
      }

      sub_AB9590();
      v72 = sub_AB93B0();
      v77 = v35;

      v36 = sub_AB31E0();
      if (v37 >> 60 == 15)
      {

        goto LABEL_62;
      }

      v38 = v37;
      v75 = v36;
      v39 = sub_AB31E0();
      if (v40 >> 60 == 15)
      {

        v41 = v75;
        v42 = v38;
LABEL_44:
        sub_466A4(v41, v42);

        goto LABEL_62;
      }

      v73 = v39;
      v71 = v40;
      v74 = v38;
      v43 = sub_AB31E0();
      if (v44 >> 60 == 15)
      {
        v45 = v73;
        v46 = v71;
LABEL_43:
        sub_466A4(v45, v46);
        v41 = v75;
        v42 = v74;
        goto LABEL_44;
      }

      v47 = v44;
      v77 = v43;
      v48 = v71;
      v49 = sub_281A6C(1uLL, v43, v44, v75, v74, v73, v71, 0);
      if (v50 >> 60 == 15)
      {
        sub_466A4(v77, v47);
        v45 = v73;
        v46 = v48;
        goto LABEL_43;
      }

      v72 = v49;
      *&v90 = v49;
      *(&v90 + 1) = v50;
      v51 = v50;
      v52 = v83;
      sub_AB92F0();
      sub_170C78();
      v53 = sub_AB92D0();
      if (v54)
      {
        v70[1] = v53;
        v55 = v72;
        v72 = v54;
        sub_466A4(v55, v51);
        sub_466A4(v77, v47);
        sub_466A4(v73, v71);
        sub_466A4(v75, v74);
        sub_AB92F0();
        v77 = sub_AB92B0();
        v57 = v56;
        (*v81)(v52, v82);

        if (v57 >> 60 != 15)
        {
          v58 = objc_opt_self();
          v59 = v57;
          v60 = v58;
          v75 = v59;
          isa = sub_AB3250().super.isa;
          v86 = 0;
          v62 = [v60 JSONObjectWithData:isa options:0 error:&v86];
          v63 = v86;

          if (v62)
          {
            sub_ABAB50();
            swift_unknownObjectRelease();
            if (*(&v89 + 1))
            {
              sub_9ACFC(&v88, &v90);
              sub_808B0(&v90, &v88);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BE0);
              if (swift_dynamicCast())
              {
                v64 = v86;
                *&v88 = v85;
                *(&v88 + 1) = v79;
                *(&v89 + 1) = &type metadata for String;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v86 = v64;
                sub_936D8(&v88, 0xD000000000000011, v80 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
                v85 = v86;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = sub_6B828(0, v10[2] + 1, 1, v10);
                }

                v67 = v10[2];
                v66 = v10[3];
                if (v67 >= v66 >> 1)
                {
                  v10 = sub_6B828((v66 > 1), v67 + 1, 1, v10);
                }

                __swift_destroy_boxed_opaque_existential_0(&v90);
                v10[2] = v67 + 1;
                v10[v67 + 4] = v85;
                sub_466A4(v77, v75);
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_0(&v90);

                sub_466A4(v77, v75);
              }

              goto LABEL_62;
            }

            v68 = v75;
          }

          else
          {

            sub_AB3050();

            swift_willThrow();

            v88 = 0u;
            v89 = 0u;
            v68 = v75;
          }

          sub_12E1C(&v88, &unk_DE8E40);
          sub_466A4(v77, v68);
LABEL_35:

LABEL_62:

          goto LABEL_5;
        }
      }

      else
      {
        sub_466A4(v72, v51);
        sub_466A4(v77, v47);
        sub_466A4(v73, v71);
        sub_466A4(v75, v74);
      }

LABEL_5:
      ++v9;
      if (!--v8)
      {
        return v10;
      }
    }

    v11 = &v90;
    v12 = &unk_DE8E40;
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_16F208(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  v40 = *(a2 + 96);
  v41 = v4;
  v42 = *(a2 + 128);
  v43 = *(a2 + 144);
  v5 = *(a2 + 48);
  v36 = *(a2 + 32);
  v37 = v5;
  v6 = *(a2 + 80);
  v38 = *(a2 + 64);
  v39 = v6;
  v7 = *(a2 + 16);
  v34 = *a2;
  v35 = v7;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  type metadata accessor for SocialContactsCoordinator();
  v15 = *(a2 + 112);
  v32[6] = *(a2 + 96);
  v32[7] = v15;
  v32[8] = *(a2 + 128);
  v33 = *(a2 + 144);
  v16 = *(a2 + 48);
  v32[2] = *(a2 + 32);
  v32[3] = v16;
  v17 = *(a2 + 80);
  v32[4] = *(a2 + 64);
  v32[5] = v17;
  v18 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v18;
  if (sub_90064(v32) == 1)
  {
    goto LABEL_4;
  }

  v28[6] = v40;
  v28[7] = v41;
  v28[8] = v42;
  v29 = v43;
  v28[2] = v36;
  v28[3] = v37;
  v28[4] = v38;
  v28[5] = v39;
  v28[0] = v34;
  v28[1] = v35;
  sub_C343C(v28, v27);
  if (sub_16ABF0(a2))
  {
    sub_12E1C(a2, &unk_E05300);
LABEL_4:
    v30 = 0u;
    v31 = 0u;
LABEL_5:
    sub_12E1C(&v30, &unk_DE8E40);
    return 0;
  }

  sub_16C270(0xD000000000000017, 0x8000000000B54020, &v30);
  sub_12E1C(a2, &unk_E05300);
  if (!*(&v31 + 1))
  {
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_C343C(v28, v27);
  if (sub_16ABF0(a2))
  {
    sub_12E1C(a2, &unk_E05300);
    v25 = 0u;
    v26 = 0u;
LABEL_15:
    sub_12E1C(&v25, &unk_DE8E40);
    goto LABEL_16;
  }

  sub_16C270(0xD000000000000017, 0x8000000000B54020, &v25);
  sub_12E1C(a2, &unk_E05300);
  if (!*(&v26 + 1))
  {
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    sub_AB32A0();
    sub_AB3420();
    sub_AB3340();
    v21 = v20;
    v22 = *(v9 + 8);
    v22(v12, v8);
    v22(v14, v8);
    if (v21 > a1)
    {
      return 0;
    }
  }

LABEL_16:
  v23 = [objc_opt_self() standardUserDefaults];
  v24 = sub_16C7CC();

  return v24 != 2;
}

unint64_t sub_16F5A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = 0x736E6F6974706FLL;
  *(inited + 40) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2B50);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 32) = 0x6E6F6973726576;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = xmmword_B00DF0;
  *(v5 + 64) = 0xEB00000000687467;
  *(v5 + 72) = a2;
  v6 = sub_9836C(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2B58);
  swift_arrayDestroy();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2B60);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x73746361746E6F63;
  *(inited + 88) = 0xE800000000000000;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    v15 = v13;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = (*(a1 + 56) + (v17 << 6));
    v22 = v21[2];
    v23 = v21[3];
    v24 = v21[1];
    v44 = *v21;
    v45 = v24;
    v46 = v22;
    v47 = v23;
    v48[0] = v19;
    v48[1] = v20;
    v49 = v44;
    v50 = v24;
    v51 = v22;
    v52 = v23;
    v25 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      v42 = v14;
      v41 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B70);
      v26 = sub_ABB0C0();
      swift_bridgeObjectRetain_n();
      sub_170AB0(&v44, v43);

      result = sub_2EBF88(25705, 0xE200000000000000);
      if (v27)
      {
        goto LABEL_21;
      }

      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v28 = (v26[6] + 16 * result);
      *v28 = 25705;
      v28[1] = 0xE200000000000000;
      v29 = (v26[7] + 16 * result);
      *v29 = v19;
      v29[1] = v20;
      v30 = v26[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_22;
      }

      v26[2] = v32;

      result = sub_2EBF88(6775156, 0xE300000000000000);
      if (v33)
      {
        goto LABEL_23;
      }

      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v34 = (v26[6] + 16 * result);
      *v34 = 6775156;
      v34[1] = 0xE300000000000000;
      v35 = (v26[7] + 16 * result);
      *v35 = v41;
      v35[1] = v25;
      v36 = v26[2];
      v31 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v31)
      {
        goto LABEL_24;
      }

      v26[2] = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE730);
      swift_arrayDestroy();
      sub_12E1C(v48, &qword_DF2B68);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_6B84C(0, v42[2] + 1, 1, v42);
        v42 = result;
      }

      v39 = v42[2];
      v38 = v42[3];
      if (v39 >= v38 >> 1)
      {
        result = sub_6B84C((v38 > 1), v39 + 1, 1, v42);
        v42 = result;
      }

      v42[2] = v39 + 1;
      v42[v39 + 4] = v26;
      v14 = v42;
    }

    else
    {

      sub_170AB0(&v44, v43);
      result = sub_12E1C(v48, &qword_DF2B68);
    }
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2B80);
      *(inited + 96) = v14;
      v40 = sub_97420(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
      swift_arrayDestroy();
      return v40;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v15;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_16FA90(void *a1, int a2, uint64_t a3, void (*a4)(uint64_t, void, void, uint64_t), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2AF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v121 - v11;
  v13 = sub_AB2A90();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 dictionaryForBagKey:MPStoreSocialBagKey];
  if (!result)
  {
LABEL_14:
    if (a4)
    {
      sub_170A5C();
      v27 = swift_allocError();
      *v28 = 5;
      a4(1, 0, 0, v27);
    }

    return result;
  }

  LODWORD(v141) = a2;
  v18 = result;
  v19 = sub_AB8FF0();

  v144 = 0xD00000000000001BLL;
  v145 = 0x8000000000B53FC0;
  sub_ABAD10();
  if (!*(v19 + 16) || (v20 = sub_2EC004(&v150), (v21 & 1) == 0))
  {
    sub_8085C(&v150);
LABEL_13:

    goto LABEL_14;
  }

  sub_808B0(*(v19 + 56) + 32 * v20, v146);
  sub_8085C(&v150);
  if ((swift_dynamicCast() & 1) == 0 || v144 <= 0)
  {
    goto LABEL_13;
  }

  v137 = v144;
  if (v141)
  {
    goto LABEL_26;
  }

  v144 = 0xD000000000000017;
  v145 = 0x8000000000B53FE0;
  sub_ABAD10();
  if (!*(v19 + 16) || (v22 = sub_2EC004(&v150), (v23 & 1) == 0))
  {
    sub_8085C(&v150);
    goto LABEL_18;
  }

  sub_808B0(*(v19 + 56) + 32 * v22, v146);
  sub_8085C(&v150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v134 = v16;
  v24 = v144;
  v25 = [objc_opt_self() standardUserDefaults];
  if (sub_16C7CC() != 2)
  {
    if (v24)
    {
      v26 = v14;
      v31 = sub_16C7CC();

      if (v31)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

LABEL_18:
    if (a4)
    {
      sub_170A5C();
      v29 = swift_allocError();
      *v30 = 0;
LABEL_96:
      a4(1, 0, 0, v29);
    }
  }

  v26 = v14;

LABEL_22:
  v144 = 0xD000000000000018;
  v145 = 0x8000000000B54000;
  sub_ABAD10();
  if (!*(v19 + 16) || (v32 = sub_2EC004(&v150), (v33 & 1) == 0))
  {
    sub_8085C(&v150);
LABEL_93:
    if (!a4)
    {
    }

    sub_170A5C();
    v29 = swift_allocError();
    v88 = 2;
    goto LABEL_95;
  }

  sub_808B0(*(v19 + 56) + 32 * v32, v146);
  sub_8085C(&v150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_93;
  }

  v34 = sub_16F208(v144, a3);
  v14 = v26;
  v16 = v134;
  if (v34)
  {
    goto LABEL_93;
  }

LABEL_26:
  v35 = sub_16D4C4();
  if (!v35[2])
  {

    if (a4)
    {
      sub_170A5C();
      v29 = swift_allocError();
      v88 = 3;
LABEL_95:
      *v87 = v88;
      goto LABEL_96;
    }
  }

  v134 = v16;
  v132 = v13;
  v135 = a5;
  v136 = a4;
  v131 = v141 & 1;
  v36 = (v35 + 7);
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v35[7];
  v40 = (v37 + 63) >> 6;
  v140 = v35;

  v41 = 0;
  v129 = 0;
  v42 = _swiftEmptyArrayStorage;
  object = v19;
  v139 = v12;
LABEL_31:
  if (v39)
  {
    v43 = v14;
    goto LABEL_37;
  }

  while (1)
  {
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_104:
      __break(1u);
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
    }

    if (v44 >= v40)
    {
      break;
    }

    v39 = *&v36[8 * v44];
    ++v41;
    if (v39)
    {
      v43 = v14;
      v41 = v44;
LABEL_37:
      v45 = *(v140[6] + ((v41 << 13) | (__clz(__rbit64(v39)) << 7)) + 120);
      v46 = *(v45 + 16);
      v47 = *(v42 + 2);
      v48 = v47 + v46;
      if (__OFADD__(v47, v46))
      {
        goto LABEL_106;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v48 > *(v42 + 3) >> 1)
      {
        if (v47 <= v48)
        {
          v50 = v47 + v46;
        }

        else
        {
          v50 = v47;
        }

        v42 = sub_6B80C(isUniquelyReferenced_nonNull_native, v50, 1, v42);
      }

      v14 = v43;
      v12 = v139;
      v39 &= v39 - 1;
      v19 = object;
      if (*(v45 + 16))
      {
        if ((*(v42 + 3) >> 1) - *(v42 + 2) < v46)
        {
          goto LABEL_108;
        }

        swift_arrayInitWithCopy();

        if (v46)
        {
          v51 = *(v42 + 2);
          v52 = __OFADD__(v51, v46);
          v53 = v51 + v46;
          if (v52)
          {
            goto LABEL_109;
          }

          *(v42 + 2) = v53;
        }
      }

      else
      {

        if (v46)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_31;
    }
  }

  v54 = v140;

  if (!*(v42 + 2))
  {

    v106 = v136;
    if (v136)
    {
      sub_170A5C();
      v107 = swift_allocError();
      *v108 = 3;
      v106(1, 0, 0, v107);
    }
  }

  v127 = v14;
  v55 = sub_981D0(_swiftEmptyArrayStorage);
  v56 = v136;
  v130 = *(v42 + 2);
  v133 = v42;
  if (!v130)
  {
    goto LABEL_77;
  }

  v57 = 0;
  v58 = v42 + 64;
  v126 = v42 + 64;
LABEL_52:
  v128 = v55;
  v59 = &v58[40 * v57];
  v60 = v130;
  do
  {
    if (v57 >= v60)
    {
      goto LABEL_104;
    }

    v61 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_105;
    }

    v62 = *(v59 - 1);
    v63 = *v59;
    if (v62)
    {
      v64 = v63 == 2;
    }

    else
    {
      v64 = 1;
    }

    if (!v64)
    {
      v65 = *(v59 - 3);
      v139 = *(v59 - 4);
      if ((*(v59 - 2) || v62 != 0xE000000000000000) && (sub_ABB3C0() & 1) == 0)
      {
        if (v63)
        {
          v66 = sub_AB9370();
          object = v67;
          v68 = v65;

          countAndFlagsBits = v66;
        }

        else
        {
          v68 = v65;

          if (sub_AB9420() < 10)
          {

LABEL_54:

            goto LABEL_55;
          }

          v70._countAndFlagsBits = 17500;
          v70._object = 0xE200000000000000;
          v71._countAndFlagsBits = 0;
          v71._object = 0xE000000000000000;
          v72 = String.replace(usingRegexPattern:with:options:)(v70, v71, 0);
          countAndFlagsBits = v72._countAndFlagsBits;
          object = v72._object;
        }

        v73 = countAndFlagsBits;
        v74 = String.sha256Data.getter();
        if (v75 >> 60 != 15)
        {
          v76 = v75;
          v77 = v74;

          v122 = v77;
          v125 = v68;
          v58 = v126;
          v78 = v137;
          v124 = sub_284904(v77, v76, v137, v79, v80);
          v123 = v81;

          v82 = Data.hexRepresentation.getter(v77, v76);
          v121 = v83;

          LOBYTE(v142) = 0;
          *&v150 = v82;
          *(&v150 + 1) = v121;
          v151 = v124;
          v152 = v123;
          v153 = v78;
          v154 = 0;
          v155 = v73;
          v156 = object;
          v146[0] = v82;
          v146[1] = v121;
          v146[2] = v124;
          v146[3] = v123;
          v146[4] = v78;
          v147 = 0;
          v148 = v73;
          v149 = object;
          sub_170AB0(&v150, &v144);
          sub_170AE8(v146);
          sub_466A4(v122, v76);
          v84 = v125;

          v85 = v128;
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v144 = v85;
          sub_9385C(&v150, v139, v84, v86);

          swift_bridgeObjectRelease_n();
          v57 = v61;
          v64 = v61 == v60;
          v55 = v144;
          v56 = v136;
          v54 = v140;
          if (v64)
          {
            goto LABEL_77;
          }

          goto LABEL_52;
        }

        goto LABEL_54;
      }
    }

LABEL_55:
    ++v57;
    v59 += 40;
  }

  while (v61 != v60);
  v56 = v136;
  v54 = v140;
  v55 = v128;
LABEL_77:
  v89 = sub_16F5A0(v55, v137);
  v90 = 0x7265766F63736964;
  if (v141)
  {
    v90 = 0x65726F4D646E6966;
  }

  v142 = v90;
  v143 = 0xEF73646E65697246;
  sub_ABAD10();
  if (!*(v19 + 16) || (v91 = sub_2EC004(v146), (v92 & 1) == 0))
  {
    sub_8085C(v146);
LABEL_86:

    if (!v56)
    {
LABEL_88:
    }

LABEL_87:
    sub_170A5C();
    v104 = swift_allocError();
    *v105 = 6;
    v56(1, 0, 0, v104);

    goto LABEL_88;
  }

  sub_808B0(*(v19 + 56) + 32 * v91, &v144);
  sub_8085C(v146);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_86;
  }

  v93 = v55;
  v141 = v142;
  v94 = v143;
  v95 = objc_opt_self();
  isa = sub_AB8FD0().super.isa;
  v146[0] = 0;
  v97 = [v95 dataWithJSONObject:isa options:0 error:v146];
  v98 = v146[0];

  if (!v97)
  {

    sub_AB3050();

    swift_willThrow();

LABEL_100:

    v56 = v136;
    if (!v136)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  type metadata accessor for SocialContactsCoordinator();
  v99 = sub_AB3260();
  v101 = v100;

  sub_90090(v99, v101);
  v141 = v94;
  sub_16B8A8(v99, v101, v12);
  v140 = v101;
  sub_466B8(v99, v101);
  v102 = v127;
  v103 = v132;
  if ((*(v127 + 48))(v12, 1, v132) == 1)
  {

    sub_466B8(v99, v140);
    sub_12E1C(v12, &qword_DF2AF0);
    goto LABEL_100;
  }

  v109 = *(v102 + 32);
  v139 = v89;
  v110 = v134;
  v109(v134, v12, v103);
  sub_13C80(0, &unk_DF2B00);
  v111 = static ICUserIdentity.active.getter();
  v112 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v111];

  v113 = objc_allocWithZone(ICStoreURLRequest);
  v114 = v112;
  v115 = sub_AB2A30();
  v116 = [v113 initWithURLRequest:v115 requestContext:v114];

  sub_13C80(0, &qword_E07CC0);
  v117 = static ICURLSessionManager.musicSession.getter();
  v118 = swift_allocObject();
  v119 = v136;
  v120 = v135;
  *(v118 + 16) = v136;
  *(v118 + 24) = v120;
  *(v118 + 32) = v131;
  *(v118 + 40) = v93;
  *(v118 + 48) = v54;
  sub_307CC(v119);
  ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v116, sub_170B68, v118);

  sub_466B8(v99, v140);
  (*(v102 + 8))(v110, v132);
}

unint64_t sub_170A5C()
{
  result = qword_DF2AF8;
  if (!qword_DF2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2AF8);
  }

  return result;
}

uint64_t sub_170B18()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_170B78()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_170C30()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_170C78()
{
  result = qword_DF2BA0;
  if (!qword_DF2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2BA0);
  }

  return result;
}

uint64_t sub_170CCC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_170E14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_170E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSGridSection.UniformCellType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSGridSection.UniformCellType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_171048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_171090(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1710E8()
{
  result = qword_DF2BF0;
  if (!qword_DF2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2BF0);
  }

  return result;
}

unint64_t sub_171140()
{
  result = qword_DF2BF8;
  if (!qword_DF2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2BF8);
  }

  return result;
}

unint64_t sub_1711A8()
{
  result = qword_DF2C00;
  if (!qword_DF2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2C00);
  }

  return result;
}

void sub_171220(uint64_t a1, Swift::UInt a2, Swift::UInt a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = sub_AB31C0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v20 = sub_2F5AD8(NSLinkAttributeName);
    if (v21)
    {
      sub_808B0(*(a1 + 56) + 32 * v20, v33);
      sub_171544();
      if (swift_dynamicCast())
      {
        v28 = a3;
        v29 = v32;
        v30 = a6;
        v22 = [v32 absoluteString];
        if (v22)
        {
          v23 = v22;
          sub_AB92A0();
        }

        v24 = v30;
        sub_AB3180();

        if ((*(v17 + 48))(v15, 1, v16) == 1)
        {
          sub_171590(v15);
        }

        else
        {
          (*(v17 + 32))(v19, v15, v16);
          (*(v17 + 16))(v13, v19, v16);
          (*(v17 + 56))(v13, 0, 1, v16);
          v25 = v28;
          sub_2E55B4(v13, a2, v28);
          [v24 removeAttribute:NSLinkAttributeName range:{a2, v25}];
          v26 = sub_AB9260();
          [v24 addAttribute:NSLinkAttributeName value:v26 range:{a2, v25}];
          (*(v17 + 8))(v19, v16);
        }
      }
    }
  }
}

unint64_t sub_171544()
{
  result = qword_DF2C10;
  if (!qword_DF2C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF2C10);
  }

  return result;
}

uint64_t sub_171590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1715F8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  v12 = sub_AB3430();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_badgeView] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  *v13 = sub_1735F8();
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;
  v79.receiver = v4;
  v79.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell();
  v17 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 layer];
  [v18 setAllowsGroupOpacity:0];

  v19 = v17;
  v20 = [v19 layer];
  [v20 setAllowsGroupBlending:0];

  v21 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = v21[4];
  v27 = v21[5];
  v75 = v27;
  v76 = v26;
  v28 = &v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v77 = *v28;
  v73 = *(v28 + 2);
  v74 = *(v28 + 1);
  v72 = *(v28 + 3);
  *v28 = v22;
  *(v28 + 1) = v23;
  *(v28 + 2) = v24;
  *(v28 + 3) = v25;
  *(v28 + 4) = v26;
  *(v28 + 5) = v27;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  sub_2F1C8(v77, v74, v73, v72);
  v78 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v37 = *&v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v38 = *(v37 + 168);
  v80[0] = *(v37 + 152);
  v80[1] = v38;
  v80[2] = *(v37 + 184);
  *(v37 + 152) = v22;
  *(v37 + 160) = v23;
  *(v37 + 168) = v24;
  *(v37 + 176) = v25;
  *(v37 + 184) = v76;
  *(v37 + 192) = v75;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v36;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v46 = v42;
  sub_75948(v80);
  sub_12E1C(v80, &unk_DF8690);

  if (qword_DE68F0 != -1)
  {
    swift_once();
  }

  v47 = xmmword_DF2C18;
  v48 = qword_DF2C28;
  v49 = qword_DF2C30;
  v50 = &v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v50 = v47;
  *(v50 + 2) = v48;
  *(v50 + 3) = v49;
  type metadata accessor for UIEdgeInsets(0);
  v51 = &v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  if (sub_AB38D0())
  {
    v52 = *(v50 + 1);
    *v51 = *v50;
    *(v51 + 1) = v52;
    sub_35D498();
    [v19 setNeedsLayout];
  }

  v53 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *&v19[v53] = 0x3FFC71C71C71C71CLL;
  if (sub_AB38D0())
  {
    sub_35D498();
  }

  v54 = *&v19[v78];
  v55 = *(v54 + 144);
  *(v54 + 144) = 2;
  if (v55 != 2)
  {
    v56 = *(v54 + 112);

    v57 = [v56 image];
    sub_788B8(v57);
  }

  v58 = &v19[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  v59 = *&v19[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  v60 = *&v19[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 8];
  v61 = *&v19[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 16];

  v62 = [v19 traitCollection];

  v63 = [v62 preferredContentSizeCategory];
  v64 = sub_ABA320();

  if (v64)
  {
    v65 = 3;
  }

  else
  {
    v65 = 1;
  }

  swift_beginAccess();
  *(v59 + 88) = v65;
  sub_2EB2A8();
  if ([v62 horizontalSizeClass] == &dword_0 + 2)
  {
    v66 = 16.0;
  }

  else
  {
    v66 = 12.0;
  }

  swift_beginAccess();
  *(v60 + 104) = v66;
  sub_2EB2A8();
  swift_beginAccess();
  *(v61 + 104) = v66;
  sub_2EB2A8();

  v67 = *&v19[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v68 = *(v58 + 3);
  if (!(v68 >> 62))
  {
    v69 = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
    if (v69)
    {
      goto LABEL_17;
    }

LABEL_25:

    return;
  }

  v69 = sub_ABB060();
  if (!v69)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v69 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v69; ++i)
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v71 = sub_36003C(i, v68);
      }

      else
      {
        v71 = *(v68 + 8 * i + 32);
      }

      TextStackView.add(_:)(v71);
    }
  }
}

uint64_t sub_171DC0(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_171ED4(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_171FD0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_172064(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

uint64_t sub_17217C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName] != result || *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_artistName + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_172550(uint64_t a1)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE81D8);
  __chkstk_darwin(v2);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  v6 = __chkstk_darwin(v5 - 8);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - v9;
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = sub_AB3430();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v43 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(&v1[v19], v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    return sub_12E1C(v12, &unk_E01230);
  }

  v41 = v1;
  v22 = v12;
  v23 = *(v14 + 32);
  v23(v18, v22, v13);
  v24 = *(v14 + 16);
  v42 = v18;
  v24(v10, v18, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v25 = *(v2 + 48);
  sub_2EC64(v45, v4);
  sub_2EC64(v10, &v4[v25]);
  if (v20(v4, 1, v13) == 1)
  {
    sub_12E1C(v10, &unk_E01230);
    if (v20(&v4[v25], 1, v13) == 1)
    {
      sub_12E1C(v4, &unk_E01230);
      return (*(v14 + 8))(v42, v13);
    }

    goto LABEL_8;
  }

  v26 = v44;
  sub_2EC64(v4, v44);
  if (v20(&v4[v25], 1, v13) == 1)
  {
    sub_12E1C(v10, &unk_E01230);
    (*(v14 + 8))(v26, v13);
LABEL_8:
    sub_12E1C(v4, &qword_DE81D8);
    goto LABEL_9;
  }

  v36 = v43;
  v23(v43, &v4[v25], v13);
  sub_2F050();
  v37 = v26;
  v38 = sub_AB91C0();
  v39 = *(v14 + 8);
  v39(v36, v13);
  sub_12E1C(v10, &unk_E01230);
  v39(v37, v13);
  sub_12E1C(v4, &unk_E01230);
  if (v38)
  {
    return (v39)(v42, v13);
  }

LABEL_9:
  v27 = v41;
  v28 = *&v41[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 16];
  if (qword_DE68F8 != -1)
  {
    swift_once();
  }

  v29 = qword_DF2C38;
  v30 = v42;
  isa = sub_AB3370().super.isa;
  v32 = [v29 stringFromDate:isa];

  v33 = sub_AB92A0();
  v35 = v34;
  swift_beginAccess();
  *(v28 + 112) = v33;
  *(v28 + 120) = v35;

  sub_2EB704();

  [v27 setNeedsLayout];
  return (*(v14 + 8))(v30, v13);
}

id sub_172ADC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_172B34(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, SEL *a7, SEL *a8)
{
  v15 = type metadata accessor for FeaturedMusicVideoVerticalCell();
  v27.receiver = a1;
  v27.super_class = v15;
  v16 = *a7;
  v17 = a1;
  objc_msgSendSuper2(&v27, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26.receiver = v17;
  v26.super_class = v15;
  objc_msgSendSuper2(&v26, *a8, a2, a3, a4, a5);
  sub_172C18(a7, v19, v21, v23, v25);
}

void sub_172C18(SEL *a1, double a2, double a3, double a4, double a5)
{
  v7 = v5;
  CGRectGetWidth(*&a2);
  [v5 *a1];
  CGRectGetWidth(v16);
  if (sub_AB38D0())
  {
    v8 = *&v5[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
    v9 = *&v7[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 8];
    v10 = *&v7[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents + 16];
    v11 = [v7 traitCollection];
    v12 = [v11 preferredContentSizeCategory];
    v13 = sub_ABA320();

    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    swift_beginAccess();
    *(v8 + 88) = v14;
    sub_2EB2A8();
    if ([v11 horizontalSizeClass] == &dword_0 + 2)
    {
      v15 = 16.0;
    }

    else
    {
      v15 = 12.0;
    }

    swift_beginAccess();
    *(v9 + 104) = v15;
    sub_2EB2A8();
    swift_beginAccess();
    *(v10 + 104) = v15;
    sub_2EB2A8();
  }
}

void sub_172D7C()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  [v11 displayScale];
  [v1 effectiveUserInterfaceLayoutDirection];
  swift_beginAccess();
  v12 = sub_76368(0, 0, 1);
  v14 = v13;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  CGRectGetMinY(v29);
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = v12;
  v30.size.height = v14;
  CGRectGetHeight(v30);
  v15 = v4;
  sub_ABA470();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_ABA490();
  if (sub_76B28(v24, v25, v26, v27))
  {
    v31.origin.x = v17;
    v31.origin.y = v19;
    v31.size.width = v21;
    v31.size.height = v23;
    CGRectGetMaxY(v31);
    v32.origin.x = v15;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    CGRectGetMinY(v32);
  }

  sub_42AD48();
}

void sub_17300C(uint64_t a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_textComponents];
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = sub_ABA320();

  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  swift_beginAccess();
  *(v5 + 88) = v11;
  sub_2EB2A8();
  if ([v8 horizontalSizeClass] == &dword_0 + 2)
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 12.0;
  }

  swift_beginAccess();
  *(v6 + 104) = v12;
  sub_2EB2A8();
  swift_beginAccess();
  *(v7 + 104) = v12;
  sub_2EB2A8();
}

__n128 sub_1731C0()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_DF2C18 = *&UIEdgeInsetsZero.top;
  *&qword_DF2C28 = v1;
  return result;
}

id sub_1731DC()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  result = [v0 setDateStyle:1];
  qword_DF2C38 = v0;
  return result;
}

uint64_t sub_1732AC()
{

  sub_12E1C(v0 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_releaseDate, &unk_E01230);
}

id sub_173364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedMusicVideoVerticalCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeaturedMusicVideoVerticalCell()
{
  result = qword_DF2C70;
  if (!qword_DF2C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1734AC()
{
  sub_2EB24();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_173570(void *a1, double a2)
{
  [a1 displayScale];
  sub_AB3A00();
  return a2;
}

void *sub_1735C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication30FeaturedMusicVideoVerticalCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_1735F8()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v29[0] = v2;
  *(&v29[0] + 1) = v5;
  v29[1] = xmmword_AF7C20;
  v30 = 0;
  v31 = 0;
  v32 = v1;
  v33 = 1;
  v34 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v29);
  v16 = v4;
  v15 = v5;
  v14 = v1;
  sub_2F118(v29, v42);

  v7 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v8 = qword_E718C8;
  v9 = qword_E718C8;
  v10 = [v3 clearColor];
  *&v23[0] = v8;
  *(&v23[0] + 1) = v10;
  v23[1] = xmmword_AF7C20;
  v24 = 0;
  v25 = 0;
  v26 = v7;
  v27 = 1;
  v28 = xmmword_AFB160;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x614E747369747261, 0xEA0000000000656DLL, v23);
  *&v17[0] = v8;
  *(&v17[0] + 1) = v10;
  v17[1] = xmmword_AF7C20;
  v18 = 0;
  v19 = 0;
  v20 = v7;
  v21 = 1;
  v22 = xmmword_AFB160;
  swift_allocObject();
  TextStackView.Component.init(identifier:labelProperties:)(0x656C655265746164, 0xEC00000064657361, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;
  sub_2F118(v23, v42);

  sub_2F118(v17, v42);

  v35[0] = v8;
  v35[1] = v10;
  v36 = xmmword_AF7C20;
  v37 = 0;
  v38 = 0;
  v39 = v7;
  v40 = 1;
  v41 = xmmword_AFB160;
  sub_2F174(v35);
  v42[0] = v2;
  v42[1] = v5;
  v43 = xmmword_AF7C20;
  v44 = 0;
  v45 = 0;
  v46 = v1;
  v47 = 1;
  v48 = xmmword_AF7C30;
  sub_2F174(v42);
  return v6;
}

double sub_173970(void *a1, double a2)
{
  v4 = sub_1735F8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [a1 preferredContentSizeCategory];
  v12 = sub_ABA320();

  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  *(v4 + 88) = v13;
  sub_2EB2A8();
  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v14 = 16.0;
  }

  else
  {
    v14 = 12.0;
  }

  swift_beginAccess();
  *(v6 + 104) = v14;
  sub_2EB2A8();
  swift_beginAccess();
  *(v8 + 104) = v14;
  sub_2EB2A8();
  sub_2F48A4(v10, a1, 0, 0);
  if (qword_DE68F0 != -1)
  {
    swift_once();
  }

  [a1 displayScale];
  sub_AB3A00();

  return a2;
}

void sub_173CA8(char a1)
{
  v1[qword_DF2C88] = a1;
  if ([v1 isViewLoaded])
  {
    [v1 loadViewIfNeeded];
    v2 = *&v1[qword_DFE2F8];
    if (v2)
    {
      v3 = [v2 collectionViewLayout];
      [swift_getObjCClassFromObject() invalidationContextClass];
      swift_getObjCClassMetadata();
      sub_13C80(0, &qword_DF1D18);
      swift_dynamicCastMetatypeUnconditional();
      v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v4 setInvalidateFlowLayoutDelegateMetrics:1];
      [v3 invalidateLayoutWithContext:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_173DD4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  *&v0[qword_DF2C80] = 0;
  v0[qword_DF2C88] = 0;
  v0[qword_DF2C90] = 1;
  v4 = &v0[qword_DF2C98];
  *v4 = 0;
  v4[1] = 0;
  v0[qword_DF2CA0] = 0;
  v5 = qword_DF2CA8;
  sub_176D68(0, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF32D8);
  swift_allocObject();
  *&v0[v5] = RequestResponse.Controller.init(request:)(v20);
  v0[qword_DF2CB0] = 0;
  *&v0[qword_DF2CB8] = 0;
  *&v0[qword_DF2CC0] = 0;
  v6 = &v0[qword_DF2CC8];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[qword_DF2CD0];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "init");
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v9 = sub_AB9260();

  [v8 setTitle:v9];

  v10 = v8;
  v11 = sub_AB9260();
  [v10 setPlayActivityFeatureName:v11];

  v12 = *&v10[qword_DF2CA8];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = (v12 + *(*v12 + 128));
  swift_beginAccess();
  v15 = *v14;
  *v14 = sub_1799E0;
  v14[1] = v13;

  sub_17654(v15);

  RequestResponse.Controller.setNeedsReload(_:)(0, 0);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = MPMediaLibraryDidChangeNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v10[qword_DF2CB8] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_1799E8, v16);

  return v10;
}

void sub_1741C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RequestResponse.Revision.content.getter(&v7);
    v2 = v7;
    v3 = v1;
    v4 = v2;
    sub_3B4724(v2);

    if (v2)
    {
      v2 = ([v4 isEmpty] ^ 1);
    }

    sub_1742E8();
    sub_3E2E84(v2 ^ 1);

    v5 = v3[qword_DF2CA0];
    v3[qword_DF2CA0] = v2;
    if (v2 == v5 || (v6 = *&v3[qword_DF2C98]) == 0)
    {
    }

    else
    {

      v6(v2);

      sub_17654(v6);
      v4 = v3;
    }
  }
}

void *sub_1742E8()
{
  v1 = qword_DF2CC0;
  if (*&v0[qword_DF2CC0])
  {
    v2 = *&v0[qword_DF2CC0];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v2 = sub_3E2914(v4);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_174390()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }

  return result;
}

void sub_174464(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  if (v1[qword_DF2C90] == 1)
  {
    v7 = MetricsReportingController.shared.unsafeMutableAddressor();
    v8 = v1[qword_DF2CB0];
    v9 = *v7;
    if (v8 == 1)
    {
      v10 = MetricsEvent.Page.libraryRecentlyDownloaded.unsafeMutableAddressor();
    }

    else
    {
      v10 = MetricsEvent.Page.libraryRecentlyAdded.unsafeMutableAddressor();
    }

    sub_141658(v10, v6, type metadata accessor for MetricsEvent.Page);
    (*(&stru_68.reloff + (swift_isaMask & *v9)))(v6, 0, 0, 0, 0, 0);
    sub_1416C0(v6, type metadata accessor for MetricsEvent.Page);
  }
}

void sub_1745C8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_174464(a3);
}

void sub_17462C(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(a5);
}

void sub_1746A4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_DF2CC8];
  v12 = *&v1[qword_DF2CC8];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  v11 = &v1[qword_DF2CD0];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
}

void sub_1747CC(void *a1)
{
  v1 = a1;
  sub_1746A4();
}

void sub_174814(uint64_t a1)
{
  v31.receiver = v1;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  v5 = v1[qword_DF2CB0];
  v1[qword_DF2CB0] = (rawValue & 2) != 0;
  sub_177B68(v5);
  v6 = *&v1[qword_DF2CA8];
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  v11 = *(v6 + 96);
  v32[4] = *(v6 + 80);
  v32[5] = v11;
  v32[2] = v9;
  v32[3] = v10;
  v12 = *(v6 + 112);
  v13 = *(v6 + 128);
  v14 = *(v6 + 144);
  v33 = *(v6 + 160);
  v32[7] = v13;
  v32[8] = v14;
  v32[6] = v12;
  v32[0] = v7;
  v32[1] = v8;
  v15 = *(v6 + 128);
  v27 = *(v6 + 112);
  v28 = v15;
  v29 = *(v6 + 144);
  v30 = *(v6 + 160);
  v16 = *(v6 + 64);
  v23 = *(v6 + 48);
  v24 = v16;
  v17 = *(v6 + 96);
  v25 = *(v6 + 80);
  v26 = v17;
  v18 = *(v6 + 32);
  v21 = *(v6 + 16);
  v22 = v18;
  sub_15F84(v32, v19, &qword_DF32D0);
  sub_174994();
  v19[6] = v27;
  v19[7] = v28;
  v19[8] = v29;
  v20 = v30;
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[5] = v26;
  v19[0] = v21;
  v19[1] = v22;
  RequestResponse.Controller.request.setter(v19);
}

uint64_t sub_174994()
{
  v1 = v0;
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF82B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF8670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  *(inited + 48) = sub_AB92A0();
  *(inited + 56) = v6;
  *(inited + 64) = sub_AB92A0();
  *(inited + 72) = v7;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v8;
  *(inited + 96) = sub_AB92A0();
  *(inited + 104) = v9;
  *(inited + 112) = sub_AB92A0();
  *(inited + 120) = v10;
  *(inited + 128) = sub_AB92A0();
  *(inited + 136) = v11;
  *(inited + 144) = sub_AB92A0();
  *(inited + 152) = v12;
  sub_96B2C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE730);
  swift_arrayDestroy();
  isa = sub_AB8FD0().super.isa;
  v14 = [objc_opt_self() sortDescriptorWithRelatedProperties:isa ascending:0];

  *(v3 + 32) = v14;

  *(v0 + 56) = v3;
  v15 = UITraitCollection.mediaLibrary.getter();

  *v0 = v15;
  v16.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  *(v0 + 80) = v16;
  *(v0 + 88) = 0;
  if ((rawValue & 2) != 0 && (v16.rawValue & 0x80) == 0)
  {
    *(v0 + 80) = v16.rawValue | 0x80;
  }

  v17 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if ((v17 & 2) != 0)
  {
    v18 = 0xD000000000000013;
  }

  else
  {
    v18 = 0x796C746E65636552;
  }

  if ((v17 & 2) != 0)
  {
    v19 = 0x8000000000B54460;
  }

  else
  {
    v19 = 0xEE00646564644120;
  }

  *(v1 + 136) = v18;
  *(v1 + 144) = v19;
  return result;
}

void sub_174C4C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_174814(a3);
}

uint64_t sub_174CB8(void *a1)
{
  sub_3B316C(a1);
  type metadata accessor for CollectionViewSection.SectionHeaderView(0);
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  type metadata accessor for RecentlyAddedViewController.NoContentPlaceholderView();
  sub_AB92A0();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();
}

void sub_174DB0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 music_inheritedLayoutInsets];
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v37 = v21;
      v39 = v19;
      v22 = UIEdgeInsetsInsetRect(v7, v9, v11, v13, v17, v19);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = sub_45B2C4(v3, v7, v9, v11, v13);
      v42.origin.x = v7;
      v42.origin.y = v9;
      v42.size.width = v11;
      v42.size.height = v13;
      Width = CGRectGetWidth(v42);
      sub_471A4();
      sub_AB38F0();
      [v3 displayScale];
      v31 = v30;
      v43.origin.x = v22;
      v43.origin.y = v24;
      v43.size.width = v26;
      v43.size.height = v28;
      CGRectGetWidth(v43);
      if (__OFSUB__(v29, 1))
      {
        __break(1u);
      }

      else
      {
        sub_AB3A00();
        v31 = v32;
        _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
        v34 = v33;

        sub_2F48A4(v34, v3, 0, 0);

        if (qword_DE6948 == -1)
        {
LABEL_5:
          [v3 displayScale];
          sub_AB3A00();
          v36 = v35;

          [a1 setItemSize:{v31, v36}];
          [a1 setSectionInset:{10.0, v40, 0.0, v38}];
          [a1 setMinimumLineSpacing:12.0];
          [a1 setSectionHeadersPinToVisibleBounds:0];

          return;
        }
      }

      swift_once();
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}