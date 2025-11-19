void *sub_29D9D5394(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D9D5E90(0, &qword_2A1A2D3F8, sub_29D9D5EE4);
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
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D9D5EE4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D9D5500(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D9D5E90(0, &qword_2A17D14B0, sub_29D9D5F4C);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29D9D5614(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D9D5FA4(0, &qword_2A1A2D410, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29D9D577C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D9D5E90(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29D9D595C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D9D5FA4(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_29D9D59F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D9D5FA4(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_29D9D5A9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_29D9D5FA4(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29DA3A6C0;
  *(v8 + 32) = 0xD000000000000016;
  *(v8 + 40) = 0x800000029DA36EF0;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  if (!a4)
  {
    goto LABEL_8;
  }

  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    MEMORY[0x29ED6D450](a3, a4);
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_29D9D50F4((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 16) = v11 + 1;
    v12 = v8 + 16 * v11;
    *(v12 + 32) = 0x2D786966667553;
    *(v12 + 40) = 0xE700000000000000;
  }

  else
  {
LABEL_8:
  }

  sub_29D9D5FA4(0, &qword_2A1A2DB48, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D9D5E10();
  v13 = sub_29DA347E4();

  return v13;
}

uint64_t sub_29D9D5C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = objc_opt_self();
  v11 = sub_29DA34824();
  v12 = [v10 _typeWithIdentifier_];

  if (v12)
  {

    v24 = sub_29D9D5A9C(a1, a2, a3, a4);
    v14 = v13;

    v15 = [v12 sensitiveLoggingIdentifier];
    v16 = sub_29DA34854();
    v17 = a1;
    v19 = v18;

    v20 = sub_29D9D5A9C(v16, v19, a3, a4);
    v22 = v21;

    *a5 = v17;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = a4;
    a5[4] = v24;
    a5[5] = v14;
    a5[6] = v20;
    a5[7] = v22;
  }

  else
  {
    sub_29DA34DF4();
    MEMORY[0x29ED6D450](0xD00000000000004BLL, 0x800000029DA36F50);
    MEMORY[0x29ED6D450](a1, a2);
    result = sub_29DA34F64();
    __break(1u);
  }

  return result;
}

unint64_t sub_29D9D5E10()
{
  result = qword_2A1A2DB40;
  if (!qword_2A1A2DB40)
  {
    sub_29D9D5FA4(255, &qword_2A1A2DB48, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB40);
  }

  return result;
}

void sub_29D9D5E90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA35104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D9D5EE4()
{
  if (!qword_2A1A2D4B0)
  {
    sub_29D9C79FC(255, &qword_2A1A2D480, 0x29EDBA080);
    v0 = sub_29DA349A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D4B0);
    }
  }
}

void sub_29D9D5F4C()
{
  if (!qword_2A17D14B8)
  {
    v0 = sub_29DA34AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17D14B8);
    }
  }
}

void sub_29D9D5FA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D9D5FF4()
{
  if (!qword_2A1A2CB00)
  {
    sub_29D9C79FC(255, &qword_2A1A2CAE0, &off_29F359180);
    sub_29DA336F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2CB00);
    }
  }
}

__n128 sub_29D9D6078(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D9D608C(uint64_t a1, int a2)
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

uint64_t sub_29D9D60D4(uint64_t result, int a2, int a3)
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

uint64_t sub_29D9D6134(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000029DA36FC0 == a2 || (sub_29DA35114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966667573 && a2 == 0xE600000000000000 || (sub_29DA35114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000029DA36FE0 == a2 || (sub_29DA35114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000029DA37000 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_29DA35114();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29D9D62A0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29D9D6660(0, &qword_2A17D14C0, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = &v26 - v9;
  v11 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29D9D65A4();
  sub_29DA35214();
  if (v2)
  {
    return sub_29D9C7968(a1);
  }

  LOBYTE(v35[0]) = 0;
  v12 = sub_29DA35024();
  v30 = v13;
  LOBYTE(v35[0]) = 1;
  v14 = sub_29DA34FF4();
  v29 = v15;
  v27 = v14;
  LOBYTE(v35[0]) = 2;
  v26 = sub_29DA35024();
  v28 = v16;
  v36 = 3;
  v17 = sub_29DA35024();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  v20 = v30;
  *&v31 = v12;
  *(&v31 + 1) = v30;
  v22 = v27;
  v21 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  *&v34 = v17;
  *(&v34 + 1) = v19;
  sub_29D9D65F8(&v31, v35);
  sub_29D9C7968(a1);
  v35[0] = v12;
  v35[1] = v20;
  v35[2] = v22;
  v35[3] = v29;
  v35[4] = v26;
  v35[5] = v21;
  v35[6] = v17;
  v35[7] = v19;
  result = sub_29D9D6630(v35);
  v24 = v32;
  *a2 = v31;
  a2[1] = v24;
  v25 = v34;
  a2[2] = v33;
  a2[3] = v25;
  return result;
}

unint64_t sub_29D9D65A4()
{
  result = qword_2A17D14C8;
  if (!qword_2A17D14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D14C8);
  }

  return result;
}

void sub_29D9D6660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9D65A4();
    v7 = a3(a1, &type metadata for HighlightAlertFeedIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D9D66D8()
{
  result = qword_2A17D14D8;
  if (!qword_2A17D14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D14D8);
  }

  return result;
}

unint64_t sub_29D9D6730()
{
  result = qword_2A17D14E0;
  if (!qword_2A17D14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D14E0);
  }

  return result;
}

unint64_t sub_29D9D6788()
{
  result = qword_2A17D14E8;
  if (!qword_2A17D14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D14E8);
  }

  return result;
}

void sub_29D9D67DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v165 = a6;
  v159 = a5;
  v177 = a4;
  v6 = MEMORY[0x29EDC9C68];
  sub_29D9DC270(0, qword_2A1A2CDD0, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration, MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v166 = &v150 - v9;
  sub_29D9DC270(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], v6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v164 = (&v150 - v12);
  v168 = sub_29DA335B4();
  v167 = *(v168 - 8);
  v13 = *(v167 + 64);
  MEMORY[0x2A1C7C4A8](v168);
  v173 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_29DA336F4();
  v162 = *(v163 - 8);
  v15 = *(v162 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v163);
  v158 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v161 = &v150 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v169 = &v150 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v160 = &v150 - v22;
  v172 = sub_29DA33554();
  v174 = *(v172 - 8);
  v23 = *(v174 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v172);
  v171 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v170 = &v150 - v26;
  v27 = type metadata accessor for HighlightAlertConfiguration(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v31 = (&v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x2A1C7C4A8](v29);
  v34 = (&v150 - v33);
  v35 = MEMORY[0x2A1C7C4A8](v32);
  v156 = (&v150 - v36);
  MEMORY[0x2A1C7C4A8](v35);
  v38 = (&v150 - v37);
  v175 = sub_29DA34644();
  v176 = *(v175 - 8);
  v39 = *(v176 + 64);
  v40 = MEMORY[0x2A1C7C4A8](v175);
  v42 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x2A1C7C4A8](v40);
  v45 = &v150 - v44;
  v46 = MEMORY[0x2A1C7C4A8](v43);
  v157 = &v150 - v47;
  MEMORY[0x2A1C7C4A8](v46);
  v49 = &v150 - v48;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    swift_beginAccess();
    v178 = swift_unknownObjectWeakLoadStrong();
    if (!v178)
    {

      return;
    }

    swift_beginAccess();
    v52 = swift_unknownObjectWeakLoadStrong();
    if (!v52)
    {

      return;
    }

    v53 = v52;
    v54 = *&v178[qword_2A1A2D708];

    sub_29DA33B44();

    v55 = v179;
    if (v180)
    {
      sub_29DA34614();
      sub_29D9DBFF8(v177, v38);
      v56 = v55;
      v57 = v55;
      v58 = sub_29DA34634();
      v59 = sub_29DA34B84();
      sub_29D9DC0B0(v55);
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v155 = v53;
        v62 = v61;
        v179 = v61;
        *v60 = 136380931;
        v63 = *v38;
        v64 = v38[1];

        sub_29D9DC190(v38, type metadata accessor for HighlightAlertConfiguration);
        v65 = sub_29D9EBB44(v63, v64, &v179);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2082;
        swift_getErrorValue();
        v66 = sub_29DA35154();
        v68 = sub_29D9EBB44(v66, v67, &v179);

        *(v60 + 14) = v68;
        _os_log_impl(&dword_29D9BB000, v58, v59, "HighlightAlert query operation for %{private}s returned error: %{public}s", v60, 0x16u);
        swift_arrayDestroy();
        v69 = v62;
        v53 = v155;
        MEMORY[0x29ED6E4C0](v69, -1, -1);
        MEMORY[0x29ED6E4C0](v60, -1, -1);

        sub_29D9DC0B0(v57);
      }

      else
      {

        sub_29D9DC0B0(v55);
        sub_29D9DC190(v38, type metadata accessor for HighlightAlertConfiguration);
      }

      (*(v176 + 8))(v49, v175);
LABEL_23:
      [v53 cancel];

      return;
    }

    if (!v179)
    {
      sub_29DA34614();
      sub_29D9DBFF8(v177, v31);
      v87 = sub_29DA34634();
      v88 = sub_29DA34BA4();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v179 = v90;
        *v89 = 136380675;
        v91 = v53;
        v92 = *v31;
        v93 = v31[1];

        sub_29D9DC190(v31, type metadata accessor for HighlightAlertConfiguration);
        v94 = sub_29D9EBB44(v92, v93, &v179);
        v53 = v91;

        *(v89 + 4) = v94;
        _os_log_impl(&dword_29D9BB000, v87, v88, "HighlightAlert query for %{private}s returned no samples", v89, 0xCu);
        sub_29D9C7968(v90);
        MEMORY[0x29ED6E4C0](v90, -1, -1);
        MEMORY[0x29ED6E4C0](v89, -1, -1);
      }

      else
      {

        sub_29D9DC190(v31, type metadata accessor for HighlightAlertConfiguration);
      }

      (*(v176 + 8))(v42, v175);
      goto LABEL_23;
    }

    v155 = v53;
    v154 = v179;
    v70 = [v179 sampleType];
    v71 = *&v51[qword_2A1A2D580];

    sub_29DA33B44();

    sub_29D9C706C(&v179, v181);
    v72 = sub_29DA33984();
    v73 = [v70 hk:v72 metadataValueDisplayTypeInStore:?];

    sub_29D9C7968(&v179);
    if (v73)
    {
      v74 = [v73 objectType];

      if (v74)
      {
        objc_opt_self();
        v75 = swift_dynamicCastObjCClass();
        if (v75)
        {
          v151 = v75;
          v152 = v74;
          v76 = v154;
          v77 = [v154 startDate];
          v78 = v160;
          sub_29DA336C4();

          v79 = [v76 endDate];
          sub_29DA336C4();

          v80 = v170;
          sub_29DA33504();
          v81 = *(v177 + *(v27 + 32));
          v153 = v51;
          if (v81 == 2)
          {
            v82 = v172;
            v84 = v163;
            v85 = v162;
            v86 = v161;
          }

          else
          {
            v82 = v172;
            v83 = v174;
            v84 = v163;
            v85 = v162;
            v86 = v161;
            if (v81 != 1)
            {
              v105 = v171;
              (*(v174 + 16))(v171, v80, v172);
              v106 = v173;
              v107 = v164;
LABEL_36:
              v108 = sub_29DA33534();
              *v109 = *v109 + 0.001;
              v108(&v179, 0);
              v110 = type metadata accessor for HighlightAlertDistributionConfiguration();
              v111 = *(v83 + 16);
              v112 = v165;
              v113 = v165[v110[10]];
              v111(v107, v105, v82);
              (*(v83 + 56))(v107, 0, 1, v82);
              sub_29D9EC718(v107, v113, v106);
              sub_29D9DC120(v107, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
              v160 = *v112;
              v114 = &v112[v110[6]];
              v162 = *v114;
              LODWORD(v161) = v114[8];
              v159 = v110[9];
              v169 = qword_2A1A2CD70;
              v115 = v155;
              v116 = v82;
              v117 = *&v155[qword_2A1A2CD70];
              v118 = (v117 + *(*v117 + *MEMORY[0x29EDC9DE8] + 16));
              v163 = (*(*v117 + 48) + 3) & 0x1FFFFFFFCLL;
              os_unfair_lock_lock((v117 + v163));
              v164 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration;
              sub_29D9DC120(v118, qword_2A1A2CDD0, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration);
              v119 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
              v111(&v118[v119[5]], v105, v116);
              v120 = v167;
              v121 = v106;
              v122 = v168;
              (*(v167 + 16))(&v118[v119[6]], v121, v168);
              v123 = v119[7];
              v124 = sub_29DA34064();
              (*(*(v124 - 8) + 16))(&v118[v123], &v112[v159], v124);
              *v118 = v151;
              *&v118[v119[8]] = v160;
              *&v118[v119[9]] = 0;
              v125 = &v118[v119[10]];
              *v125 = v162;
              v125[8] = v161;
              *&v118[v119[11]] = 0;
              v126 = *(v119 - 1);
              (*(v126 + 56))(v118, 0, 1, v119);
              v127 = v152;
              os_unfair_lock_unlock((v117 + v163));
              v128 = *&v169[v115];
              v129 = *(*v128 + *MEMORY[0x29EDC9DE8] + 16);
              v130 = (*(*v128 + 48) + 3) & 0x1FFFFFFFCLL;
              os_unfair_lock_lock((v128 + v130));
              v131 = v128 + v129;
              v132 = v166;
              v133 = v164;
              sub_29D9DC1F0(v131, v166, qword_2A1A2CDD0, v164);
              LODWORD(v119) = (*(v126 + 48))(v132, 1, v119);
              sub_29D9DC120(v132, qword_2A1A2CDD0, v133);
              os_unfair_lock_unlock((v128 + v130));
              if (v119 != 1)
              {
                v146 = *(v174 + 8);
                v147 = v172;
                v146(v170, v172);
                sub_29D9DC0B0(v154);

                (*(v120 + 8))(v173, v122);
                v146(v171, v147);
                return;
              }

              v134 = v127;
              v135 = v157;
              sub_29DA34614();
              v136 = v156;
              sub_29D9DBFF8(v177, v156);
              v137 = sub_29DA34634();
              v138 = sub_29DA34B84();
              v139 = os_log_type_enabled(v137, v138);
              v140 = v153;
              if (v139)
              {
                v141 = swift_slowAlloc();
                v142 = swift_slowAlloc();
                v179 = v142;
                *v141 = 136380675;
                v143 = *v136;
                v144 = v136[1];

                sub_29D9DC190(v136, type metadata accessor for HighlightAlertConfiguration);
                v145 = sub_29D9EBB44(v143, v144, &v179);

                *(v141 + 4) = v145;
                _os_log_impl(&dword_29D9BB000, v137, v138, "HighlightAlert query for %{private}s passed invalid configuration to distribution query operation", v141, 0xCu);
                sub_29D9C7968(v142);
                MEMORY[0x29ED6E4C0](v142, -1, -1);
                MEMORY[0x29ED6E4C0](v141, -1, -1);
                sub_29D9DC0B0(v154);
              }

              else
              {
                sub_29D9DC0B0(v154);

                sub_29D9DC190(v136, type metadata accessor for HighlightAlertConfiguration);
              }

              (*(v176 + 8))(v135, v175);
              v148 = *(v174 + 8);
              v149 = v172;
              v148(v170, v172);
              (*(v167 + 8))(v173, v168);
              v148(v171, v149);
              v102 = v155;
              [v155 cancel];

              goto LABEL_29;
            }
          }

          sub_29DA334F4();
          sub_29DA33684();
          v103 = *(v85 + 8);
          v103(v78, v84);
          if (sub_29DA336D4() == 1)
          {
            v104 = v158;
            sub_29DA334F4();
          }

          else
          {
            sub_29DA334B4();
            v104 = v158;
            sub_29DA33684();
            v103(v78, v84);
          }

          sub_29DA33684();
          (*(v85 + 16))(v169, v104, v84);
          v105 = v171;
          sub_29DA33504();
          v103(v104, v84);
          v103(v86, v84);
          v106 = v173;
          v107 = v164;
          v83 = v174;
          goto LABEL_36;
        }
      }
    }

    sub_29DA34614();
    sub_29D9DBFF8(v177, v34);
    v95 = sub_29DA34634();
    v96 = sub_29DA34BA4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v179 = v98;
      *v97 = 136380675;
      v99 = *v34;
      v100 = v34[1];

      sub_29D9DC190(v34, type metadata accessor for HighlightAlertConfiguration);
      v101 = sub_29D9EBB44(v99, v100, &v179);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_29D9BB000, v95, v96, "HighlightAlert query for %{private}s returned non-quantity primary metadata type.", v97, 0xCu);
      sub_29D9C7968(v98);
      MEMORY[0x29ED6E4C0](v98, -1, -1);
      MEMORY[0x29ED6E4C0](v97, -1, -1);
      sub_29D9DC0B0(v154);
    }

    else
    {
      sub_29D9DC0B0(v154);

      sub_29D9DC190(v34, type metadata accessor for HighlightAlertConfiguration);
    }

    (*(v176 + 8))(v45, v175);
    v102 = v155;
    [v155 cancel];

LABEL_29:
  }
}

uint64_t sub_29D9D7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v184 = a6;
  v182 = a5;
  v176 = sub_29DA336F4();
  v175 = *(v176 - 8);
  v7 = *(v175 + 64);
  MEMORY[0x2A1C7C4A8](v176);
  v173 = v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_29DA33754();
  v172 = *(v174 - 8);
  v9 = *(v172 + 64);
  MEMORY[0x2A1C7C4A8](v174);
  v171 = v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC9C68];
  sub_29D9DC270(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v179 = v161 - v14;
  v183 = sub_29DA33964();
  v181 = *(v183 - 8);
  v15 = *(v181 + 64);
  MEMORY[0x2A1C7C4A8](v183);
  v180 = v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9DC270(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v11);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = (v161 - v19);
  v21 = type metadata accessor for HighlightAlertSampleInfo(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v24 = v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HighlightAlertConfiguration(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x2A1C7C4A8](v25 - 8);
  v177 = (v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v169 = (v161 - v30);
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v185 = (v161 - v32);
  MEMORY[0x2A1C7C4A8](v31);
  v34 = (v161 - v33);
  v35 = sub_29DA34644();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35);
  v40 = v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x2A1C7C4A8](v38);
  v178 = v161 - v42;
  v43 = MEMORY[0x2A1C7C4A8](v41);
  v168 = v161 - v44;
  v45 = MEMORY[0x2A1C7C4A8](v43);
  v170 = v161 - v46;
  v47 = MEMORY[0x2A1C7C4A8](v45);
  v186 = v161 - v48;
  MEMORY[0x2A1C7C4A8](v47);
  v187 = v161 - v49;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v164 = v20;
  v165 = v24;
  v188 = v35;
  v189 = v36;
  v51 = a2;
  v52 = result;
  v53 = *v51;
  v54 = *(v51 + 8);
  v167 = v51;
  if (*(v51 + 16))
  {
    v55 = 0;
  }

  else
  {
    v55 = 0x7961446E65766553;
  }

  if (*(v51 + 16))
  {
    v56 = 0;
  }

  else
  {
    v56 = 0xE800000000000000;
  }

  sub_29D9D5C44(v53, v54, v55, v56, v195);
  v57 = v195[4];

  sub_29D9D6630(v195);
  sub_29DA34B34();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_17:
    sub_29DA34614();
    v72 = sub_29DA34634();
    v73 = sub_29DA34B84();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v188;
    if (v74)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_29D9BB000, v72, v73, "HighlightAlert query operations went away unexpectedly", v76, 2u);
      MEMORY[0x29ED6E4C0](v76, -1, -1);
    }

    else
    {
    }

    return (*(v189 + 8))(v40, v75);
  }

  v59 = *(Strong + qword_2A1A2D708);
  v60 = Strong;

  sub_29DA33B44();

  v61 = v193;
  v62 = v194;
  swift_beginAccess();
  v63 = swift_unknownObjectWeakLoadStrong();
  if (!v63)
  {

    sub_29D9DC0B0(v61);
    goto LABEL_17;
  }

  v64 = *(v63 + qword_2A1A2D6B0);
  v65 = v63;

  sub_29DA33B44();

  v66 = v191[0];
  v166 = v191[1];
  v163 = v192;
  v161[1] = v57;
  if (v192 != 1)
  {
    v77 = v166;
    sub_29D9DBFB4(v191[0]);
    v78 = 0;
    v79 = v66;
    if (!v62)
    {
      goto LABEL_31;
    }

LABEL_26:
    v162 = v79;
    v184 = v77;
    v80 = v61;

    v81 = v187;
    sub_29DA34614();
    sub_29D9DBFF8(v167, v34);
    v82 = v61;
    v83 = sub_29DA34634();
    v84 = sub_29DA34B84();
    sub_29D9DC0B0(v61);
    if (!os_log_type_enabled(v83, v84))
    {

      sub_29D9DC0B0(v61);
      sub_29D9DC064(v162, v184, v78);
      sub_29D9DC0B0(v61);
      sub_29D9DC064(v66, v166, v163);
      sub_29D9DC190(v34, type metadata accessor for HighlightAlertConfiguration);
      v94 = *(v189 + 8);
      v96 = v81;
      return v94(v96, v188);
    }

    v85 = swift_slowAlloc();
    v186 = v66;
    v86 = v85;
    v87 = swift_slowAlloc();
    v191[0] = v87;
    *v86 = 136380931;
    v88 = *v34;
    v89 = v34[1];

    sub_29D9DC190(v34, type metadata accessor for HighlightAlertConfiguration);
    v90 = sub_29D9EBB44(v88, v89, v191);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2082;
    swift_getErrorValue();
    v91 = sub_29DA35154();
    v93 = sub_29D9EBB44(v91, v92, v191);

    *(v86 + 14) = v93;
    _os_log_impl(&dword_29D9BB000, v83, v84, "HighlightAlert query operation for %{private}s returned error: %{public}s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v87, -1, -1);
    MEMORY[0x29ED6E4C0](v86, -1, -1);

    sub_29D9DC0B0(v61);
    sub_29D9DC064(v162, v184, v78);
    sub_29D9DC0B0(v61);
    sub_29D9DC064(v186, v166, v163);
    v94 = *(v189 + 8);
    v95 = &v197;
LABEL_34:
    v96 = *(v95 - 32);
    return v94(v96, v188);
  }

  v67 = v166;
  sub_29D9DC0C8(v191[0], v166, 1);
  sub_29D9DC0C8(v66, v67, 1);
  v68 = v66;
  sub_29D9C6144();
  if ((swift_dynamicCast() & 1) != 0 && v190 == 1)
  {
    v69 = v166;
    sub_29D9DC064(v66, v166, 1);
    v70 = v66;
    v71 = v69;
    goto LABEL_30;
  }

  v191[0] = v66;
  if (swift_dynamicCast() && !v190)
  {
    v70 = v66;
    v71 = v166;
LABEL_30:
    sub_29D9DC064(v70, v71, 1);
    v79 = 0;
    v77 = 0;
    v78 = 0;
    if (v62)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v78 = 1;
  v79 = v66;
  v77 = v166;
  if (v62)
  {
    goto LABEL_26;
  }

LABEL_31:
  if (v78)
  {
    v97 = v79;

    v98 = v186;
    sub_29DA34614();
    v99 = v185;
    sub_29D9DBFF8(v167, v185);
    v100 = v79;
    v101 = v79;
    v102 = sub_29DA34634();
    v103 = sub_29DA34B84();
    sub_29D9DC064(v79, v77, 1);
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v184 = v77;
      v187 = v61;
      v105 = v104;
      v106 = swift_slowAlloc();
      v191[0] = v106;
      *v105 = 136380931;
      v107 = *v99;
      v108 = v99[1];

      sub_29D9DC190(v99, type metadata accessor for HighlightAlertConfiguration);
      v109 = sub_29D9EBB44(v107, v108, v191);

      *(v105 + 4) = v109;
      *(v105 + 12) = 2082;
      swift_getErrorValue();
      v110 = sub_29DA35154();
      v112 = v66;
      v113 = sub_29D9EBB44(v110, v111, v191);

      *(v105 + 14) = v113;
      _os_log_impl(&dword_29D9BB000, v102, v103, "HighlightAlert quantity distribution query operation for %{private}s returned error: %{public}s", v105, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v106, -1, -1);
      MEMORY[0x29ED6E4C0](v105, -1, -1);

      v114 = v184;
      sub_29D9DC064(v101, v184, 1);
      sub_29D9DC064(v101, v114, 1);
      sub_29D9DC0B0(v187);
      sub_29D9DC064(v112, v166, v163);
      v94 = *(v189 + 8);
      v95 = &v196;
      goto LABEL_34;
    }

    sub_29D9DC064(v79, v77, 1);
    sub_29D9DC064(v79, v77, 1);
    sub_29D9DC0B0(v61);
    sub_29D9DC064(v66, v166, v163);
    sub_29D9DC190(v99, type metadata accessor for HighlightAlertConfiguration);
LABEL_45:
    v94 = *(v189 + 8);
    v96 = v98;
    return v94(v96, v188);
  }

  v162 = v79;
  if (v61)
  {
    v115 = type metadata accessor for HighlightAlertDistributionConfiguration();
    v116 = v182;
    v117 = v182 + *(v115 + 24);
    if ((*(v117 + 8) & 1) == 0 && *v117 && v79 && v77 && !*(v77 + 2))
    {
      v155 = v79;
      sub_29D9DC0BC(v61);
      v156 = v61;

      v98 = v168;
      sub_29DA34614();
      v157 = sub_29DA34634();
      v158 = sub_29DA34B84();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = v61;
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_29D9BB000, v157, v158, "HighlightAlert submission skipped because data is not valid", v160, 2u);
        MEMORY[0x29ED6E4C0](v160, -1, -1);

        sub_29D9DC0B0(v159);
        sub_29D9DC0B0(v159);
        sub_29D9DC064(v155, v77, 0);
        sub_29D9DC0B0(v159);
        sub_29D9DC064(v66, v166, v163);
      }

      else
      {
        sub_29D9DC0B0(v61);
        sub_29D9DC064(v66, v166, v163);
        sub_29D9DC064(v155, v77, 0);
        sub_29D9DC0B0(v61);

        sub_29D9DC0B0(v61);
      }

      goto LABEL_45;
    }

    sub_29D9DC0BC(v61);
    sub_29D9DC0BC(v61);
    sub_29D9DC0BC(v61);
    sub_29D9DC0C8(v79, v77, 0);
    sub_29D9DC0D4();
    v118 = v165;
    sub_29DA34794();
    v119 = v164;
    v120 = v167;
    sub_29D9D9474(v118, v79, v77, v167, v116, v184, v164);
    sub_29D9DC064(v79, v77, 0);
    v121 = v179;
    sub_29DA1AF88(v118, v119, v120, v179);
    v122 = v181;
    v123 = v183;
    if ((*(v181 + 48))(v121, 1, v183) == 1)
    {
      v184 = v77;
      v124 = v61;

      sub_29D9DC120(v121, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
      v125 = v170;
      sub_29DA34614();
      v126 = v169;
      sub_29D9DBFF8(v120, v169);
      v127 = sub_29DA34634();
      v128 = sub_29DA34B84();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v186 = v66;
        v131 = v130;
        v191[0] = v130;
        *v129 = 136380675;
        v132 = *v126;
        v133 = v126[1];

        sub_29D9DC190(v126, type metadata accessor for HighlightAlertConfiguration);
        v134 = sub_29D9EBB44(v132, v133, v191);

        *(v129 + 4) = v134;
        _os_log_impl(&dword_29D9BB000, v127, v128, "HighlightAlert was unable to create a feed item for %{private}s", v129, 0xCu);
        sub_29D9C7968(v131);
        MEMORY[0x29ED6E4C0](v131, -1, -1);
        MEMORY[0x29ED6E4C0](v129, -1, -1);

        sub_29D9DC0B0(v124);
        sub_29D9DC0B0(v124);
        sub_29D9DC064(v162, v184, 0);
        sub_29D9DC0B0(v124);
        sub_29D9DC064(v186, v166, v163);
      }

      else
      {

        sub_29D9DC0B0(v124);
        sub_29D9DC0B0(v124);
        sub_29D9DC064(v162, v184, 0);
        sub_29D9DC0B0(v124);
        sub_29D9DC064(v66, v166, v163);
        sub_29D9DC190(v126, type metadata accessor for HighlightAlertConfiguration);
      }

      (*(v189 + 8))(v125, v188);
    }

    else
    {
      v144 = *(v122 + 32);
      v187 = v61;
      v144(v180, v121, v123);
      sub_29D9DC270(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
      v145 = sub_29DA34774();
      v146 = [v145 UUID];

      v147 = v171;
      sub_29DA33744();

      v148 = sub_29DA34774();
      v149 = [v148 endDate];

      v150 = v173;
      sub_29DA336C4();

      v151 = v180;
      sub_29DA15594(v180, v147, v150, v184);
      sub_29DA34B34();

      v152 = v187;
      sub_29D9DC0B0(v187);
      sub_29D9DC0B0(v152);
      sub_29D9DC064(v162, v77, 0);
      sub_29D9DC0B0(v152);
      sub_29D9DC064(v66, v166, v163);

      (*(v175 + 8))(v150, v176);
      (*(v172 + 8))(v147, v174);
      (*(v122 + 8))(v151, v183);
    }

    sub_29D9DC120(v164, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
    return sub_29D9DC190(v165, type metadata accessor for HighlightAlertSampleInfo);
  }

  else
  {
    v186 = v66;

    v135 = v178;
    sub_29DA34614();
    v136 = v177;
    sub_29D9DBFF8(v167, v177);
    v137 = sub_29DA34634();
    v138 = sub_29DA34BA4();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v191[0] = v140;
      *v139 = 136380675;
      v142 = *v136;
      v141 = v136[1];

      sub_29D9DC190(v136, type metadata accessor for HighlightAlertConfiguration);
      v143 = sub_29D9EBB44(v142, v141, v191);

      *(v139 + 4) = v143;
      _os_log_impl(&dword_29D9BB000, v137, v138, "HighlightAlert query for %{private}s returned no samples; marking this feed item for deletion.", v139, 0xCu);
      sub_29D9C7968(v140);
      MEMORY[0x29ED6E4C0](v140, -1, -1);
      MEMORY[0x29ED6E4C0](v139, -1, -1);
    }

    else
    {

      sub_29D9DC190(v136, type metadata accessor for HighlightAlertConfiguration);
    }

    v153 = (*(v189 + 8))(v135, v188);
    v154 = *&v52[qword_2A1A2D578];
    MEMORY[0x2A1C7C4A8](v153);
    v161[-2] = v167;

    sub_29DA33B54();
    sub_29D9DC064(v162, v77, 0);
    sub_29D9DC0B0(0);
    sub_29D9DC064(v186, v166, v163);
  }
}

uint64_t sub_29D9D93C8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7961446E65766553;
  }

  if (*(a2 + 16))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = *(a2 + 8);

  sub_29D9D5C44(v2, v3, v4, v5, v11);
  v7 = v11[4];
  v8 = v11[5];

  sub_29D9D6630(v11);
  sub_29D9F8C54(&v10, v7, v8);
}

uint64_t sub_29D9D9474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v383 = a6;
  v358 = a5;
  v389 = a4;
  v349 = a3;
  v381 = a2;
  v384 = a7;
  v301 = sub_29DA342E4();
  v299 = *(v301 - 8);
  v8 = *(v299 + 64);
  MEMORY[0x2A1C7C4A8](v301);
  v297 = &v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_29DA341B4();
  v298 = *(v300 - 8);
  v10 = *(v298 + 64);
  MEMORY[0x2A1C7C4A8](v300);
  v296 = &v275 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = sub_29DA34384();
  v347 = *(v348 - 8);
  v12 = *(v347 + 64);
  MEMORY[0x2A1C7C4A8](v348);
  v346 = &v275 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = sub_29DA342F4();
  v343 = *(v344 - 8);
  v14 = *(v343 + 64);
  MEMORY[0x2A1C7C4A8](v344);
  v345 = &v275 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_29DA34274();
  v340 = *(v341 - 8);
  v16 = *(v340 + 64);
  MEMORY[0x2A1C7C4A8](v341);
  v342 = &v275 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x29EDC9C68];
  sub_29D9DC270(0, &qword_2A1A2CC98, MEMORY[0x29EDC4C80], MEMORY[0x29EDC9C68]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v339 = &v275 - v21;
  v336 = sub_29DA340E4();
  v335 = *(v336 - 8);
  v22 = *(v335 + 64);
  MEMORY[0x2A1C7C4A8](v336);
  v362 = &v275 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_29DA342B4();
  v331 = *(v332 - 8);
  v24 = *(v331 + 64);
  MEMORY[0x2A1C7C4A8](v332);
  v361 = &v275 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_29DA34284();
  v329 = *(v330 - 8);
  v26 = *(v329 + 64);
  MEMORY[0x2A1C7C4A8](v330);
  v360 = &v275 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_29DA34334();
  v337 = *(v338 - 8);
  v28 = *(v337 + 64);
  MEMORY[0x2A1C7C4A8](v338);
  v359 = &v275 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9DC270(0, &qword_2A1A2CCA8, MEMORY[0x29EDC4C30], v18);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x2A1C7C4A8](v30 - 8);
  v333 = &v275 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v334 = &v275 - v34;
  sub_29D9DC270(0, &qword_2A1A2CCA0, MEMORY[0x29EDC4C70], v18);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x2A1C7C4A8](v35 - 8);
  v310 = &v275 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37);
  v309 = &v275 - v39;
  v313 = sub_29DA341D4();
  v312 = *(v313 - 8);
  v40 = *(v312 + 64);
  MEMORY[0x2A1C7C4A8](v313);
  v311 = &v275 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_29DA34314();
  v307 = *(v308 - 8);
  v42 = v307[8];
  v43 = MEMORY[0x2A1C7C4A8](v308);
  v304 = &v275 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43);
  v321 = &v275 - v45;
  sub_29D9DC270(0, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0], v18);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x2A1C7C4A8](v46 - 8);
  v303 = &v275 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x2A1C7C4A8](v48);
  v320 = &v275 - v51;
  v52 = MEMORY[0x2A1C7C4A8](v50);
  v306 = &v275 - v53;
  MEMORY[0x2A1C7C4A8](v52);
  v319 = &v275 - v54;
  sub_29D9DC270(0, &qword_2A1A2CCB8, MEMORY[0x29EDC4B00], v18);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x2A1C7C4A8](v55 - 8);
  v328 = &v275 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v57);
  v371 = &v275 - v59;
  sub_29D9DC270(0, &qword_2A1A2DB80, MEMORY[0x29EDC4D60], v18);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v60 - 8);
  v318 = &v275 - v62;
  sub_29D9DC270(0, &qword_2A1A2CCB0, MEMORY[0x29EDC4B40], v18);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x2A1C7C4A8](v63 - 8);
  v324 = &v275 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x2A1C7C4A8](v65);
  v323 = &v275 - v68;
  MEMORY[0x2A1C7C4A8](v67);
  v370 = &v275 - v69;
  v353 = sub_29DA34234();
  v315 = *(v353 - 8);
  v70 = *(v315 + 8);
  v71 = MEMORY[0x2A1C7C4A8](v353);
  v317 = &v275 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v71);
  v316 = &v275 - v73;
  v352 = sub_29DA34204();
  v364 = *(v352 - 8);
  v74 = *(v364 + 8);
  MEMORY[0x2A1C7C4A8](v352);
  v351 = &v275 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = sub_29DA34374();
  v387 = *(v375 - 8);
  v76 = *(v387 + 64);
  v77 = MEMORY[0x2A1C7C4A8](v375);
  v356 = &v275 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x2A1C7C4A8](v77);
  v357 = &v275 - v80;
  v81 = MEMORY[0x2A1C7C4A8](v79);
  v374 = &v275 - v82;
  MEMORY[0x2A1C7C4A8](v81);
  v380 = &v275 - v83;
  v373 = sub_29DA34264();
  v372 = *(v373 - 8);
  v84 = *(v372 + 64);
  v85 = MEMORY[0x2A1C7C4A8](v373);
  v294 = &v275 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x2A1C7C4A8](v85);
  v295 = &v275 - v88;
  v89 = MEMORY[0x2A1C7C4A8](v87);
  v302 = &v275 - v90;
  v91 = MEMORY[0x2A1C7C4A8](v89);
  v305 = &v275 - v92;
  v93 = MEMORY[0x2A1C7C4A8](v91);
  v350 = &v275 - v94;
  MEMORY[0x2A1C7C4A8](v93);
  v376 = &v275 - v95;
  v363 = sub_29DA34394();
  v354 = *(v363 - 8);
  v96 = *(v354 + 64);
  v97 = MEMORY[0x2A1C7C4A8](v363);
  v314 = &v275 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v97);
  v365 = &v275 - v99;
  v369 = sub_29DA34224();
  v368 = *(v369 - 8);
  v100 = *(v368 + 64);
  MEMORY[0x2A1C7C4A8](v369);
  v367 = &v275 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9DC270(0, &qword_2A1A2CC90, MEMORY[0x29EDC4D10], v18);
  v103 = *(*(v102 - 8) + 64);
  v104 = MEMORY[0x2A1C7C4A8](v102 - 8);
  v322 = &v275 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v104);
  v366 = &v275 - v106;
  v327 = sub_29DA343B4();
  v326 = *(v327 - 8);
  v107 = *(v326 + 64);
  MEMORY[0x2A1C7C4A8](v327);
  v325 = &v275 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29DA336F4();
  v382 = *(v109 - 8);
  v110 = *(v382 + 8);
  v111 = MEMORY[0x2A1C7C4A8](v109);
  v113 = &v275 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x2A1C7C4A8](v111);
  v116 = &v275 - v115;
  v117 = MEMORY[0x2A1C7C4A8](v114);
  v119 = &v275 - v118;
  MEMORY[0x2A1C7C4A8](v117);
  v121 = &v275 - v120;
  v122 = sub_29DA33554();
  v385 = *(v122 - 8);
  v386 = v122;
  v123 = *(v385 + 64);
  v124 = MEMORY[0x2A1C7C4A8](v122);
  v126 = &v275 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v124);
  v388 = &v275 - v127;
  sub_29D9DC270(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
  v129 = v128;
  v130 = sub_29DA34774();
  v131 = [v130 startDate];

  sub_29DA336C4();
  v377 = v129;
  v379 = a1;
  v132 = sub_29DA34774();
  v133 = [v132 endDate];

  sub_29DA336C4();
  sub_29DA33504();
  v355 = type metadata accessor for HighlightAlertConfiguration(0);
  v134 = *(v389 + v355[8]);
  if (v134 == 2 || v134 == 1)
  {
    sub_29DA334F4();
    sub_29DA33684();
    v135 = v382;
    v136 = *(v382 + 1);
    v136(v121, v109);
    if (sub_29DA336D4() == 1)
    {
      sub_29DA334F4();
    }

    else
    {
      sub_29DA334B4();
      sub_29DA33684();
      v136(v121, v109);
    }

    sub_29DA33684();
    (*(v135 + 2))(v119, v113, v109);
    sub_29DA33504();
    v136(v113, v109);
    v136(v116, v109);
    v138 = v385;
    v137 = v386;
    (*(v385 + 8))(v126, v386);
  }

  else
  {
    v138 = v385;
    v137 = v386;
    (*(v385 + 32))(v388, v126, v386);
  }

  v139 = v389;
  v140 = v387;
  if ((*(v389 + 17) & 1) == 0)
  {
    goto LABEL_17;
  }

  v141 = *(v378 + qword_2A1A2D580);

  sub_29DA33B44();

  sub_29D9C706C(v390, v390[3]);
  v142 = sub_29DA33984();
  v143 = sub_29DA34774();
  v144 = [v143 sampleType];

  v145 = [v144 hk:v142 metadataValueDisplayTypeInStore:?];
  if (!v145)
  {

    sub_29D9C7968(v390);
LABEL_17:
    (*(v138 + 8))(v388, v137);
    goto LABEL_18;
  }

  v146 = [v145 objectType];

  v147 = [v146 identifier];
  v148 = sub_29DA34854();
  v150 = v149;

  sub_29D9C7968(v390);
  if (!v381)
  {
    (*(v138 + 8))(v388, v137);

LABEL_18:
    v181 = type metadata accessor for HighlightAlertDiagramInfo(0);
    return (*(*(v181 - 8) + 56))(v384, 1, 1, v181);
  }

  if (!*(v381 + 16))
  {

    goto LABEL_17;
  }

  v378 = v148;
  v379 = v150;
  v151 = type metadata accessor for HighlightAlertDistributionConfiguration();
  v292 = v151[5];
  v152 = v151[8];
  v291 = v151[7];
  v290 = v152;
  v153 = v355;
  v382 = v355[9];
  v154 = *(v140 + 16);
  v155 = v139 + v355[12];
  v156 = v366;
  v157 = v375;
  v377 = v140 + 16;
  v293 = v154;
  v154(v366, v155, v375);
  (*(v140 + 56))(v156, 0, 1, v157);
  v288 = v153[11];
  v158 = v153[14];
  v287 = v153[13];
  v284 = v158;
  v159 = v153[16];
  v285 = v153[15];
  v276 = v159;
  v160 = (v358 + v151[11]);
  v283 = *v160;
  v289 = *(v160 + 8);
  v161 = v153[18];
  v275 = v153[17];
  v286 = v161;
  (*(v354 + 104))(v365, *MEMORY[0x29EDC4D40], v363);
  v162 = *MEMORY[0x29EDC4B68];
  v163 = *(v372 + 104);
  v278 = v372 + 104;
  v277 = v163;
  v163(v376, v162, v373);
  v164 = *(v140 + 104);
  v282 = *MEMORY[0x29EDC4CA0];
  v164(v380);
  v281 = *MEMORY[0x29EDC4CB0];
  v164(v374);
  v165 = *(v364 + 13);
  v280 = *MEMORY[0x29EDC4B38];
  v364 += 104;
  v279 = v165;
  v165(v351);
  v166 = *(v315 + 13);
  v167 = v317;
  v168 = v316;
  v169 = v353;
  (v166)(v316, *MEMORY[0x29EDC4B48], v353);
  v170 = *MEMORY[0x29EDC4B50];
  v315 = v166;
  (v166)(v167, v170, v169);

  v171 = v380;
  v172 = v168;
  sub_29DA34214();
  v173 = v167;
  v174 = v318;
  sub_29D9DC1F0(v382 + v389, v318, &qword_2A1A2DB80, MEMORY[0x29EDC4D60]);
  v175 = v354;
  v176 = v363;
  v177 = (*(v354 + 48))(v174, 1);
  v382 = (v140 + 104);
  v383 = v164;
  if (v177 == 1)
  {
    sub_29D9DC120(v174, &qword_2A1A2DB80, MEMORY[0x29EDC4D60]);
    v178 = 1;
    v179 = v370;
    v180 = v376;
  }

  else
  {
    v183 = v175;
    v184 = *(v175 + 32);
    v185 = v314;
    v184(v314, v174, v176);
    (*(v183 + 16))(v365, v185, v176);
    v186 = v376;
    v277(v376, *MEMORY[0x29EDC4B78], v373);
    v187 = *MEMORY[0x29EDC4B58];
    v188 = v172;
    v189 = v173;
    v190 = v353;
    v191 = v315;
    v315(v188, v187, v353);
    v191(v189, v187, v190);
    v192 = v375;
    v193 = v383;
    (v383)(v171, v282, v375);
    (v193)(v374, v281, v192);
    v279(v351, v280, v352);
    v179 = v370;
    sub_29DA34214();
    (*(v183 + 8))(v314, v363);
    v178 = 0;
    v180 = v186;
  }

  v194 = v320;
  v195 = v350;
  v196 = *(v368 + 56);
  v365 = (v368 + 56);
  v364 = v196;
  (v196)(v179, v178, 1, v369);
  v197 = v389;
  v198 = v319;
  sub_29D9DC1F0(v389 + v284, v319, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
  v199 = v372;
  v200 = *(v372 + 48);
  v201 = v373;
  if (v200(v198, 1, v373) != 1)
  {
    v208 = *(v199 + 32);
    v208(v195, v198, v201);
    v209 = v197 + v285;
    v210 = v306;
    sub_29D9DC1F0(v209, v306, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
    if (v200(v210, 1, v201) != 1)
    {
      v226 = v305;
      v208(v305, v210, v201);
      v227 = *(v199 + 16);
      v227(v180, v195, v201);
      v228 = v321;
      sub_29DA34304();
      v227(v180, v226, v201);
      v229 = v304;
      sub_29DA34304();
      v230 = v307;
      v231 = v307[2];
      v232 = v309;
      v233 = v308;
      v231(v309, v228, v308);
      v234 = v230[7];
      v234(v232, 0, 1, v233);
      v235 = v310;
      v231(v310, v229, v233);
      v234(v235, 0, 1, v233);
      v236 = v311;
      sub_29DA341C4();
      v237 = v230[1];
      v237(v229, v233);
      v237(v321, v233);
      v238 = *(v372 + 8);
      v238(v305, v201);
      v238(v350, v201);
      v225 = v371;
      (*(v312 + 32))(v371, v236, v313);
      goto LABEL_29;
    }

    sub_29D9DC120(v210, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
    (*(v199 + 16))(v180, v195, v201);
    v211 = v195;
    v212 = v321;
    sub_29DA34304();
    v213 = v307;
    v214 = v199;
    v215 = v309;
    v216 = v308;
    (v307[2])(v309, v212, v308);
    v217 = v213[7];
    v217(v215, 0, 1, v216);
    v217(v310, 1, 1, v216);
    v218 = v311;
    sub_29DA341C4();
    (v213[1])(v212, v216);
    (*(v214 + 8))(v211, v201);
LABEL_27:
    v225 = v371;
    (*(v312 + 32))(v371, v218, v313);
LABEL_29:
    v239 = MEMORY[0x29EDC4AF8];
LABEL_30:
    v240 = *v239;
    v241 = sub_29DA34194();
    v242 = *(v241 - 8);
    (*(v242 + 104))(v225, v240, v241);
    (*(v242 + 56))(v225, 0, 1, v241);
    goto LABEL_31;
  }

  v202 = v180;
  v203 = v199;
  v204 = MEMORY[0x29EDC4BE0];
  sub_29D9DC120(v198, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
  sub_29D9DC1F0(v197 + v285, v194, &qword_2A1A2DB90, v204);
  if (v200(v194, 1, v201) != 1)
  {
    v219 = v302;
    (*(v199 + 32))(v302, v194, v201);
    (*(v199 + 16))(v202, v219, v201);
    v220 = v321;
    sub_29DA34304();
    v221 = v307;
    v222 = v307[7];
    v223 = v308;
    v222(v309, 1, 1, v308);
    v224 = v310;
    (v221[2])(v310, v220, v223);
    v222(v224, 0, 1, v223);
    v218 = v311;
    sub_29DA341C4();
    (v221[1])(v220, v223);
    (*(v203 + 8))(v219, v201);
    goto LABEL_27;
  }

  v205 = MEMORY[0x29EDC4BE0];
  sub_29D9DC120(v194, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
  v206 = v303;
  sub_29D9DC1F0(v197 + v276, v303, &qword_2A1A2DB90, v205);
  if (v200(v206, 1, v201) != 1)
  {
    v272 = v295;
    (*(v203 + 32))(v295, v206, v201);
    v273 = *(v203 + 16);
    v273(v202, v272, v201);
    v273(v294, v272, v201);
    (*(v299 + 16))(v297, v197 + v275, v301);
    v274 = v296;
    sub_29DA341A4();
    (*(v203 + 8))(v272, v201);
    v225 = v371;
    (*(v298 + 32))(v371, v274, v300);
    v239 = MEMORY[0x29EDC4AF0];
    goto LABEL_30;
  }

  sub_29D9DC120(v206, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
  v207 = sub_29DA34194();
  (*(*(v207 - 8) + 56))(v371, 1, 1, v207);
LABEL_31:
  v243 = v334;
  v244 = v375;
  v245 = v358 + v292;
  v246 = v358 + v291;
  v247 = v358 + v290;
  v248 = v389 + v288;
  v358 = v389 + v287;
  v363 = v389 + v286;
  if (v289)
  {
    v249 = 1;
  }

  else
  {
    (v383)(v380, *MEMORY[0x29EDC4CF8], v375);
    sub_29DA34294();
    v249 = 0;
  }

  v250 = sub_29DA342A4();
  (*(*(v250 - 8) + 56))(v243, v249, 1, v250);
  v251 = v323;
  v252 = v369;
  (*(v368 + 16))(v323, v367, v369);
  (v364)(v251, 0, 1, v252);
  sub_29D9DC1F0(v370, v324, &qword_2A1A2CCB0, MEMORY[0x29EDC4B40]);
  sub_29DA34324();
  v253 = v322;
  sub_29D9DC1F0(v366, v322, &qword_2A1A2CC90, MEMORY[0x29EDC4D10]);
  v254 = v387;
  v255 = *(v387 + 48);
  if (v255(v253, 1, v244) == 1)
  {
    v256 = v357;
    (v383)(v357, *MEMORY[0x29EDC4CF0], v244);
    if (v255(v253, 1, v244) != 1)
    {
      sub_29D9DC120(v253, &qword_2A1A2CC90, MEMORY[0x29EDC4D10]);
    }
  }

  else
  {
    v257 = *(v254 + 32);
    v256 = v357;
    v257(v357, v253, v244);
  }

  (*(v329 + 16))(v360, v247, v330);
  (*(v331 + 104))(v361, *MEMORY[0x29EDC4C40], v332);
  v258 = v293;
  v293(v380, v245, v244);
  v258(v374, v246, v244);
  v258(v356, v256, v244);
  (*(v372 + 16))(v376, v248, v373);
  (*(v335 + 16))(v362, v358, v336);
  v383 = MEMORY[0x29EDC4B00];
  sub_29D9DC1F0(v371, v328, &qword_2A1A2CCB8, MEMORY[0x29EDC4B00]);
  v382 = MEMORY[0x29EDC4C30];
  sub_29D9DC1F0(v243, v333, &qword_2A1A2CCA8, MEMORY[0x29EDC4C30]);
  v259 = v337;
  v260 = v339;
  v261 = v359;
  v262 = v338;
  (*(v337 + 16))(v339, v359, v338);
  (*(v259 + 56))(v260, 0, 1, v262);
  (*(v340 + 16))(v342, v363, v341);
  (*(v343 + 104))(v345, *MEMORY[0x29EDC4C60], v344);
  (*(v347 + 104))(v346, *MEMORY[0x29EDC4D28], v348);
  v263 = v325;
  sub_29DA341F4();
  (*(v387 + 8))(v357, v375);
  (*(v259 + 8))(v261, v262);
  sub_29D9DC120(v243, &qword_2A1A2CCA8, v382);
  sub_29D9DC120(v371, &qword_2A1A2CCB8, v383);
  sub_29D9DC120(v370, &qword_2A1A2CCB0, MEMORY[0x29EDC4B40]);
  (*(v368 + 8))(v367, v369);
  sub_29D9DC120(v366, &qword_2A1A2CC90, MEMORY[0x29EDC4D10]);
  v264 = v326;
  v265 = v327;
  (*(v326 + 104))(v263, *MEMORY[0x29EDC4B30], v327);
  v266 = (v389 + v355[10]);
  v267 = *v266;
  LOBYTE(v262) = *(v266 + 8);
  v268 = v384;
  v269 = v379;
  *v384 = v378;
  *(v268 + 1) = v269;
  v270 = type metadata accessor for HighlightAlertDiagramInfo(0);
  (*(v385 + 32))(&v268[v270[5]], v388, v386);
  (*(v264 + 32))(&v268[v270[6]], v263, v265);
  v271 = &v268[v270[7]];
  *v271 = v267;
  v271[8] = v262;
  *&v268[v270[8]] = v381;
  *&v268[v270[9]] = v349;
  (*(*(v270 - 1) + 56))(v268, 0, 1, v270);
}

uint64_t sub_29D9DBFB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D9DBFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D9DC064(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_29D9DC070(a1);
  }
}

uint64_t sub_29D9DC070(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_29D9DC0C8(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_29D9DBFB4(a1);
  }
}

unint64_t sub_29D9DC0D4()
{
  result = qword_2A1A2E010;
  if (!qword_2A1A2E010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A2E010);
  }

  return result;
}

uint64_t sub_29D9DC120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D9DC270(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D9DC190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D9DC1F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D9DC270(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29D9DC270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9DC2D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_29DA34644();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9DC39C, 0, 0);
}

uint64_t sub_29D9DC39C()
{
  v29 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_29DA34614();
  v4 = v3;

  v5 = sub_29DA34634();
  v6 = sub_29DA34BA4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  if (v7)
  {
    v11 = *(v0 + 40);
    v25 = *(v0 + 24);
    v26 = *(v0 + 32);
    v27 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446467;
    v14 = [v11 description];
    v15 = sub_29DA34854();
    v17 = v16;

    v18 = sub_29D9EBB44(v15, v17, &v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_29D9EBB44(v25, v26, &v28);
    _os_log_impl(&dword_29D9BB000, v5, v6, "%{public}s: fetch alert state for %{private}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v13, -1, -1);
    MEMORY[0x29ED6E4C0](v12, -1, -1);

    (*(v8 + 8))(v27, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_29D9DC5DC;
  v20 = *(v0 + 32);
  v21 = *(v0 + 40);
  v22 = *(v0 + 88);
  v23 = *(v0 + 24);

  return sub_29D9DC7E4(v23, v20, v22, 0);
}

uint64_t sub_29D9DC5DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v6 = *(v3 + 64);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29D9DC72C, 0, 0);
  }
}

uint64_t sub_29D9DC72C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  if (v1)
  {
    sub_29DA2458C(v1, *(v0 + 16));
  }

  else
  {
    v3 = type metadata accessor for HighlightAlertState();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  }

  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29D9DC7E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 304) = a3;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = sub_29DA34644();
  *(v5 + 192) = v6;
  v7 = *(v6 - 8);
  *(v5 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  sub_29D9D5FF4();
  *(v5 + 216) = v9;
  v10 = *(v9 - 8);
  *(v5 + 224) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  v12 = sub_29DA336F4();
  *(v5 + 240) = v12;
  v13 = *(v12 - 8);
  *(v5 + 248) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  sub_29D9E2094();
  *(v5 + 264) = v15;
  v16 = *(v15 - 8);
  *(v5 + 272) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 280) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9DC9C0, 0, 0);
}

uint64_t sub_29D9DC9C0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[33];
  v7 = v1[20];
  v8 = v1[21];
  v12 = *(v1[23] + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
  v9 = sub_29DA34824();
  v1[36] = v9;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_29D9DCB90;
  swift_continuation_init();
  v1[17] = v6;
  v10 = sub_29D9E1E30(v1 + 14);
  sub_29D9E2104();
  sub_29D9C6144();
  sub_29DA349C4();
  (*(v4 + 32))(v10, v5, v6);
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D9DE7FC;
  v1[13] = &unk_2A2460FA0;
  [v12 fetchEntriesForKey:v9 completion:?];
  (*(v4 + 8))(v10, v6);

  return MEMORY[0x2A1C73CC0](v2);
}

uint64_t sub_29D9DCB90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_29D9DD068;
  }

  else
  {
    v3 = sub_29D9DCCA0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D9DCCA0()
{
  v51 = v0;
  v1 = *(v0 + 144);

  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = sub_29D9DE8BC(v1, *(v0 + 160), *(v0 + 168), *(v0 + 304));

    if (v3)
    {
      v6 = *(v0 + 248);
      v5 = *(v0 + 256);
      v8 = *(v0 + 232);
      v7 = *(v0 + 240);
      v9 = *(v0 + 216);
      v10 = *(v0 + 176);
      sub_29DA336E4();
      v11 = *(v9 + 48);
      *v8 = v10;
      (*(v6 + 32))(&v8[v11], v5, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_29D9D5218(0, v4[2] + 1, 1, v4);
      }

      v13 = v4[2];
      v12 = v4[3];
      if (v13 >= v12 >> 1)
      {
        v4 = sub_29D9D5218(v12 > 1, v13 + 1, 1, v4);
      }

      v15 = *(v0 + 224);
      v14 = *(v0 + 232);
      v4[2] = v13 + 1;
      sub_29D9E21F0(v14, v4 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    }

    v16 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = *(v0 + 168);
    v1 = sub_29D9DF0BC(v4);

    sub_29DA34614();
    v19 = v1;

    v20 = v17;
    v21 = sub_29DA34634();
    v22 = sub_29DA34BA4();

    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 200);
    v24 = *(v0 + 208);
    v26 = *(v0 + 192);
    if (v23)
    {
      v49 = v22;
      v27 = *(v0 + 184);
      v44 = *(v0 + 160);
      v45 = *(v0 + 168);
      v28 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = v46;
      *v28 = 136446723;
      v29 = [v27 description];
      v47 = v26;
      v48 = v24;
      v30 = sub_29DA34854();
      v32 = v31;

      v33 = sub_29D9EBB44(v30, v32, &v50);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2081;
      *(v0 + 152) = v1;
      sub_29D9E2188(0, &unk_2A1A2CAD0, &qword_2A1A2CAE0, &off_29F359180, MEMORY[0x29EDC9C68]);
      v34 = v19;
      v35 = sub_29DA34894();
      v37 = sub_29D9EBB44(v35, v36, &v50);

      *(v28 + 14) = v37;
      *(v28 + 22) = 2081;
      *(v28 + 24) = sub_29D9EBB44(v44, v45, &v50);
      _os_log_impl(&dword_29D9BB000, v21, v49, "%{public}s: fetched effective state: %{private}s, key: %{private}s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v46, -1, -1);
      MEMORY[0x29ED6E4C0](v28, -1, -1);

      (*(v25 + 8))(v48, v47);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }
  }

  v38 = *(v0 + 280);
  v39 = *(v0 + 256);
  v40 = *(v0 + 232);
  v41 = *(v0 + 208);

  v42 = *(v0 + 8);

  return v42(v1);
}

uint64_t sub_29D9DD068()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[26];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[37];

  return v7();
}

uint64_t sub_29D9DD118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 296) = a4;
  *(v5 + 160) = a3;
  *(v5 + 168) = v4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  sub_29D9E1FD8(0, &unk_2A17D1570);
  *(v5 + 176) = v6;
  v7 = *(v6 - 8);
  *(v5 + 184) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v9 = sub_29DA34644();
  *(v5 + 200) = v9;
  v10 = *(v9 - 8);
  *(v5 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9DD250, 0, 0);
}

uint64_t sub_29D9DD250()
{
  v47 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_29DA34614();
  v4 = v3;

  v5 = sub_29DA34634();
  v6 = sub_29DA34BA4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 200);
  if (v7)
  {
    v11 = *(v0 + 168);
    v42 = *(v0 + 152);
    v43 = *(v0 + 160);
    v44 = *(v0 + 216);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46 = v13;
    *v12 = 136446467;
    v14 = [v11 description];
    v15 = sub_29DA34854();
    v17 = v16;

    v18 = sub_29D9EBB44(v15, v17, &v46);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_29D9EBB44(v42, v43, &v46);
    _os_log_impl(&dword_29D9BB000, v5, v6, "%{public}s: persist alert state for %{private}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v13, -1, -1);
    MEMORY[0x29ED6E4C0](v12, -1, -1);

    (*(v8 + 8))(v44, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v19 = *(v0 + 296);
  v20 = *(v0 + 144);
  v21 = sub_29DA24BD4();
  if (v19 == 1)
  {
    *(v0 + 224) = v21;
    v22 = v21;
    v23 = swift_task_alloc();
    *(v0 + 232) = v23;
    *v23 = v0;
    v23[1] = sub_29D9DD6D4;
    v24 = *(v0 + 160);
    v25 = *(v0 + 168);
    v26 = *(v0 + 152);

    return sub_29D9DC7E4(v26, v24, 1, v22);
  }

  else
  {
    *(v0 + 248) = v21;
    v28 = [v21 data];
    v29 = *(v0 + 168);
    if (v28)
    {
      v30 = v28;
      v31 = sub_29DA33624();
      v33 = v32;

      v45 = *(v29 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
      if (v33 >> 60 == 15)
      {
        v34 = 0;
      }

      else
      {
        sub_29D9E2040(v31, v33);
        v34 = sub_29DA33614();
        sub_29D9CFBBC(v31, v33);
      }
    }

    else
    {
      v31 = 0;
      v34 = 0;
      v45 = *(v29 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
      v33 = 0xF000000000000000;
    }

    *(v0 + 264) = v31;
    *(v0 + 272) = v34;
    *(v0 + 256) = v33;
    v35 = *(v0 + 184);
    v36 = *(v0 + 192);
    v37 = *(v0 + 176);
    v38 = *(v0 + 152);
    v39 = *(v0 + 160);
    v40 = sub_29DA34824();
    *(v0 + 280) = v40;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_29D9DDAB8;
    swift_continuation_init();
    *(v0 + 136) = v37;
    v41 = sub_29D9E1E30((v0 + 112));
    sub_29D9C6144();
    sub_29DA349C4();
    (*(v35 + 32))(v41, v36, v37);
    *(v0 + 80) = MEMORY[0x29EDCA5F8];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_29D9DDD20;
    *(v0 + 104) = &unk_2A2460F78;
    [v45 setData:v34 forKey:v40 completion:?];
    (*(v35 + 8))(v41, v37);

    return MEMORY[0x2A1C73CC0](v0 + 16);
  }
}

uint64_t sub_29D9DD6D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {
    v7 = *(v4 + 216);
    v8 = *(v4 + 192);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29D9DD84C, 0, 0);
  }
}

uint64_t sub_29D9DD84C()
{
  v1 = v0[30];
  if (!v1)
  {
    v2 = v0[18];
    v1 = sub_29DA24BD4();
  }

  v0[31] = v1;
  v3 = [v1 data];
  v4 = v0[21];
  if (v3)
  {
    v5 = v3;
    v6 = sub_29DA33624();
    v8 = v7;

    v18 = *(v4 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
    if (v8 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      sub_29D9E2040(v6, v8);
      v9 = sub_29DA33614();
      sub_29D9CFBBC(v6, v8);
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v18 = *(v4 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
    v8 = 0xF000000000000000;
  }

  v0[33] = v6;
  v0[34] = v9;
  v0[32] = v8;
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[20];
  v15 = sub_29DA34824();
  v0[35] = v15;
  v0[2] = v0;
  v0[3] = sub_29D9DDAB8;
  swift_continuation_init();
  v0[17] = v12;
  v16 = sub_29D9E1E30(v0 + 14);
  sub_29D9C6144();
  sub_29DA349C4();
  (*(v10 + 32))(v16, v11, v12);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D9DDD20;
  v0[13] = &unk_2A2460F78;
  [v18 setData:v9 forKey:v15 completion:?];
  (*(v10 + 8))(v16, v12);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D9DDAB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_29D9DDC70;
  }

  else
  {
    v3 = sub_29D9DDBC8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D9DDBC8()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);

  sub_29D9CFBBC(v4, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29D9DDC70()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  swift_willThrow();

  sub_29D9CFBBC(v3, v5);
  v7 = v0[36];
  v8 = v0[27];
  v9 = v0[24];

  v10 = v0[1];

  return v10();
}

void sub_29D9DDD20(uint64_t a1, int a2, void *a3)
{
  sub_29D9C706C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_29D9E1FD8(0, &unk_2A17D1570);
    sub_29DA349E4();
  }

  else if (a3)
  {
    sub_29D9E1FD8(0, &unk_2A17D1570);
    v5 = a3;
    sub_29DA349D4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D9DDDD8(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_29DA34644();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  sub_29D9E1FD8(0, &unk_2A17D1570);
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9DDF0C, 0, 0);
}

uint64_t sub_29D9DDF0C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = [objc_allocWithZone(MEMORY[0x29EDBAB00]) initWithPush:1 pull:0];
  v0[31] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAAA8]) initWithContextSyncRequest_];
  v0[32] = v8;
  v12 = *(v4 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_cloudSyncControl);
  MEMORY[0x29ED6D450](v6, v5);
  v9 = sub_29DA34824();
  v0[33] = v9;

  v0[2] = v0;
  v0[3] = sub_29D9DE164;
  swift_continuation_init();
  v0[17] = v3;
  v10 = sub_29D9E1E30(v0 + 14);
  sub_29D9C6144();
  sub_29DA349C4();
  (*(v2 + 32))(v10, v1, v3);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D9DDD20;
  v0[13] = &unk_2A2460F50;
  [v12 syncWithRequest:v8 reason:v9 completion:?];
  (*(v2 + 8))(v10, v3);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D9DE164()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_29D9DE2F4;
  }

  else
  {
    v3 = sub_29D9DE274;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D9DE274()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 240);
  v4 = *(v0 + 216);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29D9DE2F4()
{
  v39 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  swift_willThrow();

  sub_29DA34614();
  v7 = v6;
  v8 = v1;
  v9 = sub_29DA34634();
  v10 = sub_29DA34B84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 272);
    v12 = *(v0 + 208);
    v37 = *(v0 + 216);
    v13 = *(v0 + 192);
    v35 = v11;
    v36 = *(v0 + 200);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38[0] = v15;
    *v14 = 136446466;
    v16 = [v13 description];
    v17 = sub_29DA34854();
    v19 = v18;

    v20 = sub_29D9EBB44(v17, v19, v38);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2082;
    swift_getErrorValue();
    v21 = *(v0 + 144);
    v22 = *(*(v0 + 152) - 8);
    v23 = *(v22 + 64) + 15;
    swift_task_alloc();
    (*(v22 + 16))();
    v24 = sub_29DA34894();
    v26 = v25;

    v27 = sub_29D9EBB44(v24, v26, v38);

    *(v14 + 14) = v27;
    _os_log_impl(&dword_29D9BB000, v9, v10, "%{public}s: received error requesting context sync push request: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v15, -1, -1);
    MEMORY[0x29ED6E4C0](v14, -1, -1);

    (*(v12 + 8))(v37, v36);
  }

  else
  {
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    v30 = *(v0 + 200);

    (*(v29 + 8))(v28, v30);
  }

  v31 = *(v0 + 240);
  v32 = *(v0 + 216);

  v33 = *(v0 + 8);

  return v33();
}

id sub_29D9DE618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAlertStateSyncManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D9DE734()
{
  MEMORY[0x29ED6D450](60, 0xE100000000000000);
  swift_getObjectType();
  sub_29D9E1F94();
  v0 = sub_29DA34894();
  MEMORY[0x29ED6D450](v0);

  MEMORY[0x29ED6D450](32, 0xE100000000000000);
  sub_29DA34E94();
  MEMORY[0x29ED6D450](62, 0xE100000000000000);
  return 0;
}

void sub_29D9DE7FC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D9C706C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D9E2094();
    v5 = a3;
    sub_29DA349D4();
  }

  else
  {
    if (a2)
    {
      sub_29D9C79FC(0, &qword_2A1A2CAC0, 0x29EDBAB50);
      sub_29DA34954();
    }

    sub_29D9E2094();
    sub_29DA349E4();
  }
}

size_t sub_29D9DE8BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v84 = a2;
  LOBYTE(v4) = a4;
  v85 = a3;
  sub_29D9E23F0(0, &qword_2A1A2CAF8, sub_29D9D5FF4);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v87 = &v71 - v8;
  sub_29D9D5FF4();
  v10 = v9;
  v11 = *(v9 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v9);
  v82 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v80 = &v71 - v15;
  v90 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_80;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v17 = MEMORY[0x29EDCA190];
  v78 = v11;
  v79 = v10;
  if (v16)
  {
    v18 = 0;
    v10 = (a1 & 0xC000000000000001);
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v10)
      {
        v20 = MEMORY[0x29ED6D970](v18, a1);
      }

      else
      {
        if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v20 = *(a1 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_76;
      }

      if (v4 & 1) == 0 || (v23 = [v20 deviceContext], v24 = objc_msgSend(v23, sel_representsLocalDevice), v23, (v24))
      {
        sub_29DA34E44();
        v19 = *(v90 + 16);
        sub_29DA34E74();
        sub_29DA34E84();
        sub_29DA34E54();
      }

      else
      {
      }

      ++v18;
    }

    while (v22 != v16);
    v25 = v90;
    v11 = v78;
    v10 = v79;
    v17 = MEMORY[0x29EDCA190];
    if ((v90 & 0x8000000000000000) != 0)
    {
LABEL_81:
      v58 = v25;
      a1 = sub_29DA34D34();
      v25 = v58;
      if (!a1)
      {
LABEL_82:

        v28 = MEMORY[0x29EDCA190];
        v56 = *(MEMORY[0x29EDCA190] + 16);
        if (!v56)
        {
          goto LABEL_70;
        }

        goto LABEL_83;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v25 = MEMORY[0x29EDCA190];
    if ((MEMORY[0x29EDCA190] & 0x8000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  if ((v25 & 0x4000000000000000) != 0)
  {
    goto LABEL_81;
  }

  a1 = *(v25 + 16);
  if (!a1)
  {
    goto LABEL_82;
  }

LABEL_20:
  v4 = v25;
  v90 = v17;
  result = sub_29DA1FA90(0, a1 & ~(a1 >> 63), 0);
  if (a1 < 0)
  {
LABEL_104:
    __break(1u);
    return result;
  }

  v27 = 0;
  v88 = 0;
  v28 = v90;
  v29 = v4;
  v74 = v4;
  v75 = v4 & 0xC000000000000001;
  v72 = v4 + 32;
  v73 = a1;
  v81 = (v11 + 48);
  do
  {
    if (__OFADD__(v27, 1))
    {
      goto LABEL_78;
    }

    v77 = v27 + 1;
    if (v75)
    {
      v30 = MEMORY[0x29ED6D970]();
    }

    else
    {
      if (v27 >= *(v29 + 16))
      {
        goto LABEL_79;
      }

      v30 = *(v72 + 8 * v27);
    }

    v86 = v30;
    v31 = [v30 storageEntries];
    sub_29D9C79FC(0, &qword_2A1A2CAC8, 0x29EDBAB48);
    a1 = sub_29DA34954();

    v89 = v17;
    if (a1 >> 62)
    {
      v32 = sub_29DA34D34();
      v76 = v28;
      if (!v32)
      {
        goto LABEL_46;
      }

LABEL_29:
      v33 = 0;
      v4 = a1 & 0xC000000000000001;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          v35 = MEMORY[0x29ED6D970](v33, a1);
        }

        else
        {
          if (v33 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v35 = *(a1 + 8 * v33 + 32);
        }

        v36 = v35;
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          v16 = sub_29DA34D34();
          goto LABEL_3;
        }

        v10 = [v35 key];
        v38 = sub_29DA34854();
        v40 = v39;

        if (v38 == v84 && v40 == v85)
        {
        }

        else
        {
          v42 = sub_29DA35114();

          if ((v42 & 1) == 0)
          {

            goto LABEL_32;
          }
        }

        sub_29DA34E44();
        v34 = v89[2];
        sub_29DA34E74();
        sub_29DA34E84();
        sub_29DA34E54();
LABEL_32:
        ++v33;
        if (v37 == v32)
        {
          v43 = v89;
          v11 = v78;
          v10 = v79;
          goto LABEL_47;
        }
      }
    }

    v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v76 = v28;
    if (v32)
    {
      goto LABEL_29;
    }

LABEL_46:
    v43 = MEMORY[0x29EDCA190];
LABEL_47:

    if ((v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
    {
      v44 = sub_29DA34D34();
      a1 = v87;
      if (v44)
      {
LABEL_50:
        v45 = 0;
        v46 = MEMORY[0x29EDCA190];
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x29ED6D970](v45, v43);
          }

          else
          {
            if (v45 >= *(v43 + 16))
            {
              goto LABEL_75;
            }

            v47 = *(v43 + 8 * v45 + 32);
          }

          v48 = v47;
          v4 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_74;
          }

          v89 = v47;
          v49 = a1;
          v50 = v88;
          sub_29D9DFB80(&v89, v83, v86, v49);
          v88 = v50;
          a1 = v87;

          if ((*v81)(a1, 1, v10) == 1)
          {
            sub_29D9E2394(a1, &qword_2A1A2CAF8, sub_29D9D5FF4);
          }

          else
          {
            v51 = a1;
            v52 = v80;
            sub_29D9E21F0(v51, v80);
            sub_29D9E21F0(v52, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_29D9D5218(0, v46[2] + 1, 1, v46);
            }

            v54 = v46[2];
            v53 = v46[3];
            if (v54 >= v53 >> 1)
            {
              v46 = sub_29D9D5218(v53 > 1, v54 + 1, 1, v46);
            }

            v46[2] = v54 + 1;
            sub_29D9E21F0(v82, v46 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v54);
            a1 = v87;
          }

          ++v45;
          if (v4 == v44)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else
    {
      v44 = *(v43 + 16);
      a1 = v87;
      if (v44)
      {
        goto LABEL_50;
      }
    }

    v46 = MEMORY[0x29EDCA190];
LABEL_66:

    v28 = v76;
    v90 = v76;
    v4 = v76[2];
    v55 = v76[3];
    if (v4 >= v55 >> 1)
    {
      sub_29DA1FA90((v55 > 1), v4 + 1, 1);
      v28 = v90;
    }

    *(v28 + 16) = v4 + 1;
    *(v28 + 8 * v4 + 32) = v46;
    v27 = v77;
    v29 = v74;
    v17 = MEMORY[0x29EDCA190];
  }

  while (v77 != v73);

  v56 = *(v28 + 16);
  if (v56)
  {
LABEL_83:
    v59 = 0;
    v57 = MEMORY[0x29EDCA190];
    while (v59 < *(v28 + 16))
    {
      v60 = *(v28 + 32 + 8 * v59);
      v61 = *(v60 + 16);
      v62 = v57[2];
      v63 = v62 + v61;
      if (__OFADD__(v62, v61))
      {
        goto LABEL_100;
      }

      v64 = *(v28 + 32 + 8 * v59);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v63 > v57[3] >> 1)
      {
        if (v62 <= v63)
        {
          v65 = v62 + v61;
        }

        else
        {
          v65 = v62;
        }

        result = sub_29D9D5218(result, v65, 1, v57);
        v57 = result;
      }

      if (*(v60 + 16))
      {
        v66 = v57[2];
        if ((v57[3] >> 1) - v66 < v61)
        {
          goto LABEL_102;
        }

        v67 = v57 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v66;
        swift_arrayInitWithCopy();

        if (v61)
        {
          v68 = v57[2];
          v69 = __OFADD__(v68, v61);
          v70 = v68 + v61;
          if (v69)
          {
            goto LABEL_103;
          }

          v57[2] = v70;
        }
      }

      else
      {

        if (v61)
        {
          goto LABEL_101;
        }
      }

      if (v56 == ++v59)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

LABEL_70:
  v57 = MEMORY[0x29EDCA190];
LABEL_71:

  return v57;
}

id sub_29D9DF0BC(uint64_t a1)
{
  sub_29D9D5FF4();
  v116 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v105 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v114 = (&v102 - v8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v115 = &v102 - v10;
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v112 = &v102 - v12;
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = (&v102 - v14);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v102 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v102 - v19;
  sub_29D9E23F0(0, &qword_2A1A2CAF8, sub_29D9D5FF4);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x2A1C7C4A8](v21 - 8);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v102 - v26;
  v28 = *(a1 + 16);
  v111 = v15;
  v103 = a1;
  if (!v28)
  {
    (*(v3 + 56))(&v102 - v26, 1, 1, v116);
    goto LABEL_5;
  }

  v102 = &v102 - v26;
  v104 = v25;
  v108 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  sub_29D9E2254(v108, v20);
  if (v28 == 1)
  {
LABEL_3:
    v27 = v102;
    sub_29D9E21F0(v20, v102);
    (*(v3 + 56))(v27, 0, 1, v116);
    v25 = v104;
LABEL_5:
    sub_29D9E2314(v27, v25);
    v29 = (*(v3 + 48))(v25, 1, v116);
    v30 = v112;
    if (v29 == 1)
    {
      return 0;
    }

    sub_29D9E21F0(v25, v15);
    v110 = *v15;
    v32 = *(v116 + 48);
    v33 = sub_29DA336F4();
    v34 = *(v33 - 8);
    v35 = *(v34 + 8);
    v36 = v15 + v32;
    v37 = v35;
    v108 = v34 + 8;
    v35(v36, v33);
    v38 = MEMORY[0x29EDCA190];
    v113 = v33;
    v109 = v3;
    if (v28)
    {
      v104 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v39 = v103 + v104;
      v107 = *(v3 + 72);
      while (1)
      {
        v41 = v37;
        v42 = v115;
        sub_29D9E2254(v39, v115);
        v43 = v42;
        v44 = v114;
        sub_29D9E2254(v43, v114);
        v45 = *v44;
        v46 = [*v44 eventUUID];

        if (v46)
        {
          v47 = sub_29DA34854();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v50 = [v110 eventUUID];
        if (!v50)
        {
          break;
        }

        v51 = v50;
        v52 = sub_29DA34854();
        v54 = v53;

        v55 = v114 + *(v116 + 48);
        if (!v49)
        {
          v30 = v112;
          if (!v54)
          {
            goto LABEL_25;
          }

          goto LABEL_10;
        }

        if (!v54)
        {
          v30 = v112;
LABEL_10:

          v33 = v113;
          v37 = v41;
          v41(v55, v113);
          goto LABEL_11;
        }

        if (v47 == v52 && v49 == v54)
        {

          v30 = v112;
LABEL_25:
          v33 = v113;
          v37 = v41;
          v41(v55, v113);
LABEL_26:
          sub_29D9E21F0(v115, v105);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_29DA1FAB0(0, *(v38 + 16) + 1, 1);
            v37 = v41;
            v38 = v117;
          }

          v58 = *(v38 + 16);
          v57 = *(v38 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_29DA1FAB0(v57 > 1, v58 + 1, 1);
            v37 = v41;
            v38 = v117;
          }

          *(v38 + 16) = v58 + 1;
          v40 = v107;
          sub_29D9E21F0(v105, v38 + v104 + v58 * v107);
          v15 = v111;
          goto LABEL_12;
        }

        v59 = sub_29DA35114();

        v33 = v113;
        v37 = v41;
        v41(v55, v113);
        v30 = v112;
        if (v59)
        {
          goto LABEL_26;
        }

LABEL_11:
        sub_29D9E22B8(v115);
        v40 = v107;
LABEL_12:
        v39 += v40;
        if (!--v28)
        {
          goto LABEL_33;
        }
      }

      v55 = v114 + *(v116 + 48);
      if (!v49)
      {
        goto LABEL_25;
      }

      goto LABEL_10;
    }

LABEL_33:
    v60 = *(v38 + 16);
    if (v60)
    {
      v117 = MEMORY[0x29EDCA190];
      sub_29DA34E64();
      v61 = *(v109 + 80);
      v115 = v38;
      v62 = v38 + ((v61 + 32) & ~v61);
      v63 = *(v109 + 72);
      do
      {
        sub_29D9E2254(v62, v15);
        sub_29D9E21F0(v15, v30);
        v64 = *v30;
        v37(v30 + *(v116 + 48), v33);
        sub_29DA34E44();
        v65 = *(v117 + 16);
        sub_29DA34E74();
        v33 = v113;
        sub_29DA34E84();
        sub_29DA34E54();
        v62 += v63;
        --v60;
      }

      while (v60);

      v66 = v117;
    }

    else
    {

      v66 = MEMORY[0x29EDCA190];
    }

    v116 = v66;
    result = [objc_allocWithZone(HighlightAlertCodableState) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v31 = result;
    [result mergeFrom_];
    if (v116 >> 62)
    {
      goto LABEL_78;
    }

    v115 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v115)
    {
      goto LABEL_79;
    }

    goto LABEL_50;
  }

  v67 = 1;
  v31 = 0x29F359000;
  v109 = v3;
  v110 = v20;
  v106 = v28;
  v68 = v112;
  while (!__OFADD__(v67, 1))
  {
    v113 = v67 + 1;
    sub_29D9E2254(v108 + *(v3 + 72) * v67, v18);
    sub_29D9E2254(v20, v15);
    v69 = *v15;
    v70 = v116;
    v71 = *(v116 + 48);
    [*v15 *(v31 + 3312)];
    v73 = v72;

    sub_29D9E2254(v18, v68);
    v74 = *v68;
    v75 = *(v70 + 48);
    [*v68 *(v31 + 3312)];
    v77 = v76;

    v78 = sub_29DA336F4();
    v79 = *(*(v78 - 8) + 8);
    v79(v68 + v75, v78);
    v79(v15 + v71, v78);
    if (v73 == v77)
    {
      v80 = *(v70 + 48);
      v81 = v110;
      v82 = sub_29DA336A4();
      v28 = v106;
      v20 = v81;
      if ((v82 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_29D9E2254(v110, v15);
      v83 = *v15;
      v107 = *(v70 + 48);
      [v83 eventDate];
      v85 = v84;

      sub_29D9E2254(v18, v68);
      v86 = *v68;
      v87 = *(v70 + 48);
      [*v68 eventDate];
      v89 = v88;

      v79(v68 + v87, v78);
      v79(v15 + v107, v78);
      v28 = v106;
      v20 = v110;
      if (v85 >= v89)
      {
LABEL_45:
        sub_29D9E22B8(v18);
        goto LABEL_39;
      }
    }

    sub_29D9E22B8(v20);
    sub_29D9E21F0(v18, v20);
LABEL_39:
    v3 = v109;
    ++v67;
    v15 = v111;
    v31 = 0x29F359000uLL;
    if (v113 == v28)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  v115 = sub_29DA34D34();
  if (v115)
  {
LABEL_50:
    v91 = 0;
    v92 = v116 & 0xC000000000000001;
    v93 = v116 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v92)
      {
        v95 = MEMORY[0x29ED6D970](v91, v116);
      }

      else
      {
        if (v91 >= *(v93 + 16))
        {
          goto LABEL_77;
        }

        v95 = *(v116 + 8 * v91 + 32);
      }

      v96 = v95;
      v97 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_76;
      }

      if ([v31 hasExpirationDate] && objc_msgSend(v96, sel_hasExpirationDate))
      {
        break;
      }

      if ([v96 hasExpirationDate])
      {
        [v96 expirationDate];
LABEL_65:
        [v31 setExpirationDate_];
      }

      if ([v96 hasAcknowledged])
      {
        if ([v31 acknowledged])
        {
          v101 = 1;
        }

        else
        {
          v101 = [v96 acknowledged];
        }

        [v31 setAcknowledged_];
      }

      if ([v96 hasDismissed])
      {
        if ([v31 dismissed])
        {
          v94 = 1;
        }

        else
        {
          v94 = [v96 dismissed];
        }

        [v31 setDismissed_];
      }

      ++v91;
      if (v97 == v115)
      {
        goto LABEL_79;
      }
    }

    [v31 expirationDate];
    v99 = v98;
    [v96 expirationDate];
    if (v100 >= v99)
    {
      v100 = v99;
    }

    goto LABEL_65;
  }

LABEL_79:

  return v31;
}

uint64_t sub_29D9DFB80@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v139 = a4;
  v129 = a3;
  v6 = sub_29DA34644();
  v137 = *(v6 - 8);
  v138 = v6;
  v7 = *(v137 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v136 = v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v135 = v128 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v132 = v128 - v12;
  sub_29D9E23F0(0, &qword_2A1A2D2E0, MEMORY[0x29EDC3990]);
  v130 = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v134 = v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = v128 - v17;
  v19 = sub_29DA33B04();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v131 = v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v133 = v128 - v24;
  v25 = *a1;
  v26 = [*a1 value];
  v27 = sub_29DA33624();
  v29 = v28;

  v30 = objc_allocWithZone(HighlightAlertCodableState);
  v31 = sub_29DA33614();
  sub_29D9CFBD0(v27, v29);
  v32 = [v30 initWithData_];

  if (!v32)
  {
    sub_29DA34614();
    v36 = a2;
    v37 = v25;
    v38 = sub_29DA34634();
    v39 = sub_29DA34B84();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v140 = v41;
      *v40 = 136446467;
      v42 = [v36 description];
      v43 = sub_29DA34854();
      v45 = v44;

      v46 = sub_29D9EBB44(v43, v45, &v140);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2081;
      v47 = [v37 key];
      v48 = sub_29DA34854();
      v50 = v49;

      v51 = sub_29D9EBB44(v48, v50, &v140);

      *(v40 + 14) = v51;
      _os_log_impl(&dword_29D9BB000, v38, v39, "%{public}s: unable to decode state for key: %{private}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v41, -1, -1);
      MEMORY[0x29ED6E4C0](v40, -1, -1);
    }

    (*(v137 + 8))(v136, v138);
    goto LABEL_20;
  }

  v33 = a2;
  v34 = sub_29D9C79FC(0, &qword_2A1A2CAE0, &off_29F359180);
  v35 = sub_29D9E2444();
  v136 = v34;
  v128[1] = v35;
  sub_29DA33DE4();
  if ((*(v20 + 6))(v18, 1, v19) == 1)
  {
    sub_29D9E2394(v18, &qword_2A1A2D2E0, MEMORY[0x29EDC3990]);
    goto LABEL_17;
  }

  v52 = v133;
  (*(v20 + 4))(v133, v18, v19);
  v53 = v134;
  sub_29DA33AD4();
  (*(v20 + 7))(v53, 0, 1, v19);
  v54 = sub_29DA33AC4();
  sub_29D9E2394(v53, &qword_2A1A2D2E0, MEMORY[0x29EDC3990]);
  if ((v54 & 1) == 0)
  {
    (*(v20 + 1))(v52, v19);
LABEL_17:
    v93 = v135;
    sub_29DA34614();
    v94 = v33;
    v95 = v32;
    v96 = v25;
    v97 = sub_29DA34634();
    v98 = sub_29DA34B84();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v140 = v133;
      *v99 = 136446979;
      v100 = [v94 description];
      v101 = sub_29DA34854();
      v132 = v96;
      v103 = v102;

      v104 = sub_29D9EBB44(v101, v103, &v140);

      *(v99 + 4) = v104;
      *(v99 + 12) = 2082;
      sub_29DA33DE4();
      v105 = sub_29DA34894();
      v107 = sub_29D9EBB44(v105, v106, &v140);

      *(v99 + 14) = v107;
      *(v99 + 22) = 2082;
      LOBYTE(v103) = v98;
      v108 = v131;
      sub_29DA33AD4();
      sub_29D9E24AC(&unk_2A17D1580, MEMORY[0x29EDC3990]);
      v109 = sub_29DA350F4();
      v111 = v110;
      (*(v20 + 1))(v108, v19);
      v112 = sub_29D9EBB44(v109, v111, &v140);

      *(v99 + 24) = v112;
      *(v99 + 32) = 2081;
      v113 = [v132 key];
      v114 = sub_29DA34854();
      v116 = v115;

      v117 = sub_29D9EBB44(v114, v116, &v140);

      *(v99 + 34) = v117;
      _os_log_impl(&dword_29D9BB000, v97, v103, "%{public}s: codable state has incompatible version: %{public}s, current code version: %{public}s, key: %{private}s", v99, 0x2Au);
      v118 = v133;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v118, -1, -1);
      MEMORY[0x29ED6E4C0](v99, -1, -1);

      (*(v137 + 8))(v135, v138);
    }

    else
    {

      (*(v137 + 8))(v93, v138);
    }

LABEL_20:
    sub_29D9D5FF4();
    return (*(*(v119 - 8) + 56))(v139, 1, 1, v119);
  }

  v135 = v20;
  v136 = v19;
  v55 = v132;
  sub_29DA34614();
  v56 = v129;
  v57 = v33;
  v58 = v32;
  v59 = v25;
  v60 = sub_29DA34634();
  v61 = sub_29DA34BA4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v134 = v59;
    v63 = v62;
    v131 = swift_slowAlloc();
    v140 = v131;
    *v63 = 136447235;
    v64 = [v57 description];
    v65 = sub_29DA34854();
    v67 = v66;

    v68 = sub_29D9EBB44(v65, v67, &v140);

    *(v63 + 4) = v68;
    LODWORD(v130) = v61;
    *(v63 + 12) = 2081;
    v69 = v58;
    v70 = [v69 description];
    v71 = sub_29DA34854();
    v73 = v72;

    v74 = sub_29D9EBB44(v71, v73, &v140);

    *(v63 + 14) = v74;
    *(v63 + 22) = 2081;
    v75 = [v134 key];
    v76 = sub_29DA34854();
    v78 = v77;

    v79 = sub_29D9EBB44(v76, v78, &v140);

    *(v63 + 24) = v79;
    *(v63 + 32) = 2082;
    v80 = [v56 deviceContext];
    [v80 type];

    v81 = HKStringForDeviceType();
    v82 = sub_29DA34854();
    v84 = v83;

    v85 = sub_29D9EBB44(v82, v84, &v140);

    *(v63 + 34) = v85;
    *(v63 + 42) = 2082;
    v86 = [v56 deviceContext];
    v87 = [v86 representsLocalDevice];

    if (v87)
    {
      v88 = 1702195828;
    }

    else
    {
      v88 = 0x65736C6166;
    }

    if (v87)
    {
      v89 = 0xE400000000000000;
    }

    else
    {
      v89 = 0xE500000000000000;
    }

    v90 = sub_29D9EBB44(v88, v89, &v140);

    *(v63 + 44) = v90;
    _os_log_impl(&dword_29D9BB000, v60, v130, "%{public}s: found state: %{private}s, key: %{private}s, device type: %{public}s, represents local device: %{public}s", v63, 0x34u);
    v91 = v131;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v91, -1, -1);
    v92 = v63;
    v59 = v134;
    MEMORY[0x29ED6E4C0](v92, -1, -1);

    (*(v137 + 8))(v132, v138);
  }

  else
  {

    (*(v137 + 8))(v55, v138);
  }

  v121 = v133;
  sub_29D9D5FF4();
  v123 = v122;
  v124 = *(v122 + 48);
  v125 = v139;
  *v139 = v58;
  v126 = v58;
  v127 = [v59 modificationDate];
  sub_29DA336C4();

  (*(v135 + 1))(v121, v136);
  return (*(*(v123 - 8) + 56))(v125, 0, 1, v123);
}

uint64_t sub_29D9E07AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  sub_29D9E1FD8(0, &qword_2A1A2CB60);
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = sub_29DA34644();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9E08F0, 0, 0);
}

uint64_t sub_29D9E08F0()
{
  v27 = v0;
  v1 = v0[30];
  v2 = v0[22];
  sub_29DA34614();
  v3 = v2;
  v4 = sub_29DA34634();
  v5 = sub_29DA34BA4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  if (v6)
  {
    v10 = v0[22];
    v25 = v0[30];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446210;
    v13 = [v10 description];
    v14 = sub_29DA34854();
    v16 = v15;

    v17 = sub_29D9EBB44(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: start observing context sync store", v11, 0xCu);
    sub_29D9C7968(v12);
    MEMORY[0x29ED6E4C0](v12, -1, -1);
    MEMORY[0x29ED6E4C0](v11, -1, -1);

    v18 = *(v8 + 8);
    v18(v25, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v0[31] = v18;
  v20 = v0[24];
  v19 = v0[25];
  v21 = v0[23];
  v22 = *(v0[22] + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
  [v22 setDelegate_];
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_29D9E0BF0;
  swift_continuation_init();
  v0[17] = v21;
  v23 = sub_29D9E1E30(v0 + 14);
  sub_29D9C6144();
  sub_29DA349C4();
  (*(v20 + 32))(v23, v19, v21);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D9E1174;
  v0[13] = &unk_2A2460F28;
  [v22 startObservingDeviceKeyValueStoreWithCompletion_];
  (*(v20 + 8))(v23, v21);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D9E0BF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_29D9E0EF8;
  }

  else
  {
    v3 = sub_29D9E0D00;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D9E0D00()
{
  v28 = v0;
  v1 = v0[29];
  v2 = v0[22];
  sub_29DA34614();
  v3 = v2;
  v4 = sub_29DA34634();
  v5 = sub_29DA34BA4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  v8 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  if (v6)
  {
    v11 = v0[22];
    v26 = v0[31];
    v12 = swift_slowAlloc();
    v25 = v8;
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136446210;
    v14 = [v11 description];
    v15 = sub_29DA34854();
    v17 = v16;

    v18 = sub_29D9EBB44(v15, v17, &v27);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: now observing context sync store", v12, 0xCu);
    sub_29D9C7968(v13);
    MEMORY[0x29ED6E4C0](v13, -1, -1);
    MEMORY[0x29ED6E4C0](v12, -1, -1);

    v26(v25, v10);
  }

  else
  {

    v7(v8, v10);
  }

  v20 = v0[29];
  v19 = v0[30];
  v21 = v0[28];
  v22 = v0[25];

  v23 = v0[1];

  return v23();
}

uint64_t sub_29D9E0EF8()
{
  v38 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 176);
  swift_willThrow();
  sub_29DA34614();
  v4 = v3;
  v5 = v1;
  v6 = sub_29DA34634();
  v7 = sub_29DA34B84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 216);
    v35 = *(v0 + 224);
    v36 = *(v0 + 248);
    v34 = *(v0 + 208);
    v10 = *(v0 + 176);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37[0] = v12;
    *v11 = 136446466;
    v13 = [v10 description];
    v14 = sub_29DA34854();
    v16 = v15;

    v17 = sub_29D9EBB44(v14, v16, v37);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v19 = *(v0 + 144);
    v18 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = sub_29DA35154();
    v23 = sub_29D9EBB44(v21, v22, v37);

    *(v11 + 14) = v23;
    _os_log_impl(&dword_29D9BB000, v6, v7, "%{public}s: unable to start observing context sync store: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v12, -1, -1);
    MEMORY[0x29ED6E4C0](v11, -1, -1);

    v36(v35, v34);
  }

  else
  {
    v24 = *(v0 + 248);
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v27 = *(v0 + 208);

    v24(v25, v27);
  }

  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 224);
  v31 = *(v0 + 200);

  v32 = *(v0 + 8);

  return v32();
}

void sub_29D9E1174(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D9C706C((a1 + 32), *(a1 + 56));
  sub_29D9E1FD8(0, &qword_2A1A2CB60);
  if (a3)
  {
    v4 = a3;
    sub_29DA349D4();
  }

  else
  {
    sub_29DA349E4();
  }
}

uint64_t sub_29D9E1224(unint64_t a1)
{
  v112 = a1;
  v121 = sub_29DA336F4();
  v2 = *(v121 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v121);
  v120 = v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29DA34644();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v106 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v111 = v105 - v11;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = v105 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v105 - v15;
  sub_29DA34614();
  v17 = v1;
  v18 = sub_29DA34634();
  v19 = sub_29DA34BA4();

  v20 = os_log_type_enabled(v18, v19);
  v122 = v5;
  v107 = v6;
  v129 = v17;
  v123 = v14;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v130 = v22;
    *v21 = 136446210;
    v23 = [v129 description];
    v24 = sub_29DA34854();
    v25 = v2;
    v27 = v26;

    v5 = v122;
    v28 = sub_29D9EBB44(v24, v27, &v130);
    v2 = v25;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_29D9BB000, v18, v19, "%{public}s: received device key value store update", v21, 0xCu);
    sub_29D9C7968(v22);
    v29 = v22;
    v14 = v123;
    MEMORY[0x29ED6E4C0](v29, -1, -1);
    MEMORY[0x29ED6E4C0](v21, -1, -1);

    v30 = *(v107 + 8);
    v31 = v5;
  }

  else
  {
    v31 = v5;

    v30 = *(v6 + 8);
  }

  v30(v16, v5);
  result = swift_unknownObjectWeakLoadStrong();
  v34 = v112;
  if (result)
  {
    v105[1] = result;
    v131 = MEMORY[0x29EDCA1A0];
    if (v112 >> 62)
    {
      goto LABEL_48;
    }

    v35 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v119 = v30;
    if (v35)
    {
      v36 = 0;
      v114 = v34 & 0xC000000000000001;
      v110 = v34 & 0xFFFFFFFFFFFFFF8;
      v109 = v34 + 32;
      v128 = v107 + 8;
      v118 = (v2 + 8);
      *&v33 = 136446210;
      v108 = v33;
      *&v33 = 136446723;
      v117 = v33;
      v113 = v35;
      while (1)
      {
        if (v114)
        {
          v37 = MEMORY[0x29ED6D970](v36, v34);
          v38 = __OFADD__(v36, 1);
          v39 = v36 + 1;
          if (v38)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v36 >= *(v110 + 16))
          {
            goto LABEL_46;
          }

          v37 = *(v109 + 8 * v36);
          v38 = __OFADD__(v36, 1);
          v39 = v36 + 1;
          if (v38)
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            v35 = sub_29DA34D34();
            goto LABEL_7;
          }
        }

        v116 = v39;
        v40 = v37;
        v41 = [v37 deviceContext];
        v42 = [v41 representsLocalDevice];

        v115 = v40;
        if (v42)
        {
          v2 = v111;
          sub_29DA34614();
          v43 = v129;
          v44 = sub_29DA34634();
          v45 = sub_29DA34BA4();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v130 = v47;
            *v46 = v108;
            v48 = [v43 description];
            v49 = sub_29DA34854();
            v51 = v50;

            v52 = v49;
            v14 = v123;
            v53 = sub_29D9EBB44(v52, v51, &v130);

            *(v46 + 4) = v53;
            _os_log_impl(&dword_29D9BB000, v44, v45, "%{public}s: dropping update from local device", v46, 0xCu);
            sub_29D9C7968(v47);
            MEMORY[0x29ED6E4C0](v47, -1, -1);
            v54 = v46;
            v34 = v112;
            MEMORY[0x29ED6E4C0](v54, -1, -1);
          }

          v30(v2, v31);
        }

        else
        {
          v55 = [v40 storageEntries];
          sub_29D9C79FC(0, &qword_2A1A2CAC8, 0x29EDBAB48);
          v56 = sub_29DA34954();

          v57 = v56;
          if (v56 >> 62)
          {
            v58 = sub_29DA34D34();
            v57 = v56;
            v59 = v115;
            v36 = v116;
            if (!v58)
            {
LABEL_34:

              goto LABEL_11;
            }
          }

          else
          {
            v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v59 = v115;
            v36 = v116;
            if (!v58)
            {
              goto LABEL_34;
            }
          }

          if (v58 < 1)
          {
            goto LABEL_47;
          }

          v60 = 0;
          v125 = v57 & 0xC000000000000001;
          v126 = v58;
          v127 = v57;
          do
          {
            if (v125)
            {
              v65 = MEMORY[0x29ED6D970](v60);
            }

            else
            {
              v65 = *(v57 + 8 * v60 + 32);
            }

            v66 = v65;
            sub_29DA34614();
            v67 = v129;
            v68 = v66;
            v69 = sub_29DA34634();
            v2 = sub_29DA34BA4();

            if (os_log_type_enabled(v69, v2))
            {
              v70 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              v130 = v124;
              *v70 = v117;
              v71 = [v67 description];
              v72 = sub_29DA34854();
              v74 = v73;

              v75 = sub_29D9EBB44(v72, v74, &v130);

              *(v70 + 4) = v75;
              *(v70 + 12) = 2081;
              v76 = [v68 key];
              v77 = sub_29DA34854();
              v79 = v78;

              v80 = sub_29D9EBB44(v77, v79, &v130);

              *(v70 + 14) = v80;
              *(v70 + 22) = 2082;
              v81 = [v68 modificationDate];
              v82 = v120;
              sub_29DA336C4();

              sub_29D9E24AC(&qword_2A1A2D350, MEMORY[0x29EDB9BC8]);
              v83 = v121;
              v84 = sub_29DA350F4();
              v86 = v85;
              (*v118)(v82, v83);
              v87 = sub_29D9EBB44(v84, v86, &v130);

              *(v70 + 24) = v87;
              _os_log_impl(&dword_29D9BB000, v69, v2, "%{public}s: entry updated for %{private}s, modification date: %{public}s", v70, 0x20u);
              v88 = v124;
              swift_arrayDestroy();
              MEMORY[0x29ED6E4C0](v88, -1, -1);
              v89 = v70;
              v14 = v123;
              MEMORY[0x29ED6E4C0](v89, -1, -1);

              v31 = v122;
              v30 = v119;
              (v119)(v14);
            }

            else
            {

              v30(v14, v31);
            }

            ++v60;
            v61 = [v68 key];
            v62 = sub_29DA34854();
            v64 = v63;

            sub_29D9F8C54(&v130, v62, v64);

            v57 = v127;
          }

          while (v126 != v60);

          v34 = v112;
        }

        v36 = v116;
LABEL_11:
        if (v36 == v113)
        {
          v90 = v131;
          goto LABEL_37;
        }
      }
    }

    v90 = MEMORY[0x29EDCA1A0];
LABEL_37:
    v91 = v106;
    if (*(v90 + 16))
    {
      sub_29DA34614();
      v92 = v129;

      v93 = sub_29DA34634();
      v94 = sub_29DA34BA4();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v130 = v96;
        *v95 = 136446467;
        v97 = [v92 description];
        v98 = sub_29DA34854();
        v100 = v99;

        v101 = sub_29D9EBB44(v98, v100, &v130);

        *(v95 + 4) = v101;
        *(v95 + 12) = 2081;
        v102 = sub_29DA34AB4();
        v104 = sub_29D9EBB44(v102, v103, &v130);

        *(v95 + 14) = v104;
        _os_log_impl(&dword_29D9BB000, v93, v94, "%{public}s: sending update delegate changed keys: %{private}s", v95, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v96, -1, -1);
        MEMORY[0x29ED6E4C0](v95, -1, -1);

        v119(v91, v31);
      }

      else
      {

        v30(v91, v31);
      }

      sub_29D9CD45C(v90);
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_29D9E1E30(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_29D9E1EAC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_updateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(MEMORY[0x29EDBAB58]);
  v4 = sub_29DA34824();
  v5 = [v3 initWithProtectionCategory:0 domain:v4 healthStore:a1];

  *&v1[OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore] = v5;
  v6 = [objc_allocWithZone(MEMORY[0x29EDBAA90]) initWithHealthStore_];
  *&v1[OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_cloudSyncControl] = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HighlightAlertStateSyncManager();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_29D9E1F94()
{
  result = qword_2A1A2CFA8[0];
  if (!qword_2A1A2CFA8[0])
  {
    type metadata accessor for HighlightAlertStateSyncManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A2CFA8);
  }

  return result;
}

void sub_29D9E1FD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29D9C6144();
    v3 = sub_29DA349F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29D9E2040(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_29D9E2094()
{
  if (!qword_2A1A2CB68)
  {
    sub_29D9E2104();
    sub_29D9C6144();
    v0 = sub_29DA349F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CB68);
    }
  }
}

void sub_29D9E2104()
{
  if (!qword_2A1A2CB90)
  {
    sub_29D9E2188(255, &qword_2A1A2CB98, &qword_2A1A2CAC0, 0x29EDBAB50, MEMORY[0x29EDC9A40]);
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CB90);
    }
  }
}

void sub_29D9E2188(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D9C79FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D9E21F0(uint64_t a1, uint64_t a2)
{
  sub_29D9D5FF4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E2254(uint64_t a1, uint64_t a2)
{
  sub_29D9D5FF4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E22B8(uint64_t a1)
{
  sub_29D9D5FF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D9E2314(uint64_t a1, uint64_t a2)
{
  sub_29D9E23F0(0, &qword_2A1A2CAF8, sub_29D9D5FF4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E2394(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D9E23F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D9E23F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA34CC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D9E2444()
{
  result = qword_2A1A2CAE8;
  if (!qword_2A1A2CAE8)
  {
    sub_29D9C79FC(255, &qword_2A1A2CAE0, &off_29F359180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CAE8);
  }

  return result;
}

uint64_t sub_29D9E24AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D9E25CC(char *a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D9E5DE8(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v99 = &v84 - v5;
  sub_29D9E5DE8(0, &qword_2A1A2CC78, MEMORY[0x29EDC4FD0], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v97 = &v84 - v8;
  sub_29D9E5DB4(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v96 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v95 = &v84 - v13;
  sub_29D9E5E4C(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v93 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v94 = &v84 - v18;
  v19 = sub_29DA345B4();
  v105 = *(v19 - 8);
  v106 = v19;
  v20 = *(v105 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v104 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29DA34064();
  v91 = *(v22 - 8);
  v92 = v22;
  v23 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v90 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29DA340A4();
  v87 = *(v25 - 8);
  v88 = v25;
  v26 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v89 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_29DA34044();
  v85 = *(v86 - 8);
  v28 = *(v85 + 64);
  MEMORY[0x2A1C7C4A8](v86);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29DA34514();
  v102 = *(v31 - 8);
  v103 = v31;
  v32 = *(v102 + 64);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v100 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v101 = &v84 - v35;
  sub_29D9E4C44(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x2A1C7C4A8](v36 - 8);
  v40 = &v84 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38);
  v42 = &v84 - v41;
  v43 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  v44 = *(v43 - 1);
  v45 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v43);
  v47 = (&v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = a1;
  v48 = *&a1[qword_2A1A2CD70];
  v49 = *(*v48 + *MEMORY[0x29EDC9DE8] + 16);
  v50 = (*(*v48 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v48 + v50));
  sub_29D9E5E80(v48 + v49, v42, sub_29D9E4C44);
  os_unfair_lock_unlock((v48 + v50));
  v51 = *(v44 + 48);
  if (v51(v42, 1, v43) == 1)
  {
    v52 = sub_29D9E4C44;
    v53 = v42;
LABEL_5:
    sub_29D9E5EE8(v53, v52);
    return 0;
  }

  sub_29D9E5C3C(v42, v47);
  os_unfair_lock_lock((v48 + v50));
  sub_29D9E5E80(v48 + v49, v40, sub_29D9E4C44);
  v54 = v51(v40, 1, v43);
  sub_29D9E5EE8(v40, sub_29D9E4C44);
  os_unfair_lock_unlock((v48 + v50));
  if (v54 == 1)
  {
    v52 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration;
    v53 = v47;
    goto LABEL_5;
  }

  v56 = v43[7];
  v57 = *(v47 + v43[8]);
  (*(v85 + 104))(v30, *MEMORY[0x29EDC48D0], v86);
  (*(v87 + 104))(v89, *MEMORY[0x29EDC4908], v88);
  (*(v91 + 16))(v90, v47 + v56, v92);
  v58 = v101;
  sub_29DA34504();
  v59 = v43[5];
  v60 = sub_29DA33554();
  v61 = *(v60 - 8);
  v62 = v94;
  (*(v61 + 16))(v94, v47 + v59, v60);
  (*(v61 + 56))(v62, 0, 1, v60);
  v63 = *(v47 + v43[9]);
  v64 = v43[6];
  v65 = sub_29DA335B4();
  v66 = *(v65 - 8);
  v67 = v95;
  (*(v66 + 16))(v95, v47 + v64, v65);
  (*(v66 + 56))(v67, 0, 1, v65);
  sub_29D9E5E80(v62, v93, sub_29D9E5E4C);
  sub_29D9E5E80(v67, v96, sub_29D9E5DB4);
  v68 = v63;
  v69 = v104;
  sub_29DA345A4();
  sub_29D9E5EE8(v67, sub_29D9E5DB4);
  sub_29D9E5EE8(v62, sub_29D9E5E4C);
  v70 = *v47;
  (*(v102 + 16))(v100, v58, v103);
  v71 = v105;
  v72 = v97;
  v73 = v69;
  v74 = v106;
  (*(v105 + 16))(v97, v73, v106);
  (*(v71 + 56))(v72, 0, 1, v74);
  v75 = v70;
  v76 = v98;
  v77 = [v98 name];
  if (v77)
  {
    v78 = v77;
    sub_29DA34854();
  }

  v79 = *&v76[qword_2A1A2D6C0];
  v80 = v99;
  sub_29DA334F4();
  v81 = sub_29DA336F4();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = objc_allocWithZone(sub_29DA34544());

  v83 = sub_29DA34524();
  (*(v105 + 8))(v104, v106);
  (*(v102 + 8))(v101, v103);
  sub_29D9E5EE8(v47, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration);

  return v83;
}

void *sub_29D9E30D4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    v7 = v5;
    sub_29D9E5D94(v6);
  }

  sub_29D9E5DA4(v4);
  return v5;
}

uint64_t sub_29D9E3144(char *a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D9E5DE8(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v100 = &v85 - v5;
  sub_29D9E5DE8(0, &qword_2A1A2CC78, MEMORY[0x29EDC4FD0], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v98 = &v85 - v8;
  sub_29D9E5DB4(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v97 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v96 = &v85 - v13;
  sub_29D9E5E4C(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v94 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v95 = &v85 - v18;
  v19 = sub_29DA345B4();
  v106 = *(v19 - 8);
  v107 = v19;
  v20 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v105 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29DA34064();
  v92 = *(v22 - 8);
  v93 = v22;
  v23 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v91 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29DA340A4();
  v88 = *(v25 - 8);
  v89 = v25;
  v26 = *(v88 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v90 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_29DA34044();
  v86 = *(v87 - 8);
  v28 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v87);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29DA34514();
  v103 = *(v31 - 8);
  v104 = v31;
  v32 = *(v103 + 64);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v101 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v102 = &v85 - v35;
  sub_29D9E4C44(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x2A1C7C4A8](v36 - 8);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38);
  v42 = &v85 - v41;
  v43 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  v44 = *(v43 - 1);
  v45 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v43);
  v47 = (&v85 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = a1;
  v48 = *&a1[qword_2A1A2CD70];
  v49 = *(*v48 + *MEMORY[0x29EDC9DE8] + 16);
  v50 = (*(*v48 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v48 + v50));
  sub_29D9E5E80(v48 + v49, v42, sub_29D9E4C44);
  os_unfair_lock_unlock((v48 + v50));
  v51 = *(v44 + 48);
  if (v51(v42, 1, v43) == 1)
  {
    v52 = sub_29D9E4C44;
    v53 = v42;
LABEL_6:
    sub_29D9E5EE8(v53, v52);
    return 0;
  }

  sub_29D9E5C3C(v42, v47);
  os_unfair_lock_lock((v48 + v50));
  sub_29D9E5E80(v48 + v49, v40, sub_29D9E4C44);
  v54 = v51(v40, 1, v43);
  sub_29D9E5EE8(v40, sub_29D9E4C44);
  os_unfair_lock_unlock((v48 + v50));
  if (v54 == 1 || (v55 = v47 + v43[10], v55[8] == 1))
  {
    v52 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration;
    v53 = v47;
    goto LABEL_6;
  }

  v57 = *v55;
  v58 = v43[7];
  (*(v86 + 104))(v30, *MEMORY[0x29EDC48D0], v87);
  (*(v88 + 104))(v90, *MEMORY[0x29EDC4908], v89);
  (*(v92 + 16))(v91, v47 + v58, v93);
  v59 = v102;
  sub_29DA34504();
  v60 = v43[5];
  v61 = sub_29DA33554();
  v62 = *(v61 - 8);
  v63 = v95;
  (*(v62 + 16))(v95, v47 + v60, v61);
  (*(v62 + 56))(v63, 0, 1, v61);
  v64 = *(v47 + v43[11]);
  v65 = v43[6];
  v66 = sub_29DA335B4();
  v67 = *(v66 - 8);
  v68 = v96;
  (*(v67 + 16))(v96, v47 + v65, v66);
  (*(v67 + 56))(v68, 0, 1, v66);
  sub_29D9E5E80(v63, v94, sub_29D9E5E4C);
  sub_29D9E5E80(v68, v97, sub_29D9E5DB4);
  v69 = v64;
  v70 = v105;
  sub_29DA345A4();
  sub_29D9E5EE8(v68, sub_29D9E5DB4);
  sub_29D9E5EE8(v63, sub_29D9E5E4C);
  v71 = *v47;
  (*(v103 + 16))(v101, v59, v104);
  v72 = v106;
  v73 = v98;
  v74 = v70;
  v75 = v107;
  (*(v106 + 16))(v98, v74, v107);
  (*(v72 + 56))(v73, 0, 1, v75);
  v76 = v71;
  v77 = v99;
  v78 = [v99 name];
  if (v78)
  {
    v79 = v78;
    sub_29DA34854();
  }

  v80 = *&v77[qword_2A1A2D6C0];
  v81 = v100;
  sub_29DA334F4();
  v82 = sub_29DA336F4();
  (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = objc_allocWithZone(sub_29DA34544());

  v84 = sub_29DA34524();
  (*(v106 + 8))(v105, v107);
  (*(v103 + 8))(v102, v104);
  sub_29D9E5EE8(v47, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration);

  return v84;
}

uint64_t sub_29D9E3C40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + *a4);
    v7 = result;

    MEMORY[0x2A1C7C4A8](v8);
    sub_29DA33B54();
  }

  return result;
}

id sub_29D9E3D08(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_29D9E4C44(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_2A1A2D6B0;
  sub_29D9E4C78();
  v12 = swift_allocError();
  *v13 = 0;
  v40 = v12;
  v41 = 0;
  v42 = 1;
  v14 = MEMORY[0x29EDC3C80];
  sub_29D9E5DE8(0, &qword_2A1A2DA30, sub_29D9E4CCC, MEMORY[0x29EDC3C80]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v3[v11] = sub_29DA33B74();
  v18 = qword_2A1A2CD70;
  v19 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_29D9E4D8C();
  v21 = *(v20 + 52);
  v22 = (*(v20 + 48) + 3) & 0x1FFFFFFFCLL;
  v23 = swift_allocObject();
  *(v23 + ((*(*v23 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D9E5E80(v10, v23 + *(*v23 + *MEMORY[0x29EDC9DE8] + 16), sub_29D9E4C44);
  sub_29D9E5EE8(v10, sub_29D9E4C44);
  *&v4[v18] = v23;
  v24 = qword_2A1A2D6C8;
  v40 = 0;
  LOBYTE(v41) = -1;
  sub_29D9E5DE8(0, &qword_2A1A2DA28, sub_29D9E4DF4, v14);
  v26 = v25;
  v27 = *(v25 + 48);
  v28 = *(v25 + 52);
  swift_allocObject();
  *&v4[v24] = sub_29DA33B74();
  v29 = qword_2A1A2D6B8;
  v40 = 0;
  LOBYTE(v41) = -1;
  v30 = *(v26 + 48);
  v31 = *(v26 + 52);
  swift_allocObject();
  *&v4[v29] = sub_29DA33B74();
  *&v4[qword_2A1A2D6E0] = 1;
  *&v4[qword_2A1A2D6D8] = 1;
  *&v4[qword_2A1A2D6C0] = a1;
  v32 = type metadata accessor for HighlightAlertQuantityDistributionOperation(0);
  v39.receiver = v4;
  v39.super_class = v32;
  v33 = a1;
  v34 = objc_msgSendSuper2(&v39, sel_init);
  v35 = v34;
  if (a3)
  {
    v36 = sub_29DA34824();
  }

  else
  {
    v36 = 0;
  }

  [v34 setName_];

  return v34;
}

void sub_29D9E4080()
{
  v1 = v0;
  v46 = sub_29DA34644();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v46);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9E4C44(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = [objc_opt_self() currentQueue];
  if (!v47)
  {
    aBlock = 0;
    v49 = 0xE000000000000000;
    sub_29DA34DF4();
    swift_getObjectType();
    v44 = sub_29DA35254();
    MEMORY[0x29ED6D450](v44);

    MEMORY[0x29ED6D450](0xD000000000000031, 0x800000029DA373C0);
    sub_29DA34F64();
    __break(1u);
    return;
  }

  v15 = *&v1[qword_2A1A2CD70];
  v16 = *(*v15 + *MEMORY[0x29EDC9DE8] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_29D9E5E80(v15 + v16, v9, sub_29D9E4C44);
  os_unfair_lock_unlock((v15 + v17));
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v18 = sub_29D9E4C44;
    v19 = v9;
LABEL_9:
    sub_29D9E5EE8(v19, v18);
    sub_29DA34614();
    v34 = v1;
    v35 = sub_29DA34634();
    v36 = sub_29DA34B84();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29D9E5BF4();
      v39 = sub_29DA34894();
      v41 = sub_29D9EBB44(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_29D9BB000, v35, v36, "%{public}s attempted to run with invalid configuration", v37, 0xCu);
      sub_29D9C7968(v38);
      MEMORY[0x29ED6E4C0](v38, -1, -1);
      MEMORY[0x29ED6E4C0](v37, -1, -1);
    }

    (*(v2 + 8))(v5, v46);
    v42 = v47;
    v43 = *&v34[qword_2A1A2D6B0];

    sub_29DA33B54();

    sub_29DA33C04();

    return;
  }

  sub_29D9E5C3C(v9, v14);
  v20 = sub_29D9E25AC();
  if (!v20)
  {
    v18 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration;
    v19 = v14;
    goto LABEL_9;
  }

  v21 = v20;
  v22 = [*v14 identifier];
  sub_29DA34854();

  sub_29DA34B04();

  v23 = v14 + *(v10 + 28);
  v24 = sub_29DA34054();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  v52 = sub_29D9E5CA0;
  v53 = v26;
  aBlock = MEMORY[0x29EDCA5F8];
  v49 = 1107296256;
  v50 = sub_29DA05EEC;
  v51 = &unk_2A2461098;
  v27 = _Block_copy(&aBlock);
  v28 = objc_opt_self();

  v29 = v24;
  v30 = [v28 blockOperationWithBlock_];
  _Block_release(v27);

  [v30 addDependency_];
  v31 = v47;
  [v47 addOperation_];
  v32 = sub_29D9E30B4();
  if (v32)
  {
    v33 = v32;
    [v30 addDependency_];
    [v31 addOperation_];
  }

  [v31 addOperation_];

  sub_29D9E5EE8(v14, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration);
}

void sub_29D9E4708(void *a1)
{
  v1 = a1;
  sub_29D9E4080();
}

id sub_29D9E4750()
{
  v1 = v0;
  sub_29DA34AF4();
  result = [v0 isCancelled];
  if (result)
  {
    v3 = sub_29D9E25AC();
    if (v3)
    {
      v4 = v3;
      if (([v3 isCancelled] & 1) == 0)
      {
        [v4 cancel];
      }
    }

    v5 = sub_29D9E30B4();
    if (v5)
    {
      v6 = v5;
      if (([v5 isCancelled] & 1) == 0)
      {
        [v6 cancel];
      }
    }

    v7 = *&v1[qword_2A1A2D6B0];

    sub_29DA33B54();

    return sub_29DA34B24();
  }

  return result;
}

void sub_29D9E4890()
{
  v1 = *(v0 + qword_2A1A2D6B0);

  v2 = *(v0 + qword_2A1A2CD70);

  v3 = *(v0 + qword_2A1A2D6C8);

  v4 = *(v0 + qword_2A1A2D6B8);

  sub_29D9E5D94(*(v0 + qword_2A1A2D6E0));
  v5 = *(v0 + qword_2A1A2D6D8);

  sub_29D9E5D94(v5);
}

id sub_29D9E4920()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAlertQuantityDistributionOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D9E4958(uint64_t a1)
{
  v2 = *(a1 + qword_2A1A2D6B0);

  v3 = *(a1 + qword_2A1A2CD70);

  v4 = *(a1 + qword_2A1A2D6C8);

  v5 = *(a1 + qword_2A1A2D6B8);

  sub_29D9E5D94(*(a1 + qword_2A1A2D6E0));
  v6 = *(a1 + qword_2A1A2D6D8);

  sub_29D9E5D94(v6);
}

void sub_29D9E4A44()
{
  sub_29D9C79FC(319, &qword_2A1A2CB28, 0x29EDBAD20);
  if (v0 <= 0x3F)
  {
    sub_29DA33554();
    if (v1 <= 0x3F)
    {
      sub_29DA335B4();
      if (v2 <= 0x3F)
      {
        sub_29DA34064();
        if (v3 <= 0x3F)
        {
          type metadata accessor for _HKQuantityDistributionStyle(319);
          if (v4 <= 0x3F)
          {
            sub_29D9E2188(319, &qword_2A1A2CB40, &qword_2A1A2CB48, 0x29EDBA0A8, MEMORY[0x29EDC9C68]);
            if (v5 <= 0x3F)
            {
              sub_29D9E5DE8(319, &qword_2A1A2CAB0, type metadata accessor for _HKQuantityDistributionStyle, MEMORY[0x29EDC9C68]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_29D9E4BB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29D9E4BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D9E4C78()
{
  result = qword_2A1A2D698;
  if (!qword_2A1A2D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D698);
  }

  return result;
}

void sub_29D9E4CCC()
{
  if (!qword_2A1A2D3D8)
  {
    sub_29D9E4D3C();
    sub_29D9C6144();
    v0 = sub_29DA35204();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D3D8);
    }
  }
}

void sub_29D9E4D3C()
{
  if (!qword_2A1A2D6D0)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D6D0);
    }
  }
}

void sub_29D9E4D8C()
{
  if (!qword_2A1A2CA80)
  {
    sub_29D9E4C44(255);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29DA34E24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CA80);
    }
  }
}

void sub_29D9E4E28()
{
  if (!qword_2A1A2D3D0)
  {
    sub_29D9E2188(255, &qword_2A1A2D498, &qword_2A1A2D450, 0x29EDBAEF8, MEMORY[0x29EDC9A40]);
    sub_29D9C6144();
    v0 = sub_29DA35204();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D3D0);
    }
  }
}

void sub_29D9E4EC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([v1 isCancelled])
    {

LABEL_5:
      return;
    }

    v2 = [v1 isFinished];

    if (v2)
    {
      goto LABEL_5;
    }

    MEMORY[0x2A1C7C4A8](v3);
    sub_29DA33BF4();
  }
}

void sub_29D9E4FAC(char *a1, unint64_t a2)
{
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v88 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v88 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v88 - v16;
  v18 = *&a1[qword_2A1A2D6C8];

  sub_29DA33B44();

  v19 = v97;
  if (v97 != 255)
  {
    v92 = a2;
    v93 = v4;
    v20 = v96;
    v21 = *&a1[qword_2A1A2D6B8];

    sub_29DA33B44();

    v22 = v96;
    if (v97 == 255)
    {
      v23 = MEMORY[0x29EDCA190];
    }

    else
    {
      v23 = v96;
    }

    v94 = (v97 != 255) & v97;
    if (v19)
    {
      sub_29D9E5CC8(v20, v19);
      sub_29D9E5CE0(v20, 1);
      sub_29DA34614();
      sub_29D9E5CC8(v20, v19);
      v24 = a1;
      v25 = sub_29DA34634();
      v26 = sub_29DA34B84();

      sub_29D9E5CF8(v20, v19);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v92 = v23;
        v28 = v27;
        v29 = swift_slowAlloc();
        v91 = a1;
        v30 = v29;
        v96 = v29;
        *v28 = 136446466;
        ObjectType = swift_getObjectType();
        sub_29D9E5BF4();
        v31 = sub_29DA34894();
        v33 = sub_29D9EBB44(v31, v32, &v96);
        v90 = v20;
        v34 = v5;
        v35 = v33;

        *(v28 + 4) = v35;
        *(v28 + 12) = 2082;
        swift_getErrorValue();
        v36 = sub_29DA35154();
        v38 = sub_29D9EBB44(v36, v37, &v96);

        *(v28 + 14) = v38;
        _os_log_impl(&dword_29D9BB000, v25, v26, "%{public}s base query result failed with error: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v30, -1, -1);
        v39 = v28;
        v23 = v92;
        MEMORY[0x29ED6E4C0](v39, -1, -1);

        v40 = (*(v34 + 8))(v17, v93);
        v20 = v90;
      }

      else
      {

        v40 = (*(v5 + 8))(v17, v93);
      }

      v68 = *&v24[qword_2A1A2D6B0];
      MEMORY[0x2A1C7C4A8](v40);
      *(&v88 - 2) = v20;

      sub_29DA33B54();

      sub_29D9E5CF8(v20, v19);
      sub_29D9E5CF8(v20, v19);
      goto LABEL_32;
    }

    if (((v97 != 255) & v97) != 0)
    {
      sub_29D9E5CE0(v96, 1);
      sub_29DA34614();
      v51 = a1;
      sub_29D9E5CE0(v22, 1);
      v52 = v51;
      v53 = sub_29DA34634();
      v54 = sub_29DA34B84();

      sub_29D9E5CEC(v22, 1);
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v92 = v23;
        v56 = v55;
        v89 = swift_slowAlloc();
        v96 = v89;
        *v56 = 136446466;
        ObjectType = swift_getObjectType();
        sub_29D9E5BF4();
        v57 = sub_29DA34894();
        v90 = v5;
        v59 = sub_29D9EBB44(v57, v58, &v96);
        v91 = v52;
        v60 = v59;

        *(v56 + 4) = v60;
        *(v56 + 12) = 2082;
        swift_getErrorValue();
        v61 = sub_29DA35154();
        v63 = sub_29D9EBB44(v61, v62, &v96);

        *(v56 + 14) = v63;
        v52 = v91;
        _os_log_impl(&dword_29D9BB000, v53, v54, "%{public}s overlay query result failed with error: %{public}s", v56, 0x16u);
        v64 = v89;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v64, -1, -1);
        v65 = v56;
        v23 = v92;
        MEMORY[0x29ED6E4C0](v65, -1, -1);

        v66 = v90[1](v15, v93);
      }

      else
      {

        v66 = (*(v5 + 8))(v15, v93);
      }

      v81 = *&v52[qword_2A1A2D6B0];
      MEMORY[0x2A1C7C4A8](v66);
      *(&v88 - 2) = v22;

      sub_29DA33B54();

      sub_29D9E5CEC(v22, 1);
      goto LABEL_32;
    }

    sub_29D9E5CC8(v20, v19);
    sub_29D9E5CE0(v23, 0);
    sub_29DA34614();
    sub_29D9E5CC8(v20, v19);
    sub_29D9E5CE0(v23, 0);
    sub_29D9E5CC8(v20, v19);
    v91 = a1;
    v69 = a1;
    sub_29D9E5CE0(v23, 0);
    v70 = sub_29DA34634();
    v71 = sub_29DA34B74();

    v72 = v23 >> 62;
    if (os_log_type_enabled(v70, v71))
    {
      v89 = (v23 >> 62);
      v90 = v5;
      v73 = v23;
      v74 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v96 = v88;
      *v74 = 136446723;
      ObjectType = swift_getObjectType();
      sub_29D9E5BF4();
      v75 = sub_29DA34894();
      v77 = sub_29D9EBB44(v75, v76, &v96);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2049;
      if (v20 >> 62)
      {
        v78 = sub_29DA34D34();
      }

      else
      {
        v78 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_29D9E5CF8(v20, v19);
      *(v74 + 14) = v78;
      sub_29D9E5CF8(v20, v19);
      *(v74 + 22) = 2049;
      if (v89)
      {
        v79 = sub_29DA34D34();
      }

      else
      {
        v79 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v73;
      sub_29D9E5CEC(v73, 0);
      *(v74 + 24) = v79;
      sub_29D9E5CEC(v73, 0);
      _os_log_impl(&dword_29D9BB000, v70, v71, "%{public}s received distribution data: %{private}ld count, overlay data: %{private}ld count", v74, 0x20u);
      v80 = v88;
      sub_29D9C7968(v88);
      MEMORY[0x29ED6E4C0](v80, -1, -1);
      MEMORY[0x29ED6E4C0](v74, -1, -1);

      v90[1](v12, v93);
      v72 = v89;
    }

    else
    {
      sub_29D9E5CEC(v23, 0);
      sub_29D9E5CF8(v20, v19);
      sub_29D9E5CEC(v23, 0);
      sub_29D9E5CF8(v20, v19);

      (*(v5 + 8))(v12, v93);
    }

    sub_29DA34544();
    *(swift_allocObject() + 16) = v69;
    v82 = v69;
    v83 = sub_29DA34534();

    if (v72)
    {
      v84 = sub_29DA34D34();
      if (v84)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v84 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v84)
      {
LABEL_28:
        *(swift_allocObject() + 16) = v82;
        v85 = v82;
        v86 = sub_29DA34534();

LABEL_31:
        v87 = *&v82[qword_2A1A2D6B0];
        MEMORY[0x2A1C7C4A8](v84);
        *(&v88 - 2) = v83;
        *(&v88 - 1) = v86;

        sub_29DA33B54();

        sub_29D9E5CEC(v23, 0);
        sub_29D9E5CF8(v20, v19);
LABEL_32:
        sub_29DA34B14();
        sub_29D9E5CEC(v23, v94);
        sub_29D9E5CF8(v20, v19);
        return;
      }
    }

    v86 = 0;
    goto LABEL_31;
  }

  v41 = v5;
  sub_29DA34614();
  v42 = a1;
  v43 = sub_29DA34634();
  v44 = sub_29DA34B84();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v4;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v96 = v47;
    *v46 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29D9E5BF4();
    v48 = sub_29DA34894();
    v50 = sub_29D9EBB44(v48, v49, &v96);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_29D9BB000, v43, v44, "%{public}s attempted final result processing without valid base result", v46, 0xCu);
    sub_29D9C7968(v47);
    MEMORY[0x29ED6E4C0](v47, -1, -1);
    MEMORY[0x29ED6E4C0](v46, -1, -1);

    (*(v41 + 8))(v9, v45);
  }

  else
  {

    (*(v41 + 8))(v9, v4);
  }

  v67 = *&v42[qword_2A1A2D6B0];

  sub_29DA33B54();
}

uint64_t sub_29D9E5B30(uint64_t a1, char a2)
{
  sub_29D9DC064(*a1, *(a1 + 8), *(a1 + 16));
  sub_29D9E4C78();
  result = swift_allocError();
  *v5 = a2;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_29D9E5B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D9DC064(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
}

unint64_t sub_29D9E5BF4()
{
  result = qword_2A1A2CD68;
  if (!qword_2A1A2CD68)
  {
    type metadata accessor for HighlightAlertQuantityDistributionOperation(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2CD68);
  }

  return result;
}

uint64_t sub_29D9E5C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D9E5CA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_29D9E4EC4();
}

uint64_t sub_29D9E5CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29D9E5CC8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_29D9E5CE0(result, a2 & 1);
  }

  return result;
}

id sub_29D9E5CE0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_29D9E5CEC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_29D9E5CF8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_29D9E5CEC(a1, a2 & 1);
  }
}

id sub_29D9E5D40(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29D9DC064(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  return v3;
}

void sub_29D9E5D94(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_29D9E5DA4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_29D9E5DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9E5E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D9E5EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29D9E5FC4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_29D9E5CF8(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_29D9E5CE0(v3, v4);
}

unint64_t sub_29D9E6034()
{
  result = qword_2A17D15F0;
  if (!qword_2A17D15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D15F0);
  }

  return result;
}

id sub_29D9E6094(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = v6;
  v10[6] = v5;
  v16[4] = sub_29D9E9494;
  v16[5] = v10;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1107296256;
  v16[2] = sub_29DA05EEC;
  v16[3] = &unk_2A2461240;
  v11 = _Block_copy(v16);
  v12 = objc_opt_self();

  v13 = [v12 blockOperationWithBlock_];
  _Block_release(v11);

  v14 = v13;
  [v14 addDependency_];
  [a2 addDependency_];

  return v14;
}

void sub_29D9E627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v78 = a5;
  v75 = a4;
  v5 = sub_29DA336F4();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v74 = sub_29DA33554();
  v73 = *(v74 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v74);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29DA34644();
  v12 = *(v11 - 8);
  v76 = v11;
  v77 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = &v68 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v68 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v68 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (!v27)
    {
LABEL_27:

      return;
    }

    v28 = v27;
    swift_beginAccess();
    v72 = swift_unknownObjectWeakLoadStrong();
    if (!v72)
    {
LABEL_26:

      v26 = v28;
      goto LABEL_27;
    }

    v29 = *&v28[qword_2A1A2D708];

    sub_29DA33B44();

    v30 = v79;
    if (v80 == 1)
    {
      sub_29DA34614();
      v31 = v78;

      sub_29D9DC0BC(v30);
      v32 = sub_29DA34634();
      v33 = sub_29DA34B84();

      sub_29D9DC0B0(v30);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v79 = v35;
        *v34 = 136380931;
        *(v34 + 4) = sub_29D9EBB44(v75, v31, &v79);
        *(v34 + 12) = 2082;
        swift_getErrorValue();
        v36 = sub_29DA35154();
        v38 = sub_29D9EBB44(v36, v37, &v79);

        *(v34 + 14) = v38;
        _os_log_impl(&dword_29D9BB000, v32, v33, "HighlightAlert query operation for %{private}s returned error: %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v35, -1, -1);
        MEMORY[0x29ED6E4C0](v34, -1, -1);

        sub_29D9DC0B0(v30);
      }

      else
      {
        sub_29D9DC0B0(v30);
      }

      (*(v77 + 8))(v24, v76);
    }

    else
    {
      if (v79)
      {
        v70 = v28;
        v71 = v79;
        v39 = [v79 sampleType];
        v40 = *&v26[qword_2A1A2D580];

        sub_29DA33B44();

        sub_29D9C706C(&v79, v81);
        v41 = sub_29DA33984();
        v42 = [v39 hk:v41 metadataValueDisplayTypeInStore:?];

        sub_29D9C7968(&v79);
        if (v42)
        {
          v43 = [v42 objectType];

          if (v43)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v44 = v71;
              v45 = [v71 startDate];
              sub_29DA336C4();

              v46 = [v44 endDate];
              sub_29DA336C4();

              sub_29DA33504();
              v47 = v72;
              if (sub_29DA34434())
              {
                (*(v73 + 8))(v10, v74);

                sub_29D9DC0B0(v44);
                v48 = v47;
                v47 = v26;
                v28 = v70;
LABEL_25:

                v26 = v48;
                v28 = v47;
                goto LABEL_26;
              }

              sub_29DA34614();
              v59 = v78;

              v60 = sub_29DA34634();
              v61 = sub_29DA34B84();

              v62 = os_log_type_enabled(v60, v61);
              v28 = v70;
              if (v62)
              {
                v63 = swift_slowAlloc();
                v69 = v60;
                v64 = v63;
                v65 = swift_slowAlloc();
                v79 = v65;
                *v64 = 136380675;
                *(v64 + 4) = sub_29D9EBB44(v75, v59, &v79);
                v66 = v61;
                v67 = v69;
                _os_log_impl(&dword_29D9BB000, v69, v66, "HighlightAlert query for %{private}s passed invalid configuration to dose query operation", v64, 0xCu);
                sub_29D9C7968(v65);
                MEMORY[0x29ED6E4C0](v65, -1, -1);
                MEMORY[0x29ED6E4C0](v64, -1, -1);

                sub_29D9DC0B0(v71);
              }

              else
              {

                sub_29D9DC0B0(v71);
              }

              (*(v77 + 8))(v22, v76);
              (*(v73 + 8))(v10, v74);
              goto LABEL_19;
            }
          }
        }

        sub_29DA34614();
        v54 = v78;

        v55 = sub_29DA34634();
        v56 = sub_29DA34BA4();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v79 = v58;
          *v57 = 136380675;
          *(v57 + 4) = sub_29D9EBB44(v75, v54, &v79);
          _os_log_impl(&dword_29D9BB000, v55, v56, "HighlightAlert query for %{private}s returned non-quantity primary metadata type.", v57, 0xCu);
          sub_29D9C7968(v58);
          MEMORY[0x29ED6E4C0](v58, -1, -1);
          MEMORY[0x29ED6E4C0](v57, -1, -1);
        }

        sub_29D9DC0B0(v71);

        (*(v77 + 8))(v19, v76);
        v28 = v70;
        v47 = v72;
        [v72 cancel];
        goto LABEL_24;
      }

      sub_29DA34614();
      v49 = v78;

      v50 = sub_29DA34634();
      v51 = sub_29DA34BA4();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v79 = v53;
        *v52 = 136380675;
        *(v52 + 4) = sub_29D9EBB44(v75, v49, &v79);
        _os_log_impl(&dword_29D9BB000, v50, v51, "HighlightAlert query for %{private}s returned no samples", v52, 0xCu);
        sub_29D9C7968(v53);
        MEMORY[0x29ED6E4C0](v53, -1, -1);
        MEMORY[0x29ED6E4C0](v52, -1, -1);
      }

      (*(v77 + 8))(v16, v76);
    }

    v47 = v72;
LABEL_19:
    [v47 cancel];
LABEL_24:
    v48 = v26;
    goto LABEL_25;
  }
}

uint64_t sub_29D9E6C10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v197 = a5;
  v228 = a4;
  v230 = a3;
  v202 = sub_29DA336F4();
  v201 = *(v202 - 8);
  v6 = *(v201 + 64);
  MEMORY[0x2A1C7C4A8](v202);
  v199 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_29DA33754();
  v198 = *(v200 - 8);
  v8 = *(v198 + 64);
  MEMORY[0x2A1C7C4A8](v200);
  v196 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDC9C68];
  sub_29D9E939C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v225 = &v188 - v13;
  v208 = sub_29DA33964();
  v206 = *(v208 - 8);
  v14 = *(v206 + 64);
  MEMORY[0x2A1C7C4A8](v208);
  v195 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9E939C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v212 = (&v188 - v18);
  v19 = type metadata accessor for HighlightAlertSampleInfo(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v213 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29DA34404();
  v221 = *(v22 - 8);
  v23 = *(v221 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v220 = &v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HighlightAlertConfiguration(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x2A1C7C4A8](v25 - 8);
  v203 = (&v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v194 = (&v188 - v30);
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v211 = (&v188 - v32);
  MEMORY[0x2A1C7C4A8](v31);
  v218 = (&v188 - v33);
  v34 = sub_29DA34644();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x2A1C7C4A8](v34);
  v39 = &v188 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x2A1C7C4A8](v37);
  v204 = &v188 - v41;
  v42 = MEMORY[0x2A1C7C4A8](v40);
  v205 = &v188 - v43;
  v44 = MEMORY[0x2A1C7C4A8](v42);
  v214 = &v188 - v45;
  MEMORY[0x2A1C7C4A8](v44);
  v219 = &v188 - v46;
  sub_29D9E8738();
  v224 = v47;
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v47);
  v227 = &v188 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9E939C(0, &qword_2A1A2CC80, MEMORY[0x29EDC4EE8], v10);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v50 - 8);
  v53 = &v188 - v52;
  v217 = sub_29DA34494();
  v216 = *(v217 - 8);
  v54 = *(v216 + 64);
  v55 = MEMORY[0x2A1C7C4A8](v217);
  v209 = &v188 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v55);
  v210 = &v188 - v57;
  sub_29D9E8848();
  v226 = v58;
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x2A1C7C4A8](v58);
  v207 = &v188 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x2A1C7C4A8](v60);
  v64 = (&v188 - v63);
  v65 = MEMORY[0x2A1C7C4A8](v62);
  v229 = &v188 - v66;
  v67 = MEMORY[0x2A1C7C4A8](v65);
  v69 = &v188 - v68;
  MEMORY[0x2A1C7C4A8](v67);
  v71 = &v188 - v70;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v73 = result;
    v192 = v22;
    v222 = v34;
    v223 = v35;
    v215 = v71;
    v74 = *a2;
    v75 = *(a2 + 8);
    v193 = a2;
    if (*(a2 + 16))
    {
      v76 = 0;
    }

    else
    {
      v76 = 0x7961446E65766553;
    }

    if (*(a2 + 16))
    {
      v77 = 0;
    }

    else
    {
      v77 = 0xE800000000000000;
    }

    sub_29D9D5C44(v74, v75, v76, v77, v233);
    v79 = v233[4];
    v78 = v233[5];

    sub_29D9D6630(v233);
    sub_29DA34B34();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v81 = v73;
    if (Strong)
    {
      v82 = Strong;
      v83 = *(Strong + qword_2A1A2D708);

      sub_29DA33B44();

      v84 = v231[1];
      v85 = v232;
      swift_beginAccess();
      v86 = swift_unknownObjectWeakLoadStrong();
      if (v86)
      {
        v87 = v86;
        v230 = v78;
        sub_29DA34424();

        sub_29DA33B44();

        v88 = v69;
        v89 = v215;
        sub_29D9E9200(v88, v215);
        v90 = v229;
        sub_29D9E9264(v89, v229, sub_29D9E8848);
        sub_29D9E9264(v90, v64, sub_29D9E8848);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v191 = v81;
        v190 = v79;
        if (EnumCaseMultiPayload == 1)
        {
          v92 = *v64;
          v231[0] = v92;
          v93 = v92;
          sub_29D9C6144();
          v94 = v217;
          if (swift_dynamicCast())
          {
            v189 = v85;
            v228 = v84;
            v95 = v216;
            (*(v216 + 56))(v53, 0, 1, v94);
            v96 = v210;
            (*(v95 + 32))(v210, v53, v94);
            v97 = *MEMORY[0x29EDC4EE0];
            v98 = v209;
            v188 = *(v95 + 104);
            v188(v209, v97, v94);
            v99 = sub_29DA34484();
            v100 = v94;
            v101 = *(v95 + 8);
            v101(v98, v100);
            if (v99 & 1) != 0 || (v188(v98, *MEMORY[0x29EDC4ED8], v100), v102 = sub_29DA34484(), v101(v98, v100), (v102))
            {
              v103 = v207;
              sub_29DA343E4();

              v101(v96, v100);
              v90 = v229;
              sub_29D9E92CC(v229, sub_29D9E8848);
              swift_storeEnumTagMultiPayload();
              sub_29D9E9200(v103, v90);
              v104 = v193;
              v105 = v225;
              v106 = v227;
            }

            else
            {
              v101(v96, v100);

              v90 = v229;
              v104 = v193;
              v105 = v225;
              v106 = v227;
            }

            v84 = v228;
            v85 = v189;
LABEL_26:
            v113 = *(v224 + 48);
            sub_29D9E9264(v90, &v106[v113], sub_29D9E8848);
            if (v85)
            {
              v114 = v84;

              v115 = v219;
              sub_29DA34614();
              v116 = v104;
              v117 = v218;
              sub_29D9E9264(v116, v218, type metadata accessor for HighlightAlertConfiguration);
              v118 = v84;
              v119 = sub_29DA34634();
              v120 = sub_29DA34B84();
              sub_29D9DC0B0(v84);
              if (os_log_type_enabled(v119, v120))
              {
                v121 = swift_slowAlloc();
                v122 = swift_slowAlloc();
                v231[0] = v122;
                *v121 = 136380931;
                v123 = *v117;
                v124 = v117[1];

                sub_29D9E92CC(v117, type metadata accessor for HighlightAlertConfiguration);
                v125 = sub_29D9EBB44(v123, v124, v231);

                *(v121 + 4) = v125;
                *(v121 + 12) = 2082;
                swift_getErrorValue();
                v126 = sub_29DA35154();
                v128 = sub_29D9EBB44(v126, v127, v231);

                *(v121 + 14) = v128;
                _os_log_impl(&dword_29D9BB000, v119, v120, "HighlightAlert query operation for %{private}s returned error: %{public}s", v121, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x29ED6E4C0](v122, -1, -1);
                v129 = v121;
                v106 = v227;
                MEMORY[0x29ED6E4C0](v129, -1, -1);

                sub_29D9DC0B0(v84);
                sub_29D9DC0B0(v84);
                (*(v223 + 8))(v115, v222);
                v130 = v229;
              }

              else
              {

                sub_29D9DC0B0(v84);
                sub_29D9DC0B0(v84);
                sub_29D9E92CC(v117, type metadata accessor for HighlightAlertConfiguration);
                (*(v223 + 8))(v115, v222);
                v130 = v90;
              }

              sub_29D9E92CC(v130, sub_29D9E8848);
              sub_29D9E92CC(v215, sub_29D9E8848);
              v145 = &v106[v113];
              return sub_29D9E92CC(v145, sub_29D9E8848);
            }

            if (swift_getEnumCaseMultiPayload() == 1)
            {

              v131 = *&v106[v113];
              v132 = v214;
              sub_29DA34614();
              v133 = v211;
              sub_29D9E9264(v104, v211, type metadata accessor for HighlightAlertConfiguration);
              v134 = v131;
              v135 = sub_29DA34634();
              v136 = sub_29DA34B84();

              if (os_log_type_enabled(v135, v136))
              {
                v137 = swift_slowAlloc();
                v138 = swift_slowAlloc();
                v231[0] = v138;
                *v137 = 136380931;
                v139 = *v133;
                v140 = v133[1];

                sub_29D9E92CC(v133, type metadata accessor for HighlightAlertConfiguration);
                v141 = sub_29D9EBB44(v139, v140, v231);

                *(v137 + 4) = v141;
                *(v137 + 12) = 2082;
                swift_getErrorValue();
                v142 = sub_29DA35154();
                v144 = sub_29D9EBB44(v142, v143, v231);

                *(v137 + 14) = v144;
                _os_log_impl(&dword_29D9BB000, v135, v136, "HighlightAlert quantity distribution query operation for %{private}s returned error: %{public}s", v137, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x29ED6E4C0](v138, -1, -1);
                MEMORY[0x29ED6E4C0](v137, -1, -1);

                sub_29D9DC0B0(v84);
                (*(v223 + 8))(v214, v222);
              }

              else
              {

                sub_29D9DC0B0(v84);
                sub_29D9E92CC(v133, type metadata accessor for HighlightAlertConfiguration);
                (*(v223 + 8))(v132, v222);
              }

              v165 = v229;
              goto LABEL_48;
            }

            v146 = v84;
            (*(v221 + 32))(v220, &v106[v113], v192);
            if (v84)
            {
              sub_29D9DC0BC(v84);
              sub_29D9DC0BC(v84);
              sub_29D9DC0D4();
              v147 = v84;
              v148 = v213;
              v228 = v147;
              sub_29DA34794();
              v149 = v191;
              v150 = v212;
              sub_29D9E88B8(v104, v212);
              sub_29DA1AF88(v148, v150, v104, v105);
              v151 = v206;
              v152 = v208;
              if ((*(v206 + 48))(v105, 1, v208) == 1)
              {

                sub_29D9E932C(v105, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
                v153 = v205;
                sub_29DA34614();
                v154 = v104;
                v155 = v194;
                sub_29D9E9264(v154, v194, type metadata accessor for HighlightAlertConfiguration);
                v156 = sub_29DA34634();
                v157 = sub_29DA34B84();
                if (os_log_type_enabled(v156, v157))
                {
                  v158 = swift_slowAlloc();
                  v159 = v90;
                  v160 = swift_slowAlloc();
                  v231[0] = v160;
                  *v158 = 136380675;
                  v161 = v149;
                  v162 = *v155;
                  v163 = v155[1];

                  sub_29D9E92CC(v155, type metadata accessor for HighlightAlertConfiguration);
                  v164 = sub_29D9EBB44(v162, v163, v231);

                  *(v158 + 4) = v164;
                  _os_log_impl(&dword_29D9BB000, v156, v157, "HighlightAlert was unable to create a feed item for %{private}s", v158, 0xCu);
                  sub_29D9C7968(v160);
                  MEMORY[0x29ED6E4C0](v160, -1, -1);
                  MEMORY[0x29ED6E4C0](v158, -1, -1);

                  sub_29D9DC0B0(v146);
                  sub_29D9DC0B0(v146);

                  (*(v223 + 8))(v205, v222);
                  sub_29D9E932C(v212, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
                  sub_29D9E92CC(v213, type metadata accessor for HighlightAlertSampleInfo);
                  (*(v221 + 8))(v220, v192);
                  v165 = v159;
LABEL_48:
                  sub_29D9E92CC(v165, sub_29D9E8848);
                  v145 = v215;
                  return sub_29D9E92CC(v145, sub_29D9E8848);
                }

                sub_29D9DC0B0(v146);
                sub_29D9DC0B0(v146);

                sub_29D9E92CC(v155, type metadata accessor for HighlightAlertConfiguration);
                (*(v223 + 8))(v153, v222);
                sub_29D9E932C(v150, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
                v184 = v148;
              }

              else
              {
                v177 = v195;
                (*(v151 + 32))(v195, v105, v152);
                sub_29D9E939C(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
                v178 = sub_29DA34774();
                v179 = [v178 UUID];

                v180 = v196;
                sub_29DA33744();

                v181 = sub_29DA34774();
                v182 = [v181 endDate];

                v183 = v199;
                sub_29DA336C4();

                sub_29DA15594(v177, v180, v183, v197);
                sub_29DA34B34();

                sub_29D9DC0B0(v146);
                sub_29D9DC0B0(v146);

                (*(v201 + 8))(v183, v202);
                (*(v198 + 8))(v180, v200);
                (*(v151 + 8))(v177, v208);
                sub_29D9E932C(v212, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
                v184 = v213;
              }

              sub_29D9E92CC(v184, type metadata accessor for HighlightAlertSampleInfo);
            }

            else
            {

              v166 = v204;
              sub_29DA34614();
              v167 = v203;
              sub_29D9E9264(v104, v203, type metadata accessor for HighlightAlertConfiguration);
              v168 = sub_29DA34634();
              v169 = sub_29DA34BA4();
              v170 = os_log_type_enabled(v168, v169);
              v171 = v223;
              if (v170)
              {
                v172 = swift_slowAlloc();
                v173 = swift_slowAlloc();
                v231[0] = v173;
                *v172 = 136380675;
                v174 = *v167;
                v175 = v167[1];

                sub_29D9E92CC(v167, type metadata accessor for HighlightAlertConfiguration);
                v176 = sub_29D9EBB44(v174, v175, v231);

                *(v172 + 4) = v176;
                v90 = v229;
                _os_log_impl(&dword_29D9BB000, v168, v169, "HighlightAlert query for %{private}s returned no samples; marking this feed item for deletion.", v172, 0xCu);
                sub_29D9C7968(v173);
                MEMORY[0x29ED6E4C0](v173, -1, -1);
                MEMORY[0x29ED6E4C0](v172, -1, -1);
              }

              else
              {

                sub_29D9E92CC(v167, type metadata accessor for HighlightAlertConfiguration);
              }

              v185 = (*(v171 + 8))(v166, v222);
              v186 = v191;
              v187 = *&v191[qword_2A1A2D578];
              MEMORY[0x2A1C7C4A8](v185);
              *(&v188 - 2) = v104;

              sub_29DA33B54();

              sub_29D9DC0B0(0);
            }

            (*(v221 + 8))(v220, v192);
            v165 = v90;
            goto LABEL_48;
          }

          (*(v216 + 56))(v53, 1, 1, v94);
          sub_29D9E932C(v53, &qword_2A1A2CC80, MEMORY[0x29EDC4EE8]);
        }

        else
        {
          sub_29D9E92CC(v64, sub_29D9E8848);
        }

        v104 = v193;
        v105 = v225;
        v106 = v227;
        goto LABEL_26;
      }

      sub_29D9DC0B0(v84);
    }

    else
    {
    }

    v107 = v223;
    sub_29DA34614();
    v108 = sub_29DA34634();
    v109 = sub_29DA34B84();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v222;
    if (v110)
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_29D9BB000, v108, v109, "HighlightAlert query operations went away unexpectedly", v112, 2u);
      MEMORY[0x29ED6E4C0](v112, -1, -1);
    }

    else
    {
    }

    return (*(v107 + 8))(v39, v111);
  }

  return result;
}

void sub_29D9E8738()
{
  if (!qword_2A1A2C9D0)
  {
    sub_29D9E87A8();
    sub_29D9E8848();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2C9D0);
    }
  }
}

void sub_29D9E87A8()
{
  if (!qword_2A1A2D3C0)
  {
    sub_29D9E939C(255, &qword_2A1A2D440, sub_29D9DC0D4, MEMORY[0x29EDC9C68]);
    sub_29D9C6144();
    v0 = sub_29DA35204();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D3C0);
    }
  }
}

void sub_29D9E8848()
{
  if (!qword_2A1A2C9D8)
  {
    sub_29DA34404();
    sub_29D9C6144();
    v0 = sub_29DA35204();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2C9D8);
    }
  }
}

uint64_t sub_29D9E88B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v89 = a1;
  v4 = sub_29DA34644();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v83 = &v78 - v9;
  v10 = sub_29DA336F4();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v13 = sub_29DA33554();
  v86 = *(v13 - 8);
  v87 = v13;
  v14 = *(v86 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v82 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v78 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v88 = &v78 - v20;
  sub_29D9E939C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v24 = (&v78 - v23);
  v25 = sub_29DA343F4();
  if (!*(v25 + 16) || (v26 = *(v25 + 32), , v27 = (sub_29DA343F4() + 16), !*v27))
  {

    v47 = type metadata accessor for HighlightAlertDiagramInfo(0);
    v48 = *(*(v47 - 8) + 56);

    return v48(a2, 1, 1, v47);
  }

  v28 = v27[2 * *v27];

  if (*(v89 + 17) != 1)
  {
LABEL_18:
    v69 = type metadata accessor for HighlightAlertDiagramInfo(0);
    (*(*(v69 - 8) + 56))(v24, 1, 1, v69);
    return sub_29D9E9400(v24, a2);
  }

  v81 = a2;
  v29 = *(v2 + qword_2A1A2D580);

  sub_29DA33B44();

  sub_29D9C706C(v90, v90[3]);
  v30 = sub_29DA33984();
  sub_29D9E939C(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
  v80 = v31;
  v32 = sub_29DA34774();
  v33 = [v32 sampleType];

  v34 = [v33 hk:v30 metadataValueDisplayTypeInStore:?];
  if (!v34)
  {

    sub_29D9C7968(v90);
    a2 = v81;
    goto LABEL_18;
  }

  v35 = [v34 objectType];

  v36 = [v35 identifier];
  v78 = sub_29DA34854();
  v38 = v37;

  sub_29D9C7968(v90);
  sub_29DA33634();
  sub_29DA33634();
  sub_29DA33504();
  v39 = *MEMORY[0x29EDBAF50];
  v40 = sub_29DA34854();
  v42 = sub_29D9C4550(v40, v41);

  if (v42)
  {
    v43 = [v42 BOOLValue];

    if (v43)
    {

      sub_29DA34614();
      v44 = sub_29DA34634();
      v45 = sub_29DA34BA4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_29D9BB000, v44, v45, "HighlightAlert omitting dose diagram due to prunable data", v46, 2u);
        MEMORY[0x29ED6E4C0](v46, -1, -1);
      }

      (*(v84 + 8))(v8, v85);
      (*(v86 + 8))(v88, v87);
LABEL_24:
      v77 = type metadata accessor for HighlightAlertDiagramInfo(0);
      return (*(*(v77 - 8) + 56))(v81, 1, 1, v77);
    }
  }

  v79 = v38;
  v50 = sub_29DA34774();
  v51 = [v50 startDate];

  sub_29DA336C4();
  v52 = sub_29DA34774();
  v53 = [v52 endDate];

  sub_29DA336C4();
  sub_29DA33504();
  sub_29DA33544();
  v55 = v54;
  v56 = v86;
  v57 = v87;
  v58 = *(v86 + 8);
  result = v58(v19, v87);
  if (!__OFADD__(*MEMORY[0x29EDBA3B0], *MEMORY[0x29EDBA3B8]))
  {
    if (v55 <= (*MEMORY[0x29EDBA3B0] + *MEMORY[0x29EDBA3B8]) || (v59 = *(sub_29DA343F4() + 16), , v59 < 2))
    {

      v70 = v83;
      sub_29DA34614();
      v71 = v82;
      (*(v56 + 16))(v82, v88, v57);
      v72 = sub_29DA34634();
      v73 = sub_29DA34BA4();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 134283521;
        sub_29DA33544();
        v76 = v75;
        v58(v71, v57);
        *(v74 + 4) = v76;
        _os_log_impl(&dword_29D9BB000, v72, v73, "HighlightAlert omitting dose diagram due to low duration: %{private}f", v74, 0xCu);
        MEMORY[0x29ED6E4C0](v74, -1, -1);
      }

      else
      {

        v58(v71, v57);
      }

      (*(v84 + 8))(v70, v85);
      v58(v88, v57);
      goto LABEL_24;
    }

    v60 = type metadata accessor for HighlightAlertDiagramInfo(0);
    v61 = v88;
    (*(v56 + 16))(v24 + v60[5], v88, v57);
    v62 = v24 + v60[6];
    sub_29DA34134();
    v63 = (v89 + *(type metadata accessor for HighlightAlertConfiguration(0) + 40));
    v64 = *v63;
    v65 = *(v63 + 8);
    v66 = sub_29DA343F4();
    v58(v61, v57);
    v67 = v79;
    *v24 = v78;
    v24[1] = v67;
    v68 = v24 + v60[7];
    *v68 = v64;
    v68[8] = v65;
    *(v24 + v60[8]) = v66;
    *(v24 + v60[9]) = MEMORY[0x29EDCA190];
    (*(*(v60 - 1) + 56))(v24, 0, 1, v60);
    a2 = v81;
    return sub_29D9E9400(v24, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D9E9200(uint64_t a1, uint64_t a2)
{
  sub_29D9E8848();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E9264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D9E92CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D9E932C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D9E939C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D9E939C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9E9400(uint64_t a1, uint64_t a2)
{
  sub_29D9E939C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E94A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HighlightAlertDailyAveragesOperationError.hashValue.getter(unsigned __int8 a1)
{
  sub_29DA351B4();
  MEMORY[0x29ED6DD30](a1);
  return sub_29DA351E4();
}

uint64_t sub_29D9E9544(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t HighlightAlertDailyAveragesOperation.result.getter()
{
  v1 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void HighlightAlertDailyAveragesOperation.configuration.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_2A1A2CEC8);
  v4 = *(*v3 + *MEMORY[0x29EDC9DE8] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_29D9E9694(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_29D9E9694(uint64_t a1, uint64_t a2)
{
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_29D9E9758()
{
  v1 = qword_2A1A2CEC0;
  v2 = *&v0[qword_2A1A2CEC0];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_29D9E97C8(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_29D9E5D94(v4);
  }

  sub_29D9E5DA4(v2);
  return v3;
}

uint64_t sub_29D9E97C8(char *a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D9EA1D0(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v58 = &v56 - v5;
  sub_29D9EA1D0(0, &qword_2A17D1608, MEMORY[0x29EDC4FA8], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v60 = &v56 - v8;
  v9 = sub_29DA34044();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29DA344B4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v59 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, v2);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v56 - v21;
  v23 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = (&v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = a1;
  v28 = *&a1[qword_2A1A2CEC8];
  v29 = *(*v28 + *MEMORY[0x29EDC9DE8] + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v30));
  sub_29D9E9694(v28 + v29, v22);
  os_unfair_lock_unlock((v28 + v30));
  v31 = *(v24 + 48);
  if (v31(v22, 1, v23) == 1)
  {
    sub_29D9EA560(v22);
    return 0;
  }

  sub_29D9EC11C(v22, v27);
  os_unfair_lock_lock((v28 + v30));
  sub_29D9E9694(v28 + v29, v20);
  v32 = v31(v20, 1, v23);
  sub_29D9EA560(v20);
  os_unfair_lock_unlock((v28 + v30));
  if (v32 == 1)
  {
    sub_29D9EC180(v27);
    return 0;
  }

  v34 = *v27;
  sub_29D9EA1D0(0, &qword_2A17D1610, MEMORY[0x29EDC4988], MEMORY[0x29EDC9E90]);
  v35 = sub_29DA34184();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29DA3AB40;
  (*(v36 + 104))(v39 + v38, *MEMORY[0x29EDC4960], v35);
  (*(v56 + 104))(v12, *MEMORY[0x29EDC48D0], v57);
  v40 = v34;
  sub_29DA344A4();
  v41 = *(v23 + 20);
  v42 = sub_29DA33554();
  v43 = *(v42 - 8);
  v44 = v27 + v41;
  v45 = v58;
  (*(v43 + 16))(v58, v44, v42);
  (*(v43 + 56))(v45, 0, 1, v42);
  v46 = v60;
  sub_29DA34584();
  v47 = sub_29DA34594();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v48 = v61;
  v49 = [v61 name];
  if (v49)
  {
    v50 = v49;
    sub_29DA34854();
  }

  else
  {
    v51 = v48;
    v50 = [v51 description];
    sub_29DA34854();
  }

  v52 = *&v48[direct field offset for HighlightAlertDailyAveragesOperation.healthStore];
  v53 = v48[qword_2A1A2CF70];
  objc_allocWithZone(sub_29DA34574());
  v54 = v52;
  v55 = sub_29DA34554();
  sub_29D9EC180(v27);
  return v55;
}

id HighlightAlertDailyAveragesOperation.init(healthStore:name:environment:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v31 - v11;
  v13 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  sub_29D9C6088();
  v14 = swift_allocError();
  *v15 = 0;
  v32 = v14;
  v33 = 1;
  sub_29D9EA1D0(0, &qword_2A1A2D2B0, sub_29D9C60DC, MEMORY[0x29EDC3C80]);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v4[v13] = sub_29DA33B74();
  v19 = qword_2A1A2CEC8;
  v20 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_29D9C6398();
  v22 = *(v21 + 52);
  v23 = (*(v21 + 48) + 3) & 0x1FFFFFFFCLL;
  v24 = swift_allocObject();
  *(v24 + ((*(*v24 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D9EA234(v12, v24 + *(*v24 + *MEMORY[0x29EDC9DE8] + 16));
  *&v5[v19] = v24;
  *&v5[qword_2A1A2CEC0] = 1;
  *&v5[direct field offset for HighlightAlertDailyAveragesOperation.healthStore] = a1;
  v5[qword_2A1A2CF70] = a4 & 1;
  v25 = type metadata accessor for HighlightAlertDailyAveragesOperation(0);
  v31.receiver = v5;
  v31.super_class = v25;
  v26 = a1;
  v27 = objc_msgSendSuper2(&v31, sel_init);
  v28 = v27;
  if (a3)
  {
    v29 = sub_29DA34824();
  }

  else
  {
    v29 = 0;
  }

  [v27 setName_];

  return v27;
}

void sub_29D9EA1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9EA234(uint64_t a1, uint64_t a2)
{
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL HighlightAlertDailyAveragesOperation.configure(quantityType:dateInterval:)(uint64_t a1, uint64_t a2)
{
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v15[-v7];
  v9 = *(v2 + qword_2A1A2CEC8);
  v16 = a1;
  v17 = a2;
  v10 = *(*v9 + *MEMORY[0x29EDC9DE8] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_29D9EA544((v9 + v10));
  os_unfair_lock_unlock((v9 + v11));
  os_unfair_lock_lock((v9 + v11));
  sub_29D9E9694(v9 + v10, v8);
  v12 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v13 = (*(*(v12 - 8) + 48))(v8, 1, v12) != 1;
  sub_29D9EA560(v8);
  os_unfair_lock_unlock((v9 + v11));
  return v13;
}

id sub_29D9EA474(char *a1, void *a2, uint64_t a3)
{
  sub_29D9EA560(a1);
  v6 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v7 = *(v6 + 20);
  v8 = sub_29DA33554();
  (*(*(v8 - 8) + 16))(&a1[v7], a3, v8);
  *a1 = a2;
  (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  return a2;
}

uint64_t sub_29D9EA560(uint64_t a1)
{
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall HighlightAlertDailyAveragesOperation.main()()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [objc_opt_self() currentQueue];
  if (v15)
  {
    v16 = v15;
    v17 = *&v1[qword_2A1A2CEC8];
    v18 = *(*v17 + *MEMORY[0x29EDC9DE8] + 16);
    v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v17 + v19));
    sub_29D9E9694(v17 + v18, v9);
    os_unfair_lock_unlock((v17 + v19));
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_29D9EA560(v9);
    }

    else
    {
      sub_29D9EC11C(v9, v14);
      v20 = sub_29D9E9758();
      if (v20)
      {
        v21 = v20;
        v22 = [*v14 identifier];
        sub_29DA34854();

        sub_29DA34B04();

        v23 = sub_29D9EAB18(v14);
        [v23 addDependency_];
        [v16 addOperation_];
        [v16 addOperation_];

        sub_29D9EC180(v14);
        return;
      }

      sub_29D9EC180(v14);
    }

    sub_29DA34614();
    v24 = v1;
    v25 = sub_29DA34634();
    v26 = sub_29DA34B84();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38[0] = v28;
      *v27 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29D9EC0D4();
      v29 = sub_29DA34894();
      v31 = sub_29D9EBB44(v29, v30, v38);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_29D9BB000, v25, v26, "[%{public}s] attempted to run with invalid configuration", v27, 0xCu);
      sub_29D9C7968(v28);
      MEMORY[0x29ED6E4C0](v28, -1, -1);
      MEMORY[0x29ED6E4C0](v27, -1, -1);
    }

    (*(v35 + 8))(v5, v36);
    v32 = direct field offset for HighlightAlertDailyAveragesOperation.result;
    swift_beginAccess();
    v33 = *&v24[v32];

    sub_29DA33B54();

    sub_29DA33C04();
  }

  else
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_29DA34DF4();
    swift_getObjectType();
    v34 = sub_29DA35254();
    MEMORY[0x29ED6D450](v34);

    MEMORY[0x29ED6D450](0xD000000000000031, 0x800000029DA373C0);
    sub_29DA34F64();
    __break(1u);
  }
}

id sub_29D9EAB18(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D9EC3C8(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_29D9EC11C(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  aBlock[4] = sub_29D9EC42C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DA05EEC;
  aBlock[3] = &unk_2A2461370;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_self();

  v10 = [v9 blockOperationWithBlock_];
  _Block_release(v8);

  return v10;
}

void sub_29D9EACE0(void *a1)
{
  v1 = a1;
  HighlightAlertDailyAveragesOperation.main()();
}

Swift::Void __swiftcall HighlightAlertDailyAveragesOperation.cleanUp()()
{
  v1 = v0;
  sub_29DA34AF4();
  if ([v0 isCancelled])
  {
    v2 = sub_29D9E9758();
    if (v2)
    {
      v3 = v2;
      if ([v2 isCancelled])
      {
      }

      else
      {
        [v3 cancel];

        v4 = *&v1[qword_2A1A2CEC0];
        *&v1[qword_2A1A2CEC0] = 0;
        sub_29D9E5D94(v4);
      }
    }

    v5 = direct field offset for HighlightAlertDailyAveragesOperation.result;
    swift_beginAccess();
    v6 = *&v1[v5];

    sub_29DA33B54();

    sub_29DA34B24();
  }
}

id HighlightAlertDailyAveragesOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_29D9EAEBC()
{
  v1 = *(v0 + direct field offset for HighlightAlertDailyAveragesOperation.result);

  v2 = *(v0 + qword_2A1A2CEC8);

  v3 = *(v0 + qword_2A1A2CEC0);

  sub_29D9E5D94(v3);
}

id HighlightAlertDailyAveragesOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAlertDailyAveragesOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D9EAF54(uint64_t a1)
{
  v2 = *(a1 + direct field offset for HighlightAlertDailyAveragesOperation.result);

  v3 = *(a1 + qword_2A1A2CEC8);

  v4 = *(a1 + qword_2A1A2CEC0);

  sub_29D9E5D94(v4);
}

void sub_29D9EAFD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x2A1C7C4A8](Strong);
    sub_29DA33BF4();
  }
}

void sub_29D9EB07C(void *a1, uint64_t a2)
{
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v43 - v10;
  v12 = sub_29D9E9758();
  if (v12)
  {
    v13 = v12;
    if ([v12 isFinished])
    {
      v14 = sub_29DA34564();
      v15 = v14;
      if (v16)
      {
        sub_29DA34614();
        v17 = a1;
        sub_29D9DC0BC(v15);
        v18 = sub_29DA34634();
        v19 = sub_29DA34B84();

        sub_29D9DC0B0(v15);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v45 = v19;
          v21 = v20;
          v46 = swift_slowAlloc();
          v48[0] = v46;
          *v21 = 136446466;
          ObjectType = swift_getObjectType();
          sub_29D9EC0D4();
          v22 = sub_29DA34894();
          v44 = v18;
          v24 = sub_29D9EBB44(v22, v23, v48);

          *(v21 + 4) = v24;
          *(v21 + 12) = 2082;
          swift_getErrorValue();
          v25 = sub_29DA35154();
          v27 = sub_29D9EBB44(v25, v26, v48);

          *(v21 + 14) = v27;
          v28 = v44;
          _os_log_impl(&dword_29D9BB000, v44, v45, "[%{public}s] base query result failed with error: %{public}s", v21, 0x16u);
          v29 = v46;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v29, -1, -1);
          MEMORY[0x29ED6E4C0](v21, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v11, v4);
        v40 = direct field offset for HighlightAlertDailyAveragesOperation.result;
        v41 = swift_beginAccess();
        v42 = *&v17[v40];
        MEMORY[0x2A1C7C4A8](v41);
        *(&v43 - 2) = v15;

        sub_29DA33B54();

        sub_29D9DC0B0(v15);
      }

      else
      {
        sub_29D9EB59C(v14, a2);
        sub_29D9DC0B0(v15);
      }

      sub_29DA34B14();

      return;
    }
  }

  sub_29DA34614();
  v30 = a1;
  v31 = sub_29DA34634();
  v32 = sub_29DA34B84();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48[0] = v34;
    *v33 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29D9EC0D4();
    v35 = sub_29DA34894();
    v37 = sub_29D9EBB44(v35, v36, v48);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_29D9BB000, v31, v32, "[%{public}s] attempted final result processing but base query is not finished", v33, 0xCu);
    sub_29D9C7968(v34);
    MEMORY[0x29ED6E4C0](v34, -1, -1);
    MEMORY[0x29ED6E4C0](v33, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v38 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  swift_beginAccess();
  v39 = *&v30[v38];

  sub_29DA33B54();
}

uint64_t sub_29D9EB540(uint64_t a1, char a2)
{
  sub_29D9E5CEC(*a1, *(a1 + 8));
  sub_29D9C6088();
  result = swift_allocError();
  *v5 = a2;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_29D9EB59C(void *a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v4 = v3 - 8;
  v28 = *(v3 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = sub_29DA336F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v26 = v11;
  *(v11 + 16) = MEMORY[0x29EDCA190];
  v12 = (v11 + 16);
  v13 = *(v4 + 28);
  sub_29DA33524();
  v27 = sub_29DA33694();
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_29DA334F4();
  v15 = sub_29DA33694();
  v14(v10, v6);
  sub_29D9EC3C8(a2, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  sub_29D9EC11C(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_29D9EC5F0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D9EBAD0;
  aBlock[3] = &unk_2A24613E8;
  v18 = _Block_copy(aBlock);

  v19 = v27;
  [v29 enumerateStatisticsFromDate:v27 toDate:v15 withBlock:v18];
  _Block_release(v18);

  swift_beginAccess();
  v20 = *v12;
  v21 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  v22 = v30;
  swift_beginAccess();
  v23 = *(v22 + v21);
  v31 = v20;

  sub_29DA33B54();
}

void sub_29D9EB8D0(void *a1, uint64_t a2, uint64_t a3, id *a4)
{
  v7 = sub_29DA336F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 averageQuantity];
  if (v12)
  {
    v13 = v12;
    v14 = [a1 startDate];
    sub_29DA336C4();
    sub_29DA33644();
    v16 = v15;
    (*(v8 + 8))(v11, v7);
    v17 = [*a4 canonicalUnit];
    if (v17)
    {
      v18 = v17;

      [v13 doubleValueForUnit_];
      v20 = v19;

      swift_beginAccess();
      v21 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_29D9D524C(0, *(v21 + 2) + 1, 1, v21);
        *(a3 + 16) = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_29D9D524C((v23 > 1), v24 + 1, 1, v21);
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = v16;
      *(v25 + 5) = v20;
      *(a3 + 16) = v21;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_29D9EBAD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_29D9EBB44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29D9EBC10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29D9C790C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D9C7968(v11);
  return v7;
}

unint64_t sub_29D9EBC10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29D9EBD1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29DA34E34();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_29D9EBD1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_29D9EBD68(a1, a2);
  sub_29D9EBE98(&unk_2A245EC90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29D9EBD68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29D9EBF84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29DA34E34();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29DA348F4();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D9EBF84(v10, 0);
        result = sub_29DA34DE4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29D9EBE98(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_29D9EBFEC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29D9EBF84(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D9EC6C0();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29D9EBFEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D9EC6C0();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

unint64_t sub_29D9EC0D4()
{
  result = qword_2A17D15F8;
  if (!qword_2A17D15F8)
  {
    type metadata accessor for HighlightAlertDailyAveragesOperation(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17D15F8);
  }

  return result;
}

uint64_t sub_29D9EC11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9EC180(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D9EC1E0()
{
  result = qword_2A17D1600;
  if (!qword_2A17D1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1600);
  }

  return result;
}

unint64_t sub_29D9EC2F8()
{
  result = sub_29D9EC37C();
  if (v1 <= 0x3F)
  {
    result = sub_29DA33554();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D9EC37C()
{
  result = qword_2A1A2CB28;
  if (!qword_2A1A2CB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A2CB28);
  }

  return result;
}

uint64_t sub_29D9EC3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D9EC42C()
{
  v1 = *(*(type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0) - 8) + 80);
  v2 = *(v0 + 16);

  sub_29D9EAFD4();
}

uint64_t sub_29D9EC490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29D9EC4B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29D9E5CEC(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 1;

  return v3;
}

uint64_t sub_29D9EC500()
{
  v1 = (type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v1[7];
  v7 = sub_29DA33554();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

void sub_29D9EC5F0(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_29D9EB8D0(a1, a2, v6, v7);
}

uint64_t sub_29D9EC674(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29D9E5CEC(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 0;
}

void sub_29D9EC6C0()
{
  if (!qword_2A1A2C9F8)
  {
    v0 = sub_29DA35104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2C9F8);
    }
  }
}

uint64_t sub_29D9EC718@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  sub_29D9ED2A0(0, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = v46 - v8;
  v10 = sub_29DA33554();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v53 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9ED2A0(0, &qword_2A1A2D320, MEMORY[0x29EDB9D58]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = v46 - v15;
  sub_29D9ED2A0(0, &qword_2A1A2D328, MEMORY[0x29EDB9D18]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = v46 - v19;
  v21 = sub_29DA337A4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33784();
  if (a2 <= 1u || a2 == 2)
  {
    (*(v22 + 16))(v20, v25, v21);
    (*(v22 + 56))(v20, 0, 1, v21);
    v26 = sub_29DA337B4();
    (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
    goto LABEL_5;
  }

  v51 = v20;
  sub_29D9ED018(a1, v9);
  v28 = v52;
  if ((*(v52 + 48))(v9, 1, v10) == 1)
  {
    sub_29D9ED098(v9);
    v29 = v51;
    (*(v22 + 16))(v51, v25, v21);
    (*(v22 + 56))(v29, 0, 1, v21);
    v30 = sub_29DA337B4();
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
LABEL_5:
    sub_29DA335A4();
    return (*(v22 + 8))(v25, v21);
  }

  v47 = v16;
  v48 = v25;
  v49 = v22;
  v50 = v21;
  v46[0] = v10;
  v46[1] = a3;
  (*(v28 + 32))(v53, v9, v10);
  v54 = MEMORY[0x29EDCA190];
  result = sub_29DA1FA70(0, 11, 0);
  v31 = 0x20u;
  v32 = v54;
  do
  {
    v33 = *(&unk_2A245FC90 + v31);
    if ((v33 * 7) >> 64 != (7 * v33) >> 63)
    {
      __break(1u);
      goto LABEL_23;
    }

    v54 = v32;
    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v35 >= v34 >> 1)
    {
      result = sub_29DA1FA70((v34 > 1), v35 + 1, 1);
      v32 = v54;
    }

    *(v32 + 16) = v35 + 1;
    v36 = v32 + 16 * v35;
    *(v36 + 32) = v33;
    *(v36 + 40) = (7 * v33) * 60.0;
    v31 += 8;
  }

  while (v31 != 120);
  v37 = 0;
  v38 = (v32 + 40);
  v22 = v49;
  v21 = v50;
  v39 = v47;
  v25 = v48;
  while (v37 < *(v32 + 16))
  {
    v40 = *(v38 - 1);
    v41 = *v38;
    v38 += 2;
    result = sub_29DA33544();
    if (v41 >= v42 || v35 == v37++)
    {

      v44 = v51;
      (*(v22 + 16))(v51, v25, v21);
      (*(v22 + 56))(v44, 0, 1, v21);
      v45 = sub_29DA337B4();
      (*(*(v45 - 8) + 56))(v39, 1, 1, v45);
      sub_29DA335A4();
      (*(v52 + 8))(v53, v46[0]);
      return (*(v22 + 8))(v25, v21);
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_29D9ED018(uint64_t a1, uint64_t a2)
{
  sub_29D9ED2A0(0, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9ED098(uint64_t a1)
{
  sub_29D9ED2A0(0, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HighlightAlertDistributionConfiguration()
{
  result = qword_2A1A2DD68;
  if (!qword_2A1A2DD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D9ED184()
{
  type metadata accessor for _HKQuantityDistributionStyle(319);
  if (v0 <= 0x3F)
  {
    sub_29DA34374();
    if (v1 <= 0x3F)
    {
      sub_29D9ED2A0(319, &qword_2A1A2CAB0, type metadata accessor for _HKQuantityDistributionStyle);
      if (v2 <= 0x3F)
      {
        sub_29DA34284();
        if (v3 <= 0x3F)
        {
          sub_29DA34064();
          if (v4 <= 0x3F)
          {
            sub_29D9ED2F4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_29D9ED2A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA34CC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D9ED2F4()
{
  if (!qword_2A1A2CB50)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CB50);
    }
  }
}

unint64_t sub_29D9ED368()
{
  result = qword_2A17D1618;
  if (!qword_2A17D1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1618);
  }

  return result;
}

unint64_t sub_29D9ED3C0()
{
  result = qword_2A17D1620;
  if (!qword_2A17D1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1620);
  }

  return result;
}

uint64_t sub_29D9ED414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x29EDCA398];
  sub_29D9F33D4(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = v27 - v12;
  sub_29D9F2FA8(a3, v27 - v12, &qword_2A1A2CB58, v9);
  v14 = sub_29DA34A34();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_29D9F3014(v13, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29DA34A24();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_29DA349B4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_29DA348B4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_29D9F3014(a3, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29D9F3014(a3, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t HighlightAlertStateManager.fetchAlertState(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_29D9F33D4(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_29DA34A34();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  sub_29D9ED414(0, 0, v13, &unk_29DA3BA30, v15);
}

uint64_t sub_29D9ED89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_29DA34644();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  sub_29D9F31FC();
  v8[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  sub_29D9F33D4(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v16 = type metadata accessor for HighlightAlertState();
  v8[17] = v16;
  v17 = *(v16 - 8);
  v8[18] = v17;
  v18 = *(v17 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9EDA38, 0, 0);
}

uint64_t sub_29D9EDA38()
{
  v1 = *(v0[6] + 40);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_29D9EDADC;
  v3 = v0[16];
  v4 = v0[7];
  v5 = v0[8];

  return sub_29D9DC2D4(v3, v4, v5, 0);
}

uint64_t sub_29D9EDADC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_29D9EDDB4;
  }

  else
  {
    v3 = sub_29D9EDBF0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D9EDBF0()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v5 = v0[9];
    v4 = v0[10];
    sub_29D9F3014(v1, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
    sub_29D9F32C0();
    v6 = swift_allocError();
    *v7 = 0;
    *v2 = v6;
    swift_storeEnumTagMultiPayload();
    v5(v2);
    v8 = sub_29D9F31FC;
  }

  else
  {
    v2 = v0[19];
    v10 = v0[14];
    v9 = v0[15];
    v12 = v0[9];
    v11 = v0[10];
    sub_29D9EE9AC(v1, v2);
    sub_29D9F2F34(v2, v9, type metadata accessor for HighlightAlertState);
    swift_storeEnumTagMultiPayload();
    v12(v9);
    sub_29D9F3070(v9, sub_29D9F31FC);
    v8 = type metadata accessor for HighlightAlertState;
  }

  sub_29D9F3070(v2, v8);
  v13 = v0[19];
  v14 = v0[15];
  v15 = v0[16];
  v16 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_29D9EDDB4()
{
  v42 = v0;
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[6];
  sub_29DA34614();

  v5 = v1;
  v6 = sub_29DA34634();
  v7 = sub_29DA34B84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v40 = v0[13];
    v38 = v0[21];
    v39 = v0[11];
    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v12 = 136446723;
    v14 = HighlightAlertStateManager.description.getter();
    v16 = sub_29D9EBB44(v14, v15, &v41);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_29D9EBB44(v9, v10, &v41);
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v18 = v0[2];
    v17 = v0[3];
    v19 = v0[4];
    v20 = sub_29DA35154();
    v22 = sub_29D9EBB44(v20, v21, &v41);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_29D9BB000, v6, v7, "%{public}s: error fetching sync alert state with key: %{private}s, error: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v13, -1, -1);
    MEMORY[0x29ED6E4C0](v12, -1, -1);

    (*(v8 + 8))(v40, v39);
  }

  else
  {
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[21];
  v27 = v0[14];
  v28 = v0[15];
  v30 = v0[9];
  v29 = v0[10];
  *v28 = v26;
  swift_storeEnumTagMultiPayload();
  v31 = v26;
  v30(v28);

  sub_29D9F3070(v28, sub_29D9F31FC);
  v32 = v0[19];
  v33 = v0[15];
  v34 = v0[16];
  v35 = v0[13];

  v36 = v0[1];

  return v36();
}

uint64_t HighlightAlertStateManager.description.getter()
{
  MEMORY[0x29ED6D450](60, 0xE100000000000000);
  v1 = *v0;
  sub_29D9EE158();
  v2 = sub_29DA34894();
  MEMORY[0x29ED6D450](v2);

  MEMORY[0x29ED6D450](32, 0xE100000000000000);
  sub_29DA34E94();
  MEMORY[0x29ED6D450](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_29D9EE158()
{
  result = qword_2A1A2D018;
  if (!qword_2A1A2D018)
  {
    type metadata accessor for HighlightAlertStateManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2D018);
  }

  return result;
}

uint64_t HighlightAlertStateManager.persist(alertState:identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a2;
  v11 = type metadata accessor for HighlightAlertState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9F33D4(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_29DA34A34();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_29D9F2F34(a1, v14, type metadata accessor for HighlightAlertState);
  v20 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v6;
  sub_29D9EE9AC(v14, v22 + v20);
  v23 = (v22 + v21);
  *v23 = v27;
  v23[1] = a3;
  v24 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = a4;
  v24[1] = a5;

  sub_29D9C1D2C(a4);
  sub_29D9ED414(0, 0, v18, &unk_29DA3AE38, v22);
}

uint64_t sub_29D9EE3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v14;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v9 = sub_29DA34644();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9EE4C0, 0, 0);
}

uint64_t sub_29D9EE4C0()
{
  v1 = *(v0[8] + 40);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_29D9EE564;
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  return sub_29D9DD118(v5, v3, v4, 0);
}

uint64_t sub_29D9EE564()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_29D9EE728;
  }

  else
  {
    v3 = sub_29D9EE678;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D9EE678()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 104);
    sub_29D9C6144();
    sub_29DA351F4();
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v1(v3, v4);
    sub_29D9F3428(v3, v4);
  }

  v5 = *(v0 + 128);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29D9EE728()
{
  v37 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[8];
  sub_29DA34614();

  v5 = v1;
  v6 = sub_29DA34634();
  v7 = sub_29DA34B84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v35 = v0[16];
    v33 = v0[18];
    v34 = v0[14];
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136446723;
    v14 = HighlightAlertStateManager.description.getter();
    v16 = sub_29D9EBB44(v14, v15, &v36);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_29D9EBB44(v9, v10, &v36);
    *(v12 + 22) = 2082;
    swift_getErrorValue();
    v18 = v0[2];
    v17 = v0[3];
    v19 = v0[4];
    v20 = sub_29DA35154();
    v22 = sub_29D9EBB44(v20, v21, &v36);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_29D9BB000, v6, v7, "%{public}s: error persisting sync alert state with key: %{private}s, error: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v13, -1, -1);
    MEMORY[0x29ED6E4C0](v12, -1, -1);

    (*(v8 + 8))(v35, v34);
  }

  else
  {
    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[14];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[12];
  v27 = v0[18];
  if (v26)
  {
    v28 = v0[13];
    v29 = v27;
    v26(v27, 1);
  }

  v30 = v0[16];

  v31 = v0[1];

  return v31();
}

uint64_t sub_29D9EE9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9EEA10(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for HighlightAlertState() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = (v1 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_29D9D02DC;

  return sub_29D9EE3F0(a1, v8, v9, v10, v1 + v5, v12, v13, v15);
}

uint64_t sub_29D9EEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2A1C73D48](sub_29D9EEB9C, 0, 0);
}

uint64_t sub_29D9EEB9C()
{
  v1 = *(v0[2] + 40);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_29D9EEC38;
  v4 = v0[3];
  v3 = v0[4];

  return sub_29D9DDDD8(v4, v3);
}

uint64_t sub_29D9EEC38()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29D9EED34, 0, 0);
}

uint64_t sub_29D9EED34()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))();
  v2 = *(v0 + 8);

  return v2();
}