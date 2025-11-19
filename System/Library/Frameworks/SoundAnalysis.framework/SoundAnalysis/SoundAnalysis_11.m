void sub_1C9878818()
{
  sub_1C987B3C8();
  if (v1)
  {
    sub_1C97A2CEC(&qword_1EC3CD2A0);
    v2 = sub_1C987B39C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  sub_1C987B300();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(v0 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    v14 = sub_1C9A92AD8();
    v15 = sub_1C9A32230(v13, v12);
    v16 = v15;
    if (v17)
    {
      v18 = (v2[6] + 16 * v15);
      *v18 = v13;
      v18[1] = v12;

      v19 = v2[7];
      v20 = *(v19 + 8 * v16);
      *(v19 + 8 * v16) = v14;

      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v21 = (v2[6] + 16 * v15);
      *v21 = v13;
      v21[1] = v12;
      *(v2[7] + 8 * v15) = v14;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C98789E0()
{
  sub_1C987B3C8();
  if (v1)
  {
    sub_1C97A2CEC(&qword_1EC3CA080);
    v2 = sub_1C987B39C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(v0 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (*(v0 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = v10[1];
    *&v27[0] = *v10;
    *(&v27[0] + 1) = v11;

    swift_dynamicCast();
    swift_dynamicCast();
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_1C97A2D34(&v22, v26);
    v19 = v23;
    v20 = v24;
    v21 = v25;
    sub_1C97A2D34(v26, v27);
    v12 = sub_1C9A93518() & ~(-1 << *(v2 + 32));
    if (((-1 << v12) & ~*(v7 + 8 * (v12 >> 6))) == 0)
    {
      sub_1C987B414();
      while (++v14 != v16 || (v15 & 1) == 0)
      {
        v17 = v14 == v16;
        if (v14 == v16)
        {
          v14 = 0;
        }

        v15 |= v17;
        if (*(v7 + 8 * v14) != -1)
        {
          sub_1C987B400();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1C987B428();
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v18 = *(v2 + 48) + 40 * v13;
    *v18 = v19;
    *(v18 + 16) = v20;
    *(v18 + 32) = v21;
    sub_1C97A2D34(v27, (*(v2 + 56) + 32 * v13));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1C9878C70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C97A2CEC(&qword_1EC3CA080);
    v2 = sub_1C9A93808();
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(*(a1 + 56) + 8 * v11);
    *&v32[0] = *v12;
    *(&v32[0] + 1) = v13;

    v14;
    swift_dynamicCast();
    sub_1C97BD318(0, &qword_1EC3C54B0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C97A2D34(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C97A2D34(v31, v32);
    result = sub_1C9A93518();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1C97A2D34(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1C9878F3C()
{
  sub_1C987B3C8();
  if (v1)
  {
    sub_1C97A2CEC(&qword_1EC3CA098);
    v2 = sub_1C987B39C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(v0 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = *(*(v0 + 56) + 8 * (__clz(__rbit64(v5)) | (v8 << 6)));

    v11 = v10;
    swift_dynamicCast();
    v12 = sub_1C9A93518() & ~(-1 << *(v2 + 32));
    if (((-1 << v12) & ~*(v7 + 8 * (v12 >> 6))) == 0)
    {
      sub_1C987B414();
      while (++v14 != v16 || (v15 & 1) == 0)
      {
        v17 = v14 == v16;
        if (v14 == v16)
        {
          v14 = 0;
        }

        v15 |= v17;
        if (*(v7 + 8 * v14) != -1)
        {
          sub_1C987B400();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1C987B428();
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v18 = *(v2 + 48) + 40 * v13;
    *v18 = v19;
    *(v18 + 16) = v20;
    *(v18 + 32) = v21;
    *(*(v2 + 56) + 8 * v13) = v11;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1C9879164()
{
  sub_1C987B3C8();
  if (v1)
  {
    sub_1C97A2CEC(&qword_1EC3CA090);
    v4 = sub_1C987B39C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  sub_1C987B300();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    sub_1C987B378();

    sub_1C97A2CEC(&qword_1EC3C6330);
    swift_dynamicCast();
    sub_1C97A2D34(&v22, v24);
    sub_1C97A2D34(v24, v25);
    sub_1C97A2D34(v25, &v23);
    result = sub_1C9A32230(v3, v2);
    v13 = result;
    if (v14)
    {
      sub_1C987B3E8();
      *v15 = v3;
      v15[1] = v2;

      v2 = (v4[7] + 32 * v13);
      sub_1C97A592C(v2);
      result = sub_1C97A2D34(&v23, v2);
      v11 = v12;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      sub_1C987B3D4();
      *(v4 + v16 + 64) |= v17;
      sub_1C987B3E8();
      *v18 = v3;
      v18[1] = v2;
      result = sub_1C97A2D34(&v23, (v4[7] + 32 * v13));
      v19 = v4[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      v4[2] = v21;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v4;
    }

    v7 = *(v0 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C9879360(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1C9A93B18() & 1) != 0)
    {
      v6 = a1[4] == a2[4] && a1[5] == a2[5];
      if (v6 || (sub_1C9A93B18() & 1) != 0)
      {
        v7 = a1[6] == a2[6] && a1[7] == a2[7];
        if (v7 || (sub_1C9A93B18() & 1) != 0)
        {
          v8 = a1[8] == a2[8] && a1[9] == a2[9];
          if (v8 || (sub_1C9A93B18() & 1) != 0)
          {
            v9 = a1[11];
            v10 = a2[11];
            if (v9)
            {
              if (v10)
              {
                v11 = a1[10] == a2[10] && v9 == v10;
                if (v11 || (sub_1C9A93B18() & 1) != 0)
                {
                  return 1;
                }
              }
            }

            else if (!v10)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1C9879468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65707974627573 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4365707974627573 && a2 == 0xEE00747865746E6FLL;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6465746365746564 && a2 == 0xEF737365636F7250;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000016 && 0x80000001C9AD7360 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9A93B18();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C9879664(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x65707974627573;
      break;
    case 3:
      result = 0x4365707974627573;
      break;
    case 4:
      result = 0x6465746365746564;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9879728(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CA0C0);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C987AFC0();
  sub_1C9A93DD8();
  v10[15] = 0;
  sub_1C987B330();
  sub_1C9A939C8();
  if (!v1)
  {
    v10[14] = 1;
    sub_1C987B330();
    sub_1C9A939C8();
    v10[13] = 2;
    sub_1C987B330();
    sub_1C9A939C8();
    v10[12] = 3;
    sub_1C987B330();
    sub_1C9A939C8();
    v10[11] = 4;
    sub_1C987B330();
    sub_1C9A939C8();
    v10[10] = 5;
    sub_1C987B330();
    sub_1C9A93998();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C98798F0()
{
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  if (!*(v0 + 88))
  {
    return sub_1C9A93CE8();
  }

  sub_1C9A93CE8();

  return sub_1C9A92528();
}

uint64_t sub_1C98799A0()
{
  sub_1C9A93CC8();
  sub_1C98798F0();
  return sub_1C9A93D18();
}

void *sub_1C98799E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CA0B0);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C987AFC0();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  LOBYTE(v36[0]) = 0;
  sub_1C987B320();
  v11 = sub_1C9A938A8();
  v13 = v12;
  LOBYTE(v36[0]) = 1;
  sub_1C987B320();
  v29 = sub_1C9A938A8();
  v30 = v11;
  v34 = v14;
  LOBYTE(v36[0]) = 2;
  sub_1C987B320();
  v15 = sub_1C9A938A8();
  v31 = v16;
  v28 = v15;
  LOBYTE(v36[0]) = 3;
  sub_1C987B320();
  v27 = sub_1C9A938A8();
  v33 = v17;
  LOBYTE(v36[0]) = 4;
  sub_1C987B320();
  v26 = sub_1C9A938A8();
  v32 = v18;
  v37 = 5;
  sub_1C987B320();
  v19 = sub_1C9A93878();
  v21 = v20;
  (*(v7 + 8))(v10, v5);
  __src[0] = v30;
  __src[1] = v13;
  __src[2] = v29;
  __src[3] = v34;
  __src[4] = v28;
  v22 = v31;
  __src[5] = v31;
  __src[6] = v27;
  v23 = v33;
  __src[7] = v33;
  __src[8] = v26;
  v24 = v32;
  __src[9] = v32;
  __src[10] = v19;
  __src[11] = v21;
  sub_1C987B014(__src, v36);
  sub_1C97A592C(a1);
  v36[0] = v30;
  v36[1] = v13;
  v36[2] = v29;
  v36[3] = v34;
  v36[4] = v28;
  v36[5] = v22;
  v36[6] = v27;
  v36[7] = v23;
  v36[8] = v26;
  v36[9] = v24;
  v36[10] = v19;
  v36[11] = v21;
  sub_1C987B04C(v36);
  return memcpy(a2, __src, 0x60uLL);
}

uint64_t sub_1C9879E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9879468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9879E28(uint64_t a1)
{
  v2 = sub_1C987AFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9879E64(uint64_t a1)
{
  v2 = sub_1C987AFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9879EA8()
{
  sub_1C9A93CC8();
  sub_1C98798F0();
  return sub_1C9A93D18();
}

void *sub_1C9879EE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C98799E0(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

id sub_1C9879F4C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  qword_1EC3D31A8 = result;
  return result;
}

uint64_t sub_1C9879F80(uint64_t a1)
{
  if (qword_1EC3C5D90 != -1)
  {
    sub_1C987B350();
    swift_once();
  }

  v2 = qword_1EC3D31A8;
  v3 = sub_1C9A92478();
  v4 = sub_1C9A92478();
  v5 = sub_1C9A92478();
  v6 = sub_1C9A92478();
  v7 = sub_1C9A92478();
  if (*(a1 + 88))
  {
    v8 = sub_1C9A92478();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v2 signatureWithDomain:v3 type:v4 subType:v5 subtypeContext:v6 detectedProcess:v7 triggerThresholdValues:v8];

  if (v9)
  {
    v9;
    result = sub_1C9A92308();
    __break(1u);
  }

  else
  {
    sub_1C987ACF4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return v4;
  }

  return result;
}

uint64_t sub_1C987A114(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1C97BD318(0, &qword_1EC3C54B0);
    v3 = sub_1C9A931B8();
  }

  else
  {
    v3 = sub_1C9A92AD8();
  }

  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3CA078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA95C0;
  *(inited + 32) = sub_1C9A924A8();
  *(inited + 40) = v6;
  v7 = v4;
  *(inited + 48) = sub_1C9A92918();
  *(inited + 56) = sub_1C9A924A8();
  *(inited + 64) = v8;
  *(inited + 72) = sub_1C9A92918();
  *(inited + 80) = sub_1C9A924A8();
  *(inited + 88) = v9;
  *(inited + 96) = sub_1C9A92918();
  *(inited + 104) = sub_1C9A924A8();
  *(inited + 112) = v10;
  *(inited + 120) = sub_1C9A92918();
  *(inited + 128) = sub_1C9A924A8();
  *(inited + 136) = v11;
  *(inited + 144) = v7;
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v12 = sub_1C9A92348();
  v13 = sub_1C9878C70(v12);

  return v13;
}

void sub_1C987A2AC(uint64_t a1, void (*a2)(id))
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v24 = sub_1C9A924A8();
  v25 = v4;
  sub_1C9A93548();
  sub_1C98784BC(a1, &v28);
  sub_1C97C90D4(&v26);
  if (!v29)
  {
    sub_1C97A59D0(&v28);
    goto LABEL_10;
  }

  sub_1C97BD318(0, &qword_1EC3C54B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    a2(0);
    return;
  }

  a2([v24 BOOLValue]);
  if ([v24 BOOLValue])
  {
LABEL_26:

    return;
  }

  *&v28 = sub_1C9A924A8();
  *(&v28 + 1) = v5;
  sub_1C9A93548();
  sub_1C98784BC(a1, &v28);
  sub_1C97C90D4(&v26);
  if (v29)
  {
    if (swift_dynamicCast())
    {
      v6 = v24;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_1C97A59D0(&v28);
    v6 = 0;
  }

  *&v28 = sub_1C9A924A8();
  *(&v28 + 1) = v7;
  sub_1C9A93548();
  sub_1C98784BC(a1, &v28);
  sub_1C97C90D4(&v26);
  if (v29)
  {
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v25;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_1C97A59D0(&v28);
    v9 = 0;
    v10 = 0;
  }

  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9A91B58();
  sub_1C97BFF6C(v11, qword_1EC3D3108);

  v12 = v6;
  v13 = sub_1C9A91B38();
  v14 = sub_1C9A92FC8();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_26;
  }

  v23 = v9;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  *&v28 = v16;
  *v15 = 136315394;
  if (v6)
  {
    v17 = [v12 integerValue];
  }

  else
  {
    v17 = 0;
  }

  v26 = v17;
  v27 = v6 == 0;
  sub_1C97A2CEC(&qword_1EC3CA070);
  v18 = sub_1C9A924F8();
  v20 = sub_1C9849140(v18, v19, &v28);

  *(v15 + 4) = v20;
  *(v15 + 12) = 2080;
  if (v10)
  {
    v21 = v23;
  }

  else
  {
    v21 = 0x6E776F6E6B6E753CLL;
  }

  if (!v10)
  {
    v10 = 0xE90000000000003ELL;
  }

  v22 = sub_1C9849140(v21, v10, &v28);

  *(v15 + 14) = v22;
  _os_log_impl(&dword_1C9788000, v13, v14, "Snapshot rejected; reason: %s, %s", v15, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1CCA93280](v16, -1, -1);
  MEMORY[0x1CCA93280](v15, -1, -1);
}

uint64_t sub_1C987A6CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1C9A92328();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_1C987A75C(uint64_t a1, int a2, uint64_t a3, char a4, double a5)
{
  *(v5 + 156) = a4;
  *(v5 + 144) = a3;
  *(v5 + 152) = a2;
  *(v5 + 136) = a5;
  *(v5 + 128) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C987A78C, 0, 0);
}

uint64_t sub_1C987A78C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 16;
  *(v1 + 16) = v2;
  *(v1 + 24) = sub_1C987AB48;
  v4 = swift_continuation_init();
  sub_1C97A2CEC(qword_1EC3CF370);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = qword_1EC3C57B8;

  if (v7 != -1)
  {
    swift_once();
  }

  if (byte_1EC3D3138 != 1)
  {
    goto LABEL_7;
  }

  sub_1C9879F80(*(v1 + 128));
  sub_1C987A114(*(v1 + 152) & 0x1010101, *(v1 + 144), *(v1 + 156) & 1);
  if (qword_1EC3C5D90 != -1)
  {
    sub_1C987B350();
    swift_once();
  }

  v8 = *(v1 + 136);
  v18 = qword_1EC3D31A8;
  v17 = sub_1C9A922F8();

  v9 = sub_1C9A922F8();

  sub_1C97AA878();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C987ACCC;
  *(v10 + 24) = v6;
  *(v1 + 112) = sub_1C987ACD4;
  *(v1 + 120) = v10;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1C987A6CC;
  *(v1 + 104) = &unk_1F4936750;
  v11 = _Block_copy((v1 + 80));

  v12 = [v18 snapshotWithSignature:v17 delay:0 events:0 payload:v9 actions:v11 reply:v8];
  _Block_release(v11);

  if (!v12)
  {
    type metadata accessor for SNError();
    v13 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    swift_willThrow();

    v14 = 0;
    atomic_compare_exchange_strong_explicit((v5 + 16), &v14, 1u, memory_order_relaxed, memory_order_relaxed);
    if (v14)
    {
    }

    else
    {
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_allocError();
      *v15 = v13;
      swift_continuation_throwingResumeWithError();
    }
  }

  else
  {
LABEL_7:
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C987AB48()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

atomic_uchar *sub_1C987AC50(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 136))();
  v3 = 0;
  atomic_compare_exchange_strong_explicit(result, &v3, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v3)
  {

    return swift_continuation_throwingResume();
  }

  return result;
}

uint64_t sub_1C987ACDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C987ACF4()
{
  result = qword_1EC3CA088;
  if (!qword_1EC3CA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA088);
  }

  return result;
}

id sub_1C987AD48(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {

    return a5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoBugCaptureUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C987AE68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C987AEA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C987AF14()
{
  result = qword_1EC3CA0A0;
  if (!qword_1EC3CA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA0A0);
  }

  return result;
}

unint64_t sub_1C987AF6C()
{
  result = qword_1EC3CA0A8;
  if (!qword_1EC3CA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA0A8);
  }

  return result;
}

unint64_t sub_1C987AFC0()
{
  result = qword_1EC3CA0B8;
  if (!qword_1EC3CA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA0B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoBugCaptureUtils.Signature.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoBugCaptureUtils.Signature.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C987B1F4()
{
  result = qword_1EC3CA0C8;
  if (!qword_1EC3CA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA0C8);
  }

  return result;
}

unint64_t sub_1C987B24C()
{
  result = qword_1EC3CA0D0;
  if (!qword_1EC3CA0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA0D0);
  }

  return result;
}

unint64_t sub_1C987B2A4()
{
  result = qword_1EC3CA0D8[0];
  if (!qword_1EC3CA0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CA0D8);
  }

  return result;
}

uint64_t sub_1C987B39C()
{

  return sub_1C9A93808();
}

uint64_t sub_1C987B43C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1C987B52C;

  return v4(v1 + 16);
}

uint64_t sub_1C987B52C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C987B628()
{
  sub_1C97AA884();
  v5 = (v1 + *v1);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_1C987B710;

  return v5(v0 + 16);
}

uint64_t sub_1C987B710()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C987B80C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return sub_1C9859310(sub_1C987B84C);
}

uint64_t sub_1C987B84C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = v0[2];
  if (v1[2])
  {
    v0[4] = v1[5];
    v0[5] = v1[3];

    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    sub_1C97DA950(v2);
    sub_1C97DABB0();

    return sub_1C987BE5C();
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    sub_1C97DA91C();
    sub_1C97DABB0();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1C987B974()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C987BA84()
{
  sub_1C97AA95C();
  v1 = *(v0 + 64);
  type metadata accessor for XPCProxyDecoder.UnkeyedContainer();
  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1C987BB14()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C987BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C987BB9C, 0, 0);
}

uint64_t sub_1C987BB9C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  type metadata accessor for XPCProxyDecoder();
  inited = swift_initStackObject();
  v0[12] = inited;
  inited[2] = v4;
  inited[3] = v3;
  inited[4] = v2;
  inited[5] = v1;

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  sub_1C97DA950(v6);
  sub_1C97DABB0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C987BC80()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[14] = v0;

  if (!v0)
  {
    v7[15] = v3;
    v7[16] = v5;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C987BD90()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C987D494();
  sub_1C981E1F8();
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1(v2, v3);
}

uint64_t sub_1C987BDF8()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C987D494();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C987BE5C()
{
  sub_1C97DA934();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);
  v2 = sub_1C987D470();

  return (sub_1C987BB78)(v2);
}

uint64_t sub_1C987BF14()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 120) = v9;

  if (v0)
  {
    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    *(v5 + 128) = v3;
    sub_1C987D484();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1C987C048()
{
  sub_1C97AA884();
  v1 = v0[16];
  v0[17] = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  v5 = (v1 + *v1);
  swift_task_alloc();
  sub_1C97DA928();
  v0[18] = v2;
  *v2 = v3;
  sub_1C987D44C(v2);

  return v5(v0 + 10);
}

uint64_t sub_1C987C12C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C987C228()
{
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + 136);

    v2 = *(v1 + 16);
    v3 = *(v0 + 136);
    if (v2)
    {
      v24 = MEMORY[0x1E69E7CC0];
      sub_1C97B7D60(0, v2, 0);
      v4 = v24;
      v5 = (v3 + 32);
      do
      {
        v19 = v5[1];
        v21 = *v5;
        sub_1C97A8F30(*v5);
        v7 = *(v24 + 16);
        v6 = *(v24 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1C97B7D60(v6 > 1, v7 + 1, 1);
        }

        *(v24 + 16) = v7 + 1;
        v8 = v24 + 32 * v7;
        *(v8 + 32) = v21;
        *(v8 + 48) = v19;
        v5 += 2;
        --v2;
      }

      while (v2);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v0 + 8);

    v18(v4);
  }

  else
  {
    v20 = *(v0 + 80);
    v22 = *(v0 + 96);
    v9 = *(v0 + 136);
    sub_1C97A2CEC(&qword_1EC3C6A88);
    inited = swift_initStackObject();
    inited[1] = xmmword_1C9A9EDD0;
    inited[2] = v20;
    inited[3] = v22;
    v11 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v14 = *(v13 + 24) >> 1, v14 <= v11))
    {
      sub_1C97E5F5C();
      v13 = v15;
      v14 = *(v15 + 24) >> 1;
    }

    if (v14 <= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      swift_arrayInitWithCopy();

      ++*(v13 + 16);
      *(v0 + 136) = v13;
      v23 = (*(v0 + 128) + **(v0 + 128));
      swift_task_alloc();
      sub_1C97DA928();
      *(v0 + 144) = v16;
      *v16 = v17;
      sub_1C987D44C();

      v23(v0 + 80);
    }
  }
}

uint64_t sub_1C987C518()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C987C5A4()
{
  sub_1C987C584();

  return swift_deallocClassInstance();
}

void sub_1C987C5F0()
{
  v2 = *(v0 + 16);
  v3 = *(v2 + 24);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= *(*(v2 + 16) + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97AA95C();
  *(v5 + 24) = v4 + 1;
  v6 = sub_1C987D470();
  sub_1C97A8F30(v6);
  v7 = sub_1C987D470();

  v8(v7);
}

uint64_t sub_1C987C694()
{

  sub_1C97AA878();

  return swift_deallocClassInstance();
}

uint64_t sub_1C987C6C8()
{
  sub_1C97AA884();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C987C778()
{
  v1 = v0[11];
  v13 = v0[10];
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  type metadata accessor for XPCProxyDecoder();
  inited = swift_initStackObject();
  v0[14] = inited;
  inited[2] = v3;
  inited[3] = v2;
  inited[4] = v4;
  inited[5] = v5;
  v7 = *(v13 + 16);
  sub_1C987D4AC();
  v12 = (v7 + *v7);
  swift_task_alloc();
  sub_1C97DA928();
  v0[15] = v8;
  *v8 = v9;
  v8[1] = sub_1C987C8D4;
  v10 = v0[13];

  return (v12)(v10, inited);
}

uint64_t sub_1C987C8D4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C987C9D0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = v0[13];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  swift_setDeallocating();
  sub_1C987D494();
  (*(v2 + 32))(v4, v1, v3);

  sub_1C97DA91C();
  sub_1C97DABB0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C987CA68()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C987D494();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C987CAD8()
{
  sub_1C987D494();

  return swift_deallocClassInstance();
}

uint64_t sub_1C987CBD8()
{
  sub_1C97AA95C();
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;

  return sub_1C987C6C8();
}

uint64_t sub_1C987CCA0()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = v0[2];
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  type metadata accessor for XPCProxyDecoder.SingleValueContainer();
  v6 = swift_allocObject();
  v0[3] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v4;
  v6[5] = v5;
  sub_1C987D4AC();

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  sub_1C97DA950(v7);
  sub_1C97DABB0();

  return v8(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1C987CDB4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[5] = v0;

  if (!v0)
  {
    v7[6] = v3;
    v7[7] = v5;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C987CEC4()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  v1[1] = vextq_s8(v0[3], v0[3], 8uLL);

  sub_1C981E1F8();

  return v2(&unk_1C9AA9A10, v1);
}

uint64_t sub_1C987CF70()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C987CFD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C987D07C;

  return sub_1C98A9544();
}

uint64_t sub_1C987D07C()
{
  sub_1C97AA95C();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;

  sub_1C981E1F8();
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_1C987D178()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C987CFD8();
}

uint64_t sub_1C987D200()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  sub_1C97AA890();
  v5 = *v0;
  sub_1C97AA83C();
  *v6 = v5;

  sub_1C981E1F8();

  return v7(v4, v2);
}

uint64_t sub_1C987D2F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C97AA298;

  return sub_1C987B43C(a2);
}

uint64_t sub_1C987D398()
{
  sub_1C97AA95C();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  sub_1C97DA928();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1C97D9C3C;

  return sub_1C987D2F8(v3, v4);
}

uint64_t sub_1C987D494()
{
  v2 = *(v0 + 16);

  return sub_1C97AA074(v2);
}

uint64_t sub_1C987D4AC()
{

  return sub_1C97A8F30(v0);
}

void sub_1C987D4CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    sub_1C97B7AC4();
    v4 = sub_1C9887A94(a1);
    v5 = v21;
    v6 = 0;
    v7 = a1 + 64;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_24;
        }

        v9 = *(*(a1 + 56) + 8 * v4);
        v10 = *(v22 + 16);
        if (v10 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          v19 = v3;
          sub_1C97B7AC4();
          v3 = v19;
          v2 = v20;
          v7 = a1 + 64;
          v5 = v21;
        }

        *(v22 + 16) = v10 + 1;
        *(v22 + 8 * v10 + 32) = v9;
        v11 = 1 << *(a1 + 32);
        if (v4 >= v11)
        {
          goto LABEL_25;
        }

        v12 = *(v7 + 8 * v8);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_27;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v8 << 6;
          v15 = v8 + 1;
          v16 = (a1 + 72 + 8 * v8);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1C97FDD94(v4, v2, v3 & 1);
              v7 = a1 + 64;
              v5 = v21;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_18;
            }
          }

          sub_1C97FDD94(v4, v2, v3 & 1);
          v7 = a1 + 64;
          v5 = v21;
        }

LABEL_18:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v11;
        if (v11 < 0)
        {
          break;
        }
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
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_1C987D704(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_40;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  while (v5)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C97B7A3C();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v32;
    v8 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v8) = 1;
    }

    v9 = 4 << v8;
    v10 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10 = v4;
    }

    v29 = v5;
    v30 = v10;
    v11 = 15;
    while (1)
    {
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = v11 & 0xC;
      v13 = v11;
      if (v12 == v9)
      {
        v23 = v11;
        v24 = v11 & 0xC;
        v13 = sub_1C999C9E8(v11, a1, a2);
        v12 = v24;
        v11 = v23;
      }

      v14 = v13 >> 16;
      if (v13 >> 16 >= v30)
      {
        goto LABEL_37;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = v11;
        v18 = v12;
        v19 = sub_1C9A925D8();
        v12 = v18;
        v11 = v17;
        v16 = v19;
        if (v19 < 0)
        {
          goto LABEL_38;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v31[0] = a1;
        v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(v31 + v14);
        if (v16 < 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v25 = v11;
          v26 = v12;
          v15 = sub_1C9A93658();
          v12 = v26;
          v11 = v25;
        }

        v16 = *(v15 + v14);
        if (v16 < 0)
        {
          goto LABEL_38;
        }
      }

      v20 = v6 + 1;
      v21 = v9;
      v4 = a2;
      v32 = v7;
      v22 = *(v7 + 16);
      if (v22 >= *(v7 + 24) >> 1)
      {
        v27 = v12;
        v28 = v11;
        sub_1C97B7A3C();
        v12 = v27;
        v11 = v28;
        v7 = v32;
      }

      *(v7 + 16) = v22 + 1;
      *(v7 + v22 + 32) = v16;
      v9 = v21;
      if (v12 == v21)
      {
        v11 = sub_1C999C9E8(v11, a1, a2);
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        if (v30 <= v11 >> 16)
        {
          goto LABEL_39;
        }

        v11 = sub_1C9A925B8();
      }

      else
      {
        v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      ++v6;
      if (v20 == v29)
      {
        return;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v5 = sub_1C9A925A8();
  }
}

uint64_t sub_1C987D9A4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1C97B7BE8(0, v5, 0);
  v24 = v25;
  v8 = sub_1C9886CD8();
  if (v8 < 0 || v8 >= 1 << *(a1 + 32))
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((*(a1 + 64 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }

  if (*(a1 + 36) != v7)
  {
    goto LABEL_19;
  }

  v9 = (*(a1 + 48) + 16 * v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = (*(a1 + 56) + 16 * v8);
  v13 = *v12;
  v14 = v12[1];
  swift_bridgeObjectRetain_n();
  sub_1C97CE3DC(v13, v14);
  sub_1C97CE3DC(v13, v14);

  sub_1C97A5978(v13, v14);

  sub_1C97CE3DC(v13, v14);

  sub_1C97CE3DC(v13, v14);

  if (a3)
  {
    v15 = MEMORY[0x1E699BCE8];
  }

  else
  {
    v15 = MEMORY[0x1E699BCE0];
  }

  v16 = sub_1C9881454(v10, v11, *(a2 + 16), v15);
  if (!v3)
  {
    v17 = v16;
    type metadata accessor for E5RTIOPort();
    *(swift_allocObject() + 16) = v17;
    v18 = e5rt_io_port_retain_tensor_desc();
    if (v18)
    {
      v19 = v18;
      sub_1C9885EF4();
      swift_allocError();
      *v20 = v19;
      *(v20 + 4) = 0;
    }

    else
    {
      sub_1C9886C04();
      swift_allocError();
      *v21 = 0;
    }

    swift_willThrow();
  }

  sub_1C97A5978(v13, v14);
  sub_1C97A5978(v13, v14);
  swift_bridgeObjectRelease_n();
  sub_1C97A5978(v13, v14);

  return v24;
}

uint64_t sub_1C987DE50(uint64_t a1, void (*a2)(void *, uint64_t *, void *))
{
  v3 = v2;
  v5 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  sub_1C97B7BA8(0, v5, 0);
  v6 = v20;
  if (v5)
  {
    v7 = (a1 + 40);
    while (1)
    {
      v8 = *v7;
      v17[0] = *(v7 - 1);
      v17[1] = v8;

      a2(v19, &v18, v17);
      if (v3)
      {
        break;
      }

      v10 = v19[0];
      v9 = v19[1];
      v11 = v18;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C97B7BA8(v12 > 1, v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      v14 = (v6 + 24 * v13);
      v14[4] = v10;
      v14[5] = v9;
      v14[6] = v11;
      v7 += 2;
      --v5;
      v3 = 0;
      if (!v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1C987DF8C(uint64_t a1, void (*a2)(uint64_t *, __int128 *, uint64_t *), uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *(a1 + 16);
  v53 = MEMORY[0x1E69E7CC0];
  sub_1C97B7BC8(0, v6, 0);
  v7 = v5 + 64;
  v8 = v53;
  v9 = -1;
  v10 = -1 << *(v5 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v5 + 64);
  v12 = (63 - v10) >> 6;
  v39 = v6;
  v40 = v5;
  if (v6)
  {

    v14 = 0;
    v6 = 0;
    while (1)
    {
      v43 = v8;
      if (!v11)
      {
        break;
      }

LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v6 << 6);
      v17 = *(v5 + 56);
      v18 = (*(v5 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *(v17 + 8 * v16);
      v47 = *v18;
      v48 = v19;
      v49 = v20;

      v8 = a3;
      a2(&v50, &v52, &v47);
      if (v4)
      {

LABEL_30:

        return v8;
      }

      v22 = v50;
      v21 = v51;
      v23 = v52;
      v8 = v43;
      v53 = v43;
      v25 = *(v43 + 16);
      v24 = *(v43 + 24);
      if (v25 >= v24 >> 1)
      {
        v44 = v52;
        v38 = v51;
        result = sub_1C97B7BC8(v24 > 1, v25 + 1, 1);
        v21 = v38;
        v23 = v44;
        v8 = v53;
      }

      ++v14;
      v11 &= v11 - 1;
      *(v8 + 16) = v25 + 1;
      v26 = v8 + 32 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v21;
      *(v26 + 48) = v23;
      v5 = v40;
      v4 = 0;
      if (v14 == v39)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_32;
      }

      v11 = *(v7 + 8 * v15);
      ++v6;
      if (v11)
      {
        v6 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_16:
    if (!v11)
    {
      goto LABEL_18;
    }

    do
    {
      v45 = v8;
LABEL_22:
      v28 = __clz(__rbit64(v11)) | (v6 << 6);
      v29 = (*(v5 + 48) + 16 * v28);
      v30 = v29[1];
      v31 = *(*(v5 + 56) + 8 * v28);
      v47 = *v29;
      v48 = v30;
      v49 = v31;

      v8 = a3;
      a2(&v50, &v52, &v47);
      if (v4)
      {

        goto LABEL_30;
      }

      v32 = v50;
      v33 = v51;
      v34 = v52;
      v8 = v45;
      v53 = v45;
      v36 = *(v45 + 16);
      v35 = *(v45 + 24);
      if (v36 >= v35 >> 1)
      {
        v46 = v52;
        result = sub_1C97B7BC8(v35 > 1, v36 + 1, 1);
        v34 = v46;
        v8 = v53;
      }

      v11 &= v11 - 1;
      *(v8 + 16) = v36 + 1;
      v37 = v8 + 32 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v33;
      *(v37 + 48) = v34;
      v4 = 0;
      v5 = v40;
    }

    while (v11);
LABEL_18:
    while (1)
    {
      v27 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v27 >= v12)
      {
        goto LABEL_30;
      }

      v11 = *(v7 + 8 * v27);
      ++v6;
      if (v11)
      {
        v45 = v8;
        v6 = v27;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C987E2DC(uint64_t a1, void (*a2)(uint64_t *, __int128 *, uint64_t *), uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  sub_1C97B7BC8(0, v4, 0);
  v5 = v3 + 64;
  v6 = v54;
  v7 = -1;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v3 + 64);
  v10 = (63 - v8) >> 6;
  v36 = v4;
  v37 = v3;
  if (v4)
  {

    v12 = 0;
    v13 = 0;
    while (1)
    {
      v43 = v6;
      if (!v9)
      {
        break;
      }

LABEL_10:
      v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
      v16 = *(v3 + 56);
      v17 = (*(v3 + 48) + v15);
      v18 = v17[1];
      v48 = *v17;
      v49 = v18;
      v50 = *(v16 + v15);
      v40 = v50;

      sub_1C97CE3DC(v40, *(&v40 + 1));
      v6 = a3;
      a2(&v51, &v53, &v48);
      if (v47)
      {

        sub_1C97A5978(v40, *(&v40 + 1));
        return v6;
      }

      result = sub_1C97A5978(v40, *(&v40 + 1));
      v19 = v51;
      v20 = v52;
      v21 = v53;
      v6 = v43;
      v54 = v43;
      v23 = *(v43 + 16);
      v22 = *(v43 + 24);
      if (v23 >= v22 >> 1)
      {
        v44 = v53;
        v41 = v51;
        result = sub_1C97B7BC8(v22 > 1, v23 + 1, 1);
        v19 = v41;
        v21 = v44;
        v6 = v54;
      }

      ++v12;
      v9 &= v9 - 1;
      *(v6 + 16) = v23 + 1;
      v24 = v6 + 32 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      *(v24 + 48) = v21;
      v3 = v37;
      if (v12 == v36)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_32;
      }

      v9 = *(v5 + 8 * v14);
      ++v13;
      if (v9)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    v13 = 0;
LABEL_16:
    if (!v9)
    {
      goto LABEL_18;
    }

    do
    {
      v45 = v6;
LABEL_22:
      v26 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
      v27 = *(v3 + 56);
      v28 = (*(v3 + 48) + v26);
      v29 = v28[1];
      v48 = *v28;
      v49 = v29;
      v50 = *(v27 + v26);
      v42 = v50;

      sub_1C97CE3DC(v42, *(&v42 + 1));
      v6 = a3;
      a2(&v51, &v53, &v48);
      if (v47)
      {

        sub_1C97A5978(v42, *(&v42 + 1));

        return v6;
      }

      result = sub_1C97A5978(v42, *(&v42 + 1));
      v30 = v51;
      v31 = v52;
      v32 = v53;
      v6 = v45;
      v54 = v45;
      v34 = *(v45 + 16);
      v33 = *(v45 + 24);
      if (v34 >= v33 >> 1)
      {
        v46 = v53;
        result = sub_1C97B7BC8(v33 > 1, v34 + 1, 1);
        v32 = v46;
        v6 = v54;
      }

      v9 &= v9 - 1;
      *(v6 + 16) = v34 + 1;
      v35 = v6 + 32 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v31;
      *(v35 + 48) = v32;
      v3 = v37;
    }

    while (v9);
LABEL_18:
    while (1)
    {
      v25 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v25 >= v10)
      {

        return v6;
      }

      v9 = *(v5 + 8 * v25);
      ++v13;
      if (v9)
      {
        v45 = v6;
        v13 = v25;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C987E65C(uint64_t a1, void (*a2)(uint64_t *, uint64_t *, uint64_t *), uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *(a1 + 16);
  v53 = MEMORY[0x1E69E7CC0];
  sub_1C97B8280(0, v6, 0);
  v7 = v5 + 64;
  v8 = v53;
  v9 = -1;
  v10 = -1 << *(v5 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v5 + 64);
  v12 = (63 - v10) >> 6;
  v39 = v6;
  v40 = v5;
  if (v6)
  {

    v14 = 0;
    v6 = 0;
    while (1)
    {
      v43 = v8;
      if (!v11)
      {
        break;
      }

LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v6 << 6);
      v17 = *(v5 + 56);
      v18 = (*(v5 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *(v17 + 8 * v16);
      v47 = *v18;
      v48 = v19;
      v49 = v20;

      v8 = a3;
      a2(&v51, &v50, &v47);
      if (v4)
      {

        return v8;
      }

      v22 = v51;
      v21 = v52;
      v23 = v50;
      v8 = v43;
      v53 = v43;
      v25 = *(v43 + 16);
      v24 = *(v43 + 24);
      if (v25 >= v24 >> 1)
      {
        v44 = v52;
        v38 = v50;
        result = sub_1C97B8280(v24 > 1, v25 + 1, 1);
        v23 = v38;
        v21 = v44;
        v8 = v53;
      }

      ++v14;
      v11 &= v11 - 1;
      *(v8 + 16) = v25 + 1;
      v26 = (v8 + 24 * v25);
      v26[4] = v22;
      v26[5] = v21;
      v26[6] = v23;
      v5 = v40;
      v4 = 0;
      if (v14 == v39)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_32;
      }

      v11 = *(v7 + 8 * v15);
      ++v6;
      if (v11)
      {
        v6 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_16:
    if (!v11)
    {
      goto LABEL_18;
    }

    do
    {
      v45 = v8;
LABEL_22:
      v28 = __clz(__rbit64(v11)) | (v6 << 6);
      v29 = (*(v5 + 48) + 16 * v28);
      v30 = v29[1];
      v31 = *(*(v5 + 56) + 8 * v28);
      v47 = *v29;
      v48 = v30;
      v49 = v31;

      v8 = a3;
      a2(&v51, &v50, &v47);
      if (v4)
      {

        return v8;
      }

      v32 = v51;
      v33 = v52;
      v34 = v50;
      v8 = v45;
      v53 = v45;
      v36 = *(v45 + 16);
      v35 = *(v45 + 24);
      if (v36 >= v35 >> 1)
      {
        v46 = v51;
        result = sub_1C97B8280(v35 > 1, v36 + 1, 1);
        v32 = v46;
        v8 = v53;
      }

      v11 &= v11 - 1;
      *(v8 + 16) = v36 + 1;
      v37 = (v8 + 24 * v36);
      v37[4] = v32;
      v37[5] = v33;
      v37[6] = v34;
      v4 = 0;
      v5 = v40;
    }

    while (v11);
LABEL_18:
    while (1)
    {
      v27 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v27 >= v12)
      {

        return v8;
      }

      v11 = *(v7 + 8 * v27);
      ++v6;
      if (v11)
      {
        v45 = v8;
        v6 = v27;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1C987EA78(unsigned int (*a1)(uint64_t, void *))
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 16);
  v5[0] = 0;
  if (a1(v2, v5))
  {
    sub_1C9885EF4();
    v3 = sub_1C97A7A80();
    sub_1C9887AF4(v3, v4);
    swift_willThrow();
  }

  else
  {
    sub_1C9881194();
  }
}

void sub_1C987EB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C9887AAC();
  sub_1C987EA78(v7);
  if (!v3)
  {
    v8 = sub_1C98138D4();
    v10 = sub_1C9884E94(v8, v9);

    v11 = v10;
    sub_1C9884844(a1, a2, a3, &v11);
  }
}

void sub_1C987EBFC()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C9880658();
  if (!v0)
  {
    v12 = v11;
    type metadata accessor for E5RTExecutionStream();
    swift_allocObject();
    sub_1C9880798(v12);
    v13 = sub_1C988500C(1852399981, 0xE400000000000000, v10, v8, v4, v2);
    if (v6)
    {
      sub_1C9887DF4();
      sub_1C9881684();
    }

    sub_1C9882AF4(v13);
    sub_1C9887C68();
    sub_1C9887E50();
    sub_1C9881B0C(v14, v15);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C987ED10()
{
  if (e5rt_tensor_desc_dtype_get_num_components())
  {
    sub_1C9885EF4();
    v0 = sub_1C97A7A80();
    sub_1C9887E7C(v0, v1);
  }

  return 0;
}

uint64_t sub_1C987EDA8()
{
  if (!e5rt_tensor_desc_dtype_get_component_dtype())
  {
    return sub_1C987F478(4);
  }

  sub_1C9885EF4();
  v0 = sub_1C97A7A80();
  sub_1C9887AF4(v0, v1);
  return swift_willThrow();
}

uint64_t sub_1C987EE54()
{
  v0 = sub_1C9A91558();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A913F8();
  sub_1C9A91508();
  (*(v2 + 8))(v5, v0);
  return sub_1C98138D4();
}

uint64_t sub_1C987EF60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61725765756C6176 && a2 == 0xEC00000064657070)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C987EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C97AEB94();
  a20 = v22;
  a21 = v23;
  v25 = v24;
  v26 = sub_1C97A2CEC(&qword_1EC3CA2D0);
  sub_1C97AE9C8();
  v28 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = *v21;
  sub_1C97A5A8C(v25, v25[3]);
  sub_1C9887814();
  sub_1C9A93DD8();
  a11 = v32;
  sub_1C97A2CEC(&qword_1EC3CA2C0);
  sub_1C9887868(&qword_1EC3CA2D8);
  sub_1C9887DF4();
  sub_1C9A93A18();
  (*(v28 + 8))(v31, v26);
  sub_1C97AEB5C();
}

uint64_t sub_1C987F188()
{
  sub_1C9A93CC8();
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

void sub_1C987F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  sub_1C97AEB94();
  v13 = v12;
  v15 = v14;
  sub_1C97A2CEC(&qword_1EC3CA2B0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97A5A8C(v13, v13[3]);
  sub_1C9887814();
  sub_1C9A93DB8();
  if (!v11)
  {
    sub_1C97A2CEC(&qword_1EC3CA2C0);
    sub_1C9887868(&qword_1EC3CA2C8);
    sub_1C9A938F8();
    v17 = sub_1C97E89F0();
    v18(v17);
    *v15 = a11;
  }

  sub_1C97A592C(v13);
  sub_1C97AEB5C();
}

uint64_t sub_1C987F354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C987EF60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C987F380(uint64_t a1)
{
  v2 = sub_1C9887814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C987F3BC(uint64_t a1)
{
  v2 = sub_1C9887814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C987F400()
{
  sub_1C9A93CC8();
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C987F478(uint64_t a1)
{
  sub_1C987F500();
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 2;
    v6 = *v3;
    v3 += 2;
    if (v6 == a1)
    {
      a1 = *(v5 - 4);

      return a1;
    }
  }

  sub_1C9885EF4();
  sub_1C97A7A80();
  sub_1C9887DC8(v7, 5);
  return a1;
}

void sub_1C987F500()
{
  sub_1C9887EB0();
  v5 = MEMORY[0x1E69E7CC0];
  sub_1C97B7CFC();
  v0 = 0;
  v1 = v5;
  do
  {
    v2 = byte_1F492A0C0[v0 + 32];
    v6 = v1;
    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      sub_1C97B7CFC();
      v1 = v6;
    }

    ++v0;
    *(v1 + 16) = v3 + 1;
    v4 = v1 + 8 * v3;
    *(v4 + 32) = v2;
    *(v4 + 36) = v2;
  }

  while (v0 != 5);
  sub_1C9887E9C();
}

uint64_t sub_1C987F5B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953393013 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7630441 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D726F6E75 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D726F6E73 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9A93B18();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C987F74C(char a1)
{
  result = 1953393013;
  switch(a1)
  {
    case 1:
      result = 7630441;
      break;
    case 2:
      result = 0x6D726F6E75;
      break;
    case 3:
      result = 0x6D726F6E73;
      break;
    case 4:
      result = 0x74616F6C66;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C987F7D0()
{
  sub_1C97AEB94();
  v46 = v0;
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3CA210);
  sub_1C97AE9C8();
  v44 = v4;
  v45 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v43 = v6;
  sub_1C97A2CEC(&qword_1EC3CA218);
  sub_1C97AE9C8();
  v41 = v8;
  v42 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v40 = v10;
  sub_1C97A2CEC(&qword_1EC3CA220);
  sub_1C97AE9C8();
  v38 = v12;
  v39 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v37 = v14;
  sub_1C97A2CEC(&qword_1EC3CA228);
  sub_1C97AE9C8();
  v35 = v16;
  v36 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = sub_1C97A2CEC(&qword_1EC3CA230);
  sub_1C97AE9C8();
  v34 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  v25 = sub_1C97A2CEC(&qword_1EC3CA238);
  sub_1C97AE9C8();
  v27 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v34 - v29;
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9886FF0();
  sub_1C9A93DD8();
  switch(v46)
  {
    case 1:
      sub_1C9887140();
      sub_1C9A93988();
      (*(v35 + 8))(v19, v36);
      break;
    case 2:
      sub_1C98870EC();
      v31 = v37;
      sub_1C9887C98();
      v33 = v38;
      v32 = v39;
      goto LABEL_6;
    case 3:
      sub_1C9887098();
      v31 = v40;
      sub_1C9887C98();
      v33 = v41;
      v32 = v42;
      goto LABEL_6;
    case 4:
      sub_1C9887044();
      v31 = v43;
      sub_1C9887C98();
      v33 = v44;
      v32 = v45;
LABEL_6:
      (*(v33 + 8))(v31, v32);
      break;
    default:
      sub_1C9887194();
      sub_1C9887C98();
      (*(v34 + 8))(v24, v20);
      break;
  }

  (*(v27 + 8))(v30, v25);
  sub_1C97AEB5C();
}

void sub_1C987FC20()
{
  sub_1C97AEB94();
  v66 = v0;
  v2 = v1;
  v65 = sub_1C97A2CEC(&qword_1EC3CA1B0);
  sub_1C97AE9C8();
  v60 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AC02C();
  v64 = v5;
  sub_1C97A2CEC(&qword_1EC3CA1B8);
  sub_1C97AE9C8();
  v58 = v7;
  v59 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AC02C();
  v62 = v9;
  sub_1C97A2CEC(&qword_1EC3CA1C0);
  sub_1C97AE9C8();
  v56 = v11;
  v57 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v61 = v13;
  sub_1C97A2CEC(&qword_1EC3CA1C8);
  sub_1C97AE9C8();
  v54 = v15;
  v55 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = sub_1C97A2CEC(&qword_1EC3CA1D0);
  sub_1C97AE9C8();
  v53 = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  sub_1C97A2CEC(&qword_1EC3CA1D8);
  sub_1C97AE9C8();
  v63 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9886FF0();
  v26 = v66;
  sub_1C9A93DB8();
  if (v26)
  {
    goto LABEL_8;
  }

  v50 = v19;
  v51 = v23;
  v52 = v18;
  v28 = v64;
  v27 = v65;
  v66 = v2;
  v29 = sub_1C9A93958();
  sub_1C98EE524(v29, 0);
  if (v31 == v32 >> 1)
  {
LABEL_7:
    v39 = sub_1C9A93648();
    sub_1C97A7A80();
    v41 = v40;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v41 = &type metadata for E5RTTensorDescriptorComponentDatatype;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v42 = sub_1C98138D4();
    v43(v42);
    v2 = v66;
LABEL_8:
    sub_1C97A592C(v2);
LABEL_9:
    sub_1C97AEB5C();
    return;
  }

  if (v31 < (v32 >> 1))
  {
    v33 = *(v30 + v31);
    sub_1C98EE520(v31 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      switch(v33)
      {
        case 1:
          sub_1C9887140();
          v44 = v52;
          sub_1C9887CB8();
          swift_unknownObjectRelease();
          v46 = v54;
          v45 = v55;
          goto LABEL_14;
        case 2:
          sub_1C98870EC();
          v44 = v61;
          sub_1C9887CB8();
          swift_unknownObjectRelease();
          v46 = v56;
          v45 = v57;
          goto LABEL_14;
        case 3:
          sub_1C9887098();
          v44 = v62;
          sub_1C9887CB8();
          swift_unknownObjectRelease();
          v46 = v58;
          v45 = v59;
LABEL_14:
          (*(v46 + 8))(v44, v45);
          break;
        case 4:
          sub_1C9887044();
          sub_1C9A93858();
          swift_unknownObjectRelease();
          (*(v60 + 8))(v28, v27);
          break;
        default:
          sub_1C9887194();
          v38 = v51;
          sub_1C9887CB8();
          swift_unknownObjectRelease();
          (*(v53 + 8))(v38, v50);
          break;
      }

      v47 = sub_1C98138D4();
      v48(v47);
      sub_1C97A592C(v66);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C98802A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C987F5B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98802CC(uint64_t a1)
{
  v2 = sub_1C9886FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9880308(uint64_t a1)
{
  v2 = sub_1C9886FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9880344(uint64_t a1)
{
  v2 = sub_1C9887044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9880380(uint64_t a1)
{
  v2 = sub_1C9887044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98803BC(uint64_t a1)
{
  v2 = sub_1C9887140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98803F8(uint64_t a1)
{
  v2 = sub_1C9887140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9880434(uint64_t a1)
{
  v2 = sub_1C9887098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9880470(uint64_t a1)
{
  v2 = sub_1C9887098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98804AC(uint64_t a1)
{
  v2 = sub_1C9887194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98804E8(uint64_t a1)
{
  v2 = sub_1C9887194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9880524(uint64_t a1)
{
  v2 = sub_1C98870EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9880560(uint64_t a1)
{
  v2 = sub_1C98870EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98805B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

void sub_1C9880600(_BYTE *a1@<X8>)
{
  sub_1C987FC20();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C9880658()
{
  if (e5rt_execution_stream_create())
  {
    sub_1C9885EF4();
    v0 = sub_1C97A7A80();
    sub_1C9887AF4(v0, v1);
  }

  else
  {
    sub_1C9886C04();
    v3 = sub_1C97A7A80();
    sub_1C9887D54(v3, v4);
  }

  return swift_willThrow();
}

uint64_t sub_1C988070C()
{
  result = e5rt_execution_stream_release();
  if (result)
  {
    sub_1C9885EF4();
    v1 = sub_1C97A7A80();
    sub_1C9887AF4(v1, v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9880798(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C9A91748();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  sub_1C9A91738();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC13SoundAnalysis19E5RTExecutionStream_uuid, v9, v4);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v10 = sub_1C9A91B58();
  sub_1C9887EC4(v10, qword_1EC3D3108);

  v11 = sub_1C9A91B38();
  v12 = sub_1C9A92FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC13SoundAnalysis19E5RTExecutionStream_uuid, v4);
    sub_1C97AE3DC();
    v15 = sub_1C9A93A98();
    v17 = v16;
    (*(v6 + 8))(v9, v4);
    v18 = sub_1C9849140(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1C9788000, v11, v12, "E5RT Execution Stream created with ID %s", v13, 0xCu);
    sub_1C97A592C(v14);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  return v2;
}

uint64_t sub_1C98809D4()
{
  v1 = v0;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);

  v3 = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v7 = sub_1C9A93A98();
    v9 = sub_1C9849140(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C9788000, v3, v4, "E5RT Execution Stream destroyed with ID %s", v5, 0xCu);
    sub_1C97A592C(v6);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  sub_1C988070C();
  v10 = OBJC_IVAR____TtC13SoundAnalysis19E5RTExecutionStream_uuid;
  v11 = sub_1C9A91748();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  return v1;
}

uint64_t sub_1C9880C48()
{
  sub_1C98809D4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for E5RTExecutionStream()
{
  result = qword_1EC3CA160;
  if (!qword_1EC3CA160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9880CF4()
{
  result = sub_1C9A91748();
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

uint64_t sub_1C9880D94()
{
  result = e5rt_execution_stream_execute_sync();
  if (result)
  {
    sub_1C9885EF4();
    v1 = sub_1C97A7A80();
    sub_1C9887AF4(v1, v2);
    return swift_willThrow();
  }

  return result;
}

void sub_1C9880E04(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v4 = sub_1C9887A94(v1);
    v6 = v5;
    v8 = v7;
    v28 = v1 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      if (((*(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        goto LABEL_30;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_31;
      }

      v9 = (*(v1 + 48) + 16 * v4);
      v11 = *v9;
      v10 = v9[1];

      sub_1C987D704(v11, v10);
      v30 = v12;
      sub_1C98CF3C0(&unk_1F492A5E8);
      v13 = *(v30 + 16);
      sub_1C97A2CEC(&qword_1EC3CA188);
      swift_allocObject();
      v14 = sub_1C9885EC4(v13);
      v15 = v14;
      if (*(v30 + 16))
      {
        v16 = *(v14 + 16);
        if (!v16)
        {
          goto LABEL_35;
        }

        if (*(v15 + 24) < v13)
        {
          goto LABEL_32;
        }

        memcpy(v16, (v30 + 32), v13);
      }

      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v1 = a1;
      v17 = sub_1C9886C58(v4, v6, v8 & 1, a1);
      v4 = v17;
      v6 = v18;
      v8 = v19;
      if (!--v2)
      {
        sub_1C97FDD94(v17, v18, v19 & 1);
        v3 = v31;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  sub_1C987D4CC(v1);
  v20 = sub_1C97BDEE0(v3);
  if (!v20)
  {
LABEL_22:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E7330();
      }

      v25 = e5rt_execution_stream_operation_reshape_operation();
      if (v25)
      {
        v26 = v25;
        sub_1C9885EF4();
        sub_1C97A7A80();
        *v27 = v26;
        *(v27 + 4) = 0;
        swift_willThrow();
      }

      return;
    }

LABEL_33:
    sub_1C97E72F8();
    goto LABEL_23;
  }

  v21 = v20;
  v32 = MEMORY[0x1E69E7CC0];
  sub_1C97B7A80();
  if ((v21 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v23 = *(MEMORY[0x1CCA912B0](i, v3) + 16);
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = *(*(v3 + 8 * i + 32) + 16);
      }

      v24 = *(v32 + 16);
      if (v24 >= *(v32 + 24) >> 1)
      {
        sub_1C97B7A80();
      }

      *(v32 + 16) = v24 + 1;
      *(v32 + 8 * v24 + 32) = v23;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1C9881194()
{
  sub_1C97AEB94();
  if (v3 < 0)
  {
    goto LABEL_24;
  }

  v0 = v5;
  v1 = v4;
  v6 = v3;
  v2 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C97B7A80();
    v7 = v18;
    v8 = *(v18 + 16);
    do
    {
      if (v8 >= *(v18 + 24) >> 1)
      {
        sub_1C97B7A80();
      }

      *(v18 + 16) = v8 + 1;
      *(v18 + 8 * v8++ + 32) = 0;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    if (v0(v1, *(v7 + 16), v7 + 32))
    {
      sub_1C9885EF4();
      v9 = sub_1C97A7A80();
      sub_1C9887AF4(v9, v10);
      swift_willThrow();

      goto LABEL_12;
    }

    v0 = *(v7 + 16);
    if (!v0)
    {
      break;
    }

    v19 = v2;
    sub_1C97B7B08(0, v0, 0);
    v2 = 0;
    while (v2 < *(v7 + 16))
    {
      if (!*(v7 + 8 * v2 + 32))
      {

        sub_1C9885EF4();
        sub_1C97A7A80();
        sub_1C9887DC8(v16, 3);

        goto LABEL_12;
      }

      v1 = sub_1C9A92598();
      v12 = v11;
      v14 = *(v19 + 16);
      v13 = *(v19 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C97B7B08(v13 > 1, v14 + 1, 1);
      }

      ++v2;
      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v1;
      *(v15 + 40) = v12;
      if (v0 == v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_1C97E7330();
    v7 = v17;
  }

LABEL_20:

LABEL_12:
  sub_1C97AEB5C();
}

uint64_t sub_1C9881454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v6 = sub_1C9A92508();
  LODWORD(a4) = a4(a3, v6 + 32, v12);

  if (a4)
  {
    sub_1C9885EF4();
    v7 = sub_1C97A7A80();
    sub_1C9887AF4(v7, v8);
    return swift_willThrow();
  }

  result = v12[0];
  if (!v12[0])
  {
    sub_1C9886C04();
    v10 = sub_1C97A7A80();
    sub_1C9887D54(v10, v11);
    return swift_willThrow();
  }

  return result;
}

void sub_1C9881534()
{
  sub_1C9887EB0();
  sub_1C9887B34();
  if (e5rt_execution_stream_operation_release())
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v1 = sub_1C9A91B58();
    sub_1C9887EC4(v1, qword_1EC3D3108);
    v2 = sub_1C9A91B38();
    v3 = sub_1C9A92FB8();
    if (sub_1C9887DAC(v3))
    {
      sub_1C9887D90();
      sub_1C9887CD8();
      sub_1C9887DE8();
      sub_1C9887BC0(4.8149e-34);
      *(v0 + 4) = sub_1C9849140(0xD00000000000002ELL, v4, v5);
      sub_1C9887BD0(&dword_1C9788000, v6, v7, "Would-be Fatal Error! %s");
      sub_1C9887B8C();
      sub_1C9887D60();
    }
  }

  sub_1C9887E9C();
}

uint64_t sub_1C9881634()
{
  sub_1C9881534();
  sub_1C9823DD8();

  return swift_deallocClassInstance();
}

void sub_1C9881684()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CA180);
  v2 = sub_1C9A937E8();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(*(v1 + 56) + 8 * v13) + 16);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (v3[6] + 16 * v13);
      *v18 = v16;
      v18[1] = v15;
      *(v3[7] + 8 * v13) = v17;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        sub_1C9880E04(v3);

        sub_1C97AEB5C();
        return;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C98817E8()
{
  v4 = objc_autoreleasePoolPush();
  sub_1C9A92508();
  sub_1C9A92508();
  sub_1C9A92508();
  precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

  if (precompiled_compute_operation)
  {
    sub_1C9885EF4();
    sub_1C97A7A80();
    *v1 = precompiled_compute_operation;
    *(v1 + 4) = 0;
  }

  else
  {
    sub_1C9886C04();
    v2 = sub_1C97A7A80();
    sub_1C9887D54(v2, v3);
  }

  swift_willThrow();
  objc_autoreleasePoolPop(v4);
}

void sub_1C98819BC()
{
  sub_1C9887EB0();
  sub_1C9887B34();
  if (e5rt_io_port_release())
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v1 = sub_1C9A91B58();
    sub_1C9887EC4(v1, qword_1EC3D3108);
    v2 = sub_1C9A91B38();
    v3 = sub_1C9A92FB8();
    if (sub_1C9887DAC(v3))
    {
      sub_1C9887D90();
      sub_1C9887CD8();
      sub_1C9887DE8();
      sub_1C9887BC0(4.8149e-34);
      *(v0 + 4) = sub_1C9849140(0xD00000000000001CLL, v4, v5);
      sub_1C9887BD0(&dword_1C9788000, v6, v7, "Would-be Fatal Error! %s");
      sub_1C9887B8C();
      sub_1C9887D60();
    }
  }

  sub_1C9887E9C();
}

uint64_t sub_1C9881ABC()
{
  sub_1C98819BC();
  sub_1C9823DD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9881B0C(uint64_t a1, uint64_t (*a2)(void, void))
{
  result = a2(*(v2 + 16), *(a1 + 16));
  if (result)
  {
    sub_1C9885EF4();
    v4 = sub_1C97A7A80();
    sub_1C9887AF4(v4, v5);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9881B70()
{
  if (e5rt_tensor_desc_get_shape())
  {
    sub_1C9885EF4();
    v0 = sub_1C97A7A80();
    sub_1C9887AF4(v0, v1);
  }

  else
  {
    sub_1C9886C04();
    v3 = sub_1C97A7A80();
    sub_1C9887D54(v3, v4);
  }

  return swift_willThrow();
}

void sub_1C9881C7C()
{
  sub_1C9887EB0();
  sub_1C9887B34();
  if (e5rt_tensor_desc_release())
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v1 = sub_1C9A91B58();
    sub_1C9887EC4(v1, qword_1EC3D3108);
    v2 = sub_1C9A91B38();
    v3 = sub_1C9A92FB8();
    if (sub_1C9887DAC(v3))
    {
      sub_1C9887D90();
      sub_1C9887CD8();
      sub_1C9887DE8();
      sub_1C9887BC0(4.8149e-34);
      *(v0 + 4) = sub_1C9849140(0xD000000000000026, v4, v5);
      sub_1C9887BD0(&dword_1C9788000, v6, v7, "Would-be Fatal Error! %s");
      sub_1C9887B8C();
      sub_1C9887D60();
    }
  }

  sub_1C9887E9C();
}

uint64_t sub_1C9881D7C()
{
  sub_1C9881C7C();
  sub_1C9823DD8();

  return swift_deallocClassInstance();
}

void sub_1C9881DCC()
{
  sub_1C9887EB0();
  sub_1C9887B34();
  if (e5rt_tensor_desc_dtype_release())
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v1 = sub_1C9A91B58();
    sub_1C9887EC4(v1, qword_1EC3D3108);
    v2 = sub_1C9A91B38();
    v3 = sub_1C9A92FB8();
    if (sub_1C9887DAC(v3))
    {
      sub_1C9887D90();
      sub_1C9887CD8();
      sub_1C9887DE8();
      sub_1C9887BC0(4.8149e-34);
      *(v0 + 4) = sub_1C9849140(0xD00000000000002ELL, v4, v5);
      sub_1C9887BD0(&dword_1C9788000, v6, v7, "Would-be Fatal Error! %s");
      sub_1C9887B8C();
      sub_1C9887D60();
    }
  }

  sub_1C9887E9C();
}

uint64_t sub_1C9881ECC()
{
  sub_1C9881DCC();
  sub_1C9823DD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9881F1C(uint64_t (*a1)(uint64_t, void *))
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  v9[0] = 0;
  v4 = a1(v3, v9);
  v5 = v9[0];
  if (v4)
  {
    sub_1C9885EF4();
    v6 = sub_1C97A7A80();
    sub_1C9887E7C(v6, v7);
  }

  return v5;
}

void sub_1C9881FBC()
{
  sub_1C9887EB0();
  sub_1C9887B34();
  if (e5rt_operand_desc_release())
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v1 = sub_1C9A91B58();
    sub_1C9887EC4(v1, qword_1EC3D3108);
    v2 = sub_1C9A91B38();
    v3 = sub_1C9A92FB8();
    if (sub_1C9887DAC(v3))
    {
      sub_1C9887D90();
      sub_1C9887CD8();
      sub_1C9887DE8();
      sub_1C9887BC0(4.8149e-34);
      *(v0 + 4) = sub_1C9849140(0xD000000000000027, v4, v5);
      sub_1C9887BD0(&dword_1C9788000, v6, v7, "Would-be Fatal Error! %s");
      sub_1C9887B8C();
      sub_1C9887D60();
    }
  }

  sub_1C9887E9C();
}

uint64_t sub_1C98820BC()
{
  sub_1C9881FBC();
  sub_1C9823DD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C988210C(uint64_t a1, unsigned int (*a2)(uint64_t, void *))
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (a2(a1, v7))
  {
    sub_1C9885EF4();
    v2 = sub_1C97A7A80();
    sub_1C9887AF4(v2, v3);
    return swift_willThrow();
  }

  result = v7[0];
  if (!v7[0])
  {
    sub_1C9886C04();
    v5 = sub_1C97A7A80();
    sub_1C9887D54(v5, v6);
    return swift_willThrow();
  }

  return result;
}

void sub_1C98821C8()
{
  sub_1C9887EB0();
  sub_1C9887B34();
  if (e5rt_buffer_object_release())
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v1 = sub_1C9A91B58();
    sub_1C9887EC4(v1, qword_1EC3D3108);
    v2 = sub_1C9A91B38();
    v3 = sub_1C9A92FB8();
    if (sub_1C9887DAC(v3))
    {
      sub_1C9887D90();
      sub_1C9887CD8();
      sub_1C9887DE8();
      sub_1C9887BC0(4.8149e-34);
      *(v0 + 4) = sub_1C9849140(0xD000000000000022, v4, v5);
      sub_1C9887BD0(&dword_1C9788000, v6, v7, "Would-be Fatal Error! %s");
      sub_1C9887B8C();
      sub_1C9887D60();
    }
  }

  sub_1C9887E9C();
}

uint64_t sub_1C98822C8()
{
  sub_1C98821C8();
  sub_1C9823DD8();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UnsafeAudioBufferListPointer(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeAudioBufferListPointer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1C9882410()
{
  v0 = e5rt_buffer_object_alloc();
  if (v0)
  {
    v1 = v0;
    sub_1C9885EF4();
    sub_1C97A7A80();
    *v2 = v1;
    *(v2 + 4) = 0;
  }

  else
  {
    sub_1C9886C04();
    v4 = sub_1C97A7A80();
    sub_1C9887D54(v4, v5);
  }

  return swift_willThrow();
}

BOOL sub_1C98824E4(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    switch(*a1)
    {
      case 1:
        v4 = v2 == 1;
        goto LABEL_13;
      case 2:
        v4 = v2 == 2;
        goto LABEL_13;
      case 3:
        v4 = v2 == 3;
        goto LABEL_13;
      case 4:
        v4 = v2 == 4;
        goto LABEL_13;
      case 5:
        v4 = v2 == 5;
        goto LABEL_13;
      case 6:
        v4 = v2 == 6;
        goto LABEL_13;
      case 7:
        v4 = v2 == 7;
        goto LABEL_13;
      case 8:
        if (v2 <= 7)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_16;
      default:
        v4 = v2 == 0;
LABEL_13:
        if (!v4)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

LABEL_16:
        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 4) & 1) == 0 && *a1 == v2;
  }

  return result;
}

uint64_t sub_1C988258C()
{
  if (*(v0 + 4) == 1)
  {
    switch(*v0)
    {
      case 1:
        v1 = 2;
        break;
      case 2:
        v1 = 3;
        break;
      case 3:
        v1 = 4;
        break;
      case 4:
        v1 = 5;
        break;
      case 5:
        v1 = 6;
        break;
      case 6:
        v1 = 7;
        break;
      case 7:
        v1 = 8;
        break;
      case 8:
        v1 = 9;
        break;
      default:
        v1 = 1;
        break;
    }

    return MEMORY[0x1CCA91980](v1);
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    return sub_1C9A93CF8();
  }
}

uint64_t sub_1C9882640()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1C9A93CC8();
  if (v2 == 1)
  {
    switch(v1)
    {
      case 1:
        v3 = 2;
        break;
      case 2:
        v3 = 3;
        break;
      case 3:
        v3 = 4;
        break;
      case 4:
        v3 = 5;
        break;
      case 5:
        v3 = 6;
        break;
      case 6:
        v3 = 7;
        break;
      case 7:
        v3 = 8;
        break;
      case 8:
        v3 = 9;
        break;
      default:
        v3 = 1;
        break;
    }

    MEMORY[0x1CCA91980](v3);
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C9A93CF8();
  }

  return sub_1C9A93D18();
}

uint64_t sub_1C988273C()
{
  sub_1C9A93CC8();
  sub_1C988258C();
  return sub_1C9A93D18();
}

void sub_1C9882790(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = sub_1C9887AAC();
  }

  else
  {
    v4 = sub_1C9887B04();
  }

  sub_1C987EA78(v4);
  if (!v2)
  {
    if (*(v5 + 16))
    {
      sub_1C9A92508();

      if (a2)
      {
        v6 = e5rt_execution_stream_operation_retain_output_port();
      }

      else
      {
        v6 = e5rt_execution_stream_operation_retain_input_port();
      }

      v7 = v6;

      if (v7)
      {
        sub_1C9885EF4();
        sub_1C97A7A80();
        *v8 = v7;
        *(v8 + 4) = 0;
      }

      else
      {
        sub_1C9886C04();
        v9 = sub_1C97A7A80();
        sub_1C9887D54(v9, v10);
      }

      swift_willThrow();
    }
  }
}

void sub_1C9882AF4(uint64_t a1)
{
  v3 = 0;
  do
  {
    if (v3 == 2)
    {
      break;
    }

    v4 = v3 + 1;
    sub_1C9882790(a1, byte_1F4929DF0[v3 + 32]);
    v3 = v4;
  }

  while (!v1);
}

uint64_t sub_1C9882B54(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = *a3;
  v8 = a3[1];
  *a1 = *a3;
  a1[1] = v8;
  v10 = *(a4 + 16);

  if (a5)
  {
    v11 = MEMORY[0x1E699BCE8];
  }

  else
  {
    v11 = MEMORY[0x1E699BCE0];
  }

  v12 = sub_1C9881454(v9, v8, v10, v11);
  if (v5)
  {
  }

  v13 = v12;
  type metadata accessor for E5RTIOPort();
  *(swift_allocObject() + 16) = v13;
  v14 = sub_1C988210C(v13, MEMORY[0x1E699BD10]);
  type metadata accessor for E5RTTensorDescriptor();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;

  *a2 = v15;
  return result;
}

uint64_t sub_1C9882C64(uint64_t a1, char a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v81 = a1;
  v82 = v8;
  if (!v7)
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
  }

LABEL_8:
  while (2)
  {
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v7)));
    v12 = (*(a3 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a3 + 56) + v11);
    v17 = *v15;
    v16 = v15[1];

    sub_1C97CE3DC(v17, v16);
    if (!v13)
    {
    }

    v7 &= v7 - 1;
    v89 = v16;
    v87 = v17;
    switch(v16 >> 62)
    {
      case 1uLL:
        v27 = v17 >> 32;
        if (v17 >> 32 < v17)
        {
          goto LABEL_101;
        }

        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v28 = sub_1C9A91308();
        v85 = v13;
        if (v28)
        {
          v29 = v28;
          v30 = sub_1C9A91338();
          if (__OFSUB__(v17, v30))
          {
            goto LABEL_104;
          }

          v24 = (v17 - v30 + v29);
        }

        else
        {
          v24 = 0;
        }

        v47 = sub_1C9A91328();
        if (v47 >= v27 - v17)
        {
          v48 = v27 - v17;
        }

        else
        {
          v48 = v47;
        }

        v49 = &v24[v48];
        if (v24)
        {
          v40 = v49;
        }

        else
        {
          v40 = 0;
        }

        v41 = v81;
        if (a2)
        {
          v50 = MEMORY[0x1E699BCE8];
        }

        else
        {
          v50 = MEMORY[0x1E699BCE0];
        }

        v51 = sub_1C9881454(v14, v85, *(v81 + 16), v50);
        if (v88)
        {
LABEL_74:

          v60 = v89;
        }

        else
        {
          v52 = v51;
          type metadata accessor for E5RTIOPort();
          *(swift_allocObject() + 16) = v52;
          __src = 0;
          v45 = e5rt_io_port_retain_buffer_object();
          if (v45)
          {
LABEL_75:
            v62 = v45;
            sub_1C9885EF4();
            swift_allocError();
            *v63 = v62;
            *(v63 + 4) = 0;
          }

          else
          {
            v46 = __src;
            if (__src)
            {
LABEL_61:
              v53 = v41;
              v54 = v40;
              type metadata accessor for E5RTBufferObject();
              *(swift_initStackObject() + 16) = v46;
              __src = 0;
              data_ptr = e5rt_buffer_object_get_data_ptr();
              if (data_ptr)
              {
                v65 = data_ptr;
                sub_1C9885EF4();
                swift_allocError();
                *v66 = v65;
              }

              else
              {
                v56 = __src;
                if (!__src)
                {
                  sub_1C9886C04();
                  swift_allocError();
                  *v69 = 0;
LABEL_83:
                  v60 = v89;
LABEL_85:
                  swift_willThrow();

                  swift_setDeallocating();
                  sub_1C98821C8();
                  swift_deallocClassInstance();

                  goto LABEL_86;
                }

                __src = 0;
                size = e5rt_buffer_object_get_size();
                if (!size)
                {
                  v58 = v54 - v24;
                  if (v24)
                  {
                    v59 = (v54 - v24);
                  }

                  else
                  {
                    v59 = 0;
                  }

                  v60 = v89;
                  if (v59 == __src)
                  {
                    a1 = v53;
                    if (v24)
                    {
                      memmove(v56, v24, v58);
                    }

                    swift_setDeallocating();
                    sub_1C98821C8();
                    swift_deallocClassInstance();

                    sub_1C97A5978(v87, v89);

                    swift_bridgeObjectRelease_n();
                    goto LABEL_71;
                  }

                  sub_1C9886D84();
                  swift_allocError();
                  *v71 = 0;
                  goto LABEL_85;
                }

                v70 = size;
                sub_1C9885EF4();
                swift_allocError();
                *v66 = v70;
              }

              *(v66 + 4) = 0;
              goto LABEL_83;
            }

LABEL_76:
            sub_1C9886C04();
            swift_allocError();
            *v64 = 0;
          }

          swift_willThrow();

          v60 = v89;
        }

LABEL_86:

        v72 = v87;
        goto LABEL_97;
      case 2uLL:
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v21 = sub_1C9A91308();
        v84 = v13;
        if (v21)
        {
          v22 = v21;
          v23 = sub_1C9A91338();
          if (__OFSUB__(v19, v23))
          {
            goto LABEL_103;
          }

          v24 = (v19 - v23 + v22);
        }

        else
        {
          v24 = 0;
        }

        if (__OFSUB__(v20, v19))
        {
          goto LABEL_102;
        }

        v37 = sub_1C9A91328();
        if (v37 >= v20 - v19)
        {
          v38 = v20 - v19;
        }

        else
        {
          v38 = v37;
        }

        v39 = &v24[v38];
        if (v24)
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v41 = v81;
        if (a2)
        {
          v42 = MEMORY[0x1E699BCE8];
        }

        else
        {
          v42 = MEMORY[0x1E699BCE0];
        }

        v43 = sub_1C9881454(v14, v84, *(v81 + 16), v42);
        if (v88)
        {
          goto LABEL_74;
        }

        v44 = v43;
        type metadata accessor for E5RTIOPort();
        *(swift_allocObject() + 16) = v44;
        __src = 0;
        v45 = e5rt_io_port_retain_buffer_object();
        if (v45)
        {
          goto LABEL_75;
        }

        v46 = __src;
        if (__src)
        {
          goto LABEL_61;
        }

        goto LABEL_76;
      case 3uLL:
        v25 = *(a1 + 16);
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        if (a2)
        {
          v26 = MEMORY[0x1E699BCE8];
        }

        else
        {
          v26 = MEMORY[0x1E699BCE0];
        }

        v31 = sub_1C9881454(v14, v13, v25, v26);
        if (v88)
        {

          sub_1C97A5978(v17, v89);
          goto LABEL_99;
        }

        v32 = v31;
        type metadata accessor for E5RTIOPort();
        *(swift_allocObject() + 16) = v32;
        __src = 0;
        v33 = e5rt_io_port_retain_buffer_object();
        if (v33)
        {
          v75 = v33;
          sub_1C9885EF4();
          swift_allocError();
          *v76 = v75;
          *(v76 + 4) = 0;
          goto LABEL_92;
        }

        v34 = __src;
        if (!__src)
        {
          sub_1C9886C04();
          swift_allocError();
          *v77 = 0;
LABEL_92:
          swift_willThrow();

          v72 = v87;
LABEL_93:
          v78 = v89;
          goto LABEL_98;
        }

        type metadata accessor for E5RTBufferObject();
        *(swift_initStackObject() + 16) = v34;
        __src = 0;
        v35 = e5rt_buffer_object_get_data_ptr();
        if (v35)
        {
          goto LABEL_79;
        }

        if (!__src)
        {
          sub_1C9886C04();
          swift_allocError();
          *v79 = 0;
          goto LABEL_96;
        }

        __src = 0;
        v35 = e5rt_buffer_object_get_size();
        if (v35)
        {
LABEL_79:
          v67 = v35;
          sub_1C9885EF4();
          swift_allocError();
          *v68 = v67;
          *(v68 + 4) = 0;
          goto LABEL_96;
        }

        if (!__src)
        {
          swift_setDeallocating();
          sub_1C98821C8();
          swift_deallocClassInstance();

          sub_1C97A5978(v87, v89);

LABEL_71:

          v8 = v82;
          if (!v7)
          {
            goto LABEL_4;
          }

          continue;
        }

        sub_1C9886D84();
        swift_allocError();
        *v80 = 0;
LABEL_96:
        v60 = v89;
        swift_willThrow();

        swift_setDeallocating();
        sub_1C98821C8();
        swift_deallocClassInstance();

        v72 = v87;
LABEL_97:
        v78 = v60;
LABEL_98:
        sub_1C97A5978(v72, v78);
LABEL_99:

        swift_bridgeObjectRelease_n();

      default:
        __src = v17;
        v91 = v16;
        v92 = BYTE2(v16);
        v93 = BYTE3(v16);
        v94 = BYTE4(v16);
        v95 = BYTE5(v16);
        sub_1C9A92508();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        if (a2)
        {
          v18 = e5rt_execution_stream_operation_retain_output_port();
        }

        else
        {
          v18 = e5rt_execution_stream_operation_retain_input_port();
        }

        v36 = v18;

        if (v36)
        {
          sub_1C9885EF4();
          swift_allocError();
          *v73 = v36;
          *(v73 + 4) = 0;
        }

        else
        {
          sub_1C9886C04();
          swift_allocError();
          *v74 = 0;
        }

        swift_willThrow();

        v72 = v17;
        goto LABEL_93;
    }
  }
}

uint64_t sub_1C988388C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (!v9)
  {
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  v12 = 0;
LABEL_8:
  v13 = __clz(__rbit64(v9)) | (v12 << 6);
  if (*(*(*(a3 + 56) + 8 * v13) + 16) >> 61)
  {
    goto LABEL_21;
  }

  v14 = v4;
  v15 = (*(a3 + 48) + 16 * v13);
  v17 = *v15;
  v16 = v15[1];
  v18 = *(a1 + 16);

  if (a2)
  {
    v19 = MEMORY[0x1E699BCE8];
  }

  else
  {
    v19 = MEMORY[0x1E699BCE0];
  }

  v20 = sub_1C9881454(v17, v16, v18, v19);
  if (v14)
  {
  }

  else
  {
    v21 = v20;

    type metadata accessor for E5RTIOPort();
    *(swift_allocObject() + 16) = v21;
    v22 = e5rt_io_port_retain_buffer_object();
    if (v22)
    {
      v24 = v22;
      sub_1C9885EF4();
      swift_allocError();
      *v25 = v24;
      *(v25 + 4) = 0;
    }

    else
    {
      sub_1C9886C04();
      swift_allocError();
      *v26 = 0;
    }

    swift_willThrow();
  }
}

uint64_t sub_1C9883C68(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *), uint64_t (*a6)(void))
{
  v9 = *a3;
  v12[2] = a1;
  v13 = a2 & 1;
  result = a5(v9, a4, v12);
  if (!v6)
  {
    v11 = a6();

    *a3 = v11;
  }

  return result;
}

uint64_t sub_1C9883D04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  v19 = a5;
  v8 = v7;
  v18 = a4;

  sub_1C97CE3DC(a4, a5);
  sub_1C9885F48(&v18, a6, a2, a3, a7 & 1);
  v16 = v19;
  if (v8)
  {
    sub_1C97A5978(v18, v19);
  }

  else
  {
    *a1 = v18;
    a1[1] = v16;
  }

  return a2;
}

uint64_t sub_1C9883DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C97E72E0();
    a4 = v22;
  }

  v13 = *(a4 + 16);
  if (v13 >> 61)
  {
    __break(1u);
  }

  if (a6)
  {
    v14 = MEMORY[0x1E699BCE8];
  }

  else
  {
    v14 = MEMORY[0x1E699BCE0];
  }

  v15 = sub_1C9881454(a2, a3, *(a5 + 16), v14);
  if (v6)
  {
    goto LABEL_11;
  }

  v16 = v15;
  type metadata accessor for E5RTIOPort();
  *(swift_allocObject() + 16) = v16;
  v17 = sub_1C988210C(v16, MEMORY[0x1E699BD08]);
  type metadata accessor for E5RTBufferObject();
  *(swift_initStackObject() + 16) = v17;
  v23 = sub_1C988210C(v17, MEMORY[0x1E699BC90]);
  size = e5rt_buffer_object_get_size();
  if (size)
  {
    v19 = size;
    sub_1C9885EF4();
    swift_allocError();
    *v20 = v19;
    *(v20 + 4) = 0;
    swift_willThrow();

    swift_setDeallocating();
    sub_1C98821C8();
    swift_deallocClassInstance();
LABEL_11:

    return a2;
  }

  sub_1C99CC544(v23, v23, (a4 + 32), a4 + 32 + 4 * v13);
  swift_setDeallocating();
  sub_1C98821C8();
  swift_deallocClassInstance();

  *a1 = a4;

  return a2;
}

uint64_t sub_1C9884038(uint64_t a1, char a2, uint64_t a3)
{

  result = sub_1C987D9A4(a3, a1, a2 & 1);
  if (!v3)
  {
    v8 = result;
    v9 = 0;
    v30 = result;
    v31 = *(result + 16);
    v10 = result + 64;
    while (1)
    {
      if (v31 == v9)
      {
      }

      if (v9 >= *(v8 + 16))
      {
        break;
      }

      v32 = v9;
      v11 = *(v10 - 16);
      v12 = *(v10 - 8);

      sub_1C97CE3DC(v11, v12);

      result = sub_1C9881F1C(MEMORY[0x1E699BDB0]);
      v13 = result;
      switch(v12 >> 62)
      {
        case 1uLL:
          if (v11 >> 32 < v11)
          {
            goto LABEL_34;
          }

          v15 = sub_1C9A91308();
          if (v15)
          {
            v26 = v15;
            result = sub_1C9A91338();
            if (__OFSUB__(v11, result))
            {
              goto LABEL_37;
            }

            v16 = v26 + v11 - result == 0;
          }

          else
          {
            v16 = 1;
          }

          v29 = v16;
          v23 = sub_1C9A91328();
          v8 = v30;
          if (v29)
          {
            goto LABEL_24;
          }

          v14 = (v11 >> 32) - v11;
          if (v23 < v14)
          {
            v14 = v23;
          }

          goto LABEL_28;
        case 2uLL:
          v17 = *(v11 + 16);
          v27 = *(v11 + 24);
          result = sub_1C9A91308();
          if (result)
          {
            v25 = v17;
            v18 = result;
            result = sub_1C9A91338();
            v19 = v25;
            if (__OFSUB__(v25, result))
            {
              goto LABEL_36;
            }

            v20 = v18 + v25 - result == 0;
          }

          else
          {
            v20 = 1;
            v19 = v17;
          }

          v21 = v27 - v19;
          if (__OFSUB__(v27, v19))
          {
            goto LABEL_35;
          }

          v28 = v20;
          v22 = sub_1C9A91328();
          if (v28)
          {
            v8 = v30;
LABEL_24:
            if (v13)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v22 >= v21)
            {
              v14 = v21;
            }

            else
            {
              v14 = v22;
            }

            v8 = v30;
LABEL_28:
            if (v14 != v13)
            {
LABEL_31:

              sub_1C9885EF4();
              swift_allocError();
              *v24 = 0;
              *(v24 + 4) = 1;
              swift_willThrow();

              sub_1C97A5978(v11, v12);
            }
          }

          sub_1C97A5978(v11, v12);

          v10 += 40;
          v9 = v32 + 1;
          break;
        case 3uLL:
          goto LABEL_24;
        default:
          v14 = BYTE6(v12);
          goto LABEL_28;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9884308(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    sub_1C97B82A0(0, v4, 0);
    v8 = sub_1C9886CD8();
    if ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a3 + 32))
    {
      if ((*(a3 + 64 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
      {
        if (*(a3 + 36) == v7)
        {
          v9 = (*(a3 + 48) + 16 * v8);
          v11 = *v9;
          v10 = v9[1];
          v12 = *(a1 + 16);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          if (a2)
          {
            v13 = MEMORY[0x1E699BCE8];
          }

          else
          {
            v13 = MEMORY[0x1E699BCE0];
          }

          v14 = sub_1C9881454(v11, v10, v12, v13);
          if (!v3)
          {
            v15 = v14;
            type metadata accessor for E5RTIOPort();
            *(swift_allocObject() + 16) = v15;
            v16 = e5rt_io_port_retain_tensor_desc();
            if (v16)
            {
              v17 = v16;
              sub_1C9885EF4();
              swift_allocError();
              *v18 = v17;
              *(v18 + 4) = 0;
            }

            else
            {
              sub_1C9886C04();
              swift_allocError();
              *v19 = 0;
            }

            swift_willThrow();
          }

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

LABEL_31:
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = 0;
  v21 = *(MEMORY[0x1E69E7CC0] + 16);
  for (i = MEMORY[0x1E69E7CC0] + 56; ; i += 32)
  {
    if (v21 == v20)
    {
    }

    if (v20 >= *(v5 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v23 = *(i - 8);

    v24 = sub_1C9881F1C(MEMORY[0x1E699BDB0]);
    if (v3)
    {

      goto LABEL_25;
    }

    v25 = *(v23 + 16);
    if (v25 >> 61)
    {
      goto LABEL_28;
    }

    if (v24 != 4 * v25)
    {
      break;
    }

    ++v20;
  }

  sub_1C9885EF4();
  swift_allocError();
  *v27 = 0;
  *(v27 + 4) = 1;
  swift_willThrow();

LABEL_25:
}

uint64_t sub_1C9884844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  v8 = sub_1C9A41578(a3);
  sub_1C987EA78(MEMORY[0x1E699BCC8]);
  if (v4)
  {
  }

  v11 = sub_1C9A3C12C(v9);
  v12 = sub_1C9884CEC(v8, v11);

  if ((v12 & 1) == 0)
  {
    sub_1C9885EF4();
    swift_allocError();
    *v17 = 1;
LABEL_6:
    *(v17 + 4) = 1;
    return swift_willThrow();
  }

  v13 = *a4;

  v15 = sub_1C9A41578(v14);
  sub_1C987EA78(MEMORY[0x1E699BCD0]);
  v18 = sub_1C9A3C12C(v16);
  v19 = sub_1C9884CEC(v15, v18);

  if ((v19 & 1) == 0)
  {
    sub_1C9885EF4();
    swift_allocError();
    *v17 = 2;
    goto LABEL_6;
  }

  sub_1C9884038(a2, 0, a3);
  sub_1C9884038(a2, 1, v13);
  sub_1C9882C64(a2, 0, a3);
  sub_1C9880D94();
  return sub_1C9883C68(a2, 1, a4, sub_1C9886D64, sub_1C987E2DC, sub_1C99F45FC);
}

void sub_1C9884AC8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v7 = sub_1C9A41578(v4);
  sub_1C9887B04();
  sub_1C9887DF4();
  sub_1C987EA78(v8);
  if (v0)
  {
  }

  else
  {
    v10 = sub_1C9A3C12C(v9);
    v11 = sub_1C9884CEC(v7, v10);

    if (v11)
    {
      v12 = *v2;

      v14 = sub_1C9A41578(v13);
      sub_1C9887AAC();
      sub_1C9887DF4();
      sub_1C987EA78(v15);
      v18 = sub_1C9A3C12C(v16);
      v19 = sub_1C9884CEC(v14, v18);

      if (v19)
      {
        v20 = sub_1C9887E5C();
        sub_1C9884308(v20, v21, v22);
        sub_1C9884308(v6, 1, v12);
        v23 = sub_1C9887E5C();
        sub_1C988388C(v23, v24, v25);
        sub_1C9880D94();
        sub_1C9883C68(v6, 1, v2, sub_1C9886E5C, sub_1C987E65C, sub_1C99F466C);
        goto LABEL_7;
      }

      sub_1C9885EF4();
      sub_1C97A7A80();
      *v17 = 2;
    }

    else
    {
      sub_1C9885EF4();
      sub_1C97A7A80();
      *v17 = 1;
    }

    *(v17 + 4) = 1;
    swift_willThrow();
  }

LABEL_7:
  sub_1C97AEB5C();
}

uint64_t sub_1C9884CEC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1C9A93CC8();

      sub_1C9A92528();
      v15 = sub_1C9A93D18();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1C9A93B18();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9884E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C987DE50(a2, sub_1C9886DD8);
  if (!v3)
  {
    v5 = sub_1C99F45BC(v4);

    sub_1C987DF8C(v5, sub_1C9886DF8, 0);

    sub_1C9887E70();
    v2 = sub_1C99F45FC();
  }

  return v2;
}

uint64_t sub_1C9884F70(void *a1, uint64_t *a2, void *a3)
{
  v5 = a3[1];
  *a1 = *a3;
  a1[1] = v5;

  v6 = sub_1C9881F1C(MEMORY[0x1E699BDB0]);
  if (v3)
  {
  }

  result = MEMORY[0x1CCA8F2D0](v6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1C988500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 16))(a3, a5, a6);
  if (!v6)
  {
    type metadata accessor for E5RTExecutionStreamOperation();
    sub_1C97E89F0();
    sub_1C98817E8();
    a4 = v9;
  }

  return a4;
}

uint64_t sub_1C98850D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C9887C38();
  v12 = sub_1C9881454(a4, v11, v9, v10);
  if (!v5)
  {
    v13 = v12;
    type metadata accessor for E5RTIOPort();
    *(swift_initStackObject() + 16) = v13;
    sub_1C9887ADC();
    v14 = sub_1C9887E70();
    v16 = sub_1C988210C(v14, v15);
    swift_setDeallocating();
    sub_1C98819BC();
    sub_1C9823DD8();
    swift_deallocClassInstance();
    type metadata accessor for E5RTTensorDescriptor();
    *(swift_initStackObject() + 16) = v16;
    sub_1C9887AC4();
    v17 = sub_1C9887E70();
    v20 = sub_1C988210C(v17, v18);
    swift_setDeallocating();
    sub_1C9881C7C();
    sub_1C9823DD8();
    swift_deallocClassInstance();
    type metadata accessor for E5RTTensorDescriptorDataType();
    *(swift_initStackObject() + 16) = v20;
    if (*(a3 + 16) && (sub_1C9A32230(a4, a5), (v21 & 1) != 0))
    {
      v22 = sub_1C97E89F0();
      sub_1C97CE3DC(v22, v23);
      sub_1C9887E50();
      if (sub_1C987EDA8() == 4)
      {
        sub_1C9887B1C();
        sub_1C9887E50();
        v25 = sub_1C9881F1C(v24);
        switch(v25)
        {
          case 8:
            v44 = sub_1C97E89F0();
            v46 = sub_1C9885748(v44, v45)[2];
            if (v46)
            {
              sub_1C9887CF4();
              sub_1C9887E40();
              do
              {
                sub_1C9887D40();
                if (_CF)
                {
                  sub_1C9887B6C();
                  sub_1C97B7F1C();
                  sub_1C9887E20();
                }

                v48 = v47;
                sub_1C9887E30(v48);
                --v46;
              }

              while (v46);
              goto LABEL_30;
            }

            goto LABEL_31;
          case 4:
            v40 = sub_1C97E89F0();
            v42 = sub_1C98855D8(v40, v41)[2];
            if (v42)
            {
              sub_1C9887CF4();
              sub_1C9887E40();
              do
              {
                sub_1C9887D40();
                if (_CF)
                {
                  sub_1C9887B6C();
                  sub_1C97B7F1C();
                  sub_1C9887E20();
                }

                sub_1C9887E30(v43);
                --v42;
              }

              while (v42);
              goto LABEL_30;
            }

LABEL_31:

            swift_setDeallocating();
            sub_1C9881DCC();
            sub_1C97F07FC();
            swift_deallocClassInstance();
            v51 = sub_1C97E89F0();
            sub_1C97A5978(v51, v52);
            return MEMORY[0x1E69E7CC0];
          case 2:
            v26 = sub_1C97E89F0();
            v28 = sub_1C9885468(v26, v27)[2];
            if (v28)
            {
              sub_1C9887CF4();
              sub_1C9887E40();
              do
              {
                sub_1C9887D40();
                if (_CF)
                {
                  sub_1C9887B6C();
                  sub_1C97B7F1C();
                  sub_1C9887E20();
                }

                __asm { FCVT            S0, H0 }

                sub_1C9887E30(_S0);
                --v28;
              }

              while (v28);
LABEL_30:
              swift_setDeallocating();
              sub_1C9881DCC();
              sub_1C97F07FC();
              swift_deallocClassInstance();
              v49 = sub_1C97E89F0();
              sub_1C97A5978(v49, v50);

              return a4;
            }

            goto LABEL_31;
        }
      }

      sub_1C9885EF4();
      sub_1C97A7A80();
      sub_1C9887DC8(v37, 8);
      v38 = sub_1C97E89F0();
      sub_1C97A5978(v38, v39);
    }

    else
    {
      sub_1C97A8E8C();
      v35 = sub_1C97A7A80();
      sub_1C9887D54(v35, v36);
      swift_willThrow();
    }

    swift_setDeallocating();
    sub_1C9881DCC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
  }

  return a4;
}

void *sub_1C9885468(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = v4;
      return sub_1C9886B70(a1, v6, v5, sub_1C9885D20);
    case 2uLL:
      v7 = *(a1 + 24);
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v6 = v7;
      return sub_1C9886B70(a1, v6, v5, sub_1C9885D20);
    case 3uLL:
      return v2;
    default:
      v9 = a1;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v14 = BYTE5(a2);
      return sub_1C9885E0C(&v9, (a2 >> 49) & 0x7F);
  }
}

void *sub_1C98855D8(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = v4;
      return sub_1C9886B70(a1, v6, v5, sub_1C9873D8C);
    case 2uLL:
      v7 = *(a1 + 24);
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v6 = v7;
      return sub_1C9886B70(a1, v6, v5, sub_1C9873D8C);
    case 3uLL:
      return v2;
    default:
      v9 = a1;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v14 = BYTE5(a2);
      return sub_1C9873DC0(&v9, (a2 >> 50) & 0x3F);
  }
}

void *sub_1C9885748(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = v4;
      return sub_1C9886B70(a1, v6, v5, sub_1C9885CEC);
    case 2uLL:
      v7 = *(a1 + 24);
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v6 = v7;
      return sub_1C9886B70(a1, v6, v5, sub_1C9885CEC);
    case 3uLL:
      return v2;
    default:
      v9 = a1;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v14 = BYTE5(a2);
      return sub_1C9885D54(&v9, (a2 >> 51) & 0x1F);
  }
}

void sub_1C98858B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1C9887C20();
  v10 = sub_1C9881454(v6, v9, v7, v8);
  if (!v3)
  {
    v11 = v10;
    type metadata accessor for E5RTIOPort();
    *(swift_initStackObject() + 16) = v11;
    sub_1C9887ADC();
    v12 = sub_1C9887E70();
    v14 = sub_1C988210C(v12, v13);
    swift_setDeallocating();
    sub_1C98819BC();
    sub_1C9823DD8();
    swift_deallocClassInstance();
    type metadata accessor for E5RTTensorDescriptor();
    *(swift_initStackObject() + 16) = v14;
    sub_1C9887AC4();
    v16 = sub_1C988210C(v14, v15);
    type metadata accessor for E5RTTensorDescriptorDataType();
    *(swift_initStackObject() + 16) = v16;
    v17 = sub_1C9881B70();
    v19 = sub_1C9A0840C(v17, v18);
    v20 = *(a3 + 16);
    v21 = v19[2];
    if (v21)
    {
      v22 = 1;
      v23 = 4;
      do
      {
        v24 = v19[v23];
        v25 = v22 * v24;
        if ((v22 * v24) >> 64 != (v22 * v24) >> 63)
        {
          __break(1u);
          goto LABEL_24;
        }

        ++v23;
        v22 *= v24;
        --v21;
      }

      while (v21);

      if (v20 != v25)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (v20 != 1)
      {
LABEL_19:
        sub_1C9885EF4();
        sub_1C97A7A80();
        *v50 = 0;
LABEL_20:
        *(v50 + 4) = 1;
        swift_willThrow();
        swift_setDeallocating();
        sub_1C9881DCC();
        sub_1C97F07FC();
        swift_deallocClassInstance();
        swift_setDeallocating();
        sub_1C9881C7C();
        sub_1C97F07FC();
        swift_deallocClassInstance();
        return;
      }
    }

    sub_1C9887DF4();
    if (sub_1C987EDA8() != 4)
    {
LABEL_22:
      sub_1C9885EF4();
      sub_1C97A7A80();
      *v50 = 8;
      goto LABEL_20;
    }

    sub_1C9887B1C();
    sub_1C9887DF4();
    v27 = sub_1C9881F1C(v26);
    switch(v27)
    {
      case 8:
        if (v20)
        {
          sub_1C9887C08(MEMORY[0x1E69E7CC0]);
          sub_1C97B7EE8();
          sub_1C9887E00();
          do
          {
            v64 = sub_1C9887BF0(v62);
            if (_CF)
            {
              sub_1C9887B48();
              sub_1C97B7EE8();
              v64 = sub_1C9887D7C(v65, v66, v67, v68, v69, v70, v71, v72, v75, v76, *&v77, *(&v77 + 1));
            }

            *(v4 + 16) = a3;
            *(v4 + 8 * v63 + 32) = v64;
            sub_1C9887E10();
          }

          while (!_ZF);
        }

        else
        {
          v4 = MEMORY[0x1E69E7CC0];
          a3 = *(MEMORY[0x1E69E7CC0] + 16);
        }

        if (!(a3 >> 60))
        {
          v73 = v4 + 32;
          v74 = v4 + 32 + 8 * a3;
          goto LABEL_47;
        }

        break;
      case 4:
LABEL_24:
        if (v20)
        {
          sub_1C9887C08(MEMORY[0x1E69E7CC0]);
          sub_1C97B7F1C();
          sub_1C9887E00();
          do
          {
            v53 = sub_1C9887BF0(v51);
            if (_CF)
            {
              sub_1C9887B48();
              sub_1C97B7F1C();
              v53 = sub_1C9887D7C(v54, v55, v56, v57, v58, v59, v60, v61, v75, v76, *&v77, *(&v77 + 1));
            }

            *(v4 + 16) = a3;
            *(v4 + 4 * v52 + 32) = v53;
            sub_1C9887E10();
          }

          while (!_ZF);
        }

        else
        {
          v4 = MEMORY[0x1E69E7CC0];
          a3 = *(MEMORY[0x1E69E7CC0] + 16);
        }

        if (!(a3 >> 61))
        {
          v73 = v4 + 32;
          v74 = v4 + 32 + 4 * a3;
LABEL_47:
          sub_1C98FBA38(v73, v74);
          swift_setDeallocating();
          sub_1C9881DCC();
          sub_1C97F07FC();
          swift_deallocClassInstance();
          swift_setDeallocating();
          sub_1C9881C7C();
          sub_1C97F07FC();
          swift_deallocClassInstance();

          return;
        }

        __break(1u);
        break;
      case 2:
        if (v20)
        {
          v28 = sub_1C9887C08(MEMORY[0x1E69E7CC0]);
          sub_1C97B80F8(v28, v29, v30);
          sub_1C9887E00();
          do
          {
            _S0 = sub_1C9887BF0(v31);
            if (_CF)
            {
              v39 = sub_1C9887B48();
              sub_1C97B80F8(v39, v40, v41);
              _S0 = sub_1C9887D7C(v42, v43, v44, v45, v46, v47, v48, v49, v75, v76, *&v77, *(&v77 + 1));
            }

            __asm { FCVT            H0, S0 }

            *(v4 + 16) = a3;
            *(v4 + 2 * v32 + 32) = _H0;
            sub_1C9887E10();
          }

          while (!_ZF);
        }

        else
        {
          v4 = MEMORY[0x1E69E7CC0];
          a3 = *(MEMORY[0x1E69E7CC0] + 16);
        }

        if ((a3 + 0x4000000000000000) >= 0)
        {
          v73 = v4 + 32;
          v74 = v4 + 32 + 2 * a3;
          goto LABEL_47;
        }

        goto LABEL_50;
      default:
        goto LABEL_22;
    }

    __break(1u);
LABEL_50:
    __break(1u);
  }
}

uint64_t sub_1C9885C94(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C9885CC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x1000000000000000) >> 61 != 7)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1C9885CEC(const void *a1, uint64_t a2)
{
  if (a1)
  {
    return sub_1C9885D54(a1, (a2 - a1) / 8);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1C9885D20(const void *a1, uint64_t a2)
{
  if (a1)
  {
    return sub_1C9885E0C(a1, (a2 - a1) / 2);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1C9885D54(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 8 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C6CD0);
    v4 = 8 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 8);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

void *sub_1C9885E0C(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 2 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C6978);
    v4 = 2 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 2);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_1C9885EC4(uint64_t a1)
{
  *(v1 + 16) = swift_slowAlloc();
  *(v1 + 24) = a1;
  return v1;
}

unint64_t sub_1C9885EF4()
{
  result = qword_1EC3CA170;
  if (!qword_1EC3CA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA170);
  }

  return result;
}

uint64_t sub_1C9885F48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v82 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v5;
  switch(v6 >> 62)
  {
    case 1uLL:
      v31 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_1C97CE3DC(v7, v6);
      sub_1C97A5978(v7, v6);
      *a1 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      v32 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_33;
      }

      if (v32 < v7)
      {
        goto LABEL_65;
      }

      if (sub_1C9A91308() && __OFSUB__(v7, sub_1C9A91338()))
      {
        goto LABEL_66;
      }

      sub_1C9A91348();
      swift_allocObject();
      v40 = sub_1C9A912F8();

      v31 = v40;
LABEL_33:
      v41 = v32 < v7;
      v42 = v32 - v7;
      if (v41)
      {
        goto LABEL_62;
      }

      result = sub_1C9A91308();
      v71 = result;
      if (!result)
      {
        goto LABEL_68;
      }

      v43 = sub_1C9A91338();
      v44 = v7 - v43;
      if (__OFSUB__(v7, v43))
      {
        goto LABEL_64;
      }

      v45 = sub_1C9A91328();
      if (v45 >= v42)
      {
        v46 = v42;
      }

      else
      {
        v46 = v45;
      }

      if (a5)
      {
        v47 = MEMORY[0x1E699BCE8];
      }

      else
      {
        v47 = MEMORY[0x1E699BCE0];
      }

      v48 = sub_1C9881454(a3, a4, *(a2 + 16), v47);
      if (v5)
      {
      }

      else
      {
        v49 = v48;
        type metadata accessor for E5RTIOPort();
        *(swift_allocObject() + 16) = v49;
        v65 = sub_1C988210C(v49, MEMORY[0x1E699BD08]);
        type metadata accessor for E5RTBufferObject();
        *(swift_initStackObject() + 16) = v65;
        __srcc = sub_1C988210C(v65, MEMORY[0x1E699BC90]);
        *&__dst = 0;
        size = e5rt_buffer_object_get_size();
        if (!size)
        {
          sub_1C99CC544(__srcc, __srcc + __dst, (v71 + v44), v71 + v44 + v46);
          swift_setDeallocating();
          sub_1C98821C8();
          swift_deallocClassInstance();

          swift_bridgeObjectRelease_n();

          goto LABEL_59;
        }

        v67 = size;
        sub_1C9885EF4();
        swift_allocError();
        *v68 = v67;
        *(v68 + 4) = 0;
        swift_willThrow();

        swift_setDeallocating();
        sub_1C98821C8();
        swift_deallocClassInstance();
      }

LABEL_59:
      *a1 = v7;
      a1[1] = v31 | 0x4000000000000000;
      goto LABEL_60;
    case 2uLL:
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_1C97CE3DC(v7, v6);
      sub_1C97A5978(v7, v6);
      *&__dst = v7;
      *(&__dst + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      sub_1C9A91588();
      v16 = *(&__dst + 1);
      v17 = *(__dst + 16);
      v18 = *(__dst + 24);
      v72 = __dst;

      result = sub_1C9A91308();
      if (result)
      {
        v20 = result;
        v21 = sub_1C9A91338();
        v22 = v17 - v21;
        if (__OFSUB__(v17, v21))
        {
          __break(1u);
LABEL_62:
          __break(1u);
        }

        else
        {
          v23 = __OFSUB__(v18, v17);
          v24 = v18 - v17;
          if (!v23)
          {
            v25 = v22;
            v26 = sub_1C9A91328();
            if (v26 >= v24)
            {
              v27 = v24;
            }

            else
            {
              v27 = v26;
            }

            if (a5)
            {
              v28 = MEMORY[0x1E699BCE8];
            }

            else
            {
              v28 = MEMORY[0x1E699BCE0];
            }

            v36 = sub_1C9881454(a3, a4, *(a2 + 16), v28);
            if (v5)
            {

              v39 = __dst;
            }

            else
            {
              v38 = v36;
              type metadata accessor for E5RTIOPort();
              *(swift_allocObject() + 16) = v38;
              v60 = sub_1C988210C(v38, MEMORY[0x1E699BD08]);
              type metadata accessor for E5RTBufferObject();
              *(swift_initStackObject() + 16) = v60;
              v61 = sub_1C988210C(v60, MEMORY[0x1E699BC90]);
              v62 = e5rt_buffer_object_get_size();
              if (!v62)
              {
                sub_1C99CC544(v61, v61, (v20 + v25), v20 + v25 + v27);
                swift_setDeallocating();
                sub_1C98821C8();
                swift_deallocClassInstance();

                swift_bridgeObjectRelease_n();

                *a1 = v72;
                a1[1] = v16 | 0x8000000000000000;
                goto LABEL_60;
              }

              v63 = v62;
              sub_1C9885EF4();
              swift_allocError();
              *v64 = v63;
              *(v64 + 4) = 0;
              swift_willThrow();
              v39 = v72;

              swift_setDeallocating();
              sub_1C98821C8();
              swift_deallocClassInstance();
            }

            *a1 = v39;
            a1[1] = v16 | 0x8000000000000000;
LABEL_60:

            return swift_bridgeObjectRelease_n();
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

      __break(1u);
LABEL_68:
      __break(1u);
      return result;
    case 3uLL:
      *(&__dst + 7) = 0;
      *&__dst = 0;
      v29 = *(a2 + 16);

      if (a5)
      {
        v30 = MEMORY[0x1E699BCE8];
      }

      else
      {
        v30 = MEMORY[0x1E699BCE0];
      }

      v33 = sub_1C9881454(a3, a4, v29, v30);
      if (!v8)
      {
        v37 = v33;
        type metadata accessor for E5RTIOPort();
        *(swift_allocObject() + 16) = v37;
        v50 = sub_1C988210C(v37, MEMORY[0x1E699BD08]);
        type metadata accessor for E5RTBufferObject();
        *(swift_initStackObject() + 16) = v50;
        v51 = sub_1C988210C(v50, MEMORY[0x1E699BC90]);
        v52 = e5rt_buffer_object_get_size();
        if (v52)
        {
          v53 = v52;
          sub_1C9885EF4();
          swift_allocError();
          *v54 = v53;
          *(v54 + 4) = 0;
          swift_willThrow();

          swift_setDeallocating();
          sub_1C98821C8();
          swift_deallocClassInstance();
        }

        else
        {
          sub_1C99CC544(v51, v51, &__dst, &__dst);
          swift_setDeallocating();
          sub_1C98821C8();
          swift_deallocClassInstance();
        }
      }

      goto LABEL_60;
    default:
      v14 = HIWORD(v6);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_1C97A5978(v7, v6);
      *&__dst = v7;
      WORD4(__dst) = v6;
      BYTE10(__dst) = BYTE2(v6);
      BYTE11(__dst) = BYTE3(v6);
      BYTE12(__dst) = BYTE4(v6);
      BYTE13(__dst) = BYTE5(v6);
      BYTE14(__dst) = BYTE6(v6);
      if (a5)
      {
        v15 = MEMORY[0x1E699BCE8];
      }

      else
      {
        v15 = MEMORY[0x1E699BCE0];
      }

      v34 = sub_1C9881454(a3, a4, *(a2 + 16), v15);
      if (!v5)
      {
        v35 = v34;
        type metadata accessor for E5RTIOPort();
        *(swift_allocObject() + 16) = v35;
        v55 = sub_1C988210C(v35, MEMORY[0x1E699BD08]);
        type metadata accessor for E5RTBufferObject();
        *(swift_initStackObject() + 16) = v55;
        v56 = sub_1C988210C(v55, MEMORY[0x1E699BC90]);
        v57 = e5rt_buffer_object_get_size();
        if (v57)
        {
          v58 = v57;
          sub_1C9885EF4();
          swift_allocError();
          *v59 = v58;
          *(v59 + 4) = 0;
          swift_willThrow();

          swift_setDeallocating();
          sub_1C98821C8();
          swift_deallocClassInstance();
        }

        else
        {
          sub_1C99CC544(v56, v56, &__dst, &__dst + v14);
          swift_setDeallocating();
          sub_1C98821C8();
          swift_deallocClassInstance();
        }
      }

      v69 = __dst;
      v70 = DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);

      *a1 = v69;
      a1[1] = v70;
      goto LABEL_60;
  }
}

uint64_t sub_1C9886B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_1C9A91308();
  v8 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1C9A91328();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return a4(v8, v14);
}

unint64_t sub_1C9886C04()
{
  result = qword_1EC3CE570;
  if (!qword_1EC3CE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE570);
  }

  return result;
}

uint64_t sub_1C9886C58(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1C9A93458();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C9886D18(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_1C9883D04(a2, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), a4, a5 & 1);
  if (!v5)
  {
    *a1 = result;
    a1[1] = v8;
  }

  return result;
}

unint64_t sub_1C9886D84()
{
  result = qword_1EC3CA178;
  if (!qword_1EC3CA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA178);
  }

  return result;
}

uint64_t sub_1C9886E10(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4, char a5)
{
  result = sub_1C9883DC8(a2, *a3, a3[1], a3[2], a4, a5 & 1);
  if (!v5)
  {
    *a1 = result;
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_1C9886E8C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9886EA8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

unint64_t sub_1C9886EDC()
{
  result = qword_1EC3CA190;
  if (!qword_1EC3CA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA190);
  }

  return result;
}

unint64_t sub_1C9886F34()
{
  result = qword_1EC3CA198;
  if (!qword_1EC3CA198)
  {
    sub_1C97AA4F0(&qword_1EC3CA1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA198);
  }

  return result;
}

unint64_t sub_1C9886F9C()
{
  result = qword_1EC3CA1A8;
  if (!qword_1EC3CA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA1A8);
  }

  return result;
}

unint64_t sub_1C9886FF0()
{
  result = qword_1EC3CA1E0;
  if (!qword_1EC3CA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA1E0);
  }

  return result;
}

unint64_t sub_1C9887044()
{
  result = qword_1EC3CA1E8;
  if (!qword_1EC3CA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA1E8);
  }

  return result;
}

unint64_t sub_1C9887098()
{
  result = qword_1EC3CA1F0;
  if (!qword_1EC3CA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA1F0);
  }

  return result;
}

unint64_t sub_1C98870EC()
{
  result = qword_1EC3CA1F8;
  if (!qword_1EC3CA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA1F8);
  }

  return result;
}

unint64_t sub_1C9887140()
{
  result = qword_1EC3CA200;
  if (!qword_1EC3CA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA200);
  }

  return result;
}

unint64_t sub_1C9887194()
{
  result = qword_1EC3CA208;
  if (!qword_1EC3CA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA208);
  }

  return result;
}

_BYTE *sub_1C98871E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for E5RTErrorCode(uint64_t a1, int a2)
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

unint64_t sub_1C9887348()
{
  result = qword_1EC3CA240;
  if (!qword_1EC3CA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA240);
  }

  return result;
}

unint64_t sub_1C98873A0()
{
  result = qword_1EC3CA248;
  if (!qword_1EC3CA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA248);
  }

  return result;
}

unint64_t sub_1C98873F8()
{
  result = qword_1EC3CA250;
  if (!qword_1EC3CA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA250);
  }

  return result;
}

unint64_t sub_1C9887450()
{
  result = qword_1EC3CA258;
  if (!qword_1EC3CA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA258);
  }

  return result;
}

unint64_t sub_1C98874A8()
{
  result = qword_1EC3CA260;
  if (!qword_1EC3CA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA260);
  }

  return result;
}

unint64_t sub_1C9887500()
{
  result = qword_1EC3CA268;
  if (!qword_1EC3CA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA268);
  }

  return result;
}

unint64_t sub_1C9887558()
{
  result = qword_1EC3CA270;
  if (!qword_1EC3CA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA270);
  }

  return result;
}

unint64_t sub_1C98875B0()
{
  result = qword_1EC3CA278;
  if (!qword_1EC3CA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA278);
  }

  return result;
}

unint64_t sub_1C9887608()
{
  result = qword_1EC3CA280;
  if (!qword_1EC3CA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA280);
  }

  return result;
}

unint64_t sub_1C9887660()
{
  result = qword_1EC3CA288;
  if (!qword_1EC3CA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA288);
  }

  return result;
}

unint64_t sub_1C98876B8()
{
  result = qword_1EC3CA290;
  if (!qword_1EC3CA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA290);
  }

  return result;
}

unint64_t sub_1C9887710()
{
  result = qword_1EC3CA298;
  if (!qword_1EC3CA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA298);
  }

  return result;
}

unint64_t sub_1C9887768()
{
  result = qword_1EC3CA2A0;
  if (!qword_1EC3CA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA2A0);
  }

  return result;
}

unint64_t sub_1C98877C0()
{
  result = qword_1EC3CA2A8;
  if (!qword_1EC3CA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA2A8);
  }

  return result;
}

unint64_t sub_1C9887814()
{
  result = qword_1EC3CA2B8;
  if (!qword_1EC3CA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA2B8);
  }

  return result;
}

uint64_t sub_1C9887868(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CA2C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for E5RTErrorCode.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9887984()
{
  result = qword_1EC3CA2E0;
  if (!qword_1EC3CA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA2E0);
  }

  return result;
}

unint64_t sub_1C98879DC()
{
  result = qword_1EC3CA2E8;
  if (!qword_1EC3CA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA2E8);
  }

  return result;
}

unint64_t sub_1C9887A34()
{
  result = qword_1EC3CA2F0[0];
  if (!qword_1EC3CA2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CA2F0);
  }

  return result;
}

void sub_1C9887B8C()
{
  sub_1C97A592C(v0);

  JUMPOUT(0x1CCA93280);
}

void sub_1C9887BD0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

float sub_1C9887BF0@<S0>(float *a1@<X8>)
{
  result = *a1;
  *(v2 - 56) = v1;
  return result;
}

uint64_t sub_1C9887C98()
{

  return sub_1C9A93988();
}

uint64_t sub_1C9887CB8()
{

  return sub_1C9A93858();
}

uint64_t sub_1C9887CD8()
{

  return swift_slowAlloc();
}

void sub_1C9887CF4()
{

  sub_1C97B7F1C();
}

void sub_1C9887D60()
{

  JUMPOUT(0x1CCA93280);
}

uint64_t sub_1C9887D90()
{

  return swift_slowAlloc();
}

BOOL sub_1C9887DAC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C9887DC8@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *a1 = a2;
  *(a1 + 4) = 1;

  return swift_willThrow();
}

uint64_t sub_1C9887E7C(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 4) = 0;

  return swift_willThrow();
}

uint64_t sub_1C9887F40()
{

  return v0;
}

uint64_t sub_1C9887F70()
{
  sub_1C9887F40();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9888004(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C988805C(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

void sub_1C988805C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(*a1 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  v10 = *(v7 + 16);
  type metadata accessor for WrapperNSHashableShallowCopying();
  (*(v6 + 16))(v9, a2, v5);
  v11 = v10;
  v12 = sub_1C984E818();
  v13 = [v11 objectForKey_];

  *a3 = v13;
}

uint64_t sub_1C98881AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = objc_autoreleasePoolPush();
  sub_1C9888288(a1, v3, a2);
  objc_autoreleasePoolPop(v7);
  swift_unknownObjectRelease();
  v8 = *(*(*(v6 + 80) - 8) + 8);

  return v8(a2);
}

void sub_1C9888288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - v7;
  v10 = *(v9 + 16);
  type metadata accessor for WrapperNSHashableShallowCopying();
  (*(v6 + 16))(v8, a3, v5);
  if (a1)
  {
    swift_unknownObjectRetain_n();
    v11 = v10;
    v12 = sub_1C984E818();
    [v11 setObject:a1 forKey:v12];

    swift_unknownObjectRelease_n();
  }

  else
  {
    v13 = v10;
    v12 = sub_1C984E818();
    [v13 removeObjectForKey_];
  }
}

uint64_t sub_1C988843C()
{
  sub_1C988841C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9888488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9888004(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C98884DC()
{
  v1 = *(*(v0 + 16) + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1C9888520(uint64_t a1, uint64_t a2)
{
  sub_1C985DB04();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1C9888558()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_1C98885A4()
{
  sub_1C988A500();
  swift_getObjectType();
  v0 = sub_1C988A510();
  return v1(v0);
}

uint64_t sub_1C9888604()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1C9888650()
{
  swift_unknownObjectRelease();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C98886D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9888520(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C9888708()
{
  v1 = *(v0 + 16);
  sub_1C97A2CEC(&unk_1EC3C7BD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C9A9EDD0;
  v3 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1;

  return sub_1C9A924C8();
}

id sub_1C988878C()
{
  v1 = [*(v0 + 16) modelDescription];

  return v1;
}

uint64_t sub_1C98887C4()
{
  sub_1C9823DD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9888820()
{
  sub_1C97A2CEC(&unk_1EC3C7BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C9A9EDD0;
  v2 = MEMORY[0x1E69E65A8];
  *(v1 + 56) = MEMORY[0x1E69E6530];
  *(v1 + 64) = v2;
  *(v1 + 32) = v0;

  return sub_1C9A924C8();
}

uint64_t sub_1C9888898()
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v1 = sub_1C9A91B58();
  sub_1C97BFF6C(v1, qword_1EC3D3108);

  v2 = sub_1C9A91B38();
  v3 = sub_1C9A92FC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_1C9888820();
    v8 = sub_1C9849140(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C9788000, v2, v3, "Custom Model destroyed with ID %s", v4, 0xCu);
    sub_1C97A592C(v5);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C98889E8()
{
  sub_1C9888898();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

id sub_1C9888A38(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 16);
  v9[0] = 0;
  v5 = [v4 predictionFromFeatures:a1 options:a2 error:v9];
  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C9888B04()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = qword_1EC3C5520;

  if (v4 != -1)
  {
    sub_1C97DAA64();
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);

  v6 = sub_1C9A91B38();
  v7 = sub_1C9A92FC8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    v10 = sub_1C9849140(v3, v2, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1C9788000, v6, v7, "Locked Model destroyed with id %s", v8, 0xCu);
    sub_1C97A592C(v9);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1C9888C70()
{
  sub_1C9888B04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9888CC8()
{
  v1 = *(*(v0 + 48) + 16);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  os_unfair_lock_unlock(v1);
  return v4;
}

uint64_t sub_1C9888D34()
{
  sub_1C988A500();
  v1 = *(*(v0 + 48) + 16);
  os_unfair_lock_lock(v1);
  swift_getObjectType();
  v2 = sub_1C988A510();
  v4 = v3(v2);
  os_unfair_lock_unlock(v1);
  return v4;
}

uint64_t sub_1C9888DC4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C9888E54()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis13SNMLModelObjC_model + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_1C9888EA0()
{
  sub_1C988A500();
  swift_getObjectType();
  v0 = sub_1C988A510();
  return v1(v0);
}

uint64_t sub_1C9889050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6544746F6E6E6163 && a2 == 0xEC00000065646F63;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E45746F6E6E6163 && a2 == 0xEC00000065646F63)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9889124(char a1)
{
  if (a1)
  {
    return 0x6E45746F6E6E6163;
  }

  else
  {
    return 0x6544746F6E6E6163;
  }
}

uint64_t sub_1C988915C(void *a1, int a2)
{
  v24 = a2;
  sub_1C97A2CEC(&qword_1EC3CA448);
  sub_1C97AE9C8();
  v22 = v4;
  v23 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v21 = sub_1C97A2CEC(&qword_1EC3CA450);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CA458);
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C988A070();
  sub_1C9A93DD8();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_1C988A0C4();
    sub_1C9A93988();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_1C988A118();
    sub_1C9A93988();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_1C98893E8(uint64_t a1)
{
  v41 = sub_1C97A2CEC(&qword_1EC3CA410);
  sub_1C97AE9C8();
  v39 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = sub_1C97A2CEC(&qword_1EC3CA418);
  sub_1C97AE9C8();
  v38 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3CA420);
  sub_1C97AE9C8();
  v40 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  sub_1C97A5A8C(a1, *(a1 + 24));
  sub_1C988A070();
  v16 = v42;
  sub_1C9A93DB8();
  if (v16)
  {
    goto LABEL_8;
  }

  v36 = v6;
  v37 = v10;
  v42 = a1;
  v17 = v41;
  v18 = sub_1C9A93958();
  result = sub_1C98EE524(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v27 = sub_1C9A93648();
    swift_allocError();
    v29 = v28;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v29 = &type metadata for SNMLModelHashableUncodableWrapper.DomainError;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v11);
    a1 = v42;
LABEL_8:
    sub_1C97A592C(a1);
    return a1;
  }

  v35 = 0;
  if (v21 < (v22 >> 1))
  {
    a1 = *(v20 + v21);
    sub_1C98EE520(v21 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (a1)
      {
        LODWORD(v38) = a1;
        v44 = 1;
        sub_1C988A0C4();
        sub_1C988A520();
        swift_unknownObjectRelease();
        (*(v39 + 8))(v5, v17);
        v31 = sub_1C988A4F0();
        v32(v31);
        a1 = v38;
      }

      else
      {
        v43 = 0;
        sub_1C988A118();
        v30 = v37;
        sub_1C988A520();
        swift_unknownObjectRelease();
        (*(v38 + 8))(v30, v36);
        v33 = sub_1C988A4F0();
        v34(v33);
      }

      sub_1C97A592C(v42);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C988986C(uint64_t a1)
{
  v2 = sub_1C988A118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98898A8(uint64_t a1)
{
  v2 = sub_1C988A118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98898E4(uint64_t a1)
{
  v2 = sub_1C988A0C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9889920(uint64_t a1)
{
  v2 = sub_1C988A0C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C988997C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9889050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98899A4(uint64_t a1)
{
  v2 = sub_1C988A070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98899E0(uint64_t a1)
{
  v2 = sub_1C988A070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9889A1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C98893E8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C9889A80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9889ACC(uint64_t a1)
{
  sub_1C9823DD8();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1C9889AF8(uint64_t a1)
{
  sub_1C9823DD8();
  swift_allocObject();
  return sub_1C9889B3C(a1);
}

uint64_t sub_1C9889B3C(uint64_t a1)
{
  sub_1C9889F60();
  swift_allocError();
  *v2 = 0;
  swift_willThrow();
  sub_1C97A592C(a1);
  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C9889BD8()
{
  sub_1C9889F60();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

uint64_t sub_1C9889C28(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);
  v7 = v6;
  v8 = *(*(a2 + 16) + 24);
  v9 = swift_getObjectType();
  if (v5 == (*(v8 + 8))(v9, v8) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C9A93B18();
  }

  return v12 & 1;
}

uint64_t sub_1C9889CF0()
{
  sub_1C98884DC();
  sub_1C9A92528();
}

uint64_t sub_1C9889D40()
{

  sub_1C9823DD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9889D94()
{
  sub_1C9A93CC8();
  sub_1C98884DC();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C9889E38()
{
  sub_1C9A93CC8();
  sub_1C9889CF0();
  return sub_1C9A93D18();
}

uint64_t sub_1C9889EB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9889ACC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C9889F0C()
{
  result = qword_1EC3CA3F0;
  if (!qword_1EC3CA3F0)
  {
    type metadata accessor for SNMLModelHashableUncodableWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA3F0);
  }

  return result;
}

unint64_t sub_1C9889F60()
{
  result = qword_1EC3CA400;
  if (!qword_1EC3CA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA400);
  }

  return result;
}

uint64_t sub_1C9889FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnySNMLModel();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  sub_1C9823DD8();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

unint64_t sub_1C988A01C()
{
  result = qword_1EC3CA408;
  if (!qword_1EC3CA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA408);
  }

  return result;
}

unint64_t sub_1C988A070()
{
  result = qword_1EC3CA428;
  if (!qword_1EC3CA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA428);
  }

  return result;
}

unint64_t sub_1C988A0C4()
{
  result = qword_1EC3CA438;
  if (!qword_1EC3CA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA438);
  }

  return result;
}

unint64_t sub_1C988A118()
{
  result = qword_1EC3CA440;
  if (!qword_1EC3CA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA440);
  }

  return result;
}

_BYTE *sub_1C988A16C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C988A26C()
{
  result = qword_1EC3CA460;
  if (!qword_1EC3CA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA460);
  }

  return result;
}

unint64_t sub_1C988A2C4()
{
  result = qword_1EC3CA468;
  if (!qword_1EC3CA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA468);
  }

  return result;
}

unint64_t sub_1C988A31C()
{
  result = qword_1EC3CA470;
  if (!qword_1EC3CA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA470);
  }

  return result;
}

unint64_t sub_1C988A374()
{
  result = qword_1EC3CA478;
  if (!qword_1EC3CA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA478);
  }

  return result;
}

unint64_t sub_1C988A3CC()
{
  result = qword_1EC3CA480;
  if (!qword_1EC3CA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA480);
  }

  return result;
}

unint64_t sub_1C988A424()
{
  result = qword_1EC3CA488;
  if (!qword_1EC3CA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA488);
  }

  return result;
}

unint64_t sub_1C988A47C()
{
  result = qword_1EC3CA490;
  if (!qword_1EC3CA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA490);
  }

  return result;
}

uint64_t sub_1C988A520()
{

  return sub_1C9A93858();
}

void sub_1C988A58C(uint64_t a1@<X8>)
{
  sub_1C987E9B0();
  if (!v1)
  {
    v4 = v3;
    sub_1C987EA14();
    v6 = sub_1C988AE7C(v4, v5);
    v8 = v7;
    v10 = v9;

    sub_1C988BB40(v6, v8, v10, v12);

    v11 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v11;
    *(a1 + 32) = v13;
  }
}

uint64_t sub_1C988A688(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C988A750(char a1)
{
  if (a1)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1C988A78C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7374757074756FLL && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C988A898(char a1)
{
  if (!a1)
  {
    return 0x737475706E69;
  }

  if (a1 == 1)
  {
    return 0x7374757074756FLL;
  }

  return 0x6B63616264656566;
}

uint64_t sub_1C988A8EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C988A9F4(char a1)
{
  if (!a1)
  {
    return 0x7475706E69;
  }

  if (a1 == 1)
  {
    return 0x74757074756FLL;
  }

  return 0x6B63616264656566;
}

uint64_t sub_1C988AA7C()
{
  sub_1C9A93CC8();
  sub_1C979AF70(v2, *v0);
  return sub_1C9A93D18();
}

uint64_t sub_1C988AAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C988A688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C988AB28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97AC288();
  *a1 = result;
  return result;
}

uint64_t sub_1C988AB54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C988ABA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C988AC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C988A78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C988AC70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97B0878();
  *a1 = result;
  return result;
}

uint64_t sub_1C988AC9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C988ACF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C988AD44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void))
{
  sub_1C9A93CC8();
  a4(v8, *v4, *(a2 + 16));
  return sub_1C9A93D18();
}

uint64_t sub_1C988ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C988A8EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C988ADD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C988AE28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C988AE7C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = sub_1C97A2CEC(&qword_1EC3CA4A8);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98435A0();
  v11 = (v9 - v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v120 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v120 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v120 - v19;
  v21 = sub_1C97A2CEC(&qword_1EC3CA4B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1C98435A0();
  v132 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v128 = &v120 - v25;
  v147 = sub_1C97A2CEC(&qword_1EC3CA4B8);
  v26 = MEMORY[0x1EEE9AC00](v147);
  v131 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v120 - v29;
  v30 = *(a1 + 16);
  v126 = a2;
  v133 = v30;
  v120 = a1;
  if (!v30)
  {
    v125 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v31 = 0;
  v127 = a1 + 32;
  v146 = (v7 + 8);
  v137 = v28 + 8;
  v138 = v28 + 32;
  v141 = "onOptions24^@32";
  v121 = a2 + 40;
  v125 = MEMORY[0x1E69E7CC0];
  v123 = v18;
  v122 = v20;
  v130 = v5;
  do
  {
    v129 = v31;

    v145 = sub_1C97A2CEC(&qword_1EC3CA4C0);
    sub_1C9A917E8();
    v144 = sub_1C988DC3C();
    sub_1C9A917D8();
    sub_1C988EA54();
    sub_1C988EB98();
    v32 = v128;
    sub_1C9A917F8();
    if (v4)
    {

      v33 = sub_1C988EAE4();
      v18(v33);
      v143 = v18;
      (v18)(v20, v5);
      v34 = v147;
      sub_1C97ACC50(v32, 1, 1, v147);
      v4 = 0;
    }

    else
    {

      v35 = sub_1C988EAE4();
      v18(v35);
      v143 = v18;
      (v18)(v20, v5);
      v34 = v147;
    }

    if (sub_1C97ABF20(v32, 1, v34) == 1)
    {
      sub_1C988DCA0(v32);

LABEL_22:
      v52 = v129;
      goto LABEL_30;
    }

    v36 = sub_1C988EB2C();
    v136 = v37;
    v37(v36);
    swift_getKeyPath();
    sub_1C9A91808();

    v135 = MEMORY[0x1CCA901C0](v148, v149, v150, v151);
    v39 = v38;

    v40 = sub_1C988EB2C();
    v134 = v41;
    v41(v40);

    v142 = *(v126 + 16);
    if (!v142)
    {

      v52 = v129;
      v18 = v123;
      goto LABEL_30;
    }

    v139 = v39;
    v20 = 0;
    v42 = v121;
    v18 = v132;
    while (1)
    {

      sub_1C9A917E8();
      sub_1C9A917D8();
      sub_1C988EA54();
      sub_1C988EB98();
      sub_1C9A917F8();
      if (v4)
      {

        v43 = sub_1C988EB04();
        v11(v43);
        (v11)(v15, v5);
        v44 = v147;
        sub_1C97ACC50(v18, 1, 1, v147);
        v4 = 0;
      }

      else
      {

        v45 = sub_1C988EB04();
        v11(v45);
        (v11)(v15, v5);
        v44 = v147;
      }

      if (sub_1C97ABF20(v18, 1, v44) == 1)
      {
        sub_1C988DCA0(v18);

        goto LABEL_20;
      }

      v140 = 0;
      v5 = v15;
      v15 = v11;
      v46 = v131;
      v136(v131, v18, v44);
      swift_getKeyPath();
      v18 = v44;
      sub_1C9A91808();

      v11 = v151;
      v47 = MEMORY[0x1CCA901C0](v148, v149, v150, v151);
      v49 = v48;

      v134(v46, v18);

      v50 = v47 == v135 && v49 == v139;
      if (v50)
      {
        break;
      }

      v51 = sub_1C9A93B18();

      sub_1C988EB64();
      v18 = v132;
      v4 = v140;
      if (v51)
      {
        goto LABEL_25;
      }

LABEL_20:
      ++v20;
      v42 += 16;
      if (v142 == v20)
      {

        sub_1C988EAC4();
        goto LABEL_22;
      }
    }

    sub_1C988EB64();
    v4 = v140;
LABEL_25:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v53 = v125;
    }

    else
    {
      sub_1C97E5734();
    }

    v54 = v53[2];
    if (v54 >= v53[3] >> 1)
    {
      sub_1C97E5734();
    }

    v53[2] = v54 + 1;
    v125 = v53;
    v55 = &v53[2 * v54];
    v56 = v129;
    v55[4] = v20;
    v55[5] = v56;
    sub_1C988EAC4();
LABEL_30:
    v31 = v52 + 1;
  }

  while (v31 != v133);
LABEL_34:
  sub_1C9A3C1EC(0, v133);
  v57 = v125;
  v58 = v125[2];
  if (v58)
  {
    v148 = MEMORY[0x1E69E7CC0];
    sub_1C988EA00();
    sub_1C97B7C28();
    v59 = v148;
    v60 = v148[2];
    v61 = (v57 + 5);
    v62 = v58;
    do
    {
      v63 = *v61;
      v61 += 2;
      v57 = v63;
      v148 = v59;
      if (v60 >= *(v59 + 24) >> 1)
      {
        sub_1C988EA70();
        sub_1C97B7C28();
        v59 = v148;
      }

      *(v59 + 16) = v60 + 1;
      *(v59 + 8 * v60++ + 32) = v57;
      --v58;
    }

    while (v58);
    v58 = v62;
  }

  v64 = sub_1C988EB2C();
  v66 = sub_1C9A1AFD0(v64, v65);

  v67 = sub_1C9A083E0(v66);
  sub_1C988EB58();
  v147 = v57[2];
  v68 = sub_1C9A3C1EC(0, v147);
  v69 = MEMORY[0x1E69E7CC0];
  v143 = v58;
  if (v58)
  {
    v148 = MEMORY[0x1E69E7CC0];
    sub_1C988EA00();
    sub_1C97B7C28();
    v70 = v148;
    v71 = (v125 + 4);
    v72 = v148[2];
    v73 = v58;
    do
    {
      v74 = *v71;
      v71 += 2;
      v57 = v74;
      v148 = v70;
      if (v72 >= *(v70 + 24) >> 1)
      {
        sub_1C988EA70();
        sub_1C97B7C28();
        v70 = v148;
      }

      *(v70 + 16) = v72 + 1;
      *(v70 + 8 * v72++ + 32) = v57;
      --v73;
    }

    while (v73);
    sub_1C988EB58();
    v69 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v70 = MEMORY[0x1E69E7CC0];
  }

  v75 = sub_1C9A1AFD0(v70, v68);

  v76 = sub_1C9A083E0(v75);
  v148 = v67;

  sub_1C988D2BC(&v148);
  if (v4)
  {
    goto LABEL_78;
  }

  v77 = v148;
  v78 = v148[2];
  if (v78)
  {
    v145 = 0;
    v146 = v76;
    v148 = v69;
    sub_1C97B7B08(0, v78, 0);
    v79 = v148;
    v4 = (v120 + 32);
    v80 = 32;
    while (1)
    {
      v81 = *(v77 + v80);
      if (v81 >= v133)
      {
        break;
      }

      v82 = v77;
      v83 = &v4[2 * v81];
      v57 = *v83;
      v84 = v83[1];
      v148 = v79;
      v86 = *(v79 + 16);
      v85 = *(v79 + 24);
      v87 = v79;

      v79 = v87;
      if (v86 >= v85 >> 1)
      {
        v89 = sub_1C988EA70();
        sub_1C97B7B08(v89, v86 + 1, 1);
        v79 = v148;
      }

      *(v79 + 16) = v86 + 1;
      v88 = v79 + 16 * v86;
      *(v88 + 32) = v57;
      *(v88 + 40) = v84;
      v80 += 8;
      --v78;
      v77 = v82;
      if (!v78)
      {
        v142 = v79;

        sub_1C988EB58();
        v69 = MEMORY[0x1E69E7CC0];
        v4 = v145;
        v76 = v146;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:

    __break(1u);
  }

  else
  {

    v142 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v148 = v76;

    sub_1C988D2BC(&v148);
    if (v4)
    {
      goto LABEL_78;
    }

    v90 = v148;
    v91 = v148[2];
    if (v91)
    {
      v148 = v69;
      v92 = sub_1C988EA00();
      sub_1C97B7B08(v92, v93, v94);
      v4 = v148;
      v95 = v57 + 4;
      v96 = 32;
      while (1)
      {
        v97 = *(v90 + v96);
        if (v97 >= v147)
        {
          goto LABEL_75;
        }

        v98 = &v95[2 * v97];
        v57 = *v98;
        v99 = v98[1];
        v148 = v4;
        v101 = v4[2];
        v100 = v4[3];

        if (v101 >= v100 >> 1)
        {
          v103 = sub_1C988EA70();
          sub_1C97B7B08(v103, v101 + 1, 1);
          v4 = v148;
        }

        v4[2] = v101 + 1;
        v102 = &v4[2 * v101];
        v102[4] = v57;
        v102[5] = v99;
        v96 += 8;
        if (!--v91)
        {

          sub_1C988EB58();
          v69 = MEMORY[0x1E69E7CC0];
          goto LABEL_65;
        }
      }
    }

    v4 = MEMORY[0x1E69E7CC0];
LABEL_65:
    v104 = v143;
    if (v143)
    {
      v148 = v69;
      sub_1C97B7C08(0, v143, 0);
      v105 = v148;
      v145 = (v57 + 4);
      v144 = v120 + 32;
      v106 = (v125 + 5);
      v146 = v4;
      do
      {
        v107 = *(v106 - 1);
        if (v107 >= v147)
        {
          goto LABEL_76;
        }

        if (*v106 >= v133)
        {
          goto LABEL_77;
        }

        v108 = v104;
        v109 = (v145 + 16 * v107);
        v111 = *v109;
        v110 = v109[1];
        v112 = (v144 + 16 * *v106);
        v114 = *v112;
        v113 = v112[1];
        v148 = v105;
        v115 = *(v105 + 16);
        v116 = *(v105 + 24);

        if (v115 >= v116 >> 1)
        {
          v118 = sub_1C988EA70();
          sub_1C97B7C08(v118, v115 + 1, 1);
          v105 = v148;
        }

        v106 += 2;
        *(v105 + 16) = v115 + 1;
        v117 = (v105 + 32 * v115);
        v117[4] = v111;
        v117[5] = v110;
        v117[6] = v114;
        v117[7] = v113;
        v104 = v108 - 1;
        v50 = v108 == 1;
        v4 = v146;
      }

      while (!v50);
    }

    return v142;
  }

  return result;
}