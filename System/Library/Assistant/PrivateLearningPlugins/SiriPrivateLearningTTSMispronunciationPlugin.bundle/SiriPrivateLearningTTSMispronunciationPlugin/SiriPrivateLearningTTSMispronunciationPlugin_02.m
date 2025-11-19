unint64_t sub_2778C()
{
  result = qword_4F990;
  if (!qword_4F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F990);
  }

  return result;
}

unint64_t sub_277E0()
{
  result = qword_4F9A0;
  if (!qword_4F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F9A0);
  }

  return result;
}

uint64_t sub_27834(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_349A0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_348D0();
  *v1 = result;
  return result;
}

uint64_t sub_278D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_349A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_349A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_28200();
          for (i = 0; i != v6; ++i)
          {
            sub_3204(&qword_4F9F8, &qword_38178);
            v9 = sub_27A60(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_3204(&qword_4F4C0, &unk_37670);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_27A60(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_348C0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_27AE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_27AE8(void *a1, uint64_t a2)
{
  v4 = sub_33AB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  if (a1[1] == 1 || v11 == 0)
  {
    return 0;
  }

  v14 = a1[2];
  v24[0] = v14;
  v24[1] = v11;
  if (qword_4E5A0 != -1)
  {
    v23 = v8;
    swift_once();
    v8 = v23;
  }

  v15 = v8;
  sub_3034(v8, qword_4FA60);
  sub_33AA0();
  sub_324C();
  sub_346F0();
  v17 = v16;
  (*(v5 + 8))(v10, v15);
  if (v17)
  {
    return 2;
  }

  if (qword_4E588 != -1)
  {
    swift_once();
  }

  if (sub_24AC0(a2, qword_53A10))
  {
    v18 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      return 2;
    }
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v19 = sub_342A0();
  sub_3034(v19, qword_53A18);
  v20 = sub_34280();
  v21 = sub_345E0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Source is unknown since ttsData in phonemeData doesn't have LNH phonemes", v22, 2u);
  }

  return 4;
}

uint64_t sub_27D80(void *a1, char a2, uint64_t a3)
{
  if (sub_1A678())
  {
    result = sub_235A8(a1);
    if (!result)
    {
      return result;
    }

    v8 = result;
    __chkstk_darwin(result, v7);
    sub_257EC(sub_2846C, v8, v34);

    v41 = v34[6];
    v42 = v34[7];
    v43 = v35;
    v37[1] = v34[2];
    v38 = v34[3];
    v39 = v34[4];
    v40 = v34[5];
    v36 = v34[0];
    v37[0] = v34[1];
    if (sub_28284(&v36) == 1)
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        v20 = *(&v38 + 1);
        if (!*(&v38 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = v41;
        if (!v41)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v20 = *&v37[0];
      if (!*&v37[0])
      {
        goto LABEL_19;
      }
    }

    if (*(v20 + 16))
    {
      v21 = *(v20 + 32);
      v22 = *(v20 + 48);
      v23 = *(v20 + 80);
      v28 = *(v20 + 64);
      v29 = v23;
      v27[0] = v21;
      v27[1] = v22;
      v46 = v28;
      v47 = v23;
      v24 = *(v20 + 48);
      v44 = *(v20 + 32);
      v45 = v24;
      sub_FE88(v27, &v30);
      sub_FFD8(v37);
      v30 = v44;
      v31 = v45;
      v25 = v47;
      v32 = v46;
LABEL_20:
      v33 = v25;
      v44 = v30;
      v45 = v31;
      v46 = v32;
      v47 = v25;
      v26 = sub_27AE8(&v44, a3);
      sub_A948(&v30, &qword_4FA38, &qword_38190);
      return v26;
    }

LABEL_19:
    sub_FFD8(v37);
    v25 = 0uLL;
    v30 = xmmword_35940;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_20;
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v9 = sub_342A0();
  sub_3034(v9, qword_53A18);
  v10 = a1;
  v11 = sub_34280();
  v12 = sub_345D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v36 = v14;
    *v13 = 136315138;
    v15 = [v10 identifier];
    v16 = sub_343B0();
    v18 = v17;

    v19 = sub_22960(v16, v18, &v36);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v11, v12, "User has overridden the pronunciation in the UI for contactID: %s", v13, 0xCu);
    sub_3364(v14);
  }

  return 1;
}

uint64_t sub_280B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_46F88;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_28104()
{
  result = qword_4F9A8;
  if (!qword_4F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F9A8);
  }

  return result;
}

unint64_t sub_28158()
{
  result = qword_4F9D0;
  if (!qword_4F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F9D0);
  }

  return result;
}

unint64_t sub_281AC()
{
  result = qword_4F9F0;
  if (!qword_4F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F9F0);
  }

  return result;
}

unint64_t sub_28200()
{
  result = qword_4FA00;
  if (!qword_4FA00)
  {
    sub_A7E8(&qword_4F9F8, &qword_38178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA00);
  }

  return result;
}

uint64_t sub_28284(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2829C()
{
  result = qword_4FA20;
  if (!qword_4FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA20);
  }

  return result;
}

uint64_t sub_282F0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_28338(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_28368()
{
  result = qword_4FA40;
  if (!qword_4FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA40);
  }

  return result;
}

unint64_t sub_283C0()
{
  result = qword_4FA48;
  if (!qword_4FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA48);
  }

  return result;
}

unint64_t sub_28418()
{
  result = qword_4FA50;
  if (!qword_4FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA50);
  }

  return result;
}

Swift::Int sub_28494()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_28578()
{
  *v0;
  *v0;
  *v0;
  sub_34430();
}

Swift::Int sub_28648()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_28728@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2F944(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_28758(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x525341764ELL;
  v5 = 0xE500000000000000;
  v6 = 0x41504D4153;
  v7 = 0xE400000000000000;
  v8 = 726148684;
  if (v2 != 3)
  {
    v8 = 0x746573656E6F6870;
    v7 = 0xED0000656D616E5FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4D4153585F535454;
    v3 = 0xEA00000000004150;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_28808@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    result = sub_138CC((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_344C0();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_138CC(0, 1, 1, &_swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = &_swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = sub_344B0();
        v9 = v19;
        result = sub_2DBA4(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = sub_34450();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = sub_34450();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = sub_344C0();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_138CC(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_138CC((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = sub_34450();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_344C0();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_138CC(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_138CC((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

char *sub_28BF0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = &_swiftEmptyArrayStorage;
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_346C0();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_346B0() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_346B0();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_346D0();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_138CC(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_138CC((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_346B0();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_346D0();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_138CC((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_138CC(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_346D0();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_138CC(0, 1, 1, &_swiftEmptyArrayStorage);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_28FF8(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v57 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v56[0] = (&stru_20 + 12);
  v56[1] = 0xE100000000000000;
  v55 = v56;

  v8 = sub_28BF0(0x7FFFFFFFFFFFFFFFLL, 0, sub_2F990, v54, v3, v4, v5, v7);
  v9 = *(v8 + 2);
  if (v9)
  {
    v56[0] = &_swiftEmptyArrayStorage;
    v10 = v8;
    result = sub_2FACC(0, v9, 0);
    v12 = 0;
    v13 = v56[0];
    v14 = (v10 + 56);
    while (v12 < *(v10 + 2))
    {
      v15 = v13;
      v17 = *(v14 - 3);
      v16 = *(v14 - 2);
      v19 = *(v14 - 1);
      v18 = *v14;

      v13 = v15;
      v20 = sub_34420();
      v22 = v21;

      v56[0] = v13;
      v24 = v13[2];
      v23 = v13[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_2FACC((v23 > 1), v24 + 1, 1);
        v13 = v56[0];
      }

      ++v12;
      v13[2] = v24 + 1;
      v25 = &v13[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v14 += 4;
      if (v9 == v12)
      {

        goto LABEL_9;
      }
    }
  }

  else
  {

    v13 = &_swiftEmptyArrayStorage;
LABEL_9:
    v26 = *v57;
    v27 = *v57 + 64;
    v28 = 1 << *(*v57 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(*v57 + 64);
    v31 = (v28 + 63) >> 6;
    v52 = v13;
    v49 = v13 + 4;

    v32 = 0;
    v33 = a3;
    v50 = v26;
    while (v30)
    {
      v34 = v30;
LABEL_18:
      v30 = (v34 - 1) & v34;
      if (*(v33 + 16))
      {
        v36 = *(*(v26 + 48) + (__clz(__rbit64(v34)) | (v32 << 6)));
        result = sub_2A500(v36);
        if (v37)
        {
          v38 = *(*(v33 + 56) + 8 * result);
          result = sub_29358(v56, v36);
          v51 = result;
          v40 = *v39;
          if (*v39)
          {
            if ((v38 & 0x8000000000000000) != 0)
            {
              goto LABEL_32;
            }

            if (v38 >= v52[2])
            {
              goto LABEL_33;
            }

            v41 = v39;
            v42 = &v49[2 * v38];
            v48 = *v42;
            v43 = v42[1];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v41 = v40;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v40 = sub_13B0C(0, *(v40 + 2) + 1, 1, v40);
              *v41 = v40;
            }

            v46 = *(v40 + 2);
            v45 = *(v40 + 3);
            if (v46 >= v45 >> 1)
            {
              v40 = sub_13B0C((v45 > 1), v46 + 1, 1, v40);
              *v41 = v40;
            }

            *(v40 + 2) = v46 + 1;
            v47 = &v40[16 * v46];
            *(v47 + 4) = v48;
            *(v47 + 5) = v43;
          }

          result = v51(v56, 0);
          v33 = a3;
          v26 = v50;
        }
      }
    }

    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v35 >= v31)
      {
      }

      v34 = *(v27 + 8 * v35);
      ++v32;
      if (v34)
      {
        v32 = v35;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void (*sub_29358(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2DFA0(v4, a2);
  return sub_293D0;
}

void sub_293D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2941C(uint64_t a1, void *a2, unsigned __int8 a3, unsigned __int8 a4, int a5, uint64_t a6)
{
  v77 = a5;
  if (!*(a6 + 16) || (v12 = sub_2A500(a3), (v13 & 1) == 0))
  {
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_34890(28);
    v85._countAndFlagsBits = 0x74276E646C756F43;
    v85._object = 0xEE0020646E696620;
    sub_34460(v85);
    LOBYTE(v82) = a3;
LABEL_30:
    sub_34980();
    v87._countAndFlagsBits = 0x6E6F6870206E6920;
    v87._object = 0xEC00000074657365;
    sub_34460(v87);
LABEL_31:
    v37 = v78;
    v38 = v79;
    sub_2A4AC();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 1;
    swift_willThrow();
    return v38;
  }

  if (!*(a6 + 16))
  {
LABEL_29:
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_34890(28);
    v86._countAndFlagsBits = 0x74276E646C756F43;
    v86._object = 0xEE0020646E696620;
    sub_34460(v86);
    LOBYTE(v82) = a4;
    goto LABEL_30;
  }

  v14 = *(*(a6 + 56) + 8 * v12);

  v15 = sub_2A500(a4);
  if ((v16 & 1) == 0)
  {

    goto LABEL_29;
  }

  v17 = *(*(a6 + 56) + 8 * v15);
  v78 = a1;
  v79 = a2;
  __chkstk_darwin(v15, v16);
  v69 = &v78;

  result = sub_2B090(sub_2E9C0, &v67, v14);
  v73 = v6;
  if ((result & 1) == 0)
  {

    v78 = 0;
    v79 = 0xE000000000000000;
    sub_34890(41);
    v88._countAndFlagsBits = 0x74276E646C756F43;
    v88._object = 0xEE0020646E696620;
    sub_34460(v88);
    v89._countAndFlagsBits = a1;
    v89._object = a2;
    sub_34460(v89);
    v90._object = 0x8000000000039C40;
    v90._countAndFlagsBits = 0xD000000000000017;
    sub_34460(v90);
    LOBYTE(v82) = a3;
    sub_34980();
    goto LABEL_31;
  }

  v75 = v17;
  v19 = *(v14 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v21 = 0;
    v76 = *(v14 + 16);
    v71 = v19 - 1;
    v72 = v14 + 40;
    do
    {
      v74 = v20;
      v22 = (v72 + 16 * v21);
      v23 = v21;
      while (1)
      {
        if (v23 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v25 = *(v22 - 1);
        v24 = *v22;
        if (v77)
        {
          v26 = *v22;
          swift_bridgeObjectRetain_n();
          v27 = v25;
          v28 = v24;
        }

        else
        {
          v78 = *(v22 - 1);
          v79 = v24;
          v82 = 42;
          v83 = 0xE100000000000000;
          v80 = 0;
          v81 = 0xE000000000000000;
          v29 = sub_324C();

          v69 = v29;
          v70 = v29;
          v68 = v29;
          v67 = &type metadata for String;
          v27 = sub_34710();
          v28 = v30;
        }

        if (v27 == a1 && v28 == a2)
        {
          break;
        }

        v32 = sub_34BC0();

        if (v32)
        {
          goto LABEL_21;
        }

        ++v23;

        v22 += 2;
        if (v76 == v23)
        {
          v20 = v74;
          goto LABEL_34;
        }
      }

LABEL_21:
      v20 = v74;
      result = swift_isUniquelyReferenced_nonNull_native();
      v84 = v20;
      if ((result & 1) == 0)
      {
        result = sub_2FB2C(0, v20[2] + 1, 1);
        v20 = v84;
      }

      v34 = v20[2];
      v33 = v20[3];
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        result = sub_2FB2C((v33 > 1), v34 + 1, 1);
        v35 = v34 + 1;
        v20 = v84;
      }

      v21 = v23 + 1;
      v20[2] = v35;
      v36 = &v20[3 * v34];
      v36[4] = v23;
      v36[5] = v25;
      v36[6] = v24;
    }

    while (v71 != v23);
  }

LABEL_34:

  v40 = v20[2];
  if (v40)
  {
    v78 = _swiftEmptyArrayStorage;
    sub_2FAEC(0, v40, 0);
    v41 = v78;
    v42 = v78[2];
    v43 = 4;
    do
    {
      v44 = v20[v43];
      v78 = v41;
      v45 = v41[3];
      if (v42 >= v45 >> 1)
      {
        sub_2FAEC((v45 > 1), v42 + 1, 1);
        v41 = v78;
      }

      v41[2] = v42 + 1;
      v41[v42 + 4] = v44;
      v43 += 3;
      ++v42;
      --v40;
    }

    while (v40);
  }

  else
  {

    v41 = _swiftEmptyArrayStorage;
  }

  v46 = v41[2];
  v47 = v75;
  if (!v46)
  {

    v50 = _swiftEmptyArrayStorage;
LABEL_56:

    v64 = sub_2E438(v50);

    v65 = *(v64 + 16);
    if (!v65)
    {
      goto LABEL_59;
    }

    v38 = sub_13C18(*(v64 + 16), 0);
    v66 = sub_2E2E0(&v78, v38 + 4, v65, v64);
    sub_2E9DC();
    if (v66 != v65)
    {
      __break(1u);
LABEL_59:

      return _swiftEmptyArrayStorage;
    }

    return v38;
  }

  v48 = v41 + 4;
  v49 = v75 + 32;
  v50 = _swiftEmptyArrayStorage;
  while (1)
  {
    v52 = *v48++;
    v51 = v52;
    if ((v52 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v51 >= *(v47 + 16))
    {
      goto LABEL_63;
    }

    v53 = (v49 + 16 * v51);
    v55 = *v53;
    v54 = v53[1];
    v78 = v55;
    v79 = v54;
    v82 = 42;
    v83 = 0xE100000000000000;
    v80 = 0;
    v81 = 0xE000000000000000;
    v69 = sub_324C();
    v70 = v69;
    v68 = v69;
    v67 = &type metadata for String;
    v56 = sub_34710();
    v58 = v57;
    v59 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v59 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      v60 = v56;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_13B0C(0, *(v50 + 2) + 1, 1, v50);
        v50 = result;
      }

      v62 = *(v50 + 2);
      v61 = *(v50 + 3);
      if (v62 >= v61 >> 1)
      {
        result = sub_13B0C((v61 > 1), v62 + 1, 1, v50);
        v50 = result;
      }

      *(v50 + 2) = v62 + 1;
      v63 = &v50[16 * v62];
      *(v63 + 4) = v60;
      *(v63 + 5) = v58;
      v47 = v75;
      if (!--v46)
      {
LABEL_54:

        goto LABEL_56;
      }
    }

    else
    {

      if (!--v46)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_29B40()
{
  v0 = sub_33AB0();
  sub_2E9E4(v0, qword_4FA60);
  sub_3034(v0, qword_4FA60);
  return sub_33A90();
}

void *sub_29BA4(char *a1, int a2, char a3)
{
  LODWORD(v6) = a2;
  v7 = a1;
  v8 = a1[OBJC_IVAR___PhonemeString_encoding];
  if (sub_249A0(v8, a2))
  {
    if (qword_4E5A8 == -1)
    {
LABEL_3:
      v9 = sub_342A0();
      sub_3034(v9, qword_53A18);
      v10 = sub_34280();
      v11 = sub_345D0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v94[0] = v13;
        v14 = 0xE500000000000000;
        *v12 = 136315138;
        v15 = 0x525341766ELL;
        v16 = 0xE500000000000000;
        v17 = 0x61706D6173;
        if (v6 != 2)
        {
          v17 = 6844012;
          v16 = 0xE300000000000000;
        }

        if (v6)
        {
          v15 = 0x61706D617378;
          v14 = 0xE600000000000000;
        }

        if (v6 <= 1u)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        if (v6 <= 1u)
        {
          v19 = v14;
        }

        else
        {
          v19 = v16;
        }

        v20 = sub_22960(v18, v19, v94);

        *(v12 + 4) = v20;
        _os_log_impl(&dword_0, v10, v11, "Source encoding is same as target phoneme format: %s", v12, 0xCu);
        sub_3364(v13);
      }

      sub_3204(&unk_4F4B0, &qword_36C70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_35930;
      *(inited + 32) = v7;
      v22 = v7;
      v3 = sub_2E860(inited);
      swift_setDeallocating();
      v23 = *(inited + 16);
      swift_arrayDestroy();
      return v3;
    }

LABEL_67:
    swift_once();
    goto LABEL_3;
  }

  v91 = *(v3 + 16);
  if (!v91)
  {
    sub_2A4AC();
    swift_allocError();
    *v40 = 0xD000000000000023;
    *(v40 + 8) = 0x8000000000039B70;
    *(v40 + 16) = 0;
LABEL_37:
    swift_willThrow();
    return v3;
  }

  v95 = v6;
  v24 = v4;
  v25 = sub_15020();
  v3 = v25;
  v6 = *(v25 + 2);
  v26 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v27 = 0;
    v28 = v25 + 40;
    v87 = v25 + 40;
    v89 = v7;
LABEL_19:
    v83 = v26;
    v29 = &v28[16 * v27];
    v30 = v27;
    while (v30 < *(v3 + 16))
    {
      v31 = *(v29 - 1);
      v7 = *v29;

      v32 = sub_2941C(v31, v7, v8, v95, a3 & 1, v91);
      if (v24)
      {

        return v3;
      }

      v33 = v32;

      if (*(v33 + 16))
      {
        v34 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_12D88(0, v83[2] + 1, 1, v83);
        }

        v35 = v34;
        v36 = v34[2];
        v37 = v35;
        v38 = v35[3];
        if (v36 >= v38 >> 1)
        {
          v37 = sub_12D88((v38 > 1), v36 + 1, 1, v37);
        }

        v27 = v30 + 1;
        v37[2] = v36 + 1;
        v39 = &v37[v36];
        v26 = v37;
        v39[4] = v33;
        v28 = v87;
        v7 = v89;
        if (v6 - 1 != v30)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }

      ++v30;

      v29 += 2;
      if (v6 == v30)
      {
        v7 = v89;
        v26 = v83;
        goto LABEL_33;
      }
    }

    goto LABEL_66;
  }

LABEL_33:

  if (!v26[2])
  {

    sub_34890(53);
    v97._countAndFlagsBits = 0xD000000000000025;
    v97._object = 0x8000000000039BA0;
    sub_34460(v97);
    sub_34980();
    v98._countAndFlagsBits = 32;
    v98._object = 0xE100000000000000;
    sub_34460(v98);
    v46 = [v7 description];
    v47 = sub_343B0();
    v49 = v48;

    v99._countAndFlagsBits = v47;
    v99._object = v49;
    sub_34460(v99);

    v100._countAndFlagsBits = 0x3A74656772617420;
    v100._object = 0xE900000000000020;
    sub_34460(v100);
    v96 = v95;
    sub_34980();
    v3 = 0xE000000000000000;
    sub_2A4AC();
    swift_allocError();
    *v50 = 0;
    *(v50 + 8) = 0xE000000000000000;
    *(v50 + 16) = 1;
    goto LABEL_37;
  }

  v41 = v26 + 4;
  v6 = v26[4];

  v43 = sub_2E4D0(v95, v91);
  result = v26;
  v45 = v24;
  if (v24)
  {

    return v3;
  }

  v51 = v42;
  v52 = result[2];
  v88 = v43;
  if (v52 == 1)
  {
LABEL_58:

    v67 = *(v6 + 2);
    if (v67)
    {
      v94[0] = _swiftEmptyArrayStorage;
      v68 = v51;
      sub_34930();
      v69 = type metadata accessor for PhonemeString();
      v70 = (v6 + 40);
      v71 = v95;
      do
      {
        v73 = *(v70 - 1);
        v72 = *v70;
        v74 = objc_allocWithZone(v69);
        v75 = &v74[OBJC_IVAR___PhonemeString_symbols];
        *v75 = v73;
        v75[1] = v72;
        v74[OBJC_IVAR___PhonemeString_encoding] = v71;
        v76 = &v74[OBJC_IVAR___PhonemeString_boundary];
        *v76 = v88;
        v76[1] = v68;
        v93.receiver = v74;
        v93.super_class = v69;

        objc_msgSendSuper2(&v93, "init");
        sub_34910();
        v77 = *(v94[0] + 16);
        sub_34940();
        sub_34950();
        sub_34920();
        v70 += 2;
        --v67;
      }

      while (v67);

      v78 = v94[0];
    }

    else
    {

      v78 = _swiftEmptyArrayStorage;
    }

    v3 = sub_2E860(v78);

    return v3;
  }

  if (v52)
  {
    v53 = 1;
    v92 = v42;
    v79 = result[2];
    v80 = v41;
    while (1)
    {
      v54 = v41[v53];
      if (*(v54 + 16))
      {
        break;
      }

LABEL_43:
      if (++v53 == v52)
      {
        goto LABEL_58;
      }
    }

    v86 = *(v6 + 2);

    v55 = 0;
    v56 = v6 + 24;
    v7 = _swiftEmptyArrayStorage;
LABEL_46:
    v57 = &v56[16 * v55];
    while (1)
    {
      if (v86 == v55)
      {

        v6 = v7;
        goto LABEL_43;
      }

      if (v55 >= v86)
      {
        break;
      }

      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_65;
      }

      v59 = *(v54 + 16);
      v57 += 2;
      ++v55;
      if (v59)
      {
        v81 = v56;
        v82 = v53;
        v84 = v6;
        v85 = v45;
        v55 = v58;
        v60 = *v57;
        v90 = *(v57 - 1);

        v61 = (v54 + 40);
        do
        {
          v63 = *(v61 - 1);
          v62 = *v61;
          v94[0] = v90;
          v94[1] = v60;

          v101._countAndFlagsBits = v88;
          v101._object = v92;
          sub_34460(v101);
          v102._countAndFlagsBits = v63;
          v102._object = v62;
          sub_34460(v102);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_13B0C(0, *(v7 + 2) + 1, 1, v7);
          }

          v65 = *(v7 + 2);
          v64 = *(v7 + 3);
          if (v65 >= v64 >> 1)
          {
            v7 = sub_13B0C((v64 > 1), v65 + 1, 1, v7);
          }

          *(v7 + 2) = v65 + 1;
          v66 = &v7[16 * v65];
          *(v66 + 4) = v90;
          *(v66 + 5) = v60;
          v61 += 2;
          --v59;
        }

        while (v59);

        v6 = v84;
        v45 = v85;
        v51 = v92;
        v52 = v79;
        v41 = v80;
        v53 = v82;
        v56 = v81;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  __break(1u);
  return result;
}

uint64_t sub_2A440()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_2A4AC()
{
  result = qword_4FB30;
  if (!qword_4FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB30);
  }

  return result;
}

unint64_t sub_2A500(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_34C40();
  sub_34430();

  v4 = sub_34C70();

  return sub_2A848(a1, v4);
}

unint64_t sub_2A60C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_34C40();
  sub_34430();
  v6 = sub_34C70();

  return sub_2AA34(a1, a2, v6);
}

unint64_t sub_2A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_34C40();
  sub_162F8(v12, a1, a2, a3, a4);
  v10 = sub_34C70();

  return sub_2AAEC(a1, a2, a3, a4, v10);
}

unint64_t sub_2A71C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_343B0();
  sub_34C40();
  sub_34430();
  v4 = sub_34C70();

  return sub_2ADCC(a1, v4);
}

unint64_t sub_2A7B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_34070();
  sub_2F7A4(&qword_4FB58, &type metadata accessor for Locale);
  v5 = sub_34300();

  return sub_2AED0(a1, v5);
}

unint64_t sub_2A848(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA00000000004150;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x4D4153585F535454;
        }

        else
        {
          v8 = 0x525341764ELL;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xEA00000000004150;
        }

        else
        {
          v9 = 0xE500000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE500000000000000;
        v8 = 0x41504D4153;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 726148684;
        }

        else
        {
          v8 = 0x746573656E6F6870;
        }

        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xED0000656D616E5FLL;
        }
      }

      if (v6 == 3)
      {
        v10 = 726148684;
      }

      else
      {
        v10 = 0x746573656E6F6870;
      }

      if (v6 == 3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xED0000656D616E5FLL;
      }

      if (v6 == 2)
      {
        v10 = 0x41504D4153;
        v11 = 0xE500000000000000;
      }

      if (v6)
      {
        v12 = 0x4D4153585F535454;
      }

      else
      {
        v12 = 0x525341764ELL;
      }

      if (!v6)
      {
        v5 = 0xE500000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_34BC0();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA00000000004150;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2AA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_34BC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2AAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  v19 = v5 + 64;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v18 = ~v6;
    do
    {
      v8 = (*(v24 + 48) + 32 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      sub_34C40();
      sub_3204(&qword_4F100, &qword_36CA0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_361D0;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      *(v13 + 48) = v11;
      *(v13 + 56) = v12;
      v25 = v13;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      sub_2B13C(&v25);

      sub_3204(&qword_4F110, &qword_36CB0);
      sub_A830(&qword_4F300, &qword_4F110, &qword_36CB0);
      sub_34320();

      sub_34430();

      v14 = sub_34C70();
      sub_34C40();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_361D0;
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      *(v15 + 48) = a3;
      *(v15 + 56) = a4;
      v25 = v15;

      sub_2B13C(&v25);

      sub_34320();

      sub_34430();

      v16 = sub_34C70();

      if (v14 == v16)
      {
        break;
      }

      v7 = (v7 + 1) & v18;
    }

    while (((*(v19 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_2ADCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_343B0();
      v9 = v8;
      if (v7 == sub_343B0() && v9 == v10)
      {
        break;
      }

      v12 = sub_34BC0();

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

unint64_t sub_2AED0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_34070();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_2F7A4(&qword_4FA28, &type metadata accessor for Locale);
      v17 = sub_34360();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_2B090(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

Swift::Int sub_2B13C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2E2CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2B1A8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_2B1A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_34BA0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_34520();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2B370(v7, v8, a1, v4);
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
    return sub_2B2A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2B2A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_34BC0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2B370(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2BC00(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2B94C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_34BC0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_34BC0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_12C84(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_12C84((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2B94C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2BC00(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2BB74(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_34BC0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2B94C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_34BC0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_34BC0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2BB74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2BC00(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

Swift::Int sub_2BC14(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_34760() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_34C40();
      sub_34430();

      result = sub_34C70();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2BE50(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2A500(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_17C20();
    result = v17;
    goto LABEL_8;
  }

  sub_1746C(v14, a3 & 1);
  v18 = *v4;
  result = sub_2A500(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_34BE0();
  __break(1u);
  return result;
}

uint64_t sub_2BF74(void *a1, void *a2)
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

    v9 = sub_347E0();

    if (v9)
    {

      type metadata accessor for PhonemeString();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_347D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_2C3DC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_2C5BC(v21 + 1);
    }

    v19 = v8;
    sub_2CC94(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for PhonemeString();
  v11 = sub_34670(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_2CD18(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_34680();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_2C18C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_34C40();
  v8 = a2 & 1;
  sub_34C50(v8);
  v9 = sub_34C70();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v6 + 48);
      if (*(v13 + v11) == v8)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v8) = *(v13 + v11);
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2CE78(v8, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    result = 1;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_2C28C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_34C40();
  sub_34430();
  v9 = sub_34C70();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_34BC0() & 1) != 0)
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

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2CFCC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_2C3DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_3204(&qword_4FB38, &qword_38350);
    v2 = sub_34850();
    v15 = v2;
    sub_34790();
    if (sub_34800())
    {
      type metadata accessor for PhonemeString();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2C5BC(v9 + 1);
        }

        v2 = v15;
        result = sub_34670(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_34800());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_2C5BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3204(&qword_4FB38, &qword_38350);
  result = sub_34840();
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
      result = sub_34670(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2C7E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3204(&qword_4FB50, &unk_38360);
  result = sub_34840();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_34C40();
      sub_34C50(v18);
      result = sub_34C70();
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
      *(*(v6 + 48) + v14) = v18;
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

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2CA34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3204(&qword_4FB40, &qword_38358);
  result = sub_34840();
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
      sub_34C40();
      sub_34430();
      result = sub_34C70();
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

unint64_t sub_2CC94(uint64_t a1, uint64_t a2)
{
  sub_34670(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_34770();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2CD18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2C5BC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2D14C();
      goto LABEL_12;
    }

    sub_2D538(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_34670(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PhonemeString();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_34680();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_34BD0();
  __break(1u);
}

Swift::Int sub_2CE78(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2C7E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2D29C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2D74C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_34C40();
  sub_34C50(v4 & 1);
  result = sub_34C70();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_34BD0();
  __break(1u);
  return result;
}

Swift::Int sub_2CFCC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_2CA34(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2D3DC();
      goto LABEL_16;
    }

    sub_2D96C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_34C40();
  sub_34430();
  result = sub_34C70();
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

      result = sub_34BC0();
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
  result = sub_34BD0();
  __break(1u);
  return result;
}

id sub_2D14C()
{
  v1 = v0;
  sub_3204(&qword_4FB38, &qword_38350);
  v2 = *v0;
  v3 = sub_34830();
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

void *sub_2D29C()
{
  v1 = v0;
  sub_3204(&qword_4FB50, &unk_38360);
  v2 = *v0;
  v3 = sub_34830();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_2D3DC()
{
  v1 = v0;
  sub_3204(&qword_4FB40, &qword_38358);
  v2 = *v0;
  v3 = sub_34830();
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

uint64_t sub_2D538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3204(&qword_4FB38, &qword_38350);
  result = sub_34840();
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
      result = sub_34670(v17);
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

uint64_t sub_2D74C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3204(&qword_4FB50, &unk_38360);
  result = sub_34840();
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
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_34C40();
      sub_34C50(v17);
      result = sub_34C70();
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
      *(*(v6 + 48) + v13) = v17;
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

uint64_t sub_2D96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3204(&qword_4FB40, &qword_38358);
  result = sub_34840();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_34C40();

      sub_34430();
      result = sub_34C70();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

unint64_t sub_2DBA4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2DCF4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_34880();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_34900() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_2DCF4(unint64_t result, unint64_t a2, unint64_t a3)
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

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2DD8C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2DE00(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2DD8C(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_2DF24(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2DE00(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_34900();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_2DF24(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_34490();
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
    v5 = sub_34480();
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

void (*sub_2DFA0(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_2E298(v6);
  v6[9] = sub_2E0A4((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_2E044;
}

void sub_2E044(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_2E0A4(uint64_t a1, unsigned __int8 a2, char a3))(Swift::Int result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_2A500(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_17D6C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17780(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_2A500(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_34BE0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_2E1C0;
}

Swift::Int sub_2E1C0(Swift::Int result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = *(result + 16);
    v5 = **(result + 8);
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_2BC14(*(result + 16), **(result + 8));
    }

    return result;
  }

  v4 = *(result + 16);
  v5 = **(result + 8);
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2E298(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2E2C0;
}

void *sub_2E2E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2E438(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_345A0();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2C28C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_2E4D0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_2A500(4u);
  if ((v5 & 1) == 0 || !*(a2 + 16))
  {
    goto LABEL_16;
  }

  v6 = *(*(a2 + 56) + 8 * v4);

  v7 = sub_2A500(a1);
  if ((v8 & 1) == 0)
  {

LABEL_16:
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_34890(28);
    v25._countAndFlagsBits = 0x74276E646C756F43;
    v25._object = 0xEE0020646E696620;
    sub_34460(v25);
    sub_34980();
    v17._countAndFlagsBits = 0x6E6F6870206E6920;
    v17._object = 0xEC00000074657365;
    goto LABEL_17;
  }

  v9 = *(v6 + 16);
  if (!v9)
  {
LABEL_13:
    sub_34890(21);
    v14 = sub_34510();
    v16 = v15;

    v22 = v14;
    v23 = v16;
    v24._object = 0x8000000000039C20;
    v24._countAndFlagsBits = 0xD000000000000011;
    sub_34460(v24);
    v17._countAndFlagsBits = 0x6F625F656E6F6870;
    v17._object = 0xEE00797261646E75;
LABEL_17:
    sub_34460(v17);
    goto LABEL_18;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(*(a2 + 56) + 8 * v7);
  while (1)
  {
    v13 = *(v6 + v10 + 32) == 0x6F625F656E6F6870 && *(v6 + v10 + 40) == 0xEE00797261646E75;
    if (v13 || (sub_34BC0() & 1) != 0)
    {
      break;
    }

    ++v11;
    v10 += 16;
    if (v9 == v11)
    {
      goto LABEL_13;
    }
  }

  if (v11 < *(v12 + 16))
  {
    v18 = *(v12 + v10 + 32);
    v21 = *(v12 + v10 + 40);

    return v18;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_34890(66);
  v26._countAndFlagsBits = 0xD000000000000014;
  v26._object = 0x8000000000039BD0;
  sub_34460(v26);
  v27._countAndFlagsBits = sub_34BB0();
  sub_34460(v27);

  v28._countAndFlagsBits = 0xD00000000000002ALL;
  v28._object = 0x8000000000039BF0;
  sub_34460(v28);
  v29._countAndFlagsBits = sub_34BB0();
  sub_34460(v29);

LABEL_18:
  v18 = v23;
  sub_2A4AC();
  swift_allocError();
  *v19 = v22;
  *(v19 + 8) = v23;
  *(v19 + 16) = 1;
  swift_willThrow();
  return v18;
}

uint64_t sub_2E860(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    type metadata accessor for PhonemeString();
    sub_2F7A4(&qword_4F4D8, type metadata accessor for PhonemeString);
    result = sub_345A0();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_348C0();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_2BF74(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_349A0();
  }

  v6 = result;
  v5 = sub_349A0();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_2E9E4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2EA48(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2EABC();
  result = sub_345A0();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2C18C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_2EABC()
{
  result = qword_4FB48;
  if (!qword_4FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB48);
  }

  return result;
}

uint64_t sub_2EB10(void *a1, uint64_t a2)
{
  v4 = sub_34070();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4, v7);
  v9 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E580 != -1)
  {
LABEL_81:
    swift_once();
  }

  v10 = qword_53A08;
  if (!*(qword_53A08 + 16) || (v11 = sub_2A7B0(a2), (v12 & 1) == 0))
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v42 = sub_342A0();
    sub_3034(v42, qword_53A18);
    (v5[2])(v9, a2, v4);
    v43 = sub_34280();
    v44 = sub_345E0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v107 = v46;
      *v45 = 136315138;
      sub_2F7A4(&qword_4FA08, &type metadata accessor for Locale);
      v47 = sub_34BB0();
      v103 = a1;
      v104 = a2;
      v49 = v48;
      v50 = v5[1];
      v50(v9, v4);
      v51 = sub_22960(v47, v49, &v107);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_0, v43, v44, "Phoneset couldn't load the file for locale %s", v45, 0xCu);
      sub_3364(v46);

      v50(v104, v4);
    }

    else
    {

      v52 = v5[1];
      v52(a2, v4);
      v52(v9, v4);
    }

    return 0;
  }

  v13 = (*(v10 + 56) + 16 * v11);
  v15 = *v13;
  v14 = v13[1];

  v16 = sub_34380();
  v17 = sub_34380();
  v18 = [a1 pathForResource:v16 ofType:v17];

  if (!v18)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v57 = sub_342A0();
    sub_3034(v57, qword_53A18);

    v58 = sub_34280();
    v59 = sub_345E0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v107 = v61;
      *v60 = 136315138;
      v62 = sub_22960(v15, v14, &v107);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_0, v58, v59, "Phoneset couldn't load %s", v60, 0xCu);
      sub_3364(v61);
    }

    else
    {
    }

    (v5[1])(a2, v4);
    return 0;
  }

  v102 = sub_343B0();
  v20 = v19;

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v21 = sub_342A0();
  v22 = sub_3034(v21, qword_53A18);

  v23 = sub_34280();
  v24 = sub_345D0();

  v25 = os_log_type_enabled(v23, v24);
  v100 = v5;
  v101 = v4;
  v103 = a1;
  v104 = a2;
  v98[1] = v22;
  v99 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v107 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_22960(v102, v20, &v107);
    _os_log_impl(&dword_0, v23, v24, "Phoneset is using the map found at path=%s", v26, 0xCu);
    sub_3364(v27);
  }

  a1 = 0;
  v28 = &_swiftEmptyDictionarySingleton;
  v5 = &_swiftEmptyArrayStorage;
  v4 = 1;
  do
  {
    v9 = *(&off_46F38 + a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v107 = v28;
    v33 = sub_2A500(v9);
    v34 = v28[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    a2 = v32;
    if (v28[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v107;
        if (v32)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_17D6C();
        v28 = v107;
        if (a2)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_17780(v36, isUniquelyReferenced_nonNull_native);
      v37 = sub_2A500(v9);
      if ((a2 & 1) != (v38 & 1))
      {
        goto LABEL_84;
      }

      v33 = v37;
      v28 = v107;
      if (a2)
      {
LABEL_10:
        v29 = v28[7];
        v30 = *(v29 + 8 * v33);
        *(v29 + 8 * v33) = &_swiftEmptyArrayStorage;

        goto LABEL_11;
      }
    }

    v28[(v33 >> 6) + 8] |= 1 << v33;
    *(v28[6] + v33) = v9;
    *(v28[7] + 8 * v33) = &_swiftEmptyArrayStorage;
    v39 = v28[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_80;
    }

    v28[2] = v41;
LABEL_11:
    a1 = (a1 + 1);
  }

  while (a1 != (&dword_4 + 1));
  v110 = v28;
  v54 = v102;
  v55 = v99;
  v9 = 0;
  v56 = sub_34370();
  v65 = sub_28808(0x7FFFFFFFFFFFFFFFuLL, 1, v56, v63, v64);
  v66 = v65;
  v67 = v100;
  v68 = v101;
  v69 = v104;
  if (!*(v65 + 16))
  {

    v93 = sub_34280();
    v94 = sub_345E0();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v107 = v96;
      *v95 = 136315138;
      v97 = sub_22960(v54, v55, &v107);

      *(v95 + 4) = v97;
      _os_log_impl(&dword_0, v93, v94, "Phoneset couldn't read rows from %s", v95, 0xCu);
      sub_3364(v96);
    }

    else
    {
    }

    (v67[1])(v69, v68);

    return 0;
  }

  v98[0] = *(v65 + 16);

  if (*(v66 + 16))
  {
    v70 = *(v66 + 48);
    v71 = *(v66 + 56);
    v99 = v66;
    v107 = *(v66 + 32);
    v108 = v70;
    v109 = v71;
    v105 = 44;
    v106 = 0xE100000000000000;
    sub_2F7EC();
    sub_324C();
    v72 = sub_346E0();
    v4 = 0;
    v102 = (v72 + 40);
    v73 = &_swiftEmptyDictionarySingleton;
    v5 = *(v72 + 16);
    while (1)
    {
LABEL_38:
      v74 = *(&off_46F60 + v4++ + 32);
      v75 = 726148684;
      if (v74 != 3)
      {
        v75 = 0x746573656E6F6870;
      }

      v76 = 0xE400000000000000;
      if (v74 != 3)
      {
        v76 = 0xED0000656D616E5FLL;
      }

      if (v74 == 2)
      {
        v75 = 0x41504D4153;
      }

      v77 = 0xE500000000000000;
      if (v74 == 2)
      {
        v76 = 0xE500000000000000;
      }

      v78 = 0x525341764ELL;
      if (v74)
      {
        v78 = 0x4D4153585F535454;
        v77 = 0xEA00000000004150;
      }

      a2 = v74 <= 1 ? v78 : v75;
      v79 = v74 <= 1 ? v77 : v76;
      if (v5)
      {
        break;
      }

LABEL_37:

      if (v4 == 5)
      {
        goto LABEL_65;
      }
    }

    v80 = 0;
    a1 = v102;
    while (1)
    {
      if (v80 >= *(v72 + 16))
      {
        __break(1u);
        goto LABEL_79;
      }

      v81 = *(a1 - 1) == a2 && *a1 == v79;
      if (v81 || (sub_34BC0() & 1) != 0)
      {
        break;
      }

      ++v80;
      a1 += 2;
      if (v5 == v80)
      {
        goto LABEL_37;
      }
    }

    v82 = swift_isUniquelyReferenced_nonNull_native();
    *&v107 = v73;
    sub_2BE50(v80, v74, v82);
    v73 = v107;
    if (v4 != 5)
    {
      goto LABEL_38;
    }

LABEL_65:

    v83 = v98[0];
    v84 = v101;
    if (*(v99 + 16) >= v98[0])
    {

      v85 = v83 - 1;
      v86 = v104;
      if (v85)
      {
        v87 = (v99 + 88);
        do
        {
          v88 = *(v87 - 1);
          v89 = *v87;
          v107 = *(v87 - 3);
          v108 = v88;
          v109 = v89;

          sub_28FF8(&v107, &v110, v73);

          v87 += 4;
          --v85;
        }

        while (v85);
      }

      swift_bridgeObjectRelease_n();
      v90 = sub_34280();
      v91 = sub_345D0();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_0, v90, v91, "Completed initialization of Phoneset map", v92, 2u);
      }

      (v100[1])(v86, v84);
      return v110;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_84:
  result = sub_34BE0();
  __break(1u);
  return result;
}

uint64_t sub_2F7A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2F7EC()
{
  result = qword_4FB60;
  if (!qword_4FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB60);
  }

  return result;
}

uint64_t sub_2F840(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_34BC0() & 1;
  }
}

unint64_t sub_2F8F0()
{
  result = qword_4FB78;
  if (!qword_4FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB78);
  }

  return result;
}

uint64_t sub_2F944(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_47020;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2F9AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(type metadata accessor for TMDCGroundTruth() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

void *sub_2FA7C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2FA9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_2FACC(char *a1, int64_t a2, char a3)
{
  result = sub_2FB4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2FAEC(char *a1, int64_t a2, char a3)
{
  result = sub_2FC58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2FB0C(size_t a1, int64_t a2, char a3)
{
  result = sub_2FD5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2FB2C(void *a1, int64_t a2, char a3)
{
  result = sub_2FF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2FB4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F100, &qword_36CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2FC58(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4FC58, &qword_384E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_2FD5C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3204(&qword_4FC50, &qword_384E0);
  v10 = *(sub_33B90() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_33B90() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2FF34(void *result, int64_t a2, char a3, void *a4)
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
    sub_3204(&qword_4FC60, &qword_384F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3204(&qword_4FC68, &qword_384F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_3007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TMDCGroundTruth();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_33B90();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (!a3)
  {
    if (qword_4E5A8 == -1)
    {
LABEL_16:
      v37 = sub_342A0();
      sub_3034(v37, qword_53A18);
      v38 = sub_34280();
      v39 = sub_345E0();
      if (!os_log_type_enabled(v38, v39))
      {
LABEL_19:

        return;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "Skipping CoreData storage because overriddenContactIdentifier is nil";
      v42 = v39;
      v43 = v38;
      v44 = v40;
      v45 = 2;
LABEL_18:
      _os_log_impl(&dword_0, v43, v42, v41, v44, v45);

      goto LABEL_19;
    }

LABEL_29:
    swift_once();
    goto LABEL_16;
  }

  v57 = &v52 - v17;
  v18 = v15;
  v19 = sub_33DA0();
  __chkstk_darwin(v19, v20);
  *(&v52 - 4) = a2;
  *(&v52 - 3) = a3;
  *(&v52 - 2) = a1;
  sub_3204(&qword_4FC48, &qword_384D8);
  sub_34640();

  if (!v3)
  {
    v56 = a1;
    v21 = v64[2];
    v22 = v21 - 2;
    if (v21 <= 2)
    {
    }

    else
    {
      v23 = sub_2F9AC(v21 - 2, v64);
      v60 = v25;
      v61 = v26 >> 1;
      v27 = (v26 >> 1) - v24;
      if (__OFSUB__(v26 >> 1, v24))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v53 = v22;
      v55 = 0;
      if (v27)
      {
        v28 = v24;
        v29 = v18;
        v54 = v23;
        v64 = _swiftEmptyArrayStorage;
        sub_2FB0C(0, v27 & ~(v27 >> 63), 0);
        if ((v27 & 0x8000000000000000) == 0)
        {
          v30 = v64;
          v31 = (v63 + 16);
          v32 = v61;
          if (v28 > v61)
          {
            v32 = v28;
          }

          v58 = v63 + 32;
          v59 = v32;
          v33 = v56;
          v34 = v57;
          while (v59 != v28)
          {
            sub_8000(v60 + *(v62 + 72) * v28, v11);
            (*v31)(v34, v11, v29);
            sub_8064(v11);
            v64 = v30;
            v36 = v30[2];
            v35 = v30[3];
            if (v36 >= v35 >> 1)
            {
              sub_2FB0C(v35 > 1, v36 + 1, 1);
              v33 = v56;
              v30 = v64;
            }

            v30[2] = v36 + 1;
            (*(v63 + 32))(v30 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v36, v34, v29);
            if (v61 == ++v28)
            {
              swift_unknownObjectRelease();
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      v30 = _swiftEmptyArrayStorage;
      v33 = v56;
LABEL_22:
      v46 = sub_33DA0();
      __chkstk_darwin(v46, v47);
      *(&v52 - 2) = v33;
      *(&v52 - 1) = v30;
      v48 = v55;
      sub_34640();
      if (!v48)
      {

        if (qword_4E5A8 == -1)
        {
LABEL_26:
          v49 = sub_342A0();
          sub_3034(v49, qword_53A18);
          v38 = sub_34280();
          v50 = sub_345D0();
          if (!os_log_type_enabled(v38, v50))
          {
            goto LABEL_19;
          }

          v51 = swift_slowAlloc();
          *v51 = 134217984;
          *(v51 + 4) = v53;
          v41 = "Deleted %ld ground truths";
          v42 = v50;
          v43 = v38;
          v44 = v51;
          v45 = 12;
          goto LABEL_18;
        }

LABEL_32:
        swift_once();
        goto LABEL_26;
      }
    }
  }
}

uint64_t sub_305C4(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1;
    v6 = *(v1 + 16);

    v7 = sub_33DA0();
    __chkstk_darwin(v7, v8);
    sub_34640();

    if (!v2)
    {
      v11 = type metadata accessor for TMDCGroundTruth();
      if ((*(v4 + 24) & 1) == 0)
      {
        sub_3007C(v3, *(a1 + *(v11 + 52)), *(a1 + *(v11 + 52) + 8));
        v12 = sub_33DA0();
        sub_34640();
      }
    }
  }

  else
  {
    sub_75D8();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0;
    return swift_willThrow();
  }
}

void sub_30738()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10FF4();
}

uint64_t sub_307AC(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_341F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_4E5C0 != -1)
  {
    swift_once();
  }

  v13 = byte_53A60;
  v14 = sub_34210();
  v15 = sub_34600();
  result = sub_34690();
  if (v13 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v12, a4, v7);
      v20 = sub_34260();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      return sub_34250();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v23;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_341E0();
      v19 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_0, v14, v15, v18, a1, v19, v17, 2u);

      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_341E0();
    v19 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v24;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_30A24(const char *a1, uint64_t a2, char a3)
{
  if (qword_4E5C0 != -1)
  {
    swift_once();
  }

  v5 = byte_53A60;
  log = sub_34210();
  v6 = sub_34610();
  v7 = sub_34690();
  if (v5 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (a3)
    {
      if (a1 >> 32)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (a1 >> 16 > 0x10)
      {
        goto LABEL_28;
      }

      a1 = &v12;
    }

    else if (!a1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_341E0();
    v10 = "";
LABEL_25:
    _os_signpost_emit_with_name_impl(&dword_0, log, v6, v9, a1, v10, v8, 2u);

    return;
  }

LABEL_8:
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      if (!a1)
      {
        __break(1u);
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_31:
        __break(1u);
        return;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v13;
LABEL_24:
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_341E0();
        v10 = "enableTelemetry=YES";
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_12:
}

uint64_t sub_30C04()
{
  v0 = sub_342A0();
  sub_2E9E4(v0, qword_53A18);
  sub_3034(v0, qword_53A18);
  return sub_34290();
}

uint64_t sub_30C84()
{
  v0 = sub_342A0();
  sub_2E9E4(v0, qword_53A30);
  sub_3034(v0, qword_53A30);
  return sub_34290();
}

uint64_t sub_30D04()
{
  v0 = sub_342A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_34220();
  sub_2E9E4(v6, qword_53A48);
  sub_3034(v6, qword_53A48);
  if (qword_4E5B0 != -1)
  {
    swift_once();
  }

  v7 = sub_3034(v0, qword_53A30);
  (*(v1 + 16))(v5, v7, v0);
  return sub_34200();
}

void sub_30E40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_34380();
  v2 = [v0 BOOLForKey:v1];

  byte_53A60 = v2;
}

uint64_t sub_30EDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TMDCGroundTruthCoreDataRecord();
  result = sub_348A0();
  *a1 = result;
  return result;
}

uint64_t sub_30F20()
{
  v59 = sub_3204(&qword_4FC70, &qword_38538);
  v0 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59, v1);
  v60 = &v53 - v2;
  v3 = sub_3204(&qword_4FC78, qword_38540);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v58 = &v53 - v10;
  __chkstk_darwin(v9, v11);
  v62 = &v53 - v12;
  v61 = sub_34070();
  v13 = *(v61 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v61, v15);
  v53 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v53 - v19;
  v21 = sub_33E10();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = __chkstk_darwin(v21, v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = &v53 - v29;
  if (qword_4E578 != -1)
  {
    swift_once();
  }

  v31 = qword_53A00;
  sub_33ED0();
  sub_33DF0();
  v32 = *(v22 + 8);
  v32(v30, v21);
  v33 = *(v31 + 16);
  v57 = v21;
  if (v33 && (v34 = sub_2A7B0(v20), (v35 & 1) != 0))
  {
    (*(v13 + 16))(v62, *(v31 + 56) + *(v13 + 72) * v34, v61);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = v61;
  v54 = *(v13 + 8);
  v55 = v13 + 8;
  v54(v20, v61);
  v38 = *(v13 + 56);
  v39 = v13;
  v40 = v62;
  v38(v62, v36, 1, v37);
  sub_33ED0();
  v41 = v58;
  sub_33E00();
  v32(v27, v57);
  v42 = v37;
  v38(v41, 0, 1, v37);
  v43 = v60;
  v44 = *(v59 + 48);
  sub_314E0(v40, v60);
  sub_314E0(v41, v43 + v44);
  v45 = *(v39 + 48);
  if (v45(v43, 1, v37) != 1)
  {
    v47 = v56;
    sub_314E0(v43, v56);
    if (v45(v43 + v44, 1, v37) != 1)
    {
      v48 = v43 + v44;
      v49 = v53;
      (*(v39 + 32))(v53, v48, v37);
      sub_31550();
      v46 = sub_34360();
      v50 = v37;
      v51 = v54;
      v54(v49, v50);
      sub_A948(v41, &qword_4FC78, qword_38540);
      sub_A948(v62, &qword_4FC78, qword_38540);
      v51(v47, v42);
      sub_A948(v43, &qword_4FC78, qword_38540);
      return v46 & 1;
    }

    sub_A948(v41, &qword_4FC78, qword_38540);
    sub_A948(v62, &qword_4FC78, qword_38540);
    v54(v47, v37);
    goto LABEL_12;
  }

  sub_A948(v41, &qword_4FC78, qword_38540);
  sub_A948(v40, &qword_4FC78, qword_38540);
  if (v45(v43 + v44, 1, v37) != 1)
  {
LABEL_12:
    sub_A948(v43, &qword_4FC70, &qword_38538);
    v46 = 0;
    return v46 & 1;
  }

  sub_A948(v43, &qword_4FC78, qword_38540);
  v46 = 1;
  return v46 & 1;
}

uint64_t sub_314E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4FC78, qword_38540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_31550()
{
  result = qword_4FA28;
  if (!qword_4FA28)
  {
    sub_34070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA28);
  }

  return result;
}

uint64_t sub_315D8(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_23160(v4, &v7);
      sub_23160(&v7, v9);
      sub_3204(&qword_4F0F8, &qword_36C98);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_3364(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_225F4(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_1CA30(v9, &v7, &qword_4FD48, &unk_385F0);
  if (v8)
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_33EF0();

      sub_A948(v9, &qword_4FD48, &unk_385F0);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_A948(v9, &qword_4FD48, &unk_385F0);
    v6 = &v7;
  }

  sub_A948(v6, &qword_4FD48, &unk_385F0);
  return 0;
}

uint64_t sub_317BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_23160(v2, &v5);
      sub_23160(&v5, v7);
      sub_3204(&qword_4F0F8, &qword_36C98);
      sub_34090();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_3364(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_225F4(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1CA30(v7, &v5, &qword_4FD48, &unk_385F0);
  if (v6)
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    sub_34090();
    if (swift_dynamicCast())
    {

      sub_33EF0();

      sub_A948(v7, &qword_4FD48, &unk_385F0);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_A948(v7, &qword_4FD48, &unk_385F0);
    v4 = &v5;
  }

  sub_A948(v4, &qword_4FD48, &unk_385F0);
  return 0;
}

uint64_t sub_31998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_23160(v2, &v5);
      sub_23160(&v5, v7);
      sub_3204(&qword_4F0F8, &qword_36C98);
      sub_340F0();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_3364(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_225F4(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1CA30(v7, &v5, &qword_4FD48, &unk_385F0);
  if (v6)
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    sub_340F0();
    if (swift_dynamicCast())
    {

      sub_33EF0();

      sub_A948(v7, &qword_4FD48, &unk_385F0);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_A948(v7, &qword_4FD48, &unk_385F0);
    v4 = &v5;
  }

  sub_A948(v4, &qword_4FD48, &unk_385F0);
  return 0;
}

uint64_t sub_31B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_23160(v2, &v5);
      sub_23160(&v5, v7);
      sub_3204(&qword_4F0F8, &qword_36C98);
      sub_34080();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_3364(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_225F4(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1CA30(v7, &v5, &qword_4FD48, &unk_385F0);
  if (v6)
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    sub_34080();
    if (swift_dynamicCast())
    {

      sub_33EF0();

      sub_A948(v7, &qword_4FD48, &unk_385F0);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_A948(v7, &qword_4FD48, &unk_385F0);
    v4 = &v5;
  }

  sub_A948(v4, &qword_4FD48, &unk_385F0);
  return 0;
}

void *sub_31D28(uint64_t a1, unint64_t a2)
{
  v4 = sub_3204(&qword_4F5F0, &unk_37730);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v65 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v50 - v11;
  v14 = __chkstk_darwin(v10, v13);
  v73 = &v50 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v19 = &v50 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v50 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v50 - v25;
  v27 = sub_340D0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = __chkstk_darwin(v27, v30);
  v54 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31, v33);
  __chkstk_darwin(v34, v35);
  v53 = &v50 - v37;
  v60 = *(a1 + 16);
  if (!v60)
  {
    return &_swiftEmptyArrayStorage;
  }

  v51 = v26;
  v69 = v36;
  if (a2 >> 62)
  {
    goto LABEL_39;
  }

  v70 = a2 & 0xFFFFFFFFFFFFFF8;
  v76 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_4:
  v38 = 0;
  v39 = *(v28 + 16);
  v28 += 16;
  v61 = v39;
  v50 = (*(v28 + 64) + 32) & ~*(v28 + 64);
  v56 = a1 + v50;
  v57 = *(v28 + 56);
  v75 = (v28 + 40);
  v71 = a2;
  v72 = a2 & 0xC000000000000001;
  v40 = (v28 + 32);
  v68 = (v28 + 16);
  v64 = v60 - 1;
  v62 = v28;
  v66 = (v28 - 8);
  v55 = &_swiftEmptyArrayStorage;
  a1 = v73;
  v52 = v23;
  do
  {
    v63 = v38 + 1;
    v41 = __OFADD__(v38, 1);
    v59 = v41;
    v67 = v38;
    v61(v23, v56 + v57 * v38, v27);
    v74 = *v75;
    v74(v23, 0, 1, v27);
    sub_1CA30(v23, v19, &qword_4F5F0, &unk_37730);
    if (v76)
    {
      v23 = 0;
      v58 = v56 + v63 * v57;
      do
      {
        if (v72)
        {
          a2 = sub_348C0();
          v28 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v23 >= *(v70 + 16))
          {
            goto LABEL_36;
          }

          a2 = *(v71 + 8 * v23 + 32);

          v28 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v70 = a2 & 0xFFFFFFFFFFFFFF8;
            v76 = sub_349A0();
            goto LABEL_4;
          }
        }

        sub_1CA30(v19, v12, &qword_4F5F0, &unk_37730);
        if ((*v40)(v12, 1, v27) == 1)
        {
          sub_A948(v12, &qword_4F5F0, &unk_37730);
          v74(a1, 1, 1, v27);
        }

        else
        {
          a1 = v69;
          (*v68)(v69, v12, v27);
          if (v67 == v64)
          {
            v42 = v65;
            v74(v65, 1, 1, v27);
          }

          else
          {
            if (v59)
            {
              goto LABEL_37;
            }

            if (v63 >= v60)
            {
              goto LABEL_38;
            }

            v42 = v65;
            v61(v65, v58, v27);
            v74(v42, 0, 1, v27);
            a1 = v69;
          }

          sub_34120();
          v43 = v73;
          sub_A948(v42, &qword_4F5F0, &unk_37730);
          v44 = a1;
          a1 = v43;
          (*v66)(v44, v27);
        }

        sub_A948(v19, &qword_4F5F0, &unk_37730);

        sub_33968(a1, v19);
        ++v23;
      }

      while (v28 != v76);
    }

    v23 = v52;
    sub_A948(v52, &qword_4F5F0, &unk_37730);
    a2 = v51;
    sub_33968(v19, v51);
    if ((*v40)(a2, 1, v27) == 1)
    {
      sub_A948(a2, &qword_4F5F0, &unk_37730);
    }

    else
    {
      v45 = *v68;
      v46 = v53;
      (*v68)(v53, a2, v27);
      v61(v54, v46, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_13218(0, v55[2] + 1, 1, v55);
      }

      v28 = v55[2];
      v47 = v55[3];
      a2 = v28 + 1;
      a1 = v73;
      if (v28 >= v47 >> 1)
      {
        v55 = sub_13218(v47 > 1, v28 + 1, 1, v55);
      }

      (*v66)(v53, v27);
      v48 = v55;
      v55[2] = a2;
      v45(v48 + v50 + v28 * v57, v54, v27);
    }

    v38 = v63;
  }

  while (v63 != v60);
  return v55;
}

void sub_32474(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3204(&qword_4F5F0, &unk_37730);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v85 - v9;
  v98 = sub_33B90();
  v11 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98, v12);
  v97 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (!v16)
  {
    v103 = 0;
    v79 = 0;
    v80 = 0;
    goto LABEL_29;
  }

  v87 = v10;
  v88 = a1;
  v89 = a3;
  v99 = 0;
  v100 = 0;
  v103 = 0;
  v101 = 0;
  v17 = (a2 + 32);
  v96 = (v13 + 8);
  *&v14 = 136315138;
  v95 = v14;
  v85 = a2 + 32;
  v86 = v16;
  do
  {
    v18 = *v17;
    v19 = *sub_30C0((v104 + 16), *(v104 + 40));

    v20 = sub_A9A8();
    v24 = v20;
    if (v20)
    {
      v25 = v22;
      v26 = v23;
      v27 = *(v20 + 16);
      if (v27 > 1)
      {
        v102 = v21;
        if (qword_4E5A8 != -1)
        {
          swift_once();
        }

        v28 = sub_342A0();
        sub_3034(v28, qword_53A18);

        v29 = sub_34280();
        v30 = sub_345D0();

        LODWORD(v94) = v30;
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v90 = v31;
          v32 = swift_slowAlloc();
          v91 = v29;
          v92 = v32;
          v105[0] = v32;
          *v31 = v95;
          v33 = v97;
          sub_34010();
          sub_A8F0();
          v93 = v25;
          v34 = v26;
          v35 = v98;
          v36 = sub_34BB0();
          v38 = v37;
          v39 = v35;
          v26 = v34;
          v25 = v93;
          (*v96)(v33, v39);
          v40 = sub_22960(v36, v38, v105);

          v41 = v90;
          v42 = v91;
          *(v90 + 1) = v40;
          _os_log_impl(&dword_0, v42, v94, "[%s]: More than 1 contact names found in the turn", v41, 0xCu);
          sub_3364(v92);
        }

        else
        {
        }

        v21 = v102;
        v27 = *(v24 + 16);
      }

      if (v27)
      {
        v52 = v21;
        sub_339D8(v99, v103, v101, v100);

        v99 = v24;
        v100 = v26;
        v103 = v52;
        v101 = v25;
        goto LABEL_3;
      }

      v102 = v21;
      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v53 = sub_342A0();
      sub_3034(v53, qword_53A18);

      v54 = sub_34280();
      v55 = sub_345D0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v91 = v56;
        v57 = swift_slowAlloc();
        v92 = v54;
        v93 = v57;
        v105[0] = v57;
        LODWORD(v56->isa) = v95;
        v58 = v97;
        sub_34010();
        sub_A8F0();
        LODWORD(v90) = v55;
        v59 = v98;
        v60 = sub_34BB0();
        v94 = v26;
        v62 = v61;
        (*v96)(v58, v59);
        v63 = sub_22960(v60, v62, v105);

        v64 = v91;
        *(&v91->isa + 4) = v63;
        v65 = v92;
        _os_log_impl(&dword_0, v92, v90, "[%s]: No contacts found in the turn", v64, 0xCu);
        sub_3364(v93);

        goto LABEL_3;
      }
    }

    else
    {
      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v43 = sub_342A0();
      sub_3034(v43, qword_53A18);

      v26 = sub_34280();
      v44 = sub_345D0();

      if (os_log_type_enabled(v26, v44))
      {
        v45 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v105[0] = v102;
        *v45 = v95;
        v46 = v97;
        LODWORD(v94) = v44;
        sub_34010();
        sub_A8F0();
        v47 = v98;
        v48 = sub_34BB0();
        v50 = v49;
        (*v96)(v46, v47);
        v51 = sub_22960(v48, v50, v105);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_0, v26, v94, "[%s]: No asrLoggedContactToken was fetched for this turn. Continuing.", v45, 0xCu);
        sub_3364(v102);

        goto LABEL_3;
      }
    }

LABEL_3:
    v17 += 2;
    --v16;
  }

  while (v16);
  v66 = v85 + 16 * v86;
  v67 = *(v66 - 16);
  v68 = *(v66 - 8);

  v69 = v97;
  sub_34010();
  v70 = v87;
  sub_32DFC(v69, v68, v87);
  v71 = sub_1D114(v69, v70, v88 & 1);
  v73 = v72;
  v75 = v74;

  sub_A948(v70, &qword_4F5F0, &unk_37730);
  (*v96)(v69, v98);
  v76 = v99;
  if (v99)
  {
    a3 = v89;
    v78 = v100;
    v77 = v101;
    goto LABEL_34;
  }

  a3 = v89;
  v80 = v100;
  v79 = v101;
LABEL_29:
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v81 = sub_342A0();
  sub_3034(v81, qword_53A18);
  v82 = sub_34280();
  v83 = sub_345D0();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_0, v82, v83, "No ASR logged contact token exists", v84, 2u);

    sub_339D8(0, v103, v79, v80);
  }

  v76 = 0;
  v103 = 0;
  v77 = 0;
  v78 = 0;
  v71 = 0;
  v73 = 0;
  v75 = 0;
LABEL_34:
  *a3 = v76;
  *(a3 + 8) = v103;
  *(a3 + 16) = v77;
  *(a3 + 24) = v78;
  *(a3 + 32) = v71;
  *(a3 + 40) = v73;
  *(a3 + 48) = v75;
}

uint64_t sub_32DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a1;
  v85 = a3;
  v5 = sub_3204(&qword_4F5F0, &unk_37730);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v103 = &v83 - v8;
  v9 = sub_340D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v102 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_33B90();
  v87 = *(v14 - 8);
  v88 = v14;
  v15 = *(v87 + 64);
  v17 = __chkstk_darwin(v14, v16);
  v84 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v83 - v20;
  v22 = sub_33DD0();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22, v24);
  v27 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 16);
  v89 = v10;
  v90 = v9;
  if (v28)
  {
    v29 = *(v3 + 64);
    v31 = *(v26 + 16);
    v30 = v26 + 16;
    v96 = v31;
    v97 = v29;
    v32 = a2 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v33 = *(v30 + 56);
    v94 = (v10 + 56);
    v95 = v33;
    v92 = (v10 + 48);
    v93 = (v30 - 8);
    v104 = &_swiftEmptyArrayStorage;
    v105 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v91 = (v10 + 32);
    v100 = v3;
    v101 = v21;
    v98 = v30;
    v99 = v22;
    for (i = v31(v27, v32, v22); ; i = v96(v27, v32, v42))
    {
      __chkstk_darwin(i, v35);
      *(&v83 - 2) = v27;
      v36 = sub_3370C(sub_33904, (&v83 - 4), v97);
      sub_317BC(v36);
      if (v37)
      {
        v38 = sub_33DC0();
        v39 = [v38 identifier];

        sub_343B0();
        v27 = v105;
        v40 = v103;
        v9 = v90;
        sub_340A0();
        v41 = 0;
      }

      else
      {

        v41 = 1;
        v40 = v103;
      }

      (*v94)(v40, v41, 1, v9);
      v42 = v99;
      (*v93)(v27, v99);
      v43 = (*v92)(v40, 1, v9);
      v21 = v101;
      if (v43 == 1)
      {
        sub_A948(v40, &qword_4F5F0, &unk_37730);
        v3 = v100;
      }

      else
      {
        v44 = *v91;
        (*v91)(v102, v40, v9);
        v45 = v104;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_13218(0, v45[2] + 1, 1, v45);
        }

        v47 = v45[2];
        v46 = v45[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_13218(v46 > 1, v47 + 1, 1, v45);
        }

        v45[2] = v47 + 1;
        v48 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v104 = v45;
        v44(v45 + v48 + *(v89 + 72) * v47, v102, v9);
        v3 = v100;
        v27 = v105;
      }

      v32 += v95;
      if (!--v28)
      {
        break;
      }
    }
  }

  else
  {
    v104 = &_swiftEmptyArrayStorage;
  }

  v49 = sub_31D28(v104, *(v3 + 72));

  v50 = v88;
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v51 = sub_342A0();
  sub_3034(v51, qword_53A18);
  v52 = v87;
  v53 = *(v87 + 16);
  v53(v21, v86, v50);
  swift_bridgeObjectRetain_n();
  v54 = sub_34280();
  v55 = sub_345C0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v105 = v53;
    v57 = v56;
    v104 = swift_slowAlloc();
    v106[0] = v104;
    *v57 = 136315394;
    sub_A8F0();
    v58 = sub_34BB0();
    v59 = v50;
    v61 = v60;
    v62 = *(v52 + 8);
    v62(v21, v59);
    v63 = sub_22960(v58, v61, v106);

    *(v57 + 4) = v63;
    *(v57 + 12) = 2048;
    v64 = v49[2];

    *(v57 + 14) = v64;

    _os_log_impl(&dword_0, v54, v55, "[%s]: Coalesced %ld Intent events for the current turn", v57, 0x16u);
    sub_3364(v104);

    v53 = v105;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v62 = *(v52 + 8);
    v62(v21, v50);
  }

  v65 = v49[2];
  v66 = v85;
  v67 = v84;
  if (v65 >= 2)
  {
    v68 = v88;
    v53(v84, v86, v88);
    swift_bridgeObjectRetain_n();
    v69 = sub_34280();
    v70 = sub_345E0();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = v67;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v106[0] = v73;
      *v72 = 136315394;
      sub_A8F0();
      v74 = sub_34BB0();
      v76 = v75;
      v62(v71, v68);
      v77 = sub_22960(v74, v76, v106);

      *(v72 + 4) = v77;
      *(v72 + 12) = 2048;
      v78 = v49[2];

      *(v72 + 14) = v78;

      _os_log_impl(&dword_0, v69, v70, "[%s]: Coalesced %ld Intent events for the current turn. Using only the first one.", v72, 0x16u);
      sub_3364(v73);

      v66 = v85;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v62(v67, v68);
    }

    v65 = v49[2];
  }

  if (v65)
  {
    v80 = v89;
    v79 = v90;
    (*(v89 + 16))(v66, v49 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v90);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v80 = v89;
    v79 = v90;
  }

  return (*(v80 + 56))(v66, v81, 1, v79);
}

void *sub_3370C(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = &_swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    result = a1(&v17, i);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_13240(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        sub_3204(&qword_4F0F8, &qword_36C98);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_33890()
{
  sub_3364(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_33904@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[4];
  sub_30C0(a1, a1[3]);
  result = sub_33FC0();
  *a2 = result;
  return result;
}

uint64_t sub_33968(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4F5F0, &unk_37730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_339D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}