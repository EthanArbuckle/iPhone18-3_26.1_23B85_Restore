_OWORD *sub_29D62B790(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_29D5E1B70(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_29D62B938();
      v8 = v16;
      goto LABEL_8;
    }

    sub_29D62B238(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_29D5E1B70(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_29D6606C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_29D5DF1C4(v20);

    return sub_29D5E20A8(a1, v20);
  }

  else
  {
    sub_29D62B8D0(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_29D62B8D0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_29D5E20A8(a3, (a4[7] + 32 * a1));
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

id sub_29D62B938()
{
  v1 = v0;
  sub_29D62F860();
  v2 = *v0;
  v3 = sub_29D6605E4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_29D5E0D1C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_29D5E20A8(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_29D62BAAC()
{
  v1 = v0;
  sub_29D63032C();
  v2 = *v0;
  v3 = sub_29D6605E4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
        result = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
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

uint64_t sub_29D62BC08(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x29EDCA190];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x29EDCA190] + 32;
    v6 = (result + 64);
    v26 = *(result + 16);
    while (1)
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 8);
      v10 = *(v6 - 1);
      v11 = *v6;
      if (!v3)
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v27 = *(v6 - 8);
        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        v28 = v2;
        sub_29D62C43C(0, &qword_2A17ACF08, sub_29D62C4A0, MEMORY[0x29EDC9E90]);
        v2 = swift_allocObject();
        v15 = j__malloc_size(v2);
        v16 = v28;
        v17 = (v15 - 32) / 48;
        v2[2] = v14;
        v2[3] = 2 * v17;
        v18 = (v2 + 4);
        v19 = v28[3] >> 1;
        v20 = 6 * v19;
        if (v28[2])
        {
          if (v2 != v28 || v18 >= &v28[v20 + 4])
          {
            memmove(v2 + 4, v28 + 4, 48 * v19);
            v16 = v28;
          }

          v16[2] = 0;
        }

        v5 = v18 + v20 * 8;
        v3 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v1 = v26;
        v9 = v27;
      }

      v22 = __OFSUB__(v3--, 1);
      if (v22)
      {
        break;
      }

      v6 += 20;
      *v5 = v4;
      *(v5 + 8) = v7;
      *(v5 + 16) = v8;
      *(v5 + 24) = v9;
      *(v5 + 32) = v10;
      *(v5 + 40) = v11;
      v5 += 48;
      if (v1 == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v23 = v2[3];
  if (v23 < 2)
  {
    return v2;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v3);
  v25 = v24 - v3;
  if (!v22)
  {
    v2[2] = v25;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_29D62BDF0(uint64_t a1)
{
  sub_29D62FA90();
  v46 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v41 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x29EDCA190];
  if (v12)
  {
    v14 = *(v3 + 80);
    v43 = v14;
    v44 = (v14 + 32) & ~v14;
    v15 = MEMORY[0x29EDCA190] + v44;
    v16 = 0;
    v17 = 0;
    v18 = *(type metadata accessor for AudiogramLongitudinalPDFChartData() - 8);
    v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v45 = *(v18 + 72);
    v20 = v13;
    v41 = v12;
    v42 = v3;
    while (1)
    {
      v22 = *(v46 + 48);
      *v7 = v16;
      sub_29D62F768(v19, v7 + v22, type metadata accessor for AudiogramLongitudinalPDFChartData);
      sub_29D6302C8(v7, v11);
      if (v17)
      {
        v13 = v20;
        v21 = __OFSUB__(v17--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v20[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v24 = v11;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        sub_29D62C43C(0, &qword_2A17ACFB8, sub_29D62FA90, MEMORY[0x29EDC9E90]);
        v27 = *(v3 + 72);
        v28 = v44;
        v13 = swift_allocObject();
        v29 = j__malloc_size(v13);
        if (!v27)
        {
          goto LABEL_34;
        }

        v30 = v29 - v28;
        if (v29 - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_35;
        }

        v32 = v30 / v27;
        v13[2] = v26;
        v13[3] = 2 * (v30 / v27);
        v33 = v13 + v28;
        v34 = v20[3] >> 1;
        v35 = v34 * v27;
        if (v20[2])
        {
          if (v13 < v20 || v33 >= v20 + v44 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20[2] = 0;
        }

        v15 = &v33[v35];
        v37 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        v11 = v24;
        v12 = v41;
        v3 = v42;
        v21 = __OFSUB__(v37, 1);
        v17 = v37 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v16;
      sub_29D6302C8(v11, v15);
      v15 += *(v3 + 72);
      v19 += v45;
      v20 = v13;
      if (v12 == v16)
      {
        goto LABEL_29;
      }
    }
  }

  v17 = 0;
LABEL_29:
  v38 = v13[3];
  if (v38 >= 2)
  {
    v39 = v38 >> 1;
    v21 = __OFSUB__(v39, v17);
    v40 = v39 - v17;
    if (v21)
    {
      goto LABEL_36;
    }

    v13[2] = v40;
  }
}

id sub_29D62C128(void *a1)
{
  result = [a1 metadata];
  if (result)
  {
    v2 = result;
    v3 = sub_29D65FEB4();

    v4 = *MEMORY[0x29EDBAF28];
    v5 = sub_29D65FF64();
    if (*(v3 + 16))
    {
      v7 = sub_29D5E1AF8(v5, v6);
      v9 = v8;

      if (v9)
      {
        sub_29D5E0D1C(*(v3 + 56) + 32 * v7, v11);

        if (swift_dynamicCast())
        {
          return v10;
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_29D62C2B0()
{
  if (!qword_2A17ACC48)
  {
    sub_29D62C324();
    sub_29D62CD58();
    v0 = sub_29D65F454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACC48);
    }
  }
}

void sub_29D62C324()
{
  if (!qword_2A17ACC50)
  {
    sub_29D62C408(255);
    sub_29D62FAFC(255, &qword_2A17ACC68, sub_29D62C504);
    sub_29D62B1D4(&qword_2A17ACCE0, sub_29D62C408);
    v0 = sub_29D65FC54();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACC50);
    }
  }
}

void sub_29D62C43C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D62C4A0()
{
  if (!qword_2A17ACC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACC60);
    }
  }
}

void sub_29D62C538()
{
  if (!qword_2A17ACC78)
  {
    sub_29D62C5B8();
    sub_29D62C7F4();
    sub_29D62CBE0(255);
    v0 = sub_29D65F454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACC78);
    }
  }
}

void sub_29D62C5B8()
{
  if (!qword_2A17ACC80)
  {
    sub_29D62C6FC();
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACC80);
    }
  }
}

void sub_29D62C6FC()
{
  if (!qword_2A17ACC88)
  {
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACC88);
    }
  }
}

void sub_29D62C7F4()
{
  if (!qword_2A17ACC98)
  {
    sub_29D62C954();
    sub_29D62DD10(255, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62CAC4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACC98);
    }
  }
}

void sub_29D62C954()
{
  if (!qword_2A17ACCA0)
  {
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACCA0);
    }
  }
}

void sub_29D62CA4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29D62CAC4()
{
  result = qword_2A17ACCC0;
  if (!qword_2A17ACCC0)
  {
    v1 = MEMORY[0x29EDBC400];
    sub_29D62DD10(255, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
    sub_29D62CB7C(&qword_2A17ACCC8, &qword_2A17ACCB8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACCC0);
  }

  return result;
}

uint64_t sub_29D62CB7C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D62DE00(255, a2, a3, MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D62CC14()
{
  if (!qword_2A17ACCD8)
  {
    sub_29D62C954();
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACCD8);
    }
  }
}

void sub_29D62CD58()
{
  if (!qword_2A17ACCE8)
  {
    sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8]);
    sub_29D65F6B4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACCE8);
    }
  }
}

unint64_t sub_29D62CE50()
{
  result = qword_2A17ACCF8;
  if (!qword_2A17ACCF8)
  {
    sub_29D62C2B0();
    sub_29D62D0A0(&qword_2A17ACD00, sub_29D62C324, sub_29D62CFC0);
    sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8]);
    sub_29D65F6B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACCF8);
  }

  return result;
}

unint64_t sub_29D62CFC0()
{
  result = qword_2A17ACD08;
  if (!qword_2A17ACD08)
  {
    sub_29D62FAFC(255, &qword_2A17ACC68, sub_29D62C504);
    sub_29D62D0A0(&qword_2A17ACD10, sub_29D62C504, sub_29D62D110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD08);
  }

  return result;
}

uint64_t sub_29D62D0A0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_29D62D110()
{
  result = qword_2A17ACD18;
  if (!qword_2A17ACD18)
  {
    sub_29D62C538();
    sub_29D62C6FC();
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62C954();
    sub_29D62DD10(255, &qword_2A17ACCB0, &qword_2A17ACCB8, MEMORY[0x29EDBC400]);
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62CAC4();
    swift_getOpaqueTypeConformance2();
    sub_29D62D380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD18);
  }

  return result;
}

unint64_t sub_29D62D380()
{
  result = qword_2A17ACD20;
  if (!qword_2A17ACD20)
  {
    sub_29D62CBE0(255);
    sub_29D62C954();
    sub_29D62CA4C(255, &qword_2A17ACCA8, MEMORY[0x29EDB8708]);
    sub_29D65F724();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD20);
  }

  return result;
}

void sub_29D62D51C()
{
  if (!qword_2A17ACD30)
  {
    sub_29D62D4E8(255);
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D5EC();
    sub_29D62D6CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACD30);
    }
  }
}

unint64_t sub_29D62D5EC()
{
  result = qword_2A17ACD40;
  if (!qword_2A17ACD40)
  {
    sub_29D62D4E8(255);
    sub_29D62B1D4(&qword_2A17ACD48, sub_29D62C268);
    sub_29D62B1D4(&qword_2A17ACD50, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD40);
  }

  return result;
}

unint64_t sub_29D62D6CC()
{
  result = qword_2A17ACD58;
  if (!qword_2A17ACD58)
  {
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACD58);
  }

  return result;
}

void sub_29D62D768()
{
  if (!qword_2A17ACD60)
  {
    sub_29D62D51C();
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACD60);
    }
  }
}

void sub_29D62D900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D62D980()
{
  if (!qword_2A17ACD70)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
    sub_29D62DAB8(255);
    v0 = sub_29D65F454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACD70);
    }
  }
}

void sub_29D62DA2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D62DAEC()
{
  if (!qword_2A17ACD88)
  {
    sub_29D62E810(255, &qword_2A17ACD90, sub_29D62DC20, &qword_2A17ACDF8, sub_29D62DC20);
    sub_29D62DC20(255);
    sub_29D62B1D4(&qword_2A17ACDF8, sub_29D62DC20);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACD88);
    }
  }
}

void sub_29D62DC90()
{
  if (!qword_2A17ACDA8)
  {
    sub_29D62DD10(255, &qword_2A17ACDB0, &qword_2A17ACDB8, MEMORY[0x29EDCA210]);
    sub_29D62DD84();
    v0 = sub_29D65FA14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACDA8);
    }
  }
}

void sub_29D62DD10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D62DE00(255, a3, a4, MEMORY[0x29EDBC938]);
    v5 = sub_29D65FA14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D62DD84()
{
  if (!qword_2A17ACDC0)
  {
    sub_29D62DE00(255, &qword_2A17ACDC8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    v0 = sub_29D65FAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACDC0);
    }
  }
}

void sub_29D62DE00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D62DE8C()
{
  result = qword_2A17ACDD8;
  if (!qword_2A17ACDD8)
  {
    sub_29D62DC90();
    sub_29D62DF3C();
    sub_29D62B1D4(&qword_2A17ACDF0, sub_29D62DD84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACDD8);
  }

  return result;
}

unint64_t sub_29D62DF3C()
{
  result = qword_2A17ACDE0;
  if (!qword_2A17ACDE0)
  {
    v1 = MEMORY[0x29EDCA210];
    sub_29D62DD10(255, &qword_2A17ACDB0, &qword_2A17ACDB8, MEMORY[0x29EDCA210]);
    sub_29D62CB7C(&qword_2A17ACDE8, &qword_2A17ACDB8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACDE0);
  }

  return result;
}

unint64_t sub_29D62DFF4()
{
  result = qword_2A17ACE00;
  if (!qword_2A17ACE00)
  {
    sub_29D62D980();
    sub_29D65F444();
    swift_getOpaqueTypeConformance2();
    sub_29D62E0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACE00);
  }

  return result;
}

unint64_t sub_29D62E0C0()
{
  result = qword_2A17ACE08;
  if (!qword_2A17ACE08)
  {
    sub_29D62DAB8(255);
    sub_29D62E810(255, &qword_2A17ACD90, sub_29D62DC20, &qword_2A17ACDF8, sub_29D62DC20);
    sub_29D62DC20(255);
    sub_29D62B1D4(&qword_2A17ACDF8, sub_29D62DC20);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACE08);
  }

  return result;
}

void sub_29D62E218()
{
  if (!qword_2A17ACE18)
  {
    sub_29D62D768();
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D51C();
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACE18);
    }
  }
}

void sub_29D62E3A8()
{
  if (!qword_2A17ACE20)
  {
    sub_29D62E218();
    sub_29D62E5AC(255);
    sub_29D62D768();
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D51C();
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE80, sub_29D62E5AC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACE20);
    }
  }
}

void sub_29D62E628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D65F454();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D62E6DC()
{
  if (!qword_2A17ACE40)
  {
    sub_29D62E810(255, &qword_2A17ACE48, sub_29D62E8C4, &qword_2A17ACE68, sub_29D62E8C4);
    sub_29D62E8C4(255);
    sub_29D62B1D4(&qword_2A17ACE68, sub_29D62E8C4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACE40);
    }
  }
}

void sub_29D62E810(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D62B1D4(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D62E934(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D65FA14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D62E9D4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_29D62EA54()
{
  result = qword_2A17ACE70;
  if (!qword_2A17ACE70)
  {
    sub_29D62E5F4(255);
    sub_29D62EAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACE70);
  }

  return result;
}

unint64_t sub_29D62EAE0()
{
  result = qword_2A17ACE78;
  if (!qword_2A17ACE78)
  {
    sub_29D62E6A8(255);
    sub_29D62E810(255, &qword_2A17ACE48, sub_29D62E8C4, &qword_2A17ACE68, sub_29D62E8C4);
    sub_29D62E8C4(255);
    sub_29D62B1D4(&qword_2A17ACE68, sub_29D62E8C4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACE78);
  }

  return result;
}

void sub_29D62EC38()
{
  if (!qword_2A17ACE88)
  {
    sub_29D62E3A8();
    sub_29D65F574();
    sub_29D62E218();
    sub_29D62E5AC(255);
    sub_29D62D768();
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D51C();
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE80, sub_29D62E5AC);
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE90, MEMORY[0x29EDB8630]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACE88);
    }
  }
}

uint64_t sub_29D62EED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D62EF58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D626F6C();
}

void sub_29D62EF7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D65FA14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D62F024()
{
  result = qword_2A17ACEA8;
  if (!qword_2A17ACEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACEA8);
  }

  return result;
}

void sub_29D62F080()
{
  if (!qword_2A17ACEB0)
  {
    sub_29D65F444();
    sub_29D62E6A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACEB0);
    }
  }
}

uint64_t sub_29D62F0F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D62F194(uint64_t result, double a2)
{
  if (result)
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    sub_29D62C43C(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_29D661D90;
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a2 > -9.22337204e18)
      {
        if (a2 < 9.22337204e18)
        {
          v3 = result;
          v4 = sub_29D660674();
          v6 = v5;
          v3[7] = MEMORY[0x29EDC99B0];
          v3[8] = sub_29D5E3BCC();
          v3[4] = v4;
          v3[5] = v6;
          v7 = sub_29D65FF74();

          return v7;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 < 9.22337204e18)
  {
    return sub_29D660674();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_29D62F3D4()
{
  if (!qword_2A17ACEC0)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
    sub_29D62DAB8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACEC0);
    }
  }
}

uint64_t sub_29D62F47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D62F4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_29D62F54C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *&result = sub_29D629D04(a1, *(v1 + 16)).n128_u64[0];
  return result;
}

uint64_t sub_29D62F56C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(a1 + 3);
  v7[0] = *(a1 + 1);
  v7[1] = v5;
  v8 = *(a1 + 20);
  return v2(v4, v7);
}

void sub_29D62F5BC()
{
  if (!qword_2A17ACED8)
  {
    sub_29D62C504(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACED8);
    }
  }
}

void sub_29D62F654(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_29D62F6FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  *(v1 + 33);
  sub_29D603048(*(v1 + 32), *(v1 + 16));
  result = sub_29D65FC34();
  *a1 = result;
  return result;
}

uint64_t sub_29D62F768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D62F7D8()
{
  if (!qword_2A17ACEF0)
  {
    sub_29D62C5B8();
    sub_29D62C7F4();
    sub_29D62CBE0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17ACEF0);
    }
  }
}

void sub_29D62F860()
{
  if (!qword_2A17ACF00)
  {
    type metadata accessor for Key(255);
    sub_29D62B1D4(&qword_2A17AC188, type metadata accessor for Key);
    v0 = sub_29D660614();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACF00);
    }
  }
}

void sub_29D62F900(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D62CD58();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_29D62F978()
{
  if (!qword_2A17ACF18)
  {
    sub_29D62FA5C(255);
    sub_29D62FAFC(255, &qword_2A17ACF30, sub_29D62FB60);
    sub_29D62B1D4(&qword_2A17ACF90, sub_29D62FA5C);
    v0 = sub_29D65FC54();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACF18);
    }
  }
}

void sub_29D62FA90()
{
  if (!qword_2A17ACF28)
  {
    type metadata accessor for AudiogramLongitudinalPDFChartData();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17ACF28);
    }
  }
}

void sub_29D62FAFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D65F454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D62FB60()
{
  if (!qword_2A17ACF38)
  {
    sub_29D62E628(255, &qword_2A17ACF40, sub_29D62FBE8, sub_29D62CBE0);
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACF38);
    }
  }
}

void sub_29D62FBE8()
{
  if (!qword_2A17ACF48)
  {
    sub_29D62C6FC();
    sub_29D62E934(255, &qword_2A17ACF50, sub_29D62FD54);
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62FF44();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17ACF48);
    }
  }
}

void sub_29D62FD54()
{
  if (!qword_2A17ACF58)
  {
    sub_29D62FE20();
    sub_29D62FEF0();
    sub_29D62B1D4(&qword_2A17ACF78, sub_29D62FE20);
    v0 = sub_29D65FAD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACF58);
    }
  }
}

void sub_29D62FE20()
{
  if (!qword_2A17ACF60)
  {
    sub_29D62FE9C();
    v0 = sub_29D65F9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACF60);
    }
  }
}

unint64_t sub_29D62FE9C()
{
  result = qword_2A17ACF68;
  if (!qword_2A17ACF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF68);
  }

  return result;
}

unint64_t sub_29D62FEF0()
{
  result = qword_2A17ACF70;
  if (!qword_2A17ACF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF70);
  }

  return result;
}

unint64_t sub_29D62FF44()
{
  result = qword_2A17ACF80;
  if (!qword_2A17ACF80)
  {
    sub_29D62E934(255, &qword_2A17ACF50, sub_29D62FD54);
    sub_29D62B1D4(&qword_2A17ACF88, sub_29D62FD54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF80);
  }

  return result;
}

unint64_t sub_29D630018()
{
  result = qword_2A17ACFA0;
  if (!qword_2A17ACFA0)
  {
    sub_29D62FAFC(255, &qword_2A17ACF30, sub_29D62FB60);
    sub_29D62D0A0(&qword_2A17ACFA8, sub_29D62FB60, sub_29D6300F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFA0);
  }

  return result;
}

unint64_t sub_29D6300F8()
{
  result = qword_2A17ACFB0;
  if (!qword_2A17ACFB0)
  {
    sub_29D62E628(255, &qword_2A17ACF40, sub_29D62FBE8, sub_29D62CBE0);
    sub_29D62C6FC();
    sub_29D62E934(255, &qword_2A17ACF50, sub_29D62FD54);
    sub_29D62CA4C(255, &qword_2A17ACC90, MEMORY[0x29EDB86D8]);
    sub_29D65F694();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62FF44();
    swift_getOpaqueTypeConformance2();
    sub_29D62D380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFB0);
  }

  return result;
}

uint64_t sub_29D6302C8(uint64_t a1, uint64_t a2)
{
  sub_29D62FA90();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D63032C()
{
  if (!qword_2A17AC2B8)
  {
    v0 = sub_29D660614();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC2B8);
    }
  }
}

unint64_t sub_29D63038C()
{
  result = qword_2A17ACFC0;
  if (!qword_2A17ACFC0)
  {
    sub_29D62EF7C(255, &qword_2A17ACE98, sub_29D62EC38, sub_29D62EFF0);
    sub_29D62E3A8();
    sub_29D65F574();
    sub_29D62E218();
    sub_29D62E5AC(255);
    sub_29D62D768();
    sub_29D62F654(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D62D51C();
    sub_29D62D8B8(255);
    sub_29D62D4E8(255);
    sub_29D62D5EC();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE10, sub_29D62D8B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE80, sub_29D62E5AC);
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACE90, MEMORY[0x29EDB8630]);
    swift_getOpaqueTypeConformance2();
    sub_29D62B1D4(&qword_2A17ACFC8, sub_29D62EFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFC0);
  }

  return result;
}

uint64_t type metadata accessor for AudiogramAllDataViewController()
{
  result = qword_2A17ACFE0;
  if (!qword_2A17ACFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D630740(void *a1)
{
  v2 = v1;
  *(v1 + qword_2A17ACFD0) = a1;
  v4 = type metadata accessor for AudiogramAllDataViewModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  v8 = sub_29D641F68(v7, 1);
  *(v2 + qword_2A17ACFD8) = v8;
  sub_29D65EAF4();
  sub_29D631628(0, &qword_2A17ACFF0, sub_29D63168C, MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D661D90;
  v10 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource;
  swift_beginAccess();
  *(v9 + 32) = *(v8 + v10);
  swift_unknownObjectRetain();
  sub_29D65EB04();

  v11 = sub_29D65F064();
  v12 = qword_2A1A1EAA0;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v14 = sub_29D65FF24();

  [v13 setTitle_];

  return v13;
}

uint64_t sub_29D630940()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29D660594();
  __break(1u);
  return result;
}

void sub_29D630A00()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AudiogramAllDataViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  v2 = sub_29D65FF24();
  v3 = [objc_opt_self() systemImageNamed_];

  v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithImage:v3 style:0 target:v0 action:sel_didTapExportAll_];
  [v1 setRightBarButtonItem_];
}

void sub_29D630B04(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29D630A00();
}

void sub_29D630BBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D65F394();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v8 = sub_29D65E554();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 104))(v13, *MEMORY[0x29EDC1D50], v8);
  v14 = a1;
  sub_29D660274();
  sub_29D65F384();
  sub_29D660284();
  v15 = type metadata accessor for AudiogramAllDataViewController();
  v16.receiver = v14;
  v16.super_class = v15;
  objc_msgSendSuper2(&v16, sel_viewIsAppearing_, a3);
}

uint64_t sub_29D630DB0()
{
  v1 = sub_29D65FCA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65FCC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605BAC();
  v13 = sub_29D6602B4();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  aBlock[4] = sub_29D6315C0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A2432E20;
  v15 = _Block_copy(aBlock);
  v16 = v0;
  sub_29D65FCB4();
  v18[1] = MEMORY[0x29EDCA190];
  sub_29D6315E0(&qword_2A17AC0F0, MEMORY[0x29EDCA248]);
  sub_29D631628(0, &qword_2A17AC0F8, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D61244C();
  sub_29D660484();
  MEMORY[0x29ED62660](0, v12, v6, v15);
  _Block_release(v15);

  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
}

void sub_29D631084(char *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *&a1[qword_2A17ACFD0];
  type metadata accessor for AudiogramPDFAsyncConfigurationDataSource();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 40) = 0x3FF8000000000000;
  *(v3 + 48) = 0;
  type metadata accessor for AudiogramPDFProvider();
  v4 = swift_allocObject();
  v4[2] = v2;
  v5 = sub_29D65EAA4();
  v6 = v2;
  v7 = sub_29D65EA94();
  v8 = MEMORY[0x29EDC24D0];
  v4[6] = v5;
  v4[7] = v8;
  v4[3] = v7;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  sub_29D6315E0(&qword_2A17AC950, type metadata accessor for AudiogramPDFAsyncConfigurationDataSource);
  v9 = objc_allocWithZone(sub_29D65EF34());

  v10 = sub_29D65EF24();
  v11 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [a1 presentViewController:v11 animated:1 completion:0];
}

uint64_t sub_29D631288(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D660474();
  sub_29D65EE94();
  sub_29D630DB0();

  sub_29D5DF1C4(v4);
}

uint64_t sub_29D63138C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_29D631418()
{
  v1 = *(v0 + qword_2A17ACFD8);
}

id sub_29D631458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramAllDataViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D631490(uint64_t a1)
{
  v2 = *(a1 + qword_2A17ACFD8);
}

uint64_t sub_29D6314E4@<X0>(uint64_t a1@<X8>)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *MEMORY[0x29EDC1D50];
  v3 = sub_29D65E554();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
}

uint64_t sub_29D6315C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D6315E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D631628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D63168C()
{
  result = qword_2A17ACFF8;
  if (!qword_2A17ACFF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17ACFF8);
  }

  return result;
}

uint64_t type metadata accessor for HearingTestPromotionViewActionHandler()
{
  result = qword_2A1A1E390;
  if (!qword_2A1A1E390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D631780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29D6320E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29D6317D4(uint64_t a1)
{
  v2 = sub_29D631FE4();

  return MEMORY[0x2A1C63270](a1, v2);
}

uint64_t sub_29D631820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D631FE4();

  return MEMORY[0x2A1C63268](a1, a2, a3, v6);
}

void sub_29D631874()
{
  swift_getObjectType();
  v0 = sub_29D65EDC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v6 = sub_29D65F314();
  sub_29D5DE6EC(v6, qword_2A1A20C00);
  v7 = sub_29D65F2F4();
  v8 = sub_29D6601E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136446210;
    v11 = sub_29D6607A4();
    v13 = sub_29D64A1D0(v11, v12, v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D5D7000, v7, v8, "[%{public}s] Presenting Hearing Test.", v9, 0xCu);
    sub_29D5DF1C4(v10);
    MEMORY[0x29ED63350](v10, -1, -1);
    MEMORY[0x29ED63350](v9, -1, -1);
  }

  sub_29D65DD04();
  sub_29D65EF44();
  sub_29D65ED94();
  v14 = *(v1 + 8);
  v14(v5, v0);
  sub_29D5E32A8(v20, v20[3]);
  v15 = sub_29D65ED44();
  sub_29D65DD34();
  v16 = sub_29D65DD24();
  type metadata accessor for HearingTestArticleProvider();
  swift_allocObject();
  v17 = sub_29D65DCF4();

  sub_29D5DF1C4(v20);
  sub_29D65EF44();
  v18 = sub_29D65EDA4();
  v14(v5, v0);
  [v18 presentViewController:v17 animated:1 completion:0];
}

uint64_t sub_29D631B64(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D631C64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestPromotionViewActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D631CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D631D44@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_29D631D74(uint64_t a1)
{
  v2 = sub_29D632094();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D631DB0(uint64_t a1)
{
  v2 = sub_29D632094();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D631E14(void *a1)
{
  sub_29D632038();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_29D5E32A8(a1, a1[3]);
  sub_29D632094();
  sub_29D660774();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_29D631F38()
{
  result = qword_2A17AD000;
  if (!qword_2A17AD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD000);
  }

  return result;
}

unint64_t sub_29D631F90()
{
  result = qword_2A17AD008;
  if (!qword_2A17AD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD008);
  }

  return result;
}

unint64_t sub_29D631FE4()
{
  result = qword_2A1A1E448;
  if (!qword_2A1A1E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E448);
  }

  return result;
}

void sub_29D632038()
{
  if (!qword_2A17AD010)
  {
    sub_29D632094();
    v0 = sub_29D660664();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD010);
    }
  }
}

unint64_t sub_29D632094()
{
  result = qword_2A17AD018;
  if (!qword_2A17AD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD018);
  }

  return result;
}

uint64_t sub_29D6320E8()
{
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v0 = sub_29D65F314();
  sub_29D5DE6EC(v0, qword_2A1A20C00);
  v1 = sub_29D65F2F4();
  v2 = sub_29D660214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446466;
    *(v3 + 4) = sub_29D64A1D0(0xD000000000000024, 0x800000029D664450, &v6);
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D64A1D0(0xD000000000000029, 0x800000029D668C50, &v6);
    _os_log_impl(&dword_29D5D7000, v1, v2, "[%{public}s.%{public}s]: Creating promo tile action handler user data object", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v4, -1, -1);
    MEMORY[0x29ED63350](v3, -1, -1);
  }

  return 1;
}

unint64_t sub_29D632290()
{
  result = qword_2A17AD020;
  if (!qword_2A17AD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD020);
  }

  return result;
}

unint64_t sub_29D6322E8()
{
  result = qword_2A17AD028;
  if (!qword_2A17AD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD028);
  }

  return result;
}

uint64_t PDFOverlayContextPill.init(renderable:color:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_29D5DBB48(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t PDFOverlayContextPill.render(context:document:)(void *a1)
{
  v2 = v1;
  sub_29D6325AC();
  v5 = v4;
  sub_29D65E354();
  MinX = CGRectGetMinX(v19);
  sub_29D65E354();
  MinY = CGRectGetMinY(v20);
  sub_29D65E354();
  v22.size.width = CGRectGetWidth(v21);
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.height = v5;
  v8 = CGPathCreateWithRoundedRect(v22, 12.0, 12.0, 0);
  v9 = [a1 CGContext];
  UIGraphicsPushContext(v9);

  v10 = [a1 CGContext];
  CGContextSaveGState(v10);

  v11 = [a1 CGContext];
  CGContextAddPath(v11, v8);

  v12 = [a1 CGContext];
  v13 = [*(v2 + 40) CGColor];
  CGContextSetFillColorWithColor(v12, v13);

  v14 = [a1 CGContext];
  CGContextDrawPath(v14, kCGPathFill);

  v15 = [a1 CGContext];
  CGContextRestoreGState(v15);

  UIGraphicsPopContext();
  sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetMinX(v23);
  sub_29D65E354();
  CGRectGetMinY(v24);
  sub_29D65E354();
  CGRectGetWidth(v25);
  sub_29D65E364();
  v16 = *(v2 + 32);
  sub_29D5E32A8(v2, *(v2 + 24));
  sub_29D65E5B4();
  sub_29D65E3C4();
}

void sub_29D6325AC()
{
  sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetMinX(v10);
  sub_29D65E354();
  CGRectGetMinY(v11);
  sub_29D65E354();
  CGRectGetWidth(v12);
  sub_29D65E354();
  CGRectGetHeight(v13);
  sub_29D65E364();
  v1 = v0[4];
  sub_29D5E32A8(v0, v0[3]);
  sub_29D65E594();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  CGRectGetHeight(v14);
  sub_29D65E354();
  CGRectGetHeight(v15);
}

double sub_29D632704(uint64_t a1, double (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  sub_29D5E32A8(v2, v5);
  v7 = a2(a1, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_29D65E354();
  MinX = CGRectGetMinX(v16);
  sub_29D65E354();
  CGRectGetMinY(v17);
  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  CGRectGetWidth(v18);
  sub_29D6325AC();
  return MinX;
}

unint64_t sub_29D6327E4()
{
  result = qword_2A17AD030;
  if (!qword_2A17AD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD030);
  }

  return result;
}

double sub_29D63286C(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = v4[3];
  v8 = v4[4];
  sub_29D5E32A8(v4, v7);
  v9 = a4(a1, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_29D65E354();
  MinX = CGRectGetMinX(v18);
  sub_29D65E354();
  CGRectGetMinY(v19);
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  CGRectGetWidth(v20);
  sub_29D6325AC();
  return MinX;
}

uint64_t sub_29D632948(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D632AAC();
  *v4 = v1;
  v4[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v5);
}

__n128 sub_29D6329F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29D632A08(uint64_t a1, int a2)
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

uint64_t sub_29D632A50(uint64_t result, int a2, int a3)
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

unint64_t sub_29D632AAC()
{
  result = qword_2A17AD038;
  if (!qword_2A17AD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD038);
  }

  return result;
}

uint64_t sub_29D632B00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_29D63D8F4();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
  v10 = v9;
  sub_29D65F444();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, *a1, v10);
  v12 = sub_29D65F674();
  v13 = *(v4 + 56);
  v18 = v13;
  v14 = *(v12 - 8);
  (*(v14 + 16))(&v8[v13], a1[1], v12);
  sub_29D63AB20(0, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
  sub_29D63B918();
  v15 = *(v4 + 72);
  sub_29D63DD00(a1[2], &v8[v15], &qword_2A17AD100, sub_29D63B614);
  v16 = v19;
  (*(v11 + 32))(v19, v8, v10);
  (*(v14 + 32))(v16 + *(v4 + 56), &v8[v18], v12);
  return sub_29D63DD80(&v8[v15], v16 + *(v4 + 72), &qword_2A17AD100, sub_29D63B614);
}

void sub_29D632D40()
{
  v1 = type metadata accessor for AudiogramLongitudinalPDFChartData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v0;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v9 < *(v7 + 16))
    {
      sub_29D63AAB8(v10 + *(v2 + 72) * v9, v6, type metadata accessor for AudiogramLongitudinalPDFChartData);
      v12 = *v6;
      if (*(v6 + 8))
      {
        v13 = 0.0;
      }

      else
      {
        v13 = *v6;
      }

      v14 = v6[2];
      v15 = *(v6 + 24);
      sub_29D63C8A8(v6, type metadata accessor for AudiogramLongitudinalPDFChartData);
      v16 = v13 >= -15.0;
      if (v13 > 115.0)
      {
        v16 = 0;
      }

      if (v15 == 1)
      {
        if (!v16)
        {
          return;
        }
      }

      else
      {
        v11 = v14 >= -15.0;
        if (v14 > 115.0)
        {
          v11 = 0;
        }

        if (!v16 || !v11)
        {
          return;
        }
      }

      if (v8 == ++v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29D632EEC()
{
  v0 = MEMORY[0x29EDBC990];
  sub_29D63AB20(0, &qword_2A17ACEB8, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v11 - v4;
  sub_29D65FB34();
  v6 = *MEMORY[0x29EDBC980];
  v7 = sub_29D65FB14();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = sub_29D65FB44();
  result = sub_29D63DC88(v5, &qword_2A17ACEB8, v0);
  qword_2A17AD040 = v9;
  return result;
}

uint64_t sub_29D633054(uint64_t a1)
{
  v3 = type metadata accessor for AudiogramLongitudinalPDFChartData();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3 - 8, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v33 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v17 = &v33 - v16;
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v33 - v19;
  sub_29D63AAB8(a1, v1 + OBJC_IVAR____TtC16HearingAppPlugin29AudiogramPDFLongitudinalChart_chartModel, type metadata accessor for AudiogramPDFLongitudinalChart.Model);
  result = sub_29D6229CC();
  v22 = *a1;
  v23 = *(*a1 + 16);
  if (result)
  {
    do
    {
      LOBYTE(v24) = v23 == 0;
      if (!v23)
      {
        break;
      }

      if (v23 > *(v22 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      --v23;
      sub_29D63AAB8(v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v20, type metadata accessor for AudiogramLongitudinalPDFChartData);
      v25 = v20[8];
      result = sub_29D63C8A8(v20, type metadata accessor for AudiogramLongitudinalPDFChartData);
    }

    while ((v25 & 1) != 0);
  }

  else
  {
    if (v23)
    {
      v26 = 0;
      while (v26 < *(v22 + 16))
      {
        sub_29D63AAB8(v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v26, v17, type metadata accessor for AudiogramLongitudinalPDFChartData);
        v24 = v17[8];
        result = sub_29D63C8A8(v17, type metadata accessor for AudiogramLongitudinalPDFChartData);
        if (v24 != 1)
        {
          v23 = v26;
          goto LABEL_14;
        }

        if (v23 == ++v26)
        {
          v23 = 0;
          goto LABEL_14;
        }
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    LOBYTE(v24) = 1;
  }

LABEL_14:
  v27 = v1 + OBJC_IVAR____TtC16HearingAppPlugin29AudiogramPDFLongitudinalChart_leftEarAnnotationIndex;
  *v27 = v23;
  *(v27 + 8) = v24;
  result = sub_29D6229CC();
  v28 = *(v22 + 16);
  if (!result)
  {
    do
    {
      LOBYTE(v30) = v28 == 0;
      if (!v28)
      {
        break;
      }

      if (v28 > *(v22 + 16))
      {
        goto LABEL_29;
      }

      --v28;
      sub_29D63AAB8(v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v9, type metadata accessor for AudiogramLongitudinalPDFChartData);
      v31 = v9[24];
      result = sub_29D63C8A8(v9, type metadata accessor for AudiogramLongitudinalPDFChartData);
    }

    while ((v31 & 1) != 0);
    goto LABEL_27;
  }

  if (!v28)
  {
    LOBYTE(v30) = 1;
LABEL_27:
    sub_29D63C8A8(a1, type metadata accessor for AudiogramPDFLongitudinalChart.Model);
    v32 = v1 + OBJC_IVAR____TtC16HearingAppPlugin29AudiogramPDFLongitudinalChart_rightEarAnnotationIndex;
    *v32 = v28;
    *(v32 + 8) = v30;
    return v1;
  }

  v29 = 0;
  while (v29 < *(v22 + 16))
  {
    sub_29D63AAB8(v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v13, type metadata accessor for AudiogramLongitudinalPDFChartData);
    v30 = v13[24];
    result = sub_29D63C8A8(v13, type metadata accessor for AudiogramLongitudinalPDFChartData);
    if (v30 != 1)
    {
      v28 = v29;
      goto LABEL_27;
    }

    if (v28 == ++v29)
    {
      v28 = 0;
      goto LABEL_27;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_29D633490@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v102 = a4;
  LODWORD(v101) = a3;
  v99 = a2;
  v122 = a6;
  v121 = sub_29D65FA04();
  v120 = *(v121 - 8);
  v9 = *(v120 + 64);
  MEMORY[0x2A1C7C4A8](v121, v10);
  v119 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = MEMORY[0x29EDB8710];
  sub_29D63AB20(0, &qword_2A17ACC38, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &v97 - v15;
  sub_29D63AB84(0);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v17, v21);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B050();
  v103 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B0B8();
  v105 = v29;
  v106 = *(v29 - 8);
  v30 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v100 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B340();
  v110 = v33;
  v111 = *(v33 - 8);
  v34 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v33, v35);
  v104 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63BA68();
  v113 = v37;
  v114 = *(v37 - 8);
  v38 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v107 = &v97 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63BC08();
  v115 = v41;
  v116 = *(v41 - 8);
  v42 = *(v116 + 64);
  MEMORY[0x2A1C7C4A8](v41, v43);
  v109 = &v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63C518();
  v118 = v45;
  v117 = *(v45 - 8);
  v46 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v45, v47);
  v112 = &v97 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B15C();
  v50 = v49;
  v51 = *(*(v49 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v49, v52);
  v54 = &v97 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a1;
  v123 = v6;
  sub_29D6340BC(a1, v54);
  v128 = v6;
  v129 = a1;
  v130 = v99;
  v131 = v101 & 1;
  v132 = v102;
  v133 = a5 & 1;
  v134 = v54;
  v108 = v54;
  sub_29D63ABCC();
  sub_29D63AE04();
  sub_29D65F614();
  v55 = *MEMORY[0x29EDC43E0];
  v137 = sub_29D65FF64();
  v138 = v56;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](0xD000000000000022, 0x800000029D668A20);

  sub_29D63E0DC(&qword_2A17AD0D8, sub_29D63AB84);
  sub_29D65FBC4();

  (*(v19 + 8))(v23, v18);
  v57 = sub_29D65F744();
  v58 = *(v57 - 8);
  v101 = *(v58 + 56);
  v102 = v58 + 56;
  v101(v16, 1, 1, v57);
  v59 = sub_29D63B1F0();
  v60 = sub_29D63B2D0();
  v61 = v100;
  v62 = v103;
  sub_29D65FB94();
  sub_29D63DC88(v16, &qword_2A17ACC38, v124);
  sub_29D5DAFCC(v28);
  v126 = v98;
  v127 = v123;
  sub_29D63B464(0);
  v64 = v63;
  v137 = v62;
  v138 = v50;
  v139 = v59;
  v140 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v103 = MEMORY[0x29EDB86F8];
  v66 = sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464);
  v67 = v104;
  v68 = v105;
  sub_29D65FB74();
  (*(v106 + 8))(v61, v68);
  sub_29D632D40();
  v70 = -120.0;
  if (v69)
  {
    v70 = -200.0;
  }

  v71 = 50.0;
  if ((v69 & 1) == 0)
  {
    v71 = 20.0;
  }

  v135 = v70;
  v136 = v71;
  v101(v16, 1, 1, v57);
  sub_29D63DF60(0, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v73 = v72;
  v137 = v68;
  v138 = v64;
  v139 = OpaqueTypeConformance2;
  v140 = v66;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_29D62D6CC();
  v76 = v107;
  v77 = v110;
  sub_29D65FBA4();
  sub_29D63DC88(v16, &qword_2A17ACC38, v124);
  (*(v111 + 8))(v67, v77);
  v125 = v123;
  sub_29D63BE1C(0);
  v79 = v78;
  v137 = v77;
  v138 = v73;
  v139 = v74;
  v140 = v75;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = sub_29D63E0DC(&qword_2A17AD1A8, sub_29D63BE1C);
  v82 = v109;
  v83 = v113;
  sub_29D65FB84();
  (*(v114 + 8))(v76, v83);
  sub_29D65F574();
  v137 = v83;
  v138 = v79;
  v139 = v80;
  v140 = v81;
  swift_getOpaqueTypeConformance2();
  sub_29D63E0DC(&qword_2A17ACE90, MEMORY[0x29EDB8630]);
  v84 = v112;
  v85 = v115;
  sub_29D65FBB4();
  (*(v116 + 8))(v82, v85);
  KeyPath = swift_getKeyPath();
  v87 = sub_29D6229CC();
  v88 = v120;
  v89 = MEMORY[0x29EDBC548];
  if (!v87)
  {
    v89 = MEMORY[0x29EDBC540];
  }

  v90 = v119;
  v91 = v121;
  (*(v120 + 104))(v119, *v89, v121);
  sub_29D63C810();
  v93 = v122;
  v94 = (v122 + *(v92 + 36));
  sub_29D63AB20(0, &qword_2A17ACEA0, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
  (*(v88 + 32))(v94 + *(v95 + 28), v90, v91);
  *v94 = KeyPath;
  (*(v117 + 32))(v93, v84, v118);
  return sub_29D63C8A8(v108, sub_29D63B15C);
}

uint64_t sub_29D6340BC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v96 = a2;
  v3 = sub_29D65F314();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63DE08();
  v94 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v95 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v93 = &v79 - v13;
  v14 = sub_29D65DCC4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63AB20(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v84 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v27 = &v79 - v26;
  v28 = sub_29D65DBC4();
  v29 = *(v28 - 8);
  v30 = v29[8];
  MEMORY[0x2A1C7C4A8](v28, v31);
  v88 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33, v34);
  v82 = &v79 - v35;
  MEMORY[0x2A1C7C4A8](v36, v37);
  v39 = &v79 - v38;
  MEMORY[0x2A1C7C4A8](v40, v41);
  v97 = &v79 - v42;
  v43 = *(type metadata accessor for AudiogramPDFLongitudinalChart.Model(0) + 20);
  v87 = a1;
  v83 = v43;
  sub_29D65D994();
  sub_29D65DC94();
  sub_29D65DC64();
  v44 = *(v15 + 8);
  v85 = v15 + 8;
  v86 = v14;
  v44(v19, v14);
  v45 = v29[1];
  v45(v39, v28);
  v46 = v29[6];
  v47 = v46(v27, 1, v28);
  v89 = v29;
  if (v47 == 1)
  {
    v87 = v39;
    v97 = v28;
LABEL_5:
    sub_29D63DC88(v27, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
    v49 = v90;
    sub_29D65F2E4();
    v50 = sub_29D65F2F4();
    v51 = sub_29D6601F4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v98 = v53;
      *v52 = 136446210;
      v54 = sub_29D6607A4();
      v56 = sub_29D64A1D0(v54, v55, &v98);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_29D5D7000, v50, v51, "[%{public}s] Unable to determine chart x scale domain", v52, 0xCu);
      sub_29D5DF1C4(v53);
      MEMORY[0x29ED63350](v53, -1, -1);
      MEMORY[0x29ED63350](v52, -1, -1);
    }

    (*(v91 + 8))(v49, v92);
    v58 = v87;
    v57 = v88;
    sub_29D65DB54();
    sub_29D65DB64();
    sub_29D63E0DC(&qword_2A17AD0C8, MEMORY[0x29EDB9BC8]);
    v59 = v97;
    result = sub_29D65FEF4();
    if (result)
    {
      v61 = v89[4];
      v62 = v93;
      v61(v93, v58, v59);
      v63 = v94;
      v61((v62 + *(v94 + 48)), v57, v59);
      v64 = v95;
      sub_29D63AAB8(v62, v95, sub_29D63DE08);
      v65 = *(v63 + 48);
      v66 = v96;
      v61(v96, v64, v59);
      v45((v64 + v65), v59);
      sub_29D63DE70(v62, v64);
      v67 = *(v63 + 48);
      sub_29D63B15C();
      v61(&v66[*(v68 + 36)], (v64 + v67), v59);
      return (v45)(v64, v59);
    }

    __break(1u);
    goto LABEL_13;
  }

  v80 = v29[4];
  v81 = v29 + 4;
  v80(v97, v27, v28);
  sub_29D65D974();
  sub_29D65DC94();
  v27 = v84;
  Date.lastDateOfTheYear(calendar:)(v84);
  v44(v19, v86);
  v45(v39, v28);
  if (v46(v27, 1, v28) == 1)
  {
    v87 = v39;
    v48 = v97;
    v97 = v28;
    v45(v48, v28);
    goto LABEL_5;
  }

  v69 = v82;
  v80(v82, v27, v28);
  sub_29D63E0DC(&qword_2A17AD0C8, MEMORY[0x29EDB9BC8]);
  v70 = v97;
  result = sub_29D65FEF4();
  if (result)
  {
    v59 = v28;
    v71 = v93;
    v72 = v28;
    v73 = v80;
    v80(v93, v70, v72);
    v74 = v94;
    v73(v71 + *(v94 + 48), v69, v59);
    v64 = v95;
    sub_29D63AAB8(v71, v95, sub_29D63DE08);
    v75 = *(v74 + 48);
    v76 = v96;
    v73(v96, v64, v59);
    v45((v64 + v75), v59);
    sub_29D63DE70(v71, v64);
    v77 = *(v74 + 48);
    sub_29D63B15C();
    v73(&v76[*(v78 + 36)], (v64 + v77), v59);
    return (v45)(v64, v59);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_29D634904@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, char a4@<W3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v97 = a7;
  v88 = a5;
  v93 = a8;
  v94 = a3;
  sub_29D63DA78(0, &qword_2A17AD208, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &OpaqueTypeConformance2 - v15;
  v17 = sub_29D65F6B4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &OpaqueTypeConformance2 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACCF0, MEMORY[0x29EDB86E8]);
  v87 = v23;
  v85 = *(v23 - 8);
  v24 = *(v85 + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v82 = &OpaqueTypeConformance2 - v26;
  sub_29D62CD58();
  v91 = *(v27 - 8);
  v92 = v27;
  v28 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v90 = &OpaqueTypeConformance2 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v32);
  v89 = &OpaqueTypeConformance2 - v33;
  MEMORY[0x2A1C7C4A8](v34, v35);
  v83 = &OpaqueTypeConformance2 - v36;
  MEMORY[0x2A1C7C4A8](v37, v38);
  v96 = &OpaqueTypeConformance2 - v39;
  sub_29D62F978();
  v86 = v40;
  v84 = *(v40 - 8);
  v41 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v40, v42);
  v95 = &OpaqueTypeConformance2 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v44, v45);
  v47 = &OpaqueTypeConformance2 - v46;
  sub_29D62BDF0(*a2);
  v102 = v48;
  swift_getKeyPath();
  v49 = swift_allocObject();
  v50 = v88;
  *(v49 + 16) = a1;
  *(v49 + 24) = v50;
  *(v49 + 32) = a6 & 1;
  *(v49 + 40) = v94;
  *(v49 + 48) = a4 & 1;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_29D63DAE4;
  *(v51 + 24) = v49;
  sub_29D63AB20(0, &qword_2A17ACF20, sub_29D62FA90, MEMORY[0x29EDC9A40]);
  sub_29D63AC40();
  sub_29D63AD7C();
  sub_29D630018();
  v94 = v47;
  sub_29D65FC44();
  sub_29D65FAC4();
  v52 = sub_29D65DBC4();
  sub_29D65F544();

  v88 = v16;
  v81 = v52;
  sub_29D65F6A4();
  if (qword_2A17AC070 != -1)
  {
    swift_once();
  }

  v53 = qword_2A17AD730;
  *&v103 = qword_2A17AD730;

  v54 = MEMORY[0x29EDBCA98];
  v55 = MEMORY[0x29EDB86E0];
  v56 = MEMORY[0x29EDBCA88];
  v57 = v82;
  sub_29D65F484();
  v58 = *(v18 + 8);
  v79 = v18 + 8;
  v80 = v58;
  v58(v22, v17);
  v78 = v22;
  if (qword_2A17AC078 != -1)
  {
    swift_once();
  }

  v103 = xmmword_2A17AD738;
  v104 = *&qword_2A17AD748;
  v105 = qword_2A17AD758;
  v98 = v17;
  v99 = v54;
  v100 = v55;
  v101 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v87;
  sub_29D65F4A4();
  v85 = *(v85 + 8);
  (v85)(v57, v59);
  sub_29D65FAC4();
  v60 = v57;
  sub_29D63B15C();
  v62 = v97 + *(v61 + 36);
  sub_29D65F544();

  v63 = v78;
  sub_29D65F6A4();
  v98 = v53;
  sub_29D65F484();

  v80(v63, v17);
  v64 = v83;
  sub_29D65F4A4();
  (v85)(v60, v59);
  v65 = v84;
  v66 = v95;
  v67 = v86;
  (*(v84 + 16))(v95, v94, v86);
  v98 = v66;
  v69 = v91;
  v68 = v92;
  v70 = *(v91 + 16);
  v71 = v89;
  v72 = v96;
  v70(v89, v96, v92);
  v99 = v71;
  v73 = v90;
  v70(v90, v64, v68);
  v100 = v73;
  sub_29D626BC4(&v98, v93);
  v74 = *(v69 + 8);
  v74(v64, v68);
  v74(v72, v68);
  v75 = *(v65 + 8);
  v75(v94, v67);
  v74(v73, v68);
  v74(v71, v68);
  return (v75)(v95, v67);
}

uint64_t sub_29D635218(uint64_t a1)
{
  v2 = sub_29D65F564();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v5 = sub_29D65F4D4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v8 = sub_29D65DCC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65DC94();
  sub_29D637B08(a1, 1uLL, v13);
  (*(v9 + 8))(v13, v8);
  sub_29D65F4C4();
  sub_29D65F554();
  sub_29D63B52C();
  sub_29D65DBC4();
  sub_29D63B844();
  return sub_29D65F6D4();
}

uint64_t sub_29D635400()
{
  v1 = sub_29D65F564();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D65F4D4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v7 = sub_29D65F4F4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  sub_29D62F024();
  sub_29D65F4E4();
  *(swift_allocObject() + 16) = v0;
  sub_29D65F4C4();
  sub_29D65F554();
  sub_29D63BE64();
  sub_29D63C2F8();
  return sub_29D65F6C4();
}

uint64_t sub_29D6355A0@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X3>, int a4@<W4>, void (*a5)(char *, uint64_t, uint64_t, uint64_t)@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v265 = a6;
  v263 = a5;
  LODWORD(v264) = a4;
  v262 = a3;
  v281 = a1;
  v312 = a7;
  sub_29D63DB54();
  v311 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v310 = &v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63DBE8();
  v308 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v306 = &v250 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63ACD8();
  v17 = v16;
  v320 = *(v16 - 8);
  v18 = *(v320 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v307 = &v250 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_29D65F724();
  v269 = *(v271 - 8);
  v21 = *(v269 + 64);
  MEMORY[0x2A1C7C4A8](v271, v22);
  v266 = &v250 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62CA4C(0, &qword_2A17ACCA8, MEMORY[0x29EDB8708]);
  v275 = v24;
  v268 = *(v24 - 8);
  v25 = *(v268 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v267 = &v250 - v27;
  sub_29D62C954();
  v277 = v28;
  v276 = *(v28 - 8);
  v29 = *(v276 + 64);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v274 = &v250 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_29D65F5C4();
  v272 = *(v273 - 8);
  v32 = *(v272 + 64);
  MEMORY[0x2A1C7C4A8](v273, v33);
  v35 = &v250 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v39 = &v250 - v38;
  v321 = sub_29D65DBC4();
  v304 = *(v321 - 8);
  v40 = *(v304 + 64);
  MEMORY[0x2A1C7C4A8](v321, v41);
  v282 = &v250 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43, v44);
  v278 = &v250 - v45;
  sub_29D62CC14();
  v318 = *(v46 - 8);
  v319 = v46;
  v47 = *(v318 + 64);
  MEMORY[0x2A1C7C4A8](v46, v48);
  v261 = &v250 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v50, v51);
  v260 = &v250 - v52;
  v53 = MEMORY[0x29EDC9C68];
  sub_29D63AB20(0, &qword_2A17ACCD0, sub_29D62CC14, MEMORY[0x29EDC9C68]);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v54 - 8, v56);
  v283 = &v250 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v58, v59);
  v305 = &v250 - v60;
  MEMORY[0x2A1C7C4A8](v61, v62);
  v279 = &v250 - v63;
  v64 = MEMORY[0x29EDB8620];
  sub_29D63DF60(0, &qword_2A17ACEE8, MEMORY[0x29EDC99B0], MEMORY[0x29EDB8788], MEMORY[0x29EDB8620]);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v65 - 8, v67);
  v293 = &v250 - v68;
  sub_29D63DF60(0, &qword_2A17ACEC8, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], v64);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v69 - 8, v71);
  v316 = &v250 - v72;
  sub_29D63AB20(0, &qword_2A17AD220, MEMORY[0x29EDB9D18], v53);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v73 - 8, v75);
  v77 = &v250 - v76;
  v78 = sub_29D65DCA4();
  v79 = *(v78 - 8);
  v80 = v79[8];
  MEMORY[0x2A1C7C4A8](v78, v81);
  v83 = &v250 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63DA78(0, &qword_2A17AD208, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v85 = *(*(v84 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v84 - 8, v86);
  v314 = &v250 - v87;
  v88 = sub_29D65F694();
  v285 = *(v88 - 8);
  v89 = *(v285 + 64);
  MEMORY[0x2A1C7C4A8](v88, v90);
  v284 = &v250 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62CA4C(0, &qword_2A17ACC90, MEMORY[0x29EDB86D8]);
  v290 = v92;
  v287 = *(v92 - 8);
  v93 = *(v287 + 64);
  MEMORY[0x2A1C7C4A8](v92, v94);
  v286 = &v250 - v95;
  sub_29D62C6FC();
  v292 = v96;
  v291 = *(v96 - 8);
  v97 = *(v291 + 64);
  MEMORY[0x2A1C7C4A8](v96, v98);
  v289 = &v250 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62FBE8();
  v299 = v100;
  v298 = *(v100 - 8);
  v101 = *(v298 + 64);
  MEMORY[0x2A1C7C4A8](v100, v102);
  v315 = &v250 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v104, v105);
  v297 = &v250 - v106;
  MEMORY[0x2A1C7C4A8](v107, v108);
  v313 = &v250 - v109;
  v110 = v53;
  v111 = a2;
  sub_29D63AB20(0, &qword_2A17ACF38, sub_29D63ACD8, v110);
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v112 - 8, v114);
  v302 = &v250 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v116, v117);
  v301 = &v250 - v118;
  MEMORY[0x2A1C7C4A8](v119, v120);
  v300 = &v250 - v121;
  v124 = MEMORY[0x2A1C7C4A8](v122, v123);
  v125 = MEMORY[0x29EDB9CD0];
  v126 = *(v111 + 24);
  v317 = &v250 - v127;
  v295 = v78;
  v294 = v83;
  v309 = v17;
  v270 = v35;
  v303 = v111;
  v296 = v77;
  v288 = v88;
  if (v126)
  {
    v128 = *(v320 + 56);
    v128(v124);
  }

  else
  {
    v259 = v39;
    v129 = *(v111 + 16);
    v130 = *(type metadata accessor for AudiogramLongitudinalPDFChartData() + 24);
    v280 = sub_29D65FAC4();
    v131 = v79[13];
    v257 = *v125;
    v258 = (v79 + 13);
    v256 = v131;
    v131(v83);
    v132 = sub_29D65DCC4();
    v133 = *(v132 - 8);
    v134 = *(v133 + 56);
    v255 = v132;
    v254 = v134;
    v253 = v133 + 56;
    (v134)(v77, 1, 1);
    v251 = v130;
    sub_29D65F534();

    sub_29D63DC88(v77, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
    v280 = v79;
    v135 = v79[1];
    v250 = v79 + 1;
    v252 = v135;
    v135(v83, v78);
    sub_29D65FAC4();
    v136 = -v129;
    v328 = *&v136;
    sub_29D65F544();

    sub_29D65FAC4();
    v328 = 0x7468676952;
    v329 = 0xE500000000000000;
    sub_29D65F544();

    v137 = v284;
    sub_29D65F684();
    sub_29D65F9E4();
    v138 = v286;
    v139 = v288;
    v140 = MEMORY[0x29EDB86D0];
    sub_29D65F4A4();
    sub_29D62F6A8(v327);
    (*(v285 + 8))(v137, v139);
    v141 = [objc_opt_self() hk_hearingHealthAudiogramRightEarLineColor];
    v322 = sub_29D65FBD4();
    v328 = v139;
    v329 = v140;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v143 = v289;
    v144 = v290;
    v145 = MEMORY[0x29EDBCA98];
    v146 = MEMORY[0x29EDBCA88];
    sub_29D65F484();
    v147 = v138;
    v148 = 1;
    (*(v287 + 8))(v147, v144);

    MEMORY[0x2A1C7C4A8](v149, v150);
    sub_29D63DA78(0, &qword_2A17ACF50, sub_29D62FD54, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    v328 = v144;
    v329 = v145;
    v330 = OpaqueTypeConformance2;
    v331 = v146;
    swift_getOpaqueTypeConformance2();
    sub_29D62FF44();
    v151 = v313;
    v152 = v292;
    sub_29D65F494();
    (*(v291 + 8))(v143, v152);
    v153 = v151;
    if ((v264 & 1) == 0 && v281 == v262)
    {
      (*(v304 + 16))(v278, v303 + v251, v321);
      if (sub_29D6229CC())
      {
        sub_29D65F5A4();
      }

      else
      {
        sub_29D65F5B4();
      }

      v154 = v296;
      v155 = v295;
      v156 = v294;
      sub_29D65FAC4();
      v256(v156, v257, v155);
      v254(v154, 1, 1, v255);
      sub_29D65F534();

      sub_29D63DC88(v154, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
      v252(v156, v155);
      sub_29D65FAC4();
      v328 = *&v136;
      sub_29D65F544();

      v157 = v266;
      sub_29D65F714();
      v158 = v267;
      v159 = v271;
      v160 = MEMORY[0x29EDB8700];
      sub_29D65F474();
      (*(v269 + 8))(v157, v159);
      v322 = sub_29D65FC04();
      v328 = v159;
      v329 = v160;
      v161 = swift_getOpaqueTypeConformance2();
      v162 = v274;
      v163 = v275;
      v164 = MEMORY[0x29EDBCA98];
      v165 = MEMORY[0x29EDBCA88];
      sub_29D65F484();
      (*(v268 + 8))(v158, v163);

      MEMORY[0x2A1C7C4A8](v166, v167);
      sub_29D65FC64();
      v328 = v163;
      v329 = v164;
      v330 = v161;
      v331 = v165;
      swift_getOpaqueTypeConformance2();
      v168 = v260;
      v169 = v259;
      v170 = v277;
      sub_29D65F464();
      v171 = v321;
      (*(v276 + 8))(v162, v170);
      (*(v272 + 8))(v169, v273);
      (*(v304 + 8))(v278, v171);
      (*(v318 + 32))(v279, v168, v319);
      v148 = 0;
      v153 = v313;
    }

    v172 = v279;
    (*(v318 + 56))(v279, v148, 1, v319);
    v173 = v298;
    v174 = *(v298 + 16);
    v175 = v297;
    v176 = v299;
    v174(v297, v153, v299);
    v177 = v305;
    sub_29D63DD00(v172, v305, &qword_2A17ACCD0, sub_29D62CC14);
    v178 = v306;
    v174(v306, v175, v176);
    sub_29D62D380();
    v179 = v308;
    v180 = *(v308 + 48);
    sub_29D63DD00(v177, &v178[v180], &qword_2A17ACCD0, sub_29D62CC14);
    v181 = v307;
    (*(v173 + 32))(v307, v178, v176);
    sub_29D63DD80(&v178[v180], v181 + *(v179 + 48), &qword_2A17ACCD0, sub_29D62CC14);
    sub_29D63DC88(v172, &qword_2A17ACCD0, sub_29D62CC14);
    v182 = *(v173 + 8);
    v182(v313, v176);
    sub_29D63DC88(v177, &qword_2A17ACCD0, sub_29D62CC14);
    v182(v175, v176);
    v183 = v317;
    sub_29D5DB0DC(v181, v317);
    v128 = *(v320 + 56);
    v17 = v309;
    (v128)(v183, 0, 1, v309);
    v77 = v296;
    v79 = v280;
    v111 = v303;
  }

  v184 = MEMORY[0x29EDB9CD0];
  if (*(v111 + 8))
  {
    v185 = v300;
    (v128)(v300, 1, 1, v17);
  }

  else
  {
    v186 = *v111;
    v187 = *(type metadata accessor for AudiogramLongitudinalPDFChartData() + 24);
    sub_29D65FAC4();
    v188 = *v184;
    v189 = v79[13];
    v190 = v294;
    LODWORD(v279) = v188;
    v191 = v295;
    v313 = (v79 + 13);
    v278 = v189;
    (v189)(v294);
    v192 = sub_29D65DCC4();
    v193 = *(v192 - 8);
    v194 = *(v193 + 56);
    v264 = v192;
    v262 = v194;
    v260 = (v193 + 56);
    (v194)(v77, 1, 1);
    v258 = v187;
    sub_29D65F534();

    sub_29D63DC88(v77, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
    v195 = v79[1];
    v280 = (v79 + 1);
    v259 = v195;
    v195(v190, v191);
    sub_29D65FAC4();
    v196 = -v186;
    v328 = *&v196;
    sub_29D65F544();

    sub_29D65FAC4();
    v328 = 1952867660;
    v329 = 0xE400000000000000;
    sub_29D65F544();

    v197 = v284;
    v198 = v321;
    sub_29D65F684();
    sub_29D65F9E4();
    v199 = v286;
    v200 = v288;
    v201 = MEMORY[0x29EDB86D0];
    sub_29D65F4A4();
    sub_29D62F6A8(&v328);
    (*(v285 + 8))(v197, v200);
    v202 = [objc_opt_self() hk_hearingHealthAudiogramLeftEarLineColor];
    v326 = sub_29D65FBD4();
    v322 = v200;
    v323 = v201;
    v203 = swift_getOpaqueTypeConformance2();
    v204 = v289;
    v205 = v290;
    v206 = MEMORY[0x29EDBCA98];
    v207 = MEMORY[0x29EDBCA88];
    sub_29D65F484();
    (*(v287 + 8))(v199, v205);

    MEMORY[0x2A1C7C4A8](v208, v209);
    sub_29D63DA78(0, &qword_2A17ACF50, sub_29D62FD54, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    v322 = v205;
    v323 = v206;
    v210 = v315;
    v324 = v203;
    v325 = v207;
    swift_getOpaqueTypeConformance2();
    sub_29D62FF44();
    v211 = v292;
    sub_29D65F494();
    (*(v291 + 8))(v204, v211);
    if (v265)
    {
      v212 = 1;
    }

    else
    {
      v212 = 1;
      if (v281 == v263)
      {
        v213 = v198;
        (*(v304 + 16))(v282, &v258[v303], v198);
        if (sub_29D6229CC())
        {
          sub_29D65F5B4();
        }

        else
        {
          sub_29D65F5A4();
        }

        sub_29D65FAC4();
        v214 = v294;
        v215 = v295;
        (v278)(v294, v279, v295);
        v216 = v296;
        v262(v296, 1, 1, v264);
        sub_29D65F534();

        sub_29D63DC88(v216, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
        v259(v214, v215);
        sub_29D65FAC4();
        v322 = *&v196;
        sub_29D65F544();

        v217 = v266;
        sub_29D65F714();
        v218 = v267;
        v219 = v271;
        v220 = MEMORY[0x29EDB8700];
        sub_29D65F474();
        (*(v269 + 8))(v217, v219);
        v326 = sub_29D65FC04();
        v322 = v219;
        v323 = v220;
        v221 = swift_getOpaqueTypeConformance2();
        v222 = v274;
        v223 = v275;
        v224 = MEMORY[0x29EDBCA98];
        v225 = MEMORY[0x29EDBCA88];
        sub_29D65F484();
        (*(v268 + 8))(v218, v223);

        MEMORY[0x2A1C7C4A8](v226, v227);
        sub_29D65FC64();
        v322 = v223;
        v323 = v224;
        v324 = v221;
        v325 = v225;
        swift_getOpaqueTypeConformance2();
        v228 = v261;
        v229 = v270;
        v230 = v277;
        sub_29D65F464();
        (*(v276 + 8))(v222, v230);
        (*(v272 + 8))(v229, v273);
        (*(v304 + 8))(v282, v213);
        (*(v318 + 32))(v283, v228, v319);
        v212 = 0;
        v210 = v315;
      }
    }

    v231 = v283;
    (*(v318 + 56))(v283, v212, 1, v319);
    v232 = v298;
    v233 = *(v298 + 16);
    v234 = v297;
    v235 = v299;
    v233(v297, v210, v299);
    v236 = v305;
    sub_29D63DD00(v231, v305, &qword_2A17ACCD0, sub_29D62CC14);
    v237 = v306;
    v233(v306, v234, v235);
    sub_29D62D380();
    v238 = v308;
    v239 = *(v308 + 48);
    sub_29D63DD00(v236, &v237[v239], &qword_2A17ACCD0, sub_29D62CC14);
    v240 = v307;
    (*(v232 + 32))(v307, v237, v235);
    sub_29D63DD80(&v237[v239], v240 + *(v238 + 48), &qword_2A17ACCD0, sub_29D62CC14);
    sub_29D63DC88(v231, &qword_2A17ACCD0, sub_29D62CC14);
    v241 = *(v232 + 8);
    v241(v315, v235);
    sub_29D63DC88(v236, &qword_2A17ACCD0, sub_29D62CC14);
    v241(v234, v235);
    v185 = v300;
    sub_29D5DB0DC(v240, v300);
    (*(v320 + 56))(v185, 0, 1, v309);
  }

  v242 = v317;
  v243 = v301;
  sub_29D63DD00(v317, v301, &qword_2A17ACF38, sub_29D63ACD8);
  v244 = v302;
  sub_29D63DD00(v185, v302, &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63AFA8();
  v245 = v310;
  sub_29D63DD00(v243, v310, &qword_2A17ACF38, sub_29D63ACD8);
  v246 = v311;
  v247 = *(v311 + 48);
  sub_29D63DD00(v244, v245 + v247, &qword_2A17ACF38, sub_29D63ACD8);
  v248 = v312;
  sub_29D63DD80(v245, v312, &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63DD80(v245 + v247, v248 + *(v246 + 48), &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63DC88(v185, &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63DC88(v242, &qword_2A17ACF38, sub_29D63ACD8);
  sub_29D63DC88(v244, &qword_2A17ACF38, sub_29D63ACD8);
  return sub_29D63DC88(v243, &qword_2A17ACF38, sub_29D63ACD8);
}

uint64_t sub_29D637930@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65DA44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  sub_29D602DBC(a1 & 1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_29D65FB54();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

double sub_29D6379CC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29D65FC14();
  v5 = objc_opt_self();
  v6 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a1 & 1) == 0)
  {
    v6 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v7 = [v5 *v6];
  v8 = sub_29D65FBD4();
  sub_29D65F9E4();
  v9 = sub_29D65FC64();
  v11 = v10;
  sub_29D65FC64();
  sub_29D65F9F4();
  *a2 = v16 * 0.5;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v8;
  *(a2 + 56) = 256;
  *(a2 + 64) = v4;
  *(a2 + 72) = 256;
  *(a2 + 80) = v9;
  *(a2 + 88) = v11;
  *(a2 + 96) = v13;
  *(a2 + 112) = v14;
  result = *&v15;
  *(a2 + 128) = v15;
  return result;
}

uint64_t sub_29D637B08(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v192 = a3;
  v164 = a2;
  v183 = sub_29D65F314();
  v168 = *(v183 - 8);
  v3 = *(v168 + 64);
  MEMORY[0x2A1C7C4A8](v183, v4);
  v180 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v165 = &v161 - v8;
  MEMORY[0x2A1C7C4A8](v9, v10);
  *&v162 = &v161 - v11;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v181 = &v161 - v14;
  v15 = sub_29D65DCA4();
  v16 = *(v15 - 8);
  v189 = v15;
  v190 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v188 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_29D65DA14();
  v171 = *(v172 - 1);
  v20 = *(v171 + 8);
  MEMORY[0x2A1C7C4A8](v172, v21);
  v170 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63AB20(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  v187 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v30 = &v161 - v29;
  MEMORY[0x2A1C7C4A8](v31, v32);
  v34 = &v161 - v33;
  v35 = sub_29D65DBC4();
  v191 = *(v35 - 8);
  v36 = v191;
  v37 = *(v191 + 64);
  MEMORY[0x2A1C7C4A8](v35, v38);
  v169 = &v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40, v41);
  v186 = &v161 - v42;
  MEMORY[0x2A1C7C4A8](v43, v44);
  v185 = &v161 - v45;
  MEMORY[0x2A1C7C4A8](v46, v47);
  v166 = &v161 - v48;
  MEMORY[0x2A1C7C4A8](v49, v50);
  v52 = &v161 - v51;
  MEMORY[0x2A1C7C4A8](v53, v54);
  v56 = &v161 - v55;
  MEMORY[0x2A1C7C4A8](v57, v58);
  v60 = &v161 - v59;
  v61 = *(type metadata accessor for AudiogramPDFLongitudinalChart.Model(0) + 20);
  sub_29D65D994();
  sub_29D65D974();
  v179 = v60;
  sub_29D65DC64();
  v163 = v36;
  v64 = *(v36 + 48);
  v62 = v36 + 48;
  v63 = v64;
  v65 = v64(v34, 1, v35);
  v184 = v56;
  if (v65 == 1)
  {
    v30 = v34;
LABEL_5:
    sub_29D63DC88(v30, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
    sub_29D63E0DC(&qword_2A17AD1D8, MEMORY[0x29EDB9BC8]);
    v69 = sub_29D660674();
    v71 = v70;
    v72 = sub_29D660674();
    v74 = v73;
    v75 = v180;
    sub_29D65F2E4();
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v76 = sub_29D65F2F4();
    v77 = sub_29D6601F4();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v192 = v72;
      v79 = v69;
      v80 = v78;
      v81 = swift_slowAlloc();
      v193 = v81;
      *v80 = 136446722;
      v82 = sub_29D6607A4();
      v84 = sub_29D64A1D0(v82, v83, &v193);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      v85 = sub_29D64A1D0(v79, v71, &v193);

      *(v80 + 14) = v85;
      *(v80 + 22) = 2080;
      v86 = sub_29D64A1D0(v192, v74, &v193);

      *(v80 + 24) = v86;
      _os_log_impl(&dword_29D5D7000, v76, v77, "[%{public}s] Unable to determine first and last date of the years with startDate:%s endDate:%s", v80, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v81, -1, -1);
      MEMORY[0x29ED63350](v80, -1, -1);

      (*(v168 + 8))(v180, v183);
    }

    else
    {

      (*(v168 + 8))(v75, v183);
    }

    v87 = *(v191 + 8);
    goto LABEL_9;
  }

  v66 = v34;
  v67 = *(v191 + 32);
  v68 = v191 + 32;
  v67(v52, v66, v35);
  Date.lastDateOfTheYear(calendar:)(v30);
  v182 = v63;
  if (v63(v30, 1, v35) == 1)
  {
    (*(v191 + 8))(v52, v35);
    goto LABEL_5;
  }

  v178 = v62;
  v90 = v166;
  v167 = v68;
  v177 = v67;
  v67(v166, v30, v35);
  sub_29D63AB20(0, &qword_2A17AD1E0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v91 = v190;
  v92 = *(v190 + 72);
  v93 = (*(v190 + 80) + 32) & ~*(v190 + 80);
  v94 = swift_allocObject();
  v161 = xmmword_29D661D90;
  *(v94 + 16) = xmmword_29D661D90;
  v95 = *(v91 + 104);
  v176 = *MEMORY[0x29EDB9CD0];
  v96 = v189;
  v174 = v95;
  v175 = v91 + 104;
  v95(v94 + v93);
  sub_29D63D4DC(v94);
  swift_setDeallocating();
  v97 = *(v91 + 8);
  v190 = v91 + 8;
  v173 = v97;
  v97((v94 + v93), v96);
  swift_deallocClassInstance();
  v98 = v170;
  sub_29D65DC54();

  v99 = sub_29D65D9F4();
  v101 = v100;
  result = (*(v171 + 1))(v98, v172);
  if (v101)
  {
    sub_29D63E0DC(&qword_2A17AD1D8, MEMORY[0x29EDB9BC8]);
    v102 = sub_29D660674();
    v104 = v103;
    v105 = sub_29D660674();
    v107 = v106;
    v108 = v165;
    sub_29D65F2E4();
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v109 = sub_29D65F2F4();
    v110 = sub_29D6601F4();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v180 = v52;
      v192 = v105;
      v112 = v111;
      v113 = v102;
      v114 = swift_slowAlloc();
      v193 = v114;
      *v112 = 136446722;
      v115 = sub_29D6607A4();
      v117 = sub_29D64A1D0(v115, v116, &v193);

      *(v112 + 4) = v117;
      *(v112 + 12) = 2080;
      v118 = sub_29D64A1D0(v113, v104, &v193);

      *(v112 + 14) = v118;
      *(v112 + 22) = 2080;
      v119 = sub_29D64A1D0(v192, v107, &v193);

      *(v112 + 24) = v119;
      _os_log_impl(&dword_29D5D7000, v109, v110, "[%{public}s] Unable to years between firstDate:%s lastDate:%s", v112, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v114, -1, -1);
      v52 = v180;
      MEMORY[0x29ED63350](v112, -1, -1);

      (*(v168 + 8))(v165, v183);
    }

    else
    {

      (*(v168 + 8))(v108, v183);
    }

    v87 = *(v191 + 8);
    v87(v166, v35);
    v151 = v52;
LABEL_35:
    v87(v151, v35);
LABEL_9:
    v87(v184, v35);
    v87(v179, v35);
    return MEMORY[0x29EDCA190];
  }

  if (v99 < 1)
  {
    v152 = v52;
    v153 = v162;
    sub_29D65F2E4();
    v154 = sub_29D65F2F4();
    v155 = sub_29D6601F4();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v193 = v157;
      *v156 = 136446210;
      v158 = sub_29D6607A4();
      v160 = sub_29D64A1D0(v158, v159, &v193);

      *(v156 + 4) = v160;
      v90 = v166;
      _os_log_impl(&dword_29D5D7000, v154, v155, "[%{public}s] 0 years between key dates found.", v156, 0xCu);
      sub_29D5DF1C4(v157);
      MEMORY[0x29ED63350](v157, -1, -1);
      MEMORY[0x29ED63350](v156, -1, -1);
    }

    (*(v168 + 8))(v153, v183);
    v87 = *(v191 + 8);
    v87(v90, v35);
    v151 = v152;
    goto LABEL_35;
  }

  v180 = v52;
  v120 = __OFADD__(v99, v164 & 1);
  v121 = v99 + (v164 & 1);
  if (v120)
  {
LABEL_36:
    __break(1u);
  }

  else
  {
    sub_29D63AB20(0, &qword_2A17AD1E8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E90]);
    v122 = v191;
    v123 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v165 = *(v191 + 72);
    v124 = swift_allocObject();
    *(v124 + 16) = v161;
    v126 = *(v122 + 16);
    v125 = v122 + 16;
    v88 = v124;
    v164 = v123;
    v171 = v126;
    result = (v126)(v124 + v123, v180, v35);
    v128 = v181;
    if (v121 >= 1)
    {
      v172 = (v163 + 8);
      v168 += 8;
      v129 = 1;
      *&v127 = 136446722;
      v162 = v127;
      v191 = v125;
      v170 = v121;
      while (1)
      {
        v130 = v188;
        v131 = v189;
        v174(v188, v176, v189);
        v132 = v187;
        v133 = v180;
        sub_29D65DC84();
        v173(v130, v131);
        if (v182(v132, 1, v35) == 1)
        {
          sub_29D63DC88(v132, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
          sub_29D65F2E4();
          v134 = v169;
          v171(v169, v133, v35);
          v135 = v128;
          v136 = sub_29D65F2F4();
          v137 = sub_29D6601F4();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v193 = v163;
            *v138 = v162;
            v139 = sub_29D6607A4();
            v141 = sub_29D64A1D0(v139, v140, &v193);

            *(v138 + 4) = v141;
            *(v138 + 12) = 2080;
            sub_29D63E0DC(&qword_2A17AD1D8, MEMORY[0x29EDB9BC8]);
            v142 = sub_29D660674();
            v144 = v143;
            v145 = *v172;
            (*v172)(v134, v35);
            v146 = sub_29D64A1D0(v142, v144, &v193);

            *(v138 + 14) = v146;
            *(v138 + 22) = 2048;
            *(v138 + 24) = v129;
            _os_log_impl(&dword_29D5D7000, v136, v137, "[%{public}s] Unable to determine first date of the year for date:%s + years:%ld", v138, 0x20u);
            v147 = v163;
            swift_arrayDestroy();
            MEMORY[0x29ED63350](v147, -1, -1);
            MEMORY[0x29ED63350](v138, -1, -1);

            v128 = v181;
            result = (*v168)(v181, v183);
          }

          else
          {

            v145 = *v172;
            (*v172)(v134, v35);
            result = (*v168)(v135, v183);
            v128 = v135;
          }
        }

        else
        {
          v148 = v185;
          v177(v185, v132, v35);
          v171(v186, v148, v35);
          v150 = v88[2];
          v149 = v88[3];
          if (v150 >= v149 >> 1)
          {
            v88 = sub_29D65BA9C(v149 > 1, v150 + 1, 1, v88);
          }

          v145 = *v172;
          (*v172)(v185, v35);
          v88[2] = v150 + 1;
          result = (v177)(v88 + v164 + v150 * v165, v186, v35);
          v128 = v181;
        }

        if (v170 == v129)
        {
          break;
        }

        v120 = __OFADD__(v129++, 1);
        if (v120)
        {
          __break(1u);
          goto LABEL_36;
        }
      }

      v145(v166, v35);
      v145(v180, v35);
      v145(v184, v35);
      v145(v179, v35);
      return v88;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D638D14@<X0>(uint64_t a1@<X8>)
{
  v129 = a1;
  v3 = sub_29D65F5E4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v118 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65F604();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v114 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_29D65DB34();
  v106 = *(v107 - 8);
  v11 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v107, v12);
  v105 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29D65DB44();
  v104 = *(v109 - 8);
  v14 = *(v104 + 64);
  MEMORY[0x2A1C7C4A8](v109, v15);
  v103 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v108 = &v103 - v19;
  sub_29D63DF60(0, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v115 = v20;
  v111 = *(v20 - 1);
  v21 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v110 = &v103 - v23;
  sub_29D63B710();
  v117 = v24;
  v116 = *(v24 - 8);
  v25 = *(v116 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v113 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63B614();
  v127 = v28;
  v126 = *(v28 - 8);
  v29 = *(v126 + 64);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v112 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63AB20(0, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32 - 8, v34);
  v128 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v124 = &v103 - v38;
  v39 = sub_29D65F654();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v39 - 8, v41);
  v125 = sub_29D65F674();
  v121 = *(v125 - 8);
  v42 = *(v121 + 64);
  MEMORY[0x2A1C7C4A8](v125, v43);
  v123 = &v103 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45, v46);
  v130 = &v103 - v47;
  v48 = sub_29D65F444();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v48, v51);
  v53 = &v103 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
  v122 = v54;
  v120 = *(v54 - 8);
  v55 = *(v120 + 64);
  MEMORY[0x2A1C7C4A8](v54, v56);
  v119 = &v103 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v58, v59);
  v131 = &v103 - v60;
  v61 = sub_29D65F704();
  v62 = sub_29D65F704();
  v63 = sub_29D65F6F4();
  v64 = v63 - 1;
  if (__OFSUB__(v63, 1))
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_17;
  }

  v65 = v62 == v64 || v61 == 0;
  LODWORD(v61) = v65;
  v2 = 0x2A17AC000uLL;
  v1 = 0x2A17AC000uLL;
  if (v65)
  {
    if (qword_2A17AC078 != -1)
    {
      swift_once();
    }

    v66 = &xmmword_2A17AD738;
  }

  else
  {
    if (qword_2A17AC080 != -1)
    {
      swift_once();
    }

    v66 = &xmmword_2A17AD760;
  }

  v67 = *v66;
  v68 = *(v66 + 2);
  v69 = *(v66 + 3);
  v70 = *(v66 + 4);
  v71 = *(v66 + 1);
  v72 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v141 = v67;
  v142 = v71;
  v143 = v68;
  v144 = v72;
  v145 = v70;
  sub_29D65F434();
  if (qword_2A17AC070 != -1)
  {
    goto LABEL_33;
  }

LABEL_17:
  v136 = qword_2A17AD730;
  sub_29D65F624();
  (*(v49 + 8))(v53, v48);
  if (v61)
  {
    if (*(v1 + 120) != -1)
    {
      swift_once();
    }

    v73 = &xmmword_2A17AD738;
  }

  else
  {
    if (*(v2 + 128) != -1)
    {
      swift_once();
    }

    v73 = &xmmword_2A17AD760;
  }

  v74 = v127;
  v75 = *v73;
  v76 = *(v73 + 2);
  v77 = *(v73 + 3);
  v78 = *(v73 + 4);
  v79 = *(v73 + 1);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65F644();
  v136 = v75;
  v137 = v79;
  v138 = v76;
  v139 = v77;
  v140 = v78;
  v80 = sub_29D65F664();
  if (v62 == v64)
  {
    v81 = 1;
    v82 = v126;
    v83 = v124;
  }

  else
  {
    v84 = v103;
    MEMORY[0x29ED5FCB0](v80);
    v85 = v105;
    sub_29D65DB24();
    sub_29D65DB14();
    (*(v106 + 8))(v85, v107);
    (*(v104 + 8))(v84, v109);
    sub_29D65FC94();
    sub_29D65F5F4();
    sub_29D65F5D4();
    sub_29D63E0DC(&qword_2A17AD1C8, MEMORY[0x29EDB9BB0]);
    v86 = v110;
    sub_29D65F504();
    if (qword_2A17AC068 != -1)
    {
      swift_once();
    }

    v87 = sub_29D63B7C0();
    v88 = v113;
    v89 = v115;
    sub_29D65F634();
    (*(v111 + 8))(v86, v89);
    v83 = v124;
    if (qword_2A17AC088 != -1)
    {
      swift_once();
    }

    v135 = qword_2A17AD788;
    v132 = v89;
    v133 = v87;
    swift_getOpaqueTypeConformance2();
    v90 = v112;
    v91 = v117;
    sub_29D65F624();
    (*(v116 + 8))(v88, v91);
    v82 = v126;
    (*(v126 + 32))(v83, v90, v74);
    v81 = 0;
  }

  (*(v82 + 56))(v83, v81, 1, v74);
  v92 = v120;
  v93 = v119;
  v94 = v122;
  (*(v120 + 16))(v119, v131, v122);
  v132 = v93;
  v95 = v121;
  v96 = v123;
  v97 = v130;
  v98 = v125;
  (*(v121 + 16))(v123, v130, v125);
  v133 = v96;
  v99 = v128;
  sub_29D63DD00(v83, v128, &qword_2A17AD100, sub_29D63B614);
  v134 = v99;
  sub_29D632B00(&v132, v129);
  sub_29D63DC88(v83, &qword_2A17AD100, sub_29D63B614);
  v100 = *(v95 + 8);
  v100(v97, v98);
  v101 = *(v92 + 8);
  v101(v131, v94);
  sub_29D63DC88(v99, &qword_2A17AD100, sub_29D63B614);
  v100(v96, v98);
  return (v101)(v93, v94);
}

uint64_t sub_29D639A54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v85[1] = a1;
  v101 = a2;
  sub_29D63C910();
  v100 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v99 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D65F5E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v85[2] = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65F604();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  sub_29D63C0F4();
  v90 = v13;
  v87 = *(v13 - 8);
  v14 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v86 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63C040();
  v92 = v17;
  v91 = *(v17 - 8);
  v18 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v89 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63BF40();
  v98 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v88 = v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D63AB20(0, &qword_2A17AD160, sub_29D63BF40, MEMORY[0x29EDC9C68]);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26 - 8, v28);
  v97 = v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v96 = v85 - v32;
  v33 = sub_29D65F444();
  v34 = *(v33 - 8);
  v35 = *(v34 + 8);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D62DA2C(0, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
  v95 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v39, v42);
  v94 = v85 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v44, v45);
  v47 = v85 - v46;
  if (!sub_29D65F704())
  {
    goto LABEL_4;
  }

  v48 = sub_29D65F704();
  v49 = sub_29D65F6F4();
  if (__OFSUB__(v49, 1))
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  if (v48 != v49 - 1)
  {
    if (qword_2A17AC080 != -1)
    {
      swift_once();
    }

    v50 = &xmmword_2A17AD760;
  }

  else
  {
LABEL_4:
    if (qword_2A17AC078 != -1)
    {
      swift_once();
    }

    v50 = &xmmword_2A17AD738;
  }

  v51 = *v50;
  v52 = *(v50 + 2);
  v53 = *(v50 + 3);
  v54 = *(v50 + 4);
  v55 = *(v50 + 1);
  v56 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v105 = v51;
  v106 = v55;
  v107 = v52;
  v108 = v56;
  v109 = v54;
  sub_29D65F434();
  if (qword_2A17AC070 != -1)
  {
    swift_once();
  }

  v102 = qword_2A17AD730;
  sub_29D65F624();
  (*(v34 + 1))(v38, v33);
  sub_29D65F6E4();
  if (v103)
  {
    v57 = 1;
    v58 = v96;
    v59 = v98;
    goto LABEL_18;
  }

  v60 = sub_29D65FC84();
  MEMORY[0x2A1C7C4A8](v60, v61);
  sub_29D65F5F4();
  sub_29D65F5D4();
  sub_29D63DA78(0, &qword_2A17AD180, sub_29D63C190, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v83 = v62;
  v84 = sub_29D63C240();
  v81 = sub_29D63C9E8;
  v82 = &v79;
  v80 = 0;
  v79 = 0;
  v34 = v86;
  sub_29D65F514();
  if (qword_2A17AC068 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v63 = sub_29D63E0DC(&qword_2A17AD190, sub_29D63C0F4);
  v64 = v89;
  v65 = v90;
  sub_29D65F634();
  (*(v87 + 8))(v34, v65);
  if (qword_2A17AC088 != -1)
  {
    swift_once();
  }

  v103 = v63;
  v104 = qword_2A17AD788;
  v102 = v65;
  swift_getOpaqueTypeConformance2();
  v66 = v88;
  v67 = v92;
  sub_29D65F624();
  (*(v91 + 8))(v64, v67);
  v58 = v96;
  v59 = v98;
  (*(v22 + 32))(v96, v66, v98);
  v57 = 0;
LABEL_18:
  (*(v22 + 56))(v58, v57, 1, v59);
  v68 = *(v40 + 16);
  v69 = v94;
  v93 = v47;
  v70 = v47;
  v71 = v95;
  v68(v94, v70, v95);
  v72 = v97;
  sub_29D63DD00(v58, v97, &qword_2A17AD160, sub_29D63BF40);
  v73 = v99;
  v68(v99, v69, v71);
  sub_29D63C3C4();
  v74 = v100;
  v75 = *(v100 + 48);
  sub_29D63DD00(v72, &v73[v75], &qword_2A17AD160, sub_29D63BF40);
  v76 = v101;
  (*(v40 + 32))(v101, v73, v71);
  sub_29D63DD80(&v73[v75], v76 + *(v74 + 48), &qword_2A17AD160, sub_29D63BF40);
  sub_29D63DC88(v58, &qword_2A17AD160, sub_29D63BF40);
  v77 = *(v40 + 8);
  v77(v93, v71);
  sub_29D63DC88(v72, &qword_2A17AD160, sub_29D63BF40);
  return (v77)(v69, v71);
}

double sub_29D63A4B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *&v14 = sub_29D63D7F0(a1, -a3);
  *(&v14 + 1) = v4;
  sub_29D60C02C();
  v5 = sub_29D65FB64();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  sub_29D65FC74();
  sub_29D65F9F4();
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  result = *&v16;
  *(a2 + 80) = v16;
  return result;
}

uint64_t sub_29D63A580()
{
  sub_29D63C8A8(v0 + OBJC_IVAR____TtC16HearingAppPlugin29AudiogramPDFLongitudinalChart_chartModel, type metadata accessor for AudiogramPDFLongitudinalChart.Model);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D63A620()
{
  result = type metadata accessor for AudiogramPDFLongitudinalChart.Model(319);
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

void sub_29D63A704()
{
  sub_29D63AB20(319, &qword_2A17AD080, type metadata accessor for AudiogramLongitudinalPDFChartData, MEMORY[0x29EDC9A40]);
  if (v0 <= 0x3F)
  {
    sub_29D65D9A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D63A7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D63E0DC(&qword_2A17AC340, type metadata accessor for AudiogramPDFLongitudinalChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D63A8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D63E0DC(&qword_2A17AC340, type metadata accessor for AudiogramPDFLongitudinalChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29D63A930(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D63E0DC(&qword_2A17AD090, type metadata accessor for AudiogramPDFLongitudinalChart);
  *v4 = v1;
  v4[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D63AAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D63AB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D63ABCC()
{
  if (!qword_2A17AD0A0)
  {
    sub_29D62F978();
    sub_29D62CD58();
    v0 = sub_29D65F454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD0A0);
    }
  }
}

void sub_29D63AC40()
{
  if (!qword_2A17ACF30)
  {
    sub_29D63AB20(255, &qword_2A17ACF38, sub_29D63ACD8, MEMORY[0x29EDC9C68]);
    v0 = sub_29D65F454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACF30);
    }
  }
}

void sub_29D63ACD8()
{
  if (!qword_2A17ACF40)
  {
    sub_29D62FBE8();
    sub_29D63AB20(255, &qword_2A17ACCD0, sub_29D62CC14, MEMORY[0x29EDC9C68]);
    v0 = sub_29D65F454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACF40);
    }
  }
}

unint64_t sub_29D63AD7C()
{
  result = qword_2A17ACF90;
  if (!qword_2A17ACF90)
  {
    sub_29D63AB20(255, &qword_2A17ACF20, sub_29D62FA90, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF90);
  }

  return result;
}

unint64_t sub_29D63AE04()
{
  result = qword_2A17AD0A8;
  if (!qword_2A17AD0A8)
  {
    sub_29D63ABCC();
    sub_29D63AF30();
    sub_29D62DA2C(255, &qword_2A17ACCF0, MEMORY[0x29EDB86E8]);
    sub_29D65F6B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD0A8);
  }

  return result;
}

unint64_t sub_29D63AF30()
{
  result = qword_2A17ACF98;
  if (!qword_2A17ACF98)
  {
    sub_29D62F978();
    sub_29D630018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACF98);
  }

  return result;
}

unint64_t sub_29D63AFA8()
{
  result = qword_2A17ACFA8;
  if (!qword_2A17ACFA8)
  {
    sub_29D63AB20(255, &qword_2A17ACF38, sub_29D63ACD8, MEMORY[0x29EDC9C68]);
    sub_29D6300F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFA8);
  }

  return result;
}

void sub_29D63B050()
{
  if (!qword_2A17AD0B0)
  {
    sub_29D63AB84(255);
    sub_29D65FAF4();
    v0 = sub_29D65FA14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD0B0);
    }
  }
}

void sub_29D63B0B8()
{
  if (!qword_2A17AD0B8)
  {
    sub_29D63B050();
    sub_29D63B15C();
    sub_29D63B1F0();
    sub_29D63B2D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD0B8);
    }
  }
}

void sub_29D63B15C()
{
  if (!qword_2A17AD0C0)
  {
    sub_29D65DBC4();
    sub_29D63E0DC(&qword_2A17AD0C8, MEMORY[0x29EDB9BC8]);
    v0 = sub_29D65FF04();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD0C0);
    }
  }
}

unint64_t sub_29D63B1F0()
{
  result = qword_2A17AD0D0;
  if (!qword_2A17AD0D0)
  {
    sub_29D63B050();
    sub_29D63E0DC(&qword_2A17AD0D8, sub_29D63AB84);
    sub_29D63E0DC(&qword_2A17ACD50, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD0D0);
  }

  return result;
}

unint64_t sub_29D63B2D0()
{
  result = qword_2A17AD0E0;
  if (!qword_2A17AD0E0)
  {
    sub_29D63B15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD0E0);
  }

  return result;
}

void sub_29D63B340()
{
  if (!qword_2A17AD0E8)
  {
    sub_29D63B0B8();
    sub_29D63B464(255);
    sub_29D63B050();
    sub_29D63B15C();
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD0E8);
    }
  }
}

void sub_29D63B4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D63B52C()
{
  if (!qword_2A17AD0F8)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
    sub_29D65F674();
    sub_29D63AB20(255, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
    v0 = sub_29D65F454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD0F8);
    }
  }
}

void sub_29D63B614()
{
  if (!qword_2A17AD108)
  {
    sub_29D63B710();
    sub_29D63DF60(255, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D63B7C0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD108);
    }
  }
}

void sub_29D63B710()
{
  if (!qword_2A17AD110)
  {
    sub_29D63DF60(255, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D63B7C0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD110);
    }
  }
}

unint64_t sub_29D63B7C0()
{
  result = qword_2A17AD120;
  if (!qword_2A17AD120)
  {
    sub_29D63DF60(255, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD120);
  }

  return result;
}

unint64_t sub_29D63B844()
{
  result = qword_2A17AD128;
  if (!qword_2A17AD128)
  {
    sub_29D63B52C();
    sub_29D65F444();
    swift_getOpaqueTypeConformance2();
    sub_29D63B918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD128);
  }

  return result;
}

unint64_t sub_29D63B918()
{
  result = qword_2A17AD130;
  if (!qword_2A17AD130)
  {
    sub_29D63AB20(255, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
    sub_29D63B710();
    sub_29D63DF60(255, &qword_2A17AD118, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D63B7C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD130);
  }

  return result;
}

void sub_29D63BA68()
{
  if (!qword_2A17AD140)
  {
    sub_29D63B340();
    sub_29D63DF60(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D63B0B8();
    sub_29D63B464(255);
    sub_29D63B050();
    sub_29D63B15C();
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464);
    swift_getOpaqueTypeConformance2();
    sub_29D62D6CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD140);
    }
  }
}

void sub_29D63BC08()
{
  if (!qword_2A17AD148)
  {
    sub_29D63BA68();
    sub_29D63BE1C(255);
    sub_29D63B340();
    sub_29D63DF60(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D63B0B8();
    sub_29D63B464(255);
    sub_29D63B050();
    sub_29D63B15C();
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464);
    swift_getOpaqueTypeConformance2();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD1A8, sub_29D63BE1C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD148);
    }
  }
}

void sub_29D63BE64()
{
  if (!qword_2A17AD158)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
    sub_29D63AB20(255, &qword_2A17AD160, sub_29D63BF40, MEMORY[0x29EDC9C68]);
    v0 = sub_29D65F454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD158);
    }
  }
}

void sub_29D63BF40()
{
  if (!qword_2A17AD168)
  {
    sub_29D63C040();
    sub_29D63C0F4();
    sub_29D63E0DC(&qword_2A17AD190, sub_29D63C0F4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD168);
    }
  }
}

void sub_29D63C040()
{
  if (!qword_2A17AD170)
  {
    sub_29D63C0F4();
    sub_29D63E0DC(&qword_2A17AD190, sub_29D63C0F4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD170);
    }
  }
}

void sub_29D63C0F4()
{
  if (!qword_2A17AD178)
  {
    sub_29D63DA78(255, &qword_2A17AD180, sub_29D63C190, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D63C240();
    v0 = sub_29D65F524();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD178);
    }
  }
}

void sub_29D63C190()
{
  if (!qword_2A17ACDB0)
  {
    sub_29D63C1F0();
    v0 = sub_29D65FA14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACDB0);
    }
  }
}

void sub_29D63C1F0()
{
  if (!qword_2A17ACDB8)
  {
    v0 = sub_29D65FAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17ACDB8);
    }
  }
}

unint64_t sub_29D63C240()
{
  result = qword_2A17AD188;
  if (!qword_2A17AD188)
  {
    sub_29D63DA78(255, &qword_2A17AD180, sub_29D63C190, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D62DF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD188);
  }

  return result;
}

unint64_t sub_29D63C2F8()
{
  result = qword_2A17AD198;
  if (!qword_2A17AD198)
  {
    sub_29D63BE64();
    sub_29D65F444();
    swift_getOpaqueTypeConformance2();
    sub_29D63C3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD198);
  }

  return result;
}

unint64_t sub_29D63C3C4()
{
  result = qword_2A17AD1A0;
  if (!qword_2A17AD1A0)
  {
    sub_29D63AB20(255, &qword_2A17AD160, sub_29D63BF40, MEMORY[0x29EDC9C68]);
    sub_29D63C040();
    sub_29D63C0F4();
    sub_29D63E0DC(&qword_2A17AD190, sub_29D63C0F4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD1A0);
  }

  return result;
}

void sub_29D63C518()
{
  if (!qword_2A17AD1B0)
  {
    sub_29D63BC08();
    sub_29D65F574();
    sub_29D63BA68();
    sub_29D63BE1C(255);
    sub_29D63B340();
    sub_29D63DF60(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D63B0B8();
    sub_29D63B464(255);
    sub_29D63B050();
    sub_29D63B15C();
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464);
    swift_getOpaqueTypeConformance2();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD1A8, sub_29D63BE1C);
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17ACE90, MEMORY[0x29EDB8630]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD1B0);
    }
  }
}

uint64_t sub_29D63C7C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D635218(v1);
}

void sub_29D63C810()
{
  if (!qword_2A17AD1B8)
  {
    sub_29D63C518();
    sub_29D63AB20(255, &qword_2A17ACEA0, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    v0 = sub_29D65FA14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD1B8);
    }
  }
}

uint64_t sub_29D63C8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D63C910()
{
  if (!qword_2A17AD1C0)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
    sub_29D63AB20(255, &qword_2A17AD160, sub_29D63BF40, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD1C0);
    }
  }
}

uint64_t sub_29D63C9F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D63DF60(0, &qword_2A1A1E6C8, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0], MEMORY[0x29EDC9D70]);
    v3 = sub_29D660514();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_29D660724();
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D65FFA4();
      result = sub_29D660744();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_29D660694();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA1A0];
  }

  return result;
}

uint64_t sub_29D63CBA4(uint64_t a1)
{
  v2 = sub_29D65DD54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_29D63DFB4();
    v12 = sub_29D660514();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_29D63E0DC(&qword_2A1A1EA58, MEMORY[0x29EDC3798]);
      v20 = sub_29D65FED4();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_29D63E0DC(&qword_2A1A1E550, MEMORY[0x29EDC3798]);
          v27 = sub_29D65FF14();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D63CEDC(unint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_29D6604B4();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_29D63DED4(0, a2, a3, a4, a5);
      v7 = sub_29D660514();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_29D6604B4();
      if (!v9)
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

  v7 = MEMORY[0x29EDCA1A0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x29ED62900](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_29D660364();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_29D5DF448(0, a3, a4);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_29D660374();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        sub_29D65EE94();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
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
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_29D660364();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_29D5DF448(0, a3, a4);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_29D660374();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_29D63D1C8(uint64_t a1)
{
  v2 = sub_29D65E844();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_29D63E048();
    v12 = sub_29D660514();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_29D63E0DC(&qword_2A17AD238, MEMORY[0x29EDC2148]);
      v20 = sub_29D65FED4();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v7, *(v12 + 48) + v22 * v17, v2);
          sub_29D63E0DC(&qword_2A17AD240, MEMORY[0x29EDC2148]);
          v27 = sub_29D65FF14();
          v28 = *v18;
          (*v18)(v7, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29D63D4DC(uint64_t a1)
{
  v2 = sub_29D65DCA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_29D63D9E4();
    v12 = sub_29D660514();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_29D63E0DC(&qword_2A17AD1F8, MEMORY[0x29EDB9D00]);
      v20 = sub_29D65FED4();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v7, *(v12 + 48) + v22 * v17, v2);
          sub_29D63E0DC(&qword_2A17AD200, MEMORY[0x29EDB9D00]);
          v27 = sub_29D65FF14();
          v28 = *v18;
          (*v18)(v7, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29D63D7F0(uint64_t result, double a2)
{
  if (result)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a2 > -9.22337204e18)
      {
        if (a2 < 9.22337204e18)
        {
          v2 = sub_29D660674();
          MEMORY[0x29ED62350](0x4C48426420, 0xE500000000000000);
          return v2;
        }

        goto LABEL_14;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 < 9.22337204e18)
  {
    return sub_29D660674();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_29D63D8F4()
{
  if (!qword_2A17AD1D0)
  {
    sub_29D62DA2C(255, &qword_2A17ACD78, MEMORY[0x29EDB8550]);
    sub_29D65F674();
    sub_29D63AB20(255, &qword_2A17AD100, sub_29D63B614, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17AD1D0);
    }
  }
}

void sub_29D63D9E4()
{
  if (!qword_2A17AD1F0)
  {
    sub_29D65DCA4();
    sub_29D63E0DC(&qword_2A17AD1F8, MEMORY[0x29EDB9D00]);
    v0 = sub_29D660524();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD1F0);
    }
  }
}

void sub_29D63DA78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D63DAF8(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  sub_29D62FA90();
  return v4(v5, &a1[*(v6 + 48)]);
}

void sub_29D63DB54()
{
  if (!qword_2A17AD210)
  {
    sub_29D63AB20(255, &qword_2A17ACF38, sub_29D63ACD8, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD210);
    }
  }
}

void sub_29D63DBE8()
{
  if (!qword_2A17AD218)
  {
    sub_29D62FBE8();
    sub_29D63AB20(255, &qword_2A17ACCD0, sub_29D62CC14, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD218);
    }
  }
}

uint64_t sub_29D63DC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D63AB20(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D63DD00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D63AB20(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D63DD80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D63AB20(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_29D63DE08()
{
  if (!qword_2A17AD228)
  {
    sub_29D65DBC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD228);
    }
  }
}

uint64_t sub_29D63DE70(uint64_t a1, uint64_t a2)
{
  sub_29D63DE08();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D63DED4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D5DF448(255, a3, a4);
    sub_29D5F3048(a5, a3, a4);
    v9 = sub_29D660524();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D63DF60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_29D63DFB4()
{
  if (!qword_2A1A1E6D0)
  {
    sub_29D65DD54();
    sub_29D63E0DC(&qword_2A1A1EA58, MEMORY[0x29EDC3798]);
    v0 = sub_29D660524();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E6D0);
    }
  }
}

void sub_29D63E048()
{
  if (!qword_2A17AD230)
  {
    sub_29D65E844();
    sub_29D63E0DC(&qword_2A17AD238, MEMORY[0x29EDC2148]);
    v0 = sub_29D660524();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD230);
    }
  }
}

uint64_t sub_29D63E0DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D63E124()
{
  result = qword_2A17AD248;
  if (!qword_2A17AD248)
  {
    sub_29D63C810();
    sub_29D63BC08();
    sub_29D65F574();
    sub_29D63BA68();
    sub_29D63BE1C(255);
    sub_29D63B340();
    sub_29D63DF60(255, &qword_2A17ACD38, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D63B0B8();
    sub_29D63B464(255);
    sub_29D63B050();
    sub_29D63B15C();
    sub_29D63B1F0();
    sub_29D63B2D0();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD138, sub_29D63B464);
    swift_getOpaqueTypeConformance2();
    sub_29D62D6CC();
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17AD1A8, sub_29D63BE1C);
    swift_getOpaqueTypeConformance2();
    sub_29D63E0DC(&qword_2A17ACE90, MEMORY[0x29EDB8630]);
    swift_getOpaqueTypeConformance2();
    sub_29D63E3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD248);
  }

  return result;
}

unint64_t sub_29D63E3E0()
{
  result = qword_2A17ACFC8;
  if (!qword_2A17ACFC8)
  {
    sub_29D63AB20(255, &qword_2A17ACEA0, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17ACFC8);
  }

  return result;
}

uint64_t *AudiogramAllDataViewModel.__allocating_init(healthStore:)(void *a1)
{
  v2 = type metadata accessor for AudiogramAllDataViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_29D641F68(a1, 1);

  return v5;
}

uint64_t type metadata accessor for AudiogramAllDataViewModel()
{
  result = qword_2A17AD258;
  if (!qword_2A17AD258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudiogramAllDataViewModel.unitTest_didPublishAudiograms.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_29D5FB9B0(v3);
  return v3;
}

uint64_t AudiogramAllDataViewModel.unitTest_didPublishAudiograms.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_29D5FB9C0(v6);
}

uint64_t sub_29D63E62C(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = *a1;
  swift_unknownObjectRetain();
  return sub_29D65EE94();
}

uint64_t AudiogramAllDataViewModel.dataSource.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_29D63E6E8(uint64_t a1, void *a2)
{
  sub_29D642748();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D65DC14();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65DC04();
  v17 = sub_29D65DBD4();
  v19 = v18;
  (*(v12 + 8))(v16, v11);
  v25[1] = a1;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = v17;
  v21 = v25[0];
  v20[4] = v19;
  v20[5] = v21;
  sub_29D5DE590();
  sub_29D6428E8(0, &qword_2A17AC5A8, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
  sub_29D642830(&qword_2A17AD2F0, sub_29D5DE590);
  v22 = a2;
  sub_29D65F954();

  sub_29D642830(&qword_2A17AD2F8, sub_29D642748);
  sub_29D65F924();
  (*(v6 + 8))(v10, v5);
  sub_29D65ECB4();
  sub_29D65E6B4();

  sub_29D5FA930();
  sub_29D642830(&qword_2A17AC5C0, sub_29D5FA930);
  v23 = sub_29D65E6C4();

  sub_29D642830(&qword_2A17AC5C8, sub_29D5FA89C);
  return v23;
}

uint64_t sub_29D63EA88@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43[2] = a3;
  v43[3] = a4;
  v47 = a6;
  v9 = sub_29D65E904();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v44 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6428E8(0, &qword_2A17AD300, MEMORY[0x29EDC23F8], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = v43 - v16;
  v18 = sub_29D65E9E4();
  v51 = *(v18 - 8);
  v19 = *(v51 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v56 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v50 = v43 - v24;
  v25 = *a1;
  sub_29D6600C4();
  v43[1] = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v25 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D6604B4())
  {
    v27 = 0;
    v58 = 0;
    v54 = v25 & 0xFFFFFFFFFFFFFF8;
    v55 = v25 & 0xC000000000000001;
    v52 = (v51 + 32);
    v53 = (v51 + 48);
    v28 = MEMORY[0x29EDCA190];
    v48 = a2;
    v49 = a5;
    v57 = v18;
    while (1)
    {
      if (v55)
      {
        v29 = v25;
        v30 = MEMORY[0x29ED62900](v27, v25);
      }

      else
      {
        if (v27 >= *(v54 + 16))
        {
          goto LABEL_20;
        }

        v29 = v25;
        v30 = *(v25 + 8 * v27 + 32);
      }

      v25 = v30;
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v59 = v30;
      v31 = v58;
      sub_29D63EFB0(&v59, a2, v17);
      v58 = v31;

      v32 = v57;
      if ((*v53)(v17, 1, v57) == 1)
      {
        sub_29D642878(v17, &qword_2A17AD300, MEMORY[0x29EDC23F8]);
      }

      else
      {
        v33 = *v52;
        v34 = v50;
        (*v52)(v50, v17, v32);
        v33(v56, v34, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_29D65BAD0(0, *(v28 + 2) + 1, 1, v28);
        }

        v36 = *(v28 + 2);
        v35 = *(v28 + 3);
        if (v36 >= v35 >> 1)
        {
          v28 = sub_29D65BAD0(v35 > 1, v36 + 1, 1, v28);
        }

        *(v28 + 2) = v36 + 1;
        v33(&v28[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v36], v56, v57);
        a2 = v48;
        a5 = v49;
      }

      ++v27;
      v25 = v29;
      if (v18 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v28 = MEMORY[0x29EDCA190];
LABEL_23:
  sub_29D61F7BC(v28);

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v37 = v44;
  sub_29D65E8F4();
  sub_29D6428E8(0, &qword_2A17AC5E0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v38 = v45;
  v39 = *(v45 + 72);
  v40 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29D661D90;
  (*(v38 + 32))(v41 + v40, v37, v46);

  *v47 = v41;
  return result;
}

uint64_t sub_29D63EFB0@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D63F0B4(v5, a2, a3);
  v6 = sub_29D65E9E4();
  (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
}

uint64_t sub_29D63F0B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v85 = a2;
  v4 = sub_29D65EF84();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v86 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65E974();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v82 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC9C68];
  sub_29D6428E8(0, &qword_2A17ACA40, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v81 = &v67 - v16;
  sub_29D6428E8(0, &qword_2A17ACA48, MEMORY[0x29EDC7770], v12);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v78 = &v67 - v20;
  v21 = sub_29D65F364();
  v79 = *(v21 - 8);
  v80 = v21;
  v22 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v77 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D65F324();
  v75 = *(v25 - 8);
  v76 = v25;
  v26 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v74 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29D65DC14();
  v29 = *(v69 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v69, v31);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D65DBC4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v34, v37);
  v39 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29D65F414();
  v68 = *(v67 - 8);
  v40 = v68;
  v41 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v67, v42);
  v44 = &v67 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F404();
  v45 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  [v45 setDateStyle_];
  v73 = v45;
  [v45 setTimeStyle_];
  v72 = a1;
  sub_29D63FB94(a1);
  sub_29D65F3F4();
  v46 = [a1 endDate];
  sub_29D65DB94();

  v47 = sub_29D65DB84();
  (*(v35 + 8))(v39, v34);
  v48 = [v45 stringFromDate_];

  sub_29D65FF64();
  sub_29D65F3B4();
  sub_29D65DC04();
  v71 = sub_29D65DBD4();
  v70 = v49;
  (*(v29 + 8))(v33, v69);
  v50 = v67;
  v91[3] = v67;
  v91[4] = MEMORY[0x29EDC7800];
  v51 = sub_29D5E3C20(v91);
  (*(v40 + 16))(v51, v44, v50);
  sub_29D6428E8(0, &qword_2A17ACA50, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v52 = *(sub_29D65F374() - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  *(swift_allocObject() + 16) = xmmword_29D661D90;
  v56 = v75;
  v55 = v76;
  v57 = v74;
  (*(v75 + 104))(v74, *MEMORY[0x29EDC7768], v76);
  v58 = sub_29D65F334();
  (*(*(v58 - 8) + 56))(v78, 1, 1, v58);
  v59 = v77;
  sub_29D65F354();
  sub_29D65F344();
  (*(v79 + 8))(v59, v80);
  (*(v56 + 8))(v57, v55);
  v60 = swift_allocObject();
  v61 = v72;
  v62 = v85;
  v60[2] = v72;
  v60[3] = v62;
  v60[4] = v90;
  v63 = sub_29D65F3A4();
  (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
  (*(v83 + 104))(v82, *MEMORY[0x29EDC22C8], v84);
  (*(v87 + 104))(v86, *MEMORY[0x29EDC2A38], v88);
  v64 = v61;
  v65 = v62;
  sub_29D65E9D4();

  return (*(v68 + 8))(v44, v50);
}

uint64_t sub_29D63F994()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F074();
  sub_29D660254();
}

uint64_t sub_29D63FA48()
{
  v0 = sub_29D65E9A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65E984();
  v6 = sub_29D65E994();
  (*(v1 + 8))(v5, v0);

  return v6;
}

uint64_t sub_29D63FB94(void *a1)
{
  v2 = sub_29D63FE30(a1, 0);
  v4 = v3;
  v5 = sub_29D63FE30(a1, 1);
  v7 = v6;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D600DF8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D661D20;
  v9 = MEMORY[0x29EDC99B0];
  *(v8 + 56) = MEMORY[0x29EDC99B0];
  v10 = sub_29D5E3BCC();
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v5;
  *(v8 + 80) = v7;
  v11 = sub_29D65FF34();

  return v11;
}

void sub_29D63FCFC(void *a1, void *a2, void *a3)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = objc_allocWithZone(type metadata accessor for AudiogramAllDataChartViewController());
  v7 = a3;
  v8 = a2;
  v11 = sub_29D644AF8(v7, v8);

  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v11 animated:1];
  }

  else
  {
  }
}

uint64_t sub_29D63FE30(void *a1, uint64_t a2)
{
  v4 = sub_29D65F314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65D964();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = 0;
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v17 = &selRef_averageRightEarSensitivity;
  }

  else
  {
    v17 = &selRef_averageLeftEarSensitivity;
  }

  v16 = [a1 *v17];
LABEL_6:
  HKHearingLevelClassificationForSensitivity();
  v18 = HKLocalizedStringForHearingLevelClassification();
  if (v18)
  {
    v41 = v10;
    v42 = v16;
    v19 = v18;
    v20 = sub_29D65FF64();
    v22 = v21;

    v23 = sub_29D640244(a1, a2);
    v25 = v24;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    sub_29D600DF8();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29D661D20;
    v27 = MEMORY[0x29EDC99B0];
    *(v26 + 56) = MEMORY[0x29EDC99B0];
    v28 = sub_29D5E3BCC();
    *(v26 + 32) = v20;
    *(v26 + 40) = v22;
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    *(v26 + 64) = v28;
    *(v26 + 72) = v23;
    *(v26 + 80) = v25;
    v29 = sub_29D65FF34();
    v31 = v30;

    v43[0] = v29;
    v43[1] = v31;
    sub_29D65D954();
    sub_29D60C02C();
    v32 = sub_29D660444();

    (*(v11 + 8))(v15, v41);
  }

  else
  {
    sub_29D65F2E4();
    v33 = sub_29D65F2F4();
    v34 = sub_29D660204();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136446210;
      v37 = sub_29D6607A4();
      v39 = sub_29D64A1D0(v37, v38, v43);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_29D5D7000, v33, v34, "[%{public}s] Got nil result from classification utility", v35, 0xCu);
      sub_29D5DF1C4(v36);
      MEMORY[0x29ED63350](v36, -1, -1);
      MEMORY[0x29ED63350](v35, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  return v32;
}

id sub_29D640244(void *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    result = [a1 averageRightEarSensitivity];
    if (!result)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    v4 = [objc_opt_self() decibelHearingLevelUnit];
    [v3 doubleValueForUnit_];

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v5 = 0xE000000000000000;
    sub_29D65DA74();
    v6 = sub_29D640420();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v5 = v7;
    }

    sub_29D600DF8();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_29D661D90;
    *(v9 + 56) = MEMORY[0x29EDC99B0];
    *(v9 + 64) = sub_29D5E3BCC();
    *(v9 + 32) = v8;
    *(v9 + 40) = v5;
    v10 = sub_29D65FF34();

    return v10;
  }

  if (a2)
  {
    return 0;
  }

  result = [a1 averageLeftEarSensitivity];
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_29D640420()
{
  v0 = sub_29D65F314();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = HKIntegerFormatter();
  v7 = v6;
  if (v6 && (v8 = v6, v9 = sub_29D6600D4(), v10 = [v8 stringFromNumber_], v8, v9, v10))
  {
    v11 = sub_29D65FF64();

    return v11;
  }

  else
  {
    sub_29D65F2E4();
    v13 = sub_29D65F2F4();
    v14 = sub_29D660204();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446466;
      v17 = sub_29D6607A4();
      v19 = sub_29D64A1D0(v17, v18, &v21);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_29D64A1D0(0x656C62756F44, 0xE600000000000000, &v21);
      _os_log_impl(&dword_29D5D7000, v13, v14, "[%{public}s] Failed to format filter value for type: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v16, -1, -1);
      MEMORY[0x29ED63350](v15, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }
}

uint64_t _s16HearingAppPlugin25AudiogramAllDataViewModelC33unitTest_startAudiogramsPublisheryyF_0()
{
  v99 = MEMORY[0x29EDCA298];
  sub_29D6428E8(0, &qword_2A17AC760, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v98 = &v78 - v4;
  v78 = sub_29D6601A4();
  v79 = *(v78 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v78, v6);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D614D5C();
  v80 = v9;
  v81 = *(v9 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D614F30();
  v15 = *(v14 - 8);
  v82 = v14;
  v83 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D642174();
  v21 = *(v20 - 8);
  v85 = v20;
  v86 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D642220();
  v88 = v26;
  v90 = *(v26 - 8);
  v27 = *(v90 + 64);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6423D8();
  v91 = v31;
  v93 = *(v31 - 8);
  v32 = *(v93 + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v84 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D642534();
  v36 = *(v35 - 8);
  v94 = v35;
  v95 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v35, v38);
  v87 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D642650();
  v41 = *(v40 - 8);
  v96 = v40;
  v97 = v41;
  v42 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v40, v43);
  v92 = &v78 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D65DBC4();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v45, v48);
  v50 = &v78 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16HearingAppPlugin25AudiogramAllDataViewModelC012startInitialD13PublisherTime33_BC65D8BC09683B795C348539971D0E1CLL10Foundation4DateVvpfi_0();
  v51 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_startInitialAudiogramPublisherTime;
  v89 = v0;
  swift_beginAccess();
  (*(v46 + 40))(v0 + v51, v50, v45);
  swift_endAccess();
  v52 = *(v0 + 16);
  sub_29D5DF448(0, &qword_2A1A1E700, 0x29EDBAD78);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = [ObjCClassFromMetadata audiogramSampleType];
  v55 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:v54 predicate:0];

  sub_29D5ED310();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_29D662030;
  *(v56 + 32) = [ObjCClassFromMetadata audiogramSampleType];
  sub_29D6601C4();

  sub_29D614E48();
  sub_29D642830(&qword_2A17AC998, MEMORY[0x29EDC2E88]);
  sub_29D642830(&qword_2A17AC9A0, sub_29D614E48);
  v57 = v78;
  sub_29D65F964();
  (*(v79 + 8))(v8, v57);
  sub_29D660194();
  sub_29D5DF210(0, &qword_2A17AC108);
  sub_29D642830(&qword_2A17AC9B0, sub_29D614D5C);
  v58 = v80;
  sub_29D65F914();
  (*(v81 + 8))(v13, v58);
  v59 = swift_allocObject();
  *(v59 + 16) = v52;
  *(v59 + 24) = v55;
  sub_29D660164();
  sub_29D642830(&qword_2A17AC9C0, sub_29D614F30);
  v60 = v52;
  v61 = v55;
  v62 = v82;
  sub_29D65F954();

  (*(v83 + 8))(v19, v62);
  sub_29D642830(&qword_2A17AD280, sub_29D642174);
  sub_29D642830(&qword_2A17AD288, MEMORY[0x29EDC2E58]);
  v63 = v85;
  sub_29D65F9A4();
  (*(v86 + 8))(v25, v63);
  sub_29D6424C4();
  sub_29D642830(&qword_2A17AD2B0, sub_29D642220);
  sub_29D642830(&qword_2A17AD2B8, sub_29D6424C4);
  v64 = v84;
  v65 = v88;
  sub_29D65F964();
  (*(v90 + 8))(v30, v65);
  sub_29D6425F8(0, &qword_2A17AC0B0, &unk_2A17AC0B8, 0x29EDBAA28);
  sub_29D642830(&qword_2A17AD2C8, sub_29D6423D8);
  v66 = v87;
  v67 = v91;
  sub_29D65F954();
  (*(v93 + 8))(v64, v67);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v68 = sub_29D6602B4();
  v100 = v68;
  v69 = sub_29D6602A4();
  v70 = v98;
  (*(*(v69 - 8) + 56))(v98, 1, 1, v69);
  sub_29D642830(&qword_2A17AD2D8, sub_29D642534);
  sub_29D60C0D8();
  v71 = v92;
  v72 = v94;
  sub_29D65F984();
  sub_29D642878(v70, &qword_2A17AC760, v99);

  (*(v95 + 8))(v66, v72);
  swift_allocObject();
  v73 = v89;
  swift_weakInit();
  sub_29D642830(&qword_2A17AD2E0, sub_29D642650);
  v74 = v96;
  v75 = sub_29D65F9B4();

  (*(v97 + 8))(v71, v74);
  v76 = *(v73 + 40);
  *(v73 + 40) = v75;
}

uint64_t sub_29D6412BC()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D614EB0();
  sub_29D65F874();
}

uint64_t sub_29D641378(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D5ED310();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D661DA0;
  v5 = *MEMORY[0x29EDBA990];
  sub_29D65FF64();
  v6 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v7 = sub_29D65FF24();

  v8 = [v6 initWithKey:v7 ascending:0];

  *(v4 + 32) = v8;
  v9 = *MEMORY[0x29EDBA998];
  sub_29D65FF64();
  v10 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v11 = sub_29D65FF24();

  v12 = [v10 initWithKey:v11 ascending:0];

  *(v4 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D662030;
  *(v13 + 32) = a3;
  v14 = a3;
  sub_29D660174();
}

uint64_t sub_29D641518(void **a1)
{
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_29D6600C4();
  v9 = sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F2A4();
  v10 = v8;
  v11 = sub_29D65F2F4();
  v12 = sub_29D6601F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v9;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446210;
    ErrorValue = swift_getErrorValue();
    v25 = v2;
    v17 = *(*(v28 - 8) + 64);
    MEMORY[0x2A1C7C4A8](ErrorValue, v27);
    (*(v19 + 16))(&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = sub_29D65FF84();
    v22 = sub_29D64A1D0(v20, v21, &v29);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_29D5D7000, v11, v12, "Error fetching audiogram samples: %{public}s", v14, 0xCu);
    sub_29D5DF1C4(v15);
    MEMORY[0x29ED63350](v15, -1, -1);
    MEMORY[0x29ED63350](v14, -1, -1);

    (*(v3 + 8))(v7, v25);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  v29 = MEMORY[0x29EDCA190];
  sub_29D6425F8(0, &qword_2A17AD2A8, &qword_2A17AC3B8, 0x29EDBAD60);
  sub_29D65F864();
}

void sub_29D641844(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v11 = MEMORY[0x29EDCA190];
  if (!(*a1 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x29EDCA190];
    goto LABEL_21;
  }

LABEL_19:
  v4 = sub_29D6604B4();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x29EDCA190];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x29ED62900](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x29ED623B0]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D660064();
    }

    sub_29D660074();
    v6 = v11;
  }

  while (v5 != v4);
LABEL_21:
  *a2 = v6;
}

uint64_t sub_29D6419B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor, v5);
  v7[2] = a2;
  v7[3] = v3;
  sub_29D653EB0(sub_29D64272C, v7);
}

uint64_t sub_29D641AB0(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D65DBC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v25 - v11;
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a2 >> 62)
    {
      sub_29D6604B4();
      if (*(v14 + 48))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (*(Strong + 48))
      {
LABEL_7:
        v20 = *(v14 + 32);
        v25[1] = a2;
        _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        sub_29D65F824();
        v21 = v14 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms;
        swift_beginAccess();
        v22 = *v21;
        if (*v21)
        {
          v23 = *(v21 + 8);

          v22(a2);
          sub_29D5FB9C0(v22);
        }
      }
    }

    _s16HearingAppPlugin25AudiogramAllDataViewModelC012startInitialD13PublisherTime33_BC65D8BC09683B795C348539971D0E1CLL10Foundation4DateVvpfi_0();
    v16 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_startInitialAudiogramPublisherTime;
    swift_beginAccess();
    (*(v4 + 16))(v9, v14 + v16, v3);
    sub_29D65DB74();
    v17 = *(v4 + 8);
    v17(v9, v3);
    v17(v12, v3);
    v18 = *(v14 + 24);
    sub_29D65FE24();
    v19 = sub_29D65FE14();
    sub_29D65FDC4();

    *(v14 + 48) = 1;
    goto LABEL_7;
  }
}

uint64_t AudiogramAllDataViewModel.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_startInitialAudiogramPublisherTime;
  v4 = sub_29D65DBC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms + 8);
  sub_29D5FB9C0(*(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms));
  v6 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource);
  sub_29D65EE94();
  return v0;
}

uint64_t AudiogramAllDataViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_startInitialAudiogramPublisherTime;
  v4 = sub_29D65DBC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms + 8);
  sub_29D5FB9C0(*(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms));
  v6 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource);
  sub_29D65EE94();
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *static AudiogramAllDataViewModel.makeUnitTestingInstance(healthStore:)(void *a1)
{
  v2 = type metadata accessor for AudiogramAllDataViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = a1;
  v6 = sub_29D641F68(v5, 0);

  return v6;
}

uint64_t *sub_29D641F68(void *a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  sub_29D5DE590();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v2[4] = sub_29D65F844();
  v2[5] = 0;
  *(v2 + 48) = 0;
  _s16HearingAppPlugin25AudiogramAllDataViewModelC012startInitialD13PublisherTime33_BC65D8BC09683B795C348539971D0E1CLL10Foundation4DateVvpfi_0();
  v10 = (v2 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_unitTest_didPublishAudiograms);
  *v10 = 0;
  v10[1] = 0;
  v2[2] = a1;
  v11 = objc_allocWithZone(sub_29D65FDE4());
  v12 = a1;
  v2[3] = sub_29D65FDD4();
  v13 = v2[4];

  v15 = sub_29D63E6E8(v14, v12);
  v17 = v16;

  v18 = (v3 + OBJC_IVAR____TtC16HearingAppPlugin25AudiogramAllDataViewModel_dataSource);
  *v18 = v15;
  v18[1] = v17;
  if (a2)
  {
    _s16HearingAppPlugin25AudiogramAllDataViewModelC33unitTest_startAudiogramsPublisheryyF_0();
  }

  return v3;
}

uint64_t sub_29D64209C()
{
  result = sub_29D65DBC4();
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

void sub_29D642174()
{
  if (!qword_2A17AD268)
  {
    sub_29D614F30();
    sub_29D660164();
    sub_29D642830(&qword_2A17AC9C0, sub_29D614F30);
    v0 = sub_29D65F794();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD268);
    }
  }
}

void sub_29D642220()
{
  if (!qword_2A17AD270)
  {
    sub_29D660164();
    sub_29D64230C();
    sub_29D642830(&qword_2A17AD288, MEMORY[0x29EDC2E58]);
    sub_29D642830(&qword_2A17AD290, sub_29D64230C);
    v0 = sub_29D65F774();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD270);
    }
  }
}

void sub_29D64230C()
{
  if (!qword_2A17AD278)
  {
    sub_29D642174();
    sub_29D5DF210(255, &qword_2A17AC108);
    sub_29D642830(&qword_2A17AD280, sub_29D642174);
    v0 = sub_29D65F764();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD278);
    }
  }
}

void sub_29D6423D8()
{
  if (!qword_2A17AD298)
  {
    sub_29D642220();
    sub_29D6424C4();
    sub_29D642830(&qword_2A17AD2B0, sub_29D642220);
    sub_29D642830(&qword_2A17AD2B8, sub_29D6424C4);
    v0 = sub_29D65F7B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD298);
    }
  }
}

void sub_29D6424C4()
{
  if (!qword_2A17AD2A0)
  {
    sub_29D6425F8(255, &qword_2A17AD2A8, &qword_2A17AC3B8, 0x29EDBAD60);
    v0 = sub_29D65F854();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD2A0);
    }
  }
}

void sub_29D642534()
{
  if (!qword_2A17AD2C0)
  {
    sub_29D6423D8();
    sub_29D6425F8(255, &qword_2A17AC0B0, &unk_2A17AC0B8, 0x29EDBAA28);
    sub_29D642830(&qword_2A17AD2C8, sub_29D6423D8);
    v0 = sub_29D65F794();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD2C0);
    }
  }
}

void sub_29D6425F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_29D5DF448(255, a3, a4);
    v5 = sub_29D660084();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D642650()
{
  if (!qword_2A17AD2D0)
  {
    sub_29D642534();
    sub_29D5DF448(255, &qword_2A17AC0E8, 0x29EDCA548);
    sub_29D642830(&qword_2A17AD2D8, sub_29D642534);
    sub_29D60C0D8();
    v0 = sub_29D65F804();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD2D0);
    }
  }
}

void sub_29D642748()
{
  if (!qword_2A17AD2E8)
  {
    sub_29D5DE590();
    sub_29D6428E8(255, &qword_2A17AC5A8, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
    sub_29D642830(&qword_2A17AD2F0, sub_29D5DE590);
    v0 = sub_29D65F794();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD2E8);
    }
  }
}

uint64_t sub_29D642830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D642878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D6428E8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D6428E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D642958()
{
  v0 = sub_29D65FBE4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDBCA80]);
  result = sub_29D65FC24();
  qword_2A17AD730 = result;
  return result;
}

double sub_29D642A34()
{
  sub_29D65F9E4();
  result = *&v1;
  xmmword_2A17AD738 = v1;
  *&qword_2A17AD748 = v2;
  qword_2A17AD758 = v3;
  return result;
}

double sub_29D642A90()
{
  sub_29D65F9E4();
  result = *&v1;
  xmmword_2A17AD760 = v1;
  *&qword_2A17AD770 = v2;
  qword_2A17AD780 = v3;
  return result;
}

uint64_t sub_29D642AEC()
{
  result = sub_29D65FBF4();
  qword_2A17AD788 = result;
  return result;
}

uint64_t DataTypeDetailConfiguration.InlineChartComponent.init(hkType:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent() + 20);
  v4 = a1;
  return sub_29D65EB74();
}

uint64_t type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent()
{
  result = qword_2A17AD320;
  if (!qword_2A17AD320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.InlineChartComponent.makeDataSource(context:)()
{
  v1 = v0 + *(type metadata accessor for DataTypeDetailConfiguration.InlineChartComponent() + 20);
  sub_29D65EB84();
  sub_29D642F84();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_29D65E804();
  sub_29D643060();
  sub_29D65E674();

  v5 = sub_29D65E644();

  return v5;
}

uint64_t sub_29D642CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 20);
  sub_29D65EB84();
  sub_29D642F84();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_29D65E804();
  sub_29D643060();
  sub_29D65E674();

  v7 = sub_29D65E644();

  return v7;
}

uint64_t sub_29D642D98()
{
  v0 = sub_29D65E724();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v17[-v8];
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65EAE4();
  sub_29D65E704();
  sub_29D65EE94();
  sub_29D65E714();
  sub_29D65E6E4();
  v11 = v10;
  v12 = *(v1 + 8);
  v12(v5, v0);
  v13 = sub_29D65E6F4();
  *(v14 + 16) = v11;
  v13(v17, 0);
  v15 = sub_29D65E6D4();
  v12(v9, v0);

  return v15;
}

void sub_29D642F84()
{
  if (!qword_2A17AD308)
  {
    sub_29D643000();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29D65E7F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD308);
    }
  }
}

void sub_29D643000()
{
  if (!qword_2A17AD310)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17AD310);
    }
  }
}

unint64_t sub_29D643060()
{
  result = qword_2A17AD318;
  if (!qword_2A17AD318)
  {
    sub_29D642F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD318);
  }

  return result;
}

unint64_t sub_29D6430FC()
{
  result = sub_29D5F0640();
  if (v1 <= 0x3F)
  {
    result = sub_29D65EB94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D6431A0()
{
  sub_29D5DF448(0, &qword_2A17AD380, 0x29EDC7940);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  swift_unknownObjectRetain();
  return sub_29D660244();
}

id sub_29D6432CC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D643330(uint64_t a1)
{
  v41 = a1;
  sub_29D644864(0, &qword_2A17AD378, MEMORY[0x29EDC78D0], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v39 = &v36 - v4;
  v38 = sub_29D660394();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v38, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65E554();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D6603D4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29D660404();
  v22 = *(v40 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v40, v24);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = [objc_opt_self() buttonWithType_];
  sub_29D6603E4();
  (*(v17 + 104))(v21, *MEMORY[0x29EDC78B8], v16);
  sub_29D660384();
  (*(v11 + 104))(v15, *MEMORY[0x29EDC1D60], v10);
  sub_29D65E544();
  (*(v11 + 8))(v15, v10);
  sub_29D6603B4();
  v27 = [objc_opt_self() hk_appTintColor];
  sub_29D6603C4();
  (*(v5 + 104))(v9, *MEMORY[0x29EDC7898], v38);
  sub_29D6603A4();
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D6603F4();
  v28 = v39;
  v29 = v40;
  (*(v22 + 16))(v39, v26, v40);
  (*(v22 + 56))(v28, 0, 1, v29);
  v30 = v37;
  sub_29D660414();
  v31 = v41;
  v32 = *(v41 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase + 8);
  v42 = *(v41 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase);
  v43 = v32;
  v33 = v30;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](0x747475424644502ELL, 0xEA00000000006E6FLL);
  v34 = sub_29D65FF24();

  [v33 setAccessibilityIdentifier_];

  [v33 setContentHorizontalAlignment_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];

  [v33 addTarget:v31 action:sel_shareButtonTapped_ forControlEvents:64];
  (*(v22 + 8))(v26, v29);
  return v33;
}

id sub_29D643944()
{
  v1 = v0;
  swift_getObjectType();
  v57.receiver = v0;
  v57.super_class = type metadata accessor for AudiogramAllDataChartViewController();
  objc_msgSendSuper2(&v57, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  [v3 setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = *&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollView];
  [result addSubview_];

  v7 = *&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer];
  [v6 addSubview_];
  v8 = *&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_chartController];
  [v1 addChildViewController_];
  result = [v8 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  v55 = *&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase];
  v56 = *&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase + 8];
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  MEMORY[0x29ED62350](0x616843657361422ELL, 0xEA00000000007472);
  v10 = sub_29D65FF24();

  [v9 setAccessibilityIdentifier_];

  result = [v8 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  [v7 addArrangedSubview_];

  [v8 didMoveToParentViewController_];
  v12 = [v1 navigationItem];
  v13 = sub_29D643180();
  [v12 setRightBarButtonItem_];

  v14 = sub_29D6432AC();
  [v7 addArrangedSubview_];

  sub_29D5ED310();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D664A70;
  v16 = [v6 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  v18 = [result topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v19;
  v20 = [v6 bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = result;
  v22 = [result bottomAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v15 + 40) = v23;
  v24 = [v6 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = result;
  v26 = [result leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v15 + 48) = v27;
  v28 = [v6 trailingAnchor];
  result = [v1 view];
  if (result)
  {
    v29 = result;
    v30 = objc_opt_self();
    v31 = [v29 trailingAnchor];

    v32 = [v28 constraintEqualToAnchor_];
    *(v15 + 56) = v32;
    v33 = [v7 topAnchor];
    v34 = [v6 topAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v15 + 64) = v35;
    v36 = [v7 bottomAnchor];
    v37 = [v6 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-20.0];

    *(v15 + 72) = v38;
    v39 = [v7 leadingAnchor];
    v40 = [v6 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v15 + 80) = v41;
    v42 = [v7 trailingAnchor];
    v43 = [v6 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v15 + 88) = v44;
    v45 = [v7 widthAnchor];
    v46 = [v6 widthAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    *(v15 + 96) = v47;
    sub_29D5DF448(0, &qword_2A17AD388, 0x29EDBA008);
    v48 = sub_29D660024();

    [v30 activateConstraints_];

    v49 = [v1 traitCollection];
    sub_29D6602D4();

    sub_29D660324();
    [v7 setDirectionalLayoutMargins_];
    sub_29D644864(0, &qword_2A17AD390, sub_29D6448C8, MEMORY[0x29EDC9E90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_29D661D20;
    v51 = sub_29D65FDB4();
    v52 = sub_29D644974();
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    v53 = sub_29D65F424();
    v54 = MEMORY[0x29EDC7870];
    *(v50 + 48) = v53;
    *(v50 + 56) = v54;
    sub_29D660294();

    return sub_29D65EE94();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_29D6441C8()
{
  v17 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer);
  v1 = [v17 arrangedSubviews];
  sub_29D5DF448(0, &qword_2A17AD370, 0x29EDC7DA0);
  v2 = sub_29D660034();

  v18 = MEMORY[0x29EDCA190];
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D6604B4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED62900](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_29D6600C4();
      sub_29D6600B4();
      sub_29D6600A4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v6 removeFromSuperview];
      v8 = v6;
      MEMORY[0x29ED623B0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D660064();
      }

      sub_29D660074();

      v9 = v18;

      ++v4;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v9 = MEMORY[0x29EDCA190];
LABEL_19:

  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  for (j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_29D6604B4())
  {
    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x29ED62900](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_29D6600C4();
      sub_29D6600B4();
      sub_29D6600A4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v17 addArrangedSubview_];

      ++v12;
      if (v15 == j)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
}

void sub_29D6444F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_healthStore];
  type metadata accessor for AudiogramPDFProvider();
  v3 = swift_allocObject();
  v3[2] = v2;
  v4 = sub_29D65EAA4();
  v5 = v2;
  v6 = sub_29D65EA94();
  v7 = MEMORY[0x29EDC24D0];
  v3[6] = v4;
  v3[7] = v7;
  v3[3] = v6;
  v8 = sub_29D61E694(*&v1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_audiogramSample]);
  v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];

  [v1 presentViewController:v9 animated:1 completion:0];
}

id sub_29D64475C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramAllDataChartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D644864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6448C8()
{
  result = qword_2A17AD398;
  if (!qword_2A17AD398)
  {
    sub_29D644910();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17AD398);
  }

  return result;
}

unint64_t sub_29D644910()
{
  result = qword_2A17AD3A0;
  if (!qword_2A17AD3A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AD3A0);
  }

  return result;
}

unint64_t sub_29D644974()
{
  result = qword_2A17AD3A8;
  if (!qword_2A17AD3A8)
  {
    sub_29D65FDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD3A8);
  }

  return result;
}

uint64_t sub_29D6449CC(char *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 traitCollection];
  v3 = sub_29D6602D4();

  if (v3 != sub_29D6602D4())
  {
    v4 = [a1 traitCollection];
    sub_29D6602D4();

    v5 = *&a1[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer];
    sub_29D660324();
    [v5 setDirectionalLayoutMargins_];
  }

  sub_29D6441C8();
}

id sub_29D644AF8(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase];
  *v5 = 0xD000000000000019;
  *(v5 + 1) = 0x800000029D669150;
  v6 = OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollView;
  v7 = [objc_allocWithZone(MEMORY[0x29EDC7C50]) init];
  [v7 setShowsHorizontalScrollIndicator_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer;
  v9 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
  [v9 setAxis_];
  [v9 setSpacing_];
  [v9 setDistribution_];
  [v9 setLayoutMarginsRelativeArrangement_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController____lazy_storage___shareBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController____lazy_storage___exportPDFButton] = 0;
  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_healthStore] = a1;
  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_audiogramSample] = a2;
  v10 = objc_allocWithZone(MEMORY[0x29EDC46B8]);
  v11 = a1;
  v12 = a2;
  v13 = [v10 initWithHealthStore_];
  v14 = [v13 staticAudiogramChartViewControllerWithAudiogramSample:v12 hideEnhancedUI:0];

  *&v2[OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_chartController] = v14;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for AudiogramAllDataChartViewController();
  return objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
}

void sub_29D644CE8()
{
  v1 = (v0 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_automationIdentifierBase);
  *v1 = 0xD000000000000019;
  v1[1] = 0x800000029D669150;
  v2 = OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollView;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7C50]) init];
  [v3 setShowsHorizontalScrollIndicator_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController_scrollViewContainer;
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
  [v5 setAxis_];
  [v5 setSpacing_];
  [v5 setDistribution_];
  [v5 setLayoutMarginsRelativeArrangement_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController____lazy_storage___shareBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin35AudiogramAllDataChartViewController____lazy_storage___exportPDFButton) = 0;
  sub_29D660594();
  __break(1u);
}

uint64_t sub_29D644E58(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      sub_29D646D08(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_29D644F5C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v89 = sub_29D65DDE4();
  v86 = *(v89 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v89, v5);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29D65E7C4();
  v87 = *(v88 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v88, v9);
  v11 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D65DE74();
  v90 = *(v12 - 8);
  v91 = v12;
  v13 = *(v90 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D65F314();
  v92 = *(v17 - 8);
  v93 = v17;
  v18 = *(v92 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v85 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = v79 - v24;
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v29 = v79 - v28;
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = v79 - v31;
  v33 = sub_29D65DDA4();
  v34 = sub_29D65DD94();

  if ((v34 & 1) == 0)
  {
    sub_29D65F2E4();
    v35 = sub_29D65F2F4();
    v36 = sub_29D660214();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = a2;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v94[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, v94);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6691A0, v94);
      _os_log_impl(&dword_29D5D7000, v35, v36, "[%s.%s]: Non-primary source", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v39, -1, -1);
      v40 = v38;
      a2 = v37;
      MEMORY[0x29ED63350](v40, -1, -1);
    }

    (*(v92 + 8))(v25, v93);
    v41 = 1;
    goto LABEL_29;
  }

  if (a1 > 1u)
  {
    v42 = 0xED0000656C626173;
    LODWORD(v84) = a1;
  }

  else
  {
    if (!a1)
    {

LABEL_11:
      v44 = a2;
      sub_29D65F2E4();
      v45 = sub_29D65F2F4();
      v46 = sub_29D660214();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v94[0] = v48;
        *v47 = 136315394;
        *(v47 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, v94);
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6691A0, v94);
        _os_log_impl(&dword_29D5D7000, v45, v46, "[%s.%s]: Feed item will be marked for deletion given no unavailability reasons", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED63350](v48, -1, -1);
        MEMORY[0x29ED63350](v47, -1, -1);
      }

      (*(v92 + 8))(v29, v93);
      v41 = 1;
      a2 = v44;
LABEL_29:
      v76 = v90;
      v77 = v91;
      return (*(v76 + 56))(a2, v41, 1, v77);
    }

    LODWORD(v84) = a1;
    v42 = 0xED0000656C626173;
  }

  v43 = sub_29D660694();

  if (v43)
  {
    goto LABEL_11;
  }

  sub_29D65F2E4();
  v49 = sub_29D65F2F4();
  v50 = sub_29D660214();
  v51 = os_log_type_enabled(v49, v50);
  v83 = a2;
  v81 = v11;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v94[0] = v53;
    *v52 = 136315650;
    *(v52 + 4) = sub_29D64A1D0(0xD000000000000023, 0x800000029D669170, v94);
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6691A0, v94);
    *(v52 + 22) = 2080;
    v54 = 0x6970784564656573;
    v55 = 0xEA00000000007972;
    if (v84 != 2)
    {
      v54 = 0x61476E6F69676572;
      v55 = 0xEB00000000646574;
    }

    if (v84 == 1)
    {
      v56 = 0x694465746F6D6572;
    }

    else
    {
      v56 = v54;
    }

    if (v84 != 1)
    {
      v42 = v55;
    }

    v57 = v7;
    v58 = sub_29D64A1D0(v56, v42, v94);

    *(v52 + 24) = v58;
    _os_log_impl(&dword_29D5D7000, v49, v50, "[%s.%s]: Feed item created with state %s", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v53, -1, -1);
    MEMORY[0x29ED63350](v52, -1, -1);
  }

  else
  {
    v57 = v7;
  }

  v80 = *(v92 + 8);
  v80(v32, v93);
  v59 = v16;
  if (qword_2A1A1E460 != -1)
  {
    swift_once();
  }

  v60 = qword_2A1A20B48;
  sub_29D5F0640();
  v79[1] = v60;
  v61 = sub_29D660104();
  sub_29D649050(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 32) = sub_29D65DF54();
  *(inited + 40) = v63;
  v82 = sub_29D647FA0(inited, v61);
  swift_setDeallocating();
  sub_29D5E606C(inited + 32);
  sub_29D648020();
  v64 = v81;
  sub_29D6463D8(v81);
  v84 = sub_29D648C68();
  v66 = v65;
  if (qword_2A1A1E468 != -1)
  {
    swift_once();
  }

  v67 = sub_29D65DD54();
  sub_29D5DE6EC(v67, qword_2A1A20B50);
  v68 = sub_29D65DDA4();
  v69 = v86;
  v70 = v57;
  v71 = v57;
  v72 = v89;
  (*(v86 + 104))(v71, *MEMORY[0x29EDC1B28], v89);
  sub_29D649008(&qword_2A17AD3C0, sub_29D648020);
  v73 = v84;
  sub_29D65DDC4();

  sub_29D5E60C0(v73, v66);
  (*(v69 + 8))(v70, v72);
  (*(v87 + 8))(v64, v88);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65DE34();
  sub_29D65DE04();
  v74 = sub_29D65DE44();
  sub_29D644E58(v82);
  v74(v94, 0);
  v76 = v90;
  v75 = v91;
  a2 = v83;
  (*(v90 + 32))(v83, v59, v91);
  v77 = v75;
  v41 = 0;
  return (*(v76 + 56))(a2, v41, 1, v77);
}

uint64_t sub_29D645C04()
{
  v1 = *v0;
  sub_29D660724();
  sub_29D65FFA4();

  return sub_29D660744();
}

uint64_t sub_29D645CD8()
{
  *v0;
  *v0;
  *v0;
  sub_29D65FFA4();
}

uint64_t sub_29D645D98()
{
  v1 = *v0;
  sub_29D660724();
  sub_29D65FFA4();

  return sub_29D660744();
}

uint64_t sub_29D645E68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D6491D4();
  *a2 = result;
  return result;
}

void sub_29D645E98(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xEA00000000007972;
  v5 = 0x6970784564656573;
  if (*v1 != 2)
  {
    v5 = 0x61476E6F69676572;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x694465746F6D6572;
    v2 = 0xED0000656C626173;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_29D645FD8(void *a1, char a2)
{
  sub_29D6493B8(0, &qword_2A17AD3D0, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_29D5E32A8(a1, a1[3]);
  sub_29D64912C();
  sub_29D660774();
  v13[15] = a2;
  sub_29D649180();
  sub_29D660654();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_29D646144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D660694();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D6461C8(uint64_t a1)
{
  v2 = sub_29D64912C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D646204(uint64_t a1)
{
  v2 = sub_29D64912C();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29D646240@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D649220(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29D646288()
{
  sub_29D649050(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  *(inited + 32) = [objc_opt_self() audiogramSampleType];
  v1 = sub_29D647E40(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_2A1A20B48 = v1;
  return result;
}

uint64_t sub_29D646350()
{
  v0 = sub_29D65DD54();
  sub_29D5EDFD0(v0, qword_2A1A20B50);
  v1 = sub_29D5DE6EC(v0, qword_2A1A20B50);
  v2 = *MEMORY[0x29EDC3750];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_29D6463D8@<X0>(uint64_t a1@<X8>)
{
  v41[4] = a1;
  v1 = sub_29D65E7B4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v41[3] = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D5F083C(0, &qword_2A1A1E538, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v41 - v9;
  v11 = sub_29D65EAD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  sub_29D5F083C(0, &qword_2A17AC428, MEMORY[0x29EDC17D8], v5);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v19 = v41 - v18;
  sub_29D5F083C(0, &qword_2A17AC430, MEMORY[0x29EDC20F8], v5);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v24 = v41 - v23;
  v25 = sub_29D65E7E4();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = sub_29D65E104();
  (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
  v27 = MEMORY[0x29EDC2550];
  sub_29D5F083C(0, &qword_2A17AC438, MEMORY[0x29EDC2550], MEMORY[0x29EDC9E90]);
  v28 = *(v12 + 72);
  v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D661D20;
  sub_29D65EAC4();
  sub_29D65EAB4();
  v41[5] = v30;
  sub_29D649008(&qword_2A17AC440, MEMORY[0x29EDC2550]);
  sub_29D5F083C(0, &qword_2A17AC448, v27, MEMORY[0x29EDC9A40]);
  sub_29D5F07B4();
  sub_29D660484();
  v31 = sub_29D65EA34();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v41[2] = sub_29D65EA24();
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v41[1] = sub_29D65DA74();
  sub_29D65DA74();
  sub_29D65DA74();
  v34 = sub_29D65E154();
  (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
  sub_29D5F083C(0, &qword_2A17AC458, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v35 = sub_29D65E554();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29D661D90;
  (*(v36 + 104))(v39 + v38, *MEMORY[0x29EDC1D60], v35);
  sub_29D65E7A4();
  return sub_29D65E784();
}

unint64_t sub_29D646A6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_29D660364();
  v5 = -1 << *(a2 + 32);
  result = sub_29D660494();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_29D646AF0(void *a1, void *a2)
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
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v9 = sub_29D6604C4();

    if (v9)
    {

      sub_29D5F0640();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_29D6604B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_29D646E58(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_29D647028(v22 + 1);
    }

    v20 = v8;
    sub_29D646A6C(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_29D5F0640();
  v11 = *(v6 + 40);
  v12 = sub_29D660364();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_29D647498(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_29D660374();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_29D646D08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_29D660724();
  sub_29D65FFA4();
  v9 = sub_29D660744();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_29D660694() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D6475F8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29D646E58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29D5F2FB4();
    v2 = sub_29D660504();
    v16 = v2;
    sub_29D6604A4();
    if (sub_29D6604D4())
    {
      sub_29D5F0640();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_29D647028(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_29D660364();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_29D6604D4());
    }
  }

  else
  {
    sub_29D65EE94();
    return MEMORY[0x29EDCA1A0];
  }

  return v2;
}

uint64_t sub_29D647028(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D5F2FB4();
  result = sub_29D6604F4();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = sub_29D660364();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_29D647244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D648F5C();
  result = sub_29D6604F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_29D660724();
      sub_29D65FFA4();
      result = sub_29D660744();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_29D647498(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D647028(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_29D647778();
      goto LABEL_12;
    }

    sub_29D647A0C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_29D660364();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_29D5F0640();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_29D660374();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29D6606B4();
  __break(1u);
}

uint64_t sub_29D6475F8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29D647244(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29D6478BC();
      goto LABEL_16;
    }

    sub_29D647C14(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_29D660724();
  sub_29D65FFA4();
  result = sub_29D660744();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_29D660694();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_29D6606B4();
  __break(1u);
  return result;
}

id sub_29D647778()
{
  v1 = v0;
  sub_29D5F2FB4();
  v2 = *v0;
  v3 = sub_29D6604E4();
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

void *sub_29D6478BC()
{
  v1 = v0;
  sub_29D648F5C();
  v2 = *v0;
  v3 = sub_29D6604E4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
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

uint64_t sub_29D647A0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29D5F2FB4();
  result = sub_29D6604F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_29D660364();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v2 = v26;
        goto LABEL_28;
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