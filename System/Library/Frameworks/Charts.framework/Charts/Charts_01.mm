uint64_t sub_1AACBEA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AACBEA6C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1AACBEA6C()
{
  result = qword_1ED9B3740;
  if (!qword_1ED9B3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B3740);
  }

  return result;
}

uint64_t sub_1AACBEACC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(v3 + 56) + 72 * v12;
    v15 = *(v14 + 64);
    v17 = *(v14 + 32);
    v16 = *(v14 + 48);
    v47 = *(v14 + 16);
    v18 = *v14;
    v48 = v17;
    v49 = v16;
    v46 = v18;
    v50 = v15;
    v30 = v47;
    v31 = v18;
    v28 = v17;
    v29 = v16;
    sub_1AACB1E30(&v46, &v41);
    if (BYTE8(v31) == 254)
    {
      return 1;
    }

    v46 = v31;
    v47 = v30;
    v48 = v28;
    v49 = v29;
    v50 = v15;
    v19 = sub_1AACB6398(v13);
    if ((v20 & 1) == 0)
    {
      v43 = v48;
      v44 = v49;
      v45 = v50;
      v41 = v46;
      v42 = v47;
      sub_1AACB24B4(&v41);
      return 0;
    }

    v21 = *(a2 + 56) + 72 * v19;
    v37[0] = *v21;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    v24 = *(v21 + 16);
    v38 = *(v21 + 64);
    v37[2] = v23;
    v37[3] = v22;
    v37[1] = v24;
    v25 = *(v21 + 48);
    v34 = *(v21 + 32);
    v35 = v25;
    v36 = *(v21 + 64);
    v26 = *(v21 + 16);
    v32 = *v21;
    v33 = v26;
    sub_1AACB1E30(v37, &v41);
    v27 = sub_1AACD22F8(&v32, &v46);
    v39[2] = v34;
    v39[3] = v35;
    v40 = v36;
    v39[0] = v32;
    v39[1] = v33;
    sub_1AACB24B4(v39);
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v41 = v46;
    v42 = v47;
    result = sub_1AACB24B4(&v41);
    if (!v27)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
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

uint64_t sub_1AACBED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AACBF400();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1AACBED6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v16[2] = v2[2];
  v17[0] = v5;
  *(v17 + 9) = *(v2 + 57);
  v6 = v2[1];
  v16[0] = *v2;
  v16[1] = v6;
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  v9 = v2[3];
  v8[3] = v2[2];
  v8[4] = v9;
  *(v8 + 73) = *(v2 + 57);
  v10 = v2[1];
  v8[1] = *v2;
  v8[2] = v10;
  sub_1AACB6480(0, &qword_1ED9B1E98, sub_1AACAA3E4, &type metadata for ChartScaleModifier, MEMORY[0x1E697FDE8]);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  sub_1AACB60D0();
  v13 = (a2 + *(v12 + 36));
  *v13 = KeyPath;
  v13[1] = sub_1AACBE7A0;
  v13[2] = v8;
  return sub_1AACBEF10(v16, &v15);
}

uint64_t sub_1AACBEEB0()
{
  v1 = *(v0 + 64);
  if (v1 >> 8 <= 0xFE)
  {
    sub_1AACAF350(*(v0 + 40), *(v0 + 48), *(v0 + 56), v1, BYTE1(v1));
  }

  v2 = *(v0 + 88);
  if (v2 <= 0xFB)
  {
    sub_1AADC6888(*(v0 + 72), *(v0 + 80), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

unint64_t sub_1AACBEF48(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1AACB6398(a4);
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
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1AACBF0C4(v18, a5 & 1);
      result = sub_1AACB6398(a4);
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
      v21 = result;
      sub_1AAD95408();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a4;
    v25 = v23[7] + 24 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
}

uint64_t sub_1AACBF0C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B2958, sub_1AACB62F8);
  v34 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v35 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      result = sub_1AAF906F4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v35;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AACBF3A0()
{
  sub_1AACB6BD8();

  return sub_1AAF8E154();
}

unint64_t sub_1AACBF400()
{
  result = qword_1ED9B4490;
  if (!qword_1ED9B4490)
  {
    sub_1AACB606C();
    sub_1AACBF5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4490);
  }

  return result;
}

void *sub_1AACBF478()
{
  result = sub_1AACBF4A0(MEMORY[0x1E69E7CC0]);
  qword_1ED9C3918 = result;
  return result;
}

void *sub_1AACBF4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AADFB594();
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = sub_1AACB6398(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = result;
    *(v13 + 16) = v6;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 24);
    v5 = *(v12 - 16);
    v19 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_1AACB6398(v4);
    v12 = v17;
    v6 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AACBF5D4()
{
  result = qword_1ED9B4AB8[0];
  if (!qword_1ED9B4AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B4AB8);
  }

  return result;
}

double sub_1AACBF628@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_1AAF8E144();
  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_1AACBF684@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1AACBF690(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1AACBF6E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = sub_1AAE2F2F4(v7);
  if (v8 && (sub_1AACB4A98(v8), (sub_1AAD00C3C(a1) & 1) == 0))
  {
    sub_1AACB0C3C(a1, v13);
    sub_1AAE39440(v13);
  }

  else
  {
    (*(v5 + 16))(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = *(a1 + 16);
    (*(v5 + 32))(v10 + v9, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
    sub_1AAF8F124();
    sub_1AAF8E054();
    v13[0] = sub_1AACB0BB4;
    v13[1] = v10;
    sub_1AACBF94C(v13);
  }

  memcpy(v12, v13, sizeof(v12));
  sub_1AACBF954(0);
  sub_1AACBF9FC();
  sub_1AACBE0F4();
  sub_1AACBE068(&qword_1ED9B2D60, sub_1AACBF9FC, sub_1AACCD530, sub_1AACCFA24);
  sub_1AAF8E374();
  return memcpy(a2, v14, 0x12AuLL);
}

void sub_1AACBF990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AACBF9FC()
{
  if (!qword_1ED9B2D58)
  {
    sub_1AAD00D70(255, &qword_1ED9B2E00, sub_1AACCF78C, sub_1AAE393E8, MEMORY[0x1E697E830]);
    sub_1AAD0A750(255, &qword_1ED9B2BF0, sub_1AACCC830, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2D58);
    }
  }
}

unint64_t sub_1AACBFAEC()
{
  result = qword_1ED9B5A28;
  if (!qword_1ED9B5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5A28);
  }

  return result;
}

unint64_t sub_1AACBFB48()
{
  result = qword_1ED9B48A8[0];
  if (!qword_1ED9B48A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B48A8);
  }

  return result;
}

uint64_t sub_1AACBFB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8E134();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  sub_1AAF8E104();
  v8 = type metadata accessor for ChartEnvironmentValues(0);
  sub_1AAF8E114();
  sub_1AAF8E0B4();
  sub_1AAF8E084();
  *(a2 + *(v8 + 28)) = v9;
  sub_1AAF8E094();
  sub_1AACBFE5C();
  sub_1AAF8E144();
  result = (*(v5 + 8))(v7, v4);
  *(a2 + *(v8 + 36)) = v11[15];
  return result;
}

double sub_1AACBFCF4@<D0>(_OWORD *a1@<X8>)
{
  sub_1AACBFEB0();
  sub_1AAF8E144();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_1AACBFD44@<D0>(uint64_t a1@<X8>)
{
  sub_1AACBFE08();
  sub_1AAF8E144();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

unint64_t sub_1AACBFE08()
{
  result = qword_1ED9B5A38[0];
  if (!qword_1ED9B5A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B5A38);
  }

  return result;
}

unint64_t sub_1AACBFE5C()
{
  result = qword_1ED9B5AA8;
  if (!qword_1ED9B5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5AA8);
  }

  return result;
}

unint64_t sub_1AACBFEB0()
{
  result = qword_1ED9B5A20;
  if (!qword_1ED9B5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5A20);
  }

  return result;
}

double sub_1AACBFF04@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

unint64_t sub_1AACBFF9C()
{
  result = qword_1ED9B5A08;
  if (!qword_1ED9B5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5A08);
  }

  return result;
}

uint64_t sub_1AACBFFF0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED9B5A18 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1AACBF6A8(&byte_1ED9C38C8, v2);
}

uint64_t sub_1AACC0060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AACC009C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AACC00E8(uint64_t result, uint64_t a2)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  if (*(result + 25) <= 1u)
  {
    if (*(result + 25))
    {

      v8 = sub_1AACC0420(v15);

      sub_1AACAF350(v4, v3, v5, v6, 1u);
      v9 = v4;
      v10 = v3;
      v11 = v5;
      v12 = v6;
      v13 = 1;
    }

    else
    {

      v8 = sub_1AACC0420(v7);

      sub_1AACAF350(v4, v3, v5, v6, 0);
      v9 = v4;
      v10 = v3;
      v11 = v5;
      v12 = v6;
      v13 = 0;
    }

    goto LABEL_7;
  }

  if (*(result + 25) == 2)
  {

    v8 = sub_1AAF6C314(v14);

    sub_1AACAF350(v4, v3, v5, v6, 2u);
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    v13 = 2;
LABEL_7:
    sub_1AACAF350(v9, v10, v11, v12, v13);
    return v8;
  }

  v16 = *(a2 + 16);
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    sub_1AACB407C(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370]);
    v21 = v18;
    v22 = &off_1F1FE4488;
    v20[0] = v4;
    swift_beginAccess();
    result = sub_1AACB8910(v20, v17);
    v8 = *(a2 + 16);
    if (!__OFADD__(v8, 1))
    {
      *(a2 + 16) = v8 + 1;
      sub_1AACB4144(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
      v21 = v19;
      v22 = &off_1F1FE4488;
      v20[0] = BYTE1(v4) & 1;
      sub_1AACB8910(v20, v8 + 1);
      swift_endAccess();
      if (v6 == 255)
      {

        sub_1AACAF350(v4, v3, v5, 0xFFu, 3u);
      }

      else
      {
        sub_1AAF6B7F8(v3, v5, v6);
      }

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACC0374(uint64_t result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    *(v5 + 16) = v7;
    sub_1AACB40E8(0, a2, a3, a4, MEMORY[0x1E69E62F8]);
    v10[3] = v9;
    v10[4] = &off_1F1FE4488;
    v10[0] = v8;
    swift_beginAccess();

    sub_1AACB8910(v10, v7);
    swift_endAccess();
    return *(v5 + 16);
  }

  return result;
}

uint64_t sub_1AACC043C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B1E30, sub_1AACB62F8);
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 72 * v20;
      v34 = *(v22 + 32);
      v35 = *(v22 + 48);
      v36 = *(v22 + 64);
      v32 = *v22;
      v33 = *(v22 + 16);
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      result = sub_1AAF906F4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 72 * v15;
      *(v16 + 32) = v34;
      *(v16 + 48) = v35;
      *(v16 + 64) = v36;
      *v16 = v32;
      *(v16 + 16) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AACC0710(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1AADC6888(result, a2, a3);
  }

  return result;
}

uint64_t sub_1AACC0724()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AACC0764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 + 16);
  v104 = *a1;
  v105 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v102 = *(a1 + 40);
  v103[0] = v10;
  *(v103 + 10) = *(a1 + 66);
  v11 = *(v4 + 32);
  v12 = v11;
  v106[0] = *(v4 + 16);
  v106[1] = v11;
  v13 = *(v4 + 64);
  v14 = *(v4 + 80);
  v110 = *(v4 + 96);
  v108 = v13;
  v109 = v14;
  v107 = *(v4 + 48);
  v15 = *(a1 + 16);
  v89 = v104;
  v90 = v15;
  v16 = *(a1 + 56);
  v91 = *(a1 + 40);
  *v92 = v16;
  *&v92[10] = *(a1 + 66);
  *&v97[6] = v106[0];
  *&v97[22] = v12;
  if (v9)
  {
    if (v107)
    {
      v17 = *(v4 + 32);
      v74[0] = *(v4 + 16);
      v74[1] = v17;
      *v75 = v107;
      *&v75[8] = *(v4 + 56);
      *&v75[24] = *(v4 + 72);
      *&v75[34] = *(v4 + 82);
      v81 = v74[0];
      v82 = v17;
      *&v83[48] = *&v75[48];
      *&v83[16] = *&v75[16];
      *&v83[32] = *&v75[32];
      *v83 = *v75;
      v18 = *(a1 + 16);
      v98[0] = *a1;
      v98[1] = v18;
      v19 = *(a1 + 40);
      v20 = *(a1 + 56);
      *(v101 + 10) = *(a1 + 66);
      v101[0] = v20;
      v100 = v19;
      v99 = v9;
      sub_1AACC9A40(v106, &v78, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
      sub_1AACC9A40(v106, &v78, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
      sub_1AACC135C(a1, &v78);
      v21 = sub_1AACF0744(v98, &v81);
      sub_1AACC140C(v106, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
      sub_1AACC140C(v74, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
      v78 = v89;
      v79 = v90;
      *v80 = v9;
      *&v80[8] = v91;
      *&v80[24] = *v92;
      *&v80[34] = *&v92[10];
      sub_1AACC140C(&v78, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
      if (v21)
      {
        goto LABEL_34;
      }

      goto LABEL_7;
    }
  }

  else if (!v107)
  {
    v73 = *(a1 + 16);
    v81 = *a1;
    v82 = v73;
    *v83 = 0;
    *&v83[8] = *(a1 + 40);
    *&v83[24] = *(a1 + 56);
    *&v83[34] = *(a1 + 66);
    sub_1AACC9A40(v106, v98, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
    sub_1AACC135C(a1, v98);
    sub_1AACC140C(&v81, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
    goto LABEL_34;
  }

  v22 = *(a1 + 16);
  v81 = *a1;
  v82 = v22;
  *&v83[8] = *(a1 + 40);
  *&v83[24] = *(a1 + 56);
  *&v83[34] = *(a1 + 66);
  v84 = *v97;
  *v85 = *&v97[16];
  *v83 = v9;
  *&v85[14] = *&v97[30];
  v86 = v107;
  *(v88 + 10) = *(v4 + 82);
  v23 = *(v4 + 72);
  v87 = *(v4 + 56);
  v88[0] = v23;
  sub_1AACC9A40(v106, v98, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
  sub_1AACC135C(a1, v98);
  sub_1AACC9B18(&v81, sub_1AACC6A98);
LABEL_7:
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  sub_1AACC135C(a1, &v78);

  sub_1AACC26E0(a1, a2, &v91);
  v24 = *(v4 + 64);
  *v80 = *(v4 + 48);
  *&v80[16] = v24;
  *&v80[32] = *(v4 + 80);
  *&v80[48] = *(v4 + 96);
  v25 = *(v4 + 32);
  v78 = *(v4 + 16);
  v79 = v25;
  v26 = v105;
  *(v4 + 16) = v104;
  *(v4 + 32) = v26;
  *(v4 + 48) = v9;
  v27 = v102;
  v28 = v103[0];
  *(v4 + 82) = *(v103 + 10);
  *(v4 + 72) = v28;
  *(v4 + 56) = v27;
  sub_1AACC135C(a1, v74);
  sub_1AACC140C(&v78, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
  v78 = v91;
  *&v79 = *v92;
  BYTE8(v79) = v92[8] & 1;
  *v80 = *&v92[16];
  v80[16] = v93 & 1;
  v80[17] = v94 & 1;
  *&v80[24] = v95;
  *&v80[40] = v96;
  type metadata accessor for SignalParametersContext();
  v29 = swift_allocObject();
  v30 = sub_1AACC22A0(MEMORY[0x1E69E7CC0]);
  *(v29 + 16) = a2;
  *(v29 + 24) = v30;
  v31 = *(v4 + 120);
  v32 = *(v4 + 144);
  v33 = *(v4 + 152);
  v34 = *(v4 + 184);
  *v97 = *(v4 + 168);
  *&v97[16] = v34;
  v35 = *(v4 + 208);
  *&v97[32] = *(v4 + 200);
  swift_beginAccess();
  type metadata accessor for DataflowGraphBuilder();
  swift_allocObject();

  v36 = sub_1AACC450C(&v78, v29, v31, v32, v33, v35, v97, (v4 + 280));
  swift_endAccess();
  *(v4 + 128) = sub_1AACF11B4;
  *(v4 + 136) = v29;

  *(v4 + 160) = *(v4 + 200);

  *(v4 + 288) = v36[3];

  *(v4 + 296) = v36[4];

  *(v4 + 304) = v36[5];

  *(v4 + 312) = v36[6];

  *(v4 + 320) = v36[8];

  *(v4 + 328) = v36[9];

  *(v4 + 336) = v36[7];

  *(v4 + 216) = v36[10];

  *(v4 + 224) = v36[11];

  if (*(v36[2] + 16) && (sub_1AACB6398(0), (v37 & 1) != 0))
  {
  }

  else
  {
    v38 = 0;
  }

  *(v4 + 232) = v38;

  if (*(v36[2] + 16) && (sub_1AACB6398(1u), (v39 & 1) != 0))
  {
  }

  else
  {
    v40 = 0;
  }

  *(v4 + 240) = v40;

  if (*(v36[2] + 16) && (sub_1AACB6398(5u), (v41 & 1) != 0))
  {
  }

  else
  {
    v42 = 0;
  }

  *(v4 + 248) = v42;

  if (*(v36[2] + 16) && (sub_1AACB6398(6u), (v43 & 1) != 0))
  {
  }

  else
  {
    v44 = 0;
  }

  *(v4 + 256) = v44;

  if (*(v36[2] + 16) && (sub_1AACB6398(7u), (v45 & 1) != 0))
  {
  }

  else
  {
    v46 = 0;
  }

  *(v4 + 264) = v46;

  v47 = v36[2];
  if (*(v47 + 16) && (v48 = sub_1AACB6398(8u), (v49 & 1) != 0))
  {
    v50 = *(*(v47 + 56) + 8 * v48);
  }

  else
  {

    v50 = 0;
  }

  *(v4 + 272) = v50;

LABEL_34:
  v51 = *(v4 + 128);

  v51(a2);

  v52 = type metadata accessor for ChartEnvironmentValues(0);
  v53 = v52[6];

  sub_1AACF1548(a3 + v53);

  sub_1AACF1A54(a3);

  v54 = v52[5];

  sub_1AACF1EEC(a3 + v54);

  v55 = *(v4 + 192);
  v56 = *(a3 + v52[7]);
  swift_beginAccess();
  if ((*(v55 + 48) & 1) != 0 || v56 != *(v55 + 40))
  {
    *(v55 + 40) = v56;
    *(v55 + 48) = 0;

    sub_1AACDCA88();
    *(v55 + 16) = 1;
    swift_beginAccess();
    v57 = *(v55 + 32);
    v58 = *(v57 + 16);
    if (v58)
    {
      v59 = v57 + 32;

      do
      {
        sub_1AACDCB7C(v59, v77, sub_1AACC9B7C);
        Strong = swift_weakLoadStrong();
        sub_1AACC9B18(v77, sub_1AACC9B7C);
        if (Strong)
        {
          *(Strong + 17) = 1;
        }

        v59 += 8;
        --v58;
      }

      while (v58);
    }
  }

  v61 = *(v4 + 200);
  v62 = *(a3 + v52[9]);
  swift_beginAccess();
  v63 = *(v61 + 40);
  if (v63 == 2 || ((v62 ^ v63) & 1) != 0)
  {
    *(v61 + 40) = v62;

    sub_1AACDCA88();
    *(v61 + 16) = 1;
    swift_beginAccess();
    v64 = *(v61 + 32);
    v65 = *(v64 + 16);
    if (v65)
    {
      v66 = v64 + 32;

      do
      {
        sub_1AACDCB7C(v66, v76, sub_1AACC9B7C);
        v67 = swift_weakLoadStrong();
        sub_1AACC9B18(v76, sub_1AACC9B7C);
        if (v67)
        {
          *(v67 + 17) = 1;
        }

        v66 += 8;
        --v65;
      }

      while (v65);
    }
  }

  v68 = *(v4 + 208);
  v69 = *(v4 + 104);
  result = swift_beginAccess();
  v71 = *(v68 + 40);
  if (v71)
  {
    v72 = v69 == v71;
  }

  else
  {
    v72 = 0;
  }

  if (!v72)
  {

    sub_1AACFDDF4(v69);
  }

  return result;
}

uint64_t sub_1AACC1314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_1AACC140C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACBD560(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AACC147C(unsigned __int8 a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a1);
  v2 = sub_1AAF906F4();
  return sub_1AACB1ED0(a1, v2);
}

void sub_1AACC14E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AACC1534(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
LABEL_10:
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = *(*(a1 + 48) + v13);
    LOBYTE(v13) = *(*(a1 + 56) + v13);
    BYTE2(v35) = v14;
    BYTE3(v35) = v13;
    a2(&v35, &v35 + 2);
    v15 = v35;
    v16 = BYTE1(v35);
    v17 = *a5;
    v19 = sub_1AACB6398(v35);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_21;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if ((v34 & 1) == 0)
      {
        sub_1AAD95EF8();
      }
    }

    else
    {
      sub_1AACC34D0(v22, v34 & 1);
      v24 = sub_1AACB6398(v15);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_23;
      }

      v19 = v24;
    }

    v9 &= v9 - 1;
    a4 = 1;
    if ((v23 & 1) == 0)
    {
      v26 = *a5;
      *(*a5 + 8 * (v19 >> 6) + 64) |= 1 << v19;
      *(v26[6] + v19) = v15;
      *(v26[7] + v19) = v16;
      v27 = v26[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_22;
      }

      v26[2] = v29;
    }
  }

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
      v34 = a4;
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AACC1754@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = result;
  v12 = *(result + 16);
  v13 = *(result + 24);
  v14 = *(result + 32);
  v15 = *(result + 40);
  v16 = *(result + 8);
  if (v16 == 254 || (v17 = *(result + 64), v17 == 255))
  {
    result = sub_1AACC39B0(a7);
    v66 = result;
  }

  else
  {
    v18 = *(result + 56);
    v66 = *(result + 48);
    v19 = v18;
    if (v17 == 6)
    {
      v19 = 0;
      v20 = -63;
    }

    else
    {
      v20 = -32;
    }

    if (v17 == 4)
    {
      v21 = -127;
    }

    else
    {
      v21 = -95;
    }

    if (*(result + 64) <= 5u)
    {
      v19 = 0;
      v20 = v21;
    }

    if (v17 == 2)
    {
      v22 = 65;
    }

    else
    {
      v22 = 97;
    }

    if (*(result + 64))
    {
      v18 = 0;
      v23 = 33;
    }

    else
    {
      v23 = 0;
    }

    if (*(result + 64) > 1u)
    {
      v18 = 0;
      v23 = v22;
    }

    if (*(result + 64) <= 3u)
    {
      v24 = v18;
    }

    else
    {
      v24 = v19;
    }

    if (*(result + 64) <= 3u)
    {
      v25 = v23;
    }

    else
    {
      v25 = v20;
    }
  }

  v65 = v25;
  v64 = v24;
  v26 = 2;
  if (!a3)
  {
    if (v16 == 254)
    {
      v70 = 0;
    }

    else
    {
      v39 = *v10;
      if (v16 == 255)
      {
        v39 = 0;
      }

      v70 = v39;
      if (v16 == 255)
      {
        v26 = 2;
      }

      else
      {
        v26 = v16;
      }

      v40 = v15 >> 8;
      if (v15 >> 8 <= 0xFE)
      {
        if (v40 == 3)
        {
          goto LABEL_97;
        }

        if (!v40)
        {
          v31 = v26;

          v36 = 0;
          v37 = 0;
          v13 = 0;
          v14 = 0;
          v38 = 0x8000000000000000;
          goto LABEL_76;
        }

        goto LABEL_93;
      }
    }

    v41 = *(a6 + 16);
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v43 = v26;
    *(a6 + 16) = v42;
    sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v68 = v44;
    v69 = &off_1F1FE4488;
    LOBYTE(v67) = 2;
    swift_beginAccess();
    result = sub_1AACB8910(&v67, v42);
    v12 = *(a6 + 16);
    if (__OFADD__(v12, 1))
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    *(a6 + 16) = v12 + 1;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v68 = v45;
    v69 = &off_1F1FE4488;
    LOBYTE(v67) = 0;
    sub_1AACB8910(&v67, v12 + 1);
    swift_endAccess();
    v13 = *(a6 + 16);
LABEL_57:
    v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
    v36 = v12;
    v26 = v43;
    goto LABEL_58;
  }

  if (a3 == 1)
  {
    if (v16 == 254)
    {
      v70 = 0;
LABEL_40:
      v29 = *(a6 + 16);
      v30 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        v31 = v26;
        *(a6 + 16) = v30;
        sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v68 = v32;
        v69 = &off_1F1FE4488;
        LOBYTE(v67) = 2;
        swift_beginAccess();
        result = sub_1AACB8910(&v67, v30);
        v33 = *(a6 + 16);
        v34 = v33 + 1;
        if (!__OFADD__(v33, 1))
        {
          *(a6 + 16) = v34;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v68 = v35;
          v69 = &off_1F1FE4488;
          LOBYTE(v67) = 0;
          sub_1AACB8910(&v67, v34);
          swift_endAccess();
          v13 = *(a6 + 16);
          goto LABEL_43;
        }

        goto LABEL_109;
      }

      __break(1u);
      goto LABEL_107;
    }

    v27 = *v10;
    if (v16 == 255)
    {
      v27 = 0;
    }

    v70 = v27;
    if (v16 == 255)
    {
      v26 = 2;
    }

    else
    {
      v26 = v16;
    }

    v28 = v15 >> 8;
    if (v15 >> 8 > 0xFE)
    {
      goto LABEL_40;
    }

    if (v28 != 3)
    {
      if (v28 == 1)
      {
        v31 = v26;

        v36 = 0;
        v37 = 0;
        v13 = 0;
        v14 = 0;
        v38 = 0xA000000000000000;
LABEL_76:
        v57 = v66;
LABEL_83:
        *a8 = v70;
        *(a8 + 8) = v31;
        *(a8 + 16) = v12;
        *(a8 + 24) = v36;
        *(a8 + 32) = v37;
        *(a8 + 40) = v13;
        *(a8 + 48) = v38;
        *(a8 + 56) = v14;
        *(a8 + 64) = v57;
        *(a8 + 72) = v64;
        *(a8 + 80) = v65;
        return result;
      }

      goto LABEL_100;
    }

    v31 = v26;
    if (v15 == 1)
    {
LABEL_44:
      v12 = a4;
      if ((a5 & 0xFF00) == 0x200 || a5 != 1)
      {
        v12 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
      }

      v36 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

      v37 = 0;
      v38 = 0x2000000000000100;
      goto LABEL_76;
    }

    if (v15 == 255)
    {
LABEL_43:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
      goto LABEL_44;
    }

    __break(1u);
LABEL_97:
    if (v15)
    {
      v43 = v26;
      if (v15 != 255)
      {
        __break(1u);
LABEL_100:
        sub_1AAF900D4();
        MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
        sub_1AAF90284();
        v60 = 0;
        v58 = 0xE000000000000000;
        sub_1AAF6F968();
        swift_allocError();
        goto LABEL_101;
      }

      goto LABEL_57;
    }

LABEL_105:
    v36 = v12;
LABEL_58:
    v46 = a4;
    if (v26 == 1 || v26 == 2 && v70 == 2)
    {
      v31 = v26;
      v36 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

      v47 = 0;
      v48 = 0;
    }

    else
    {
      v31 = v26;
      v47 = (a2 < 9u) & (0x187u >> a2);
      v48 = 2;
    }

    if ((a5 & 0xFF00) == 0x200 || a5)
    {
      v46 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

      result = sub_1AAEAEF98(v36, v47, v48);
    }

    else
    {
      sub_1AAEAEF98(v36, v47, v48);
    }

    v57 = v66;
    v37 = v47 | (v48 << 8);
    v38 = 256;
    v12 = v46;
    goto LABEL_83;
  }

  if (v16 == 254)
  {
    v70 = 0;
    goto LABEL_68;
  }

  v49 = *v10;
  if (v16 == 255)
  {
    v49 = 0;
  }

  v70 = v49;
  if (v16 == 255)
  {
    v26 = 2;
  }

  else
  {
    v26 = v16;
  }

  v50 = v15 >> 8;
  if (v15 >> 8 <= 0xFE)
  {
    if (v50 == 3)
    {
      v31 = v26;
      if (v15 == 2)
      {
LABEL_72:
        v12 = a4;
        if ((a5 & 0xFF00) == 0x200 || a5 != 2)
        {
          v12 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
        }

        v36 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

        v37 = 0;
        v38 = 0x4000000000000100;
        goto LABEL_76;
      }

      if (v15 != 255)
      {
        __break(1u);
        goto LABEL_105;
      }

LABEL_71:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
      goto LABEL_72;
    }

    if (v50 == 2)
    {
      v31 = v26;

      v36 = 0;
      v37 = 0;
      v13 = 0;
      v14 = 0;
      v38 = 0xC000000000000000;
      goto LABEL_76;
    }

LABEL_93:
    v58 = 0x80000001AAFD0590;
    sub_1AAF6F968();
    swift_allocError();
    v60 = 0xD00000000000003BLL;
LABEL_101:
    *v59 = v60;
    v59[1] = v58;
    swift_willThrow();
    sub_1AAD12C64(v66, v64, v65);
  }

LABEL_68:
  v51 = *(a6 + 16);
  v52 = v51 + 1;
  if (__OFADD__(v51, 1))
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v31 = v26;
  *(a6 + 16) = v52;
  sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v68 = v53;
  v69 = &off_1F1FE4488;
  LOBYTE(v67) = 2;
  swift_beginAccess();
  result = sub_1AACB8910(&v67, v52);
  v54 = *(a6 + 16);
  v55 = v54 + 1;
  if (!__OFADD__(v54, 1))
  {
    *(a6 + 16) = v55;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v68 = v56;
    v69 = &off_1F1FE4488;
    LOBYTE(v67) = 0;
    sub_1AACB8910(&v67, v55);
    swift_endAccess();
    v13 = *(a6 + 16);
    goto LABEL_71;
  }

LABEL_111:
  __break(1u);
  return result;
}

char *sub_1AACC20B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B28F0, &type metadata for Spec.Channel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1AACC21BC(void *a1, int64_t a2, char a3)
{
  result = sub_1AACC3E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AACC21DC()
{
  if (!qword_1ED9B28E0)
  {
    sub_1AACC9AC0(255, &qword_1ED9B34A0);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B28E0);
    }
  }
}

unint64_t sub_1AACC22A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AACB9028(0, &qword_1ED9B2920, &qword_1ED9B3E50);
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_1AACC9B78(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 1);
    v15 = *v8;

    result = sub_1AACC9B78(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

_BYTE *sub_1AACC23F0(char *a1)
{
  v3 = *(*v1 + 344);
  v4 = sub_1AAF8FE74();
  v19 = *(v4 - 8);
  v20 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  (*(v8 + 16))(&v18 - v9, a1, v3);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v13 = *(v8 + 32);
  v13(v12 + v11, v10, v3);
  v14 = sub_1AACBB470(MEMORY[0x1E69E7CC0], sub_1AAF42F4C, v12);
  v13(v7, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  v15 = *(*v14 + 256);
  swift_beginAccess();
  v16 = *(v19 + 40);

  v16(&v14[v15], v7, v20);
  swift_endAccess();
  v14[16] = 1;

  return v14;
}

uint64_t sub_1AACC2660()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AACC26E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1AACC3154(MEMORY[0x1E69E7CC0]);
  v103 = *(a1 + 8);
  v104 = *a1;
  v5 = *(a1 + 32);
  v101 = *(a1 + 40);
  v102 = *(a1 + 16);
  v149 = *(a1 + 48);
  v148 = *(a1 + 49);
  v105 = *(a1 + 64);
  v106 = *(a1 + 56);
  v114 = v5;
  v6 = sub_1AACC339C(v5);
  v108 = a1;
  v7 = *(a1 + 72);
  v8 = sub_1AACC3770(v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v133 = v6;
  sub_1AACC1534(v8, sub_1AACC39A4, 0, isUniquelyReferenced_nonNull_native, &v133);
  if (v3)
  {
LABEL_82:

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = v133;
  v123 = sub_1AACC3154(MEMORY[0x1E69E7CC0]);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v113 = v11;

  v17 = 0;
  v18 = v114;
  v110 = v11 + 64;
  v111 = v7;
  v109 = v16;
  while (v15)
  {
    v24 = v17;
LABEL_12:
    v25 = __clz(__rbit64(v15)) | (v24 << 6);
    v26 = *(*(v113 + 48) + v25);
    v27 = *(*(v113 + 56) + v25);
    v28 = *(v7 + 2);
    v29 = 0uLL;
    if (v28)
    {
      v30 = sub_1AACB6398(v26);
      if (v31)
      {
        v28 = *(v7 + 7) + 72 * v30;
        v32 = *v28;
        v29 = *(v28 + 16);
        v33 = *(v28 + 32);
        v34 = *(v28 + 48);
        LOBYTE(v28) = *(v28 + 64);
      }

      else
      {
        LOBYTE(v28) = 0;
        v32 = xmmword_1AAF94BF0;
        v33 = 0uLL;
        v34 = 0uLL;
        v29 = 0uLL;
      }
    }

    else
    {
      v32 = xmmword_1AAF94BF0;
      v33 = 0uLL;
      v34 = 0uLL;
    }

    v150[0] = v32;
    v150[1] = v29;
    v150[2] = v33;
    v150[3] = v34;
    v151 = v28;
    if (*(v18 + 16) && (v35 = sub_1AACB6398(v26), (v36 & 1) != 0))
    {
      v37 = *(v18 + 56) + 16 * v35;
      v38 = *v37;
      v39 = *(v37 + 8);
      if (*(v37 + 9))
      {
        v40 = 256;
      }

      else
      {
        v40 = 0;
      }

      v41 = v40 | v39;
    }

    else
    {
      v38 = 0;
      v41 = 512;
    }

    LODWORD(v152) = v26;
    if (v26 > 4)
    {
      if (v26 > 6)
      {
        if (v26 != 7)
        {

          v42 = v145;
          v43 = v10;
          sub_1AAF6ECE8(v150, 8u, v27, v38, v41, a2, v27, v145);
          goto LABEL_36;
        }

        v44 = a2;

        v45 = sub_1AAF6C480;
        v42 = v142;
        v46 = v142;
        v47 = 7;
        goto LABEL_33;
      }

      if (v26 != 5)
      {

        sub_1AACC135C(v108, &v133);
        sub_1AAF6E2A8(v150, 6u, v27, v38, v41, a2, v27, v108, v144);
        v122 = 0;
        sub_1AACC13B8(v108);
        v42 = v144;
        goto LABEL_37;
      }

      v42 = v143;
      v43 = v10;
      sub_1AAF6D8C0(v150, 5u, v27, v38, v41, a2, v27, v143);
    }

    else
    {
      if (v26 >= 3)
      {
        v44 = a2;

        v45 = sub_1AAF6C764;
        v42 = v147;
        v46 = v147;
        v47 = v26;
LABEL_33:
        v48 = v44;
        v43 = v10;
        sub_1AAF6CF6C(v150, v47, v27, v38, v41, v48, v45, v46);
        goto LABEL_36;
      }

      v42 = v146;
      v43 = v10;
      sub_1AACC1754(v150, v26, v27, v38, v41, a2, a2, v146);
    }

LABEL_36:
    v122 = v43;
LABEL_37:
    v119 = *(v42 + 8);
    v120 = *(v42 + 9);
    v124 = v42[80];
    v50 = *(v42 + 2);
    v49 = *(v42 + 3);
    v115 = *(v42 + 4);
    v116 = *(v42 + 5);
    v117 = *(v42 + 6);
    v118 = *(v42 + 7);
    v51 = v42[8];
    v52 = *v42;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v123;
    v54 = sub_1AACB6398(v152);
    v56 = *(v123 + 16);
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      sub_1AAF905B4();
      __break(1u);
      goto LABEL_82;
    }

    v60 = v55;
    if (*(v123 + 24) >= v59)
    {
      if ((v53 & 1) == 0)
      {
        v66 = v54;
        sub_1AAD99D54();
        v54 = v66;
      }
    }

    else
    {
      sub_1AACC3A9C(v59, v53);
      v54 = sub_1AACB6398(v152);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_81;
      }
    }

    v18 = v114;
    v15 &= v15 - 1;
    if (v60)
    {
      v123 = v127;
      v19 = *(v127 + 56) + 88 * v54;
      v20 = *(v19 + 16);
      v133 = *v19;
      v134 = v20;
      v22 = *(v19 + 48);
      v21 = *(v19 + 64);
      v23 = *(v19 + 80);
      v135 = *(v19 + 32);
      v138 = v23;
      v137 = v21;
      v136 = v22;
      *v19 = v52;
      *(v19 + 8) = v51;
      *(v19 + 16) = v50;
      *(v19 + 24) = v49;
      *(v19 + 32) = v115;
      *(v19 + 40) = v116;
      *(v19 + 48) = v117;
      *(v19 + 56) = v118;
      *(v19 + 64) = v119;
      *(v19 + 72) = v120;
      *(v19 + 80) = v124;
      sub_1AACF5F90(&v133);
    }

    else
    {
      v62 = v127;
      *(v127 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      *(v62[6] + v54) = v152;
      v63 = v62[7] + 88 * v54;
      *v63 = v52;
      *(v63 + 8) = v51;
      *(v63 + 16) = v50;
      *(v63 + 24) = v49;
      *(v63 + 32) = v115;
      *(v63 + 40) = v116;
      *(v63 + 48) = v117;
      *(v63 + 56) = v118;
      *(v63 + 64) = v119;
      *(v63 + 72) = v120;
      *(v63 + 80) = v124;
      v64 = v62[2];
      v58 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v58)
      {
        goto LABEL_80;
      }

      v123 = v62;
      v62[2] = v65;
    }

    v17 = v24;
    v10 = v122;
    v12 = v110;
    v7 = v111;
    v16 = v109;
  }

  while (1)
  {
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v24 >= v16)
    {

      v67 = 1 << *(v123 + 32);
      v68 = -1;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      v69 = v68 & *(v123 + 64);
      v70 = (v67 + 63) >> 6;

      v71 = v123;
      v72 = 0;
      v73 = MEMORY[0x1E69E7CC0];
      v152 = MEMORY[0x1E69E7CC0];
      if (!v69)
      {
        goto LABEL_51;
      }

      do
      {
LABEL_49:
        while (1)
        {
          v74 = __clz(__rbit64(v69));
          v69 &= v69 - 1;
          v75 = *(*(v71 + 48) + (v74 | (v72 << 6)));
          if (v75 <= 1)
          {
            break;
          }

          v152 = v73;
          if (!v69)
          {
            goto LABEL_51;
          }
        }

        v77 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v152;
        *&v133 = v152;
        if ((v77 & 1) == 0)
        {
          v7 = &v133;
          sub_1AACC3DE8(0, *(v152 + 16) + 1, 1);
          v73 = v133;
        }

        v79 = *(v73 + 16);
        v78 = *(v73 + 24);
        v71 = v123;
        if (v79 >= v78 >> 1)
        {
          v7 = &v133;
          sub_1AACC3DE8((v78 > 1), v79 + 1, 1);
          v71 = v123;
          v73 = v133;
        }

        *(v73 + 16) = v79 + 1;
        *(v73 + v79 + 32) = v75;
        v152 = v73;
      }

      while (v69);
      while (1)
      {
LABEL_51:
        v76 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_78;
        }

        if (v76 >= v70)
        {
          break;
        }

        v69 = *(v123 + 64 + 8 * v76);
        ++v72;
        if (v69)
        {
          v72 = v76;
          goto LABEL_49;
        }
      }

      v80 = v108;
      v81 = *(v108 + 81);
      v82 = *(v152 + 16);
      v121 = v81;
      if (v82)
      {
        *&v133 = MEMORY[0x1E69E7CC0];
        sub_1AACC21BC(0, v82, 0);
        v83 = v152;
        v84 = v133;
        v125 = v81 ^ 1;
        v85 = 32;
        v86 = v101;
        do
        {
          v87 = *(v83 + v85);
          if (*(v86 + 16))
          {
            v88 = sub_1AACB6398(*(v83 + v85));
            if (v89)
            {
              v90 = *(v86 + 56) + 24 * v88;
              v91 = *v90;
              v93 = *(v90 + 8);
              v92 = *(v90 + 16);
            }

            else
            {
              v93 = 0;
              v91 = v125;
              v92 = MEMORY[0x1E69E7CC0];
            }

            v83 = v152;
          }

          else
          {
            v93 = 0;
            v91 = v125;
            v92 = MEMORY[0x1E69E7CC0];
          }

          *&v133 = v84;
          v95 = *(v84 + 16);
          v94 = *(v84 + 24);
          if (v95 >= v94 >> 1)
          {
            sub_1AACC21BC((v94 > 1), v95 + 1, 1);
            v83 = v152;
            v86 = v101;
            v84 = v133;
          }

          *(v84 + 16) = v95 + 1;
          v96 = v84 + 32 * v95;
          *(v96 + 32) = v87;
          *(v96 + 40) = v91;
          *(v96 + 48) = v93;
          *(v96 + 56) = v92;
          ++v85;
          --v82;
        }

        while (v82);

        v80 = v108;
        if (*(v84 + 16))
        {
LABEL_73:
          sub_1AACC3338(0, &qword_1ED9B2938);
          v97 = sub_1AAF903A4();
LABEL_76:
          v132 = v97;
          sub_1AACC3F3C(v84, 1, &v132);

          sub_1AACC13B8(v80);
          *&v127 = v104;
          *(&v127 + 1) = v103;
          *&v128 = v102;
          BYTE8(v128) = v121;
          *(&v128 + 9) = *v141;
          HIDWORD(v128) = *&v141[3];
          *&v129 = v114;
          *(&v129 + 1) = v132;
          LOBYTE(v130) = v149;
          BYTE1(v130) = v148;
          WORD3(v130) = v140;
          *(&v130 + 2) = v139;
          *(&v130 + 1) = v106;
          *&v131 = v105;
          *(&v131 + 1) = v123;
          *&v133 = v104;
          *(&v133 + 1) = v103;
          *&v134 = v102;
          BYTE8(v134) = v121;
          HIDWORD(v134) = *&v141[3];
          *(&v134 + 9) = *v141;
          *&v135 = v114;
          *(&v135 + 1) = v132;
          LOBYTE(v136) = v149;
          BYTE1(v136) = v148;
          *(&v136 + 2) = v139;
          WORD3(v136) = v140;
          *(&v136 + 1) = v106;
          *&v137 = v105;
          *(&v137 + 1) = v123;
          sub_1AACC42FC(&v127, v126);
          result = sub_1AACC224C(&v133);
          v99 = v130;
          a3[2] = v129;
          a3[3] = v99;
          a3[4] = v131;
          v100 = v128;
          *a3 = v127;
          a3[1] = v100;
          return result;
        }
      }

      else
      {

        v84 = MEMORY[0x1E69E7CC0];
        if (*(MEMORY[0x1E69E7CC0] + 16))
        {
          goto LABEL_73;
        }
      }

      v97 = MEMORY[0x1E69E7CC8];
      goto LABEL_76;
    }

    v15 = *(v12 + 8 * v24);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
  sub_1AACC13B8(v7);

  sub_1AACC13B8(v7);
}

unint64_t sub_1AACC3154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AADFA8E8();
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 80);
  *&v22[32] = *(a1 + 64);
  *&v22[48] = v4;
  *&v22[64] = *(a1 + 96);
  *&v22[73] = *(a1 + 105);
  v5 = *(a1 + 48);
  *v22 = *(a1 + 32);
  *&v22[16] = v5;
  v6 = v22[0];
  result = sub_1AACB6398(v22[0]);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1AADF9C48(v22, v21, &unk_1EB424D30, &type metadata for Spec.Channel, &type metadata for Spec.Scale, sub_1AACC9AC0);
    return v3;
  }

  v9 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v6;
    v10 = v3[7] + 88 * result;
    v11 = *&v22[24];
    *v10 = *&v22[8];
    *(v10 + 16) = v11;
    v12 = *&v22[40];
    v13 = *&v22[56];
    v14 = *&v22[72];
    *(v10 + 80) = v22[88];
    *(v10 + 48) = v13;
    *(v10 + 64) = v14;
    *(v10 + 32) = v12;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1AADF9C48(v22, v21, &unk_1EB424D30, &type metadata for Spec.Channel, &type metadata for Spec.Scale, sub_1AACC9AC0);
    v18 = v9[3];
    *&v22[32] = v9[2];
    *&v22[48] = v18;
    *&v22[64] = v9[4];
    *&v22[73] = *(v9 + 73);
    v19 = v9[1];
    *v22 = *v9;
    *&v22[16] = v19;
    v6 = v22[0];
    result = sub_1AACB6398(v22[0]);
    v9 += 6;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1AACC3338(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1AACB62F8();
    v3 = sub_1AAF903B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_1AACC339C(uint64_t a1)
{
  sub_1AACC3338(0, &qword_1ED9B2940);
  result = sub_1AAF90384();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  if (v6)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v8 = v7 | (v3 << 6);
LABEL_10:
      v11 = *(*(a1 + 48) + v8);
      v12 = *(*(a1 + 56) + 16 * v8 + 8);
      *(result + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
      *(result[6] + v8) = v11;
      *(result[7] + v8) = v12;
      v13 = result[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        break;
      }

      result[2] = v15;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= ((v4 + 63) >> 6))
      {
        return result;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v8 = __clz(__rbit64(v10)) | (v3 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACC34D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B2940, sub_1AACB62F8);
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v20);
      result = sub_1AAF906F4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AACC3770(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v26 = MEMORY[0x1E69E7CC8];
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
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = HIBYTE(*(*(a1 + 56) + 72 * v11 + 40));
        if (v12 <= 0xFE && v12 <= 2)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_11;
        }
      }

      v25 = *(*(a1 + 48) + v11);
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        sub_1AACC34D0(v15 + 1, 1);
        v2 = v26;
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v25);
      result = sub_1AAF906F4();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v2 + 48) + v20) = v25;
      *(*(v2 + 56) + v20) = v12;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_11;
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
      v24 = *(v16 + 8 * v19);
      if (v24 != -1)
      {
        v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_11:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v14);
      ++v9;
      if (v6)
      {
        v9 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACC39B0(uint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    *(result + 16) = v2;
    sub_1AACB4194(0, &qword_1ED9B3D70, MEMORY[0x1E69E7DE0], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v5 = v4;
    v9 = v4;
    v10 = &off_1F1FE4488;
    v8[0] = 0;
    swift_beginAccess();
    result = sub_1AACB8910(v8, v2);
    v6 = *(v3 + 16);
    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      *(v3 + 16) = v7;
      v9 = v5;
      v10 = &off_1F1FE4488;
      v8[0] = 0;
      sub_1AACB8910(v8, v7);
      swift_endAccess();
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACC3A9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B2930, sub_1AACB62F8);
  v38 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 88 * v20;
      if (v38)
      {
        v41 = *v22;
        v23 = *(v22 + 8);
        v42 = *(v22 + 16);
        v43 = *(v22 + 32);
        v39 = *(v22 + 48);
        v40 = *(v22 + 64);
        v24 = *(v22 + 80);
      }

      else
      {
        v24 = *(v22 + 80);
        v26 = *(v22 + 48);
        v25 = *(v22 + 64);
        v46 = *(v22 + 32);
        v27 = *v22;
        v28 = *(v22 + 16);
        v47 = v26;
        v48 = v25;
        v45[0] = v27;
        v45[1] = v28;
        v49 = v24;
        v42 = v28;
        v43 = v46;
        v39 = v26;
        v40 = v25;
        v41 = v27;
        v23 = BYTE8(v27);
        sub_1AACC74AC(v45, v44);
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      result = sub_1AAF906F4();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 88 * v15;
      *v16 = v41;
      *(v16 + 8) = v23;
      *(v16 + 16) = v42;
      *(v16 + 32) = v43;
      *(v16 + 48) = v39;
      *(v16 + 64) = v40;
      *(v16 + 80) = v24;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

char *sub_1AACC3DE8(char *a1, int64_t a2, char a3)
{
  result = sub_1AACC20B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AACC3E08(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AACC21DC();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AACC9AC0(0, &qword_1ED9B34A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1AACC3F3C(uint64_t a1, char a2, void *a3)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_23;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = sub_1AACB6398(v4);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1AAD95D5C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  sub_1AAD8AC68(v13, a2 & 1);
  v17 = sub_1AACB6398(v4);
  if ((v15 & 1) == (v18 & 1))
  {
    v14 = v17;
    if ((v15 & 1) == 0)
    {
LABEL_12:
      v21 = *a3;
      *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      *(v21[6] + v14) = v4;
      v22 = v21[7] + 24 * v14;
      *v22 = v7;
      *(v22 + 8) = v5;
      *(v22 + 16) = v6;
      v23 = v21[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v21[2] = v25;
      if (v47 != 1)
      {
        v26 = (a1 + 88);
        v27 = 1;
        while (v27 < *(a1 + 16))
        {
          v28 = *(v26 - 24);
          v29 = *(v26 - 1);
          v30 = *v26;
          v31 = *(v26 - 16);
          v32 = *a3;
          v33 = sub_1AACB6398(v28);
          v35 = v32[2];
          v36 = (v34 & 1) == 0;
          v37 = v35 + v36;
          if (__OFADD__(v35, v36))
          {
            goto LABEL_25;
          }

          v38 = v33;
          v39 = v34;
          v40 = v32[3];

          if (v40 < v37)
          {
            sub_1AAD8AC68(v37, 1);
            v41 = sub_1AACB6398(v28);
            if ((v39 & 1) != (v42 & 1))
            {
              goto LABEL_27;
            }

            v38 = v41;
          }

          if (v39)
          {
            goto LABEL_9;
          }

          v43 = *a3;
          *(*a3 + 8 * (v38 >> 6) + 64) |= 1 << v38;
          *(v43[6] + v38) = v28;
          v44 = v43[7] + 24 * v38;
          *v44 = v31;
          *(v44 + 8) = v29;
          *(v44 + 16) = v30;
          v45 = v43[2];
          v24 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          ++v27;
          v43[2] = v46;
          v26 += 4;
          if (v47 == v27)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_23:

      return;
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    sub_1AAE28ACC();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_1AAF905B4();
  __break(1u);
LABEL_28:
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0xD00000000000001BLL, 0x80000001AAFCDCD0);
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](39, 0xE100000000000000);
  sub_1AAF902C4();
  __break(1u);
}

uint64_t sub_1AACC4358(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v8 = v4;
  swift_beginAccess();
  v10 = *(v4 + 24);
  if (*(v10 + 16))
  {
    v11 = sub_1AACC9B78(a1);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 16 * v11);
      swift_endAccess();
      sub_1AACC9BB0(0, a2, a3, a4);
      result = (*(*v13 + 200))(v14, v14);
      if (result)
      {
        return result;
      }

      __break(1u);
    }
  }

  swift_endAccess();

  v16 = sub_1AACC6620(a1);
  v18 = v17;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v8 + 24);
  *(v8 + 24) = 0x8000000000000000;
  sub_1AACC6B20(v16, v18, a1, isUniquelyReferenced_nonNull_native);
  *(v8 + 24) = v22;
  swift_endAccess();
  sub_1AACC9BB0(0, a2, a3, a4);
  result = (*(*v16 + 200))(v20, v20);
  if (result)
  {
    v21 = result;

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AACC450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t **a8)
{
  v180 = v8;
  v201 = *a7;
  v200 = *(a7 + 2);
  v203 = *(a7 + 3);
  v199 = *(a7 + 4);
  v175 = *(a1 + 8);
  v176 = *(a1 + 16);
  v177 = *(a1 + 24);
  v193 = *(a1 + 32);
  v195 = *(a1 + 40);
  v178 = *(a1 + 48);
  v182 = *(a1 + 56);
  v185 = *(a1 + 64);
  v181 = sub_1AACC4358(*a1, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1E69E7CC0];
  *&v272 = sub_1AACC6F3C(MEMORY[0x1E69E7CC0]);
  *(&v272 + 1) = v11;
  *&v273 = v11;
  *(&v273 + 1) = sub_1AACC6F1C(v11);
  *&v274 = v11;
  *(&v274 + 1) = v11;
  *&v275 = sub_1AACC7098(v11);
  *(&v275 + 1) = sub_1AACC7078(v11);
  v179 = a1;
  v12 = *(a1 + 72);
  v13 = *(v12 + 16);
  v197 = v12;
  if (v13)
  {
    v11 = sub_1AACC719C(v13, 0);
    v14 = sub_1AACC7278(v282, v11 + 32, v13, v12);
    swift_bridgeObjectRetain_n();
    sub_1AACC9C00();
    if (v14 != v13)
    {
      __break(1u);
      goto LABEL_124;
    }
  }

  else
  {
  }

  *&v282[0] = v11;
  v13 = 0;
  sub_1AACC7374(v282);

  v15 = *&v282[0];
  v198 = a4;
  v16 = v203;
  v17 = a6;
  v191 = *(*&v282[0] + 16);
  if (v191)
  {
    v18 = 0;
    v187 = *&v282[0] + 32;
    v189 = *&v282[0];
    while (1)
    {
      if (v18 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_117;
      }

      v14 = *(v187 + v18);
      if (!*(v12 + 16))
      {
        goto LABEL_125;
      }

      v21 = sub_1AACB6398(*(v187 + v18));
      if ((v22 & 1) == 0)
      {
        goto LABEL_125;
      }

      v23 = *(v12 + 56) + 88 * v21;
      v24 = *v23;
      v277 = *(v23 + 16);
      v25 = *(v23 + 32);
      v26 = *(v23 + 48);
      v27 = *(v23 + 64);
      v281 = *(v23 + 80);
      v280 = v27;
      v279 = v26;
      v278 = v25;
      v276 = v24;
      if (*(v195 + 16))
      {
        v28 = sub_1AACB6398(v14);
        v29 = v193;
        if (v30)
        {
          v31 = (*(v195 + 56) + 24 * v28);
          v32 = *v31;
          v33 = *(v31 + 1);
          v34 = *(v31 + 2);

          if (v14 >= 2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          if (v14 >= 2)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v29 = v193;
        if (v14 >= 2)
        {
          goto LABEL_24;
        }
      }

      if (v34)
      {
        sub_1AACC74AC(&v276, &v259);
        sub_1AACC752C(v32, v33, v34);

        v35 = v32;
        v36 = v182;
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (!v14)
      {
        sub_1AACC74AC(&v276, &v259);
        v35 = 0;
        v36 = v182;
        goto LABEL_26;
      }

LABEL_24:
      sub_1AACC74AC(&v276, &v259);
      v35 = 0;
LABEL_25:
      v36 = v185;
LABEL_26:
      v37 = sub_1AACC4358(v36, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (*(v29 + 16) && (v38 = sub_1AACB6398(v14), (v39 & 1) != 0))
      {
        v40 = *(v29 + 56) + 16 * v38;
        v41 = *v40;
        v42 = *(v40 + 8);
        if (*(v40 + 9))
        {
          v43 = 256;
        }

        else
        {
          v43 = 0;
        }

        v44 = v43 | v42;
        if ((v35 & 1) == 0)
        {
LABEL_32:
          sub_1AACFE4CC(v32, v33, v34);
          v33 = MEMORY[0x1E69E7CC0];
          goto LABEL_37;
        }
      }

      else
      {
        v41 = 0;
        v44 = 512;
        if ((v35 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      if (!v34 || (, !v33))
      {

        v33 = &unk_1F1FCEE00;
      }

LABEL_37:
      a4 = v198;
      LOBYTE(v264) = v281;
      v261 = v278;
      v262 = v279;
      v263 = v280;
      v259 = v276;
      v260 = v277;
      *(&v264 + 1) = v33;
      *&v265 = v41;
      WORD4(v265) = v44;
      BYTE10(v265) = v14;
      *&v266 = v37;
      *(&v266 + 1) = a3;
      *&v267 = v198;
      *(&v267 + 1) = a5;
      v268 = v201;
      *&v269 = v200;
      *(&v269 + 1) = v203;
      *&v270 = v199;
      *(&v270 + 1) = v17;
      v271 = a2;
      v283 = a2;
      v282[2] = v278;
      v282[3] = v279;
      v282[1] = v277;
      v282[0] = v276;
      v282[10] = v269;
      v282[11] = v270;
      v282[9] = v201;
      v282[8] = v267;
      v282[7] = v266;
      v282[6] = v265;
      v282[4] = v280;
      v282[5] = v264;
      v45 = v277;
      v46 = v279;
      v47 = (v279 >> 61) & 3;
      v19 = v279;
      v48 = *(&v278 + 1);
      v13 = v278;
      if (v47)
      {
        if (v47 != 1)
        {

          sub_1AACC74AC(&v276, &v255);

          if ((v46 & 0x8000000000000000) != 0)
          {
            v52 = sub_1AACC4358(v45, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          }

          else
          {
            sub_1AACC785C(v45, *(&v45 + 1), v13, v48, v46, *(&v46 + 1), sub_1AAEAD878);
            v49 = sub_1AACC4358(v45, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            v50 = sub_1AAEA9D3C(v48, v46);
            v51 = sub_1AAEA01DC(*(&v46 + 1), &qword_1EB4269A0, &qword_1EB426330, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
            v254[0] = v49;
            v247[0] = v50;
            a4 = v198;
            *&v255 = v254;
            *(&v255 + 1) = v247;
            v221 = v51;
            *&v256 = &v221;
            v52 = sub_1AAEA41AC(&v255, sub_1AAEB46A4, 0);
          }

          sub_1AAEAD888(v282, v52);
          goto LABEL_9;
        }

        v19 = v279 & 0x9FFFFFFFFFFFFFFFLL;
      }

      v284[0] = v277;
      v284[1] = v278;
      v285 = v19;
      v286 = *(&v279 + 1);

      sub_1AACC74AC(&v276, &v255);

      sub_1AACC785C(v45, *(&v45 + 1), v13, v48, v46, *(&v46 + 1), sub_1AAEAD878);
      v20 = sub_1AACC7598(v284, v14, a2, a8);
      sub_1AACC7924(v282, v284, v20);
LABEL_9:
      sub_1AACF5F60(&v259);
      sub_1AACF5F90(&v276);

      sub_1AACC785C(v45, *(&v45 + 1), v13, v48, v46, *(&v46 + 1), sub_1AAEAEF98);
      ++v18;
      v15 = v189;
      v16 = v203;
      v17 = a6;
      v12 = v197;
      if (v191 == v18)
      {
        v18 = v273;
        goto LABEL_46;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_46:

  v253 = a4;
  v252 = v16;
  v254[0] = &v253;
  v254[1] = &v252;
  v251 = v17;
  v254[2] = &v251;
  if (v18 >> 62)
  {
LABEL_117:
    type metadata accessor for AnySignal();
    swift_bridgeObjectRetain_n();

    v53 = sub_1AAF902D4();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    sub_1AAF90504();
    type metadata accessor for AnySignal();
    v53 = v18;
  }

  v54 = swift_allocObject();
  v54[2] = sub_1AACDE8AC;
  v54[3] = 0;
  v54[4] = v18;
  sub_1AACC9BB0(0, &qword_1ED9B31C8, &type metadata for SgPadding, type metadata accessor for Signal);
  swift_allocObject();
  v250 = sub_1AACF669C(v53, sub_1AACDCED4, v54);
  v254[3] = &v250;
  v55 = MEMORY[0x1E69E6720];
  v249 = sub_1AACC4358(v175, &qword_1ED9B4100, &type metadata for StackContext, MEMORY[0x1E69E6720]);
  v254[4] = &v249;
  v248 = sub_1AACC4358(v176, qword_1ED9B3CE8, &type metadata for SubPositionContext, v55);
  v254[5] = &v248;
  v194 = sub_1AACF6754(v254, sub_1AACDEB00, 0);
  v56 = *(&v275 + 1);
  if (*(*(&v275 + 1) + 16) && (sub_1AACB6398(6u), (v57 & 1) != 0))
  {
    v58 = swift_retain_n();
    v192 = sub_1AAEAC61C(v58, sub_1AAEAF12C, v58);
    if (!*(v56 + 16))
    {
      goto LABEL_55;
    }
  }

  else
  {
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1AACDED18;
    *(v59 + 24) = 0;
    sub_1AACF5D54(0, &qword_1ED9B31F0, sub_1AACC9CF4, type metadata accessor for Signal);
    v60 = swift_allocObject();
    *(v60 + 40) = 0u;
    *(v60 + 56) = 0u;
    *(v60 + 72) = 0u;
    *(v60 + 88) = 0u;
    *(v60 + 104) = 0u;
    *(v60 + 120) = 0u;
    *(v60 + 136) = 0u;
    *(v60 + 152) = 0u;
    *(v60 + 168) = -2;
    *(v60 + 176) = 0;
    *(v60 + 184) = 0;
    v61 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1AACDED14;
    *(v62 + 24) = v59;
    v63 = *(v61 + 176);
    *(v61 + 176) = sub_1AACD8838;
    *(v61 + 184) = v62;

    sub_1AACB4A98(v63);
    v192 = v61;

    if (!*(v56 + 16))
    {
      goto LABEL_55;
    }
  }

  sub_1AACB6398(8u);
  if (v64)
  {
    v65 = swift_retain_n();
    v66 = sub_1AAEAC468(v65, sub_1AAEAF0F0, v65);
    goto LABEL_56;
  }

LABEL_55:
  v66 = sub_1AACF6C28(&v259, sub_1AACDED38, 0);
LABEL_56:
  v190 = v66;
  if (*(v56 + 16) && (sub_1AACB6398(5u), (v67 & 1) != 0))
  {
    v68 = swift_retain_n();
    v69 = sub_1AAEAC2E8(v68, sub_1AAEAF0B4, v68);
  }

  else
  {
    v69 = sub_1AACF6DAC(&v259, sub_1AACDEDA0, 0);
  }

  v188 = v69;
  sub_1AACF5D54(0, &qword_1ED9B28E8, sub_1AACF71BC, MEMORY[0x1E69E6F90]);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1AAFB2BA0;
  *(v70 + 32) = 0;
  if (*(v56 + 16) && (sub_1AACB6398(0), (v71 & 1) != 0))
  {
    v72 = swift_retain_n();
    v73 = sub_1AACF6EDC(v72, sub_1AACDB018, v72);
  }

  else
  {
    v73 = sub_1AACF7068(&v259, sub_1AACDECF0, 0);
  }

  *(v70 + 40) = v73;
  *(v70 + 48) = 1;
  if (*(v56 + 16) && (sub_1AACB6398(1u), (v74 & 1) != 0))
  {
    v75 = swift_retain_n();
    v76 = sub_1AACF6EDC(v75, sub_1AACDB018, v75);
  }

  else
  {
    v76 = sub_1AACF7068(&v259, sub_1AACDECF0, 0);
  }

  *(v70 + 56) = v76;
  *(v70 + 64) = 3;
  if (*(v56 + 16) && (sub_1AACB6398(3u), (v77 & 1) != 0))
  {
    v78 = swift_retain_n();
    v79 = sub_1AACF6EDC(v78, sub_1AACDB018, v78);
  }

  else
  {
    v79 = sub_1AACF7068(&v259, sub_1AACDECF0, 0);
  }

  *(v70 + 72) = v79;
  *(v70 + 80) = 4;
  if (*(v56 + 16) && (sub_1AACB6398(4u), (v80 & 1) != 0))
  {
    v81 = swift_retain_n();
    v82 = sub_1AACF6EDC(v81, sub_1AACDB018, v81);
  }

  else
  {
    v82 = sub_1AACF7068(&v259, sub_1AACDECF0, 0);
  }

  *(v70 + 88) = v82;
  *(v70 + 96) = 7;
  v183 = v56;
  if (*(v56 + 16) && (sub_1AACB6398(7u), (v83 & 1) != 0))
  {
    v84 = swift_retain_n();
    v85 = sub_1AACF6EDC(v84, sub_1AACDB32C, v84);
  }

  else
  {
    v85 = sub_1AACF7068(&v259, sub_1AACDECF0, 0);
  }

  *(v70 + 104) = v85;
  v86 = sub_1AACF719C(v70);
  swift_setDeallocating();
  sub_1AACF71BC();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v87 = sub_1AACF7254(v86);
  v246 = v181;
  v245 = v194;
  v247[0] = &v246;
  v247[1] = &v245;
  v244 = v87;
  v243 = v192;
  v247[2] = &v244;
  v247[3] = &v243;
  v242 = v190;
  v241 = v188;
  v247[4] = &v242;
  v247[5] = &v241;

  v186 = v87;

  v88 = sub_1AACF7698(v247, sub_1AACDB044, a3);
  v89 = *(&v272 + 1);
  if (*(&v272 + 1) >> 62)
  {
    type metadata accessor for AnySignal();
    swift_bridgeObjectRetain_n();
    v90 = sub_1AAF902D4();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_1AAF90504();
    type metadata accessor for AnySignal();
    v90 = v89;
  }

  v91 = swift_allocObject();
  v91[2] = sub_1AACFDF04;
  v91[3] = 0;
  v91[4] = v89;
  swift_allocObject();
  v92 = sub_1AACF669C(v90, sub_1AACFE878, v91);

  v93 = sub_1AACF7B5C(v92, v17, a3, v195);

  v94 = sub_1AACF8008(v92, v93);
  v239 = v88;
  v238 = a4;
  v240[0] = &v239;
  v240[1] = &v238;
  v237 = v94;
  v240[2] = &v237;

  v196 = v94;

  v95 = v180;
  v180[3] = sub_1AACF84A0(v240, sub_1AACE3D90, 0);
  if ((v177 & 1) == 0 && *(v12 + 16))
  {
    v96 = *(&v273 + 1);
    v97 = sub_1AACB6398(0);
    if (v98)
    {
      v99 = *(v12 + 56) + 88 * v97;
      v100 = *v99;
      v260 = *(v99 + 16);
      v101 = *(v99 + 32);
      v102 = *(v99 + 48);
      v103 = *(v99 + 64);
      LOBYTE(v264) = *(v99 + 80);
      v262 = v102;
      v263 = v103;
      v261 = v101;
      v259 = v100;
      if (*(v96 + 16))
      {
        v104 = sub_1AACB6398(0);
        if (v105)
        {
          v106 = v92;
          v107 = *(*(v96 + 56) + 8 * v104);
          v211[0] = a4;
          v232 = v211;

          sub_1AACC74AC(&v259, &v276);
          v108 = sub_1AAEA61B8(&v232, sub_1AAEA8CB0, 0);
          v110 = sub_1AAF4475C(&v255, 0);
          if (*v109)
          {
            v111 = v109;
            v95 = v180;
            v214[0] = *(v180 + 3);
            v230 = v107;
            v231 = v108;
            v221 = v214;
            v222 = &v231;
            v223 = &v230;
            v112 = swift_allocObject();
            v113 = v262;
            *(v112 + 48) = v261;
            *(v112 + 64) = v113;
            *(v112 + 80) = v263;
            *(v112 + 96) = v264;
            v114 = v260;
            *(v112 + 16) = v259;
            *(v112 + 32) = v114;

            sub_1AACC74AC(&v259, &v276);
            a4 = v198;

            v115 = v112;
            v12 = v197;
            v111[1] = sub_1AAEA6368(&v221, sub_1AAEAF080, v115);

            (v110)(&v255, 0);
            sub_1AACF5F90(&v259);
          }

          else
          {
            (v110)(&v255, 0);
            sub_1AACF5F90(&v259);

            v95 = v180;
          }

          v92 = v106;
        }
      }
    }

    if (*(v12 + 16))
    {
      v116 = sub_1AACB6398(1u);
      if (v117)
      {
        v118 = *(v12 + 56) + 88 * v116;
        v119 = *v118;
        v277 = *(v118 + 16);
        v120 = *(v118 + 32);
        v121 = *(v118 + 48);
        v122 = *(v118 + 64);
        v281 = *(v118 + 80);
        v280 = v122;
        v279 = v121;
        v278 = v120;
        v276 = v119;
        if (*(v96 + 16))
        {
          v123 = sub_1AACB6398(1u);
          if (v124)
          {
            v125 = *(*(v96 + 56) + 8 * v123);
            v214[0] = a4;
            v211[0] = v214;

            sub_1AACC74AC(&v276, &v255);
            v126 = sub_1AAEA61B8(v211, sub_1AAEA8CD0, 0);
            v128 = sub_1AAF4475C(&v221, 1);
            if (*v127)
            {
              v129 = v127;
              v130 = v92;
              v131 = v180[3];
              v230 = v126;
              v231 = v131;
              v232 = &v231;
              v233 = &v230;
              v229 = v125;
              v234 = &v229;
              v132 = swift_allocObject();
              v133 = v279;
              *(v132 + 48) = v278;
              *(v132 + 64) = v133;
              *(v132 + 80) = v280;
              *(v132 + 96) = v281;
              v134 = v277;
              *(v132 + 16) = v276;
              *(v132 + 32) = v134;

              sub_1AACC74AC(&v276, &v255);
              v92 = v130;

              v135 = v132;
              a4 = v198;
              v129[1] = sub_1AAEA6368(&v232, sub_1AAEAF04C, v135);

              (v128)(&v221, 0);
              v95 = v180;
              sub_1AACF5F90(&v276);
            }

            else
            {
              (v128)(&v221, 0);
              sub_1AACF5F90(&v276);

              v95 = v180;
            }
          }
        }
      }
    }
  }

  v136 = sub_1AACF8750(v92, v93, a3, a5);

  sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1AAF9DE80;
  *(v137 + 32) = v136;
  *&v255 = v137;

  sub_1AACF8A48(v138);
  v139 = v255;
  if (v255 >> 62)
  {
    type metadata accessor for AnySignal();

    v140 = sub_1AAF902D4();
  }

  else
  {

    sub_1AAF90504();
    type metadata accessor for AnySignal();
    v140 = v139;
  }

  v141 = v186;
  v142 = swift_allocObject();
  v142[2] = sub_1AAD14CCC;
  v142[3] = 0;
  v142[4] = v139;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v143 = swift_allocObject();
  v143[6] = 0;
  v143[7] = 0;
  v143[5] = 0xF000000000000007;
  v144 = sub_1AACBD668(v140);

  v145 = swift_allocObject();
  *(v145 + 16) = sub_1AAD04F3C;
  *(v145 + 24) = v142;
  v146 = *(v144 + 48);
  *(v144 + 48) = sub_1AACD8800;
  *(v144 + 56) = v145;

  sub_1AACB4A98(v146);

  v95[4] = v144;
  v147 = *(&v274 + 1);
  if (*(&v274 + 1) >> 62)
  {
    type metadata accessor for AnySignal();
    swift_bridgeObjectRetain_n();
    v148 = sub_1AAF902D4();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_1AAF90504();
    type metadata accessor for AnySignal();
    v148 = v147;
  }

  v149 = swift_allocObject();
  v149[2] = sub_1AAD14CCC;
  v149[3] = 0;
  v149[4] = v147;
  v150 = swift_allocObject();
  v150[6] = 0;
  v150[7] = 0;
  v150[5] = 0xF000000000000007;
  v151 = sub_1AACBD668(v148);

  v152 = swift_allocObject();
  *(v152 + 16) = sub_1AAD144DC;
  *(v152 + 24) = v149;
  v153 = *(v151 + 48);
  *(v151 + 48) = sub_1AACD8838;
  *(v151 + 56) = v152;

  sub_1AACB4A98(v153);

  v95[5] = v151;
  v230 = a4;
  v231 = v196;
  v232 = &v231;
  v233 = &v230;
  v154 = v95[3];
  v228 = v95[4];
  v229 = v154;
  v234 = &v229;
  v235 = &v228;
  v227 = v151;
  v236 = &v227;

  v95[11] = sub_1AACF8C34(&v232, sub_1AAD0518C, 0);
  if ((v178 & 0x100) != 0 && (v178 & 1) == 0)
  {

    v160 = sub_1AAEBE580(v179, v183, a4, v201);
  }

  else
  {
    v155 = swift_allocObject();
    *(v155 + 16) = sub_1AAD04F78;
    *(v155 + 24) = 0;
    sub_1AACC9BB0(0, &qword_1ED9B31E0, &type metadata for ChartInternalOverlayListenerModifier, type metadata accessor for Signal);
    v156 = swift_allocObject();
    *(v156 + 48) = 0u;
    *(v156 + 64) = 0u;
    *(v156 + 80) = 0u;
    *(v156 + 96) = 0u;
    *(v156 + 112) = 0u;
    *(v156 + 128) = 0u;
    *(v156 + 144) = 0u;
    *(v156 + 160) = 0u;
    *(v156 + 176) = 0u;
    *(v156 + 192) = 0u;
    *(v156 + 208) = 0u;
    *(v156 + 224) = 0u;
    *(v156 + 240) = 0u;
    *(v156 + 256) = 0u;
    *(v156 + 272) = 0u;
    *(v156 + 288) = 0u;
    *(v156 + 304) = 0u;
    *(v156 + 320) = 0u;
    *(v156 + 336) = 0u;
    *(v156 + 352) = 0u;
    *(v156 + 368) = 0u;
    *(v156 + 384) = 0u;
    *(v156 + 400) = 0u;
    *(v156 + 416) = 0u;
    *(v156 + 432) = 0u;
    *(v156 + 448) = 0u;
    *(v156 + 464) = 0;
    *(v156 + 472) = 1;
    *(v156 + 480) = 0u;
    *(v156 + 496) = 0u;
    *(v156 + 512) = 0u;
    *(v156 + 528) = 0u;
    *(v156 + 544) = 0u;
    *(v156 + 560) = 0;
    v157 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
    v158 = swift_allocObject();
    *(v158 + 16) = sub_1AACDECB4;
    *(v158 + 24) = v155;
    v159 = *(v157 + 552);
    *(v157 + 552) = sub_1AACD8800;
    *(v157 + 560) = v158;

    sub_1AACB4A98(v159);
    v160 = v157;
  }

  v95[6] = v160;
  v219 = v194;
  v220 = v181;
  v221 = &v220;
  v222 = &v219;
  v217 = v192;
  v218 = v186;
  v223 = &v218;
  v224 = &v217;
  v215 = v188;
  v216 = v190;
  v225 = &v216;
  v226 = &v215;

  v161 = sub_1AACF7698(&v221, sub_1AAEAEFA8, a3);
  v14 = v275;
  v162 = *(v275 + 16);
  if (!v162)
  {

    v163 = MEMORY[0x1E69E7CC0];
LABEL_110:
    if (v163 < 0 || (v163 & 0x4000000000000000) != 0)
    {
      type metadata accessor for AnySignal();
      v165 = sub_1AAF902D4();
    }

    else
    {

      sub_1AAF90504();
      type metadata accessor for AnySignal();
      v165 = v163;
    }

    v166 = swift_allocObject();
    *(v166 + 16) = v14;
    sub_1AACF900C(0, &qword_1ED9B31C0, &qword_1ED9B2AC8, sub_1AACF92C8);
    swift_allocObject();
    v167 = sub_1AACF5068(v165, sub_1AAEAEFC8, v166, &unk_1F1FDCCC0, sub_1AAEAFA44, sub_1AACB8784);
    v95[2] = v183;
    v212 = v167;
    v213 = v161;
    v214[0] = &v213;
    v214[1] = &v212;

    v95[8] = sub_1AACF9078(v214, sub_1AAEA8FFC, 0);

    v168 = sub_1AACF93EC(v197, v183, *(&v201 + 1));

    sub_1AACC224C(v179);
    v95[7] = v168;
    v95[10] = v196;
    v209 = v141;
    v210 = v161;
    v211[0] = &v210;
    v211[1] = &v209;
    v169 = v272;
    swift_bridgeObjectRetain_n();

    v170 = sub_1AACFAAB8(v169);

    if (v170 >> 62)
    {
      type metadata accessor for AnySignal();

      v171 = sub_1AAF902D4();
    }

    else
    {

      sub_1AAF90504();
      type metadata accessor for AnySignal();
      v171 = v170;
    }

    v172 = swift_allocObject();
    *(v172 + 16) = v169;
    sub_1AACF900C(0, &qword_1ED9B31B0, &qword_1ED9B2AA8, sub_1AACFE434);
    swift_allocObject();
    v207 = v167;
    v208 = sub_1AACF5068(v171, sub_1AAEAEFD0, v172, &unk_1F1FDCBA8, sub_1AAEAF9F4, sub_1AACB8784);
    v211[2] = &v208;
    v211[3] = &v207;

    v173 = sub_1AACFAE38(v211, sub_1AAEA9030, 0);

    v180[9] = v173;
    v255 = v272;
    v256 = v273;
    v257 = v274;
    v258 = v275;
    sub_1AACFDB64(&v255);
    return v180;
  }

  v163 = sub_1AACF741C(*(v275 + 16), 0);
  v164 = sub_1AACF74C8(&v255, v163 + 32, v162, v14);
  v13 = v257;
  swift_bridgeObjectRetain_n();
  sub_1AACC9C00();
  if (v164 == v162)
  {
    v95 = v180;
    v141 = v186;
    goto LABEL_110;
  }

LABEL_124:
  __break(1u);
LABEL_125:
  *&v259 = 0;
  *(&v259 + 1) = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](543516756, 0xE400000000000000);
  LOBYTE(v276) = v14;
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](0xD00000000000001BLL, 0x80000001AAFCF890);
  sub_1AAF902C4();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1AACC65B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AACC6620(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16) && (v4 = sub_1AACC9B78(a1), (v5 & 1) != 0))
  {
    sub_1AACAEF68(*(v3 + 56) + 40 * v4, v10);
    sub_1AACBB198(v10, v11);
    swift_endAccess();
    v6 = v12;
    v7 = v13;
    sub_1AACBB42C(v11, v12);
    v8 = (*(v7 + 8))(v6, v7);
    sub_1AACB634C(v11);
    return v8;
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

_BYTE *sub_1AACC66F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SourceSignal();
  (*(v3 + 16))(v5, v1, v2);
  return sub_1AACC67D8(v5);
}

uint64_t sub_1AACC6814(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AACB9028(0, &qword_1ED9B2920, &qword_1ED9B3E50);
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1AAF90684();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_1AACC6A98()
{
  if (!qword_1ED9B4248)
  {
    sub_1AACBD560(255, &qword_1ED9B5460, &type metadata for PartialSpec.Chart, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B4248);
    }
  }
}

unint64_t sub_1AACC6B20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AACC9B78(a3);
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
      sub_1AACC6814(v16, a4 & 1);
      result = sub_1AACC9B78(a3);
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
      sub_1AAD96064();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
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

void *sub_1AACC6C80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AACF59C0(0, a2, a3, sub_1AACB62F8);
  v5 = sub_1AAF903A4();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_1AACB6398(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 8);
    v17 = *v12;

    v10 = sub_1AACB6398(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1AACC6DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AACC6E3C()
{
  result = sub_1AAF8FE74();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AACC6ED8()
{
  type metadata accessor for Signal();
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

void *sub_1AACC6F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AACF59C0(0, &qword_1ED9B16D0, sub_1AAD9B4FC, sub_1AACB62F8);
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1AACB6398(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1AACB6398(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1AACC7098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AACF5CC4();
  v3 = sub_1AAF903A4();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1AACE1760(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1AACE1760(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1AACC719C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6D1F0(0, &qword_1ED9B28F0, &type metadata for Spec.Channel, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1AACC7228(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1AACC7278(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1AACC7374(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB46C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1AAF90464();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1AAEACA90(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1AACC752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1AACC7598(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v5 = *a1;
  v6 = a1[4];
  if (v6 < 0)
  {
    return sub_1AACC7570(v5);
  }

  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[5];
  if (a2 <= 1u)
  {
    v24 = v5;
    sub_1AACDE090(0, &qword_1ED9B10E8, &type metadata for DomainOverride, type metadata accessor for SourceSignal);
    swift_allocObject();
    v13 = sub_1AAEB7754(0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *a4;
    sub_1AADD294C(v13, 0, a2, isUniquelyReferenced_nonNull_native);
    v5 = v24;
    *a4 = v31[0];
  }

  v30 = sub_1AACC7570(v5);
  v31[0] = &v30;
  v29 = sub_1AAEA9D3C(v9, v10);
  v31[1] = &v29;
  v28 = sub_1AAEA9D3C(v11, v6);
  v31[2] = &v28;
  v27 = sub_1AAEA01B8(v12);
  v31[3] = &v27;
  v15 = *a4;
  if (*a4)[2] && (v16 = sub_1AACE1760(a2), (v17))
  {
    v18 = *(v15[7] + 16 * v16);

    v19 = swift_retain_n();
    sub_1AAEB8738(v19);
    sub_1AACDE090(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AAF9DE80;
    *(v20 + 32) = v18;
    v21 = sub_1AAEB8778;
  }

  else
  {
    v21 = sub_1AAEB7870;
    v18 = 0;
    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEB86B4();
  swift_allocObject();

  v26 = sub_1AAEAA300(v20, v21, v18);
  v31[4] = &v26;
  v22 = swift_allocObject();
  *(v22 + 16) = v25;
  return sub_1AAEA061C(v31, sub_1AAEB8730, v22);
}

void sub_1AACC785C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, unint64_t))
{
  v7 = (a5 >> 61) & 3;
  if (((a5 >> 61) & 3) > 1)
  {
    if (v7 != 2)
    {
      return;
    }

    a5 &= 0x9FFFFFFFFFFFFFFFLL;
  }

  else if (v7)
  {
    a5 &= 0x9FFFFFFFFFFFFFFFLL;
  }

  sub_1AACC78A0(a1, a2, a3, a4, a5, a6, a7);
}

void sub_1AACC78A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, unint64_t))
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    v8 = a5 >> 8;
    a7(a2, a3, a3 >> 8);

    a7(a4, a5, v8);
  }
}

uint64_t *sub_1AACC7924(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v129 = a2;
  v5 = *(a2 + 32);
  v122 = *(a1 + 160);
  v116 = *(a1 + 168);
  v117 = *(a1 + 152);
  v187 = *(a1 + 80);
  v6 = *(a1 + 64);
  v185 = *(a1 + 48);
  v186 = v6;
  v7 = *(a1 + 32);
  v183 = *(a1 + 16);
  v184 = v7;
  v182 = *a1;
  v8 = *(a1 + 88);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    goto LABEL_12;
  }

  *&v188 = MEMORY[0x1E69E7CC0];
  sub_1AAF901E4();
  v133 = v182;
  v131 = BYTE8(v182);
  v11 = v9;
  v12 = (v185 >> 61) & 3;
  v130 = *(v4 + 105) & 1;
  v13 = v4;
  v14 = (v8 + 72);
  v123 = v13;
  v125 = v11;
  v15 = *(v13 + 112);
  do
  {
    if (*v14)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1AAEA05B8;
      *(v17 + 24) = 0;
      sub_1AACF5D54(0, &qword_1EB4268F0, type metadata accessor for AxisMarkValues.Storage, type metadata accessor for Signal);
      v18 = swift_allocObject();
      v19 = *(*v18 + 256);
      v20 = type metadata accessor for AxisMarkValues.Storage(0);
      (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
      v21 = (v18 + *(*v18 + 264));
      *v21 = 0;
      v21[1] = 0;
      v22 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1AACDECB4;
      *(v23 + 24) = v17;
      v24 = (v22 + *(*v22 + 264));
      v25 = *v24;
      *v24 = sub_1AACD8800;
      v24[1] = v23;

      sub_1AACB4A98(v25);

      if (!v12)
      {
        goto LABEL_3;
      }
    }

    else
    {
      result = sub_1AACC9544(*(v14 - 1), type metadata accessor for AxisMarkValues.Storage);
      v22 = result;
      if (!v12)
      {
LABEL_3:
        v161 = v22;
        v152[0] = v15;
        v171 = &v161;
        v172 = v152;
        v147[0] = a3;
        v173 = v147;
        v16 = swift_allocObject();
        *(v16 + 16) = v5 >= 0;
        *(v16 + 24) = v133;
        *(v16 + 32) = v131;
        *(v16 + 33) = v130;
        swift_retain_n();

        sub_1AAEA7958(&v171, sub_1AAEB0088, v16);
        goto LABEL_4;
      }
    }

    if (v12 != 1)
    {
      __break(1u);
LABEL_97:
      __break(1u);
      return result;
    }

    v161 = v22;
    v152[0] = a3;
    v171 = &v161;
    v172 = v152;
    v147[0] = v15;
    v181[0] = v122;
    v173 = v147;
    v174 = v181;
    swift_retain_n();

    sub_1AACC96D8(&v171, sub_1AACE7A94, 0);
LABEL_4:

    sub_1AAF901B4();
    sub_1AAF901F4();
    sub_1AAF90204();
    sub_1AAF901C4();
    v14 += 80;
    --v11;
  }

  while (v11);
  v10 = v188;
  v4 = v123;
  v9 = v125;
LABEL_12:
  v128 = *(v4 + 106);
  v27 = v108;
  if (v10 >> 62)
  {
    goto LABEL_92;
  }

  swift_bridgeObjectRetain_n();
  sub_1AAF90504();
  type metadata accessor for AnySignal();
  v28 = v10;
  while (2)
  {
    v29 = swift_allocObject();
    v29[2] = sub_1AAEAD81C;
    v29[3] = 0;
    v29[4] = v10;
    sub_1AACC9348();
    swift_allocObject();
    result = sub_1AACF5068(v28, sub_1AAEAFFE0, v29, &unk_1F1FDDDA0, sub_1AAEB0A18, sub_1AACB8784);
    v189 = v184;
    v190 = v185;
    v188 = v183;
    if ((BYTE7(v185) & 0x40) != 0)
    {
      goto LABEL_97;
    }

    v107 = result;
    if ((*(v129 + 32) & 0x8000000000000000) != 0)
    {

      sub_1AACF5118(&v188, &v171);
      v30 = a3;
    }

    else
    {
      v152[0] = result;
      v147[0] = a3;
      v161 = v152;
      v162 = v147;

      sub_1AACF5118(&v188, &v171);

      v30 = sub_1AAEA3F88(&v161, sub_1AAEA83B8, 0);
    }

    v31 = v4;
    v111 = *(v4 + 128);
    v32 = sub_1AACF5174(&v182, v128, v30, v111);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v171 = v27[7];
    sub_1AACF2A28(v32, v128, isUniquelyReferenced_nonNull_native);

    v34 = v171;
    v27[7] = v171;
    if (v34[2])
    {
      sub_1AACB6398(v128);
      v35 = v117;
      if ((v36 & 1) != 0 && (sub_1AACC9C70(), (v112 = swift_dynamicCastClass()) != 0))
      {

        v37 = v190;
        if ((v190 & 0x4000000000000000) != 0)
        {
LABEL_28:
          sub_1AAEB0024(&v188);
          goto LABEL_29;
        }
      }

      else
      {
        v112 = 0;
        v37 = v190;
        if ((v190 & 0x4000000000000000) != 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v112 = 0;
      v35 = v117;
      v37 = v190;
      if ((v190 & 0x4000000000000000) != 0)
      {
        goto LABEL_28;
      }
    }

    if ((v37 & 0x8000000000000000) == 0)
    {
      v38 = *(&v189 + 1);
      sub_1AAEAEF98(*(&v188 + 1), v189, SBYTE1(v189));
      v35 = v117;
      sub_1AAEAEF98(v38, v37, SBYTE1(v37));
      if (v112)
      {

        v39 = swift_isUniquelyReferenced_nonNull_native();
        v171 = v27[3];
        sub_1AADD37AC(v112, v128, v39);
        v27[3] = v171;
      }
    }

LABEL_29:
    v180 = a3;
    v179 = v35;
    v181[0] = &v180;
    v181[1] = &v179;
    v178 = v122;
    v181[2] = &v178;
    v40 = swift_allocObject();
    v41 = v185;
    *(v40 + 48) = v184;
    *(v40 + 64) = v41;
    *(v40 + 80) = v186;
    *(v40 + 96) = v187;
    v42 = v183;
    *(v40 + 16) = v182;
    *(v40 + 32) = v42;
    swift_retain_n();
    swift_retain_n();

    sub_1AACC74AC(&v182, &v171);
    v43 = sub_1AACF2A74(v181, sub_1AAEB0078, v40);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v27[6];
    sub_1AACF2D68(v43, v128, v44);
    v27[6] = v171;
    if (!v9)
    {
    }

    if (!v112)
    {
    }

    v124 = v31[23];
    v115 = v31[15];
    v110 = v31[17];
    v170 = MEMORY[0x1E69E7CC0];
    v169 = MEMORY[0x1E69E7CC0];
    v114 = v10 & 0xC000000000000001;
    if ((v10 & 0xC000000000000001) == 0 && v9 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_95:
      type metadata accessor for AnySignal();

      v90 = sub_1AAF902D4();

      goto LABEL_75;
    }

    v132 = (v190 >> 61) & 3;
    v109 = v10 + 32;

    v45 = 0;
    v113 = v9 - 1;
    v46 = (v8 + 104);
    v47 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v48 = *(v46 - 9);
      v49 = *(v46 - 64);
      v50 = *(v46 - 7);
      v51 = *(v46 - 48);
      v52 = *(v46 - 3);
      v53 = *(v46 - 16);
      v126 = v47;
      v134 = v45;
      v118 = v46;
      v121 = *(v46 - 1);
      v120 = *v46;
      if (v114)
      {
        v8 = MEMORY[0x1AC598D40]();
      }

      else
      {
        v8 = *(v109 + 8 * v45);
      }

      v167 = v117;
      v166 = v122;
      v168[0] = &v167;
      v168[1] = &v166;
      v165 = v8;
      v168[2] = &v165;
      v54 = swift_allocObject();
      *(v54 + 16) = v132;

      v55 = sub_1AACF31BC(v168, sub_1AACEF968, v54);
      if (v49)
      {
        v56 = 0;
        if ((v51 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_45:
        v57 = 0;
        if (v53)
        {
          goto LABEL_46;
        }

LABEL_40:

        v58 = sub_1AACF57BC(v52, &type metadata for AxisMarksContentStorage);

        v59 = v128;
        if (v56)
        {
          goto LABEL_41;
        }

LABEL_47:
        v62 = swift_allocObject();
        *(v62 + 16) = v134;
        *(v62 + 24) = v59;
        *(v62 + 25) = v132;

        v60 = sub_1AACFB1D4(&v171, sub_1AACFD8B0, v62);
        if (!v57)
        {
          goto LABEL_48;
        }

LABEL_42:
        swift_retain_n();
        v61 = v57;
        if (v58)
        {
          goto LABEL_43;
        }

LABEL_49:
        v64 = swift_allocObject();
        *(v64 + 16) = sub_1AAEB27C0;
        *(v64 + 24) = 0;
        sub_1AACC9BB0(0, &qword_1EB4268F8, &type metadata for AxisMarksContentStorage, type metadata accessor for Signal);
        v65 = swift_allocObject();
        *(v65 + 40) = 0u;
        *(v65 + 56) = 0u;
        *(v65 + 72) = 0;
        *(v65 + 80) = -1;
        *(v65 + 88) = 0;
        *(v65 + 96) = 0;

        v9 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
        v66 = swift_allocObject();
        *(v66 + 16) = sub_1AACDECB4;
        *(v66 + 24) = v64;
        v67 = *(v9 + 88);
        *(v9 + 88) = sub_1AACD8838;
        *(v9 + 96) = v66;

        sub_1AACB4A98(v67);
      }

      else
      {

        v56 = sub_1AACF57BC(v48, &type metadata for AxisMarkPreset.Storage);

        if (v51)
        {
          goto LABEL_45;
        }

LABEL_39:

        v57 = sub_1AACF57BC(v50, &type metadata for AxisMarkPosition.Storage);

        if ((v53 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_46:
        v58 = 0;
        v59 = v128;
        if (!v56)
        {
          goto LABEL_47;
        }

LABEL_41:

        v60 = v56;
        if (v57)
        {
          goto LABEL_42;
        }

LABEL_48:
        v63 = swift_allocObject();
        *(v63 + 16) = v134;
        *(v63 + 24) = v59;
        *(v63 + 25) = v132;
        swift_retain_n();
        v61 = sub_1AACF34B0(&v171, sub_1AAD131D8, v63);
        if (!v58)
        {
          goto LABEL_49;
        }

LABEL_43:

        v9 = v58;
      }

      v129 = v9;
      v159 = v61;
      v160 = v60;
      v161 = &v160;
      v162 = &v159;
      v157 = v55;
      v158 = v124;
      v163 = &v158;
      v164 = &v157;
      v68 = swift_allocObject();
      *(v68 + 16) = v115;
      *(v68 + 24) = v132;

      v69 = sub_1AACF35B8(&v161, sub_1AAD16FF0, v68);
      v154 = v9;
      v155 = v8;
      v156[0] = &v155;
      v156[1] = &v154;
      v153 = v69;
      v156[2] = &v153;
      v70 = swift_allocObject();
      *(v70 + 16) = v115;
      *(v70 + 24) = v134;
      *(v70 + 32) = v128;
      *(v70 + 33) = v132;

      sub_1AACF38F4(v156, sub_1AACE56DC, v70);
      v150 = v61;
      v151 = v60;
      v152[0] = &v151;
      v152[1] = &v150;
      v148 = v124;
      v149 = v55;
      v152[2] = &v149;
      v152[3] = &v148;
      v71 = swift_allocObject();
      *(v71 + 16) = v115;
      *(v71 + 24) = v132;

      v72 = sub_1AACF3C00(v152, sub_1AACE28F4, v71);

      v145 = v9;
      v146 = v8;
      v147[0] = &v146;
      v147[1] = &v145;
      v143 = v116;
      v144 = v61;
      v147[2] = &v144;
      v147[3] = &v143;

      v119 = sub_1AACF3F38(v147, sub_1AACE0F30, v115);

      MEMORY[0x1AC598430](v73);
      if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AAF8F874();
      }

      sub_1AAF8F8C4();
      v74 = v169;

      v47 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1AACFB2DC(0, v126[2] + 1, 1, v126);
      }

      v76 = v47[2];
      v75 = v47[3];
      if (v76 >= v75 >> 1)
      {
        v47 = sub_1AACFB2DC((v75 > 1), v76 + 1, 1, v47);
      }

      v47[2] = v76 + 1;
      v77 = &v47[4 * v76];
      v77[4] = v72;
      v77[5] = v121;
      *(v77 + 48) = v120;
      v77[7] = v119;
      if (v113 != v134)
      {
        v46 = v118 + 80;
        v45 = v134 + 1;
        continue;
      }

      break;
    }

    v127 = v47;

    if (v74 >> 62)
    {
      type metadata accessor for AnySignal();

      v78 = sub_1AAF902D4();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1AAF90504();
      type metadata accessor for AnySignal();
      v78 = v74;
    }

    v4 = swift_allocObject();
    *(v4 + 16) = sub_1AAD139CC;
    *(v4 + 24) = 0;
    *(v4 + 32) = v74;
    sub_1AACF5D54(0, &qword_1ED9B1738, sub_1AACE49D8, type metadata accessor for Signal);
    v79 = swift_allocObject();
    v79[6] = 0;
    v79[7] = 0;
    v79[5] = 0;
    v27 = sub_1AACBD668(v78);

    v80 = swift_allocObject();
    *(v80 + 16) = sub_1AAD13D44;
    *(v80 + 24) = v4;
    v81 = v27[6];
    v27[6] = sub_1AACD8800;
    v27[7] = v80;

    sub_1AACB4A98(v81);

    v10 = &unk_1AAF9D000;
    v135 = v127[2];
    if (v135)
    {
      a3 = 0;
      v82 = v127 + 7;
      while (a3 < v127[2])
      {
        v10 = *(v82 - 3);
        v83 = *v82;
        if (*(v82 - 1))
        {

          v84 = 0;
          v85 = sub_1AAD1CD04;
          v86 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v87 = *(v82 - 2);

          v84 = sub_1AACF57BC(v87, &type metadata for AxisCompositingLayer);
          sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_1AAF9DE80;
          *(v86 + 32) = v84;
          v85 = sub_1AAEB0080;
        }

        sub_1AACF43A8();
        swift_allocObject();

        v9 = sub_1AACF42F4(v86, v85, v84);
        v141 = v112;
        v142 = v10;
        v171 = &v142;
        v172 = &v141;
        v4 = v110;
        v139 = v110;
        v140 = v111;
        v173 = &v140;
        v174 = &v139;
        v137 = v83;
        v138 = v27;
        v175 = &v138;
        v176 = &v137;
        v136 = v9;
        v177 = &v136;
        v88 = swift_allocObject();
        *(v88 + 16) = v132;
        *(v88 + 24) = a3;
        *(v88 + 32) = v128;

        v8 = sub_1AACF4424(&v171, sub_1AACE487C, v88);

        MEMORY[0x1AC598430](v89);
        if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        a3 = (a3 + 1);
        sub_1AAF8F8C4();

        v82 += 4;
        if (v135 == a3)
        {
          v43 = v170;
          v10 = 0x1AAF9D000;
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_92:
      type metadata accessor for AnySignal();

      v28 = sub_1AAF902D4();
      continue;
    }

    break;
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_73:

  if (v43 >> 62)
  {
    goto LABEL_95;
  }

  sub_1AAF90504();
  type metadata accessor for AnySignal();
  v90 = v43;
LABEL_75:
  v91 = swift_allocObject();
  v91[2] = sub_1AAD1D374;
  v91[3] = 0;
  v91[4] = v43;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v92 = swift_allocObject();
  v92[6] = 0;
  v92[7] = 0;
  v92[5] = 0xF000000000000007;
  v93 = sub_1AACBD668(v90);

  v94 = swift_allocObject();
  *(v94 + 16) = sub_1AAD144DC;
  *(v94 + 24) = v91;
  v95 = *(v93 + 48);
  *(v93 + 48) = sub_1AACD8838;
  *(v93 + 56) = v94;

  sub_1AACB4A98(v95);

  v142 = v27;
  v171 = &v142;

  sub_1AACFB538(&v171, sub_1AAD149AC, 0);
  v140 = v27;
  v141 = &v140;
  sub_1AACFB538(&v141, sub_1AAD14AE8, 0);

  v138 = v107;
  v139 = &v138;

  v96 = sub_1AACF4984(&v139, sub_1AAEAD844, 0);
  v97 = *v108;
  if (*(*v108 + 16) && (v98 = sub_1AACB6398(v128), (v99 & 1) != 0))
  {
    v100 = *(*(v97 + 56) + 8 * v98);
  }

  else
  {
    v100 = MEMORY[0x1E69E7CC0];
  }

  sub_1AACC9BB0(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v101 = swift_allocObject();
  *(v101 + 16) = *(v10 + 3712);
  *(v101 + 32) = v96;
  v137 = v100;

  sub_1AACF4B5C(v101);
  v102 = v137;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v108;
  sub_1AACFB710(v102, v128, v103);
  *v108 = v137;

  MEMORY[0x1AC598430](v104);
  if (*((v108[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();

  MEMORY[0x1AC598430](v105);
  if (*((v108[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();

  if (v128)
  {
    MEMORY[0x1AC598430](v106);
    if (*((v108[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AAF8F874();
    }
  }

  else
  {
    MEMORY[0x1AC598430](v106);
    if (*((v108[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AAF8F874();
    }
  }

  sub_1AAF8F8C4();
}

uint64_t sub_1AACC9214()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AACC9288()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AACC92C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 34, 7);
}

void sub_1AACC9348()
{
  if (!qword_1ED9B3190)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3190);
    }
  }
}

void *sub_1AACC93C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD6CF88(0, &qword_1ED9B28D8, sub_1AACC9B7C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_1AACC9B7C(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_1AACC9B7C(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AACC9B7C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AACC9544(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {
    v7 = sub_1AACC9B78(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);
      swift_endAccess();
      v10 = a2(0);
      result = (*(*v9 + 200))(v10, v10);
      if (result)
      {
        return result;
      }

      __break(1u);
    }
  }

  swift_endAccess();

  v12 = sub_1AACC6620(a1);
  v14 = v13;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_1AACC6B20(v12, v14, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + 24) = v18;
  swift_endAccess();
  v16 = a2(0);
  result = (*(*v12 + 200))(v16, v16);
  if (result)
  {
    v17 = result;

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AACC96D8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  type metadata accessor for AxisMarkValues.Storage(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CBA4();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACC9348();
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v24);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACEC61C;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  *(v20 + 48) = sub_1AACD8838;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22);

  return v20;
}

uint64_t sub_1AACC9A40(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACBD560(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AACC9AC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AACC9B18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACC9BB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_1AACC9C08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1AACC9C1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AACC9C70()
{
  if (!qword_1ED9B3240)
  {
    sub_1AAD9B4A8(255, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3240);
    }
  }
}

void sub_1AACC9CF4()
{
  if (!qword_1ED9B3E00)
  {
    sub_1AACAA194(255, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3E00);
    }
  }
}

void sub_1AACC9D70()
{
  if (!qword_1ED9B3E10)
  {
    sub_1AACAA194(255, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3E10);
    }
  }
}

void sub_1AACC9DEC()
{
  if (!qword_1ED9B3E20)
  {
    sub_1AACAA194(255, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3E20);
    }
  }
}

void sub_1AACC9E68(uint64_t a1)
{
  if (!qword_1ED9B2998)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for CGSize(255);
    type metadata accessor for SgMeasurements();
    v1 = MEMORY[0x1E69E6720];
    sub_1AACC9BB0(255, &qword_1ED9B4100, &type metadata for StackContext, MEMORY[0x1E69E6720]);
    sub_1AACC9BB0(255, qword_1ED9B3CE8, &type metadata for SubPositionContext, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B2998);
    }
  }
}

void sub_1AACCA000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1AACCF364();
    v7 = v6;
    v8 = sub_1AACB62F8();
    v9 = a3(a1, &type metadata for Spec.Channel, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char *a11, uint64_t a12, char a13, uint64_t a14, char a15, void (*a16)(void))
{
  v16 = *(a8 + 16);
  v17 = *(a8 + 18);
  v18 = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = *a8;
  *(a9 + 72) = v16;
  *(a9 + 74) = v17;
  *(a9 + 75) = a10;
  *(a9 + 76) = v18;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  type metadata accessor for AxisValueLabel();
  a16();
  type metadata accessor for AxisValueLabel.LabelContent();

  return swift_storeEnumTagMultiPayload();
}

__n128 AxisTick.init(centered:length:stroke:)@<Q0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 24) = *a3;
  v6 = *a2;
  v7 = *(a2 + 8);
  *(a4 + 72) = 0;
  *a4 = a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 40) = v5;
  *(a4 + 56) = *(a3 + 32);
  *(a4 + 64) = 0;
  return result;
}

uint64_t sub_1AACCA1C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1AACCA228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1AACCA298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_1AACCA3D4@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v45 = a1[1];
  v10 = **a1;
  v11 = *a1[2];
  v12 = *(a2 + 16);
  v13 = *(v12 + 32);

  result = sub_1AACE0D48(a3, a4, v13);
  v37 = *(v12 + 32);
  v38 = v12;
  *(v12 + 32) = result;
  v36 = *(a2 + 24);
  *(a2 + 24) = result;
  v15 = *(v10 + 16);
  if (v15)
  {
    if (a5 <= 1u)
    {
      v16 = 0;
      v43 = a5;
      v44 = v10 + 32;
      v41 = *(v10 + 16);
      v42 = a5;
      while (1)
      {
        v20 = *(v44 + 8 * v16);
        v21 = *(v11 + 144);
        v22 = *(v11 + 152);
        v23 = *(v11 + 160);
        *(v11 + 144) = v20;
        *(v11 + 152) = 0;
        *(v11 + 160) = v43;
        *(v11 + 168) = v16;
        *(v11 + 176) = v15;
        sub_1AACCAE10(v20, 0, a5);
        sub_1AACCA714(v21, v22, v23);
        sub_1AACCA728(v20, 0, a5);
        v24 = *(a2 + 16);
        v25 = *(v24 + 32);

        result = sub_1AACE1B94(v25, *&v20);
        v26 = *(v24 + 32);
        *(v24 + 32) = result;
        v47 = *(a2 + 24);
        *(a2 + 24) = result;
        *(v11 + 128) = result;
        v27 = *(v11 + 160);
        if (*(v11 + 160) == 0xFF)
        {
          break;
        }

        v29 = *(v11 + 144);
        v28 = *(v11 + 152);
        v30 = *(v11 + 168);
        v31 = *(v11 + 176);
        sub_1AACB4B38(v45, v52);
        v46 = v26;
        if (v54)
        {
          if (v54 == 1)
          {
            v40 = *&v52[0];
            v48[0] = v29;
            v48[1] = v28;
            v49 = v27;
            v50 = v30;
            v51 = v31;
            sub_1AACCAE10(v29, v28, v27);
            v40(&v55, v48);
          }

          else
          {
            sub_1AADD7908();
            memset(v58, 0, sizeof(v58));
            v59 = 0;
            *(&v56 + 1) = v32;
            v57 = sub_1AADD79FC();
            v33 = swift_allocObject();
            *&v55 = v33;
            sub_1AACCAE10(v29, v28, v27);
            sub_1AADCF710(v58, (v33 + 16));
          }

          sub_1AACCA714(v29, v28, v27);
        }

        else
        {
          v55 = v52[0];
          v56 = v52[1];
          v57 = v53;
        }

        ++v16;
        v17 = *(&v56 + 1);
        v18 = v57;
        v19 = sub_1AACBB42C(&v55, *(&v56 + 1));

        sub_1AACCA740(v19, v11, v17, v18);

        sub_1AACE1B40(&v55);
        *(a2 + 24) = v47;
        *(v24 + 32) = v46;

        v15 = v41;
        a5 = v42;
        if (v41 == v16)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *(a2 + 24) = v36;
    *(v38 + 32) = v37;

    swift_beginAccess();
    v34 = *(v11 + 208);
    v35 = *(v11 + 216);
    *a6 = *(v11 + 184);
    *(a6 + 8) = *(v11 + 192);
    *(a6 + 24) = v34;
    *(a6 + 32) = v35;
    *(a6 + 40) = *(v11 + 224);
  }

  return result;
}

uint64_t sub_1AACCA714(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AACCA728(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AACCA728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1AACCA7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t static BuilderTuple<each A>._layoutAxisMark(_:_:)(uint64_t TupleTypeMetadata, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (a3 != 1)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_8;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_8;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v7)
      {
LABEL_8:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v45[1] = v45;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v54 = *a2;
  v45[0] = v23;
  v24 = *(v23 + 16);
  v50 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v25;
  result = v24();
  if (!v7)
  {
    return (*(v45[0] + 8))(v50, v46);
  }

  v27 = 0;
  v49 = a4 & 0xFFFFFFFFFFFFFFFELL;
  v48 = a5 & 0xFFFFFFFFFFFFFFFELL;
  v28 = (v46 + 32);
  v47 = v7;
  while (1)
  {
    v51 = v45;
    v29 = *(v49 + 8 * v27);
    v52 = *(v48 + 8 * v27);
    MEMORY[0x1EEE9AC00](result);
    v32 = v45 - v31;
    v33 = v7 == 1 ? 0 : *v28;
    v53 = v30;
    (*(v30 + 16))(v32, &v50[v33], v29);
    v34 = *(v54 + 16);
    v35 = *(v34 + 16);
    v36 = *(v35 + 32);
    *&v56[0] = v27;

    sub_1AAF90024();
    v58[0] = v36;
    swift_beginAccess();
    v37 = *(v35 + 16);
    if (*(v37 + 16) && (v38 = sub_1AACCAE28(v58), (v39 & 1) != 0))
    {
      v40 = *(*(v37 + 56) + 8 * v38);
    }

    else
    {
      swift_endAccess();
      sub_1AAF90704();
      MEMORY[0x1AC5992C0](v27);
      MEMORY[0x1AC5992F0](v36);
      v61 = v56[2];
      v62 = v56[3];
      v63 = v57;
      v59 = v56[0];
      v60 = v56[1];
      v41 = sub_1AAF906E4();
      v40 = sub_1AACCB060(v41);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = *(v35 + 16);
      *(v35 + 16) = 0x8000000000000000;
      sub_1AACCB154(v40, v58, isUniquelyReferenced_nonNull_native);
      *(v35 + 16) = v55;
    }

    swift_endAccess();
    sub_1AACCAFF0(v58);
    v43 = *(v35 + 32);
    *(v35 + 32) = v40;
    v44 = *(v34 + 24);
    *(v34 + 24) = v40;
    *&v56[0] = v54;
    (*(v52 + 8))(v32, v56, v29);
    *(v34 + 24) = v44;
    *(v35 + 32) = v43;

    result = (*(v53 + 8))(v32, v29);
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    ++v27;
    v28 += 4;
    v7 = v47;
    if (v47 == v27)
    {
      return (*(v45[0] + 8))(v50, v46);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACCAE10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

unint64_t sub_1AACCAE28(uint64_t *a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992F0](*a1);
  sub_1AAF90014();
  v2 = sub_1AAF906F4();

  return sub_1AACCAF00(a1, v2);
}

unint64_t sub_1AACCAF00(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1 + 1;
    v7 = *a1;
    do
    {
      sub_1AACCAEA4(*(v2 + 48) + 48 * v4, &v10);
      if (v10 == v7)
      {
        v8 = MEMORY[0x1AC598C20](&v11, v6);
        sub_1AACCAFF0(&v10);
        if (v8)
        {
          return v4;
        }
      }

      else
      {
        sub_1AACCAFF0(&v10);
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1AACCB060(uint64_t a1)
{
  swift_beginAccess();
  while (1)
  {
    v3 = *(v1 + 24);
    if (!*(v3 + 16))
    {
      break;
    }

    v4 = sub_1AAF90684();
    v5 = -1 << *(v3 + 32);
    v6 = v4 & ~v5;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      break;
    }

    v7 = ~v5;
    while (*(*(v3 + 48) + 8 * v6) != a1)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (__CFADD__(a1++, 1))
    {
      __break(1u);
      break;
    }
  }

LABEL_11:
  swift_beginAccess();
  sub_1AACCB044(&v10, a1);
  swift_endAccess();
  return a1;
}

uint64_t sub_1AACCB154(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1AACCAE28(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= result && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = sub_1AAD94D78();
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + 8 * v10) = a1;
      return result;
    }

    goto LABEL_11;
  }

  sub_1AACD60D4(result, a3 & 1);
  result = sub_1AACCAE28(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_16:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = sub_1AACCAEA4(a2, v24);
  v16[(v10 >> 6) + 8] |= 1 << v10;
  v18 = (v16[6] + 48 * v10);
  v20 = v24[1];
  v19 = v24[2];
  *v18 = v24[0];
  v18[1] = v20;
  v18[2] = v19;
  *(v16[7] + 8 * v10) = a1;
  v21 = v16[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16[2] = v23;
  return result;
}

uint64_t sub_1AACCB2D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Optional<A>._layoutAxisMark(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  (*(v13 + 32))(v15, v12, a3);
  v19 = v16;
  (*(a4 + 8))(v15, &v19, a3, a4);
  return (*(v13 + 8))(v15, a3);
}

uint64_t static AxisValueLabel._layoutAxisMark(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 160);
  if (v3 == 255)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = *(v2 + 144);
    v5 = *(v2 + 152);
    v42[0] = v6;
    v42[1] = v5;
    v43 = v3;
    v44 = *(v2 + 168);
    sub_1AACCAE10(v6, v5, v3);
    v7 = type metadata accessor for AxisValueLabel();
    sub_1AACDEDC8(v42, v2, v7, v45);
    sub_1AACCA728(v6, v5, v3);
    v8 = *(v2 + 24);
    v9 = *v4;
    if (v9 == 2)
    {
      v10 = (*(v2 + 64) & 0xFE) != 2;
      if (v8 != 2)
      {
        v10 = 1;
      }

      LOBYTE(v9) = *(v2 + 136) >= 2u && v10;
    }

    if (*(v4 + 75) == 2)
    {
      v11 = v8 == 2;
    }

    else
    {
      v11 = *(v4 + 75);
    }

    v12 = *(v4 + 76) - 3;
    v13 = *(*(v2 + 16) + 24);

    v14 = sub_1AAF8DFB4();
    if (v12 <= 0xFFFFFFFD)
    {
      v18 = v14;
    }

    else
    {
      v18 = v16;
    }

    if (v12 <= 0xFFFFFFFD)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    if (v12 <= 0xFFFFFFFD)
    {
      v20 = v16;
    }

    else
    {
      v20 = v14;
    }

    if (v12 <= 0xFFFFFFFD)
    {
      v21 = v17;
    }

    else
    {
      v21 = v15;
    }

    LOBYTE(v42[0]) = v19 & 1;
    v22 = sub_1AACDFA18(v45, v13, v18, v19 & 1, v20, v21 & 1);
    v24 = v23;

    if (v12 >= 0xFFFFFFFE)
    {
      v25 = v24;
    }

    else
    {
      v25 = v22;
    }

    if (v12 >= 0xFFFFFFFE)
    {
      v24 = v22;
    }

    swift_beginAccess();
    v26 = *(v2 + 192);
    v27 = *(v2 + 200);
    if (v26 <= v25)
    {
      v26 = v25;
    }

    if (v27 <= v24)
    {
      v27 = v24;
    }

    *(v2 + 192) = v26;
    *(v2 + 200) = v27;
    if (v8 < 2)
    {
      v28 = *(v2 + 64);
      if (v28 >= 2)
      {
        v29 = v25;
      }

      else
      {
        v29 = v24;
      }

      v30 = v4[10];
      v31 = 4.0;
      if ((v4[13] & 1) == 0)
      {
        v31 = v4[12];
      }

      if (*(v4 + 88))
      {
        v30 = 4.0;
      }

      if (v28 < 2)
      {
        v30 = v31;
      }

      v32 = v29 + v30;
      if (*(v2 + 208) > v29 + v30)
      {
        v33 = *(v2 + 208);
      }

      else
      {
        v33 = v29 + v30;
      }

      swift_beginAccess();
      *(v2 + 208) = v33;
      v34 = *(v2 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v2 + 216);
      *(v2 + 216) = 0x8000000000000000;
      sub_1AACFD44C(v34, isUniquelyReferenced_nonNull_native, v32);
      *(v2 + 216) = v41;
      swift_endAccess();
    }

    result = sub_1AACFD7CC(v45);
    if (!(v9 & 1 | ((v11 & 1) == 0)))
    {
      v36 = *(v2 + 64);
      if (v36 >= 2)
      {
        v37 = v24;
      }

      else
      {
        v37 = v25;
      }

      v38 = v4[10];
      v39 = 4.0;
      if ((v4[13] & 1) == 0)
      {
        v39 = v4[12];
      }

      if (*(v4 + 88))
      {
        v38 = 4.0;
      }

      if (v36 >= 2)
      {
        v38 = v39;
      }

      v40 = v37 + v38;
      if (*(v2 + 232) > v40)
      {
        v40 = *(v2 + 232);
      }

      *(v2 + 232) = v40;
    }
  }

  return result;
}

void sub_1AACCB7CC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1AAF8DF14();
    if (v1 <= 0x3F)
    {
      sub_1AACBD4E4(319, &qword_1ED9B44C0, sub_1AACCF424, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AACCB8F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AACCB940(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AACCB990(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AACCBA7C()
{
  result = qword_1ED9B2CA8;
  if (!qword_1ED9B2CA8)
  {
    sub_1AACCF6E4();
    sub_1AACBE0F4();
    sub_1AACBDFE8(&qword_1ED9B2D60, &qword_1ED9B2D58, sub_1AACCBCB4, sub_1AACCD530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2CA8);
  }

  return result;
}

void sub_1AACCBB34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8DF74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AACCBB98()
{
  if (!qword_1ED9B2EA8)
  {
    sub_1AACCBD48(255, &qword_1ED9B2D58, sub_1AACCBCB4);
    sub_1AACBDFE8(&qword_1ED9B2D60, &qword_1ED9B2D58, sub_1AACCBCB4, sub_1AACCD530);
    v0 = sub_1AAF8DC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2EA8);
    }
  }
}

void sub_1AACCBC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AACCBCB4()
{
  if (!qword_1ED9B2E00)
  {
    sub_1AACCF78C();
    sub_1AACCD4DC(255, &qword_1ED9B2B90, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980AB8]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2E00);
    }
  }
}

void sub_1AACCBD48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1AACCBC4C(255, &qword_1ED9B2BF0, sub_1AACCC830, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v4 = sub_1AAF8DF74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AACCBE68()
{
  if (!qword_1ED9B2E28)
  {
    sub_1AACCBFE4(255, &qword_1ED9B2E30, sub_1AACCBF4C, sub_1AACCD114, MEMORY[0x1E697E830]);
    sub_1AACB65DC(255, &qword_1ED9B2D30, sub_1AACCD34C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B2E28);
    }
  }
}

void sub_1AACCBF4C()
{
  if (!qword_1ED9B2C20)
  {
    sub_1AACCC1B0();
    sub_1AACCC358(255, &qword_1ED9B2C38, sub_1AACCD07C, MEMORY[0x1E697F960]);
    v0 = sub_1AAF8E384();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2C20);
    }
  }
}

void sub_1AACCBFE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1AACCC068()
{
  if (!qword_1ED9B2DD0)
  {
    sub_1AACCF894();
    sub_1AACCC6D4(255, &qword_1ED9B2BC0, MEMORY[0x1E6980448]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2DD0);
    }
  }
}

void sub_1AACCC0EC()
{
  if (!qword_1ED9B2D70)
  {
    sub_1AACCBB34(255, &qword_1ED9B2E60, sub_1AACCC20C);
    sub_1AACCBC4C(255, &qword_1ED9B2F18, sub_1AACCCC54, MEMORY[0x1E6980F80], MEMORY[0x1E697DDA0]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2D70);
    }
  }
}

void sub_1AACCC1B0()
{
  if (!qword_1ED9B2CB0)
  {
    sub_1AACCC068();
    v0 = sub_1AAF8E384();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2CB0);
    }
  }
}

void sub_1AACCC20C()
{
  if (!qword_1ED9B3E40)
  {
    sub_1AACCC3C4();
    sub_1AACCC884(&qword_1ED9B2E40, sub_1AACCC3C4, sub_1AACCC904);
    v0 = type metadata accessor for ChartScrollView();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3E40);
    }
  }
}

void sub_1AACCC2DC()
{
  if (!qword_1ED9B2D10)
  {
    sub_1AACCBD48(255, &qword_1ED9B2D40, sub_1AACCC454);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2D10);
    }
  }
}

void sub_1AACCC358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E6981910], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AACCC3C4()
{
  if (!qword_1ED9B2E38)
  {
    sub_1AACCC358(255, &qword_1ED9B2C28, sub_1AACCC2A8, MEMORY[0x1E697F960]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2E38);
    }
  }
}

void sub_1AACCC49C()
{
  if (!qword_1ED9B2B60)
  {
    type metadata accessor for SgCanvasRenderer(255);
    sub_1AACCBC4C(255, &qword_1ED9B3748, sub_1AACCC5A8, &type metadata for SgAccessibilityRenderer, type metadata accessor for _LazyAccessibilityChildren);
    sub_1AACCC5FC(&qword_1ED9B6180, type metadata accessor for SgCanvasRenderer);
    sub_1AACCC644();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ED9B2B60);
    }
  }
}

unint64_t sub_1AACCC5A8()
{
  result = qword_1ED9B3890;
  if (!qword_1ED9B3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B3890);
  }

  return result;
}

uint64_t sub_1AACCC5FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AACCC644()
{
  result = qword_1ED9B3750[0];
  if (!qword_1ED9B3750[0])
  {
    sub_1AACCBC4C(255, &qword_1ED9B3748, sub_1AACCC5A8, &type metadata for SgAccessibilityRenderer, type metadata accessor for _LazyAccessibilityChildren);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B3750);
  }

  return result;
}

void sub_1AACCC6D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect(255);
    v7 = v6;
    v8 = sub_1AACCC7DC();
    v9 = a3(a1, v7, &type metadata for ChartScenegraphKey, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AACCC748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect(255);
    v7 = v6;
    v8 = sub_1AACCC7DC();
    v9 = a3(a1, v7, &type metadata for ChartScenegraphKey, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1AACCC7DC()
{
  result = qword_1ED9B3D38;
  if (!qword_1ED9B3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B3D38);
  }

  return result;
}

unint64_t sub_1AACCC830()
{
  result = qword_1ED9B2AE8;
  if (!qword_1ED9B2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2AE8);
  }

  return result;
}

uint64_t sub_1AACCC884(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AACCC904()
{
  result = qword_1ED9B2C30;
  if (!qword_1ED9B2C30)
  {
    sub_1AACCC358(255, &qword_1ED9B2C28, sub_1AACCC2A8, MEMORY[0x1E697F960]);
    sub_1AACCCA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2C30);
  }

  return result;
}

unint64_t sub_1AACCC9B4()
{
  result = qword_1ED9B2D18;
  if (!qword_1ED9B2D18)
  {
    sub_1AACCC2DC();
    sub_1AACBDFE8(&qword_1ED9B2D48, &qword_1ED9B2D40, sub_1AACCC454, sub_1AACCCAEC);
    sub_1AACCFAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2D18);
  }

  return result;
}

unint64_t sub_1AACCCA6C()
{
  result = qword_1ED9B2C50;
  if (!qword_1ED9B2C50)
  {
    sub_1AACCC2A8(255);
    sub_1AACCC9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2C50);
  }

  return result;
}

unint64_t sub_1AACCCAEC()
{
  result = qword_1ED9B2D90;
  if (!qword_1ED9B2D90)
  {
    sub_1AACCC454(255);
    type metadata accessor for SgCanvasRenderer(255);
    sub_1AACCBC4C(255, &qword_1ED9B3748, sub_1AACCC5A8, &type metadata for SgAccessibilityRenderer, type metadata accessor for _LazyAccessibilityChildren);
    sub_1AACCC5FC(&qword_1ED9B6180, type metadata accessor for SgCanvasRenderer);
    sub_1AACCC644();
    swift_getOpaqueTypeConformance2();
    sub_1AACCC5FC(&qword_1ED9B2BD0, sub_1AACCC7BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2D90);
  }

  return result;
}

unint64_t sub_1AACCCC54()
{
  result = qword_1ED9B2B80;
  if (!qword_1ED9B2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2B80);
  }

  return result;
}

unint64_t sub_1AACCCD10()
{
  result = qword_1ED9B2D28;
  if (!qword_1ED9B2D28)
  {
    sub_1AACCBDEC(255);
    sub_1AACCCE04(&qword_1ED9B2D78, sub_1AACCC0EC, sub_1AACCCE90, sub_1AACCFB08);
    sub_1AACCC5FC(&qword_1ED9B2BB0, sub_1AACCCCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2D28);
  }

  return result;
}

uint64_t sub_1AACCCE04(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AACCCE90()
{
  result = qword_1ED9B2E68;
  if (!qword_1ED9B2E68)
  {
    sub_1AACCBB34(255, &qword_1ED9B2E60, sub_1AACCC20C);
    sub_1AACCC5FC(&qword_1ED9B3E48, sub_1AACCC20C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2E68);
  }

  return result;
}

unint64_t sub_1AACCCF64()
{
  result = qword_1ED9B3730;
  if (!qword_1ED9B3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B3730);
  }

  return result;
}

unint64_t sub_1AACCCFB8()
{
  result = qword_1ED9B2C98;
  if (!qword_1ED9B2C98)
  {
    sub_1AACCBFE4(255, &qword_1ED9B2C90, sub_1AACCF9DC, sub_1AACCBDEC, MEMORY[0x1E697F960]);
    sub_1AACCFB98();
    sub_1AACCCD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2C98);
  }

  return result;
}

void sub_1AACCD0B0()
{
  if (!qword_1ED9B2E98)
  {
    sub_1AACCC2DC();
    sub_1AACCC9B4();
    v0 = sub_1AAF8DC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2E98);
    }
  }
}

void sub_1AACCD114()
{
  if (!qword_1ED9B2BB8)
  {
    sub_1AACB65DC(255, &qword_1ED9B2DE8, sub_1AACCD1CC, MEMORY[0x1E69E6720]);
    sub_1AACCC7DC();
    sub_1AACCD1F4();
    v0 = sub_1AAF8E714();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2BB8);
    }
  }
}

unint64_t sub_1AACCD1F4()
{
  result = qword_1ED9B2DE0;
  if (!qword_1ED9B2DE0)
  {
    sub_1AACB65DC(255, &qword_1ED9B2DE8, sub_1AACCD1CC, MEMORY[0x1E69E6720]);
    sub_1AACCD29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2DE0);
  }

  return result;
}

unint64_t sub_1AACCD29C()
{
  result = qword_1ED9B2DF8;
  if (!qword_1ED9B2DF8)
  {
    sub_1AACCD1CC(255);
    sub_1AACCC5FC(&qword_1ED9B2EC0, sub_1AACCFCBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2DF8);
  }

  return result;
}

void sub_1AACCD34C()
{
  if (!qword_1ED9B2D38)
  {
    sub_1AACCC358(255, &qword_1ED9B2D80, sub_1AACCD3E4, MEMORY[0x1E697E830]);
    sub_1AACCD460();
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2D38);
    }
  }
}

void sub_1AACCD3E4()
{
  if (!qword_1ED9B2B98)
  {
    sub_1AACCFD50(255, qword_1ED9B38B0, &type metadata for LegendRenderingContext, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF8E724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2B98);
    }
  }
}

void sub_1AACCD460()
{
  if (!qword_1ED9B2BA0)
  {
    sub_1AACCFD50(255, &unk_1ED9B41E0, &type metadata for LegendLayout, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF8E724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2BA0);
    }
  }
}

void sub_1AACCD4DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1AACCD578()
{
  result = qword_1ED9B5530;
  if (!qword_1ED9B5530)
  {
    sub_1AACCD4DC(255, &qword_1ED9B2B90, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980AB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5530);
  }

  return result;
}

double sub_1AACCD5FC()
{
  byte_1ED9C38C8 = sub_1AAF8E784();
  qword_1ED9C38D0 = 0;
  byte_1ED9C38D8 = 1;
  qword_1ED9C38E0 = 0;
  byte_1ED9C38E8 = 1;
  result = 0.0;
  unk_1ED9C38F0 = 0u;
  unk_1ED9C3900 = 0u;
  qword_1ED9C3910 = 0;
  return result;
}

void sub_1AACCD648()
{
  sub_1AACC6DA0(319, &qword_1ED9B5518, MEMORY[0x1E6980F98], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AAF8DCD4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1AACCD74C(double a1, double a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v6 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1AAEB92A4;
  *(v7 + 24) = v5;
  v8 = *(v6 + 64);
  *(v6 + 64) = sub_1AACD8830;
  *(v6 + 72) = v7;

  sub_1AACB4A98(v8);

  swift_beginAccess();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 56) = 0;
  *(v6 + 16) = 1;
  return v6;
}

void sub_1AACCD858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AACCD8AC()
{
  sub_1AACCD90C();
  result = sub_1AAF8FE64();
  qword_1ED9C36C8 = result;
  return result;
}

unint64_t sub_1AACCD90C()
{
  result = qword_1ED9B54C8;
  if (!qword_1ED9B54C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9B54C8);
  }

  return result;
}

uint64_t sub_1AACCD958()
{
  type metadata accessor for ChartModel();
  swift_allocObject();
  return sub_1AACBC7D4();
}

uint64_t sub_1AACCD990@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

_BYTE *sub_1AACCD9C0(char *a1)
{
  v21 = MEMORY[0x1E697E7E0];
  sub_1AACCD858(0, &qword_1ED9B2E78, MEMORY[0x1E697E7E0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1AAF8DF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(v7 + 32);
  v12(v11 + v10, v9, v6);
  v13 = *(v7 + 56);
  v13(v1 + *(*v1 + 256), 1, 1, v6);
  v14 = (v1 + *(*v1 + 264));
  *v14 = 0;
  v14[1] = 0;
  v15 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1AAEB9210;
  *(v16 + 24) = v11;
  v17 = &v15[*(*v15 + 264)];
  v18 = *v17;
  *v17 = sub_1AACFEA94;
  v17[1] = v16;

  sub_1AACB4A98(v18);

  v12(v5, a1, v6);
  v13(v5, 0, 1, v6);
  v19 = *(*v15 + 256);
  swift_beginAccess();

  sub_1AACBD164(v5, &v15[v19], &qword_1ED9B2E78, v21);
  swift_endAccess();
  v15[16] = 1;

  return v15;
}

_BYTE *sub_1AACCDCCC(char *a1)
{
  v21 = MEMORY[0x1E6969AE8];
  sub_1AACCD858(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1AAF8CBA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(v7 + 32);
  v12(v11 + v10, v9, v6);
  v13 = *(v7 + 56);
  v13(v1 + *(*v1 + 256), 1, 1, v6);
  v14 = (v1 + *(*v1 + 264));
  *v14 = 0;
  v14[1] = 0;
  v15 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1AAEB9150;
  *(v16 + 24) = v11;
  v17 = &v15[*(*v15 + 264)];
  v18 = *v17;
  *v17 = sub_1AACFEA94;
  v17[1] = v16;

  sub_1AACB4A98(v18);

  v12(v5, a1, v6);
  v13(v5, 0, 1, v6);
  v19 = *(*v15 + 256);
  swift_beginAccess();

  sub_1AACBD164(v5, &v15[v19], &qword_1ED9B6B90, v21);
  swift_endAccess();
  v15[16] = 1;

  return v15;
}

unint64_t sub_1AACCDFD8(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  v4 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1AAEB9144;
  *(v5 + 24) = v3;
  v6 = *(v4 + 56);
  *(v4 + 56) = sub_1AACD8830;
  *(v4 + 64) = v5;

  sub_1AACB4A98(v6);

  swift_beginAccess();
  *(v4 + 40) = a1;
  *(v4 + 48) = 0;
  *(v4 + 16) = 1;
  return v4;
}

unint64_t sub_1AACCE0D0(uint64_t a1)
{
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = 0;

  v3 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1AAEB912C;
  *(v4 + 24) = a1;
  v5 = *(v3 + 48);
  *(v3 + 48) = sub_1AACD8830;
  *(v3 + 56) = v4;

  sub_1AACB4A98(v5);

  swift_beginAccess();
  *(v3 + 40) = a1;

  *(v3 + 16) = 1;

  return v3;
}

void *sub_1AACCE1B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AADFABBC();
  v3 = sub_1AAF903A4();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1AACE1760(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = result;
    v12[1] = v5;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v17 = *(v11 - 1);
    v18 = *v11;

    v9 = sub_1AACE1760(v4);
    v11 = v16;
    v5 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AACCE2F0(uint64_t a1)
{
  sub_1AADF9D6C(0, &qword_1ED9B3D80, type metadata accessor for ChartContentRenderContext.Bins);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1AACF59C0(0, &qword_1ED9B0C58, type metadata accessor for ChartContentRenderContext.Bins, sub_1AACFDD38);
    v8 = sub_1AAF903A4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_1AADFB524(v10, v6, &qword_1ED9B3D80, type metadata accessor for ChartContentRenderContext.Bins);
      v12 = *v6;
      result = sub_1AACE1760(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ChartContentRenderContext.Bins(0);
      result = sub_1AADFA250(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for ChartContentRenderContext.Bins);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AACCE520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = *a1;
  memcpy(__dst, *(a1 + 8), sizeof(__dst));
  v9 = *(a1 + 24);
  v10 = **(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v220 = *v11;
  v13 = v11[4];
  v15 = v11[1];
  v14 = v11[2];
  v223 = v11[3];
  v224 = v13;
  v221 = v15;
  v222 = v14;
  v17 = v11[6];
  v16 = v11[7];
  v18 = v11[5];
  v228 = *(v11 + 128);
  v226 = v17;
  v227 = v16;
  v225 = v18;
  v19 = v12[3];
  v20 = v12[4];
  v21 = v12[5];
  v235 = *(v12 + 96);
  v233 = v20;
  v234 = v21;
  v23 = *v12;
  v22 = v12[1];
  v231 = v12[2];
  v232 = v19;
  v229 = v23;
  v230 = v22;
  sub_1AACDAF30(v8, &v213, qword_1ED9B3E60, &type metadata for AnyChartContent);
  if (!*(&v214 + 1))
  {
    result = sub_1AACDD030(&v213, qword_1ED9B3E60, &type metadata for AnyChartContent);
    *a4 = 0xE000000000000000;
    return result;
  }

  v189 = v10;
  v190 = a3;
  v191 = a4;
  v216 = v213;
  v217 = v214;
  v218 = v215;
  v24 = *__dst;
  v25 = *&__dst[8];
  v26 = *&__dst[16];
  v27 = *&__dst[24];
  v188 = *&__dst[32];
  v28 = *&__dst[48];
  v29 = *&__dst[56];
  v30 = *&__dst[64];
  v31 = *&__dst[72];
  sub_1AACDAFB0(v9, v210, sub_1AACC9CF4);
  type metadata accessor for ChartContentRenderContext(0);
  v32 = swift_allocObject();
  sub_1AACDAD50(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment);
  v33 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineSeriesContext;
  sub_1AACDAFB0(__dst, v209, sub_1AACC9E68);
  v34 = MEMORY[0x1E69E7CC0];
  *(v32 + v33) = sub_1AACDB374(MEMORY[0x1E69E7CC0]);
  v35 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_areaSeriesContext;
  *(v32 + v35) = sub_1AACDB530(v34);
  v36 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0u;
  *(v36 + 64) = 0u;
  *(v36 + 80) = 0u;
  *(v36 + 96) = 0;
  *(v36 + 104) = -1;
  v37 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0u;
  *(v37 + 64) = 0u;
  *(v37 + 80) = 0u;
  *(v37 + 96) = 0;
  *(v37 + 104) = -1;
  v38 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0u;
  *(v38 + 64) = 0u;
  *(v38 + 80) = 0u;
  *(v38 + 96) = 0;
  *(v38 + 104) = -1;
  v39 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale;
  *(v39 + 96) = 0u;
  *(v39 + 112) = 0u;
  *(v39 + 64) = 0u;
  *(v39 + 80) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 128) = -1;
  v40 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale;
  sub_1AACDB97C(v211);
  v41 = v211[3];
  *(v40 + 32) = v211[2];
  *(v40 + 48) = v41;
  *(v40 + 128) = v212;
  v42 = v211[7];
  *(v40 + 96) = v211[6];
  *(v40 + 112) = v42;
  v43 = v211[5];
  *(v40 + 64) = v211[4];
  *(v40 + 80) = v43;
  v44 = v211[1];
  *v40 = v211[0];
  *(v40 + 16) = v44;
  v45 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0u;
  *(v45 + 48) = 0u;
  *(v45 + 64) = 0u;
  *(v45 + 80) = 0u;
  *(v45 + 96) = -1;
  v46 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_accessibilityElementBins;
  *(v32 + v46) = sub_1AACCE2F0(v34);
  *(v32 + 16) = a2;
  sub_1AACDAFB0(__dst, v209, sub_1AACC9E68);

  sub_1AACDD030(&__dst[80], qword_1ED9B3CE8, &type metadata for SubPositionContext);
  sub_1AACDB93C(v30);

  *(v32 + 24) = 0;
  *(v32 + 32) = v24;
  sub_1AACDAFB0(__dst, v209, sub_1AACC9E68);
  sub_1AACDD030(&__dst[80], qword_1ED9B3CE8, &type metadata for SubPositionContext);
  sub_1AACDB93C(v30);

  *(v32 + 40) = 0;
  *(v32 + 48) = v25;
  sub_1AACDAFB0(__dst, v209, sub_1AACC9E68);
  sub_1AACDD030(&__dst[80], qword_1ED9B3CE8, &type metadata for SubPositionContext);
  sub_1AACDB93C(v30);

  *(v32 + 344) = v26;
  sub_1AACDAFB0(__dst, v209, sub_1AACC9E68);
  sub_1AACDD030(&__dst[80], qword_1ED9B3CE8, &type metadata for SubPositionContext);
  sub_1AACDB93C(v30);
  *(v32 + 56) = v27;
  sub_1AACDAFB0(__dst, v209, sub_1AACC9E68);
  sub_1AACDD030(&__dst[80], qword_1ED9B3CE8, &type metadata for SubPositionContext);
  sub_1AACDB93C(v30);

  *(v32 + 352) = v188;
  *(v32 + 368) = v28;
  *(v32 + 376) = v29;
  sub_1AACDAFB0(__dst, v209, sub_1AACC9E68);
  sub_1AACDD030(&__dst[80], qword_1ED9B3CE8, &type metadata for SubPositionContext);

  if (v30)
  {
    v47 = v30;
    v48 = v31;
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
    v47 = sub_1AACB2AB8(MEMORY[0x1E69E7CC0]);
    v48 = sub_1AACB2AB8(v50);
  }

  *(v32 + 64) = v47;
  *(v32 + 72) = v48;
  sub_1AACDB93C(v30);

  memcpy(v209, &__dst[80], 0x102uLL);
  v51 = sub_1AACCF3E0(v209);
  v52 = 0uLL;
  if (v51 == 1)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v60 = 2;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
  }

  else
  {
    v67 = *&__dst[80];
    v68 = *&__dst[96];
    v69 = *&__dst[112];
    v70 = *&__dst[128];
    v71 = *&__dst[144];
    v53 = __dst[160];
    v62 = *&__dst[168];
    v63 = *&__dst[184];
    v64 = *&__dst[200];
    v65 = *&__dst[216];
    v66 = *&__dst[232];
    v54 = __dst[248];
    v56 = *&__dst[256];
    v57 = *&__dst[272];
    v58 = *&__dst[288];
    v59 = *&__dst[304];
    v61 = *&__dst[320];
    v55 = __dst[336];
    v60 = __dst[337];
  }

  *(v32 + 80) = v67;
  *(v32 + 96) = v68;
  *(v32 + 112) = v69;
  *(v32 + 128) = v70;
  *(v32 + 144) = v71;
  *(v32 + 160) = v53;
  *(v32 + 168) = v62;
  *(v32 + 184) = v63;
  *(v32 + 200) = v64;
  *(v32 + 216) = v65;
  *(v32 + 232) = v66;
  *(v32 + 248) = v54;
  *(v32 + 256) = v56;
  *(v32 + 272) = v57;
  *(v32 + 288) = v58;
  *(v32 + 304) = v59;
  *(v32 + 320) = v61;
  *(v32 + 336) = v55;
  *(v32 + 337) = v60;
  v72 = *(v189 + 16);
  if (v72)
  {
    v73 = sub_1AACB6398(0);
    if (v74)
    {
      v75 = (*(v189 + 56) + 112 * v73);
      v77 = v75[1];
      v76 = v75[2];
      v197 = *v75;
      v198 = v77;
      v199 = v76;
      v78 = v75[3];
      v79 = v75[4];
      v80 = v75[5];
      *&v202[9] = *(v75 + 89);
      v201 = v79;
      *v202 = v80;
      v200 = v78;
      sub_1AACDAFB0(&v197, v193, sub_1AACCF364);
      v52 = v197;
      v81 = v198;
      v82 = v199;
      v83 = v200;
      v84 = v201;
      v85 = *v202;
      v72 = *&v202[16];
      v86 = v202[24];
    }

    else
    {
      v72 = 0;
      v86 = -1;
      v81 = 0uLL;
      v82 = 0uLL;
      v83 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      v52 = 0uLL;
    }
  }

  else
  {
    v86 = -1;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v85 = 0uLL;
  }

  v87 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale;
  *v87 = v52;
  *(v87 + 16) = v81;
  *(v87 + 32) = v82;
  *(v87 + 48) = v83;
  *(v87 + 64) = v84;
  *(v87 + 80) = v85;
  *(v87 + 96) = v72;
  *(v87 + 104) = v86;
  v88 = *(v189 + 16);
  v89 = 0uLL;
  if (v88)
  {
    v90 = sub_1AACB6398(1u);
    if (v91)
    {
      v92 = (*(v189 + 56) + 112 * v90);
      v94 = v92[1];
      v93 = v92[2];
      v197 = *v92;
      v198 = v94;
      v199 = v93;
      v95 = v92[3];
      v96 = v92[4];
      v97 = v92[5];
      *&v202[9] = *(v92 + 89);
      v201 = v96;
      *v202 = v97;
      v200 = v95;
      sub_1AACDAFB0(&v197, v193, sub_1AACCF364);
      v98 = v197;
      v99 = v198;
      v100 = v199;
      v101 = v200;
      v102 = v201;
      v103 = *v202;
      v88 = *&v202[16];
      v104 = v202[24];
    }

    else
    {
      v88 = 0;
      v104 = -1;
      v98 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
    }

    v89 = 0uLL;
  }

  else
  {
    v104 = -1;
    v98 = 0uLL;
    v99 = 0uLL;
    v100 = 0uLL;
    v101 = 0uLL;
    v102 = 0uLL;
    v103 = 0uLL;
  }

  v105 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale;
  *v105 = v98;
  *(v105 + 16) = v99;
  *(v105 + 32) = v100;
  *(v105 + 48) = v101;
  *(v105 + 64) = v102;
  *(v105 + 80) = v103;
  *(v105 + 96) = v88;
  *(v105 + 104) = v104;
  v106 = *(v189 + 16);
  if (v106)
  {
    v107 = sub_1AACB6398(3u);
    if (v108)
    {
      v109 = (*(v189 + 56) + 112 * v107);
      v111 = v109[1];
      v110 = v109[2];
      v197 = *v109;
      v198 = v111;
      v199 = v110;
      v112 = v109[3];
      v113 = v109[4];
      v114 = v109[5];
      *&v202[9] = *(v109 + 89);
      v201 = v113;
      *v202 = v114;
      v200 = v112;
      sub_1AACDAFB0(&v197, v193, sub_1AACCF364);
      v89 = v197;
      v115 = v198;
      v116 = v199;
      v117 = v200;
      v118 = v201;
      v119 = *v202;
      v106 = *&v202[16];
      v120 = v202[24];
    }

    else
    {
      v106 = 0;
      v120 = -1;
      v115 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      v89 = 0uLL;
    }
  }

  else
  {
    v120 = -1;
    v115 = 0uLL;
    v116 = 0uLL;
    v117 = 0uLL;
    v118 = 0uLL;
    v119 = 0uLL;
  }

  v121 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale;
  v122 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 64);
  v123 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 80);
  v124 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 32);
  v207[3] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 48);
  v207[4] = v122;
  v208[0] = v123;
  *(v208 + 9) = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 89);
  v125 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 16);
  v207[0] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale);
  v207[1] = v125;
  v207[2] = v124;
  *v121 = v89;
  *(v121 + 16) = v115;
  *(v121 + 32) = v116;
  *(v121 + 48) = v117;
  *(v121 + 64) = v118;
  *(v121 + 80) = v119;
  *(v121 + 96) = v106;
  *(v121 + 104) = v120;
  sub_1AACD8D78(v207, sub_1AACCF364);
  v126 = *(v189 + 16);
  if (v126)
  {
    v127 = sub_1AACB6398(4u);
    if (v128)
    {
      v129 = (*(v189 + 56) + 112 * v127);
      v131 = v129[1];
      v130 = v129[2];
      v197 = *v129;
      v198 = v131;
      v199 = v130;
      v132 = v129[3];
      v133 = v129[4];
      v134 = v129[5];
      *&v202[9] = *(v129 + 89);
      v201 = v133;
      *v202 = v134;
      v200 = v132;
      sub_1AACDAFB0(&v197, v193, sub_1AACCF364);
      v135 = v197;
      v136 = v198;
      v137 = v199;
      v138 = v200;
      v139 = v201;
      v140 = *v202;
      v126 = *&v202[16];
      v141 = v202[24];
      goto LABEL_30;
    }

    v126 = 0;
  }

  v141 = -1;
  v135 = 0uLL;
  v136 = 0uLL;
  v137 = 0uLL;
  v138 = 0uLL;
  v139 = 0uLL;
  v140 = 0uLL;
LABEL_30:
  v142 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale;
  v143 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 80);
  v205[4] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 64);
  v206[0] = v143;
  *(v206 + 9) = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 89);
  v144 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 16);
  v205[0] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale);
  v205[1] = v144;
  v145 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 48);
  v205[2] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 32);
  v205[3] = v145;
  *v142 = v135;
  *(v142 + 16) = v136;
  *(v142 + 32) = v137;
  *(v142 + 48) = v138;
  *(v142 + 64) = v139;
  *(v142 + 80) = v140;
  *(v142 + 96) = v126;
  *(v142 + 104) = v141;
  sub_1AACD8D78(v205, sub_1AACCF364);
  v146 = *(v189 + 16);
  if (!v146)
  {
LABEL_34:
    v161 = -1;
    v155 = 0uLL;
    v157 = 0uLL;
    v158 = 0uLL;
    v159 = 0uLL;
    v160 = 0uLL;
    v156 = 0uLL;
    goto LABEL_35;
  }

  v147 = sub_1AACB6398(7u);
  if ((v148 & 1) == 0)
  {
    v146 = 0;
    goto LABEL_34;
  }

  v149 = (*(v189 + 56) + 112 * v147);
  v151 = v149[1];
  v150 = v149[2];
  v197 = *v149;
  v198 = v151;
  v199 = v150;
  v152 = v149[3];
  v153 = v149[4];
  v154 = v149[5];
  *&v202[9] = *(v149 + 89);
  v201 = v153;
  *v202 = v154;
  v200 = v152;
  sub_1AACDAFB0(&v197, v193, sub_1AACCF364);
  v156 = v197;
  v155 = v198;
  v157 = v199;
  v158 = v200;
  v159 = v201;
  v160 = *v202;
  v146 = *&v202[16];
  v161 = v202[24];
LABEL_35:
  v162 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale;
  v163 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 80);
  v195[4] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 64);
  v196[0] = v163;
  *(v196 + 9) = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 89);
  v164 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 16);
  v195[0] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale);
  v195[1] = v164;
  v165 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 48);
  v195[2] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 32);
  v195[3] = v165;
  *v162 = v156;
  *(v162 + 16) = v155;
  *(v162 + 32) = v157;
  *(v162 + 48) = v158;
  *(v162 + 64) = v159;
  *(v162 + 80) = v160;
  *(v162 + 96) = v146;
  *(v162 + 104) = v161;
  sub_1AACD8D78(v195, sub_1AACCF364);
  v166 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale;
  swift_beginAccess();
  sub_1AACDB2C8(v210, v32 + v166);
  swift_endAccess();
  v167 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale;
  v168 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 112);
  *&v202[16] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 96);
  v203 = v168;
  v204 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 128);
  v169 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 48);
  v199 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 32);
  v200 = v169;
  v170 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 80);
  v201 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 64);
  *v202 = v170;
  v171 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 16);
  v197 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale);
  v198 = v171;
  v172 = v227;
  *(v167 + 96) = v226;
  *(v167 + 112) = v172;
  *(v167 + 128) = v228;
  v173 = v223;
  *(v167 + 32) = v222;
  *(v167 + 48) = v173;
  v174 = v225;
  *(v167 + 64) = v224;
  *(v167 + 80) = v174;
  v175 = v221;
  *v167 = v220;
  *(v167 + 16) = v175;
  sub_1AACDAFB0(&v220, v193, sub_1AACC9D70);
  sub_1AACD8D78(&v197, sub_1AACC9D70);
  v176 = v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale;
  v177 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 80);
  v193[4] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 64);
  v193[5] = v177;
  v194 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 96);
  v178 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 16);
  v193[0] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale);
  v193[1] = v178;
  v179 = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 48);
  v193[2] = *(v32 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 32);
  v193[3] = v179;
  v180 = v230;
  *v176 = v229;
  *(v176 + 16) = v180;
  v181 = v231;
  v182 = v232;
  v183 = v233;
  v184 = v234;
  *(v176 + 96) = v235;
  *(v176 + 64) = v183;
  *(v176 + 80) = v184;
  *(v176 + 32) = v181;
  *(v176 + 48) = v182;
  sub_1AACDAFB0(&v229, v192, sub_1AACC9DEC);
  sub_1AACD8D78(v193, sub_1AACC9DEC);
  v185 = *(&v217 + 1);
  v186 = v218;
  v187 = sub_1AACBB42C(&v216, *(&v217 + 1));

  sub_1AACDB194(v187, v190, v32, v185, v186);

  result = sub_1AACE3E38(&v216);
  *v191 = v192[0];
  return result;
}

uint64_t sub_1AACCF1D4(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1AACCF364()
{
  if (!qword_1ED9B3E30)
  {
    sub_1AACCFD50(255, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3E30);
    }
  }
}

uint64_t sub_1AACCF3E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AACCF404(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1AACCF488()
{
  sub_1AACCB8F0(319, &qword_1ED9B37F0, &type metadata for ValueAlignedLimitBehavior.Role, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AACCF570(319, &qword_1ED9B2F30, sub_1AACCB9E0, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AACCF570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AACCF5F4()
{
  sub_1AACBBBA0(319, &qword_1ED9B2F48, &type metadata for ChartAxisStyleConfigurations, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_1AAF8DF14();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ChartModel.Scenegraph();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AACCF6E4()
{
  if (!qword_1ED9B2CA0)
  {
    sub_1AACCBB34(255, &qword_1ED9B2DC0, sub_1AACCBB98);
    sub_1AACCBD48(255, &qword_1ED9B2D58, sub_1AACCBCB4);
    v0 = sub_1AAF8E384();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2CA0);
    }
  }
}

void sub_1AACCF78C()
{
  if (!qword_1ED9B2ED8)
  {
    sub_1AACCBC4C(255, &qword_1ED9B2F08, sub_1AACCF840, &type metadata for ChartLayout, MEMORY[0x1E697DDC0]);
    sub_1AACCBE34(255);
    sub_1AACCFDA0();
    v0 = sub_1AAF8DBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2ED8);
    }
  }
}

unint64_t sub_1AACCF840()
{
  result = qword_1ED9B4258[0];
  if (!qword_1ED9B4258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B4258);
  }

  return result;
}

void sub_1AACCF894()
{
  if (!qword_1ED9B2E88)
  {
    sub_1AACCBFE4(255, &qword_1ED9B2C90, sub_1AACCF9DC, sub_1AACCBDEC, MEMORY[0x1E697F960]);
    sub_1AACCCFB8();
    v0 = sub_1AAF8DC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2E88);
    }
  }
}

void sub_1AACCF93C()
{
  if (!qword_1ED9B2B68)
  {
    sub_1AACCBDEC(255);
    sub_1AACCCD10();
    sub_1AACCCF64();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ED9B2B68);
    }
  }
}

unint64_t sub_1AACCFA24()
{
  result = qword_1ED9B5550;
  if (!qword_1ED9B5550)
  {
    sub_1AACCBC4C(255, &qword_1ED9B2BF0, sub_1AACCC830, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5550);
  }

  return result;
}

unint64_t sub_1AACCFAB4()
{
  result = qword_1ED9B3640[0];
  if (!qword_1ED9B3640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B3640);
  }

  return result;
}

unint64_t sub_1AACCFB08()
{
  result = qword_1ED9B5590;
  if (!qword_1ED9B5590)
  {
    sub_1AACCBC4C(255, &qword_1ED9B2F18, sub_1AACCCC54, MEMORY[0x1E6980F80], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5590);
  }

  return result;
}

unint64_t sub_1AACCFB98()
{
  result = qword_1ED9B2DA0;
  if (!qword_1ED9B2DA0)
  {
    sub_1AACCF9DC(255);
    sub_1AACCBDEC(255);
    sub_1AACCCD10();
    sub_1AACCCF64();
    swift_getOpaqueTypeConformance2();
    sub_1AACCC5FC(&qword_1ED9B3720, type metadata accessor for AutomaticScrollLimitModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2DA0);
  }

  return result;
}

void sub_1AACCFCBC()
{
  if (!qword_1ED9B2EB8)
  {
    type metadata accessor for ChartSeparateAxesContent(255);
    sub_1AACCC5FC(&qword_1ED9B3880, type metadata accessor for ChartSeparateAxesContent);
    v0 = sub_1AAF8DC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2EB8);
    }
  }
}

void sub_1AACCFD50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}