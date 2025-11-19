uint64_t sub_22397DAF8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 232) == *(*a2 + 232) && *(*a1 + 240) == *(*a2 + 240))
  {
    return 1;
  }

  else
  {
    return sub_2239B3958();
  }
}

uint64_t sub_22397DB54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_2239B3A18();
  a3(v6);
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_22397DBDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_2239B3228();
}

uint64_t sub_22397DC68@<X0>(uint64_t *a1@<X8>)
{
  result = ConfigSection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22397DC90(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0xD000000000000010;
  sub_2239B3678();

  if (a1 <= 1u)
  {
    if (a1)
    {
      v8 = 0xD00000000000001CLL;
    }

    else
    {
      v8 = 0xD000000000000014;
    }

    if (a1)
    {
      v9 = "ignoredSummaryFields";
    }

    else
    {
      v9 = "Bug";
    }
  }

  else if (a1 == 2)
  {
    v9 = "keepUniqueValueSummaryFields";
  }

  else if (a1 == 3)
  {
    v9 = "maxSummaryValues";
    v8 = 0xD000000000000015;
  }

  else
  {
    v9 = "preserveSummaryFields";
    v8 = 0xD000000000000013;
  }

  v13 = v9 | 0x8000000000000000;
  MEMORY[0x223DEE030](0x676E697373696D20, 0xEE00206D6F726620);
  v10 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v10);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](a4, a5);
  sub_223973AD8();
  swift_allocError();
  *v11 = v8;
  *(v11 + 8) = v13;
  *(v11 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_22397DE34(char a1)
{
  sub_2239B3678();

  if (a1)
  {
    v2 = "monitorClientConnections";
    if (a1 == 1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 1)
    {
      v2 = "osTransactionTimeout";
    }
  }

  else
  {
    v3 = 0xD000000000000018;
    v2 = "siritts";
  }

  v7 = v3;
  v8 = v2 | 0x8000000000000000;
  MEMORY[0x223DEE030](0x676E697373696D20, 0xEE00206D6F726620);
  v4 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v4);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](1819242306, 0xE400000000000000);
  sub_223973AD8();
  swift_allocError();
  *v5 = v7;
  *(v5 + 8) = v8;
  *(v5 + 16) = 1;
  swift_willThrow();
  return 0;
}

uint64_t sub_22397DF94(char a1)
{
  sub_2239B3678();

  v6 = sub_2239A59E8(a1);
  v7 = v2;
  MEMORY[0x223DEE030](0x676E697373696D20, 0xEE00206D6F726620);
  v3 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v3);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](0xD000000000000017, 0x80000002239BA2C0);
  sub_223973AD8();
  swift_allocError();
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_22397E0B4(char a1)
{
  sub_2239B3678();

  v6 = sub_2239A59E8(a1);
  v7 = v2;
  MEMORY[0x223DEE030](0x676E697373696D20, 0xEE00206D6F726620);
  v3 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v3);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](0x656C62756F44, 0xE600000000000000);
  sub_223973AD8();
  swift_allocError();
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_22397E1CC(unsigned __int8 a1)
{
  sub_2239B3678();

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v2 = 0xE400000000000000;
      v3 = 1701667182;
    }

    else if (a1 == 4)
    {
      v2 = 0xEC0000006E6F6974;
      v3 = 0x6163696669746F6ELL;
    }

    else
    {
      v2 = 0xE400000000000000;
      v3 = 1701869940;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xEC00000065756C61;
      v3 = 0x56746C7561666564;
    }

    else
    {
      v2 = 0xE600000000000000;
      v3 = 0x6E69616D6F64;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x6570795461746164;
  }

  v7 = v3;
  v8 = v2;
  MEMORY[0x223DEE030](0x676E697373696D20, 0xEE00206D6F726620);
  v4 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v4);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](0x676E69727453, 0xE600000000000000);
  sub_223973AD8();
  swift_allocError();
  *v5 = v7;
  *(v5 + 8) = v8;
  *(v5 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_22397E38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_2239B3678();

  v14 = a4(a1);
  v15 = v10;
  MEMORY[0x223DEE030](0x676E697373696D20, 0xEE00206D6F726620);
  v11 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v11);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](a5, a6);
  sub_223973AD8();
  swift_allocError();
  *v12 = v14;
  *(v12 + 8) = v15;
  *(v12 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_22397E4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_2239B3678();

  v10 = a4(a1);
  v11 = v6;
  MEMORY[0x223DEE030](0x676E697373696D20, 0xEE00206D6F726620);
  v7 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v7);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](0x676E69727453, 0xE600000000000000);
  sub_223973AD8();
  swift_allocError();
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_22397E5D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF38, &qword_2239B5768);
  v37 = a2;
  result = sub_2239B3788();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
        v26 = v22;
      }

      v27 = *(v8 + 40);
      result = sub_2239B3568();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22397E858(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD50, &qword_2239B5760);
  result = sub_2239B3788();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_2239685CC(v25, v33);
      }

      else
      {
        sub_22395E644(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_2239B3A18();
      sub_2239B3228();

      result = sub_2239B3A78();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_2239685CC(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_19;
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
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22397EC48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD20, &unk_2239B4CF0);
  result = sub_2239B3788();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 2 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_2239B3A18();
      sub_2239B3A48();
      result = sub_2239B3A78();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

void *sub_22397EECC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD50, &qword_2239B5760);
  v2 = *v0;
  v3 = sub_2239B3778();
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
        v18 = *(*(v2 + 48) + v17);
        sub_22395E644(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2239685CC(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_22397F048()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD20, &unk_2239B4CF0);
  v2 = *v0;
  v3 = sub_2239B3778();
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
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
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

uint64_t _s18AudioAnalyticsBase6ConfigC12collapseKeysyShySSGSaySY_pSS8RawValueSYRts_XPGd_tFZ_0(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  v14 = MEMORY[0x277D84FA0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v6 + 32;
        v9 = *(v5 + 8 * v4);

        do
        {
          sub_223964C8C(v8, v13);
          __swift_project_boxed_opaque_existential_1(v13, v13[3]);
          sub_2239B3338();
          sub_2239967B8(&v12, v10, v11);

          __swift_destroy_boxed_opaque_existential_0Tm(v13);
          v8 += 40;
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v3);
    return v14;
  }

  return result;
}

uint64_t sub_22397F28C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a1 + 64;
  v34 = *a3;
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
  v9 = a2 + 56;

  v11 = 0;
  v35 = MEMORY[0x277D84F90];
  v36 = v4;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
LABEL_11:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = (*(a1 + 48) + ((v11 << 10) | (16 * v13)));
      v16 = *v14;
      v15 = v14[1];
      if (!*(a2 + 16))
      {

        goto LABEL_20;
      }

      v17 = *(a2 + 40);
      sub_2239B3A18();

      sub_2239B3228();
      v18 = sub_2239B3A78();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }

LABEL_20:
      v24 = v35;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22396C7F0(0, *(v35 + 16) + 1, 1);
        v24 = v35;
      }

      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        result = sub_22396C7F0((v25 > 1), v26 + 1, 1);
        v27 = v26 + 1;
        v24 = v35;
      }

      *(v24 + 16) = v27;
      v35 = v24;
      v28 = v24 + 16 * v26;
      *(v28 + 32) = v16;
      *(v28 + 40) = v15;
      v4 = v36;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(a2 + 48) + 16 * v20);
      v23 = *v22 == v16 && v22[1] == v15;
      if (v23 || (sub_2239B3958() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v4 = v36;
  }

  while (v7);
  while (1)
  {
LABEL_7:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  if (!*(v35 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_223968C1C(&qword_281335D60, &qword_27D09FE70, "<r");
  v29 = sub_2239B3128();
  v31 = v30;

  sub_2239B3678();

  v32 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v32);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v29, v31);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v33 = 0xD00000000000001ALL;
  *(v33 + 8) = 0x80000002239BA2E0;
  *(v33 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22397F6E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22397F734(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22397F788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD38, "n_");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22397F7F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD38, "n_");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22397F860()
{
  sub_2239B3678();

  v0 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v0);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](0x74533C7961727241, 0xED00003E676E6972);
  sub_223973AD8();
  swift_allocError();
  *v1 = 0xD00000000000001ALL;
  *(v1 + 8) = 0x80000002239BA2A0;
  *(v1 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_22397F96C(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_22396236C(0x4364656C62616E65, 0xEC00000073657361), (v3 & 1) != 0))
  {
    sub_22395E644(*(a1 + 56) + 32 * v2, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return sub_22397F860();
  }
}

uint64_t sub_22397FA84()
{
  sub_2239B3678();

  v0 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v0);

  MEMORY[0x223DEE030](0x746F6E20726F202CLL, 0xE900000000000020);
  MEMORY[0x223DEE030](0x676E69727453, 0xE600000000000000);
  sub_223973AD8();
  swift_allocError();
  *v1 = 0xD00000000000001BLL;
  *(v1 + 8) = 0x80000002239BA280;
  *(v1 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_22397FB80(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_22396236C(0x65566769666E6F63, 0xED00006E6F697372), (v3 & 1) != 0))
  {
    sub_22395E644(*(a1 + 56) + 32 * v2, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return sub_22397FA84();
  }
}

uint64_t sub_22397FCEC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_2239967B8(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_22397FD60()
{
  result = qword_2813367F0;
  if (!qword_2813367F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813367F0);
  }

  return result;
}

unint64_t sub_22397FDFC()
{
  result = qword_281336028[0];
  if (!qword_281336028[0])
  {
    type metadata accessor for Config();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281336028);
  }

  return result;
}

uint64_t type metadata accessor for Config()
{
  result = qword_2813367B0;
  if (!qword_2813367B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22397FEA4()
{
  result = qword_2813369F8;
  if (!qword_2813369F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813369F8);
  }

  return result;
}

uint64_t sub_22397FF00()
{
  result = sub_2239B3048();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Config.WorkerConfigs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Config.WorkerConfigs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CommonConfigFields.init(dict:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (*(result + 16) && (result = sub_22396236C(0xD000000000000010, 0x80000002239B9040), (v3 & 1) != 0) && (sub_22395E644(*(v2 + 56) + 32 * result, &v65), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v4 = sub_2239B0860(v63, v64);
    if ((v4 & 0x10000) != 0)
    {

      v65 = 0;
      v66 = 0xE000000000000000;
      sub_2239B3678();

      v65 = 0xD000000000000011;
      v66 = 0x80000002239BA300;
      MEMORY[0x223DEE030]();

      v37 = v65;
      v38 = v66;
      sub_223973AD8();
      swift_allocError();
      *v39 = v37;
      *(v39 + 8) = v38;
      *(v39 + 16) = 1;
      return swift_willThrow();
    }

    v67 = v4;

    v5 = 0;
  }

  else
  {
    v67 = 0;
    v5 = 1;
  }

  v68 = v5;
  v62 = v2;
  if (!*(v2 + 16))
  {
    v61 = 0;
    goto LABEL_20;
  }

  result = sub_22396236C(0x73646C697562, 0xE600000000000000);
  if ((v6 & 1) == 0)
  {
    v61 = 0;
    if (*(v2 + 16))
    {
      goto LABEL_15;
    }

LABEL_20:
    v60 = 0;
    goto LABEL_21;
  }

  sub_22395E644(*(v2 + 56) + 32 * result, &v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  result = swift_dynamicCast();
  v7 = v63;
  if (!result)
  {
    v7 = 0;
  }

  v61 = v7;
  if (!*(v2 + 16))
  {
    goto LABEL_20;
  }

LABEL_15:
  result = sub_22396236C(0x6C616E7265746E69, 0xE900000000000073);
  if (v8)
  {
    sub_22395E644(*(v2 + 56) + 32 * result, &v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF40, &qword_2239B5798);
    result = swift_dynamicCast();
    v9 = v63;
    if (!result)
    {
      v9 = 0;
    }

    v60 = v9;
    if (!*(v2 + 16))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v60 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_36;
    }
  }

  result = sub_22396236C(0xD000000000000010, 0x80000002239B90C0);
  if ((v12 & 1) == 0 || (sub_22395E644(*(v2 + 56) + 32 * result, &v65), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r"), result = swift_dynamicCast(), (result & 1) == 0))
  {
LABEL_21:
    if (*(v2 + 16))
    {
      result = sub_22396236C(0x6D726F6674616C70, 0xE900000000000073);
      if (v10)
      {
        sub_22395E644(*(v2 + 56) + 32 * result, &v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
        result = swift_dynamicCast();
        if (result)
        {
          v11 = v63;
          goto LABEL_74;
        }
      }
    }

LABEL_36:
    v59 = 0;
    v11 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (!v22)
    {
      goto LABEL_75;
    }

LABEL_37:
    v23 = 0;
    while (v23 < *(v11 + 16))
    {
      v24 = (v11 + 32 + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = qword_281336988;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = off_281336990;
      if (!*(off_281336990 + 2) || (v29 = *(off_281336990 + 5), sub_2239B3A18(), sub_2239B3228(), v30 = sub_2239B3A78(), v31 = -1 << v28[32], v32 = v30 & ~v31, ((*&v28[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32) & 1) == 0))
      {
LABEL_51:

        sub_223973AD8();
        swift_allocError();
        *v36 = v25;
        *(v36 + 8) = v26;
        *(v36 + 16) = 3;
        swift_willThrow();

        goto LABEL_52;
      }

      ++v23;
      v33 = ~v31;
      while (1)
      {
        v34 = (*(v28 + 6) + 16 * v32);
        v35 = *v34 == v25 && v34[1] == v26;
        if (v35 || (sub_2239B3958() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*&v28[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      if (v23 == v22)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return result;
  }

  v13 = *(v63 + 16);
  if (!v13)
  {

    v15 = MEMORY[0x277D84F90];
LABEL_56:
    v41 = *(v15 + 16);
    if (!v41)
    {
      v11 = MEMORY[0x277D84F90];
LABEL_73:

LABEL_74:

      v59 = v11;
      v22 = *(v11 + 16);
      if (!v22)
      {
LABEL_75:

        if (*(v62 + 16))
        {
          v51 = sub_22396236C(0xD000000000000012, 0x80000002239B9060);
          if (v52)
          {
            sub_22395E644(*(v62 + 56) + 32 * v51, &v65);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
            if (swift_dynamicCast())
            {
              v53 = v63;
            }

            else
            {
              v53 = 0;
            }

            if (!*(v62 + 16))
            {
              goto LABEL_88;
            }
          }

          else
          {
            v53 = 0;
            if (!*(v62 + 16))
            {
              goto LABEL_88;
            }
          }

          v54 = sub_22396236C(0xD000000000000018, 0x80000002239B9090);
          if (v55)
          {
            sub_22395E644(*(v62 + 56) + 32 * v54, &v65);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
            result = swift_dynamicCast();
            v56 = v63;
            if (!result)
            {
              v56 = 0;
            }

            goto LABEL_89;
          }
        }

        else
        {
          v53 = 0;
        }

LABEL_88:

        v56 = 0;
LABEL_89:
        v57 = v68;
        *a2 = v67;
        *(a2 + 2) = v57;
        *(a2 + 8) = v53;
        *(a2 + 16) = v56;
        *(a2 + 24) = v59;
        *(a2 + 32) = v61;
        *(a2 + 40) = v60;
        return result;
      }

      goto LABEL_37;
    }

    v42 = (v15 + 32);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        v43 = *v42++;
        v44 = *(*(&off_2784EB128 + v43) + 2);
        v45 = *(v11 + 16);
        v46 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          goto LABEL_91;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if (v46 <= *(v11 + 24) >> 1)
          {
            break;
          }
        }

        if (v45 <= v46)
        {
          v47 = v45 + v44;
        }

        else
        {
          v47 = v45;
        }

        result = sub_22396547C(result, v47, 1, v11);
        v11 = result;
        if (!v44)
        {
          goto LABEL_58;
        }

LABEL_68:
        if ((*(v11 + 24) >> 1) - *(v11 + 16) < v44)
        {
          goto LABEL_93;
        }

        swift_arrayInitWithCopy();

        v48 = *(v11 + 16);
        v49 = __OFADD__(v48, v44);
        v50 = v48 + v44;
        if (v49)
        {
          goto LABEL_94;
        }

        *(v11 + 16) = v50;
        if (!--v41)
        {
          goto LABEL_73;
        }
      }

      if (v44)
      {
        goto LABEL_68;
      }

LABEL_58:

      if (!--v41)
      {
        goto LABEL_73;
      }
    }
  }

  v65 = MEMORY[0x277D84F90];
  result = sub_2239828A0(0, v13, 0);
  v14 = 0;
  v15 = v65;
  v16 = (v63 + 40);
  while (1)
  {
    if (v14 >= *(v63 + 16))
    {
      goto LABEL_92;
    }

    v17 = *(v16 - 1);
    v18 = *v16;
    swift_bridgeObjectRetain_n();
    v19 = sub_2239B37B8();

    if (v19 >= 5)
    {
      break;
    }

    v65 = v15;
    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_2239828A0((v20 > 1), v21 + 1, 1);
      v15 = v65;
    }

    ++v14;
    *(v15 + 16) = v21 + 1;
    *(v15 + v21 + 32) = v19;
    v16 += 2;
    if (v13 == v14)
    {

      goto LABEL_56;
    }
  }

  sub_223973AD8();
  swift_allocError();
  *v40 = v17;
  *(v40 + 8) = v18;
  *(v40 + 16) = 4;
  swift_willThrow();

LABEL_52:
}

uint64_t sub_223980B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2239B3A18();
  sub_2239B3228();
  v7 = sub_2239B3A78();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2239B3958() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_223980C84(uint64_t a1, unint64_t a2)
{
  if (qword_2813366C0 != -1)
  {
    swift_once();
  }

  v4 = sub_2239B3048();
  __swift_project_value_buffer(v4, qword_2813366C8);

  oslog = sub_2239B3028();
  v5 = sub_2239B34E8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136380675;
    *(v6 + 4) = sub_223973B2C(a1, a2, &v9);
    _os_log_impl(&dword_22395C000, oslog, v5, "Unknown field, but allowing. { field=%{private}s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x223DEF1D0](v7, -1, -1);
    MEMORY[0x223DEF1D0](v6, -1, -1);
  }
}

uint64_t sub_223980DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2239B3678();

  MEMORY[0x223DEE030](a1, a2);
  MEMORY[0x223DEE030](0x636573206E692027, 0xEE0027206E6F6974);
  MEMORY[0x223DEE030](a3, a4);
  MEMORY[0x223DEE030](39, 0xE100000000000000);
  sub_223973AD8();
  swift_allocError();
  *v8 = 0x206E776F6E6B6E55;
  *(v8 + 8) = 0xEF2720646C656966;
  *(v8 + 16) = 1;
  return swift_willThrow();
}

uint64_t CommonKnownFields.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x73646C697562;
    v7 = 0xD000000000000012;
    if (v1 != 2)
    {
      v7 = 0x746E656D6D6F63;
    }

    if (!*v0)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6C616E7265746E69;
    v3 = 0x6D726F6674616C70;
    if (v1 == 7)
    {
      v3 = 0xD000000000000010;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000018;
    if (v1 == 4)
    {
      v4 = 0x73746E656D6D6F63;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

AudioAnalyticsBase::CommonKnownFields_optional __swiftcall CommonKnownFields.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2239810A4()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239ACA28();
  return sub_2239B3A78();
}

uint64_t sub_2239810F4()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239ACA28();
  return sub_2239B3A78();
}

uint64_t sub_223981144@<X0>(uint64_t *a1@<X8>)
{
  result = CommonKnownFields.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22398117C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        sub_2239B3678();

        v5 = 0xD000000000000016;
      }

      else
      {
        sub_2239B3678();

        v5 = 0xD000000000000014;
      }

      goto LABEL_14;
    }

    if (a3 == 2)
    {
      sub_2239B3678();

      v5 = 0xD000000000000019;
LABEL_14:
      v8 = v5;
      MEMORY[0x223DEE030](a1, a2);
      MEMORY[0x223DEE030](34, 0xE100000000000000);
      return v8;
    }

    v8 = 0;
    sub_2239B3678();
    MEMORY[0x223DEE030](0xD00000000000001DLL, 0x80000002239BA390);
    MEMORY[0x223DEE030](a1, a2);
    MEMORY[0x223DEE030](0xD000000000000012, 0x80000002239BA3B0);
    if (qword_281336988 != -1)
    {
      swift_once();
    }

    v6 = sub_2239B3448();
LABEL_18:
    MEMORY[0x223DEE030](v6);

    return v8;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4)
    {
      sub_2239B3678();

      v5 = 0xD00000000000001DLL;
      goto LABEL_14;
    }

    sub_2239B3678();

    v8 = 0xD000000000000023;
    MEMORY[0x223DEE030](a1, a2);
    MEMORY[0x223DEE030](0x6E776F6E6B202C22, 0xE90000000000003DLL);
    v6 = MEMORY[0x223DEE1A0](&unk_2836FD0F8, &type metadata for OperatingSystem);
    goto LABEL_18;
  }

  if (a3 == 6)
  {
    sub_2239B3678();

    v5 = 0xD000000000000018;
    goto LABEL_14;
  }

  if (a1 | a2)
  {
    return 0x726F467473696C70;
  }

  else
  {
    return 0x46746F4E656C6966;
  }
}

unint64_t sub_223981500(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2239B3A18();
  ConfigSection.rawValue.getter();
  sub_2239B3228();

  v4 = sub_2239B3A78();

  return sub_2239816D0(a1, v4);
}

unint64_t sub_22398158C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2239B3568();

  return sub_223981A74(a1, v5);
}

unint64_t sub_2239815D0(unsigned __int16 a1)
{
  v3 = *(v1 + 40);
  sub_2239B3A18();
  sub_2239B3A48();
  v4 = sub_2239B3A78();

  return sub_223981B38(a1, v4);
}

unint64_t sub_22398163C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2239B3188();
  sub_2239B3A18();
  sub_2239B3228();
  v4 = sub_2239B3A78();

  return sub_223981BA8(a1, v4);
}

unint64_t sub_2239816D0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v2 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v8 = 0xE300000000000000;
            v7 = 6513249;
          }

          else if (v6 == 10)
          {
            v8 = 0xE300000000000000;
            v7 = 7500916;
          }

          else
          {
            v8 = 0xE400000000000000;
            v7 = 1953719668;
          }
        }

        else if (v6 == 6)
        {
          v7 = 0x6F4D6D6574737973;
          v8 = 0xEE0073726F74696ELL;
        }

        else if (v6 == 7)
        {
          v8 = 0xE600000000000000;
          v7 = 0x726574756F72;
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x6E6970736C696174;
        }
      }

      else if (*(*(v2 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0x656972616D6D7573;
          v8 = 0xE900000000000073;
        }

        else if (v6 == 4)
        {
          v7 = 0x74726F7065526F69;
          v8 = 0xEB00000000676E69;
        }

        else
        {
          v7 = 0x74736F6E67616964;
          v8 = 0xEA00000000006369;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x726576726573;
        }

        else
        {
          v7 = 6517874;
        }

        if (v6 == 1)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE300000000000000;
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1953460082;
      }

      v9 = 1953719668;
      if (v5 == 10)
      {
        v9 = 7500916;
        v10 = 0xE300000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      if (v5 == 9)
      {
        v9 = 6513249;
        v10 = 0xE300000000000000;
      }

      v11 = 0x6E6970736C696174;
      if (v5 == 7)
      {
        v11 = 0x726574756F72;
      }

      v12 = 0xE800000000000000;
      if (v5 == 7)
      {
        v12 = 0xE600000000000000;
      }

      if (v5 == 6)
      {
        v11 = 0x6F4D6D6574737973;
        v12 = 0xEE0073726F74696ELL;
      }

      if (v5 <= 8)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x74736F6E67616964;
      if (v5 == 4)
      {
        v13 = 0x74726F7065526F69;
      }

      v14 = 0xEB00000000676E69;
      if (v5 != 4)
      {
        v14 = 0xEA00000000006369;
      }

      if (v5 == 3)
      {
        v13 = 0x656972616D6D7573;
        v14 = 0xE900000000000073;
      }

      v15 = 0x726576726573;
      if (v5 == 1)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v15 = 6517874;
        v16 = 0xE300000000000000;
      }

      if (!v5)
      {
        v15 = 1953460082;
        v16 = 0xE400000000000000;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v9;
      v18 = v5 <= 5 ? v14 : v10;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_2239B3958();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_223981A74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_223976B4C();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2239B3578();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_223981B38(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_223981BA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2239B3188();
      v9 = v8;
      if (v7 == sub_2239B3188() && v9 == v10)
      {
        break;
      }

      v12 = sub_2239B3958();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_223981CAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFF0, &qword_2239B5B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_223981DD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0028, &qword_2239B5BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0030, &qword_2239B5BC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223981F08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0018, &qword_2239B5BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223982028(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0000, &qword_2239B5B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223982134(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFD8, &unk_2239B5B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223982258(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFD0, &qword_2239B5B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22398237C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB0, &unk_2239B5B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_223982480(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0008, &qword_2239B5BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_223982584(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF78, &unk_2239B8670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_223982688(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF70, &unk_2239B5B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22398278C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFC0, &qword_2239B5B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_223982880(void *a1, int64_t a2, char a3)
{
  result = sub_223982AC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2239828A0(char *a1, int64_t a2, char a3)
{
  result = sub_22396DF6C(a1, a2, a3, *v3, &qword_27D0A0040, &qword_2239B5BD8);
  *v3 = result;
  return result;
}

char *sub_2239828D0(char *a1, int64_t a2, char a3)
{
  result = sub_223982C08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2239828F0(char *a1, int64_t a2, char a3)
{
  result = sub_223982D30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982910(char *a1, int64_t a2, char a3)
{
  result = sub_223982E50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982930(char *a1, int64_t a2, char a3)
{
  result = sub_223982F78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982950(char *a1, int64_t a2, char a3)
{
  result = sub_223983084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982970(char *a1, int64_t a2, char a3)
{
  result = sub_2239831A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982990(char *a1, int64_t a2, char a3)
{
  result = sub_2239832C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2239829B0(char *a1, int64_t a2, char a3)
{
  result = sub_2239833EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2239829D0(void *a1, int64_t a2, char a3)
{
  result = sub_223983514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2239829F0(char *a1, int64_t a2, char a3)
{
  result = sub_223983658(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982A10(char *a1, int64_t a2, char a3)
{
  result = sub_223983768(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982A30(char *a1, int64_t a2, char a3)
{
  result = sub_223983890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982A50(char *a1, int64_t a2, char a3)
{
  result = sub_22396DF6C(a1, a2, a3, *v3, &qword_27D0A0020, &qword_2239B5BB8);
  *v3 = result;
  return result;
}

char *sub_223982A80(char *a1, int64_t a2, char a3)
{
  result = sub_223983994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223982AA0(char *a1, int64_t a2, char a3)
{
  result = sub_223983AB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223982AC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFE0, &qword_2239B5B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFE8, &qword_2239B5B80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223982C08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFF0, &qword_2239B5B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223982D30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0018, &qword_2239B5BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223982E50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0010, &qword_2239B5BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223982F78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0000, &qword_2239B5B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223983084(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFF8, &qword_2239B5B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2239831A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFD8, &unk_2239B5B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2239832C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFD0, &qword_2239B5B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2239833EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFC8, &qword_2239B5B58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_223983514(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFA0, &qword_2239B5B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFA8, &qword_2239B5B38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223983658(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF98, &qword_2239B5B28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223983768(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF88, &qword_2239B5B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223983890(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF90, &qword_2239B5B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_223983994(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF80, &qword_2239B5B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223983AB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF70, &unk_2239B5B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_223983BB4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22396547C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_223983CA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_223982258(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_223983DA4()
{
  result = qword_27D09FF50;
  if (!qword_27D09FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09FF50);
  }

  return result;
}

unint64_t sub_223983DFC()
{
  result = qword_27D09FF58;
  if (!qword_27D09FF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09FF60, &qword_2239B5848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09FF58);
  }

  return result;
}

uint64_t sub_223983E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_223983ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonKnownFields(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommonKnownFields(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_18AudioAnalyticsBase11ConfigErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_2239840AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2239840F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_223984138(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_223984164(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281336988 != -1)
  {
    swift_once();
  }

  if ((sub_223980B8C(a2, a3, off_281336990) & 1) == 0)
  {
    sub_2239B3678();

    MEMORY[0x223DEE030](a2, a3);
    MEMORY[0x223DEE030](0x6E776F6E6B6E7520, 0xE900000000000021);
    v13 = 18;
    sub_223973AD8();
    swift_allocError();
    *v14 = 0xD000000000000012;
    *(v14 + 8) = 0x80000002239BA430;
    *(v14 + 16) = 1;
    swift_willThrow();
    return v13 & 1;
  }

  v31 = v3;
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v26 = *(v7 + 8);
  v27 = v7;
  v26(v30, v8, v7);
  v9 = v30[4];

  if (qword_2813369E0 == -1)
  {
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = swift_once();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (*(v9 + 16))
  {
    v28 = qword_2813369E8;
    v29 = qword_2813369F0;
    MEMORY[0x28223BE20](v10);
    v25 = &v28;
    v11 = v31;
    v12 = sub_223968CB8(sub_2239847DC, v24, v9);
    v31 = v11;

    if ((v12 & 1) == 0)
    {
      v13 = 0;
      return v13 & 1;
    }
  }

  else
  {
  }

LABEL_11:
  v26(v30, v8, v27);
  v15 = v30[3];

  if (v15)
  {
    if (*(v15 + 16))
    {
      v28 = a2;
      v29 = a3;
      MEMORY[0x28223BE20](v16);
      v25 = &v28;
      v17 = sub_223968CB8(sub_2239847DC, v24, v15);

      if ((v17 & 1) == 0)
      {
        v13 = 0;
        return v13 & 1;
      }
    }

    else
    {
    }
  }

  v26(v30, v8, v27);
  v18 = v30[5];

  if (qword_2813369D0 != -1)
  {
    swift_once();
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_33:
    v13 = 1;
    return v13 & 1;
  }

  if (!v18)
  {
    goto LABEL_33;
  }

LABEL_18:
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 32);
    do
    {
      v21 = v19-- != 0;
      v13 = v21;
      if (!v21)
      {
        break;
      }

      v22 = *v20++;
    }

    while (v22 != byte_2813369CB);
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_22398455C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = objc_opt_self();
  v5 = sub_2239B3158();
  v6 = [v4 buildPredicate_];

  result = v6;
  if (!v6)
  {
    sub_2239B3678();

    MEMORY[0x223DEE030](a1, a2);
    sub_223973AD8();
    swift_allocError();
    *v8 = 0xD00000000000002ALL;
    *(v8 + 8) = 0x80000002239BA450;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_223984678(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  if (a2)
  {
    v10 = sub_223980C84;
  }

  else
  {

    v10 = sub_2239847C0;
  }

  v11 = *(a1 + 16);

  if (v11)
  {
    v12 = (a1 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      swift_bridgeObjectRetain_n();
      v15._countAndFlagsBits = v14;
      v15._object = v13;
      Keys.init(rawValue:)(v15);
      if (v17 == 69)
      {
        v10(v14, v13);

        if (v4)
        {
          break;
        }
      }

      else
      {
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }
}

uint64_t String.stringArray.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2239B5BE0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return v4;
}

uint64_t Dictionary<>.stringArray.getter()
{
  sub_2239B30F8();

  swift_getWitnessTable();
  return sub_2239B3418();
}

uint64_t DefaultsProfile.__allocating_init(profile:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DefaultsProfile.init(profile:)(a1);
  return v5;
}

char *DefaultsProfile.init(profile:)(uint64_t a1)
{
  *(v1 + 3) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0048, &qword_2239B5CA0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *(v1 + 4) = v3;
  v4 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_logger;
  if (qword_281335DA0 != -1)
  {
    swift_once();
  }

  v5 = sub_2239B3048();
  v6 = __swift_project_value_buffer(v5, qword_281335DA8);
  (*(*(v5 - 8) + 16))(&v1[v4], v6, v5);
  v7 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_profileURL;
  v8 = sub_2239B2F28();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 16))(&v1[v7], a1, v8);
  (*(*v1 + 136))(v10);
  sub_223984D34();
  (*(v9 + 8))(a1, v8);
  return v1;
}

char *DefaultsProfile.deinit()
{
  (*(*v0 + 144))();
  sub_223985DA0((v0 + 16));
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_profileURL;
  v3 = sub_2239B2F28();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_logger;
  v5 = sub_2239B3048();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t DefaultsProfile.__deallocating_deinit()
{
  (*(*v0 + 144))();
  sub_223985DA0((v0 + 16));
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_profileURL;
  v3 = sub_2239B2F28();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_logger;
  v5 = sub_2239B3048();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_223984D34()
{
  v1 = v0;
  v2 = sub_2239B2F28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_logger;

  v41 = v7;
  v8 = sub_2239B3028();
  v9 = sub_2239B34D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43[0] = v11;
    *v10 = 136315138;
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_profileURL, v2);
    v12 = sub_2239B2F08();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_223973B2C(v12, v14, v43);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22395C000, v8, v9, "Reading profile. { profilePath=%s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223DEF1D0](v11, -1, -1);
    MEMORY[0x223DEF1D0](v10, -1, -1);
  }

  v16 = v1;
  v17 = [objc_opt_self() defaultManager];
  v18 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_profileURL;
  v19 = *(v3 + 16);
  v20 = v16;
  v19(v6, v16 + OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_profileURL, v2);
  sub_2239B2F08();
  v40 = *(v3 + 8);
  v40(v6, v2);
  v21 = sub_2239B3158();

  LODWORD(v16) = [v17 fileExistsAtPath_];

  if (v16)
  {
    v19(v6, v20 + v18, v2);
    v22 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v23 = sub_2239B2ED8();
    v24 = [v22 initWithContentsOfURL_];

    v40(v6, v2);
    if (v24 && (v43[0] = 0, sub_2239B30D8(), v24, v43[0]))
    {
      v25 = Dictionary<>.asSimpleType()(v43[0]);
    }

    else
    {
      v25 = 0;
    }

    v29 = sub_2239B3028();
    v30 = sub_2239B34D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v25;
      v43[0] = v32;
      *v31 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0050, &qword_2239B5CA8);
      v33 = sub_2239B31C8();
      v35 = sub_223973B2C(v33, v34, v43);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22395C000, v29, v30, "Read profile. { newContents=%s }", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x223DEF1D0](v32, -1, -1);
      MEMORY[0x223DEF1D0](v31, -1, -1);
    }

    v36 = *(v20 + 32);
    MEMORY[0x28223BE20](v37);
    *(&v39 - 2) = v25;

    os_unfair_lock_lock((v36 + 24));
    sub_223985DC8((v36 + 16), v43);
    os_unfair_lock_unlock((v36 + 24));

    v28 = LOBYTE(v43[0]);
  }

  else
  {
    v26 = *(v20 + 32);

    os_unfair_lock_lock((v26 + 24));
    v27 = *(v26 + 16);
    v28 = v27 != 0;
    if (v27)
    {
    }

    *(v26 + 16) = 0;
    os_unfair_lock_unlock((v26 + 24));
  }

  return v28;
}

uint64_t sub_223985254@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = a2 == 0;
  if (*a1)
  {
    if (a2)
    {
      v6 = sub_22396A45C(*a1, a2);
    }

    else
    {
      v6 = 0;
    }
  }

  *a1 = a2;
  *a3 = (v6 & 1) == 0;
}

uint64_t EmbeddedDefaultsProfile.__allocating_init(domainName:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  EmbeddedDefaultsProfile.init(domainName:)(a1, a2);
  return v7;
}

uint64_t EmbeddedDefaultsProfile.init(domainName:)(uint64_t a1, unint64_t a2)
{
  v29 = a2;
  v30 = a1;
  v2 = sub_2239B2EB8();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0058, &unk_2239B5CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = v28 - v7;
  v31 = sub_2239B2F28();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2239B3508();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_2239B3518();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2239B30B8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = OBJC_IVAR____TtC18AudioAnalyticsBase23EmbeddedDefaultsProfile_notificationQueue;
  sub_223976FB0();
  sub_2239B30A8();
  (*(v14 + 104))(v17, *MEMORY[0x277D85268], v13);
  v39 = MEMORY[0x277D84F90];
  sub_223976FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FED8, &qword_2239B52E0);
  sub_223977054();
  v21 = v28[1];
  sub_2239B3608();
  v22 = v29;
  *(v21 + v20) = sub_2239B3548();
  *(v21 + OBJC_IVAR____TtC18AudioAnalyticsBase23EmbeddedDefaultsProfile_notificationToken) = 0;
  v23 = v30;
  v39 = v30;
  v40 = v22;
  v37 = 0xD000000000000024;
  v38 = 0x80000002239BA4E0;
  v37 = sub_2239B32E8();
  v38 = v24;
  sub_2239B3248();
  v39 = v37;
  v40 = v38;
  if (v23 == 0xD000000000000012 && 0x80000002239BA510 == v22)
  {
  }

  else
  {
    v25 = sub_2239B3958();

    if ((v25 & 1) == 0)
    {
      MEMORY[0x223DEE030](0x7473696C702ELL, 0xE600000000000000);
    }
  }

  (*(v8 + 56))(v33, 1, 1, v31);
  (*(v35 + 104))(v34, *MEMORY[0x277CC91D8], v36);
  v26 = v32;
  sub_2239B2F18();
  DefaultsProfile.init(profile:)(v26);
  return v21;
}

uint64_t sub_2239857F8()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = *(v0 + OBJC_IVAR____TtC18AudioAnalyticsBase23EmbeddedDefaultsProfile_notificationQueue);
  v7[4] = sub_223986058;
  v7[5] = v1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_223985ABC;
  v7[3] = &block_descriptor_0;
  v3 = _Block_copy(v7);

  v4 = sub_2239B31E8();
  v5 = OBJC_IVAR____TtC18AudioAnalyticsBase23EmbeddedDefaultsProfile_notificationToken;
  swift_beginAccess();
  notify_register_dispatch((v4 + 32), (v0 + v5), v2, v3);
  swift_endAccess();

  _Block_release(v3);
}

uint64_t sub_223985944()
{
  if (qword_281335DA0 != -1)
  {
    swift_once();
  }

  v0 = sub_2239B3048();
  __swift_project_value_buffer(v0, qword_281335DA8);
  v1 = sub_2239B3028();
  v2 = sub_2239B34D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22395C000, v1, v2, "Received profileChanged notification.", v3, 2u);
    MEMORY[0x223DEF1D0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;

    v6 = sub_223984D34();
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *(v5 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v6 & 1, ObjectType, v8);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_223985ABC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_223985B10()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase23EmbeddedDefaultsProfile_notificationToken;
  swift_beginAccess();
  return notify_cancel(*(v0 + v1));
}

uint64_t EmbeddedDefaultsProfile.deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase23EmbeddedDefaultsProfile_notificationToken;
  swift_beginAccess();
  notify_cancel(*(v0 + v1));
  sub_223985DA0(v0 + 16);
  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_profileURL;
  v4 = sub_2239B2F28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_logger;
  v6 = sub_2239B3048();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t EmbeddedDefaultsProfile.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase23EmbeddedDefaultsProfile_notificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v1]);
  sub_223985DA0((v0 + 16));
  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_profileURL;
  v4 = sub_2239B2F28();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC18AudioAnalyticsBase15DefaultsProfile_logger;
  v6 = sub_2239B3048();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_223985E20()
{
  result = sub_2239B2F28();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2239B3048();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_223985FA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DefaultsUtilities.set(value:key:applicationID:userName:)(const void *a1)
{
  v2 = sub_2239B3078();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2239B30B8();
  v15 = *(v6 - 8);
  v16 = v6;
  v7 = *(v15 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2239B3158();
  v11 = sub_2239B3158();
  v12 = sub_2239B3158();
  CFPreferencesSetValue(v10, a1, v11, v12, *MEMORY[0x277CBF010]);

  if (qword_281336880 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_223986C7C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22396013C;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);
  sub_2239B3098();
  v18 = MEMORY[0x277D84F90];
  sub_22396091C(&unk_281336638, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0060, &qword_2239B5D70);
  sub_223960964(&qword_281336628, &qword_27D0A0060, &qword_2239B5D70);
  sub_2239B3608();
  MEMORY[0x223DEE310](0, v9, v5, v13);
  _Block_release(v13);
  (*(v17 + 8))(v5, v2);
  (*(v15 + 8))(v9, v16);
}

id static DefaultsUtilities.setGeneric<A>(value:key:applicationID:userName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[1] = a7;
  v10 = sub_2239B3078();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2239B30B8();
  v25 = *(v14 - 8);
  v26 = v14;
  v15 = *(v25 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22398671C(a1, a8);
  if (result)
  {
    v19 = result;
    swift_unknownObjectRetain();
    v20 = sub_2239B3158();
    v21 = sub_2239B3158();
    v22 = sub_2239B3158();
    CFPreferencesSetValue(v20, v19, v21, v22, *MEMORY[0x277CBF010]);

    if (qword_281336880 != -1)
    {
      swift_once();
    }

    aBlock[4] = sub_223986C7C;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22396013C;
    aBlock[3] = &block_descriptor_3;
    v23 = _Block_copy(aBlock);
    sub_2239B3098();
    v28 = MEMORY[0x277D84F90];
    sub_22396091C(&unk_281336638, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0060, &qword_2239B5D70);
    sub_223960964(&qword_281336628, &qword_27D0A0060, &qword_2239B5D70);
    sub_2239B3608();
    MEMORY[0x223DEE310](0, v17, v13, v23);
    _Block_release(v23);
    swift_unknownObjectRelease_n();
    (*(v27 + 8))(v13, v10);
    (*(v25 + 8))(v17, v26);
  }

  return result;
}

id sub_22398671C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  if (swift_dynamicCastMetatype())
  {
    (*(v4 + 16))(v10, a1, a2);
    if (swift_dynamicCast())
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    }
  }

  if (swift_dynamicCastMetatype() || (result = swift_conformsToProtocol2()) != 0 && (result = swift_conformsToProtocol2()) != 0)
  {
    (*(v4 + 16))(v8, a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0078, &qword_2239B5DA8);
    if (swift_dynamicCast())
    {
      sub_2239695C0(v15, v17);
      v12 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v13 = *(v12 + 8);
      sub_2239B3928();
      v14 = sub_2239B3158();

      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      return v14;
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      sub_2239870F4(v15);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2239869BC()
{
  v8 = sub_2239B3518();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_2239B3508() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_2239B30B8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7[1] = sub_223976FB0();
  sub_2239B3098();
  v9 = MEMORY[0x277D84F90];
  sub_22396091C(&qword_2813365F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FED8, &qword_2239B52E0);
  sub_223960964(&qword_281336620, &qword_27D09FED8, &qword_2239B52E0);
  sub_2239B3608();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v8);
  result = sub_2239B3548();
  qword_281336888 = result;
  return result;
}

uint64_t sub_223986C0C()
{
  type metadata accessor for PeriodicClosure();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0080, &qword_2239B5DB0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v0 + 16) = result;
  *(v0 + 24) = 0x4082C00000000000;
  off_2813368A0 = v0;
  return result;
}

uint64_t sub_223986C7C()
{
  if (qword_281336898 != -1)
  {
    swift_once();
  }

  v0 = *(off_2813368A0 + 2);

  os_unfair_lock_lock((v0 + 24));
  sub_223987168((v0 + 16), &v3);
  os_unfair_lock_unlock((v0 + 24));
  v1 = v3;

  if (v1)
  {
    sub_22396F840();
  }
}

uint64_t _s18AudioAnalyticsBase17DefaultsUtilitiesO6remove3key13applicationID8userNameySS_S2StFZ_0()
{
  v0 = sub_2239B3078();
  v15 = *(v0 - 8);
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2239B30B8();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2239B3158();
  v9 = sub_2239B3158();
  v10 = sub_2239B3158();
  CFPreferencesSetValue(v8, 0, v9, v10, *MEMORY[0x277CBF010]);

  if (qword_281336880 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_223986C7C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22396013C;
  aBlock[3] = &block_descriptor_13_0;
  v11 = _Block_copy(aBlock);
  sub_2239B3098();
  v16 = MEMORY[0x277D84F90];
  sub_22396091C(&unk_281336638, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0060, &qword_2239B5D70);
  sub_223960964(&qword_281336628, &qword_27D0A0060, &qword_2239B5D70);
  sub_2239B3608();
  MEMORY[0x223DEE310](0, v7, v3, v11);
  _Block_release(v11);
  (*(v15 + 8))(v3, v0);
  (*(v4 + 8))(v7, v14);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2239870F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0070, &qword_2239B5D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AudioAnalyticsBase::OperatingSystem_optional __swiftcall OperatingSystem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

char *_s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0()
{
  v0 = MEMORY[0x223DEDE30]();
  result = strerror(v0);
  if (result)
  {
    v2 = sub_2239B3268();
    v4 = v3;
    sub_2239B3678();

    v5 = sub_2239B3928();
    MEMORY[0x223DEE030](v5);

    MEMORY[0x223DEE030](0x727265727473202CLL, 0xEB000000003D726FLL);
    MEMORY[0x223DEE030](v2, v4);

    return 0x3D6F6E727265;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DeviceUtilities.isInLowPower()()
{
  if (qword_281336380 != -1)
  {
    swift_once();
  }

  sub_2239B3528();
  return v1;
}

uint64_t static DeviceUtilities.thermalStateString(from:)(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6C61636974697263;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x73756F69726573;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 1919508838;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6C616E696D6F6ELL;
  }
}

uint64_t sub_223987424()
{
  v2[3] = &type metadata for DeviceUtilities.Features;
  v2[4] = sub_223989B84();
  v0 = sub_2239B2FD8();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v2);
  byte_2813363B8 = v0 & 1;
  return result;
}

void sub_22398747C()
{
  word_281336330 = 0;
  qword_281336310 = 0xD000000000000017;
  *algn_281336318 = 0x80000002239BA6D0;
  qword_281336320 = 0xD00000000000001FLL;
  unk_281336328 = 0x80000002239B9F30;
}

uint64_t static DeviceUtilities.isGlitchTailspinEnabled.getter()
{
  if (qword_281336308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_223960C28();
  if (v0 == 2)
  {
    v1 = HIBYTE(word_281336330);
  }

  else
  {
    v1 = v0 & 1;
  }

  if (v0 == 2)
  {
    v2 = HIBYTE(word_281336330);
  }

  else
  {
    v2 = v0;
  }

  LOBYTE(word_281336330) = v1;
  swift_endAccess();
  return v2 & 1;
}

void sub_223987574()
{
  if (qword_2813369A0 != -1)
  {
    swift_once();
  }

  if (byte_2813369AE == 1 && (v0 = sub_223964914(), v1))
  {
    v2 = v1;
    if (v0 == 0x7972726163 && v1 == 0xE500000000000000 || (v3 = v0, (sub_2239B3958() & 1) != 0) || v3 == 0x756F62616B6C6177 && v2 == 0xE900000000000074)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2239B3958();
    }
  }

  else
  {
    v4 = 0;
  }

  byte_2813363AA = v4 & 1;
}

void sub_223987758(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = MobileGestalt_copy_deviceClass_obj();

    if (v7)
    {
      sub_2239B3188();

      sub_22396C8B8();
      v8 = sub_2239B35E8();

      *a4 = v8 & 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_223987820()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_27D0A008D = deviceClassNumber == 11;
  }

  else
  {
    __break(1u);
  }
}

void sub_223987894()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      v5[3] = &type metadata for AudioAnalytics;
      v5[4] = sub_223989B30();
      v3 = sub_2239B2FD8();
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      v4 = v3 ^ 1;
    }

    else
    {
      v4 = 0;
    }

    byte_2813369AE = v4 & 1;
  }

  else
  {
    __break(1u);
  }
}

id sub_223987940()
{
  result = sub_223987964();
  qword_2813369B8 = result;
  unk_2813369C0 = v1;
  return result;
}

id sub_223987964()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_deviceName_obj();

    if (v2)
    {
      v3 = sub_2239B3188();
      v5 = v4;

      if (qword_281336988 != -1)
      {
        swift_once();
      }

      if (sub_223980B8C(v3, v5, off_281336990))
      {
        return v3;
      }

      if (qword_281336648 != -1)
      {
        swift_once();
      }

      v6 = 0x656E6F685069;
      v12 = sub_2239B3048();
      __swift_project_value_buffer(v12, qword_281336650);

      v8 = sub_2239B3028();
      v13 = sub_2239B34E8();

      if (!os_log_type_enabled(v8, v13))
      {

        goto LABEL_17;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136380675;
      v16 = sub_223973B2C(v3, v5, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_22395C000, v8, v13, "Unknown platform. Defaulting to iPhone. { platform=%{private}s }", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x223DEF1D0](v15, -1, -1);
      v11 = v14;
    }

    else
    {
      if (qword_281336648 != -1)
      {
        swift_once();
      }

      v6 = 0x656E6F685069;
      v7 = sub_2239B3048();
      __swift_project_value_buffer(v7, qword_281336650);
      v8 = sub_2239B3028();
      v9 = sub_2239B34E8();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_17;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22395C000, v8, v9, "MobileGestalt.current.deviceName returned nil. Defaulting to iPhone.", v10, 2u);
      v11 = v10;
    }

    MEMORY[0x223DEF1D0](v11, -1, -1);
LABEL_17:

    return v6;
  }

  __break(1u);
  return result;
}

void sub_223987D54(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = sub_2239B3188();
      v12 = v11;

      *a3 = v10;
      *a4 = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_223987EB0(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_223987F2C()
{
  if (qword_2813369A0 != -1)
  {
    result = swift_once();
  }

  byte_2813369CB = byte_2813369AE;
  return result;
}

uint64_t static DeviceUtilities.internalOsInt.getter()
{
  if (qword_2813369D0 != -1)
  {
    swift_once();
  }

  return byte_2813369CB;
}

uint64_t sub_223987FE4()
{
  v0 = sub_22399139C(&unk_2836FB5D0);
  result = swift_arrayDestroy();
  off_281336990 = v0;
  return result;
}

uint64_t static DeviceUtilities.platforms.getter()
{
  if (qword_281336988 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2239880B4()
{
  v10 = sub_2239B3518();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2239B3508();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2239B30B8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_223976FB0();
  sub_2239B3098();
  v11 = MEMORY[0x277D84F90];
  sub_223976FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FED8, &qword_2239B52E0);
  sub_223968C1C(&qword_281336620, &qword_27D09FED8, &qword_2239B52E0);
  sub_2239B3608();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_2239B3548();
  qword_281336388 = result;
  return result;
}

uint64_t sub_223988308(double a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for PeriodicClosure();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0080, &qword_2239B5DB0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v5 + 16) = result;
  *(v5 + 24) = a1;
  *a3 = v5;
  return result;
}

uint64_t sub_223988380()
{
  v0 = sub_2239B3048();
  __swift_allocate_value_buffer(v0, qword_2813362F0);
  v1 = __swift_project_value_buffer(v0, qword_2813362F0);
  if (qword_281336648 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281336650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t OperatingSystem.rawValue.getter()
{
  v1 = *v0;
  v2 = 5459817;
  v3 = 1397716596;
  v4 = 0x534F63616DLL;
  if (v1 != 3)
  {
    v4 = 1397715576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x534F6863746177;
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

uint64_t sub_2239884D8()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239885A4()
{
  *v0;
  *v0;
  *v0;
  sub_2239B3228();
}

uint64_t sub_22398865C()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_223988730(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 1397716596;
  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x534F63616DLL;
  if (v2 != 3)
  {
    v8 = 1397715576;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F6863746177;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2239887C8()
{
  sub_2239B3A18();
  MEMORY[0x223DEE800](0);
  return sub_2239B3A78();
}

uint64_t sub_22398880C()
{
  sub_2239B3A18();
  MEMORY[0x223DEE800](0);
  return sub_2239B3A78();
}

void *sub_223988874(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD68, &qword_2239B4D70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2239888E8()
{
  v0 = sub_2239B32F8();
  v4 = sub_223988968(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_223988968(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2239B3218();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2239B35A8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_223988874(v9, 0);
  v12 = sub_223988AC0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2239B3218();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2239B36B8();
LABEL_4:

  return sub_2239B3218();
}

unint64_t sub_223988AC0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_223988CE0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2239B32B8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2239B36B8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_223988CE0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2239B3298();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_223988CE0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2239B32C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DEE080](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_223988D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_2239B32E8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2239888E8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2239B36B8();
      v7 = v60;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
              }

              v32 = -87;
            }

            else
            {
              v32 = -55;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_125;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

BOOL _s18AudioAnalyticsBase15DeviceUtilitiesO17hasRootsInstalledSbyFZ_0()
{
  v18[3] = *MEMORY[0x277D85DE8];
  v16 = 8;
  v17 = 0;
  v0 = sysctlbyname("kern.roots_installed", &v17, &v16, 0, 0);
  if (v0 == sub_2239B3068())
  {
    if (qword_2813362E8 != -1)
    {
      swift_once();
    }

    v1 = sub_2239B3048();
    __swift_project_value_buffer(v1, qword_2813362F0);
    v2 = sub_2239B3028();
    v3 = sub_2239B34F8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      swift_beginAccess();
      *(v4 + 4) = v17;
      _os_log_impl(&dword_22395C000, v2, v3, "Installed root info %llu", v4, 0xCu);
      MEMORY[0x223DEF1D0](v4, -1, -1);
    }

    swift_beginAccess();
    result = v17 != 0;
  }

  else
  {
    v6 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v8 = v7;
    if (qword_2813362E8 != -1)
    {
      swift_once();
    }

    v9 = sub_2239B3048();
    __swift_project_value_buffer(v9, qword_2813362F0);

    v10 = sub_2239B3028();
    v11 = sub_2239B34E8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136380675;
      v14 = sub_223973B2C(v6, v8, v18);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_22395C000, v10, v11, "hasRootsInstalled(): Unable to query kern.roots_installed { %{private}s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DEF1D0](v13, -1, -1);
      MEMORY[0x223DEF1D0](v12, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2239895A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t _s18AudioAnalyticsBase15DeviceUtilitiesO10hasSerial3SbyFZ_0()
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24 = 0;
  v0 = sysctlbyname("kern.bootargs", 0, &v24, 0, 0);
  if (v0 != sub_2239B3068())
  {
    if (qword_2813362E8 == -1)
    {
LABEL_6:
      v3 = sub_2239B3048();
      __swift_project_value_buffer(v3, qword_2813362F0);
      v4 = sub_2239B3028();
      v5 = sub_2239B34E8();
      if (!os_log_type_enabled(v4, v5))
      {
LABEL_17:

        v13 = 0;
        goto LABEL_18;
      }

      v6 = swift_slowAlloc();
      *v6 = 67174657;
      *(v6 + 4) = v0;
      _os_log_impl(&dword_22395C000, v4, v5, "hasSerial3(): kern.bootargs getsize failed. { result=%{private}d }", v6, 8u);
      v7 = v6;
LABEL_15:
      MEMORY[0x223DEF1D0](v7, -1, -1);
      goto LABEL_17;
    }

LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  v1 = v24;
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v24)
  {
    v2 = sub_2239B33E8();
    *(v2 + 16) = v1;
    bzero((v2 + 32), v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v8 = sysctlbyname("kern.bootargs", (v2 + 32), &v24, 0, 0);
  if (v8 != sub_2239B3068())
  {

    v14 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v16 = v15;
    if (qword_2813362E8 != -1)
    {
      swift_once();
    }

    v17 = sub_2239B3048();
    __swift_project_value_buffer(v17, qword_2813362F0);

    v4 = sub_2239B3028();
    v18 = sub_2239B34E8();

    if (!os_log_type_enabled(v4, v18))
    {

      goto LABEL_17;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136380675;
    v21 = sub_223973B2C(v14, v16, v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_22395C000, v4, v18, "hasSerial3(): kern.bootargs failed. { %{private}s }", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x223DEF1D0](v20, -1, -1);
    v7 = v19;
    goto LABEL_15;
  }

  v10 = sub_2239895A0(v2, v9);
  v12 = v11;

  v25[0] = v10;
  v25[1] = v12;
  sub_22396C8B8();
  v13 = sub_2239B35E8();

LABEL_18:
  v22 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

unint64_t sub_223989948()
{
  result = qword_27D0A00C8;
  if (!qword_27D0A00C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A00C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OperatingSystem(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OperatingSystem(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223989B30()
{
  result = qword_281336A90;
  if (!qword_281336A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281336A90);
  }

  return result;
}

unint64_t sub_223989B84()
{
  result = qword_2813362E0;
  if (!qword_2813362E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813362E0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_223989C60()
{
  result = qword_27D0A00E0;
  if (!qword_27D0A00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A00E0);
  }

  return result;
}

unint64_t sub_223989CB8()
{
  result = qword_27D0A00E8;
  if (!qword_27D0A00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A00E8);
  }

  return result;
}

uint64_t DiagnosticRulesConfig.init(onlyFireOncePerSession:interestedPredicates:minInterestedCount:minInterestedDelaySeconds:minFireDelaySeconds:minSessionLength:maxSessionLength:requiredDefault:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  if (a5)
  {
    a4 = 0.0;
  }

  *a9 = result;
  if (a7)
  {
    a6 = 3600.0;
  }

  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a6;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10 & 1;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12 & 1;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14;
  return result;
}

uint64_t sub_223989DF8(uint64_t a1, uint64_t a2)
{
  sub_2239B3678();

  MEMORY[0x223DEE030](a1, a2);
  sub_223973AD8();
  swift_allocError();
  *v4 = 0xD00000000000002ALL;
  *(v4 + 8) = 0x80000002239BA450;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

unint64_t sub_223989EB0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x64656C62616E65;
    v6 = 0xD000000000000014;
    if (a1 != 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0x6465726975716572;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_223989FF8()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239AC8B8();
  return sub_2239B3A78();
}

uint64_t sub_22398A048()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239AC8B8();
  return sub_2239B3A78();
}

uint64_t sub_22398A08C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22398A0F8();
  *a2 = result;
  return result;
}

unint64_t sub_22398A0BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_223989EB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22398A0F8()
{
  v0 = sub_2239B37B8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22398A144(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 16);
    result = MEMORY[0x277D84F90];
    if (v3)
    {
      v11 = MEMORY[0x277D84F90];
      sub_2239B36F8();
      v4 = objc_opt_self();
      for (i = (v2 + 40); ; i += 2)
      {
        v8 = *(i - 1);
        v7 = *i;

        v9 = sub_2239B3158();
        v10 = [v4 buildPredicate_];

        if (!v10)
        {
          sub_223989DF8(v8, v7);
          if (v1)
          {
            break;
          }
        }

        sub_2239B36C8();
        v6 = *(v11 + 16);
        sub_2239B3708();
        sub_2239B3718();
        sub_2239B36D8();
        if (!--v3)
        {
          return v11;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22398A28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 104) >> 33) & 0x7FFFFFFF | ((*(a1 + 152) >> 1) << 31);
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

double sub_22398A2E8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 232) = 0;
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 240) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = -a2 << 33;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0;
      *(a1 + 152) = 2;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      return result;
    }

    *(a1 + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22398A390(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152) & 1 | (a2 << 63);
  *(result + 104) &= 0x1FFFFFFFFuLL;
  *(result + 152) = v2;
  return result;
}

uint64_t sub_22398A3B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_22398A40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22398A474(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_223981500(5u);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22395E644(*(v2 + 56) + 32 * v4, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v105;
  v102 = sub_223974CC4(MEMORY[0x277D84F90]);
  v7 = 1 << *(v105 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v105 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_11:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v6 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      sub_22395E644(*(v6 + 56) + 32 * v14, &v121);
      *&v120 = v17;
      *(&v120 + 1) = v16;
      sub_22397F788(&v120, &v105);

      v18 = sub_2239B37B8();

      if (v18 < 0xC)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v106);
        sub_22397F788(&v120, &v105);

        sub_2239685CC(&v106, v135);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137 = v102;
        v20 = sub_223981500(v18);
        v22 = *(v102 + 16);
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_55;
        }

        if (*(v102 + 24) >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v104 = v20;
            v32 = v21;
            sub_22397EECC();
            v21 = v32;
            v20 = v104;
          }
        }

        else
        {
          v103 = v21;
          sub_22397E858(v25, isUniquelyReferenced_nonNull_native);
          v20 = sub_223981500(v18);
          v27 = v26 & 1;
          v21 = v103;
          if ((v103 & 1) != v27)
          {
            goto LABEL_57;
          }
        }

        v28 = v137;
        v102 = v137;
        if (v21)
        {
          v29 = (v137[7] + 32 * v20);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          sub_2239685CC(v135, v29);
        }

        else
        {
          v137[(v20 >> 6) + 8] |= 1 << v20;
          *(v28[6] + v20) = v18;
          sub_2239685CC(v135, (v28[7] + 32 * v20));
          v30 = v28[2];
          v24 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v24)
          {
            goto LABEL_56;
          }

          v28[2] = v31;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v106);
      }

      sub_22397F7F8(&v120);
      v11 = v12;
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      result = sub_2239B39A8();
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v136[0] = *(a1 + 1);
  v33 = a1[3];
  v34 = a1[4];
  v35 = *(a1 + 40);
  sub_22398AB90(v136, &v120);

  v36 = v102;
  v37 = sub_223975148(v102, v33, v34, v35);
  if (v1)
  {

    sub_22398ABEC(v136);
  }

  v38 = v37;
  if (v37)
  {
    v39 = *(v37 + 16);
    if (v39)
    {
      v100 = v35;
      v101 = v33;
      *&v135[0] = MEMORY[0x277D84F90];
      sub_223982990(0, v39, 0);
      v40 = *&v135[0];
      v41 = v39 - 1;
      for (i = 32; ; i += 224)
      {
        v43 = *(v38 + i + 16);
        v105 = *(v38 + i);
        v106 = v43;
        v44 = *(v38 + i + 32);
        v45 = *(v38 + i + 48);
        v46 = *(v38 + i + 80);
        v109 = *(v38 + i + 64);
        v110 = v46;
        v107 = v44;
        v108 = v45;
        v47 = *(v38 + i + 96);
        v48 = *(v38 + i + 112);
        v49 = *(v38 + i + 144);
        v113 = *(v38 + i + 128);
        v114 = v49;
        v111 = v47;
        v112 = v48;
        v50 = *(v38 + i + 160);
        v51 = *(v38 + i + 176);
        v52 = *(v38 + i + 208);
        v117 = *(v38 + i + 192);
        v118 = v52;
        v115 = v50;
        v116 = v51;
        sub_223974598(&v105, &v120);
        *&v135[0] = v40;
        v54 = *(v40 + 16);
        v53 = *(v40 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_223982990((v53 > 1), v54 + 1, 1);
          v40 = *&v135[0];
        }

        v130 = v115;
        v131 = v116;
        v132 = v117;
        v133 = v118;
        v126 = v111;
        v127 = v112;
        v128 = v113;
        v129 = v114;
        v122 = v107;
        v123 = v108;
        v124 = v109;
        v125 = v110;
        v120 = v105;
        v121 = v106;
        sub_22398ACBC(&v120);
        *(v40 + 16) = v54 + 1;
        v55 = (v40 + 240 * v54);
        v56 = v120;
        v57 = v122;
        v55[3] = v121;
        v55[4] = v57;
        v55[2] = v56;
        v58 = v123;
        v59 = v124;
        v60 = v126;
        v55[7] = v125;
        v55[8] = v60;
        v55[5] = v58;
        v55[6] = v59;
        v61 = v127;
        v62 = v128;
        v63 = v130;
        v55[11] = v129;
        v55[12] = v63;
        v55[9] = v61;
        v55[10] = v62;
        v64 = v131;
        v65 = v132;
        v66 = v134;
        v55[15] = v133;
        v55[16] = v66;
        v55[13] = v64;
        v55[14] = v65;
        if (!v41)
        {
          break;
        }

        --v41;
      }

      v36 = v102;
      v33 = v101;
      v35 = v100;
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v40 = 0;
  }

  v68 = sub_2239AF4E8(v36, v33, v34, v35);

  sub_22398ABEC(v136);

  v69 = MEMORY[0x277D84F90];
  if (v68)
  {
    v70 = *(v68 + 16);
    if (v70)
    {
      *&v135[0] = MEMORY[0x277D84F90];
      sub_223982990(0, v70, 0);
      v71 = *&v135[0];
      v72 = v70 - 1;
      for (j = 32; ; j += 240)
      {
        v74 = *(v68 + j);
        v75 = *(v68 + j + 32);
        v121 = *(v68 + j + 16);
        v122 = v75;
        v120 = v74;
        v76 = *(v68 + j + 48);
        v77 = *(v68 + j + 64);
        v78 = *(v68 + j + 96);
        v125 = *(v68 + j + 80);
        v126 = v78;
        v123 = v76;
        v124 = v77;
        v79 = *(v68 + j + 112);
        v80 = *(v68 + j + 128);
        v81 = *(v68 + j + 160);
        v129 = *(v68 + j + 144);
        v130 = v81;
        v127 = v79;
        v128 = v80;
        v82 = *(v68 + j + 176);
        v83 = *(v68 + j + 192);
        v84 = *(v68 + j + 224);
        v133 = *(v68 + j + 208);
        v134 = v84;
        v131 = v82;
        v132 = v83;
        sub_22398AC40(&v120, &v105);
        *&v135[0] = v71;
        v86 = *(v71 + 16);
        v85 = *(v71 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_223982990((v85 > 1), v86 + 1, 1);
          v71 = *&v135[0];
        }

        v117 = v132;
        v118 = v133;
        v119 = v134;
        v113 = v128;
        v114 = v129;
        v115 = v130;
        v116 = v131;
        v109 = v124;
        v110 = v125;
        v111 = v126;
        v112 = v127;
        v105 = v120;
        v106 = v121;
        v107 = v122;
        v108 = v123;
        sub_22398AC9C(&v105);
        *(v71 + 16) = v86 + 1;
        v87 = (v71 + 240 * v86);
        v88 = v105;
        v89 = v107;
        v87[3] = v106;
        v87[4] = v89;
        v87[2] = v88;
        v90 = v108;
        v91 = v109;
        v92 = v111;
        v87[7] = v110;
        v87[8] = v92;
        v87[5] = v90;
        v87[6] = v91;
        v93 = v112;
        v94 = v113;
        v95 = v115;
        v87[11] = v114;
        v87[12] = v95;
        v87[9] = v93;
        v87[10] = v94;
        v96 = v116;
        v97 = v117;
        v98 = v119;
        v87[15] = v118;
        v87[16] = v98;
        v87[13] = v96;
        v87[14] = v97;
        if (!v72)
        {
          break;
        }

        --v72;
      }

      v69 = MEMORY[0x277D84F90];
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  if (v40)
  {
    v99 = v40;
  }

  else
  {
    v99 = v69;
  }

  *&v120 = v99;
  sub_223983CA8(v71);
  result = v120;
  if (!*(v120 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22398AC9C(uint64_t result)
{
  v1 = *(result + 152) & 1 | 0x8000000000000000;
  *(result + 104) &= 0x1FFFFFFFFuLL;
  *(result + 152) = v1;
  return result;
}

uint64_t sub_22398ACBC(uint64_t result)
{
  v1 = *(result + 152) & 1;
  *(result + 104) &= 0x1FFFFFFFFuLL;
  *(result + 152) = v1;
  return result;
}

unint64_t sub_22398ACEC()
{
  result = qword_27D0A00F0;
  if (!qword_27D0A00F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A00F8, qword_2239B6228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A00F0);
  }

  return result;
}

unint64_t sub_22398AD54()
{
  result = qword_27D0A0100;
  if (!qword_27D0A0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0100);
  }

  return result;
}

Swift::Double __swiftcall Double.rounded(toPlaces:)(Swift::Int toPlaces)
{
  v2 = v1;
  v3 = __exp10(toPlaces);
  return round(v3 * v2) / v3;
}

uint64_t static EncryptionUtilities.decrypt(data:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22398B870(0xD000000000000084, 0x80000002239BA070, 1);
  if (!v2)
  {
    v5 = v4;
    a2 = sub_22398BC94(v4);
  }

  return a2;
}

uint64_t EncryptionError.hashValue.getter()
{
  v1 = *v0;
  sub_2239B3A18();
  MEMORY[0x223DEE800](v1);
  return sub_2239B3A78();
}

uint64_t sub_22398AEE4()
{
  v1 = *v0;
  sub_2239B3A18();
  MEMORY[0x223DEE800](v1);
  return sub_2239B3A78();
}

uint64_t sub_22398AF2C()
{
  v1 = *v0;
  sub_2239B3A18();
  MEMORY[0x223DEE800](v1);
  return sub_2239B3A78();
}

SecKeyRef static EncryptionUtilities.buildPrivateKey()()
{
  v14[17] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0108, &unk_2239B6320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B6310;
  v1 = *MEMORY[0x277CDC028];
  *(inited + 32) = sub_2239B3188();
  *(inited + 40) = v2;
  if (qword_281336870 != -1)
  {
    swift_once();
  }

  v3 = sub_2239B3158();
  type metadata accessor for CFString(0);
  *(inited + 72) = v4;
  *(inited + 48) = v3;
  v5 = *MEMORY[0x277CDC018];
  *(inited + 80) = sub_2239B3188();
  *(inited + 88) = v6;
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 256;
  sub_223974468(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD78, &unk_2239B4D80);
  swift_arrayDestroy();
  v14[0] = 0;
  v7 = sub_2239B30C8();

  RandomKey = SecKeyCreateRandomKey(v7, v14);

  if (!RandomKey)
  {
    v9 = v14[0];
    if (v14[0])
    {
      type metadata accessor for CFError(0);
      sub_22398BF38();
      swift_allocError();
      *v10 = v9;
    }

    else
    {
      sub_22398BF90();
      swift_allocError();
      *v11 = 0;
    }

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return RandomKey;
}

SecKeyRef static EncryptionUtilities.getPublicKey(privateKey:)(__SecKey *a1)
{
  result = SecKeyCopyPublicKey(a1);
  if (!result)
  {
    sub_22398BF90();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t static EncryptionUtilities.getBase64(fromKey:)(__SecKey *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v1 = SecKeyCopyExternalRepresentation(a1, error);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2239B2F78();
    v5 = v4;
    v6 = sub_2239B2F68();
    sub_22397F734(v3, v5);
  }

  else
  {
    if (qword_281336698 != -1)
    {
      swift_once();
    }

    v7 = sub_2239B3048();
    v6 = __swift_project_value_buffer(v7, qword_2813366A0);
    v8 = sub_2239B3028();
    v9 = sub_2239B34E8();
    if (os_log_type_enabled(v8, v9))
    {
      v6 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v6 = 136380675;
      swift_beginAccess();
      if (error[0])
      {
        v11 = error[0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0120, &qword_2239B6330);
      v12 = sub_2239B31C8();
      v14 = sub_223973B2C(v12, v13, &v18);

      *(v6 + 4) = v14;
      _os_log_impl(&dword_22395C000, v8, v9, "EncryptionUtilities: Failed in getBase64_fromKey: %{private}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x223DEF1D0](v10, -1, -1);
      MEMORY[0x223DEF1D0](v6, -1, -1);
    }

    swift_beginAccess();
    if (error[0])
    {
    }

    sub_22398BF90();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t static EncryptionUtilities.encryptToData(privateKey:data:)(__SecKey *a1, uint64_t a2, uint64_t a3)
{
  error[1] = *MEMORY[0x277D85DE8];
  v4 = SecKeyCopyPublicKey(a1);
  if (v4)
  {
    v5 = v4;
    error[0] = 0;
    if (qword_281336868 != -1)
    {
      swift_once();
    }

    v6 = qword_2813382C8;
    a3 = sub_2239B2F58();
    EncryptedData = SecKeyCreateEncryptedData(v5, v6, a3, error);

    if (EncryptedData)
    {
      a3 = sub_2239B2F78();
    }

    else
    {
      if (qword_281336698 != -1)
      {
        swift_once();
      }

      v9 = sub_2239B3048();
      __swift_project_value_buffer(v9, qword_2813366A0);
      v10 = sub_2239B3028();
      v11 = sub_2239B34E8();
      if (os_log_type_enabled(v10, v11))
      {
        a3 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v20 = v12;
        *a3 = 136380675;
        swift_beginAccess();
        if (error[0])
        {
          v13 = error[0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0120, &qword_2239B6330);
        v14 = sub_2239B31C8();
        v16 = sub_223973B2C(v14, v15, &v20);

        *(a3 + 4) = v16;
        _os_log_impl(&dword_22395C000, v10, v11, "EncryptionUtilities: Failed in encryptToBase64String: %{private}s", a3, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x223DEF1D0](v12, -1, -1);
        MEMORY[0x223DEF1D0](a3, -1, -1);
      }

      swift_beginAccess();
      if (error[0])
      {
      }

      sub_22398BF90();
      swift_allocError();
      *v17 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_22398BF90();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return a3;
}

__SecKey *static EncryptionUtilities.decryptToData(privateKey:base64String:)(__SecKey *a1)
{
  v2 = sub_2239B2F48();
  if (v3 >> 60 == 15)
  {
    sub_22398BF90();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }

  else
  {
    v5 = v2;
    v6 = v3;
    a1 = sub_22398BC94(a1);
    sub_22398BFE4(v5, v6);
  }

  return a1;
}

uint64_t sub_22398B80C()
{
  v0 = *MEMORY[0x277CDC030];
  result = sub_2239B3188();
  qword_2813382D0 = result;
  *algn_2813382D8 = v2;
  return result;
}

uint64_t sub_22398B870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  error[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2239B2F48();
  if (v5 >> 60 == 15)
  {
    sub_22398BF90();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
  }

  else
  {
    v7 = v4;
    v8 = v5;
    error[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0108, &unk_2239B6320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2239B46E0;
    v10 = *MEMORY[0x277CDC028];
    *(inited + 32) = sub_2239B3188();
    *(inited + 40) = v11;
    if (qword_281336870 != -1)
    {
      swift_once();
    }

    v12 = sub_2239B3158();
    type metadata accessor for CFString(0);
    *(inited + 72) = v13;
    *(inited + 48) = v12;
    v14 = *MEMORY[0x277CDC018];
    *(inited + 80) = sub_2239B3188();
    *(inited + 88) = v15;
    *(inited + 120) = MEMORY[0x277D83B88];
    *(inited + 96) = 256;
    v16 = *MEMORY[0x277CDBFE0];
    v17 = sub_2239B3188();
    v18 = MEMORY[0x277CDC000];
    *(inited + 128) = v17;
    *(inited + 136) = v19;
    if (a3)
    {
      v18 = MEMORY[0x277CDBFF0];
    }

    v20 = *v18;
    v21 = sub_2239B3188();
    *(inited + 168) = MEMORY[0x277D837D0];
    *(inited + 144) = v21;
    *(inited + 152) = v22;
    sub_223974468(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD78, &unk_2239B4D80);
    swift_arrayDestroy();
    v23 = sub_2239B2F58();
    v24 = sub_2239B30C8();

    a3 = SecKeyCreateWithData(v23, v24, error);

    if (a3)
    {
      sub_22398BFE4(v7, v8);
    }

    else
    {
      if (qword_281336698 != -1)
      {
        swift_once();
      }

      v25 = sub_2239B3048();
      __swift_project_value_buffer(v25, qword_2813366A0);
      v26 = sub_2239B3028();
      v27 = sub_2239B34E8();
      if (os_log_type_enabled(v26, v27))
      {
        a3 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v36 = v28;
        *a3 = 136380675;
        swift_beginAccess();
        if (error[0])
        {
          v29 = error[0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0120, &qword_2239B6330);
        v30 = sub_2239B31C8();
        v32 = sub_223973B2C(v30, v31, &v36);

        *(a3 + 4) = v32;
        _os_log_impl(&dword_22395C000, v26, v27, "EncryptionUtilities: Failed in getKey_fromBase64: %{private}s", a3, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x223DEF1D0](v28, -1, -1);
        MEMORY[0x223DEF1D0](a3, -1, -1);
      }

      swift_beginAccess();
      if (error[0])
      {
      }

      sub_22398BF90();
      swift_allocError();
      *v33 = 2;
      swift_willThrow();
      sub_22398BFE4(v7, v8);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_22398BC94(__SecKey *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  if (qword_281336868 != -1)
  {
    swift_once();
  }

  v2 = qword_2813382C8;
  v3 = sub_2239B2F58();
  DecryptedData = SecKeyCreateDecryptedData(a1, v2, v3, error);

  if (DecryptedData)
  {
    v5 = DecryptedData;
    v6 = sub_2239B2F78();
  }

  else
  {
    if (qword_281336698 != -1)
    {
      swift_once();
    }

    v7 = sub_2239B3048();
    v6 = __swift_project_value_buffer(v7, qword_2813366A0);
    v8 = sub_2239B3028();
    v9 = sub_2239B34E8();
    if (os_log_type_enabled(v8, v9))
    {
      v6 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v6 = 136380675;
      swift_beginAccess();
      if (error[0])
      {
        v11 = error[0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0120, &qword_2239B6330);
      v12 = sub_2239B31C8();
      v14 = sub_223973B2C(v12, v13, &v18);

      *(v6 + 4) = v14;
      _os_log_impl(&dword_22395C000, v8, v9, "EncryptionUtilities: Failed in decryptToData: %{private}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x223DEF1D0](v10, -1, -1);
      MEMORY[0x223DEF1D0](v6, -1, -1);
    }

    swift_beginAccess();
    if (error[0])
    {
    }

    sub_22398BF90();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_22398BF38()
{
  result = qword_27D0A0110;
  if (!qword_27D0A0110)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0110);
  }

  return result;
}

unint64_t sub_22398BF90()
{
  result = qword_27D0A0118;
  if (!qword_27D0A0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0118);
  }

  return result;
}

uint64_t sub_22398BFE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22397F734(a1, a2);
  }

  return a1;
}

unint64_t sub_22398BFFC()
{
  result = qword_27D0A0128;
  if (!qword_27D0A0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0128);
  }

  return result;
}

uint64_t IOReportingConfig.commonFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t IOReportingConfig.group.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t IOReportingConfig.subgroup.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_22398C170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_22398C1CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22398C244(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (!*(a1 + 16) || (v8 = sub_223981500(4u), (v9 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v8, &v69), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2813366C0 == -1)
    {
LABEL_19:
      v30 = sub_2239B3048();
      __swift_project_value_buffer(v30, qword_2813366C8);
      v31 = sub_2239B3028();
      v32 = sub_2239B34D8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22395C000, v31, v32, "No ioReporting section found.", v33, 2u);
        MEMORY[0x223DEF1D0](v33, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_46:
    swift_once();
    goto LABEL_19;
  }

  v10 = v67[0];
  v11 = *(v67[0] + 16);
  if (!v11)
  {

    v35 = MEMORY[0x277D84F90];
    v36 = *(MEMORY[0x277D84F90] + 16);
    if (!v36)
    {
      goto LABEL_38;
    }

LABEL_23:
    v37 = 0;
    v75 = MEMORY[0x277D84F90];
LABEL_24:
    v38 = 80 * v37 + 32;
    v39 = v37;
    while (v39 < *(v35 + 16))
    {
      v40 = v35;
      v41 = (v35 + v38);
      v69 = *(v35 + v38);
      v42 = *(v35 + v38 + 16);
      v43 = *(v35 + v38 + 32);
      v44 = *(v35 + v38 + 64);
      v72 = *(v35 + v38 + 48);
      v73 = v44;
      v70 = v42;
      v71 = v43;
      v68[3] = &type metadata for IOReportingConfig;
      v68[4] = &protocol witness table for IOReportingConfig;
      v68[0] = swift_allocObject();
      memmove((v68[0] + 16), v41, 0x50uLL);
      sub_22398C878(&v69, v67);
      sub_22398C878(&v69, v67);
      v45 = sub_223984164(v68, a2, a3);
      if (v5)
      {

        sub_22398C8B0(&v69);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
      }

      v46 = v45;
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      if (v46)
      {
        v47 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_223982950(0, *(v47 + 16) + 1, 1);
          v47 = v74;
        }

        v35 = v40;
        v50 = *(v47 + 16);
        v49 = *(v47 + 24);
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v75 = v50 + 1;
          sub_223982950((v49 > 1), v50 + 1, 1);
          v51 = v75;
          v35 = v40;
          v47 = v74;
        }

        v37 = v39 + 1;
        *(v47 + 16) = v51;
        v75 = v47;
        v52 = (v47 + 80 * v50);
        v52[2] = v69;
        v53 = v70;
        v54 = v71;
        v55 = v73;
        v52[5] = v72;
        v52[6] = v55;
        v52[3] = v53;
        v52[4] = v54;
        if (v36 - 1 != v39)
        {
          goto LABEL_24;
        }

        goto LABEL_39;
      }

      ++v39;
      sub_22398C8B0(&v69);
      v38 += 80;
      v35 = v40;
      if (v36 == v39)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_45;
  }

  v67[0] = MEMORY[0x277D84F90];
  sub_223982950(0, v11, 0);
  if (!*(v10 + 16))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v12 = 0;
  v13 = v67[0];
  v59 = v11 - 1;
  v58 = a4;
  while (1)
  {
    v14 = v13;
    v15 = *(v10 + 8 * v12 + 32);
    swift_bridgeObjectRetain_n();
    if ((a4 & 1) == 0)
    {
      sub_22399E1B0(v15);
      if (v5)
      {

        return swift_bridgeObjectRelease_n();
      }
    }

    v16 = v5;
    CommonConfigFields.init(dict:)(v15, &v69);
    if (v5)
    {
    }

    v64 = v69;
    v65 = *(&v69 + 1);
    v66 = v70;
    v17 = *(&v71 + 1);
    v75 = v71;
    LOBYTE(v68[0]) = BYTE2(v69);
    v63 = sub_22399C8C4(0, v15);
    v19 = v18;

    v62 = sub_22399C8C4(1, v15);
    v21 = v20;

    if (v19)
    {

      goto LABEL_13;
    }

    if (!v21)
    {
      sub_223973AD8();
      swift_allocError();
      *v57 = 0xD00000000000004ALL;
      *(v57 + 8) = 0x80000002239BA790;
      *(v57 + 16) = 1;
      swift_willThrow();
    }

LABEL_13:
    v22 = v10;
    v23 = v68[0];
    v13 = v14;
    v67[0] = v14;
    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_223982950((v24 > 1), v25 + 1, 1);
      v13 = v67[0];
    }

    *(v13 + 16) = v25 + 1;
    v26 = v13 + 80 * v25;
    *(v26 + 32) = v64;
    *(v26 + 34) = v23;
    v27 = BYTE4(v69);
    *(v26 + 35) = v69;
    *(v26 + 39) = v27;
    *(v26 + 40) = v65;
    *(v26 + 48) = v66;
    v28 = v75;
    *(v26 + 56) = *(&v66 + 1);
    *(v26 + 64) = v28;
    *(v26 + 72) = v17;
    *(v26 + 80) = v63;
    *(v26 + 88) = v19;
    *(v26 + 96) = v62;
    *(v26 + 104) = v21;
    if (v59 == v12)
    {
      break;
    }

    v10 = v22;
    v29 = *(v22 + 16);
    ++v12;
    v5 = v16;
    a4 = v58;
    if (v12 >= v29)
    {
      goto LABEL_44;
    }
  }

  v56 = v13;

  v35 = v56;
  v5 = v16;
  v36 = *(v35 + 16);
  if (v36)
  {
    goto LABEL_23;
  }

LABEL_38:
  v75 = MEMORY[0x277D84F90];
LABEL_39:

  return v75;
}

AudioAnalyticsBase::Keys_optional __swiftcall Keys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B3968();

  v5 = 0;
  v6 = 51;
  switch(v3)
  {
    case 0:
      goto LABEL_68;
    case 1:
      v5 = 1;
      goto LABEL_68;
    case 2:
      v5 = 2;
      goto LABEL_68;
    case 3:
      v5 = 3;
      goto LABEL_68;
    case 4:
      v5 = 4;
      goto LABEL_68;
    case 5:
      v5 = 5;
      goto LABEL_68;
    case 6:
      v5 = 6;
      goto LABEL_68;
    case 7:
      v5 = 7;
      goto LABEL_68;
    case 8:
      v5 = 8;
      goto LABEL_68;
    case 9:
      v5 = 9;
      goto LABEL_68;
    case 10:
      v5 = 10;
      goto LABEL_68;
    case 11:
      v5 = 11;
      goto LABEL_68;
    case 12:
      v5 = 12;
      goto LABEL_68;
    case 13:
      v5 = 13;
      goto LABEL_68;
    case 14:
      v5 = 14;
      goto LABEL_68;
    case 15:
      v5 = 15;
      goto LABEL_68;
    case 16:
      v5 = 16;
      goto LABEL_68;
    case 17:
      v5 = 17;
      goto LABEL_68;
    case 18:
      v5 = 18;
      goto LABEL_68;
    case 19:
      v5 = 19;
      goto LABEL_68;
    case 20:
      v5 = 20;
      goto LABEL_68;
    case 21:
      v5 = 21;
      goto LABEL_68;
    case 22:
      v5 = 22;
      goto LABEL_68;
    case 23:
      v5 = 23;
      goto LABEL_68;
    case 24:
      v5 = 24;
      goto LABEL_68;
    case 25:
      v5 = 25;
      goto LABEL_68;
    case 26:
      v5 = 26;
      goto LABEL_68;
    case 27:
      v5 = 27;
      goto LABEL_68;
    case 28:
      v5 = 28;
      goto LABEL_68;
    case 29:
      v5 = 29;
      goto LABEL_68;
    case 30:
      v5 = 30;
      goto LABEL_68;
    case 31:
      v5 = 31;
      goto LABEL_68;
    case 32:
      v5 = 32;
      goto LABEL_68;
    case 33:
      v5 = 33;
      goto LABEL_68;
    case 34:
      v5 = 34;
      goto LABEL_68;
    case 35:
      v5 = 35;
      goto LABEL_68;
    case 36:
      v5 = 36;
      goto LABEL_68;
    case 37:
      v5 = 37;
      goto LABEL_68;
    case 38:
      v5 = 38;
      goto LABEL_68;
    case 39:
      v5 = 39;
      goto LABEL_68;
    case 40:
      v5 = 40;
      goto LABEL_68;
    case 41:
      v5 = 41;
      goto LABEL_68;
    case 42:
      v5 = 42;
      goto LABEL_68;
    case 43:
      v5 = 43;
      goto LABEL_68;
    case 44:
      v5 = 44;
      goto LABEL_68;
    case 45:
      v5 = 45;
      goto LABEL_68;
    case 46:
      v5 = 46;
      goto LABEL_68;
    case 47:
      v5 = 47;
      goto LABEL_68;
    case 48:
      v5 = 48;
      goto LABEL_68;
    case 49:
      v5 = 49;
      goto LABEL_68;
    case 50:
      v5 = 50;
LABEL_68:
      v6 = v5;
      break;
    case 51:
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    case 65:
      v6 = 65;
      break;
    case 66:
      v6 = 66;
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    default:
      v6 = 69;
      break;
  }

  *v2 = v6;
  return result;
}