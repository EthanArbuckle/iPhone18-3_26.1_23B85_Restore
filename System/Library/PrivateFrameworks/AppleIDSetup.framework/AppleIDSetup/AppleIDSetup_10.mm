uint64_t sub_2406668A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB20, &qword_24076FF88);
  result = sub_24075A834();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v16 = v7;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v7 >= v12)
          {
            break;
          }

          v17 = v8[v7];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v11 = (v17 - 1) & v17;
            goto LABEL_17;
          }
        }

        v28 = 1 << *(v3 + 32);
        if (v28 >= 64)
        {
          bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v28;
        }

        v2 = v29;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24075AE64();
      if (v18 <= 1)
      {
        if (!v18)
        {
          v20 = 0;
          goto LABEL_28;
        }

        if (v18 == 1)
        {
          v20 = 1;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v18)
        {
          case 2:
            v20 = 2;
            goto LABEL_28;
          case 3:
            v20 = 3;
            goto LABEL_28;
          case 4:
            v20 = 5;
LABEL_28:
            MEMORY[0x245CC6BA0](v20);
            goto LABEL_29;
        }
      }

      MEMORY[0x245CC6BA0](4);
      sub_2405F115C(v30, v18);
LABEL_29:
      result = sub_24075AED4();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_240666B70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BAB30, &qword_24076FF98);
  result = sub_24075A834();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24075A0B4();
      sub_24075AE64();
      sub_24075A114();
      v20 = sub_24075AED4();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_240666DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB28, &qword_24076FF90);
  result = sub_24075A834();
  v6 = result;
  if (*(v3 + 16))
  {
    v38 = v2;
    v39 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v19 = v7;
        while (1)
        {
          v7 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v7 >= v12)
          {
            break;
          }

          v20 = v8[v7];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v11 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }

        v37 = 1 << *(v3 + 32);
        if (v37 >= 64)
        {
          bzero(v8, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v37;
        }

        v2 = v38;
        *(v3 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v21 = *(v3 + 48) + 96 * (v18 | (v7 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 32);
      v41 = *(v21 + 16);
      v42 = v24;
      v25 = *(v21 + 64);
      v43 = *(v21 + 48);
      v44 = v25;
      v26 = *(v21 + 80);
      v27 = *(v21 + 88);
      v28 = *(v6 + 40);
      sub_24075AE64();
      sub_24075A114();
      if (v26 <= 1)
      {
        if (!v26)
        {
          v29 = 0;
          goto LABEL_28;
        }

        if (v26 == 1)
        {
          v29 = 1;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v26)
        {
          case 2:
            v29 = 2;
            goto LABEL_28;
          case 3:
            v29 = 3;
            goto LABEL_28;
          case 4:
            v29 = 5;
LABEL_28:
            MEMORY[0x245CC6BA0](v29);
            goto LABEL_29;
        }
      }

      MEMORY[0x245CC6BA0](4);
      sub_2405F115C(v40, v26);
LABEL_29:
      sub_24075AE94();
      result = sub_24075AED4();
      v30 = -1 << *(v6 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v13 + 8 * v32);
          if (v36 != -1)
          {
            v14 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 96 * v14;
      *v15 = v22;
      *(v15 + 8) = v23;
      v16 = v42;
      *(v15 + 16) = v41;
      *(v15 + 32) = v16;
      v17 = v44;
      *(v15 + 48) = v43;
      *(v15 + 64) = v17;
      *(v15 + 80) = v26;
      *(v15 + 88) = v27;
      ++*(v6 + 16);
      v3 = v39;
    }
  }

  *v2 = v6;
  return result;
}

unint64_t sub_240667120(unint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_2406668A8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2406679A0();
      goto LABEL_45;
    }

    sub_240667DD0(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_24075AE64();
  if (v6 <= 1)
  {
    if (!v6)
    {
      v11 = 0;
      goto LABEL_19;
    }

    if (v6 == 1)
    {
      v11 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        v11 = 2;
        goto LABEL_19;
      case 3:
        v11 = 3;
        goto LABEL_19;
      case 4:
        v11 = 5;
LABEL_19:
        MEMORY[0x245CC6BA0](v11);
        goto LABEL_20;
    }
  }

  MEMORY[0x245CC6BA0](4);
  sub_2405F115C(v21, v6);
LABEL_20:
  v3 = v21;
  result = sub_24075AED4();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v9 + 48);
      v3 = *(v14 + 8 * a2);
      if (v3 <= 1)
      {
        if (!v3)
        {
          if (!v6)
          {
            goto LABEL_49;
          }

          v3 = 0;
          v15 = v6;
          goto LABEL_40;
        }

        if (v3 == 1)
        {
          if (v6 == 1)
          {
            goto LABEL_49;
          }

          v15 = v6;
          v3 = 1;
          goto LABEL_40;
        }
      }

      else
      {
        switch(v3)
        {
          case 2:
            if (v6 == 2)
            {
              goto LABEL_49;
            }

            v15 = v6;
            v3 = 2;
            goto LABEL_40;
          case 3:
            if (v6 == 3)
            {
              goto LABEL_49;
            }

            v15 = v6;
            v3 = 3;
            goto LABEL_40;
          case 4:
            if (v6 == 4)
            {
              goto LABEL_49;
            }

            v15 = v6;
            v3 = 4;
            goto LABEL_40;
        }
      }

      if (v6 < 5)
      {
        sub_240669184(v6);
        v15 = v3;
LABEL_40:
        sub_240669184(v15);
        sub_240669194(v3);
        result = sub_240669194(v6);
        goto LABEL_41;
      }

      sub_240669184(*(v14 + 8 * a2));
      sub_240669184(v6);
      sub_240669184(v3);
      v16 = sub_240753B98(v3, v6);
      sub_240669194(v3);
      sub_240669194(v3);
      result = sub_240669194(v6);
      if (v16)
      {
        goto LABEL_50;
      }

LABEL_41:
      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v6;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_49:
    sub_240669194(v3);
    sub_240669194(v3);
LABEL_50:
    result = sub_24075AD84();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_2406673F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_240666B70(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_240667AF0();
      goto LABEL_16;
    }

    sub_240668070(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v11 = sub_24075AED4();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for AIDAServiceType(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_24075A0B4();
      v17 = v16;
      if (v15 == sub_24075A0B4() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_24075ACF4();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_24075AD84();
  __break(1u);
  return result;
}

unint64_t sub_2406675E0(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_240666DEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_240667C40();
      goto LABEL_50;
    }

    sub_2406682C4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24075AE64();
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 80);
  sub_24075A114();
  if (v12 <= 1)
  {
    if (!v12)
    {
      v13 = 0;
      goto LABEL_19;
    }

    if (v12 == 1)
    {
      v13 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    switch(v12)
    {
      case 2:
        v13 = 2;
        goto LABEL_19;
      case 3:
        v13 = 3;
        goto LABEL_19;
      case 4:
        v13 = 5;
LABEL_19:
        MEMORY[0x245CC6BA0](v13);
        goto LABEL_20;
    }
  }

  MEMORY[0x245CC6BA0](4);
  sub_2405F115C(v35, v12);
LABEL_20:
  v33 = *(v5 + 88);
  sub_24075AE94();
  result = sub_24075AED4();
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v17 = (*(v8 + 48) + 96 * a2);
      v18 = v17[1];
      v35[0] = *v17;
      v35[1] = v18;
      v20 = v17[3];
      v19 = v17[4];
      v21 = v17[2];
      *&v36[9] = *(v17 + 73);
      v35[3] = v20;
      *v36 = v19;
      v35[2] = v21;
      if (v35[0] != __PAIR128__(v11, v10))
      {
        result = sub_24075ACF4();
        if ((result & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v22 = *&v36[16];
      if (*&v36[16] <= 1)
      {
        if (!*&v36[16])
        {
          if (v12)
          {
            sub_240669184(v12);
            v16 = 0;
            goto LABEL_23;
          }

LABEL_43:
          sub_2405F1048(v35, v34);
          sub_240669194(v22);
          sub_240669194(v22);
          goto LABEL_44;
        }

        if (*&v36[16] == 1)
        {
          if (v12 != 1)
          {
            sub_240669184(v12);
            v16 = 1;
            goto LABEL_23;
          }

          goto LABEL_43;
        }
      }

      else
      {
        switch(*&v36[16])
        {
          case 2:
            if (v12 != 2)
            {
              sub_240669184(v12);
              v16 = 2;
LABEL_23:
              sub_240669194(v16);
              result = sub_240669194(v12);
              goto LABEL_24;
            }

            goto LABEL_43;
          case 3:
            if (v12 != 3)
            {
              sub_240669184(v12);
              v16 = 3;
              goto LABEL_23;
            }

            goto LABEL_43;
          case 4:
            if (v12 != 4)
            {
              sub_240669184(v12);
              v16 = 4;
              goto LABEL_23;
            }

            goto LABEL_43;
        }
      }

      if (v12 < 5)
      {
        sub_240669184(v12);
        sub_240669184(v22);
        v16 = v22;
        goto LABEL_23;
      }

      sub_2405F1048(v35, v34);
      sub_240669184(v12);
      sub_240669184(v22);
      v24 = sub_240753B98(v22, v12);
      sub_240669194(v22);
      sub_240669194(v12);
      if ((v24 & 1) == 0)
      {
        result = sub_2405F10A4(v35);
        goto LABEL_24;
      }

LABEL_44:
      v23 = v36[24];
      result = sub_2405F10A4(v35);
      if (v23 == v33)
      {
        goto LABEL_54;
      }

LABEL_24:
      a2 = (a2 + 1) & v15;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v25 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = (*(v25 + 48) + 96 * a2);
  v27 = *(v5 + 16);
  *v26 = *v5;
  v26[1] = v27;
  *(v26 + 73) = *(v5 + 73);
  v28 = *(v5 + 64);
  v26[3] = *(v5 + 48);
  v26[4] = v28;
  v26[2] = *(v5 + 32);
  v29 = *(v25 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_54:
    result = sub_24075AD84();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v31;
  }

  return result;
}

void *sub_2406679A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB20, &qword_24076FF88);
  v2 = *v0;
  v3 = sub_24075A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_240669184(v18);
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_240667AF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BAB30, &qword_24076FF98);
  v2 = *v0;
  v3 = sub_24075A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_240667C40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB28, &qword_24076FF90);
  v2 = *v0;
  v3 = sub_24075A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 96 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];
        *&v25[9] = *(v18 + 73);
        v24[3] = v20;
        *v25 = v21;
        v22 = v18[1];
        v24[0] = *v18;
        v24[1] = v22;
        v24[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x59uLL);
        result = sub_2405F1048(v24, &v23);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_240667DD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB20, &qword_24076FF88);
  result = sub_24075A834();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_41:
    *v2 = v6;
    return result;
  }

  v27 = v2;
  v7 = 0;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_24075AE64();
    if (v17 <= 1)
    {
      if (!v17)
      {
        v19 = 0;
        goto LABEL_28;
      }

      if (v17 == 1)
      {
        v19 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      switch(v17)
      {
        case 2:
          v19 = 2;
          goto LABEL_28;
        case 3:
          v19 = 3;
          goto LABEL_28;
        case 4:
          v19 = 5;
LABEL_28:
          MEMORY[0x245CC6BA0](v19);
          goto LABEL_29;
      }
    }

    MEMORY[0x245CC6BA0](4);

    sub_2405F115C(v28, v17);
LABEL_29:
    result = sub_24075AED4();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
        if (v26 != -1)
        {
          v13 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_43;
    }

    v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v6 + 48) + 8 * v13) = v17;
    ++*(v6 + 16);
  }

  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v11)
    {

      v2 = v27;
      goto LABEL_41;
    }

    v16 = *(v3 + 56 + 8 * v7);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_240668070(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BAB30, &qword_24076FF98);
  result = sub_24075A834();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24075A0B4();
      sub_24075AE64();
      v20 = v18;
      sub_24075A114();
      v21 = sub_24075AED4();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2406682C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB28, &qword_24076FF90);
  result = sub_24075A834();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_41:
    *v2 = v6;
    return result;
  }

  v37 = v2;
  v7 = 0;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v19 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_17:
    v22 = (*(v3 + 48) + 96 * (v19 | (v7 << 6)));
    v24 = v22[3];
    v23 = v22[4];
    v25 = v22[2];
    *&v45[9] = *(v22 + 73);
    v44 = v24;
    *v45 = v23;
    v43 = v25;
    v26 = v22[1];
    v41 = *v22;
    v42 = v26;
    v27 = *(v6 + 40);
    sub_24075AE64();
    v28 = *&v45[16];
    sub_2405F1048(&v41, v39);
    sub_24075A114();
    if (v28 <= 1)
    {
      if (!v28)
      {
        v29 = 0;
        goto LABEL_28;
      }

      if (v28 == 1)
      {
        v29 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      switch(v28)
      {
        case 2:
          v29 = 2;
          goto LABEL_28;
        case 3:
          v29 = 3;
          goto LABEL_28;
        case 4:
          v29 = 5;
LABEL_28:
          MEMORY[0x245CC6BA0](v29);
          goto LABEL_30;
      }
    }

    MEMORY[0x245CC6BA0](4);
    sub_2405F115C(v40, v28);
LABEL_30:
    sub_24075AE94();
    result = sub_24075AED4();
    v30 = -1 << *(v6 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v30) >> 6;
      while (++v32 != v34 || (v33 & 1) == 0)
      {
        v35 = v32 == v34;
        if (v32 == v34)
        {
          v32 = 0;
        }

        v33 |= v35;
        v36 = *(v12 + 8 * v32);
        if (v36 != -1)
        {
          v13 = __clz(__rbit64(~v36)) + (v32 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_43;
    }

    v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = (*(v6 + 48) + 96 * v13);
    v15 = v42;
    *v14 = v41;
    v16 = v43;
    v17 = v44;
    v18 = *v45;
    *(v14 + 73) = *&v45[9];
    v14[3] = v17;
    v14[4] = v18;
    v14[1] = v15;
    v14[2] = v16;
    ++*(v6 + 16);
    v10 = v38;
  }

  v20 = v7;
  while (1)
  {
    v7 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v7 >= v11)
    {

      v2 = v37;
      goto LABEL_41;
    }

    v21 = *(v3 + 56 + 8 * v7);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v38 = (v21 - 1) & v21;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_2406685FC(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_240668714();

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
        return;
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
}

uint64_t sub_240668714()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 40);
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v4 = sub_24075AED4();

  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    v9 = sub_24075A0B4();
    v11 = v10;
    if (v9 == sub_24075A0B4() && v11 == v12)
    {
      break;
    }

    v14 = sub_24075ACF4();

    if (v14)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_240667AF0();
    v18 = v20;
  }

  v15 = *(*(v18 + 48) + 8 * v6);
  sub_2406688A4(v6);
  *v1 = v20;
  return v15;
}

unint64_t sub_2406688A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_24075A7B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_24075A0B4();
        sub_24075AE64();
        v13 = v12;
        sub_24075A114();
        v14 = sub_24075AED4();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

uint64_t sub_240668A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BAB30, &qword_24076FF98);
    v3 = sub_24075A844();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_24075A0B4();
      sub_24075AE64();
      v29 = v7;
      sub_24075A114();
      v9 = sub_24075AED4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_24075A0B4();
        v20 = v19;
        if (v18 == sub_24075A0B4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_24075ACF4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_240668C78(uint64_t a1)
{
  type metadata accessor for AIDAServiceType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240668CD4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_240668CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAAE8, &qword_24076FC48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240668D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for SetupContext()
{
  result = qword_27E4BAB00;
  if (!qword_27E4BAB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_240668E74()
{
  result = qword_27E4BAAF8;
  if (!qword_27E4BAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAF8);
  }

  return result;
}

void sub_240668EFC()
{
  type metadata accessor for SetupModel();
  if (v0 <= 0x3F)
  {
    sub_240668F80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240668F80()
{
  if (!qword_27E4BAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BAAF0, &unk_24076FC50);
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4BAB10);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11SignInModelV14DeviceUserKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup18SetupModelExchange_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_240669020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
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

uint64_t sub_240669068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240669130()
{
  result = qword_27E4BAB18;
  if (!qword_27E4BAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAB18);
  }

  return result;
}

unint64_t sub_240669184(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

unint64_t sub_240669194(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_2406691A4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_2406691C8, 0, 0);
}

uint64_t sub_2406691C8()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2406692F0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB40, &unk_240770028);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240669558;
  v0[13] = &block_descriptor_9;
  v0[14] = v3;
  [v1 authenticateWithContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2406692F0()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t dispatch thunk of AKAppleIDAuthenticationControllerProtocol.authenticate(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24063D29C;

  return v11(a1, a2, a3);
}

uint64_t sub_240669558(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
      v9 = sub_240759F74();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_24066968C(uint64_t a1)
{
  v2 = [v1 accountsUsingService_];
  sub_24066B350();
  sub_24066B39C();
  v3 = sub_24075A534();

  return v3;
}

uint64_t sub_24066971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405CE450;

  return sub_24066B09C(a1, a2, a3, a4);
}

void *AISCheckInHelper.__allocating_init(with:authenticationController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *AISCheckInHelper.init(with:authenticationController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_240669870()
{
  v1 = v0[2];
  sub_240669A24();
  v3 = v2;
  v0[3] = v2;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_240669914;
  v5 = v0[2];

  return sub_240669C74(v3);
}

uint64_t sub_240669914()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_240669A24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v2 + 8))(1);
  v4 = v3;
  v21 = MEMORY[0x277D84F90];
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_24075A7C4();
    sub_24066B350();
    sub_24066B39C();
    sub_24075A564();
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!sub_24075A7D4() || (sub_24066B350(), swift_dynamicCast(), v17 = v20, v15 = v7, v16 = v8, !v20))
    {
LABEL_21:
      sub_24066B6F8();
      return;
    }

LABEL_19:
    if ((*(v2 + 16))(v17, ObjectType, v2))
    {
      sub_24075A914();
      v18 = *(v21 + 16);
      sub_24075A944();
      sub_24075A954();
      sub_24075A924();
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_21;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_240669C74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_240669C94, 0, 0);
}

uint64_t sub_240669C94()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v22 = v0[2];
    }

    v2 = sub_24075A9D4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 1)
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v9 = sub_240759AE4();
    __swift_project_value_buffer(v9, qword_280FADA00);
    v10 = sub_240759AC4();
    v11 = sub_24075A604();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_25;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No accounts to check in, we're done";
    goto LABEL_24;
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = sub_240759AE4();
  __swift_project_value_buffer(v4, qword_280FADA00);

  v5 = sub_240759AC4();
  v6 = sub_24075A604();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v1 >> 62)
    {
      v15 = v0[2];
      if (v1 < 0)
      {
        v16 = v0[2];
      }

      v8 = sub_24075A9D4();
    }

    else
    {
      v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v0[2];
    *(v7 + 4) = v8;

    _os_log_impl(&dword_240579000, v5, v6, "Checking in %ld account(s)", v7, 0xCu);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  else
  {
    v14 = v0[2];
  }

  if ([*(v0[3] + 32) respondsToSelector_])
  {
    v18 = swift_task_alloc();
    v0[4] = v18;
    *(v18 + 16) = *(v0 + 1);
    v19 = *(MEMORY[0x277D858E8] + 4);
    v20 = swift_task_alloc();
    v0[5] = v20;
    *v20 = v0;
    v20[1] = sub_24066A008;

    return MEMORY[0x282200600]();
  }

  v10 = sub_240759AC4();
  v11 = sub_24075A5E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Method unavailable. Cannot continue to check in accounts.";
LABEL_24:
    _os_log_impl(&dword_240579000, v10, v11, v13, v12, 2u);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

LABEL_25:

  v21 = v0[1];

  return v21();
}

uint64_t sub_24066A008()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24057D000, 0, 0);
}

uint64_t sub_24066A120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24066A1CC, 0, 0);
}

uint64_t sub_24066A1CC()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24075A9D4())
  {
    v3 = 0;
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    v30 = v1 & 0xC000000000000001;
    v27 = *(v0 + 80) + 32;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v6 = MEMORY[0x245CC65B0](v3, *(v0 + 80));
      }

      else
      {
        if (v3 >= *(v29 + 16))
        {
          goto LABEL_19;
        }

        v6 = *(v27 + 8 * v3);
      }

      v1 = v6;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v31 = v3 + 1;
      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = *(v0 + 88);
      v10 = sub_24075A3D4();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v7, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v1;
      v12[5] = v9;
      sub_24066B568(v7, v8);
      LODWORD(v7) = (*(v11 + 48))(v8, 1, v10);
      v14 = v1;

      v15 = *(v0 + 96);
      if (v7 == 1)
      {
        sub_24066B5D8(*(v0 + 96));
        if (!*v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_24075A3C4();
        (*(v11 + 8))(v15, v10);
        if (!*v13)
        {
LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }
      }

      v16 = v12[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_24075A344();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_15:
      v20 = **(v0 + 72);
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_2407701D8;
      *(v21 + 24) = v12;

      if (v19 | v17)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v20;
      v1 = swift_task_create();

      sub_24066B5D8(v5);
      ++v3;
      if (v31 == v28)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  v22 = *(MEMORY[0x277D85698] + 4);
  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB50, &unk_2407701F0);
  *v23 = v0;
  v23[1] = sub_24066A56C;
  v25 = *(v0 + 72);

  return MEMORY[0x2822002C8](0, 0, v24);
}

uint64_t sub_24066A56C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24066A698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_24066A6B8, 0, 0);
}

uint64_t sub_24066A6B8()
{
  v31 = v0;
  v1 = [*(v0 + 48) aa_altDSID];
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = v1;
    v4 = sub_24075A0B4();
    v6 = v5;

    *(v0 + 64) = v6;
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    v29 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_24066A9D4;

    return v29(v4, v6, 0xD000000000000013, 0x8000000240788170, ObjectType, v8);
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 48);
    v15 = sub_240759AE4();
    __swift_project_value_buffer(v15, qword_280FADA00);
    v16 = v14;
    v17 = sub_240759AC4();
    v18 = sub_24075A5E4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 48);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      v22 = [v19 username];
      if (v22)
      {
        v23 = v22;
        v24 = sub_24075A0B4();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = sub_2405BBA7C(v24, v26, &v30);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_240579000, v17, v18, "Skipping checking for account %s, account has no altDSID", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245CC76B0](v21, -1, -1);
      MEMORY[0x245CC76B0](v20, -1, -1);
    }

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_24066A9D4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24066AB10, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24066AB10()
{
  v29 = v0;
  v1 = v0[8];

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = v0[6];
  v4 = sub_240759AE4();
  __swift_project_value_buffer(v4, qword_280FADA00);
  v5 = v3;
  v6 = v2;
  v7 = sub_240759AC4();
  v8 = sub_24075A5E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315394;
    v12 = [v9 username];
    if (v12)
    {
      v13 = v12;
      v14 = sub_24075A0B4();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v18 = v0[10];
    v19 = sub_2405BBA7C(v14, v16, &v28);

    *(v10 + 4) = v19;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[2];
    v20 = v0[3];
    v22 = v0[4];
    v23 = sub_24075AE04();
    v25 = sub_2405BBA7C(v23, v24, &v28);

    *(v10 + 14) = v25;
    _os_log_impl(&dword_240579000, v7, v8, "Account %s checked in with error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {
    v17 = v0[10];
  }

  v26 = v0[1];

  return v26();
}

uint64_t AISCheckInHelper.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AISCheckInHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of AISAKAppleIDAuthenticationControllerProtocol.performCheckInForAccount(withAltDSID:event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2405CE450;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AISCheckInHelper.checkinMAIDAccountsOnDevice()()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return v6();
}

uint64_t sub_24066B09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = sub_24075A084();
    v5[18] = v7;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v5[18] = 0;
  if (a4)
  {
LABEL_3:
    v6 = sub_24075A084();
  }

LABEL_4:
  v5[19] = v6;
  v5[2] = v5;
  v5[3] = sub_24066B1F8;
  v8 = swift_continuation_init();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB8, &qword_24076DC60);
  v5[10] = MEMORY[0x277D85DD0];
  v5[11] = 1107296256;
  v5[12] = sub_240647D90;
  v5[13] = &block_descriptor_10;
  v5[14] = v8;
  [v4 performCheckInForAccountWithAltDSID:v7 event:v6 completion:v5 + 10];

  return MEMORY[0x282200938](v5 + 2);
}

uint64_t sub_24066B1F8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
    swift_willThrow();
  }

  v6 = *(v2 + 8);

  return v6();
}

unint64_t sub_24066B350()
{
  result = qword_27E4B63F8;
  if (!qword_27E4B63F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B63F8);
  }

  return result;
}

unint64_t sub_24066B39C()
{
  result = qword_27E4BAB48;
  if (!qword_27E4BAB48)
  {
    sub_24066B350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAB48);
  }

  return result;
}

uint64_t sub_24066B3F4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405CE450;

  return sub_24066A120(a1, a2, v7, v6);
}

uint64_t sub_24066B4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_24066A698(a1, v4, v5, v7, v6);
}

uint64_t sub_24066B568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24066B5D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24066B640(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_24065B630(a1, v5);
}

uint64_t sub_24066B700()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BAB58);
  v1 = __swift_project_value_buffer(v0, qword_27E4BAB58);
  if (qword_280FADA20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280FADA28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24066B7E4()
{
  sub_24075AE64();
  sub_24062785C(v2, *v0);
  return sub_24075AED4();
}

uint64_t RapportTransport.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RapportTransport.init(client:identifier:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for RapportTransport();
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  v11 = *(v10 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v13 = *(*(v12 - 8) + 56);
  v13(a5 + v11, 1, 1, v12);
  result = (v13)(a5 + *(v10 + 60), 1, 1, v12);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t RapportTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[5];
  sub_24058CA60(v4[4]);
  v4[4] = a1;
  v4[5] = a2;
  v10 = v4[6];
  v11 = v4[7];

  sub_24058CA60(v10);
  v4[6] = 0;
  v4[7] = 0;
  v12 = *(*(a3 - 8) + 32);

  return v12(a4, v4, a3);
}

{
  v9 = v4[5];
  sub_24058CA60(v4[4]);
  v4[4] = 0;
  v4[5] = 0;
  v10 = v4[7];
  sub_24058CA60(v4[6]);
  v4[6] = a1;
  v4[7] = a2;
  (*(*(a3 - 8) + 32))(a4, v4, a3);
}

uint64_t RapportTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 72);
  sub_24058CA60(*(v4 + 64));
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  (*(*(a3 - 8) + 32))(a4, v4, a3);
}

uint64_t RapportTransport.incomingSigningIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 56);
  sub_2405B8A50(v3 + v7, &qword_27E4B71C8, &unk_240762450);
  sub_24066BBD8(a1, v3 + v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, v3, a2);
}

uint64_t sub_24066BBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RapportTransport.outgoingSigningIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 60);
  sub_2405B8A50(v3 + v7, &qword_27E4B71C8, &unk_240762450);
  sub_24066BBD8(a1, v3 + v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, v3, a2);
}

uint64_t RapportTransport.build()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = &v23;
  v4 = v2[6];
  v3 = v2[7];
  if (v4)
  {
    v5 = v2[7];
  }

  else
  {
    v5 = 0;
  }

  v30 = v2[6];
  v31 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v36 = a1;
  v26 = v6;
  v27 = v7;
  sub_24057B5BC(v4);
  v28 = v6;
  type metadata accessor for RapportTransport.MessageInfo();
  v29 = sub_24075A714();
  swift_getFunctionTypeMetadata();
  sub_24075A714();
  v8 = type metadata accessor for RapportTransport.TypedReceiver();
  sub_24062239C(sub_24066C07C, v25, MEMORY[0x277D84A98], v8, v9, &v32);
  v10 = sub_24058CA60(v4);
  v11 = v33;
  if (v33 != 255)
  {
    v34 = v32;
LABEL_7:
    v15 = v34;
    sub_24066C120(v34, *(&v34 + 1), v11 & 1, v36, v23);
    return sub_2406718D4(v15, *(&v15 + 1), v11);
  }

  v24 = &v23;
  v13 = v2[5];
  v30 = v2[4];
  v12 = v30;
  v31 = v13;
  MEMORY[0x28223BE20](v10);
  v22[2] = v6;
  v22[3] = v7;
  sub_24057B5BC(v12);
  v28 = v6;
  swift_getFunctionTypeMetadata();
  sub_24075A714();
  sub_24062239C(sub_24066C0C8, v22, MEMORY[0x277D84A98], v8, v14, &v34);
  sub_24058CA60(v12);
  v11 = v35;
  if (v35 != 255)
  {
    goto LABEL_7;
  }

  (*(*(v36 - 8) + 8))(v2);
  if (qword_27E4B5F48 != -1)
  {
    swift_once();
  }

  v17 = sub_240759AE4();
  __swift_project_value_buffer(v17, qword_27E4BAB58);
  v18 = sub_240759AC4();
  v19 = sub_24075A5E4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_240579000, v18, v19, "Failed to build rapport transport, missing receiver", v20, 2u);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  type metadata accessor for RapportTransport.Failure();
  swift_getWitnessTable();
  swift_allocError();
  *v21 = 0;
  return swift_willThrow();
}

uint64_t sub_24066C0E4@<X0>(uint64_t *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
}

uint64_t sub_24066C120@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v112) = a3;
  v102 = a2;
  v101 = a1;
  v95 = a5;
  v111 = *(a4 - 8);
  v113 = *(v111 + 64);
  MEMORY[0x28223BE20](a1);
  v104 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v117 = *(v9 + 16);
  v11 = type metadata accessor for MessageUnpacker();
  v109 = *(v11 - 8);
  v110 = v11;
  v99 = *(v109 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v108 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v88 - v18;
  v20 = type metadata accessor for MessagePacker();
  v106 = *(v20 - 8);
  v107 = v20;
  v98 = *(v106 + 64);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v23;
  MEMORY[0x28223BE20](v21);
  v25 = v88 - v24;
  v116 = *v6;
  v26 = a4;
  v103 = sub_24066CA9C(v116);
  v27 = sub_2407594B4();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v92 = sub_2407594A4();
  v30 = sub_240759484();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v91 = sub_240759474();
  v33 = *(v27 + 48);
  v34 = *(v27 + 52);
  swift_allocObject();
  v35 = sub_2407594A4();
  v96 = v26;
  sub_24066BBD8(v6 + *(v26 + 60), v19);
  v36 = v117;
  MessagePacker.init(encoder:signingIdentity:topicIdentifier:)(v35, v19, 0, 0, v117, v10, v25);
  v37 = *(v30 + 48);
  v38 = *(v30 + 52);
  swift_allocObject();
  v39 = sub_240759474();
  sub_24066BBD8(v6 + *(v26 + 56), v19);
  v40 = v36;
  v41 = v10;
  v114 = v10;
  MessageUnpacker.init(decoder:signingIdentity:topicIdentifier:)(v39, v19, 0, 0, v40, v10, v15);
  v100 = *(v6 + 24);
  [v116 setDispatchQueue_];
  v115 = v6;
  v42 = *(v6 + 8);
  v43 = *(v6 + 16);
  v97 = sub_24075A084();
  v45 = v108;
  v44 = v109;
  v46 = *(v109 + 16);
  v94 = v15;
  v47 = v110;
  v90 = v109 + 16;
  v89 = v46;
  v46(v108, v15, v110);
  v48 = v106;
  v49 = *(v106 + 16);
  v93 = v25;
  v50 = v107;
  v88[1] = v106 + 16;
  v88[0] = v49;
  v49(v23, v25, v107);
  v51 = v44;
  v52 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v53 = (v99 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (*(v48 + 80) + v53 + 17) & ~*(v48 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v117;
  *(v55 + 24) = v41;
  (*(v51 + 32))(v55 + v52, v45, v47);
  v56 = v55 + v53;
  v57 = v102;
  *v56 = v101;
  *(v56 + 8) = v57;
  *(v56 + 16) = v112 & 1;
  v58 = v48;
  v59 = v96;
  (*(v58 + 32))(v55 + v54, v105, v50);
  v122 = sub_240671F5C;
  v123 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v119 = 1107296256;
  v112 = &v120;
  v120 = sub_24066F148;
  v121 = &block_descriptor_46;
  v60 = _Block_copy(&aBlock);
  sub_240672090();

  v61 = v97;
  [v116 registerRequestID:v97 options:0 handler:v60];
  _Block_release(v60);

  v62 = v111;
  v63 = *(v111 + 16);
  v64 = v104;
  v63(v104, v115, v59);
  v65 = *(v62 + 80);
  v66 = swift_allocObject();
  v67 = v117;
  v68 = v114;
  *(v66 + 16) = v117;
  *(v66 + 24) = v68;
  v102 = *(v62 + 32);
  v102(v66 + ((v65 + 32) & ~v65), v64, v59);
  v122 = sub_240672098;
  v123 = v66;
  aBlock = MEMORY[0x277D85DD0];
  v119 = 1107296256;
  v120 = sub_240644810;
  v121 = &block_descriptor_52_0;
  v69 = _Block_copy(&aBlock);

  [v116 setInvalidationHandler_];
  _Block_release(v69);
  v116 = v63;
  v63(v64, v115, v59);
  v70 = (v65 + 40) & ~v65;
  v71 = swift_allocObject();
  v72 = v114;
  v71[2] = v67;
  v71[3] = v72;
  v73 = v103;
  v71[4] = v103;
  v74 = v59;
  v102(v71 + v70, v64, v59);
  v75 = swift_allocObject();
  *(v75 + 16) = sub_240672108;
  *(v75 + 24) = v71;
  v122 = sub_240635D44;
  v123 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v119 = 1107296256;
  v120 = sub_2406C0E30;
  v121 = &block_descriptor_61_0;
  v76 = _Block_copy(&aBlock);
  v77 = v73;

  dispatch_sync(v100, v76);
  _Block_release(v76);
  LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

  if (v73)
  {
    __break(1u);
  }

  else
  {
    v79 = v64;
    v80 = v115;
    v113 = v71;
    v81 = v74;
    v116(v64, v115, v74);
    v82 = v105;
    v83 = v93;
    v84 = v107;
    (v88[0])(v105, v93, v107);
    v85 = v108;
    v86 = v94;
    v87 = v110;
    v89(v108, v94, v110);
    sub_24066F33C(v79, v77, v82, v85, v95);

    (*(v109 + 8))(v86, v87);
    (*(v106 + 8))(v83, v84);
    (*(v111 + 8))(v80, v81);
  }

  return result;
}

id sub_24066CA9C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = [objc_allocWithZone(MEMORY[0x277D02888]) init];
  [v4 setDispatchQueue_];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v21 = sub_2406723C0;
  v22 = v5;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_24066F988;
  v20 = &block_descriptor_90;
  v6 = _Block_copy(&v17);
  v7 = a1;
  v8 = v3;
  sub_24057B5BC(sub_2406723C0);

  [v4 setRegisterRequestHandler_];
  _Block_release(v6);

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v21 = sub_2406723C8;
  v22 = v9;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_24066FBB8;
  v20 = &block_descriptor_87;
  v10 = _Block_copy(&v17);
  v11 = v7;
  sub_24057B5BC(sub_2406723C8);

  [v4 setDeregisterRequestHandler_];
  _Block_release(v10);

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v8;
  v21 = sub_240672420;
  v22 = v12;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_240670178;
  v20 = &block_descriptor_84;
  v13 = _Block_copy(&v17);
  v14 = v11;
  v15 = v8;
  sub_24057B5BC(sub_240672420);

  [v4 setSendRequestHandler_];
  _Block_release(v13);

  return v4;
}

uint64_t sub_24066CD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a8;
  v48 = a6;
  v49 = a7;
  v42 = a5;
  v51 = a3;
  v52 = a4;
  v46 = a1;
  v47 = a2;
  v44 = a11;
  v45 = a10;
  v11 = type metadata accessor for MessagePacker();
  v40 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v41 = &v39 - v14;
  v16 = type metadata accessor for MessageUnpacker();
  v39 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v39 - v23;
  v43 = &v39 - v23;
  v25 = sub_24075A3D4();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  (*(v17 + 16))(v20, v42, v16);
  (*(v12 + 16))(v15, a9, v11);
  v26 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v27 = (v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v12 + 80) + v28 + 17) & ~*(v12 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v44;
  *(v31 + 4) = v45;
  *(v31 + 5) = v32;
  *(v31 + 6) = v46;
  (*(v17 + 32))(&v31[v26], v20, v39);
  v33 = v48;
  *&v31[v27] = v47;
  v34 = &v31[v28];
  v35 = v49;
  *v34 = v33;
  *(v34 + 1) = v35;
  v34[16] = v50 & 1;
  (*(v12 + 32))(&v31[v29], v41, v40);
  v36 = &v31[v30];
  v37 = v52;
  *v36 = v51;
  *(v36 + 1) = v37;

  sub_240672090();

  sub_240602F08(0, 0, v43, &unk_2407705F0, v31);
}

uint64_t sub_24066D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 944) = v17;
  *(v8 + 936) = v16;
  *(v8 + 928) = v15;
  *(v8 + 912) = v14;
  *(v8 + 145) = v13;
  *(v8 + 904) = a8;
  *(v8 + 896) = a7;
  *(v8 + 888) = a6;
  *(v8 + 880) = a5;
  *(v8 + 872) = a4;
  v9 = *(v16 - 8);
  *(v8 + 952) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 960) = swift_task_alloc();
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24066D1DC, 0, 0);
}

uint64_t sub_24066D1DC()
{
  v72 = v0;
  if (qword_27E4B5F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 872);
  v2 = sub_240759AE4();
  *(v0 + 1000) = __swift_project_value_buffer(v2, qword_27E4BAB58);

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 872);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v71[0] = v7;
    *v6 = 136315138;
    v8 = sub_240759F84();
    v10 = sub_2405BBA7C(v8, v9, v71);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_240579000, v3, v4, "Received incoming request to unpack: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  v11 = *(v0 + 992);
  v12 = *(v0 + 944);
  v13 = *(v0 + 936);
  v14 = *(v0 + 880);
  v15 = *(v0 + 872);
  v16 = type metadata accessor for MessageUnpacker();
  MessageUnpacker.unpack(_:)(v15, v16, v11);
  v17 = *(v0 + 944);
  v18 = *(v0 + 936);
  v69 = *(v0 + 904);
  v19 = *(v0 + 896);
  *(v0 + 864) = *(v0 + 888);
  v20 = *(v0 + 145);
  v21 = swift_task_alloc();
  *(v21 + 16) = v18;
  *(v21 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
  v22 = type metadata accessor for RapportTransport.MessageInfo();
  sub_24062239C(sub_240672388, v21, MEMORY[0x277D84A98], v22, v23, v0 + 152);

  v24 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v24;
  *(v0 + 144) = *(v0 + 280);
  v25 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v25;
  v26 = *(v0 + 232);
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v26;
  v27 = *(v0 + 168);
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v27;
  sub_240672090();
  v28 = sub_24075A714();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v30(v0 + 288, v0 + 16, v28);
  v31 = sub_240759AC4();
  v32 = sub_24075A5D4();
  sub_2406718EC();
  (*(v29 + 8))(v0 + 16, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 944);
    v67 = v30;
    v34 = *(v0 + 936);
    v35 = *(v0 + 904);
    v36 = *(v0 + 896);
    v70 = v32;
    v37 = *(v0 + 145);
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v71[0] = v68;
    *v38 = 136315394;
    *(v0 + 832) = v36;
    *(v0 + 840) = v35;
    *(v0 + 848) = v37 & 1;
    sub_240672090();
    type metadata accessor for RapportTransport.TypedReceiver();
    v39 = sub_24075A0E4();
    v41 = sub_2405BBA7C(v39, v40, v71);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = *(v0 + 128);
    *(v0 + 656) = *(v0 + 112);
    *(v0 + 672) = v42;
    *(v0 + 688) = *(v0 + 144);
    v43 = *(v0 + 64);
    *(v0 + 592) = *(v0 + 48);
    *(v0 + 608) = v43;
    v44 = *(v0 + 96);
    *(v0 + 624) = *(v0 + 80);
    *(v0 + 640) = v44;
    v45 = *(v0 + 32);
    *(v0 + 560) = *(v0 + 16);
    *(v0 + 576) = v45;
    v67(v0 + 696, v0 + 16, v28);
    v46 = sub_24075A0E4();
    v48 = sub_2405BBA7C(v46, v47, v71);

    *(v38 + 14) = v48;
    _os_log_impl(&dword_240579000, v31, v70, "Handling incoming request with receiver (%s) and inMessageInfo: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v68, -1, -1);
    MEMORY[0x245CC76B0](v38, -1, -1);
  }

  v49 = *(v0 + 992);
  v50 = *(v0 + 976);
  v51 = *(v0 + 952);
  v52 = *(v0 + 936);
  v53 = *(v0 + 145);
  v54 = *(v51 + 16);
  *(v0 + 1008) = v54;
  *(v0 + 1016) = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54(v50, v49, v52);
  v55 = *(v0 + 128);
  *(v0 + 520) = *(v0 + 112);
  *(v0 + 536) = v55;
  *(v0 + 552) = *(v0 + 144);
  v56 = *(v0 + 64);
  *(v0 + 456) = *(v0 + 48);
  *(v0 + 472) = v56;
  v57 = *(v0 + 96);
  *(v0 + 488) = *(v0 + 80);
  *(v0 + 504) = v57;
  v58 = *(v0 + 32);
  *(v0 + 424) = *(v0 + 16);
  *(v0 + 440) = v58;
  v59 = swift_task_alloc();
  *(v0 + 1024) = v59;
  *v59 = v0;
  v59[1] = sub_24066DB0C;
  v60 = *(v0 + 984);
  v61 = *(v0 + 976);
  v62 = *(v0 + 944);
  v63 = *(v0 + 936);
  v64 = *(v0 + 904);
  v65 = *(v0 + 896);

  return sub_24066EC24(v60, v61, v0 + 424, v65, v64, v53 & 1, v63, v62);
}

uint64_t sub_24066DB0C()
{
  v2 = *(*v1 + 1024);
  v5 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = sub_24066E1D4;
  }

  else
  {
    v3 = sub_24066DC20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24066DC20()
{
  v68 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1000);
  (*(v0 + 1008))(*(v0 + 968), *(v0 + 984), *(v0 + 936));
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  if (os_log_type_enabled(v3, v4))
  {
    v65 = *(v0 + 1016);
    v5 = *(v0 + 1008);
    v6 = *(v0 + 968);
    v7 = *(v0 + 960);
    v8 = *(v0 + 952);
    v9 = *(v0 + 936);
    v10 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67[0] = v66;
    *v10 = 136315138;
    v5(v7, v6, v9);
    v11 = sub_24075A0E4();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v6, v9);
    v15 = sub_2405BBA7C(v11, v13, v67);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v3, v4, "Processed and ready to pack outMessage: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x245CC76B0](v66, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {
    v16 = *(v0 + 968);
    v17 = *(v0 + 952);
    v18 = *(v0 + 936);

    v14 = *(v17 + 8);
    v14(v16, v18);
  }

  v19 = *(v0 + 1032);
  v20 = *(v0 + 984);
  v21 = *(v0 + 944);
  v22 = *(v0 + 936);
  v23 = *(v0 + 912);
  v24 = type metadata accessor for MessagePacker();
  v25 = MessagePacker.pack(_:)(v20, v24);
  v26 = *(v0 + 992);
  v27 = *(v0 + 936);
  v28 = *(v0 + 952) + 8;
  v14(*(v0 + 984), v27);
  v14(v26, v27);
  if (v19)
  {
    v29 = *(v0 + 1000);
    v30 = *(v0 + 872);

    v31 = v19;
    v32 = sub_240759AC4();
    v33 = sub_24075A5E4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 872);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67[0] = v37;
      *v35 = 136315394;
      v38 = sub_240759F84();
      v40 = sub_2405BBA7C(v38, v39, v67);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      v41 = v19;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v42;
      *v36 = v42;
      _os_log_impl(&dword_240579000, v32, v33, "Failed to handle incoming request: %s with error: %@", v35, 0x16u);
      sub_2405B8A50(v36, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x245CC76B0](v37, -1, -1);
      MEMORY[0x245CC76B0](v35, -1, -1);
    }

    v43 = v19;
    v25 = 0;
  }

  else
  {
  }

  v44 = *(v0 + 1000);

  v45 = v19;
  v46 = sub_240759AC4();
  v47 = sub_24075A5C4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v67[0] = v50;
    *v48 = 136315394;
    *(v0 + 856) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v51 = sub_24075A0E4();
    v53 = sub_2405BBA7C(v51, v52, v67);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2112;
    if (v19)
    {
      v54 = v19;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      v56 = v55;
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    *(v48 + 14) = v55;
    *v49 = v56;
    _os_log_impl(&dword_240579000, v46, v47, "Sending outResponse: %s, outError: %@", v48, 0x16u);
    sub_2405B8A50(v49, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x245CC76B0](v50, -1, -1);
    MEMORY[0x245CC76B0](v48, -1, -1);
  }

  else
  {
  }

  v57 = *(v0 + 992);
  v58 = *(v0 + 984);
  v59 = *(v0 + 976);
  v60 = *(v0 + 968);
  v61 = *(v0 + 960);
  v62 = *(v0 + 928);
  (*(v0 + 920))(v25, 0, v19);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_24066E1D4()
{
  v39 = v0;
  (*(*(v0 + 952) + 8))(*(v0 + 992), *(v0 + 936));
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 872);

  v4 = v1;
  v5 = sub_240759AC4();
  v6 = sub_24075A5E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 872);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v8 = 136315394;
    v11 = sub_240759F84();
    v13 = sub_2405BBA7C(v11, v12, &v38);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_240579000, v5, v6, "Failed to handle incoming request: %s with error: %@", v8, 0x16u);
    sub_2405B8A50(v9, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v16 = v1;
  v17 = *(v0 + 1000);
  v18 = v1;
  v19 = sub_240759AC4();
  v20 = sub_24075A5C4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v21 = 136315394;
    *(v0 + 856) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v24 = sub_24075A0E4();
    v26 = sub_2405BBA7C(v24, v25, &v38);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    if (v1)
    {
      v27 = v1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v28;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    *(v21 + 14) = v28;
    *v22 = v29;
    _os_log_impl(&dword_240579000, v19, v20, "Sending outResponse: %s, outError: %@", v21, 0x16u);
    sub_2405B8A50(v22, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CC76B0](v23, -1, -1);
    MEMORY[0x245CC76B0](v21, -1, -1);
  }

  else
  {
  }

  v30 = *(v0 + 992);
  v31 = *(v0 + 984);
  v32 = *(v0 + 976);
  v33 = *(v0 + 968);
  v34 = *(v0 + 960);
  v35 = *(v0 + 928);
  (*(v0 + 920))(0, 0, v1);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_24066E5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D44270];
  v76 = sub_24075A0B4();
  v77 = v5;
  sub_24075A814();
  if (!*(a1 + 16) || (v6 = sub_2405BB338(v75), (v7 & 1) == 0))
  {
    sub_2405BD160(v75);
    goto LABEL_6;
  }

  sub_2405BD1CC(*(a1 + 56) + 32 * v6, &v76);
  sub_2405BD160(v75);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v72 = 0;
    v8 = 1;
    goto LABEL_7;
  }

  v8 = 0;
  v72 = v73;
LABEL_7:
  v78 = v8;
  v9 = *MEMORY[0x277D44298];
  v76 = sub_24075A0B4();
  v77 = v10;
  sub_24075A814();
  if (*(a1 + 16) && (v11 = sub_2405BB338(v75), (v12 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v11, &v76);
    sub_2405BD160(v75);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v73;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v74;
    }

    else
    {
      v15 = 0;
    }

    v70 = v15;
    v71 = v14;
  }

  else
  {
    sub_2405BD160(v75);
    v70 = 0;
    v71 = 0;
  }

  v16 = *MEMORY[0x277D442A8];
  v76 = sub_24075A0B4();
  v77 = v17;
  sub_24075A814();
  if (*(a1 + 16) && (v18 = sub_2405BB338(v75), (v19 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v18, &v76);
    sub_2405BD160(v75);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v73;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v74;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    v69 = v21;
  }

  else
  {
    sub_2405BD160(v75);
    v68 = 0;
    v69 = 0;
  }

  v23 = *MEMORY[0x277D442B0];
  v76 = sub_24075A0B4();
  v77 = v24;
  sub_24075A814();
  if (*(a1 + 16) && (v25 = sub_2405BB338(v75), (v26 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v25, &v76);
    sub_2405BD160(v75);
    v27 = swift_dynamicCast();
    if (v27)
    {
      v28 = v73;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v74;
    }

    else
    {
      v29 = 0;
    }

    v66 = v29;
    v67 = v28;
  }

  else
  {
    sub_2405BD160(v75);
    v66 = 0;
    v67 = 0;
  }

  v30 = *MEMORY[0x277D442B8];
  v76 = sub_24075A0B4();
  v77 = v31;
  sub_24075A814();
  if (*(a1 + 16) && (v32 = sub_2405BB338(v75), (v33 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v32, &v76);
    sub_2405BD160(v75);
    v34 = swift_dynamicCast();
    if (v34)
    {
      v35 = v73;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = v74;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    sub_2405BD160(v75);
    v35 = 0;
    v36 = 0;
  }

  v37 = *MEMORY[0x277D442C0];
  v76 = sub_24075A0B4();
  v77 = v38;
  sub_24075A814();
  if (*(a1 + 16) && (v39 = sub_2405BB338(v75), (v40 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v39, &v76);
    sub_2405BD160(v75);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v42 = v73;
    }

    else
    {
      v42 = 0;
    }

    if (v41)
    {
      v43 = v74;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    sub_2405BD160(v75);
    v42 = 0;
    v43 = 0;
  }

  v44 = *MEMORY[0x277D442C8];
  v76 = sub_24075A0B4();
  v77 = v45;
  sub_24075A814();
  if (*(a1 + 16) && (v46 = sub_2405BB338(v75), (v47 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v46, &v76);
    sub_2405BD160(v75);
    v48 = swift_dynamicCast();
    if (v48)
    {
      v49 = v73;
    }

    else
    {
      v49 = 0;
    }

    if (v48)
    {
      v50 = v74;
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    sub_2405BD160(v75);
    v49 = 0;
    v50 = 0;
  }

  v51 = *MEMORY[0x277D442D8];
  v76 = sub_24075A0B4();
  v77 = v52;
  sub_24075A814();
  if (*(a1 + 16) && (v53 = sub_2405BB338(v75), (v54 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v53, &v76);
    sub_2405BD160(v75);
    v55 = swift_dynamicCast();
    if (v55)
    {
      v56 = v73;
    }

    else
    {
      v56 = 0;
    }

    if (v55)
    {
      v57 = v74;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    sub_2405BD160(v75);
    v56 = 0;
    v57 = 0;
  }

  v58 = *MEMORY[0x277D442E8];
  v76 = sub_24075A0B4();
  v77 = v59;
  sub_24075A814();
  if (!*(a1 + 16) || (v60 = sub_2405BB338(v75), (v61 & 1) == 0))
  {

    result = sub_2405BD160(v75);
    goto LABEL_78;
  }

  sub_2405BD1CC(*(a1 + 56) + 32 * v60, &v76);
  sub_2405BD160(v75);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_78:
    v64 = 0;
    v63 = 1;
    goto LABEL_79;
  }

  v63 = 0;
  v64 = v73;
LABEL_79:
  v65 = v78;
  *a2 = v72;
  *(a2 + 4) = v65;
  *(a2 + 8) = v71;
  *(a2 + 16) = v70;
  *(a2 + 24) = v69;
  *(a2 + 32) = v68;
  *(a2 + 40) = v67;
  *(a2 + 48) = v66;
  *(a2 + 56) = v35;
  *(a2 + 64) = v36;
  *(a2 + 72) = v42;
  *(a2 + 80) = v43;
  *(a2 + 88) = v49;
  *(a2 + 96) = v50;
  *(a2 + 104) = v56;
  *(a2 + 112) = v57;
  *(a2 + 120) = v64;
  *(a2 + 128) = v63;
  return result;
}

uint64_t sub_24066EC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 145) = a6;
  *(v8 + 312) = a4;
  *(v8 + 320) = a5;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  *(v8 + 288) = a1;
  v9 = *(a3 + 112);
  *(v8 + 112) = *(a3 + 96);
  *(v8 + 128) = v9;
  *(v8 + 144) = *(a3 + 128);
  v10 = *(a3 + 48);
  *(v8 + 48) = *(a3 + 32);
  *(v8 + 64) = v10;
  v11 = *(a3 + 80);
  *(v8 + 80) = *(a3 + 64);
  *(v8 + 96) = v11;
  v12 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v12;
  return MEMORY[0x2822009F8](sub_24066EC7C, 0, 0);
}

uint64_t sub_24066EC7C()
{
  v1 = *(v0 + 320);
  if (*(v0 + 145))
  {
    v22 = (*(v0 + 312) + **(v0 + 312));
    v2 = *(*(v0 + 312) + 4);
    v3 = swift_task_alloc();
    *(v0 + 360) = v3;
    *v3 = v0;
    v3[1] = sub_24066EFEC;
    v4 = *(v0 + 288);
    v5 = *(v0 + 296);

    return v22(v4, v5, v0 + 16);
  }

  else
  {
    v7 = *(v0 + 328);
    v8 = *(v0 + 336);
    v9 = *(v0 + 304);
    v10 = *(v0 + 312);
    *(v0 + 152) = *v9;
    v11 = *(v9 + 48);
    v12 = *(v9 + 64);
    v13 = *(v9 + 32);
    *(v0 + 168) = *(v9 + 16);
    *(v0 + 216) = v12;
    *(v0 + 200) = v11;
    *(v0 + 184) = v13;
    v15 = *(v9 + 96);
    v14 = *(v9 + 112);
    v16 = *(v9 + 128);
    *(v0 + 232) = *(v9 + 80);
    *(v0 + 280) = v16;
    *(v0 + 264) = v14;
    *(v0 + 248) = v15;
    type metadata accessor for RapportTransport.MessageInfo();
    v17 = sub_24075A714();
    (*(*(v17 - 8) + 8))(v0 + 152, v17);
    v23 = (v10 + *v10);
    v18 = v10[1];
    v19 = swift_task_alloc();
    *(v0 + 344) = v19;
    *v19 = v0;
    v19[1] = sub_24066EED8;
    v20 = *(v0 + 288);
    v21 = *(v0 + 296);

    return v23(v20, v21);
  }
}

uint64_t sub_24066EED8()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_24066F118;
  }

  else
  {
    v3 = sub_24066F100;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24066EFEC()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_24066F130;
  }

  else
  {
    v3 = sub_24066F100;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24066F148(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_240759F74();
  if (a3)
  {
    a3 = sub_240759F74();
  }

  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_240672190, v10);
}

void sub_24066F254(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_240759F54();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_240759F54();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_2407595C4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

uint64_t sub_24066F33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for RapportTransport.Activated();
  *(a5 + v10[11]) = 0;
  v11 = v10[12];
  v12 = type metadata accessor for RapportTransport();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  *(a5 + v11) = a2;
  v13 = v10[9];
  v14 = type metadata accessor for MessagePacker();
  (*(*(v14 - 8) + 32))(a5 + v13, a3, v14);
  v15 = v10[10];
  v16 = type metadata accessor for MessageUnpacker();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a4, v16);
}

void sub_24066F498(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v12 = sub_24075A084();
  if (a3)
  {
    a3 = sub_240759F54();
  }

  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a7;
  v16[4] = sub_240672534;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_24066F148;
  v16[3] = &block_descriptor_117;
  v14 = _Block_copy(v16);

  v15 = a7;

  [a6 registerRequestID:v12 options:a3 handler:v14];
  _Block_release(v14);
}

uint64_t sub_24066F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t (*)(int a1, uint64_t a2, uint64_t a3), void *), uint64_t a6, void *a7)
{
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a3;
  v13[4] = a4;
  v14 = a7;

  a5(a2, a1, sub_240672580, v13);
}

uint64_t sub_24066F698(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v26 = a4;
  v10 = sub_240759C94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_240759CE4();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v25);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA590] code:a1 userInfo:0];
  }

  else
  {
    v19 = 0;
  }

  v20 = swift_allocObject();
  v20[2] = v24;
  v20[3] = a6;
  v20[4] = a3;
  v20[5] = a2;
  v20[6] = v19;
  aBlock[4] = sub_24067258C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240644810;
  aBlock[3] = &block_descriptor_126_0;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  sub_240759CC4();
  v27 = MEMORY[0x277D84F90];
  sub_240672478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_2406724D0();
  sub_24075A794();
  MEMORY[0x245CC6370](0, v18, v14, v21);
  _Block_release(v21);

  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);
}

uint64_t sub_24066F988(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_24075A0B4();
  v10 = v9;
  if (a3)
  {
    a3 = sub_240759F74();
  }

  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;

  v7(v8, v10, a3, sub_240672428, v12);
}

uint64_t sub_24066FA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = sub_240759F54();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_240759F54();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2406AE9F0;
  v13[3] = &block_descriptor_96;
  v10 = _Block_copy(v13);
  v11 = *(a5 + 16);

  v11(a5, v8, v9, v10);
  _Block_release(v10);
}

uint64_t sub_24066FBB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_24075A0B4();
  v5 = v4;

  v2(v3, v5);
}

void sub_24066FC24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v13 = sub_24075A084();
  v14 = sub_240759F54();
  if (a3)
  {
    a3 = sub_240759F54();
  }

  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a5;
  v15[4] = a6;
  v18[4] = sub_240672438;
  v18[5] = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_240670094;
  v18[3] = &block_descriptor_105;
  v16 = _Block_copy(v18);
  v17 = a8;

  [a7 sendRequestID:v13 request:v14 options:a3 responseHandler:v16];
  _Block_release(v16);
}

uint64_t sub_24066FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v11 = sub_240759C94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_240759CE4();
  v16 = *(v34 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v34);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v20 = sub_2407595C4();
    v33 = v19;
    v21 = v15;
    v22 = v11;
    v23 = v16;
    v24 = a1;
    v25 = v12;
    v26 = a6;
    v27 = a2;
    v28 = a5;
    v29 = v20;
    LODWORD(a3) = NSErrorToOSStatus();

    a5 = v28;
    a2 = v27;
    a6 = v26;
    v12 = v25;
    a1 = v24;
    v16 = v23;
    v11 = v22;
    v15 = v21;
    v19 = v33;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;
  *(v30 + 32) = a3;
  *(v30 + 40) = a2;
  *(v30 + 48) = a1;
  aBlock[4] = sub_240672444;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240644810;
  aBlock[3] = &block_descriptor_111;
  v31 = _Block_copy(aBlock);

  sub_240759CC4();
  v36 = MEMORY[0x277D84F90];
  sub_240672478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_2406724D0();
  sub_24075A794();
  MEMORY[0x245CC6370](0, v19, v15, v31);
  _Block_release(v31);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v34);
}

uint64_t sub_240670094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_240759F74();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_240759F74();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_240670178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = sub_24075A0B4();
  v11 = v10;
  if (a3)
  {
    a3 = sub_240759F74();
  }

  v12 = sub_240759F74();
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;

  v8(v9, v11, a3, v12, sub_240672430, v14);
}

uint64_t RapportTransport.Activated.base.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for RapportTransport();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

Swift::Void __swiftcall RapportTransport.Activated.invalidate()()
{
  v2 = v0;
  v3 = *(v0 + 48);
  *(v1 + *(v0 + 44)) = 1;
  v4 = *(v1 + v3);
  [v4 invalidate];
  [*v1 invalidate];

  *(v1 + v3) = 0;
  v5 = *(*(v2 - 8) + 8);

  v5(v1, v2);
}

uint64_t sub_2406703D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 16);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406704B0, 0, 0);
}

uint64_t sub_2406704B0()
{
  v43 = v0;
  if (qword_27E4B5F48 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_240759AE4();
  v0[11] = __swift_project_value_buffer(v5, qword_27E4BAB58);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v11 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_24075A0E4();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_2405BBA7C(v15, v17, v42);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_240579000, v7, v8, "Performing unicast send of outMessage: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x245CC76B0](v41, -1, -1);
    MEMORY[0x245CC76B0](v14, -1, -1);
  }

  else
  {
    v20 = v0[6];
    v21 = v0[7];

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v0[14] = v18;
  v23 = v0[5];
  v22 = v0[6];
  v25 = v0[3];
  v24 = v0[4];
  v26 = *(v24 + 36);
  v0[15] = *(v24 + 24);
  v27 = type metadata accessor for MessagePacker();
  v28 = MessagePacker.pack(_:)(v25, v27);
  v0[16] = v28;
  v29 = v28;

  v30 = sub_240759AC4();
  v31 = sub_24075A5D4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42[0] = v33;
    *v32 = 136315138;
    v34 = sub_240759F84();
    v36 = sub_2405BBA7C(v34, v35, v42);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_240579000, v30, v31, "Packed message into outRequest: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x245CC76B0](v33, -1, -1);
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  v37 = swift_task_alloc();
  v0[17] = v37;
  *v37 = v0;
  v37[1] = sub_2406708B8;
  v38 = v0[4];
  v39 = v0[5];

  return sub_240670DB4(v29, v38);
}

uint64_t sub_2406708B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_240670D2C;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_2406709D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2406709D4()
{
  v46 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136315138;
    v8 = sub_240759F84();
    v10 = sub_2405BBA7C(v8, v9, v45);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_240579000, v3, v4, "Sent message and received inResponse: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 120);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = *(v0 + 16);
  v17 = *(*(v0 + 32) + 40);
  v18 = type metadata accessor for MessageUnpacker();
  MessageUnpacker.unpack(_:)(v11, v18, v16);

  if (!v12)
  {
    v19 = *(v0 + 104);
    v20 = *(v0 + 88);
    (*(v0 + 96))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
    v21 = sub_240759AC4();
    v22 = sub_24075A5D4();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 112);
    if (v23)
    {
      v25 = *(v0 + 96);
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      v28 = *(v0 + 48);
      v43 = *(v0 + 104);
      v44 = *(v0 + 56);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45[0] = v30;
      *v29 = 136315138;
      v25(v26, v27, v28);
      v31 = sub_24075A0E4();
      v33 = v32;
      v24(v27, v28);
      v34 = sub_2405BBA7C(v31, v33, v45);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_240579000, v21, v22, "Unpacked response into inMessage: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x245CC76B0](v30, -1, -1);
      MEMORY[0x245CC76B0](v29, -1, -1);
    }

    else
    {
      v36 = *(v0 + 56);
      v35 = *(v0 + 64);
      v37 = *(v0 + 48);

      v24(v35, v37);
    }
  }

  v39 = *(v0 + 72);
  v38 = *(v0 + 80);
  v40 = *(v0 + 64);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_240670D2C()
{
  v1 = v0[16];

  v2 = v0[19];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240670DB4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_240670DD8, 0, 0);
}

uint64_t sub_240670DD8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v2 + 16);
  v4[3] = *(v2 + 24);
  v4[4] = v1;
  v4[5] = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD88, &qword_2407705E0);
  *v6 = v0;
  v6[1] = sub_240670EFC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x5374736163696E75, 0xEF293A5F28646E65, sub_240671E50, v4, v7);
}

uint64_t sub_240670EFC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_240659960;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_240671018;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_240671034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v12 = *v3;
  v11 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = sub_24075A084();
  v15 = sub_240759F54();
  (*(v7 + 16))(v10, a2, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(a3 + 16);
  (*(v7 + 32))(v17 + v16, v10, v6);
  aBlock[4] = sub_240671E9C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240670094;
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);

  [v12 sendRequestID:v14 request:v15 options:0 responseHandler:v18];
  _Block_release(v18);
}

uint64_t sub_240671244(uint64_t a1, int a2, id a3)
{
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
    return sub_24075A364();
  }

  else
  {
    if (!a3)
    {
      type metadata accessor for RapportTransport.Activated.Failure();
      swift_getWitnessTable();
      swift_allocError();
      a3 = 0;
      *v4 = 1;
    }

    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
    return sub_24075A354();
  }
}

id RapportTransport.Activated.messageSessionTemplate.getter(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 48)) templateSession];

  return v2;
}

uint64_t RapportTransport.Activated.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_240671390, 0, 0);
}

uint64_t sub_240671390()
{
  v1 = v0[4];
  if (*(v0[5] + *(v1 + 44)))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    type metadata accessor for RapportTransport.Activated.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_2405D3110;
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[2];
    v11 = v0[3];

    return sub_2406703D8(v10, v11, v8);
  }
}

uint64_t sub_2406714CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return RapportTransport.Activated.send(_:)(a1, a2, a3);
}

void sub_24067157C(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  RapportTransport.Activated.invalidate()();
}

uint64_t RapportTransport.MessageInfo.peerAddressString.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RapportTransport.MessageInfo.verifiedIdentity.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerAltDsid.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerDsid.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerDeviceName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerModel.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t RapportTransport.MessageInfo.peerStatusFlags.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_2406717AC()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_280FADA28);
  __swift_project_value_buffer(v0, qword_280FADA28);
  return sub_240759AD4();
}

uint64_t static AISLogger.rpTransport.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FADA20 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  v3 = __swift_project_value_buffer(v2, qword_280FADA28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2406718D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2406718EC();
  }

  return result;
}

uint64_t sub_240671928(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_24067196C()
{
  sub_240590794(319, &qword_27E4BAB70, 0x277D44160);
  if (v0 <= 0x3F)
  {
    sub_240590794(319, &qword_280FAD6F0, 0x277D85C78);
    if (v1 <= 0x3F)
    {
      sub_240671AA8(319, &qword_27E4B6CC0, &qword_27E4B6CC8, &qword_24075EC18);
      if (v2 <= 0x3F)
      {
        sub_240671AA8(319, qword_27E4B7280, &qword_27E4B71D0, &unk_240770200);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_240671AA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24075A714();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_240671B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for RapportTransport();
  if (v3 <= 0x3F)
  {
    type metadata accessor for MessagePacker();
    if (v4 <= 0x3F)
    {
      type metadata accessor for MessageUnpacker();
      if (v5 <= 0x3F)
      {
        sub_240671C24();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_240671C24()
{
  if (!qword_27E4BAB78)
  {
    sub_240590794(255, qword_27E4BAB80, 0x277D02888);
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4BAB78);
    }
  }
}

uint64_t sub_240671C8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_240671CFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_240671D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_240671DD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_240671E50(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = type metadata accessor for RapportTransport.Activated();
  sub_240671034(v5, a1, v7);
}

uint64_t sub_240671E9C(uint64_t a1, int a2, void *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0) - 8) + 80);

  return sub_240671244(a1, a2, a3);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240671F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for MessageUnpacker() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(type metadata accessor for MessagePacker() - 8);
  return sub_24066CD60(a1, a2, a3, a4, v4 + v12, *(v4 + v13), *(v4 + v13 + 8), *(v4 + v13 + 16), v4 + ((v13 + *(v14 + 80) + 17) & ~*(v14 + 80)), v9, v10);
}

uint64_t sub_240672098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for RapportTransport();
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v6 + 64);
  if (v7)
  {
    v8 = *(v6 + 72);
    return v7();
  }

  return result;
}

id sub_240672108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for RapportTransport() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  [*(v0 + 32) activate];
  v5 = *(v0 + v4);

  return [v5 activateWithCompletion_];
}

uint64_t sub_240672198(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for MessageUnpacker() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for MessagePacker() - 8);
  v11 = (*(v10 + 64) + ((v9 + *(v10 + 80) + 17) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[3];
  v23 = v1[2];
  v20 = *(v1 + v8);
  v21 = v1[6];
  v12 = v1 + v9;
  v13 = *(v1 + v9);
  v19 = *(v12 + 1);
  v14 = v12[16];
  v16 = *(v1 + v11);
  v15 = *(v1 + v11 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_2405CE450;

  return sub_24066D0C0(a1, v23, v22, v21, v1 + v7, v20, v13, v19);
}

uint64_t sub_240672388@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  return sub_24066E5C0(v4, a2);
}

void sub_2406723C8()
{
  v1 = *(v0 + 16);
  v2 = sub_24075A084();
  [v1 deregisterRequestID_];
}

unint64_t sub_240672478()
{
  result = qword_27E4B9B58;
  if (!qword_27E4B9B58)
  {
    sub_240759C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9B58);
  }

  return result;
}

unint64_t sub_2406724D0()
{
  result = qword_27E4B9B68;
  if (!qword_27E4B9B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9B60, &unk_240770600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9B68);
  }

  return result;
}

uint64_t objectdestroy_101Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240672618()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BAD98);
  v1 = __swift_project_value_buffer(v0, qword_27E4BAD98);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280FADA00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t _s12AppleIDSetup31BiometricAuthenticationProviderV07attemptcD03for14localizedTitle0H6ReasonySo8LAPolicyV_S2StYaAA0cD5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_24075A3A4();
  v5[7] = sub_24075A394();
  v7 = sub_24075A344();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_2406727AC, v7, v6);
}

uint64_t sub_2406727AC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_24067286C;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_240672A78(v7, v1, v5, v6, v3, v4);
}

uint64_t sub_24067286C(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v12 = *v3;

  if (v2)
  {
    *(v6 + 104) = a2;
    *(v6 + 96) = a1;
    v8 = *(v6 + 64);
    v9 = *(v6 + 72);
    v10 = sub_240672A00;
  }

  else
  {

    v8 = *(v6 + 64);
    v9 = *(v6 + 72);
    v10 = sub_24067299C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_24067299C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240672A00()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);
  v5 = *(v0 + 96);

  return v4(v5, v1 & 1);
}

uint64_t sub_240672A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v6[50] = a5;
  v6[51] = a6;
  v6[48] = a3;
  v6[49] = a4;
  v6[46] = a1;
  v6[47] = a2;
  sub_24075A3A4();
  v6[52] = sub_24075A394();
  v7 = sub_24075A344();
  v6[53] = v7;
  v6[54] = v8;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_240672B4C, v7, v8);
}

uint64_t sub_240672B4C()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  *(v0 + 352) = 0;
  v3 = [v1 canEvaluatePolicy:v2 error:v0 + 352];
  *(v0 + 329) = v3;
  v4 = *(v0 + 352);
  *(v0 + 440) = v4;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v20 = *(v0 + 400);
    v19 = *(v0 + 408);
    v22 = *(v0 + 384);
    v21 = *(v0 + 392);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240762420;
    *(v0 + 332) = 1037;
    sub_24075A814();
    v24 = MEMORY[0x277D837D0];
    *(inited + 96) = MEMORY[0x277D837D0];
    *(inited + 72) = v22;
    *(inited + 80) = v21;
    *(v0 + 348) = 1031;

    sub_24075A814();
    *(inited + 168) = v24;
    *(inited + 144) = v20;
    *(inited + 152) = v19;

    sub_2405BD674(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B73D0, &qword_240770790);
    swift_arrayDestroy();
    if (qword_27E4B5F58 != -1)
    {
      swift_once();
    }

    v25 = sub_240759AE4();
    __swift_project_value_buffer(v25, qword_27E4BAD98);

    v26 = sub_240759AC4();
    v27 = sub_24075A5D4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 368);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39[0] = v30;
      *v29 = 134218242;
      *(v29 + 4) = v28;
      *(v29 + 12) = 2080;
      v31 = sub_240759F84();
      v33 = sub_2405BBA7C(v31, v32, v39);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_240579000, v26, v27, "Evaluating policy %ld with options: %s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x245CC76B0](v30, -1, -1);
      MEMORY[0x245CC76B0](v29, -1, -1);
    }

    v34 = *(v0 + 368);
    v35 = *(v0 + 376);
    v36 = sub_240759F54();
    *(v0 + 448) = v36;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 360;
    *(v0 + 24) = sub_2406730D4;
    v37 = swift_continuation_init();
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BADB8, &qword_240770798);
    *(v0 + 256) = MEMORY[0x277D85DD0];
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_2406733BC;
    *(v0 + 280) = &block_descriptor_12;
    *(v0 + 288) = v37;
    [v35 evaluatePolicy:v34 options:v36 reply:v0 + 256];
    v38 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 416);
    v7 = v4;

    if (qword_27E4B5F58 != -1)
    {
      swift_once();
    }

    v8 = sub_240759AE4();
    __swift_project_value_buffer(v8, qword_27E4BAD98);
    v9 = sub_240759AC4();
    v10 = sub_24075A5E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 368);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 134218242;
      *(v12 + 4) = v11;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v7;
      *v13 = v4;
      v14 = v7;
      _os_log_impl(&dword_240579000, v9, v10, "Cannot evaluate policy %ld due to error: %@", v12, 0x16u);
      sub_24061DD28(v13);
      MEMORY[0x245CC76B0](v13, -1, -1);
      MEMORY[0x245CC76B0](v12, -1, -1);
    }

    *(v0 + 320) = v4;
    *(v0 + 328) = 0;
    sub_240673D54();
    swift_willThrowTypedImpl();
    if (*(v0 + 440))
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v0 + 329);
    }

    v16 = *(v0 + 8);
    v17 = *MEMORY[0x277D85DE8];

    return v16(v4, v15);
  }
}

uint64_t sub_2406730D4()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 456) = v3;
  v4 = *(v1 + 432);
  v5 = *(v1 + 424);
  if (v3)
  {
    v6 = sub_2406732DC;
  }

  else
  {
    v6 = sub_240673230;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_240673230()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[56];
  v2 = v0[52];

  v3 = v0[45];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_2406732DC()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v3 = *(v0 + 416);

  swift_willThrow();

  *(v0 + 336) = v2;
  *(v0 + 344) = 1;
  sub_240673D54();
  swift_willThrowTypedImpl();
  if (*(v0 + 440))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 329);
  }

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5(v2, v4);
}

uint64_t sub_2406733BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_240759F74();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2406734B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_24075A3A4();
  v5[7] = sub_24075A394();
  v7 = sub_24075A344();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_240673558, v7, v6);
}

uint64_t sub_240673558()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_240673618;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_240672A78(v7, v1, v5, v6, v3, v4);
}

uint64_t sub_240673618(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v12 = *v3;

  if (v2)
  {
    *(v6 + 104) = a2;
    *(v6 + 96) = a1;
    v8 = *(v6 + 64);
    v9 = *(v6 + 72);
    v10 = sub_240673DC0;
  }

  else
  {

    v8 = *(v6 + 64);
    v9 = *(v6 + 72);
    v10 = sub_240673DC4;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

BOOL sub_240673748(void *a1, char a2, void *a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      if (!a1)
      {
        return a3 == 0;
      }

      if (a3)
      {
        sub_2405FE2C0(a1);
        sub_2405FE2C0(a3);
        v19 = a1;
        v20 = [a1 domain];
        v21 = sub_24075A0B4();
        v23 = v22;

        v24 = [a3 domain];
        v25 = sub_24075A0B4();
        v27 = v26;

        if (v21 == v25 && v23 == v27)
        {
        }

        else
        {
          v32 = sub_24075ACF4();

          if ((v32 & 1) == 0)
          {
            sub_2405FDED4(a3);
            sub_2405FDED4(v19);
            return 0;
          }
        }

        v29 = [v19 code];
        v30 = [a3 code];
        sub_2405FDED4(a3);
        sub_2405FDED4(v19);
        return v29 == v30;
      }
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v5 = sub_2407595C4();
  v6 = sub_2407595C4();
  v7 = v5;
  v8 = v6;
  v9 = [v7 domain];
  v10 = sub_24075A0B4();
  v12 = v11;

  v13 = [v8 domain];
  v14 = sub_24075A0B4();
  v16 = v15;

  if (v10 != v14 || v12 != v16)
  {
    v28 = sub_24075ACF4();

    if (v28)
    {
      goto LABEL_14;
    }

    return 0;
  }

LABEL_14:
  v29 = [v7 code];
  v30 = [v8 code];

  return v29 == v30;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_240673A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_240673A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t _s12AppleIDSetup32BiometricAuthenticationProvidingP07attemptcD03for14localizedTitle0H6ReasonySo8LAPolicyV_S2StYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_240673C00;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_240673C00(uint64_t a1, char a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8(a1, a2 & 1);
  }

  else
  {
    v10 = *(v7 + 8);

    return v10();
  }
}

unint64_t sub_240673D54()
{
  result = qword_27E4BADB0;
  if (!qword_27E4BADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BADB0);
  }

  return result;
}

uint64_t static FeatureManager.shared.getter()
{
  type metadata accessor for FeatureManager();

  return swift_initStaticObject();
}

uint64_t sub_240673E1C(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for AppleIDSetupFeature;
  v4[4] = sub_240673E74();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2407598A4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_240673E74()
{
  result = qword_280FADF68;
  if (!qword_280FADF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FADF68);
  }

  return result;
}

uint64_t FeatureFlagsKey.isFeatureEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  LOBYTE(v3) = sub_2407598A4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

id sub_2406740CC(uint64_t a1, SEL *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v3 = [v2 *a2];
  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_2407595D4();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_240674184(uint64_t a1)
{
  sub_240674524(a1, &v20);
  if (v21)
  {
    sub_24058C9C0(&v20, v22);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
    v23 = sub_240674594();
    v24 = &protocol witness table for STManagementState;
    v22[0] = v2;
    if (v21)
    {
      sub_2406745E0(&v20);
    }
  }

  v3 = v23;
  v4 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = (v4[1])(v5, v3, v4);

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    if ([v6 BOOLValue])
    {
      v7 = v23;
      v8 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v14 = (v8[2])(v9, v7, v8);

      if ([v14 webFilterState]== 1)
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        if (qword_280FAD9F0 != -1)
        {
          swift_once();
        }

        v15 = sub_240759AE4();
        __swift_project_value_buffer(v15, qword_280FADA00);
        v16 = sub_240759AC4();
        v17 = sub_24075A5C4();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_240579000, v16, v17, "Current user does not have a web filter set to auto, which would be an expected default setting", v18, 2u);
          MEMORY[0x245CC76B0](v18, -1, -1);
        }

        LOBYTE(v5) = 0;
      }

      v11 = v6;
    }

    else
    {
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v10 = sub_240759AE4();
      __swift_project_value_buffer(v10, qword_280FADA00);
      v11 = sub_240759AC4();
      v12 = sub_24075A5C4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_240579000, v11, v12, "Current user does not have communication safety enabled", v13, 2u);
        MEMORY[0x245CC76B0](v13, -1, -1);
      }

      LOBYTE(v5) = 0;
      v14 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return v5 & 1;
}

uint64_t sub_240674524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAAD8, qword_24076FBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_240674594()
{
  result = qword_27E4BADC0;
  if (!qword_27E4BADC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4BADC0);
  }

  return result;
}

uint64_t sub_2406745E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAAD8, qword_24076FBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppleIDSetupFeature.isFeatureEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for AppleIDSetupFeature;
  v4[4] = sub_240673E74();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2407598A4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

const char *AppleIDSetupFeature.domain.getter()
{
  v1 = *v0;
  if (v1 > 0xE)
  {
    return "AppleIDSetup";
  }

  if (((1 << v1) & 0x4C40) == 0)
  {
    if (v1 == 7)
    {
      return "GameCenter";
    }

    if (v1 == 12)
    {
      return "SwiftUI";
    }

    return "AppleIDSetup";
  }

  return "AuthKit";
}

const char *AppleIDSetupFeature.feature.getter()
{
  result = "PersonalizedChildSetupBuddy";
  switch(*v0)
  {
    case 1:
      result = "PersonalizedChildSetupSpyglass";
      break;
    case 2:
      result = "ChildSetupSignIn";
      break;
    case 3:
      result = "ProxAdvertisementOverride";
      break;
    case 4:
      result = "Sandstone";
      break;
    case 5:
      result = "SandstoneRepair";
      break;
    case 6:
      result = "SimpleProfiles";
      break;
    case 7:
      result = "auth_plugin_modernization";
      break;
    case 8:
      result = "MacProxSpyglass";
      break;
    case 9:
      result = "AgeAttestationSettings";
      break;
    case 0xA:
      result = "AgeMigration";
      break;
    case 0xB:
      result = "AgeBasedAccountSupport";
      break;
    case 0xC:
      result = "Solarium";
      break;
    case 0xD:
      result = "AgeBasedAccountRestrictions";
      break;
    case 0xE:
      result = "AgeAssurance";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppleIDSetupFeature.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

unint64_t sub_2406748CC()
{
  result = qword_27E4BADC8;
  if (!qword_27E4BADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BADC8);
  }

  return result;
}

const char *sub_240674920()
{
  v1 = *v0;
  if (v1 > 0xE)
  {
    return "AppleIDSetup";
  }

  if (((1 << v1) & 0x4C40) == 0)
  {
    if (v1 == 7)
    {
      return "GameCenter";
    }

    if (v1 == 12)
    {
      return "SwiftUI";
    }

    return "AppleIDSetup";
  }

  return "AuthKit";
}

uint64_t sub_2406749C4()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BADD0);
  v1 = __swift_project_value_buffer(v0, qword_27E4BADD0);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280FADA00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static AISFollowupManager.shared.getter()
{
  type metadata accessor for AISFollowupManager();

  return swift_allocObject();
}

uint64_t sub_240674AE0(uint64_t a1, void *a2)
{
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_240674B04, 0, 0);
}

uint64_t sub_240674B04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v4 = sub_24075A084();
  v5 = [v3 aa:v4 appleAccountWithAltDSID:?];
  v0[4] = v5;

  if (v5)
  {
    v6 = [v5 identifier];
    if (v6)
    {
      v7 = v6;
      sub_24075A0A4();
    }

    if (qword_27E4B5F60 != -1)
    {
      swift_once();
    }

    v8 = sub_240759AE4();
    __swift_project_value_buffer(v8, qword_27E4BADD0);
    v9 = sub_240759AC4();
    v10 = sub_24075A5E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_240579000, v9, v10, "Unable to get account identifier, not dismissing repair followup", v11, 2u);
      MEMORY[0x245CC76B0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_27E4B5F60 != -1)
    {
      swift_once();
    }

    v12 = sub_240759AE4();
    __swift_project_value_buffer(v12, qword_27E4BADD0);
    v5 = sub_240759AC4();
    v13 = sub_24075A5E4();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_240579000, v5, v13, "Unable to get account, not dismissing repair followup", v14, 2u);
      MEMORY[0x245CC76B0](v14, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_240674E0C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_240674FA0;
  }

  else
  {
    v4 = sub_240674F3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240674F3C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240674FA0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_240675004(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CEC6D0];
  sub_24075A0B4();
  MEMORY[0x245CC5E60](a1, a2);
  v6 = sub_24075A1B4();
  sub_24075A134();

  return v6;
}

uint64_t AISFollowupManager.AISFollowupIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24075AA34();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_240675140()
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_2406751B4()
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_240675208@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24075AA34();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_240675294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_2406752B8, 0, 0);
}

uint64_t sub_2406752B8()
{
  v18 = v0;
  if (qword_27E4B5F60 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_240759AE4();
  v0[21] = __swift_project_value_buffer(v2, qword_27E4BADD0);

  v3 = sub_240759AC4();
  v4 = sub_24075A5C4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2405BBA7C(v6, v5, &v17);
    _os_log_impl(&dword_240579000, v3, v4, "Attempting to tear down CFU with identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v12 = [objc_allocWithZone(MEMORY[0x277CEC7F8]) init];
  v0[22] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9288, &unk_240770AD0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_240765570;
  *(v13 + 32) = v11;
  *(v13 + 40) = v10;

  v14 = sub_24075A2B4();
  v0[23] = v14;

  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_240675588;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24063BA7C;
  v0[13] = &block_descriptor_13;
  v0[14] = v15;
  [v12 dismissFollowUpsForAccount:v9 identifiers:v14 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240675588()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_240675700;
  }

  else
  {
    v3 = sub_240675698;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240675698()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240675700()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  swift_willThrow();

  v5 = v1;
  v6 = sub_240759AC4();
  v7 = sub_24075A5E4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_240579000, v6, v7, "Failed to tear down CFU %@", v10, 0xCu);
    sub_24061DD28(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

unint64_t sub_240675868()
{
  result = qword_27E4BADE8;
  if (!qword_27E4BADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BADE8);
  }

  return result;
}

uint64_t dispatch thunk of AISFollowupManager.dismissFollowup(with:for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405CE450;

  return v10(a1, a2);
}

__n128 DiscoveryModel.Discovering.init(allowsManual:selectedManual:pairingState:)@<Q0>(char a1@<W0>, char a2@<W1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3[1].n128_u64[0];
  v5 = a3[1].n128_u8[8];
  *(a4 + 2) = 0;
  *a4 = a1;
  *(a4 + 1) = a2;
  result = *a3;
  *(a4 + 8) = *a3;
  *(a4 + 24) = v4;
  *(a4 + 32) = v5;
  return result;
}

__n128 DiscoveryModel.init(role:flowKind:state:fixedPin:targetAuthTag:codeType:altDSID:symptomReport:shouldSkipConfirmation:name:serverDeviceModel:currentDeviceAgeRange:peerDeviceAgeRange:peerDeviceClass:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, char a13, __int128 a14, __n128 a15, uint64_t a16, uint64_t a17, char *a18)
{
  v19 = *a3;
  v20 = *(a3 + 8);
  v21 = *(a3 + 16);
  v22 = *(a3 + 24);
  v23 = *(a3 + 32);
  v24 = *(a3 + 40);
  v25 = *a8;
  v26 = *(a8 + 8);
  v34 = *a18;
  *(a9 + 304) = 0;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 1) = a1 & 1;
  *a9 = a2;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v25;
  *(a9 + 48) = v26;
  v27 = *(a3 + 48);
  sub_240676624(v35);
  sub_2406768E0(v19, v20, v21, v22, v23, v24, v27);
  v28 = v35[5];
  *(a9 + 168) = v35[6];
  v29 = v35[8];
  *(a9 + 184) = v35[7];
  *(a9 + 200) = v29;
  v30 = v35[3];
  *(a9 + 104) = v35[2];
  *(a9 + 120) = v30;
  *(a9 + 136) = v35[4];
  *(a9 + 152) = v28;
  v31 = v35[1];
  *(a9 + 72) = v35[0];
  *(a9 + 216) = v36;
  *(a9 + 88) = v31;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  sub_240609C34(0, 0);
  v32 = a12[1];
  *(a9 + 224) = *a12;
  *(a9 + 240) = v32;
  *(a9 + 49) = a13;
  result = a15;
  *(a9 + 256) = a14;
  *(a9 + 272) = a15;
  *(a9 + 304) = v34;
  *(a9 + 288) = a16;
  *(a9 + 296) = a17;
  return result;
}

void DiscoveryModel.updated(withPeer:)(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 6);
  v6 = *(a1 + 14);
  v7 = *(a1 + 30);
  memcpy(a2, v2, 0x131uLL);
  v8 = *a1;
  v9 = v4;
  v12 = v7;
  v11 = v6;
  v10 = v5;
  DiscoveryModel.update(withPeer:)(&v8);
}

uint64_t DiscoveryModel.targetAuthTag.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t DiscoveryModel.fixedPin.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void DiscoveryModel.codeType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t DiscoveryModel.altDSID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t DiscoveryModel.altDSID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t DiscoveryModel.bindableState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v12[6] = *(v1 + 168);
  v12[7] = v2;
  v12[8] = *(v1 + 200);
  v13 = *(v1 + 216);
  v3 = *(v1 + 120);
  v12[2] = *(v1 + 104);
  v12[3] = v3;
  v4 = *(v1 + 152);
  v12[4] = *(v1 + 136);
  v12[5] = v4;
  v5 = *(v1 + 88);
  v12[0] = *(v1 + 72);
  v12[1] = v5;
  v6 = *(v1 + 184);
  *(a1 + 96) = *(v1 + 168);
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v1 + 200);
  *(a1 + 144) = *(v1 + 216);
  v7 = *(v1 + 120);
  *(a1 + 32) = *(v1 + 104);
  *(a1 + 48) = v7;
  v8 = *(v1 + 152);
  *(a1 + 64) = *(v1 + 136);
  *(a1 + 80) = v8;
  v9 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v9;
  return sub_2406770F4(v12, v11);
}

__n128 DiscoveryModel.bindableState.setter(uint64_t a1)
{
  v3 = *(v1 + 184);
  v12[6] = *(v1 + 168);
  v12[7] = v3;
  v12[8] = *(v1 + 200);
  v13 = *(v1 + 216);
  v4 = *(v1 + 120);
  v12[2] = *(v1 + 104);
  v12[3] = v4;
  v5 = *(v1 + 152);
  v12[4] = *(v1 + 136);
  v12[5] = v5;
  v6 = *(v1 + 88);
  v12[0] = *(v1 + 72);
  v12[1] = v6;
  sub_24067712C(v12);
  v7 = *(a1 + 112);
  *(v1 + 168) = *(a1 + 96);
  *(v1 + 184) = v7;
  *(v1 + 200) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 104) = *(a1 + 32);
  *(v1 + 120) = v8;
  v9 = *(a1 + 80);
  *(v1 + 136) = *(a1 + 64);
  *(v1 + 152) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 216) = *(a1 + 144);
  *(v1 + 88) = v11;
  return result;
}

uint64_t DiscoveryModel.symptomReport.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406424AC(v2, v3);
}

__n128 DiscoveryModel.symptomReport.setter(uint64_t a1)
{
  v3 = v1[30];
  v4 = v1[31];
  sub_240609C34(v1[28], v1[29]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 14) = *a1;
  *(v1 + 15) = v6;
  return result;
}

uint64_t DiscoveryModel.name.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t DiscoveryModel.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 264);

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t DiscoveryModel.serverDeviceModel.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t DiscoveryModel.serverDeviceModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 280);

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t DiscoveryModel.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 81);
  v6 = *(v1 + 82);
  v8 = *(v1 + 88);
  v7 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = *(v1 + 136);
  v20 = *(v1 + 120);
  v21 = v11;
  v22 = *(v1 + 152);
  v23 = *(v1 + 168);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v14 = 0;
      v8 = 0;
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v16 = 0;
      v17 = 24;
    }

    else
    {
      v9 = *(v1 + 200);
      v10 = *(v1 + 208);
      v7 = *(v1 + 192);
      v8 = *(v1 + 184);
      v14 = *(v1 + 176);
      v18 = 256;
      if (!*(v1 + 217))
      {
        v18 = 0;
      }

      v16 = v18 | *(v1 + 216);

      result = sub_24067715C(v7, v9, v10);
      v17 = 16;
    }
  }

  else if (v3)
  {
    v8 = *(&v20 + 1);
    v14 = v20;
    v9 = *(&v21 + 1);
    v7 = v21;
    v16 = *(&v22 + 1);
    v10 = v22;
    v17 = v23 & 0xE3 | 8;
    result = sub_2406771A8(&v20, v19);
  }

  else
  {
    v12 = v4 | (v5 << 8);
    v13 = 0x10000;
    if (!v6)
    {
      v13 = 0;
    }

    v14 = v12 | v13;
    result = sub_2406771E0(v8, v7, v9, v10);
    v16 = 0;
    v17 = 0;
  }

  *a1 = v14;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_2406762A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 72);
  v4 = *(result + 80);
  v5 = *(result + 81);
  v6 = *(result + 82);
  v7 = *(result + 88);
  v8 = *(result + 96);
  v9 = *(result + 104);
  v10 = *(result + 112);
  v11 = *(result + 136);
  v20 = *(result + 120);
  v21 = v11;
  v22 = *(result + 152);
  v23 = *(result + 168);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v14 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v15 = 0;
      v16 = 24;
    }

    else
    {
      v9 = *(result + 200);
      v10 = *(result + 208);
      v8 = *(result + 192);
      v7 = *(result + 184);
      v14 = *(result + 176);
      v17 = 256;
      if (!*(result + 217))
      {
        v17 = 0;
      }

      v15 = v17 | *(result + 216);
      v18 = *(result + 176);

      result = sub_24067715C(v8, v9, v10);
      v16 = 16;
    }
  }

  else if (v3)
  {
    v7 = *(&v20 + 1);
    v14 = v20;
    v9 = *(&v21 + 1);
    v8 = v21;
    v15 = *(&v22 + 1);
    v10 = v22;
    v16 = v23 & 0xE3 | 8;
    result = sub_2406771A8(&v20, v19);
  }

  else
  {
    v12 = v4 | (v5 << 8);
    v13 = 0x10000;
    if (!v6)
    {
      v13 = 0;
    }

    v14 = v12 | v13;
    result = sub_2406771E0(v7, v8, v9, v10);
    v15 = 0;
    v16 = 0;
  }

  *a2 = v14;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

double sub_240676404(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = a1[2];
  LOBYTE(v19) = v3;
  sub_240676624(v14);
  v5 = *(a2 + 184);
  v22 = *(a2 + 168);
  v23 = v5;
  v24 = *(a2 + 200);
  v25 = *(a2 + 216);
  v6 = *(a2 + 120);
  v18 = *(a2 + 104);
  v19 = v6;
  v7 = *(a2 + 152);
  v20 = *(a2 + 136);
  v21 = v7;
  v8 = *(a2 + 88);
  v16 = *(a2 + 72);
  v17 = v8;
  sub_24067712C(&v16);
  v9 = v14[7];
  *(a2 + 168) = v14[6];
  *(a2 + 184) = v9;
  *(a2 + 200) = v14[8];
  v10 = v14[3];
  *(a2 + 104) = v14[2];
  *(a2 + 120) = v10;
  v11 = v14[5];
  *(a2 + 136) = v14[4];
  *(a2 + 152) = v11;
  result = *v14;
  v13 = v14[1];
  *(a2 + 72) = v14[0];
  *(a2 + 216) = v15;
  *(a2 + 88) = v13;
  return result;
}

double DiscoveryModel.state.setter(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *&v20 = *a1;
  v2 = v20;
  *(&v20 + 1) = v3;
  *&v21 = v4;
  *(&v21 + 1) = v5;
  *&v22 = v6;
  *(&v22 + 1) = v7;
  LOBYTE(v23) = v8;
  sub_240676624(v18);
  sub_2406768E0(v2, v3, v4, v5, v6, v7, v8);
  v9 = *(v1 + 184);
  v26 = *(v1 + 168);
  v27 = v9;
  v28 = *(v1 + 200);
  v29 = *(v1 + 216);
  v10 = *(v1 + 120);
  v22 = *(v1 + 104);
  v23 = v10;
  v11 = *(v1 + 152);
  v24 = *(v1 + 136);
  v25 = v11;
  v12 = *(v1 + 88);
  v20 = *(v1 + 72);
  v21 = v12;
  sub_24067712C(&v20);
  v13 = v18[7];
  *(v1 + 168) = v18[6];
  *(v1 + 184) = v13;
  *(v1 + 200) = v18[8];
  v14 = v18[3];
  *(v1 + 104) = v18[2];
  *(v1 + 120) = v14;
  v15 = v18[5];
  *(v1 + 136) = v18[4];
  *(v1 + 152) = v15;
  result = *v18;
  v17 = v18[1];
  *(v1 + 72) = v18[0];
  *(v1 + 216) = v19;
  *(v1 + 88) = v17;
  return result;
}

uint64_t sub_240676624@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 48);
  v10 = (v9 >> 3) & 3;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v28 = *v1;

      sub_24067715C(v5, v6, v7);
      v20 = v3;
      result = (v8 >> 8) & 1;
      v17 = v8 & 1;
      v16 = v4 & 1;
      v19 = 0;
      LOBYTE(v21) = 0;
      v4 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = 0;
      v3 = MEMORY[0x277D84FA0];
      v26 = -96;
      LOBYTE(v11) = 2;
      v12 = 3;
    }

    else
    {
      v5 = 1;
      sub_2406769C4(1, 0, 0);
      v19 = 0;
      LOBYTE(v21) = 0;
      v4 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = 0;
      v16 = 0;
      v6 = 0;
      v7 = 0;
      v17 = 0;
      result = 0;
      v20 = MEMORY[0x277D84F90];
      v3 = MEMORY[0x277D84FA0];
      v26 = -96;
      v12 = 2;
      LOBYTE(v11) = 2;
    }

    v27 = MEMORY[0x277D84FA0];
    LOBYTE(v23) = 2;
    v22 = -96;
  }

  else
  {
    if (v10)
    {
      v22 = v9 & 0xE7;
      v27 = v1[1];
      v30[0] = v3;
      v30[1] = v4;
      v30[2] = v5;
      v30[3] = v6;
      v30[4] = v7;
      v30[5] = v8;
      v31 = v9 & 0xE7;
      sub_2406771A8(v30, v29);
      v12 = 1;
      sub_2406769C4(1, 0, 0);
      v23 = v5 >> 8;
      v13 = v5 & 1;
      v19 = 0;
      LOBYTE(v21) = 0;
      v4 = 0;
      v24 = 0;
      v25 = 0;
      v16 = 0;
      v17 = 0;
      result = 0;
      v20 = MEMORY[0x277D84F90];
      v26 = -96;
      LOBYTE(v11) = 2;
      v14 = v6;
      v15 = v7;
    }

    else
    {
      sub_2406771E0(v1[1], v1[2], v1[3], v1[4]);
      sub_2406769C4(1, 0, 0);
      v11 = v3 >> 8;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = 0;
      v16 = 0;
      v17 = 0;
      result = 0;
      v19 = v3 & 1;
      v20 = MEMORY[0x277D84F90];
      v21 = WORD1(v3) & 1;
      v22 = -96;
      LOBYTE(v23) = 2;
      v3 = MEMORY[0x277D84FA0];
      v24 = v5;
      v25 = v6;
      v26 = v7;
      v27 = MEMORY[0x277D84FA0];
    }

    v5 = 1;
    v6 = 0;
    v7 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v19;
  *(a1 + 9) = v11;
  *(a1 + 10) = v21;
  *(a1 + 16) = v4;
  *(a1 + 24) = v24;
  *(a1 + 32) = v25;
  *(a1 + 40) = v26;
  *(a1 + 48) = v3;
  *(a1 + 56) = v27;
  *(a1 + 64) = v13;
  *(a1 + 65) = v23;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v8;
  *(a1 + 96) = v22;
  *(a1 + 104) = v20;
  *(a1 + 112) = v16;
  *(a1 + 120) = v5;
  *(a1 + 128) = v6;
  *(a1 + 136) = v7;
  *(a1 + 144) = v17;
  *(a1 + 145) = result;
  return result;
}

void sub_2406768E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v9 = (a7 >> 3) & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {

      sub_2406769C4(a3, a4, a5);
    }
  }

  else
  {
    if (v9)
    {
      v16 = a7;

      v13 = v16 & 0xE7;
      a2 = a4;
      v11 = a5;
      v12 = a6;
    }

    else
    {
      v11 = a3;
      v12 = a4;
      v13 = a5;
    }

    sub_240604AE0(a2, v11, v12, v13);
  }
}

void *sub_2406769C4(void *result, uint64_t a2, unint64_t a3)
{
  if (result != 1)
  {

    return sub_24058C9E4(a2, a3);
  }

  return result;
}

void (*DiscoveryModel.state.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x110uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 264) = v1;
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 81);
  v8 = *(v1 + 82);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  v12 = *(v1 + 112);
  v13 = *(v1 + 120);
  v14 = *(v1 + 136);
  v15 = *(v1 + 152);
  *(v3 + 200) = *(v1 + 168);
  *(v3 + 184) = v15;
  *(v3 + 168) = v14;
  *(v3 + 152) = v13;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v18 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v19 = 0;
      v20 = 24;
    }

    else
    {
      v11 = *(v1 + 200);
      v12 = *(v1 + 208);
      v10 = *(v1 + 192);
      v9 = *(v1 + 184);
      v18 = *(v1 + 176);
      v21 = 256;
      if (!*(v1 + 217))
      {
        v21 = 0;
      }

      v19 = v21 | *(v1 + 216);

      sub_24067715C(v10, v11, v12);
      v20 = 16;
    }
  }

  else if (v5)
  {
    v18 = *(v3 + 152);
    v9 = *(v3 + 160);
    v10 = *(v3 + 168);
    v11 = *(v3 + 176);
    v12 = *(v3 + 184);
    v19 = *(v3 + 192);
    v20 = *(v3 + 200) & 0xE3 | 8;
    sub_2406771A8(v3 + 152, v3);
  }

  else
  {
    v16 = v6 | (v7 << 8);
    v17 = 0x10000;
    if (!v8)
    {
      v17 = 0;
    }

    v18 = v16 | v17;
    sub_2406771E0(v9, v10, v11, v12);
    v19 = 0;
    v20 = 0;
  }

  *(v4 + 208) = v18;
  *(v4 + 216) = v9;
  *(v4 + 224) = v10;
  *(v4 + 232) = v11;
  *(v4 + 240) = v12;
  *(v4 + 248) = v19;
  *(v4 + 256) = v20;
  return sub_240676BB8;
}

void sub_240676BB8(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 33);
  if (a2)
  {
    v4 = v2[256];
    v5 = *(v2 + 14);
    v45 = *(v2 + 13);
    v46 = v5;
    v47 = *(v2 + 15);
    v48 = v4;
    sub_240676624(&v35);
    v6 = *(v3 + 88);
    *v2 = *(v3 + 72);
    *(v2 + 1) = v6;
    v7 = *(v3 + 104);
    v8 = *(v3 + 120);
    v9 = *(v3 + 152);
    *(v2 + 4) = *(v3 + 136);
    *(v2 + 5) = v9;
    *(v2 + 2) = v7;
    *(v2 + 3) = v8;
    v10 = *(v3 + 168);
    v11 = *(v3 + 184);
    v12 = *(v3 + 200);
    *(v2 + 72) = *(v3 + 216);
    *(v2 + 7) = v11;
    *(v2 + 8) = v12;
    *(v2 + 6) = v10;
    sub_24067712C(v2);
    v13 = v42;
    *(v3 + 168) = v41;
    *(v3 + 184) = v13;
    *(v3 + 200) = v43;
    v14 = v38;
    *(v3 + 104) = v37;
    *(v3 + 120) = v14;
    v15 = v40;
    *(v3 + 136) = v39;
    *(v3 + 152) = v15;
    v16 = v36;
    *(v3 + 72) = v35;
    *(v3 + 216) = v44;
    *(v3 + 88) = v16;
    sub_2406768E0(*(v2 + 26), *(v2 + 27), *(v2 + 28), *(v2 + 29), *(v2 + 30), *(v2 + 31), v2[256]);
  }

  else
  {
    v18 = *(v2 + 27);
    v19 = *(v2 + 28);
    v20 = *(v2 + 29);
    v21 = *(v2 + 30);
    v22 = *(v2 + 31);
    v23 = v2[256];
    *&v45 = *(v2 + 26);
    v17 = v45;
    *(&v45 + 1) = v18;
    *&v46 = v19;
    *(&v46 + 1) = v20;
    *&v47 = v21;
    *(&v47 + 1) = v22;
    v48 = v23;
    sub_240676624(&v35);
    sub_2406768E0(v17, v18, v19, v20, v21, v22, v23);
    v24 = *(v3 + 88);
    *v2 = *(v3 + 72);
    *(v2 + 1) = v24;
    v25 = *(v3 + 104);
    v26 = *(v3 + 120);
    v27 = *(v3 + 152);
    *(v2 + 4) = *(v3 + 136);
    *(v2 + 5) = v27;
    *(v2 + 2) = v25;
    *(v2 + 3) = v26;
    v28 = *(v3 + 168);
    v29 = *(v3 + 184);
    v30 = *(v3 + 200);
    *(v2 + 72) = *(v3 + 216);
    *(v2 + 7) = v29;
    *(v2 + 8) = v30;
    *(v2 + 6) = v28;
    sub_24067712C(v2);
    v31 = v42;
    *(v3 + 168) = v41;
    *(v3 + 184) = v31;
    *(v3 + 200) = v43;
    v32 = v38;
    *(v3 + 104) = v37;
    *(v3 + 120) = v32;
    v33 = v40;
    *(v3 + 136) = v39;
    *(v3 + 152) = v33;
    v34 = v36;
    *(v3 + 72) = v35;
    *(v3 + 216) = v44;
    *(v3 + 88) = v34;
  }

  free(v2);
}

void DiscoveryModel.update(withPeer:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 1)
  {
    *(v1 + 304) = 0;
    *(v1 + 296) = 0;
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v3 = sub_240759AE4();
    __swift_project_value_buffer(v3, qword_280FADA00);
    oslog = sub_240759AC4();
    v4 = sub_24075A5D4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_240579000, oslog, v4, "Updated discovery model to unknown peer device, nil passed in", v5, 2u);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 16);
    v8 = *(a1 + 24) | ((*(a1 + 28) | (*(a1 + 30) << 16)) << 32);
    *(v1 + 304) = *(a1 + 28);
    if ((v8 & 0x1000000000000) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = BYTE6(v8) & 2;
    }

    *(v1 + 296) = v9;
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v10 = sub_240759AE4();
    __swift_project_value_buffer(v10, qword_280FADA00);
    v33[0] = v6;
    v33[1] = v2;
    v33[2] = v7;
    v36 = BYTE6(v8);
    v35 = WORD2(v8);
    v34 = v8;
    sub_240607D50(v33, v29);
    v11 = sub_240759AC4();
    v12 = sub_24075A5D4();
    sub_240609C84(v6, v2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      v29[0] = v6;
      *v13 = 136315138;
      v20 = v6;
      v21 = v2;
      v22 = v7;
      v23 = BYTE4(v7);
      v24 = v8;
      v25 = BYTE4(v8);
      v26 = BYTE5(v8);
      v27 = BYTE6(v8);
      v29[1] = v2;
      v29[2] = v7;
      v32 = BYTE6(v8);
      v31 = WORD2(v8);
      v30 = v8;
      sub_240607D50(v29, v19);
      v14 = sub_24075A0E4();
      v16 = sub_2405BBA7C(v14, v15, &v28);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_240579000, v11, v12, "Updated discovery model with peer device: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v13, -1, -1);
    }
  }
}

void *sub_24067715C(void *result, uint64_t a2, unint64_t a3)
{
  if (result != 1)
  {
    v6 = result;

    return sub_240618C78(a2, a3);
  }

  return result;
}

uint64_t sub_2406771E0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 == 4)
  {
  }

  if (v4 == 3 || !(a4 >> 5))
  {
  }

  return result;
}

unint64_t sub_240677234(char a1)
{
  result = 0x646E694B776F6C66;
  switch(a1)
  {
    case 1:
      result = 1701605234;
      break;
    case 2:
      result = 0x7541746567726174;
      break;
    case 3:
      result = 0x6E69506465786966;
      break;
    case 4:
      result = 0x6570795465646F63;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x44495344746C61;
      break;
    case 7:
      result = 0x656C6261646E6962;
      break;
    case 8:
      result = 0x526D6F74706D7973;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6976654472656570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2406773E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240684E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24067740C(uint64_t a1)
{
  v2 = sub_240684938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240677448(uint64_t a1)
{
  v2 = sub_240684938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BADF0, &qword_240770AE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = *v1;
  v48 = v1[1];
  v9 = *(v1 + 1);
  v46 = *(v1 + 2);
  v47 = v9;
  v10 = *(v1 + 4);
  v44 = *(v1 + 3);
  v45 = v10;
  v42 = *(v1 + 5);
  v43 = v1[48];
  v41 = v1[49];
  v11 = *(v1 + 8);
  v39 = *(v1 + 7);
  v40 = v11;
  v12 = *(v1 + 184);
  v73 = *(v1 + 168);
  v74 = v12;
  v75 = *(v1 + 200);
  v76 = *(v1 + 108);
  v13 = *(v1 + 120);
  v69 = *(v1 + 104);
  v70 = v13;
  v14 = *(v1 + 152);
  v71 = *(v1 + 136);
  v72 = v14;
  v15 = *(v1 + 88);
  v67 = *(v1 + 72);
  v68 = v15;
  v16 = *(v1 + 28);
  v37 = *(v1 + 29);
  v38 = v16;
  v17 = *(v1 + 30);
  v35 = *(v1 + 31);
  v36 = v17;
  v18 = *(v1 + 32);
  v33 = *(v1 + 33);
  v34 = v18;
  v19 = *(v1 + 34);
  v31 = *(v1 + 35);
  v32 = v19;
  v20 = *(v1 + 36);
  v29 = *(v1 + 37);
  v30 = v20;
  v21 = v1[304];
  v23 = a1[3];
  v22 = a1[4];
  v24 = a1;
  v26 = v25;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_240684938();
  sub_24075AF74();
  LOBYTE(v57) = v8;
  LOBYTE(v54[0]) = 0;
  sub_24068498C();
  v27 = v77;
  sub_24075ABE4();
  if (v27)
  {
    return (*(v4 + 8))(v7, v26);
  }

  LODWORD(v77) = v21;
  LOBYTE(v57) = v48;
  LOBYTE(v54[0]) = 1;
  sub_2406849E0();
  sub_24075ABE4();
  LOBYTE(v57) = 2;
  sub_24075AB64();
  LOBYTE(v57) = 3;
  sub_24075AB64();
  *&v57 = v42;
  BYTE8(v57) = v43;
  LOBYTE(v54[0]) = 4;
  sub_240684A34();
  sub_24075ABE4();
  LOBYTE(v57) = 5;
  sub_24075ABC4();
  LOBYTE(v57) = 6;
  sub_24075AB64();
  v63 = v73;
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v59 = v69;
  v60 = v70;
  v61 = v71;
  v62 = v72;
  v57 = v67;
  v58 = v68;
  v56 = 7;
  sub_2406770F4(&v67, v54);
  sub_240684A88();
  sub_24075ABE4();
  v54[6] = v63;
  v54[7] = v64;
  v54[8] = v65;
  v55 = v66;
  v54[2] = v59;
  v54[3] = v60;
  v54[4] = v61;
  v54[5] = v62;
  v54[0] = v57;
  v54[1] = v58;
  sub_24067712C(v54);
  v50 = v38;
  v51 = v37;
  v52 = v36;
  v53 = v35;
  v49 = 8;
  sub_2406424AC(v38, v37);
  sub_2405EE9C8();
  sub_24075AB94();
  sub_240609C34(v50, v51);
  LOBYTE(v50) = 9;
  sub_24075AB64();
  LOBYTE(v50) = 10;
  sub_24075AB64();
  v50 = v30;
  v49 = 11;
  type metadata accessor for AKUserAgeRange(0);
  sub_240686A38(&qword_27E4B8E00, type metadata accessor for AKUserAgeRange);
  sub_24075ABE4();
  v50 = v29;
  v49 = 12;
  sub_24075ABE4();
  LOBYTE(v50) = v77;
  v49 = 13;
  sub_240684ADC();
  sub_24075ABE4();
  return (*(v4 + 8))(0, v26);
}

uint64_t DiscoveryModel.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = *(v1 + 4);
  v7 = v1[48];
  v24 = v1[49];
  v8 = *(v1 + 8);
  v17 = *(v1 + 3);
  v18 = *(v1 + 7);
  v19 = *(v1 + 28);
  v20 = *(v1 + 31);
  v21 = *(v1 + 32);
  v25 = *(v1 + 33);
  v26 = *(v1 + 29);
  v9 = *(v1 + 35);
  v22 = *(v1 + 34);
  v23 = *(v1 + 5);
  v27 = *(v1 + 36);
  v28 = *(v1 + 37);
  v29 = v1[304];
  MEMORY[0x245CC6BA0](*v1);
  MEMORY[0x245CC6BA0](v3);
  if (v4)
  {
    sub_24075AE94();
    sub_24075A114();
    v10 = v9;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24075AE94();
    v10 = v9;
    if (v6)
    {
LABEL_3:
      sub_24075AE94();
      sub_24075A114();
      v11 = v25;
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      v12 = 1;
      goto LABEL_9;
    }
  }

  sub_24075AE94();
  v11 = v25;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v7 == 1)
  {
    v12 = 2;
LABEL_9:
    MEMORY[0x245CC6BA0](v12);
    v13 = v29;
    v14 = v28;
    v15 = v23;
    goto LABEL_11;
  }

  v15 = qword_240774388[v23];
  v13 = v29;
  v14 = v28;
LABEL_11:
  MEMORY[0x245CC6BA0](v15);
  sub_24075AE94();
  sub_24075AE94();
  if (v8)
  {
    sub_24075A114();
  }

  DiscoveryModel.BindableState.hash(into:)(a1);
  if (v26)
  {
    sub_24075AE94();
    sub_24075A114();
    sub_2405ED470(a1, v20);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_18:
    sub_24075AE94();
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_19:
    sub_24075AE94();
    goto LABEL_20;
  }

  sub_24075AE94();
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_15:
  sub_24075AE94();
  sub_24075A114();
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_16:
  sub_24075AE94();
  sub_24075A114();
LABEL_20:
  MEMORY[0x245CC6BA0](v27);
  MEMORY[0x245CC6BA0](v14);
  return MEMORY[0x245CC6BA0](qword_2407743A0[v13]);
}

uint64_t DiscoveryModel.hashValue.getter()
{
  sub_24075AE64();
  DiscoveryModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE28, &qword_240770AE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_240684938();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v119);

    sub_240609C34(0, 0);
  }

  else
  {
    v12 = v6;
    v53 = a2;
    LOBYTE(v54[0]) = 0;
    sub_240684B30();
    sub_24075AAF4();
    v13 = v55;
    LOBYTE(v54[0]) = 1;
    sub_240684B84();
    sub_24075AAF4();
    v14 = v55;
    LOBYTE(v55) = 2;
    v46 = sub_24075AA74();
    v44 = v14;
    v45 = v13;
    v49 = v15;
    LOBYTE(v55) = 3;
    v16 = sub_24075AA74();
    v47 = v17;
    v42 = v16;
    LOBYTE(v54[0]) = 4;
    sub_240684BD8();
    v43 = 0;
    sub_24075AAF4();
    v18 = v55;
    v19 = v56;
    LOBYTE(v55) = 5;
    v39 = sub_24075AAD4();
    v40 = v19;
    v41 = v18;
    LOBYTE(v55) = 6;
    v20 = sub_24075AA74();
    v38 = v21;
    v92 = 7;
    sub_240684C2C();
    sub_24075AAF4();
    v111 = v99;
    v112 = v100;
    v113 = v101;
    v107 = v95;
    v108 = v96;
    v109 = v97;
    v110 = v98;
    v105 = v93;
    v114 = v102;
    v106 = v94;
    LOBYTE(v54[0]) = 8;
    sub_2405EEDE4();
    sub_24075AAA4();
    v22 = v42;
    v51 = v56;
    v52 = v55;
    v48 = v57;
    v50 = v58;
    sub_240609C34(0, 0);
    LOBYTE(v55) = 9;
    v37 = v5;
    v36 = sub_24075AA74();
    v24 = v23;
    LOBYTE(v55) = 10;
    v35 = sub_24075AA74();
    v26 = v25;
    type metadata accessor for AKUserAgeRange(0);
    v28 = v27;
    LOBYTE(v54[0]) = 11;
    v33 = sub_240686A38(&qword_27E4B8E30, type metadata accessor for AKUserAgeRange);
    v34 = v28;
    sub_24075AAF4();
    v32 = v55;
    LOBYTE(v54[0]) = 12;
    sub_24075AAF4();
    v43 = v55;
    v90 = 13;
    sub_240684C80();
    sub_24075AAF4();
    LOBYTE(v28) = v39 & 1;
    LODWORD(v34) = v39 & 1;
    (*(v12 + 8))(v9, v37);
    v39 = v91;
    LOBYTE(v12) = v44;
    LOBYTE(v54[0]) = v45;
    BYTE1(v54[0]) = v44;
    *(v54 + 2) = v117;
    HIWORD(v54[0]) = v118;
    v54[1] = v46;
    v54[2] = v49;
    v54[3] = v22;
    v54[4] = v47;
    v54[5] = v41;
    LOBYTE(v54[6]) = v40;
    BYTE1(v54[6]) = v28;
    *(&v54[6] + 2) = v115;
    HIWORD(v54[6]) = v116;
    v54[7] = v20;
    v54[8] = v38;
    *&v54[21] = v111;
    *&v54[23] = v112;
    *&v54[25] = v113;
    LOWORD(v54[27]) = v114;
    *&v54[13] = v107;
    *&v54[15] = v108;
    *&v54[17] = v109;
    *&v54[19] = v110;
    *&v54[9] = v105;
    *&v54[11] = v106;
    *(&v54[27] + 2) = v103;
    HIWORD(v54[27]) = v104;
    v54[28] = v52;
    v54[29] = v51;
    v29 = v48;
    v54[30] = v48;
    v54[31] = v50;
    v54[32] = v36;
    v54[33] = v24;
    v54[34] = v35;
    v54[35] = v26;
    v54[36] = v32;
    v54[37] = v43;
    LOBYTE(v54[38]) = v91;
    memcpy(v53, v54, 0x131uLL);
    sub_240684CD4(v54, &v55);
    __swift_destroy_boxed_opaque_existential_1(v119);
    LOBYTE(v55) = v45;
    BYTE1(v55) = v12;
    *(&v55 + 2) = v117;
    HIWORD(v55) = v118;
    v56 = v46;
    v57 = v49;
    v58 = v22;
    v59 = v47;
    v60 = v41;
    v61 = v40;
    v62 = v34;
    v63 = v115;
    v64 = v116;
    v65 = v20;
    v66 = v38;
    v73 = v111;
    v74 = v112;
    v75 = v113;
    v76 = v114;
    v69 = v107;
    v70 = v108;
    v71 = v109;
    v72 = v110;
    v67 = v105;
    v68 = v106;
    v77 = v103;
    v78 = v104;
    v79 = v52;
    v80 = v51;
    v81 = v29;
    v82 = v50;
    v83 = v36;
    v84 = v24;
    v85 = v35;
    v86 = v26;
    v87 = v32;
    v88 = v43;
    v89 = v39;
    return sub_240684D0C(&v55);
  }
}

uint64_t sub_2406787A0()
{
  sub_24075AE64();
  DiscoveryModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406787E4()
{
  sub_24075AE64();
  DiscoveryModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_240678820(uint64_t a1)
{
  v2 = sub_240684DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067885C(uint64_t a1)
{
  v2 = sub_240684DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240678898()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_2406788C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_240678998(uint64_t a1)
{
  v2 = sub_240684D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406789D4(uint64_t a1)
{
  v2 = sub_240684D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240678A10(uint64_t a1)
{
  v2 = sub_240684D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240678A4C(uint64_t a1)
{
  v2 = sub_240684D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.Role.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE58, &qword_240770AF0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE60, &qword_240770AF8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE68, &qword_240770B00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240684D3C();
  sub_24075AF74();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_240684D90();
    sub_24075AB54();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_240684DE4();
    sub_24075AB54();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t DiscoveryModel.Role.hashValue.getter(char a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](a1 & 1);
  return sub_24075AED4();
}

uint64_t sub_240678DD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2406852B8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_240678E1C(uint64_t a1)
{
  v2 = sub_24068581C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240678E58(uint64_t a1)
{
  v2 = sub_24068581C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240678E94()
{
  v1 = 0x7075746573;
  v2 = 0x617267694D656761;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x726961706572;
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

uint64_t sub_240678F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240685918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240678F34(uint64_t a1)
{
  v2 = sub_240685774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240678F70(uint64_t a1)
{
  v2 = sub_240685774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240678FAC(uint64_t a1)
{
  v2 = sub_2406857C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240678FE8(uint64_t a1)
{
  v2 = sub_2406857C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240679024(uint64_t a1)
{
  v2 = sub_240685870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240679060(uint64_t a1)
{
  v2 = sub_240685870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067909C(uint64_t a1)
{
  v2 = sub_2406858C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406790D8(uint64_t a1)
{
  v2 = sub_2406858C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.FlowKind.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE88, &qword_240770B08);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE90, &qword_240770B10);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAE98, &qword_240770B18);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEA0, &qword_240770B20);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEA8, &qword_240770B28);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240685774();
  sub_24075AF74();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_24068581C();
      v12 = v29;
      sub_24075AB54();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_2406857C8();
      v12 = v32;
      sub_24075AB54();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_240685870();
    sub_24075AB54();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_2406858C4();
  sub_24075AB54();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

uint64_t DiscoveryModel.FlowKind.hashValue.getter(unsigned __int8 a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](a1);
  return sub_24075AED4();
}

void *sub_2406795D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240685A74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_240679634(uint64_t a1)
{
  v2 = sub_240686108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240679670(uint64_t a1)
{
  v2 = sub_240686108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406796AC(uint64_t a1)
{
  v2 = sub_2406860B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406796E8(uint64_t a1)
{
  v2 = sub_2406860B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240679724(uint64_t a1)
{
  v2 = sub_2406861B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240679760(uint64_t a1)
{
  v2 = sub_2406861B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24067979C(uint64_t a1)
{
  v2 = sub_240686204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406797D8(uint64_t a1)
{
  v2 = sub_240686204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240679814(uint64_t a1)
{
  v2 = sub_24068615C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240679850(uint64_t a1)
{
  v2 = sub_24068615C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.BindableState.Substate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAED8, &qword_240770B30);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEE0, &qword_240770B38);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEE8, &qword_240770B40);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEF0, &qword_240770B48);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAEF8, &qword_240770B50);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406860B4();
  sub_24075AF74();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_24068615C();
      v24 = v33;
      sub_24075AB54();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_240686108();
      v24 = v36;
      sub_24075AB54();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_2406861B0();
    v24 = v30;
    sub_24075AB54();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_240686204();
  sub_24075AB54();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t DiscoveryModel.BindableState.Substate.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t DiscoveryModel.BindableState.Substate.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF28, &qword_240770B58);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF30, &qword_240770B60);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF38, &qword_240770B68);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF40, &qword_240770B70);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF48, &unk_240770B78);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2406860B4();
  v21 = v53;
  sub_24075AF34();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_24075AB34();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_2405B8AF8();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_24075A8C4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v34 = &type metadata for DiscoveryModel.BindableState.Substate;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_2406861B0();
        v39 = v42;
        sub_24075AA54();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_240686204();
        v31 = v42;
        sub_24075AA54();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_24068615C();
      v38 = v42;
      sub_24075AA54();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_240686108();
      v40 = v42;
      sub_24075AA54();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t DiscoveryModel.BindableState.discovering.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 9);
  v3 = *(v1 + 10);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 40);
  *(a1 + 32) = v7;
  return sub_2406771E0(v4, v5, v6, v7);
}

__n128 DiscoveryModel.BindableState.discovering.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v8 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = a1[32];
  sub_240604AE0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  *(v1 + 10) = v4;
  result = v8;
  *(v1 + 16) = v8;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  return result;
}

__n128 DiscoveryModel.Discovered.init(accounts:services:connectionDecision:pairingState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4[1].n128_u64[0];
  v6 = a4[1].n128_u8[8];
  *(a5 + 16) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 17) = a3;
  result = *a4;
  *(a5 + 24) = *a4;
  *(a5 + 40) = v5;
  *(a5 + 48) = v6;
  return result;
}

uint64_t DiscoveryModel.BindableState.discovered.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v7[0] = *(v1 + 48);
  v7[1] = v2;
  v8 = *(v1 + 80);
  v3 = v8;
  v9 = *(v1 + 96);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_2406771A8(v7, v6);
}

__n128 DiscoveryModel.BindableState.discovered.setter(uint64_t a1)
{
  v3 = *(v1 + 64);
  v6[0] = *(v1 + 48);
  v6[1] = v3;
  v6[2] = *(v1 + 80);
  v7 = *(v1 + 96);
  sub_240686258(v6);
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  result = *(a1 + 32);
  *(v1 + 80) = result;
  *(v1 + 96) = *(a1 + 48);
  return result;
}

__n128 DiscoveryModel.ChooseFamilyMember.init(members:canCreateNewMembers:selectedMember:shouldProceed:shouldCreateNewMember:)@<Q0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, __n128 *a6@<X8>)
{
  v11 = *a3;
  v9 = a3[1].n128_u64[0];
  a6->n128_u64[0] = a1;
  a6->n128_u8[8] = a2;
  sub_2406769C4(1, 0, 0);
  result = v11;
  a6[1] = v11;
  a6[2].n128_u64[0] = v9;
  a6[2].n128_u8[8] = a4;
  a6[2].n128_u8[9] = a5;
  return result;
}

void *DiscoveryModel.BindableState.choosing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 145);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 41) = v7;

  return sub_24067715C(v3, v4, v5);
}

__n128 DiscoveryModel.BindableState.choosing.setter(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u8[8];
  v12 = a1[1];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u8[8];
  v6 = a1[2].n128_u8[9];
  v7 = *(v1 + 104);
  v8 = *(v1 + 120);
  v9 = *(v1 + 128);
  v10 = *(v1 + 136);

  sub_2406769C4(v8, v9, v10);
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  result = v12;
  *(v1 + 120) = v12;
  *(v1 + 136) = v4;
  *(v1 + 144) = v5;
  *(v1 + 145) = v6;
  return result;
}

uint64_t sub_24067A76C()
{
  v1 = 0x6574617473627573;
  v2 = 0x7265766F63736964;
  if (*v0 != 2)
  {
    v2 = 0x676E69736F6F6863;
  }

  if (*v0)
  {
    v1 = 0x7265766F63736964;
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

uint64_t sub_24067A7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24068A560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24067A81C(uint64_t a1)
{
  v2 = sub_240686288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067A858(uint64_t a1)
{
  v2 = sub_240686288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoveryModel.BindableState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF50, &qword_240770B88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = *v1;
  v36 = v1[8];
  v35 = v1[9];
  v34 = v1[10];
  v9 = *(v1 + 3);
  v40 = *(v1 + 2);
  v39 = v9;
  v38 = *(v1 + 4);
  v37 = v1[40];
  v10 = *(v1 + 4);
  v56 = *(v1 + 3);
  v57 = v10;
  v58 = *(v1 + 5);
  v59 = v1[96];
  v30 = *(v1 + 13);
  v29 = v1[112];
  v11 = *(v1 + 16);
  v33 = *(v1 + 15);
  v32 = v11;
  v31 = *(v1 + 17);
  v12 = v1[144];
  v13 = v1[145];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_240686288();
  sub_24075AF74();
  LOBYTE(v52) = v8;
  LOBYTE(v49[0]) = 0;
  sub_2406862DC();
  v19 = v60;
  sub_24075ABE4();
  if (!v19)
  {
    v28 = v13;
    LODWORD(v60) = v12;
    LOBYTE(v52) = v36;
    BYTE1(v52) = v35;
    BYTE2(v52) = v34;
    *(&v52 + 1) = v40;
    *&v53 = v39;
    *(&v53 + 1) = v38;
    LOBYTE(v54) = v37;
    LOBYTE(v49[0]) = 1;
    sub_2406771E0(v40, v39, v38, v37);
    sub_240686330();
    sub_24075ABE4();
    sub_240604AE0(*(&v52 + 1), v53, *(&v53 + 1), v54);
    v52 = v56;
    v53 = v57;
    v54 = v58;
    v55 = v59;
    v51 = 2;
    sub_2406771A8(&v56, v49);
    sub_240686384();
    sub_24075ABE4();
    v49[0] = v52;
    v49[1] = v53;
    v49[2] = v54;
    v50 = v55;
    sub_240686258(v49);
    v42 = v30;
    v43 = v29;
    v20 = v33;
    v44 = v33;
    v21 = v32;
    v45 = v32;
    v22 = v31;
    v46 = v31;
    v47 = v60;
    v48 = v28;
    v41 = 3;

    sub_24067715C(v20, v21, v22);
    sub_2406863D8();
    sub_24075ABE4();
    v23 = v44;
    v24 = v45;
    v25 = v46;

    sub_2406769C4(v23, v24, v25);
  }

  return (*(v4 + 8))(v7, v18);
}

uint64_t DiscoveryModel.BindableState.hash(into:)(__int128 *a1)
{
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = v1[40];
  v12 = *(v1 + 6);
  v13 = *(v1 + 7);
  v10 = v1[65];
  v17 = *(v1 + 10);
  v18 = *(v1 + 9);
  v16 = *(v1 + 11);
  v14 = v1[64];
  v15 = v1[96];
  v25 = *(v1 + 13);
  v24 = v1[112];
  v22 = *(v1 + 16);
  v23 = *(v1 + 15);
  v21 = *(v1 + 17);
  v19 = v1[145];
  v20 = v1[144];
  MEMORY[0x245CC6BA0](*v1);
  sub_24075AE94();
  if (v4 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(a1);
  sub_2405ED0F0(a1, v12);
  sub_2405F115C(a1, v13);
  sub_24075AE94();
  if (v10 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(a1);
  return DiscoveryModel.ChooseFamilyMember.hash(into:)(a1);
}

uint64_t DiscoveryModel.BindableState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = v0[40];
  v11 = *(v0 + 6);
  v12 = *(v0 + 7);
  v9 = v0[65];
  v16 = *(v0 + 10);
  v17 = *(v0 + 9);
  v15 = *(v0 + 11);
  v13 = v0[64];
  v14 = v0[96];
  v24 = *(v0 + 13);
  v23 = v0[112];
  v21 = *(v0 + 16);
  v22 = *(v0 + 15);
  v20 = *(v0 + 17);
  v18 = v0[145];
  v19 = v0[144];
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  sub_24075AE94();
  if (v3 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(v25);
  sub_2405ED0F0(v25, v11);
  sub_2405F115C(v25, v12);
  sub_24075AE94();
  if (v9 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  DiscoveryModel.PairingState.hash(into:)(v25);
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v25);
  return sub_24075AED4();
}

void *DiscoveryModel.BindableState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAF80, &qword_240770B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  sub_2406769C4(1, 0, 0);
  v10 = a1[3];
  v11 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_240686288();
  sub_24075AF34();
  if (v2)
  {
    v108 = 0;
    v50 = 0;
    v49 = 0;
    v14 = MEMORY[0x277D84FA0];
    v47 = 160;
    v48 = 2;
    v15 = MEMORY[0x277D84FA0];
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_240604AE0(0, 0, 0, 0xA0u);
    v60 = v15;
    *v61 = v14;
    v61[8] = v49;
    v61[9] = v48;
    *&v61[10] = v106;
    *&v61[14] = v107;
    *&v61[16] = v50;
    v62 = v108;
    v63 = 0;
    LOBYTE(v64) = v47;
    sub_240686258(&v60);

    return sub_2406769C4(1, 0, 0);
  }

  else
  {
    v12 = v6;
    LOBYTE(v51[0]) = 0;
    sub_24068642C();
    sub_24075AAF4();
    v13 = v60;
    LOBYTE(v51[0]) = 1;
    sub_240686480();
    sub_24075AAF4();
    v41 = BYTE1(v60);
    v42 = v60;
    v40 = BYTE2(v60);
    v44 = *v61;
    v45 = *&v61[16];
    v43 = v62;
    sub_240604AE0(0, 0, 0, 0xA0u);
    v95 = 2;
    sub_2406864D4();
    sub_24075AAF4();
    v38 = v13;
    v16 = v96;
    v17 = v97;
    v48 = v99;
    v49 = v98;
    v106 = v100;
    v107 = v101;
    v50 = v102;
    v108 = v103;
    v39 = v104;
    v47 = v105;
    v89[0] = MEMORY[0x277D84FA0];
    v89[1] = MEMORY[0x277D84FA0];
    v90 = 512;
    v92 = 0;
    v93 = 0;
    v91 = 0;
    v94 = -96;
    sub_240686258(v89);
    v81 = 3;
    sub_240686528();
    sub_24075AAF4();
    (*(v12 + 8))(v9, v5);
    v18 = v82;
    v34 = v83;
    v19 = v84;
    v36 = v84;
    v37 = v82;
    v33 = v85;
    v20 = v86;
    v35 = v86;
    v32 = v87;
    v21 = v88;

    sub_2406769C4(1, 0, 0);
    LOBYTE(v51[0]) = v38;
    BYTE8(v51[0]) = v42;
    BYTE9(v51[0]) = v41;
    BYTE10(v51[0]) = v40;
    v51[1] = v44;
    *&v52 = v45;
    BYTE8(v52) = v43;
    *&v53 = v16;
    *(&v53 + 1) = v17;
    LOBYTE(v54) = v49;
    BYTE1(v54) = v48;
    *(&v54 + 2) = v106;
    WORD3(v54) = v107;
    *(&v54 + 1) = v50;
    *&v55 = v108;
    *(&v55 + 1) = v39;
    LOBYTE(v56) = v47;
    *(&v56 + 1) = v18;
    LOBYTE(v18) = v34;
    LOBYTE(v57) = v34;
    *(&v57 + 1) = v19;
    v22 = v33;
    *&v58 = v33;
    *(&v58 + 1) = v20;
    LOBYTE(v20) = v32;
    LOBYTE(v59) = v32;
    HIBYTE(v59) = v21;
    v23 = v44;
    *a2 = v51[0];
    *(a2 + 16) = v23;
    v24 = v52;
    v25 = v53;
    v26 = v55;
    *(a2 + 64) = v54;
    *(a2 + 80) = v26;
    *(a2 + 32) = v24;
    *(a2 + 48) = v25;
    v27 = v56;
    v28 = v57;
    v29 = v58;
    *(a2 + 144) = v59;
    *(a2 + 112) = v28;
    *(a2 + 128) = v29;
    *(a2 + 96) = v27;
    sub_2406770F4(v51, &v60);
    __swift_destroy_boxed_opaque_existential_1(v46);
    LOBYTE(v60) = v38;
    v61[0] = v42;
    v61[1] = v41;
    v61[2] = v40;
    *&v61[8] = v44;
    v62 = v45;
    LOBYTE(v63) = v43;
    v64 = v16;
    v65 = v17;
    v66 = v49;
    v67 = v48;
    v68 = v106;
    v69 = v107;
    v70 = v50;
    v71 = v108;
    v72 = v39;
    v73 = v47;
    v74 = v37;
    v75 = v18;
    v76 = v36;
    v77 = v22;
    v78 = v35;
    v79 = v20;
    v80 = v21;
    return sub_24067712C(&v60);
  }
}

uint64_t sub_24067B6E4(__int128 *a1)
{
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v11 = *(v1 + 1);
  v6 = *(v1 + 4);
  v7 = v1[40];
  v8 = *(v1 + 13);
  v9 = v1[112];
  v15 = *(v1 + 120);
  v14 = *(v1 + 17);
  v12 = v1[145];
  v13 = v1[144];
  MEMORY[0x245CC6BA0](*v1);
  DiscoveryModel.Discovering.hash(into:)(a1);
  DiscoveryModel.Discovered.hash(into:)(a1);
  return DiscoveryModel.ChooseFamilyMember.hash(into:)(a1);
}

uint64_t sub_24067B7E0()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v10 = *(v0 + 1);
  v5 = *(v0 + 4);
  v6 = v0[40];
  v7 = *(v0 + 13);
  v8 = v0[112];
  v14 = *(v0 + 120);
  v13 = *(v0 + 17);
  v11 = v0[145];
  v12 = v0[144];
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  DiscoveryModel.Discovering.hash(into:)(v15);
  DiscoveryModel.Discovered.hash(into:)(v15);
  DiscoveryModel.ChooseFamilyMember.hash(into:)(v15);
  return sub_24075AED4();
}

uint64_t sub_24067B8F0(uint64_t a1)
{
  v2 = sub_2406865D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24067B92C(uint64_t a1)
{
  v2 = sub_2406865D0();

  return MEMORY[0x2821FE720](a1, v2);
}