void *sub_1C9A33C84(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1C9A93488();
    type metadata accessor for SNModelFeatureConnection();
    sub_1C9A34500(&unk_1EC3C55C0);
    result = sub_1C9A92B68();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v17 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v11 = v19 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v21 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_1C9A934F8())
        {
          goto LABEL_25;
        }

        type metadata accessor for SNModelFeatureConnection();
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v20;
        v7 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C9A33E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  sub_1C9A3815C();
  v12 = v11 & v10;
  if (!v6)
  {
    sub_1C9A385D8();
LABEL_18:
    *v5 = v8;
    v5[1] = v4;
    v5[2] = ~v9;
    v5[3] = v15;
    v5[4] = v12;
    return;
  }

  v13 = v7;
  if (!v7)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = v6;
    v27 = v9;
    v28 = v5;
    sub_1C9A3816C();
    v19 = (v17 - v18) >> 6;
    while (1)
    {
      if (v16 >= v13)
      {
        goto LABEL_21;
      }

      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

      if (!v12)
      {
        while (1)
        {
          v21 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v12 = 0;
            goto LABEL_16;
          }

          v12 = *(v4 + 8 * v21);
          ++v15;
          if (v12)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = v15;
LABEL_12:
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v23 = v8;
      v24 = (*(v8 + 56) + 24 * (v22 | (v21 << 6)));
      v25 = v24[1];
      v26 = v24[2];
      *v14 = *v24;
      v14[1] = v25;
      v14[2] = v26;
      if (v20 == v13)
      {
        break;
      }

      v14 += 3;

      v16 = v20;
      v15 = v21;
      v8 = v23;
    }

    v15 = v21;
    v8 = v23;
LABEL_16:
    v9 = v27;
    v5 = v28;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C9A34010()
{
  sub_1C9A386A8();
  v4 = v1 + 64;
  sub_1C9A38100();
  if (!v6)
  {
    sub_1C9A385D8();
LABEL_17:
    sub_1C9A3825C(v8);
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_1C9A38140();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      sub_1C9A380B8(__clz(__rbit64(v2)));
      if (v12)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v0 += 16;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1C9A34108(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return sub_1C9A385E4(result, a2, a3);
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C9A3418C(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 56) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C9A34274()
{
  result = qword_1EC3D2408;
  if (!qword_1EC3D2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2408);
  }

  return result;
}

unint64_t sub_1C9A342C8(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3D2410);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C9A34334(uint64_t a1)
{
  v2 = type metadata accessor for CLAP.DetectorAudioFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C9A343B0()
{
  result = qword_1EC3D2438;
  if (!qword_1EC3D2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2438);
  }

  return result;
}

unint64_t sub_1C9A34404()
{
  result = qword_1EC3D2458;
  if (!qword_1EC3D2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2458);
  }

  return result;
}

unint64_t sub_1C9A34458()
{
  result = qword_1EC3D2470;
  if (!qword_1EC3D2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2470);
  }

  return result;
}

unint64_t sub_1C9A344AC()
{
  result = qword_1EC3D2488;
  if (!qword_1EC3D2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2488);
  }

  return result;
}

unint64_t sub_1C9A34500(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3(255);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C9A34540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLAP.DetectorAudioFile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C9A345A4()
{
  result = qword_1EC3D24A8;
  if (!qword_1EC3D24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D24A8);
  }

  return result;
}

unint64_t sub_1C9A345F8()
{
  result = qword_1EC3D24C0;
  if (!qword_1EC3D24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D24C0);
  }

  return result;
}

unint64_t sub_1C9A3464C(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C97AA4F0(&qword_1EC3D24B0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A346C0()
{
  result = qword_1EC3D24D8;
  if (!qword_1EC3D24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D24D8);
  }

  return result;
}

unint64_t sub_1C9A34714()
{
  result = qword_1EC3D24E8;
  if (!qword_1EC3D24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D24E8);
  }

  return result;
}

unint64_t sub_1C9A34768(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C97AA4F0(&qword_1EC3D24F0);
    sub_1C9A34500(v4);
    sub_1C9813668();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C9A347FC()
{
  sub_1C98AE1E8();
  sub_1C9A38A34(v1, v2, v3);
  sub_1C97DA940();
  v4 = sub_1C97CB094();
  v5(v4);
  return v0;
}

unint64_t sub_1C9A34850()
{
  result = qword_1EC3D2528;
  if (!qword_1EC3D2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2528);
  }

  return result;
}

unint64_t sub_1C9A348A8()
{
  result = qword_1EC3D2530;
  if (!qword_1EC3D2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2530);
  }

  return result;
}

unint64_t sub_1C9A3493C()
{
  result = qword_1EC3D2538;
  if (!qword_1EC3D2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2538);
  }

  return result;
}

unint64_t sub_1C9A34990()
{
  result = qword_1EC3D2540;
  if (!qword_1EC3D2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2540);
  }

  return result;
}

unint64_t sub_1C9A349E4()
{
  result = qword_1EC3D2548;
  if (!qword_1EC3D2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2548);
  }

  return result;
}

unint64_t sub_1C9A34A3C()
{
  result = qword_1EC3D2550;
  if (!qword_1EC3D2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2550);
  }

  return result;
}

unint64_t sub_1C9A34AD0()
{
  result = qword_1EC3D2558;
  if (!qword_1EC3D2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2558);
  }

  return result;
}

unint64_t sub_1C9A34B24()
{
  result = qword_1EC3D2560;
  if (!qword_1EC3D2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2560);
  }

  return result;
}

unint64_t sub_1C9A34B78()
{
  result = qword_1EC3D2568;
  if (!qword_1EC3D2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2568);
  }

  return result;
}

unint64_t sub_1C9A34BD0()
{
  result = qword_1EC3D2570;
  if (!qword_1EC3D2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2570);
  }

  return result;
}

unint64_t sub_1C9A34C28()
{
  result = qword_1EC3D2578;
  if (!qword_1EC3D2578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2578);
  }

  return result;
}

unint64_t sub_1C9A34CC8()
{
  result = qword_1EC3D2588;
  if (!qword_1EC3D2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2588);
  }

  return result;
}

unint64_t sub_1C9A34D5C()
{
  result = qword_1EC3D2590;
  if (!qword_1EC3D2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2590);
  }

  return result;
}

unint64_t sub_1C9A34DB4()
{
  result = qword_1EC3D2598;
  if (!qword_1EC3D2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2598);
  }

  return result;
}

unint64_t sub_1C9A34E4C()
{
  result = qword_1EC3D25A8;
  if (!qword_1EC3D25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D25A8);
  }

  return result;
}

unint64_t sub_1C9A34EA4()
{
  result = qword_1EC3D25B0;
  if (!qword_1EC3D25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D25B0);
  }

  return result;
}

unint64_t sub_1C9A34EF8(uint64_t a1)
{
  result = sub_1C98DDDD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9A34F20(uint64_t a1)
{
  result = sub_1C98DD9C4();
  *(a1 + 16) = result;
  return result;
}

void sub_1C9A350D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void))
{
  sub_1C9A35150(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C9A35150(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    sub_1C97BE264();
    v4 = type metadata accessor for CLAP.Session();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1C9A351BC(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return sub_1C99ED024(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_1C99ED024(result, a2);
    }
  }

  return result;
}

void sub_1C9A35220()
{
  sub_1C9A91748();
  if (v0 <= 0x3F)
  {
    sub_1C9A352E8();
    if (v1 <= 0x3F)
    {
      sub_1C983DB24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C9A352E8()
{
  if (!qword_1EC3D2688)
  {
    sub_1C97AA4F0(&unk_1EC3CA040);
    v0 = sub_1C9A91DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3D2688);
    }
  }
}

uint64_t sub_1C9A3539C(uint64_t a1)
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

uint64_t sub_1C9A353B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9A353F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1C9A3543C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1C9A35478()
{
  result = qword_1EC3D2698;
  if (!qword_1EC3D2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2698);
  }

  return result;
}

unint64_t sub_1C9A354D0()
{
  result = qword_1EC3D26A0;
  if (!qword_1EC3D26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26A0);
  }

  return result;
}

unint64_t sub_1C9A35528()
{
  result = qword_1EC3D26A8;
  if (!qword_1EC3D26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26A8);
  }

  return result;
}

unint64_t sub_1C9A35580()
{
  result = qword_1EC3D26B0;
  if (!qword_1EC3D26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26B0);
  }

  return result;
}

unint64_t sub_1C9A355D8()
{
  result = qword_1EC3D26B8;
  if (!qword_1EC3D26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26B8);
  }

  return result;
}

unint64_t sub_1C9A35630()
{
  result = qword_1EC3D26C0;
  if (!qword_1EC3D26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26C0);
  }

  return result;
}

unint64_t sub_1C9A35688()
{
  result = qword_1EC3D26C8;
  if (!qword_1EC3D26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26C8);
  }

  return result;
}

unint64_t sub_1C9A356E0()
{
  result = qword_1EC3D26D0;
  if (!qword_1EC3D26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26D0);
  }

  return result;
}

unint64_t sub_1C9A35738()
{
  result = qword_1EC3D26D8;
  if (!qword_1EC3D26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26D8);
  }

  return result;
}

unint64_t sub_1C9A35790()
{
  result = qword_1EC3D26E0;
  if (!qword_1EC3D26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26E0);
  }

  return result;
}

unint64_t sub_1C9A357E8()
{
  result = qword_1EC3D26E8;
  if (!qword_1EC3D26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26E8);
  }

  return result;
}

unint64_t sub_1C9A35840()
{
  result = qword_1EC3D26F0;
  if (!qword_1EC3D26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26F0);
  }

  return result;
}

unint64_t sub_1C9A35898()
{
  result = qword_1EC3D26F8;
  if (!qword_1EC3D26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D26F8);
  }

  return result;
}

unint64_t sub_1C9A358F0()
{
  result = qword_1EC3D2700;
  if (!qword_1EC3D2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2700);
  }

  return result;
}

unint64_t sub_1C9A35948()
{
  result = qword_1EC3D2708;
  if (!qword_1EC3D2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2708);
  }

  return result;
}

unint64_t sub_1C9A359A0()
{
  result = qword_1EC3D2710;
  if (!qword_1EC3D2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2710);
  }

  return result;
}

unint64_t sub_1C9A359F8()
{
  result = qword_1EC3D2718;
  if (!qword_1EC3D2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2718);
  }

  return result;
}

unint64_t sub_1C9A35A50()
{
  result = qword_1EC3D2720;
  if (!qword_1EC3D2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2720);
  }

  return result;
}

unint64_t sub_1C9A35AA8()
{
  result = qword_1EC3D2728;
  if (!qword_1EC3D2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2728);
  }

  return result;
}

unint64_t sub_1C9A35B00()
{
  result = qword_1EC3D2730;
  if (!qword_1EC3D2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2730);
  }

  return result;
}

unint64_t sub_1C9A35B58()
{
  result = qword_1EC3D2738;
  if (!qword_1EC3D2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2738);
  }

  return result;
}

unint64_t sub_1C9A35BB0()
{
  result = qword_1EC3D2740;
  if (!qword_1EC3D2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2740);
  }

  return result;
}

unint64_t sub_1C9A35C04()
{
  result = qword_1EC3D2768;
  if (!qword_1EC3D2768)
  {
    sub_1C97AA4F0(&qword_1EC3D2760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2768);
  }

  return result;
}

uint64_t sub_1C9A35C88()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C9A35D18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9A25F2C(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C9A35D44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9818F38();
}

uint64_t sub_1C9A35E04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C981913C();
}

uint64_t sub_1C9A35EC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9819344();
}

uint64_t sub_1C9A35F78(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C97D9C3C;

  return sub_1C9A21D98(v5, v6, v7, v8, a3);
}

uint64_t sub_1C9A3603C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C97DA5D0;

  return sub_1C9A21E98(v5, v6, a3);
}

uint64_t sub_1C9A360EC()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C98E8240();
  sub_1C9A384DC();
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C9A3618C()
{
  result = qword_1EC3D2778;
  if (!qword_1EC3D2778)
  {
    sub_1C97AA4F0(&qword_1EC3D2770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2778);
  }

  return result;
}

uint64_t sub_1C9A36210()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C98E8240();
  sub_1C9A384DC();
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C9A362B0()
{
  result = qword_1EC3D2788;
  if (!qword_1EC3D2788)
  {
    sub_1C97AA4F0(&qword_1EC3D2780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2788);
  }

  return result;
}

uint64_t sub_1C9A36334()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C9A363C4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C9A380DC(v1);
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C9A36454()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C9A364E4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C9A36574()
{
  sub_1C97DA934();
  sub_1C9A38274();
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  v6 = sub_1C981E178(v5);
  *v6 = v7;
  v6[1] = sub_1C97DA5D0;

  return sub_1C9A2F7BC(v3, v2, v0, v4);
}

unint64_t sub_1C9A36630(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C9AA0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A36698()
{
  result = qword_1EC3D27D8;
  if (!qword_1EC3D27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D27D8);
  }

  return result;
}

unint64_t sub_1C9A366EC()
{
  result = qword_1EC3D27E8;
  if (!qword_1EC3D27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D27E8);
  }

  return result;
}

unint64_t sub_1C9A36740()
{
  result = qword_1EC3D27F0;
  if (!qword_1EC3D27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D27F0);
  }

  return result;
}

unint64_t sub_1C9A36794()
{
  result = qword_1EC3D27F8;
  if (!qword_1EC3D27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D27F8);
  }

  return result;
}

unint64_t sub_1C9A367E8()
{
  result = qword_1EC3D2800;
  if (!qword_1EC3D2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2800);
  }

  return result;
}

unint64_t sub_1C9A3683C()
{
  result = qword_1EC3D2808;
  if (!qword_1EC3D2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2808);
  }

  return result;
}

unint64_t sub_1C9A36890()
{
  result = qword_1EC3D2810;
  if (!qword_1EC3D2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2810);
  }

  return result;
}

unint64_t sub_1C9A368E4()
{
  result = qword_1EC3D2818;
  if (!qword_1EC3D2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2818);
  }

  return result;
}

uint64_t sub_1C9A36940()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);
  v3 = sub_1C97CB094();

  return sub_1C9A2DAE8(v3, v4);
}

uint64_t sub_1C9A369E4()
{
  sub_1C97AA95C();
  sub_1C9A38274();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);
  sub_1C9A38488();

  return sub_1C9A2DE38(v3, v4, v5, v6);
}

uint64_t sub_1C9A36A84()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  v3 = sub_1C981E128(v1);

  return v4(v3);
}

uint64_t sub_1C9A36B14()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C994E590();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C9A380DC(v1);
  sub_1C97DABB0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C9A36BA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C97DA5D0;

  return sub_1C9A2E02C(a1, v6, a3);
}

uint64_t sub_1C9A36C54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C97D9C3C;

  return sub_1C9A2E420(a1, v6, a3);
}

uint64_t sub_1C9A36D04()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E1EC();
  v0 = sub_1C97A2CEC(&qword_1EC3C9908);
  sub_1C97DACE4(v0);
  sub_1C9A388D4();
  v1 = swift_task_alloc();
  v2 = sub_1C97AA858(v1);
  *v2 = v3;
  sub_1C9A3806C(v2);
  sub_1C97DABB0();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C9A36DD4()
{
  sub_1C97DA934();
  sub_1C981E1EC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v5[1] = sub_1C97DA5D0;
  v7 = sub_1C98E8240();

  return sub_1C9A2B558(v7, v8, v1, v2, v3);
}

uint64_t sub_1C9A36E80()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E1EC();
  v0 = sub_1C97A2CEC(&qword_1EC3C9908);
  sub_1C97DACE4(v0);
  sub_1C9A388D4();
  v1 = swift_task_alloc();
  v2 = sub_1C97AA858(v1);
  *v2 = v3;
  sub_1C9A3806C(v2);
  sub_1C97DABB0();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C9A36F4C()
{
  sub_1C98AE1E8();
  sub_1C9A38A34(v1, v2, v3);
  sub_1C97DA940();
  v4 = sub_1C97CB094();
  v5(v4);
  return v0;
}

uint64_t sub_1C9A36F9C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C981E1EC();
  v0 = sub_1C97A2CEC(&qword_1EC3C9900);
  sub_1C97DACE4(v0);
  sub_1C9A388D4();
  v1 = swift_task_alloc();
  v2 = sub_1C97AA858(v1);
  *v2 = v3;
  sub_1C9A3806C(v2);
  sub_1C97DABB0();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C9A37068(uint64_t *a1)
{
  v2 = *(sub_1C97A2CEC(a1) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v4 + 8))(v1 + v3);

  sub_1C9A38A7C();
  sub_1C9A38A7C();
  sub_1C9A38A7C();
  sub_1C9A38A7C();

  return swift_deallocObject();
}

uint64_t sub_1C9A37164()
{
  sub_1C97A2CEC(&qword_1EC3CC2E8);
  sub_1C97DA940();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_1C9A371F0()
{
  v0 = sub_1C97A2CEC(&qword_1EC3CC2E8);
  sub_1C97DACE4(v0);

  sub_1C98F9A38();
}

_BYTE *storeEnumTagSinglePayload for CLAP.DomainError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9A37394(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9A37464()
{
  result = qword_1EC3D2958;
  if (!qword_1EC3D2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2958);
  }

  return result;
}

unint64_t sub_1C9A374BC()
{
  result = qword_1EC3D2960;
  if (!qword_1EC3D2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2960);
  }

  return result;
}

unint64_t sub_1C9A37514()
{
  result = qword_1EC3D2968;
  if (!qword_1EC3D2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2968);
  }

  return result;
}

unint64_t sub_1C9A3756C()
{
  result = qword_1EC3D2970;
  if (!qword_1EC3D2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2970);
  }

  return result;
}

unint64_t sub_1C9A375C4()
{
  result = qword_1EC3D2978;
  if (!qword_1EC3D2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2978);
  }

  return result;
}

uint64_t sub_1C9A37658(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1C9A376AC()
{
  result = qword_1EC3D2980;
  if (!qword_1EC3D2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2980);
  }

  return result;
}

unint64_t sub_1C9A37700()
{
  result = qword_1EC3D2988;
  if (!qword_1EC3D2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2988);
  }

  return result;
}

unint64_t sub_1C9A37754()
{
  result = qword_1EC3D2990;
  if (!qword_1EC3D2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2990);
  }

  return result;
}

unint64_t sub_1C9A377AC()
{
  result = qword_1EC3D2998;
  if (!qword_1EC3D2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2998);
  }

  return result;
}

unint64_t sub_1C9A37804()
{
  result = qword_1EC3D29A0;
  if (!qword_1EC3D29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29A0);
  }

  return result;
}

unint64_t sub_1C9A3785C()
{
  result = qword_1EC3D29A8;
  if (!qword_1EC3D29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29A8);
  }

  return result;
}

unint64_t sub_1C9A378B4()
{
  result = qword_1EC3D29B0;
  if (!qword_1EC3D29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29B0);
  }

  return result;
}

unint64_t sub_1C9A3790C()
{
  result = qword_1EC3D29B8;
  if (!qword_1EC3D29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29B8);
  }

  return result;
}

unint64_t sub_1C9A37964()
{
  result = qword_1EC3D29C0;
  if (!qword_1EC3D29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29C0);
  }

  return result;
}

unint64_t sub_1C9A379BC()
{
  result = qword_1EC3D29C8;
  if (!qword_1EC3D29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29C8);
  }

  return result;
}

unint64_t sub_1C9A37A14()
{
  result = qword_1EC3D29D0;
  if (!qword_1EC3D29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29D0);
  }

  return result;
}

unint64_t sub_1C9A37A6C()
{
  result = qword_1EC3D29D8;
  if (!qword_1EC3D29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29D8);
  }

  return result;
}

unint64_t sub_1C9A37AC4()
{
  result = qword_1EC3D29E0;
  if (!qword_1EC3D29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29E0);
  }

  return result;
}

unint64_t sub_1C9A37B1C()
{
  result = qword_1EC3D29E8;
  if (!qword_1EC3D29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29E8);
  }

  return result;
}

unint64_t sub_1C9A37B74()
{
  result = qword_1EC3D29F0;
  if (!qword_1EC3D29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29F0);
  }

  return result;
}

unint64_t sub_1C9A37BCC()
{
  result = qword_1EC3D29F8;
  if (!qword_1EC3D29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D29F8);
  }

  return result;
}

unint64_t sub_1C9A37C24()
{
  result = qword_1EC3D2A00;
  if (!qword_1EC3D2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2A00);
  }

  return result;
}

unint64_t sub_1C9A37C7C()
{
  result = qword_1EC3D2A08;
  if (!qword_1EC3D2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2A08);
  }

  return result;
}

unint64_t sub_1C9A37CD4()
{
  result = qword_1EC3D2A10;
  if (!qword_1EC3D2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2A10);
  }

  return result;
}

unint64_t sub_1C9A37D28()
{
  result = qword_1EC3D2A20;
  if (!qword_1EC3D2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2A20);
  }

  return result;
}

_BYTE *sub_1C9A37D7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9A37E5C()
{
  result = qword_1EC3D2A30;
  if (!qword_1EC3D2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2A30);
  }

  return result;
}

unint64_t sub_1C9A37EB4()
{
  result = qword_1EC3D2A38;
  if (!qword_1EC3D2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2A38);
  }

  return result;
}

unint64_t sub_1C9A37F0C()
{
  result = qword_1EC3D2A40[0];
  if (!qword_1EC3D2A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D2A40);
  }

  return result;
}

uint64_t sub_1C9A380B8@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + ((v3 << 10) | (16 * a1)));
  result = v4[1];
  *v2 = *v4;
  v2[1] = result;
  return result;
}

uint64_t sub_1C9A38120()
{

  return sub_1C9A93858();
}

uint64_t sub_1C9A38238()
{
}

uint64_t sub_1C9A3825C@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_1C9A38290()
{

  return sub_1C9A92048();
}

unint64_t sub_1C9A38334(uint64_t a1)
{

  return sub_1C9939700(a1);
}

unint64_t sub_1C9A38378(uint64_t a1)
{

  return sub_1C9A36630(a1);
}

unint64_t sub_1C9A383AC(uint64_t a1)
{

  return sub_1C9939700(a1);
}

unint64_t sub_1C9A383E0(uint64_t a1)
{

  return sub_1C9939700(a1);
}

unint64_t sub_1C9A38404(uint64_t a1)
{

  return sub_1C9A36630(a1);
}

uint64_t sub_1C9A38438()
{

  return swift_once();
}

uint64_t sub_1C9A38468()
{

  return swift_once();
}

unint64_t sub_1C9A38494(uint64_t a1)
{

  return sub_1C9939700(a1);
}

unint64_t sub_1C9A384B8(uint64_t a1)
{

  return sub_1C9A36630(a1);
}

uint64_t sub_1C9A384F4()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;
  return v0;
}

uint64_t sub_1C9A38518@<X0>(uint64_t *a1@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];

  return sub_1C997C784(v3, 7, 0, v6, v7, v8, v2, v1, v5);
}

uint64_t sub_1C9A3854C()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C9A3857C()
{

  return sub_1C9A92018();
}

uint64_t sub_1C9A385AC()
{

  return sub_1C9A91F68();
}

uint64_t sub_1C9A38614()
{
}

uint64_t sub_1C9A38630()
{

  return sub_1C9A36F4C();
}

uint64_t sub_1C9A38648()
{

  return sub_1C9A36F4C();
}

uint64_t sub_1C9A38660()
{

  return swift_slowAlloc();
}

uint64_t sub_1C9A38794@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = *(a1 + 56);
}

uint64_t sub_1C9A387B8()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v3;
  sub_1C97A5A8C(v0, v0[3]);

  return type metadata accessor for SNLanguageAlignedAudioEmbeddingFeatureExtractor();
}

uint64_t sub_1C9A387F8()
{
}

uint64_t sub_1C9A38814()
{
}

uint64_t sub_1C9A38838()
{
}

uint64_t sub_1C9A38854(int8x16_t *a1, int8x16_t a2)
{
  a1[1] = vextq_s8(a2, a2, 8uLL);
}

void sub_1C9A38870(void *a1, int a2, int a3, os_signpost_id_t a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, os_signpost_type_t a13)
{

  _os_signpost_emit_with_name_impl(a1, v13, a13, a4, a5, a6, v14, 0x16u);
}

uint64_t sub_1C9A38918@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_1C9A38984()
{
  **(v0 + 16) = *(v0 + 24);
}

uint64_t sub_1C9A389A4()
{
}

uint64_t sub_1C9A389DC()
{

  return sub_1C9A91F28();
}

uint64_t sub_1C9A389FC()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C9A38A1C(uint64_t a1)
{
  *(v1 + 312) = a1;
}

uint64_t sub_1C9A38A34(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C97A2CEC(a3);
}

uint64_t sub_1C9A38A4C(uint64_t a1)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;
}

uint64_t sub_1C9A38A64(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1C99DC674(va);
}

uint64_t sub_1C9A38A7C()
{
}

uint64_t sub_1C9A38A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656873696E6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
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

uint64_t sub_1C9A38B5C(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x64656873696E6966;
  }
}

uint64_t sub_1C9A38BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A38A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A38BD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C9A38C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C9A38C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97C52E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9A38CD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C9A38D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C9A38D88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C979B06C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C9A38DE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C9A38E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PubSub.Completion<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v55 = a2;
  v4 = *(a2 + 16);
  v5 = type metadata accessor for PubSub.Completion.FailureCodingKeys();
  sub_1C9A3ACB4();
  swift_getWitnessTable();
  sub_1C9A3AD34();
  v50 = v5;
  v48 = v6;
  sub_1C9A93A78();
  sub_1C97AE9C8();
  v52 = v8;
  v53 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v49 = v10;
  sub_1C97AE9DC();
  v51 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AEAD8();
  v47 = v14 - v13;
  sub_1C9A3ACF4();
  v15 = type metadata accessor for PubSub.Completion.FinishedCodingKeys();
  sub_1C9A3ACCC();
  swift_getWitnessTable();
  sub_1C9A3AD34();
  v46 = v15;
  v44 = v16;
  v45 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v43 = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AC02C();
  v42 = v19;
  sub_1C97AE9DC();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AEAD8();
  v25 = v24 - v23;
  type metadata accessor for PubSub.Completion.CodingKeys();
  sub_1C9A3AC9C();
  swift_getWitnessTable();
  sub_1C9A93A78();
  sub_1C97AE9C8();
  v56 = v27;
  v57 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v41 - v29;
  sub_1C97A5A8C(a1, a1[3]);
  v59 = v30;
  sub_1C9A93DD8();
  (*(v21 + 16))(v25, v58, v55);
  v58 = v4;
  if (sub_1C97ABF20(v25, 1, v4) == 1)
  {
    v60 = 0;
    v31 = v42;
    v32 = v57;
    v33 = v59;
    sub_1C9A93988();
    (*(v43 + 8))(v31, v45);
    return (*(v56 + 8))(v33, v32);
  }

  else
  {
    v35 = v56;
    v36 = v51;
    v37 = v47;
    (*(v51 + 32))(v47, v25, v58);
    v61 = 1;
    v38 = v49;
    v39 = v57;
    sub_1C9A93988();
    v40 = v53;
    sub_1C9A93A18();
    (*(v52 + 8))(v38, v40);
    (*(v36 + 8))(v37, v58);
    return (*(v35 + 8))(v59, v39);
  }
}

uint64_t PubSub.Completion<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v65 = a3;
  v73 = a4;
  v6 = type metadata accessor for PubSub.Completion.FailureCodingKeys();
  sub_1C9A3ACB4();
  swift_getWitnessTable();
  sub_1C9A3AD34();
  v70 = v7;
  v71 = v6;
  v64 = sub_1C9A93978();
  sub_1C97AE9C8();
  v63 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v72 = v10;
  sub_1C9A3ACF4();
  v11 = type metadata accessor for PubSub.Completion.FinishedCodingKeys();
  sub_1C9A3ACCC();
  swift_getWitnessTable();
  sub_1C9A3AD34();
  v68 = v12;
  v69 = v11;
  v62 = sub_1C9A93978();
  sub_1C97AE9C8();
  v61 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  v67 = v15;
  sub_1C9A3ACF4();
  type metadata accessor for PubSub.Completion.CodingKeys();
  sub_1C9A3AC9C();
  swift_getWitnessTable();
  v75 = sub_1C9A93978();
  sub_1C97AE9C8();
  v78 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v77 = a2;
  v74 = type metadata accessor for PubSub.Completion();
  sub_1C97AE9C8();
  v66 = v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  sub_1C97A5A8C(a1, a1[3]);
  v76 = v19;
  v27 = v83;
  sub_1C9A93DB8();
  if (v27)
  {
    goto LABEL_7;
  }

  v59 = v24;
  v60 = v26;
  v83 = a1;
  v28 = v75;
  v30 = v76;
  v29 = v77;
  *&v79 = sub_1C9A93958();
  sub_1C9A928B8();
  swift_getWitnessTable();
  *&v81 = sub_1C9A933F8();
  *(&v81 + 1) = v31;
  *&v82 = v32;
  *(&v82 + 1) = v33;
  sub_1C9A933B8();
  swift_getWitnessTable();
  sub_1C9A92C68();
  v34 = v79;
  if (v79 == 2 || (v58 = v81, v79 = v81, v80 = v82, (sub_1C9A92D08() & 1) == 0))
  {
    v37 = sub_1C9A93648();
    swift_allocError();
    v39 = v38;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v39 = v74;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    v40 = sub_1C9A3ACE4();
    v41(v40, v28);
    swift_unknownObjectRelease();
    a1 = v83;
LABEL_7:
    v42 = a1;
    return sub_1C97A592C(v42);
  }

  if (v34)
  {
    LOBYTE(v79) = 1;
    v35 = v28;
    sub_1C9A93858();
    v36 = v73;
    v45 = v59;
    v46 = v64;
    sub_1C9A938F8();
    v47 = v78;
    v53 = sub_1C9A3AD04();
    v54(v53, v46);
    (*(v47 + 8))(v30, v35);
    sub_1C9A3AD14();
    swift_unknownObjectRelease();
    sub_1C97ACC50(v45, 0, 1, v29);
    v55 = *(v66 + 32);
    v56 = v60;
    v57 = v74;
    v55(v60, v45, v74);
    v55(v36, v56, v57);
  }

  else
  {
    LOBYTE(v79) = 0;
    sub_1C9A93858();
    v44 = v73;
    v48 = sub_1C9A3AD04();
    v49(v48, v62);
    v50 = sub_1C9A3ACE4();
    v51(v50, v28);
    sub_1C9A3AD14();
    swift_unknownObjectRelease();
    v52 = v60;
    sub_1C97ACC50(v60, 1, 1, v29);
    (*(v66 + 32))(v44, v52, v74);
  }

  v42 = v83;
  return sub_1C97A592C(v42);
}

uint64_t static PubSub.Completion<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  sub_1C97AE9DC();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v33 = (v10 - v9);
  v11 = type metadata accessor for PubSub.Completion();
  sub_1C97AE9C8();
  v13 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1C97AE9C8();
  v19 = v18;
  sub_1C97ABFF0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - v22;
  v24 = *(v21 + 48);
  v35 = v13;
  v25 = *(v13 + 16);
  v25(&v32 - v22, a1, v11);
  v25(&v23[v24], v37, v11);
  sub_1C983E180(v23);
  if (v27)
  {
    v26 = 1;
    sub_1C983E180(&v23[v24]);
    if (v27)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v25(v16, v23, v11);
    sub_1C983E180(&v23[v24]);
    if (!v27)
    {
      v28 = v36;
      v29 = v33;
      (*(v36 + 32))(v33, &v23[v24], a3);
      v26 = sub_1C9A92438();
      v30 = *(v28 + 8);
      v30(v29, a3);
      v30(v16, a3);
LABEL_10:
      v19 = v35;
      goto LABEL_11;
    }

    (*(v36 + 8))(v16, a3);
  }

  v26 = 0;
  v11 = TupleTypeMetadata2;
LABEL_11:
  (*(v19 + 8))(v23, v11);
  return v26 & 1;
}

uint64_t PubSub.Completion<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10);
  if (sub_1C97ABF20(v8, 1, v2) == 1)
  {
    return MEMORY[0x1CCA91980](0);
  }

  (*(v3 + 32))(v6, v8, v2);
  MEMORY[0x1CCA91980](1);
  sub_1C9A92398();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PubSub.Completion<>.hashValue.getter(uint64_t a1)
{
  sub_1C9A93CC8();
  PubSub.Completion<>.hash(into:)(v3, a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A39F30(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  PubSub.Completion<>.hash(into:)(v4, a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A39F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5);
  v9 = *(a1 + 16);
  v10 = 1;
  sub_1C983E180(v7);
  if (!v11)
  {
    (*(*(v9 - 8) + 32))(a2, v7, v9);
    v10 = 0;
  }

  return sub_1C97ACC50(a2, v10, 1, v9);
}

uint64_t PubSub.AnyPublisher.sink(receiveCompletion:receiveValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t *a4@<X8>)
{

  v8 = swift_allocObject();
  v9 = a3[3];
  v8[2] = a3[2];
  v8[3] = v9;
  v8[4] = a3[4];
  v8[5] = a1;
  v8[6] = a2;
  sub_1C9A91DA8();

  swift_getWitnessTable();
  v10 = sub_1C9A91FB8();

  *a4 = v10;
  return result;
}

uint64_t sub_1C9A3A218(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for PubSub.Completion();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = sub_1C9A91D48();
  sub_1C9A39F84(v7, v6);
  a2(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t PubSub.AnySubject.send(completion:)()
{
  sub_1C9A3AD24();
  v0 = sub_1C9A91D48();
  sub_1C97AE9C8();
  v2 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  swift_getObjectType();
  sub_1C9A3AD24();
  v6 = type metadata accessor for PubSub.Completion();
  sub_1C9A39F84(v6, v5);
  sub_1C9A91EB8();
  return (*(v2 + 8))(v5, v0);
}

uint64_t static PubSub.AnySubject.createSharedPassthroughSubject()@<X0>(uint64_t *a1@<X8>)
{
  sub_1C9A91E38();
  sub_1C9A91E18();
  swift_getWitnessTable();
  v2 = sub_1C9828BC8();

  sub_1C9A3AD24();
  type metadata accessor for SharedSubject();
  result = swift_getWitnessTable();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t static PubSub.AnySubject.fromCombine(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return swift_unknownObjectRetain();
}

uint64_t sub_1C9A3A5E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_1C97ABF20(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C9A3A760(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_1C97ACC50(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C9A3A990()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C9A3A9E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_1C9A3AA38(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C9A3AB04(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C9A3AD40()
{
  v3 = MEMORY[0x1E69E7CC0];
  v1[2] = &v3;
  v1[3] = &v2;
  v2 = 0;
  sub_1C9A3ADC8(sub_1C9A3B028, v1);
  if (!v2)
  {
    return v3;
  }

  swift_willThrow();
}

uint64_t sub_1C9A3ADC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7[4] = sub_1C9A3B084;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C9A3AED4;
  v7[3] = &unk_1F49500E0;
  v5 = _Block_copy(v7);

  os_enumerate_boot_args_b();
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1C9A3AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a1)
  {
    if (a2)
    {
      sub_1C97A2CEC(&qword_1EC3C7A00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C9A9EDD0;
      v7 = sub_1C9A92598();
      v9 = v8;
      v10 = sub_1C9A92598();
      *(inited + 32) = v7;
      *(inited + 40) = v9;
      *(inited + 48) = v10;
      *(inited + 56) = v11;
      v12 = inited;
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7A00);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_1C9A9EDD0;
      *(v16 + 32) = sub_1C9A92598();
      *(v16 + 40) = v17;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      v12 = v16;
    }

    sub_1C98D0928(v12);
  }

  else
  {
    sub_1C9A3B030();
    v14 = swift_allocError();
    swift_willThrow();
    v15 = *a5;
    *a5 = v14;
  }

  return a1 != 0;
}

unint64_t sub_1C9A3B030()
{
  result = qword_1EC3D2D50;
  if (!qword_1EC3D2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2D50);
  }

  return result;
}

uint64_t sub_1C9A3B0B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for BootArgsUtils.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9A3B188()
{
  result = qword_1EC3D2D58;
  if (!qword_1EC3D2D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2D58);
  }

  return result;
}

uint64_t sub_1C9A3B1DC()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

id sub_1C9A3B2BC(uint64_t a1)
{
  *&v1[OBJC_IVAR___SNFileListingResult_fileItems] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SNFileListingResult();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SNFileListingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileListingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileListingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1C9A3B42C(char *result)
{
  if (result)
  {
    result = mach_error_string(result);
    if (result)
    {
      v1 = sub_1C9A92598();
      v3 = v2;
      type metadata accessor for SNError();
      sub_1C9A935B8();

      sub_1C9A3B738();
      v4 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v4);

      MEMORY[0x1CCA90230](10272, 0xE200000000000000);
      MEMORY[0x1CCA90230](v1, v3);

      MEMORY[0x1CCA90230](41, 0xE100000000000000);
      v5 = sub_1C9A3B754();
      sub_1C9929478(v5, v6, v7, 0, v8, 0xE000000000000000);

      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C9A3B558(int a1)
{
  result = sub_1C9A91BF8();
  if (result != a1)
  {
    type metadata accessor for SNError();
    v3 = sub_1C9A924A8();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v7 = sub_1C9A3B688(v3, v5, a1, 0);
    sub_1C9A935B8();

    sub_1C9A3B738();
    v8 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v8);

    v9 = sub_1C9A3B754();
    sub_1C9929478(v9, v10, v11, v7, v12, 0xE000000000000000);

    return swift_willThrow();
  }

  return result;
}

id sub_1C9A3B688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C9A92478();

  if (a4)
  {
    v8 = sub_1C9A922F8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_1C9A3B76C(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  v7 = type metadata accessor for SNMLModelObjC();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC13SoundAnalysis13SNMLModelObjC_model];
  *v9 = a2;
  *(v9 + 1) = a3;
  v14.receiver = v8;
  v14.super_class = v7;
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v13 = 0;
  LODWORD(a2) = sub_1C9A756CC(v6, a1, v10, &v13);

  if (a2)
  {
    return v13;
  }

  v12 = v13;
  sub_1C9A913C8();

  return swift_willThrow();
}

id sub_1C9A3B888@<X0>(void *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_opt_self();
  v13 = 0;
  v7 = sub_1C9A77128(v6, a1, a2, &v14, &v13);
  v8 = v13;
  if (v7)
  {
    v9 = v15;
    *a3 = v14;
    a3[1] = v9;
    v10 = v17;
    a3[2] = v16;
    a3[3] = v10;
    return v8;
  }

  else
  {
    v12 = v13;
    sub_1C9A913C8();

    return swift_willThrow();
  }
}

_BYTE *storeEnumTagSinglePayload for DSPGraphUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9A3BA44()
{
  result = qword_1EC3D2D68;
  if (!qword_1EC3D2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2D68);
  }

  return result;
}

void sub_1C9A3BA98(uint64_t a1)
{
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C9A934C8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C97B7B08(0, v2 & ~(v2 >> 63), 0);
    v3 = v37;
    v34 = sub_1C98BC45C(a1);
    v35 = v4;
    v36 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v8 = v34;
        v9 = v36;
        v32 = v35;
        sub_1C98BC4FC(v34, v35, v36, a1);
        v11 = v10;
        v12 = *&v10[OBJC_IVAR___SNModelFeatureConnection_impl];
        v13 = *&v10[OBJC_IVAR___SNModelFeatureConnection_impl + 8];

        v37 = v3;
        v15 = *(v3 + 16);
        v14 = *(v3 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C97B7B08(v14 > 1, v15 + 1, 1);
          v3 = v37;
        }

        *(v3 + 16) = v15 + 1;
        v16 = v3 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        if (v31)
        {
          if (!v9)
          {
            goto LABEL_36;
          }

          v17 = v3;
          if (sub_1C9A93498())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v22 = v30;
          sub_1C97A2CEC(&unk_1EC3D2300);
          v23 = sub_1C9A92B58();
          sub_1C9A93508();
          v23(v33, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v17 = v3;
          v18 = 1 << *(a1 + 32);
          if (v8 >= v18)
          {
            goto LABEL_32;
          }

          v19 = v8 >> 6;
          v20 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v20 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(a1 + 36) != v32)
          {
            goto LABEL_34;
          }

          v21 = v20 & (-2 << (v8 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v22 = v30;
          }

          else
          {
            v24 = v19 << 6;
            v25 = v19 + 1;
            v26 = (a1 + 64 + 8 * v19);
            v22 = v30;
            while (v25 < (v18 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_1C97FDD94(v8, v32, 0);
                v18 = __clz(__rbit64(v27)) + v24;
                goto LABEL_27;
              }
            }

            sub_1C97FDD94(v8, v32, 0);
          }

LABEL_27:
          v29 = *(a1 + 36);
          v34 = v18;
          v35 = v29;
          v36 = 0;
        }

        v3 = v17;
        if (v6 == v22)
        {
          sub_1C97FDD94(v34, v35, v36);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void sub_1C9A3BDA4(uint64_t a1)
{
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C9A934C8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C97B7B08(0, v2 & ~(v2 >> 63), 0);
    v3 = v37;
    v34 = sub_1C98BC45C(a1);
    v35 = v4;
    v36 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v8 = v34;
        v9 = v36;
        v32 = v35;
        sub_1C98BC4FC(v34, v35, v36, a1);
        v11 = v10;
        v12 = *&v10[OBJC_IVAR___SNModelFeatureConnection_impl + 16];
        v13 = *&v10[OBJC_IVAR___SNModelFeatureConnection_impl + 24];

        v37 = v3;
        v15 = *(v3 + 16);
        v14 = *(v3 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C97B7B08(v14 > 1, v15 + 1, 1);
          v3 = v37;
        }

        *(v3 + 16) = v15 + 1;
        v16 = v3 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        if (v31)
        {
          if (!v9)
          {
            goto LABEL_36;
          }

          v17 = v3;
          if (sub_1C9A93498())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v22 = v30;
          sub_1C97A2CEC(&unk_1EC3D2300);
          v23 = sub_1C9A92B58();
          sub_1C9A93508();
          v23(v33, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v17 = v3;
          v18 = 1 << *(a1 + 32);
          if (v8 >= v18)
          {
            goto LABEL_32;
          }

          v19 = v8 >> 6;
          v20 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v20 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(a1 + 36) != v32)
          {
            goto LABEL_34;
          }

          v21 = v20 & (-2 << (v8 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v22 = v30;
          }

          else
          {
            v24 = v19 << 6;
            v25 = v19 + 1;
            v26 = (a1 + 64 + 8 * v19);
            v22 = v30;
            while (v25 < (v18 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_1C97FDD94(v8, v32, 0);
                v18 = __clz(__rbit64(v27)) + v24;
                goto LABEL_27;
              }
            }

            sub_1C97FDD94(v8, v32, 0);
          }

LABEL_27:
          v29 = *(a1 + 36);
          v34 = v18;
          v35 = v29;
          v36 = 0;
        }

        v3 = v17;
        if (v6 == v22)
        {
          sub_1C97FDD94(v34, v35, v36);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

double sub_1C9A3C0B0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 16))(ObjectType, a2);
  sub_1C9A3F32C(v5);

  if (!v2)
  {
    v14.n128_u64[0] = sub_1C98DE19C(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v14, v18).n128_u64[0];
  }

  return v14.n128_f64[0];
}

uint64_t sub_1C9A3C12C(uint64_t a1)
{
  result = MEMORY[0x1CCA907F0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1C9A3F43C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A3C1EC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = MEMORY[0x1CCA907F0](result, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2 == a2)
  {
    return result;
  }

  if (a2 < v2)
  {
    goto LABEL_9;
  }

  if (v2 >= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  do
  {
    sub_1C9A3F588(&v6, v2++);
  }

  while (a2 != v2);
  return v7;
}

uint64_t sub_1C9A3C288(uint64_t a1)
{
  result = MEMORY[0x1CCA907F0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1C9A3F43C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1C9A3C3A4(uint64_t a1)
{
  v2 = sub_1C97BDEE0(a1);
  v3 = type metadata accessor for SNModelFeatureConnection();
  v5 = sub_1C9A40EFC(&unk_1EC3C55C0, v4, type metadata accessor for SNModelFeatureConnection);
  v9[1] = MEMORY[0x1CCA907F0](v2, v3, v5);
  v6 = sub_1C97BDEE0(a1);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA912B0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1C9A3F658(v9, v8);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1C9A3C4BC(void *a1, int a2)
{
  LODWORD(v2) = a2;
  sub_1C9A3EF50(a1);
  sub_1C9A415A0();
  v3 = sub_1C9A3ED54();
  v5 = v4;

  if (v5)
  {
    v2 = v2;
  }

  else
  {
    v2 = v3;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A3C55C(void *a1, uint64_t a2)
{
  sub_1C9A3EF50(a1);
  v3 = sub_1C9A3EC5C();

  if (v3)
  {
    return v3;
  }

  return a2;
}

uint64_t sub_1C9A3C5D4(void *a1, uint64_t a2)
{
  v3 = sub_1C9A3F080(a1);
  if (v3)
  {
    return v3;
  }

  return a2;
}

uint64_t sub_1C9A3C6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1C9A93B18(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1C9A93B18();
    }
  }

  return result;
}

uint64_t sub_1C9A3C740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C9ADF150 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C9ADF170 == a2)
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

unint64_t sub_1C9A3C814(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1C9A3C84C()
{
  sub_1C97AEB94();
  v11[0] = v1;
  v11[1] = v2;
  v4 = v3;
  v5 = sub_1C97A2CEC(&unk_1EC3D2D98);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v11 - v9;
  sub_1C97A5A8C(v4, v4[3]);
  sub_1C9A40F44();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  if (!v0)
  {
    sub_1C9A939C8();
  }

  (*(v7 + 8))(v10, v5);
  sub_1C97AEB5C();
}

uint64_t sub_1C9A3C9A4()
{
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t sub_1C9A3C9F4()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void sub_1C9A3CA64()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3D2D88);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A40F44();
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C9A938A8();
    sub_1C9A938A8();
    v4 = sub_1C97BE30C();
    v5(v4);
  }

  sub_1C97A592C(v2);
  sub_1C97AEB5C();
}

uint64_t sub_1C9A3CC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A3C740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A3CC40(uint64_t a1)
{
  v2 = sub_1C9A40F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A3CC7C(uint64_t a1)
{
  v2 = sub_1C9A40F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A3CCD0()
{
  sub_1C9A93CC8();
  sub_1C9A3C9A4();
  return sub_1C9A93D18();
}

void sub_1C9A3CD2C(void *a1@<X8>)
{
  sub_1C9A3CA64();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_1C9A3CD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == 2)
    {
      return 0;
    }

    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v17 = sub_1C994A194(v2 & 1, v10 & 1);
    v8 = v23;
    v7 = v24;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v11)
    {
      v18 = v12;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v13)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v15)
    {
      return 0;
    }

    if (v8 == v16 && v7 == v15)
    {
    }

    else
    {
      v21 = sub_1C9A93B18();

      if ((v21 & 1) == 0)
      {

        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1C9A3CF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001C9ADF330 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001C9ADF350 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C9ADF370 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656449646E756F73 && a2 == 0xEF7265696669746ELL)
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

unint64_t sub_1C9A3D0D0(char a1)
{
  result = 0x6152656C706D6173;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x656449646E756F73;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C9A3D194()
{
  sub_1C97AEB94();
  v19 = v1;
  v3 = v2;
  v4 = sub_1C97A2CEC(&unk_1EC3D2DE0);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v22 = *(v0 + 9);
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  v10 = *(v0 + 56);
  v13 = *(v0 + 48);
  v14 = v10;
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9A4129C();
  sub_1C9A93DD8();
  LOBYTE(v20) = 0;
  v11 = v19;
  sub_1C9A939A8();
  if (!v11)
  {
    LOBYTE(v20) = v22;
    sub_1C97FAE44();
    sub_1C97BE02C();
    sub_1C9A939B8();
    LOBYTE(v20) = 2;
    sub_1C97BE02C();
    sub_1C9A939A8();
    LOBYTE(v20) = 3;
    sub_1C97BE02C();
    sub_1C9A939A8();
    v20 = v13;
    v21 = v14;

    sub_1C97A2CEC(&qword_1EC3C7D40);
    sub_1C9A41328(&qword_1EC3D2DF0);
    sub_1C97BE02C();
    sub_1C9A939B8();
  }

  (*(v6 + 8))(v9, v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C9A3D40C()
{
  v1 = *(v0 + 9);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = v0[7];
  if (*(v0 + 8) == 1)
  {
    sub_1C9A93CE8();
  }

  else
  {
    v7 = *v0;
    sub_1C9A93CE8();
    MEMORY[0x1CCA91980](v7);
  }

  if (v1 == 2)
  {
    sub_1C9A93CE8();
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C9A93CE8();
    sub_1C9A92528();

    if (!v3)
    {
LABEL_6:
      sub_1C9A93CE8();
      MEMORY[0x1CCA91980](v2);
      if (!v5)
      {
        goto LABEL_7;
      }

LABEL_13:
      sub_1C9A93CE8();
      if (v6)
      {
        goto LABEL_8;
      }

      return sub_1C9A93CE8();
    }
  }

  sub_1C9A93CE8();
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_7:
  sub_1C9A93CE8();
  MEMORY[0x1CCA91980](v4);
  if (!v6)
  {
    return sub_1C9A93CE8();
  }

LABEL_8:
  sub_1C9A93CE8();

  return sub_1C9A92528();
}

uint64_t sub_1C9A3D580()
{
  sub_1C9A93CC8();
  sub_1C9A3D40C();
  return sub_1C9A93D18();
}

void sub_1C9A3D5C0()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3D2DC8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v48 = 1;
  v45 = 1;
  v43 = 1;
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A4129C();
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v2);
    v29 = 0;
    v30 = v48;
    v31 = 2;
    v32 = v46;
    v33 = v47;
    v34 = 0;
    v35 = v45;
    *v36 = *v44;
    *&v36[3] = *&v44[3];
    v37 = 0;
    v38 = v43;
    *&v39[3] = *&v42[3];
    *v39 = *v42;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v49 = sub_1C9A415E8();
    v48 = v6 & 1;
    LOBYTE(v22) = 1;
    sub_1C97FADF0();
    sub_1C9A93898();
    v7 = sub_1C9A415E8();
    v21 = v4;
    v45 = v8 & 1;
    LOBYTE(v29) = 3;
    v9 = sub_1C9A415E8();
    v43 = v10 & 1;
    sub_1C97A2CEC(&qword_1EC3C7D40);
    v26 = 4;
    sub_1C9A41328(&qword_1EC3C7D48);
    sub_1C9A93898();
    v11 = sub_1C998D358();
    v12(v11);
    v14 = v27;
    v13 = v28;

    *&v22 = v49;
    v20 = v48;
    WORD4(v22) = v48;
    *&v23 = v7;
    v15 = v45;
    BYTE8(v23) = v45;
    *&v24 = v9;
    v16 = v43;
    BYTE8(v24) = v43;
    *&v25 = v14;
    *(&v25 + 1) = v13;
    v18 = v23;
    v17 = v24;
    *v21 = v22;
    v21[1] = v18;
    v19 = v25;
    v21[2] = v17;
    v21[3] = v19;
    sub_1C9A412F0(&v22, &v29);
    sub_1C97A592C(v2);
    v29 = v49;
    v30 = v20;
    v31 = 0;
    v34 = v7;
    v35 = v15;
    v37 = v9;
    v38 = v16;
    v40 = v14;
    v41 = v13;
  }

  sub_1C97F9CA8(&v29);
  sub_1C97AEB5C();
}

uint64_t sub_1C9A3D9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A3CF10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A3D9D4(uint64_t a1)
{
  v2 = sub_1C9A4129C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A3DA10(uint64_t a1)
{
  v2 = sub_1C9A4129C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A3DA54()
{
  sub_1C9A93CC8();
  sub_1C9A3D40C();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A3DAF4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SNModelFeatureConnection_impl);
  *v3 = a1;
  v3[1] = a2;
  return sub_1C99D9BC8();
}

id sub_1C9A3DB24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1C9A92478();

  return v3;
}

void sub_1C9A3DB8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C9A924A8();
  v7 = a1;
  v6 = sub_1C984ADE8();
  a4(v6);
}

uint64_t sub_1C9A3DC00(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___SNModelFeatureConnection_impl;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_1C99D9BC8();
}

id sub_1C9A3DC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___SNModelFeatureConnection_impl];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_1C9A3DCE4@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR___SNModelFeatureConnection_impl;
  v6 = *(v1 + OBJC_IVAR___SNModelFeatureConnection_impl);
  v5 = *(v1 + OBJC_IVAR___SNModelFeatureConnection_impl + 8);
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = objc_allocWithZone(ObjectType);
  v10 = &v9[OBJC_IVAR___SNModelFeatureConnection_impl];
  *v10 = v6;
  *(v10 + 1) = v5;
  *(v10 + 2) = v8;
  *(v10 + 3) = v7;
  v12.receiver = v9;
  v12.super_class = ObjectType;

  result = objc_msgSendSuper2(&v12, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C9A3DE1C()
{
  sub_1C9A93CC8();

  sub_1C9A92528();
  sub_1C9A92528();
  v0 = sub_1C9A93D18();

  return v0;
}

uint64_t sub_1C9A3DEB8(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v16);
  if (v17)
  {
    sub_1C97A2D34(&v16, v15);
    sub_1C97BD360(v15, v14);
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR___SNModelFeatureConnection_impl);
      v4 = *(v1 + OBJC_IVAR___SNModelFeatureConnection_impl + 8);
      v5 = *(v1 + OBJC_IVAR___SNModelFeatureConnection_impl + 16);
      v6 = *(v1 + OBJC_IVAR___SNModelFeatureConnection_impl + 24);
      v7 = *&v13[OBJC_IVAR___SNModelFeatureConnection_impl + 16];
      v8 = *&v13[OBJC_IVAR___SNModelFeatureConnection_impl + 24];
      v9 = v3 == *&v13[OBJC_IVAR___SNModelFeatureConnection_impl] && v4 == *&v13[OBJC_IVAR___SNModelFeatureConnection_impl + 8];
      if (v9 || (sub_1C9A93B18() & 1) != 0)
      {
        if (v5 == v7 && v6 == v8)
        {

          v11 = 1;
        }

        else
        {
          sub_1C97CB094();
          v11 = sub_1C9A93B18();
        }

        goto LABEL_17;
      }
    }

    v11 = 0;
LABEL_17:
    sub_1C97A592C(v15);
    return v11 & 1;
  }

  v11 = 0;
  return v11 & 1;
}

id sub_1C9A3E054(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1C97A28A0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_allocWithZone(ObjectType);
  v11 = &v10[OBJC_IVAR___SNModelFeatureConnection_impl];
  *v11 = v3;
  *(v11 + 1) = v5;
  *(v11 + 2) = v7;
  *(v11 + 3) = v9;
  v14.receiver = v10;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  swift_getObjectType();
  sub_1C999A5D8();
  return v12;
}

uint64_t sub_1C9A3E15C()
{

  sub_1C97A0D5C();
}

uint64_t sub_1C9A3E360()
{
  sub_1C9A41634();
  v0 = sub_1C9A4168C();
  return sub_1C9A3C12C(v0);
}

id sub_1C9A3E3A0(uint64_t a1, uint64_t a2)
{
  v26 = sub_1C9844824();
  v27 = v4;
  v24 = 15917;
  v25 = 0xE200000000000000;
  sub_1C98449A8();
  v5 = sub_1C9A932D8();

  v6 = sub_1C98446F0(v5);

  if (v6[2] == 2)
  {
    v8 = v6[4];
    v7 = v6[5];
    v10 = v6[6];
    v9 = v6[7];

    v11 = type metadata accessor for SNModelFeatureConnection();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR___SNModelFeatureConnection_impl];
    *v13 = v8;
    *(v13 + 1) = v7;
    *(v13 + 2) = v10;
    *(v13 + 3) = v9;
    v23.receiver = v12;
    v23.super_class = v11;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  else
  {

    type metadata accessor for SNError();
    sub_1C9A935B8();
    sub_1C99B66C0();
    MEMORY[0x1CCA90230](v15 + 58, v16 | 0x8000000000000000);
    MEMORY[0x1CCA90230](a1, a2);
    v17 = sub_1C9A41580();
    sub_1C9929478(v17, v18, v19, v20, v21, v22);

    return swift_willThrow();
  }
}

void sub_1C9A3E52C()
{
  sub_1C9A41634();
  v1 = sub_1C9A4168C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C9A3E3A0(v6, v5);

      if (v0)
      {

        return;
      }

      ++v3;
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v4 += 2;
      if (v2 == v3)
      {

        v7 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_8:
    sub_1C9A3C3A4(v7);
  }
}

uint64_t sub_1C9A3E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A3BA98(a1);
  v7 = v6;
  sub_1C9A3BDA4(a1);
  v9 = v8;

  v11 = *(sub_1C9A3C12C(v10) + 16);

  if (v11 == *(v9 + 16))
  {

    v13 = sub_1C9A3C12C(v12);
    v14 = sub_1C9A3E990(a3, v13);

    if ((v14 & 1) == 0)
    {

      type metadata accessor for SNError();
      sub_1C98CA988();
      sub_1C9A935B8();
      sub_1C99B66C0();
      MEMORY[0x1CCA90230](v28 + 53, v29 | 0x8000000000000000);
      v30 = MEMORY[0x1CCA90460](v7, MEMORY[0x1E69E6158]);
      v32 = v31;

      MEMORY[0x1CCA90230](v30, v32);

      sub_1C9A415B4();
      v33 = sub_1C9A92B38();
      MEMORY[0x1CCA90230](v33);

      MEMORY[0x1CCA90230](41, 0xE100000000000000);
      v22 = sub_1C9A41580();
      goto LABEL_8;
    }

    v16 = sub_1C9A3C12C(v15);
    v17 = sub_1C9A3E990(a2, v16);

    if (v17)
    {
    }

    type metadata accessor for SNError();
    sub_1C98CA988();
    sub_1C9A935B8();
    sub_1C99B66C0();
    MEMORY[0x1CCA90230](v34 + 62, v35 | 0x8000000000000000);
    v36 = MEMORY[0x1CCA90460](v9, MEMORY[0x1E69E6158]);
    v38 = v37;

    MEMORY[0x1CCA90230](v36, v38);

    sub_1C9A415B4();
    v39 = sub_1C9A92B38();
    MEMORY[0x1CCA90230](v39);

    MEMORY[0x1CCA90230](41, 0xE100000000000000);
  }

  else
  {

    type metadata accessor for SNError();
    sub_1C98CA988();
    sub_1C9A935B8();

    v19 = MEMORY[0x1CCA90460](v9, MEMORY[0x1E69E6158]);
    v21 = v20;

    MEMORY[0x1CCA90230](v19, v21);
  }

  v22 = sub_1C9A41580();
LABEL_8:
  sub_1C9929478(v22, v23, v24, v25, v26, v27);

  return swift_willThrow();
}

uint64_t sub_1C9A3E990(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_1C9A93CC8();

        sub_1C9A92528();
        v17 = sub_1C9A93D18();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_1C9A93B18();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A3EB50(uint64_t a1, id a2)
{
  v4 = [a2 inputDescriptionsByName];
  sub_1C97FD598();
  v5 = sub_1C9A92328();

  v6 = sub_1C9A3C288(v5);
  v7 = [a2 outputDescriptionsByName];
  v8 = sub_1C9A92328();

  v9 = sub_1C9A3C288(v8);
  sub_1C9A3E668(a1, v6, v9);
}

uint64_t sub_1C9A3EC5C()
{
  sub_1C9A41628();
  if (v0)
  {
    sub_1C9A32230(0x7473696C796E6564, 0xE800000000000000);
    if (v1)
    {
      sub_1C9A41608();
      sub_1C984ADE8();
      sub_1C9A3E360();
    }
  }

  return sub_1C9813734();
}

uint64_t sub_1C9A3ECD8()
{
  sub_1C9A41628();
  if (v0)
  {
    sub_1C9A32230(0xD000000000000014, 0x80000001C9ADF280);
    if (v1)
    {
      sub_1C9A41608();
      sub_1C984ADE8();
      sub_1C9A3E52C();
    }
  }

  return sub_1C9813734();
}

id sub_1C9A3ED54()
{
  sub_1C9A41628();
  if (!v5)
  {
    return 0;
  }

  v6 = v2;
  v7 = sub_1C9A32230(v3, v4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v11 = *v9;
  v10 = v9[1];
  swift_bridgeObjectRetain_n();
  v12 = sub_1C98445B8(v11, v10);
  if (v0)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v13 = v12;
    sub_1C999C360();
    sub_1C999C45C();
    v1 = [v13 integerValue];
    swift_bridgeObjectRelease_n();
  }

  return v1;
}

uint64_t sub_1C9A3EE3C()
{
  sub_1C9A41628();
  if (!v1)
  {
    return 2;
  }

  v2 = v0;
  v3 = sub_1C9A32230(0x6165467475706E69, 0xEC00000065727574);
  if ((v4 & 1) == 0)
  {
    return 2;
  }

  v5 = (*(v2 + 56) + 16 * v3);
  v7 = *v5;
  v6 = v5[1];

  v8 = sub_1C98C9A9C(v7, v6);

  return v8 & 1;
}

uint64_t sub_1C9A3EED4()
{
  sub_1C9A41628();
  if (v0)
  {
    sub_1C9A32230(0x656449646E756F73, 0xEF7265696669746ELL);
    if (v1)
    {
      sub_1C9A41608();
      sub_1C984ADE8();
      sub_1C9A92478();
    }
  }

  return sub_1C9813734();
}

uint64_t sub_1C9A3EF50(void *a1)
{
  v1 = [a1 metadata];
  type metadata accessor for MLModelMetadataKey(0);
  sub_1C9A40EFC(&qword_1EC3C54F0, 255, type metadata accessor for MLModelMetadataKey);
  sub_1C97CB094();
  v2 = sub_1C9A92328();

  sub_1C9878200(v2, &v5);

  if (v6)
  {
    sub_1C97A2CEC(&unk_1EC3C7B20);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1C97A59D0(&v5);
  }

  return sub_1C9A92348();
}

uint64_t sub_1C9A3F080(void *a1)
{
  sub_1C9A3EF50(a1);
  v3 = sub_1C9A3ECD8();

  if (!v1 && v3)
  {

    sub_1C9A3EB50(v5, a1);
  }

  return sub_1C9813734();
}

void sub_1C9A3F1F4(uint64_t a1@<X8>)
{
  sub_1C9A415A0();
  v3 = sub_1C9A3ED54();
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    sub_1C9A41680();
    v7 = sub_1C9A3EE3C();
    sub_1C9A41658();
    sub_1C9A41680();
    v8 = sub_1C9A3ED54();
    v10 = v9;
    sub_1C9A4166C();
    sub_1C9A41680();
    v11 = sub_1C9A3ED54();
    v13 = v12;
    v22 = v11;
    sub_1C9A41680();
    v14 = sub_1C9A3EED4();
    if (v14)
    {
      v15 = v14;
      v16 = sub_1C9A924A8();
      v20 = v17;
      v21 = v16;

      v19 = v20;
      v18 = v21;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *a1 = v5;
    *(a1 + 8) = v6 & 1;
    *(a1 + 9) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v10 & 1;
    *(a1 + 32) = v22;
    *(a1 + 40) = v13 & 1;
    *(a1 + 48) = v18;
    *(a1 + 56) = v19;
  }
}

double sub_1C9A3F32C(void *a1)
{
  sub_1C9A3EF50(a1);
  sub_1C9A3F1F4(v12);

  if (!v1)
  {
    v10.n128_u64[0] = sub_1C98DE19C(v2, v3, v4, v5, v6, v7, v8, v9, v12[0], v12[1], v10, v12[2]).n128_u64[0];
  }

  return v10.n128_f64[0];
}

unint64_t sub_1C9A3F3E8()
{
  result = qword_1EC3D2D78;
  if (!qword_1EC3D2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2D78);
  }

  return result;
}

BOOL sub_1C9A3F43C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C9A93CC8();
  sub_1C9A92528();
  v8 = sub_1C9A93D18();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1C9A93B18() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1C9A40B4C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_1C9A3F588(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1C9A93CB8();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1C9A40CB4(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1C9A3F658(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C9A934D8();

    if (v9)
    {

      type metadata accessor for SNModelFeatureConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_1C9A934C8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1C9A40910(v7, result + 1);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_1C9A406EC();
        }

        v17 = v8;
        sub_1C9A40AC8(v17, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for SNModelFeatureConnection();
    v11 = sub_1C9A931D8();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        sub_1C9A40DB8(v17, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1C9A931E8();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

void *sub_1C9A3F854()
{
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3D22F8);
  v2 = *v0;
  v3 = sub_1C9A93558();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1C9A3F9AC()
{
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3D2330);
  v2 = *v0;
  v3 = sub_1C9A93558();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1C9A3FAEC()
{
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3D2D80);
  v2 = *v0;
  v3 = sub_1C9A93558();
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

uint64_t sub_1C9A3FC3C()
{
  v1 = v0;
  v2 = *v0;
  sub_1C97A2CEC(&qword_1EC3D22F8);
  result = sub_1C9A93568();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1C9A93CC8();

        sub_1C9A92528();
        result = sub_1C9A93D18();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C9A3FE70()
{
  v1 = v0;
  v2 = *v0;
  sub_1C97A2CEC(&qword_1EC3D2330);
  result = sub_1C9A93568();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1C9A93CB8();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

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
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C9A4005C()
{
  v1 = v0;
  v2 = *v0;
  sub_1C97A2CEC(&qword_1EC3D2D80);
  result = sub_1C9A93568();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1C9A931D8();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

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
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v23;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C9A4026C()
{
  v1 = v0;
  v2 = *v0;
  sub_1C97A2CEC(&qword_1EC3D22F8);
  result = sub_1C9A93568();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1C99F14F0(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1C9A93CC8();
    sub_1C9A92528();
    result = sub_1C9A93D18();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C9A404C8()
{
  v1 = v0;
  v2 = *v0;
  sub_1C97A2CEC(&qword_1EC3D2330);
  result = sub_1C9A93568();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1C99F14F0(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1C9A93CB8();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C9A406EC()
{
  v1 = v0;
  v2 = *v0;
  sub_1C97A2CEC(&qword_1EC3D2D80);
  result = sub_1C9A93568();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1C99F14F0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1C9A931D8();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C9A40910(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C97A2CEC(&qword_1EC3D2D80);
    v2 = sub_1C9A93578();
    v14 = v2;
    sub_1C9A93488();
    while (1)
    {
      if (!sub_1C9A934F8())
      {

        return v2;
      }

      type metadata accessor for SNModelFeatureConnection();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1C9A406EC();
      }

      v2 = v14;
      result = sub_1C9A931D8();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1C9A40AC8(uint64_t a1, uint64_t a2)
{
  sub_1C9A931D8();
  result = sub_1C9A93468();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C9A40B4C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C9A4026C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C9A3FC3C();
LABEL_10:
      v15 = *v4;
      sub_1C9A93CC8();
      sub_1C9A92528();
      result = sub_1C9A93D18();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1C9A93B18() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1C9A3F854();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1C9A93BE8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1C9A40CB4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C9A404C8();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C9A3FE70();
LABEL_10:
      v12 = *v3;
      result = sub_1C9A93CB8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C9A3F9AC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C9A93BE8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C9A40DB8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C9A406EC();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C9A4005C();
LABEL_10:
      v12 = *v3;
      result = sub_1C9A931D8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for SNModelFeatureConnection();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = sub_1C9A931E8();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C9A3FAEC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C9A93BE8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C9A40EFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9A40F44()
{
  result = qword_1EC3D2D90;
  if (!qword_1EC3D2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2D90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelFeatureConnection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C9A41074(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9A410C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_1C9A41140()
{
  result = qword_1EC3D2DA8;
  if (!qword_1EC3D2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2DA8);
  }

  return result;
}

unint64_t sub_1C9A41198()
{
  result = qword_1EC3D2DB0;
  if (!qword_1EC3D2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2DB0);
  }

  return result;
}

unint64_t sub_1C9A411F0()
{
  result = qword_1EC3D2DB8;
  if (!qword_1EC3D2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2DB8);
  }

  return result;
}

unint64_t sub_1C9A41248()
{
  result = qword_1EC3D2DC0;
  if (!qword_1EC3D2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2DC0);
  }

  return result;
}

unint64_t sub_1C9A4129C()
{
  result = qword_1EC3D2DD0;
  if (!qword_1EC3D2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2DD0);
  }

  return result;
}

uint64_t sub_1C9A41328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C7D40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetectorHeadModelMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9A41474()
{
  result = qword_1EC3D2DF8;
  if (!qword_1EC3D2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2DF8);
  }

  return result;
}

unint64_t sub_1C9A414CC()
{
  result = qword_1EC3D2E00;
  if (!qword_1EC3D2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E00);
  }

  return result;
}

unint64_t sub_1C9A41524()
{
  result = qword_1EC3D2E08;
  if (!qword_1EC3D2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E08);
  }

  return result;
}

void sub_1C9A415B4()
{

  JUMPOUT(0x1CCA90230);
}

uint64_t sub_1C9A415E8()
{

  return sub_1C9A93888();
}

uint64_t sub_1C9A41608()
{
}

unint64_t sub_1C9A41634()
{

  return sub_1C98449A8();
}

uint64_t sub_1C9A4168C()
{

  return sub_1C9A932D8();
}

void sub_1C9A416AC()
{
  v0 = sub_1C9A92478();
  v1 = sub_1C9A92478();
  v2 = PPSCreateTelemetryIdentifier();

  v3 = v2;
  if (!v2)
  {
    sub_1C9A41C9C();
    v3 = swift_allocError();
    swift_willThrow();
  }

  qword_1EC3D34A0 = v3;
  byte_1EC3D34A8 = v2 == 0;
}

uint64_t sub_1C9A41778()
{
  if (qword_1EC3C5E38 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC3D34A0;
  v1 = byte_1EC3D34A8;
  if (byte_1EC3D34A8)
  {
    v2 = qword_1EC3D34A0;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
    result = 0;
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    result = swift_allocObject();
    *(result + 16) = sub_1C9A41C68;
    *(result + 24) = v4;
    v0 = sub_1C9A41C70;
  }

  qword_1EC3D34B0 = v0;
  *algn_1EC3D34B8 = result;
  byte_1EC3D34C0 = v1;
  return result;
}

void sub_1C9A4188C()
{
  v0 = sub_1C9A922F8();
  PPSSendTelemetry();
}

uint64_t (*sub_1C9A418F8())(uint64_t a1)
{
  result = sub_1C9A4191C();
  qword_1EC3D34C8 = result;
  unk_1EC3D34D0 = v1;
  return result;
}

uint64_t (*sub_1C9A4191C())(uint64_t a1)
{
  if (qword_1EC3C5E40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC3D34B0;
  v0 = *algn_1EC3D34B8;
  if (byte_1EC3D34C0)
  {
    v2 = qword_1EC3D34B0;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v3 = sub_1C9A91B58();
    sub_1C97BFF6C(v3, qword_1EC3D3108);
    v4 = sub_1C9A91B38();
    v5 = sub_1C9A92FA8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C9788000, v4, v5, "Could not create PowerLog telemetry writer; ignoring power logs.", v6, 2u);
      MEMORY[0x1CCA93280](v6, -1, -1);
    }

    sub_1C9A41C20(v1, v0, 1);

    return nullsub_1;
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v0;

    return sub_1C9A41C30;
  }
}

uint64_t sub_1C9A41AE0(uint64_t a1, __int16 a2)
{
  sub_1C97A2CEC(&qword_1EC3D23E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EE60;
  sub_1C9A41DF4();
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = a1;
  sub_1C9A41DF4();
  v5 = MEMORY[0x1E69E6370];
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = a2 & 1;
  sub_1C9A41DF4();
  *(inited + 240) = v5;
  *(inited + 216) = HIBYTE(a2) & 1;
  return sub_1C9A92348();
}

void sub_1C9A41C20(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C9A41C30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1C9A41C9C()
{
  result = qword_1EC3D2E10;
  if (!qword_1EC3D2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PowerLogUtils.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9A41DA0()
{
  result = qword_1EC3D2E18;
  if (!qword_1EC3D2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E18);
  }

  return result;
}

uint64_t sub_1C9A41DF4()
{

  return sub_1C9A93548();
}

uint64_t sub_1C9A41E10(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_1C9A44B78(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1C9A44B00(result, v2);
      break;
  }

  return result;
}

uint64_t sub_1C9A41E9C(const void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C97A2CEC(&qword_1EC3D2E38);
  sub_1C97AE9C8();
  v19 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  memcpy(__dst, a1, 0x41uLL);
  v11 = a2[3];
  v12 = a2[4];
  v13 = sub_1C97A5A8C(a2, v11);
  memcpy(v22, a1, 0x41uLL);
  v14 = type metadata accessor for SNSpeechEmotionResult();
  v20[2] = __dst;
  sub_1C986F240(__dst, v21);
  v15 = sub_1C9904DC0(v13, v22, v14, sub_1C9A44A90, v20, v11, v14, v12);
  if (v2)
  {
    memcpy(v21, v22, 0x41uLL);
    sub_1C97E8084(v21);
  }

  else
  {
    v16 = v15;
    memcpy(v21, v22, 0x41uLL);
    sub_1C97E8084(v21);
    v24 = v16;
    sub_1C97A2CEC(&qword_1EC3D2E40);
    sub_1C97AE67C(&qword_1EC3D2E48, &qword_1EC3D2E40);
    sub_1C9A91F68();

    sub_1C97AE67C(&qword_1EC3D2E50, &qword_1EC3D2E38);
    v3 = sub_1C9A91F28();
    (*(v19 + 8))(v10, v6);
  }

  return v3;
}

uint64_t sub_1C9A4211C()
{
  sub_1C97BE32C();
  sub_1C9A42C24();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A42154(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3D2E68);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A44C30();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C9A42258(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3D2EB0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  memcpy(__dst, v1, 0x41uLL);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A44CD8();
  sub_1C9A93DD8();
  __src[0] = 0;
  sub_1C97A5B24();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (v2)
  {
    v5 = sub_1C97AEB30();
    return v6(v5);
  }

  else
  {
    memcpy(__src, __dst, sizeof(__src));
    __dst[87] = 1;
    sub_1C97A6264(__dst, v10);
    sub_1C97A6210();
    sub_1C97BE02C();
    sub_1C9A93A18();
    memcpy(v10, __src, 0x41uLL);
    sub_1C97E8084(v10);
    v8 = sub_1C97AEB30();
    return v9(v8);
  }
}

uint64_t sub_1C9A42420@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3D2EA0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A44CD8();
  sub_1C9A93DB8();
  if (!v2)
  {
    __src[0] = 0;
    sub_1C97A5B78();
    sub_1C9A4538C();
    sub_1C9A938F8();
    __src[87] = 1;
    sub_1C97A62C0();
    sub_1C9A4538C();
    sub_1C9A938F8();
    v6 = sub_1C97BE31C();
    v7(v6);
    memcpy(a2, __src, 0x41uLL);
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C9A425C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v4;
  v17[2] = *(a1 + 32);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);
  v8 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v8;
  v16[2] = *(a2 + 32);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = static TimeRange.== infix(_:_:)(v17, v16);
  result = 0;
  if (v12 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64))), xmmword_1C9AA2B30)) & 0xF) == 0 && v5 == v9)
  {
    if (v6 == v10 && v7 == v11)
    {
      return 1;
    }

    else
    {

      return sub_1C9A93B18();
    }
  }

  return result;
}

uint64_t sub_1C9A426E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1685024621 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636E616E696D6F64 && a2 == 0xE900000000000065;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9A93B18();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C9A42930(char a1)
{
  result = 0x676E6152656D6974;
  switch(a1)
  {
    case 1:
      result = 0x6E656469666E6F63;
      break;
    case 2:
      result = 1685024621;
      break;
    case 3:
      result = 0x65636E656C6176;
      break;
    case 4:
      result = 0x6C6173756F7261;
      break;
    case 5:
      result = 0x636E616E696D6F64;
      break;
    case 6:
      result = 0x6564496C65646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C9A42A04()
{
  sub_1C9813AE4();
  v2 = v1;
  sub_1C97A2CEC(&unk_1EC3D2E90);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A44C84();
  sub_1C9A93DD8();
  sub_1C97BD12C();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (!v0)
  {
    sub_1C9A4539C(1);
    sub_1C97BE02C();
    sub_1C9A939E8();
    sub_1C9A4539C(2);
    sub_1C97BE02C();
    sub_1C9A939E8();
    sub_1C9A4539C(3);
    sub_1C97BE02C();
    sub_1C9A939E8();
    sub_1C9A4539C(4);
    sub_1C97BE02C();
    sub_1C9A939E8();
    sub_1C9A4539C(5);
    sub_1C97BE02C();
    sub_1C9A939E8();
    sub_1C97BE02C();
    sub_1C9A939C8();
  }

  v4 = sub_1C97AEB30();
  v5(v4);
  sub_1C9813AC0();
}

uint64_t sub_1C9A42C24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 80);
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1CCA919B0](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x1CCA919B0](*&v10);
  if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  MEMORY[0x1CCA919B0](*&v11);
  if (v6 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  MEMORY[0x1CCA919B0](*&v12);
  if (v8 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x1CCA919B0](*&v13);

  return sub_1C9A92528();
}

void sub_1C9A42D50()
{
  sub_1C9813AE4();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3D2E78);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A44C84();
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C97BD0D8();
    sub_1C9A4538C();
    sub_1C9A938F8();
    sub_1C9A45344(1);
    sub_1C9A938C8();
    v7 = v6;
    sub_1C9A45344(2);
    sub_1C9A938C8();
    v9 = v8;
    sub_1C9A45344(3);
    sub_1C9A938C8();
    v11 = v10;
    sub_1C9A45344(4);
    sub_1C9A938C8();
    v13 = v12;
    sub_1C9A45344(5);
    sub_1C9A938C8();
    v15 = v14;
    sub_1C9A45344(6);
    v16 = sub_1C9A938A8();
    v18 = v17;
    v19 = sub_1C97BE31C();
    v20(v19);
    *v4 = v21;
    *(v4 + 16) = v22;
    *(v4 + 32) = v23;
    *(v4 + 48) = v7;
    *(v4 + 56) = v9;
    *(v4 + 64) = v11;
    *(v4 + 72) = v13;
    *(v4 + 80) = v15;
    *(v4 + 88) = v16;
    *(v4 + 96) = v18;
  }

  sub_1C97A592C(v2);
  sub_1C9813AC0();
}

uint64_t sub_1C9A42F68(uint64_t a1)
{
  v2 = sub_1C9A44C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A42FA4(uint64_t a1)
{
  v2 = sub_1C9A44C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A42FF8(uint64_t a1)
{
  v2 = sub_1C9A44CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A43034(uint64_t a1)
{
  v2 = sub_1C9A44CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A430A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A426E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A430D0(uint64_t a1)
{
  v2 = sub_1C9A44C84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A4310C(uint64_t a1)
{
  v2 = sub_1C9A44C84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A43150()
{
  sub_1C9A93CC8();
  sub_1C9A42C24();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A431C0()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C9A4324C(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = a1;
  v5[5] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C97F489C, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[6] = v9;
    *v9 = v7;
    sub_1C97DA950(v9);

    return sub_1C98A361C();
  }
}

uint64_t sub_1C9A433D0(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v4[3] = sub_1C97A2CEC(&qword_1EC3CC760);
  v4[4] = sub_1C9A452C0();
  v4[0] = a2;

  sub_1C99DC184(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C9A43460()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C9A431C0();
}

uint64_t sub_1C9A43510()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C9A43460();
}

id sub_1C9A435A0@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = type metadata accessor for SNSpeechEmotionResult();
  v4 = objc_allocWithZone(v3);
  memcpy(&v4[OBJC_IVAR___SNSpeechEmotionResult_impl], __dst, 0x68uLL);
  sub_1C98DDAE8(__dst, v7);
  v6.receiver = v4;
  v6.super_class = v3;
  result = objc_msgSendSuper2(&v6, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_1C9A43634()
{
  v0 = type metadata accessor for SNEstimateSpeechEmotionRequest();
  v2.receiver = objc_allocWithZone(v0);
  v2.super_class = v0;

  type metadata accessor for SNSpeechEmotionEstimator();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1C9A436A0()
{
  type metadata accessor for SNSpeechEmotionEstimator();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1C9A436E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  memcpy(__dst, (*a1 + OBJC_IVAR___SNSpeechEmotionResult_impl), sizeof(__dst));
  memcpy(a2, (v3 + OBJC_IVAR___SNSpeechEmotionResult_impl), 0x68uLL);
  return sub_1C98DDAE8(__dst, &v5);
}

id SNEstimateSpeechEmotionRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4.receiver = objc_allocWithZone(ObjectType);
  v4.super_class = ObjectType;
  result = objc_msgSendSuper2(&v4, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNEstimateSpeechEmotionRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v7);
  if (!v8)
  {
    return 0;
  }

  sub_1C97A2D34(&v7, v6);
  sub_1C97BD360(v6, v5);
  v2 = swift_dynamicCast();
  if (v2)
  {
  }

  sub_1C97A592C(v6);
  return v2;
}

id SNEstimateSpeechEmotionRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C97FD140();
  sub_1C97A29D0(v4, v5, v6);
  if (v1)
  {

    swift_getObjectType();
    sub_1C97FD174();
    return 0;
  }

  else
  {
    v9.receiver = objc_allocWithZone(ObjectType);
    v9.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v9, sel_init);

    swift_getObjectType();
    sub_1C97FD174();
  }

  return v7;
}

Swift::Void __swiftcall SNEstimateSpeechEmotionRequest.encode(with:)(NSCoder with)
{
  v3 = sub_1C97FD140();
  sub_1C97A0F80(v3, v4, v5);
  if (v1)
  {
    v6 = sub_1C9A913B8();
    [(objc_class *)with.super.isa failWithError:v6];
  }
}

id SNEstimateSpeechEmotionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_UNKNOWN **sub_1C9A43BAC()
{
  result = sub_1C9A436A0();
  if (v0)
  {
    return &off_1F4950810;
  }

  return result;
}

id sub_1C9A43C14(uint64_t a1, uint64_t a2)
{
  v50[6] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  sub_1C97A2CEC(&qword_1EC3C6CA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C9AA3B60;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = 0xD000000000000018;
  *(v5 + 56) = 0x80000001C9ADF420;

  v6 = sub_1C9A92768();

  v7 = [v4 pathWithComponents_];

  if (!v7)
  {
    sub_1C9A924A8();
    v7 = sub_1C9A92478();
  }

  v8 = objc_opt_self();
  v50[0] = 0;
  v9 = sub_1C9A761F8(v8, v50);
  if (!v9)
  {
    v42 = v50[0];

    sub_1C9A913C8();
    swift_willThrow();
    return v9;
  }

  v10 = v50[0];
  v11 = sub_1C9A92478();
  v12 = sub_1C9A453BC();
  v15 = sub_1C9A72FAC(v12, v13, v11, v14);

  if (!v15)
  {
    v43 = v50[0];

    sub_1C9A913C8();
    swift_willThrow();
LABEL_17:

    return v9;
  }

  v16 = v50[0];
  v17 = sub_1C9A92478();
  v18 = sub_1C9A453BC();
  v21 = sub_1C9A73CD4(v18, v19, v17, v20);

  if (!v21)
  {
    v44 = v50[0];

    sub_1C9A913C8();
    swift_willThrow();

    goto LABEL_17;
  }

  v22 = v50[0];
  v23 = sub_1C9A92478();
  v50[0] = 0;
  v24 = sub_1C9A73FA0(v8, v9, v23, v7, v50);

  if (!v24)
  {
    v45 = v50[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_17;
  }

  v25 = v50[0];
  sub_1C9A453A8();
  sub_1C9A76554(v26, v27, 1, v28);
  v29 = sub_1C9A4535C();
  if (!sub_1C9A762F8(v29, v30, v15, v21, 0, 0, v31, v32))
  {
    v46 = v49;
    sub_1C9A913C8();

LABEL_16:
    swift_willThrow();

    goto LABEL_17;
  }

  v33 = v49;
  sub_1C9A453A8();
  sub_1C9A765E4(v34, v35, v36);
  v37 = sub_1C9A4535C();
  if ((sub_1C9A762F8(v37, v38, v21, v24, 0, 0, v39, v40) & 1) == 0)
  {
    v47 = v49;
    sub_1C9A913C8();

    goto LABEL_16;
  }

  v41 = v49;
  sub_1C9A695C8(v9);
  sub_1C9A69B8C(v9);

  return v9;
}

id sub_1C9A43FE8(void *a1, int64_t a2, id a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  v8 = sub_1C9A749D8(v7, a1);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = v8;
  v10 = sub_1C9A91618();
  v12 = v11;

  v13 = sub_1C97AEB30();
  if (MEMORY[0x1CCA8F2E0](v13) <= 15)
  {
    if (qword_1EC3C5520 != -1)
    {
      swift_once();
    }

    v14 = sub_1C9A91B58();
    sub_1C97BFF6C(v14, qword_1EC3D3108);
    v15 = sub_1C97AEB30();
    sub_1C97CE3DC(v15, v16);
    v17 = sub_1C9A91B38();
    v18 = sub_1C9A92FA8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      v20 = v19;
      v21 = 0;
      switch(v12 >> 62)
      {
        case 1uLL:
          LODWORD(v21) = HIDWORD(v10) - v10;
          if (__OFSUB__(HIDWORD(v10), v10))
          {
            goto LABEL_55;
          }

          v21 = v21;
LABEL_45:
          *(v19 + 4) = v21;
          v60 = sub_1C97AEB30();
          sub_1C97A5978(v60, v61);
          *(v20 + 12) = 2048;
          *(v20 + 14) = 4;
          _os_log_impl(&dword_1C9788000, v17, v18, "EAR framework returned %ld bytes instead of %ld float elements", v20, 0x16u);
          MEMORY[0x1CCA93280](v20, -1, -1);
          break;
        case 2uLL:
          v58 = *(v10 + 16);
          v57 = *(v10 + 24);
          v59 = __OFSUB__(v57, v58);
          v21 = v57 - v58;
          if (!v59)
          {
            goto LABEL_45;
          }

          goto LABEL_56;
        case 3uLL:
          goto LABEL_45;
        default:
          v21 = BYTE6(v12);
          goto LABEL_45;
      }
    }

    else
    {
      v53 = sub_1C97AEB30();
      sub_1C97A5978(v53, v54);
    }

    v62 = sub_1C97AEB30();
    sub_1C97A5978(v62, v63);
    return MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1C97AEB30();
  v24 = sub_1C9A41E10(v22, v23);
  v70.start.value = 0;
  v25 = sub_1C9A72C60(v7, a1, &v70);
  if (!v25)
  {
    a3 = v70.start.value;

    sub_1C9A913C8();

    swift_willThrow();
    v55 = sub_1C97AEB30();
    sub_1C97A5978(v55, v56);
    return a3;
  }

  v26 = v25;
  v27 = v70.start.value;
  v28 = sub_1C9A93C88();
  v29 = sub_1C9A67138(a1);
  if (v29 < 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  CMTimeMake(&v70.start, v28, v29);
  value = v70.start.value;
  v31 = *&v70.start.timescale;
  epoch = v70.start.epoch;
  v32 = sub_1C9A67138(a1);
  if (v32 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v68 = v26;
  CMTimeMake(&v70.start, a2, v32);
  v33 = v70.start.value;
  v34 = *&v70.start.timescale;
  v35 = v70.start.epoch;
  v36 = [objc_allocWithZone(type metadata accessor for SNSpeechEmotionResult()) init];
  v37 = *(v24 + 16);
  if (!v37)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v38 = *(v24 + 32) / 3.0;
  v39 = -1.0;
  if (v38 > -1.0)
  {
    v40 = *(v24 + 32) / 3.0;
  }

  else
  {
    v40 = -1.0;
  }

  if (v38 <= 1.0)
  {
    v41 = v40;
  }

  else
  {
    v41 = 1.0;
  }

  v42 = &v36[OBJC_IVAR___SNSpeechEmotionResult_impl];
  *&v36[OBJC_IVAR___SNSpeechEmotionResult_impl + 56] = v41;
  if (v37 == 1)
  {
    goto LABEL_52;
  }

  v43 = *(v24 + 36) * 0.5;
  if (v43 > -1.0)
  {
    v39 = *(v24 + 36) * 0.5;
  }

  if (v43 > 1.0)
  {
    v39 = 1.0;
  }

  v42[9] = v39;
  if (v37 < 3)
  {
    goto LABEL_53;
  }

  v67 = v36;
  v44 = *(v24 + 40) * 0.5;
  if (v44 > -1.0)
  {
    v45 = *(v24 + 40) * 0.5;
  }

  else
  {
    v45 = -1.0;
  }

  if (v44 <= 1.0)
  {
    v46 = v45;
  }

  else
  {
    v46 = 1.0;
  }

  v42[8] = v46;
  if (v37 == 3)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  v47 = *(v24 + 44);

  if ((v47 * 0.5) > -1.0)
  {
    v48 = v47 * 0.5;
  }

  else
  {
    v48 = -1.0;
  }

  if ((v47 * 0.5) <= 1.0)
  {
    v49 = v48;
  }

  else
  {
    v49 = 1.0;
  }

  v42[10] = v49;
  v42[11] = -2.31584178e77;
  *(v42 + 12) = 0x80000001C9ADF400;
  v42[6] = 1.0;

  duration.epoch = v35;
  start.value = value;
  *&start.timescale = v31;
  start.epoch = epoch;
  duration.value = v33;
  *&duration.timescale = v34;
  CMTimeRangeMake(&v70, &start, &duration);
  v74 = v70;
  (a3)();
  if (v3)
  {

    v51 = sub_1C97AEB30();
    sub_1C97A5978(v51, v52);
  }

  else
  {
    v50 = sub_1C9A92F08();
    (a3)(v50);
    sub_1C9A92F18();
    SNSpeechEmotionResult.timeRange.setter(v73);
    sub_1C97A2CEC(&unk_1EC3C6E20);
    a3 = swift_allocObject();
    *(a3 + 1) = xmmword_1C9A9DF30;
    *(a3 + 4) = v67;

    v65 = sub_1C97AEB30();
    sub_1C97A5978(v65, v66);
  }

  return a3;
}

id sub_1C9A44554()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C9A44AAC();
  swift_allocError();
  return swift_willThrow();
}

void sub_1C9A445B0()
{
  v2 = v0;
  v3 = *v0;
  sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  type metadata accessor for SNFileUtils();
  sub_1C9A456F0(v6);
  v7 = sub_1C9A91558();
  if (sub_1C97ABF20(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1C9A91518();
    v10 = v9;
    (*(*(v7 - 8) + 8))(v6, v7);
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v3;
    v12 = sub_1C97C1C8C();

    if (!v1)
    {
      v13 = v2[2];
      v2[2] = v12;
    }
  }
}

id sub_1C9A44744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1C9A43C14(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C9A44770()
{
  result = sub_1C9A44554();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9A92478();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

uint64_t sub_1C9A44828(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_1C9A44868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C9A448DC()
{
  result = qword_1EC3D2E20;
  if (!qword_1EC3D2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E20);
  }

  return result;
}

unint64_t sub_1C9A44930(uint64_t a1)
{
  result = sub_1C98DD76C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9A44958(uint64_t a1)
{
  result = sub_1C98DDA94();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9A44984()
{
  result = qword_1EC3D2E28;
  if (!qword_1EC3D2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E28);
  }

  return result;
}

unint64_t sub_1C9A449DC()
{
  result = qword_1EC3D2E30;
  if (!qword_1EC3D2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E30);
  }

  return result;
}

unint64_t sub_1C9A44AAC()
{
  result = qword_1EC3D2E58;
  if (!qword_1EC3D2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E58);
  }

  return result;
}

void *sub_1C9A44B00(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  return sub_1C9A08564(&v3, (a2 >> 50) & 0x3F);
}

char *sub_1C9A44B78(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1C9A91328();
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return sub_1C9A08564(v5, v9 / 4);
}

unint64_t sub_1C9A44C30()
{
  result = qword_1EC3D2E70;
  if (!qword_1EC3D2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E70);
  }

  return result;
}

unint64_t sub_1C9A44C84()
{
  result = qword_1EC3D2E80;
  if (!qword_1EC3D2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2E80);
  }

  return result;
}

unint64_t sub_1C9A44CD8()
{
  result = qword_1EC3D2EA8;
  if (!qword_1EC3D2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2EA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechEmotionEstimation.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SpeechEmotionEstimation.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9A44EF4(_BYTE *result, int a2, int a3)
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