uint64_t sub_1C54076F8(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1C55968A4();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1C5596CC4();
  __break(1u);
LABEL_12:
  result = sub_1C5596C94();
  __break(1u);
  return result;
}

uint64_t sub_1C5407A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v15 = sub_1C5408B30;
        v16 = &v37;
        sub_1C54076F8(sub_1C5408B4C, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_1C5596C94();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_1C5596C94();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_1C5596C94();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_1C5596C94();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_1C5596C94();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_1C5596C94();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_1C5596C94();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_1C5596C94();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_1C5596C94();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_1C5596C94();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_1C5596C94();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_1C5596C94();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_1C5596CC4();
    __break(1u);
  }

  result = sub_1C5596C94();
  __break(1u);
  return result;
}

unint64_t sub_1C5408288(uint64_t a1)
{
  result = sub_1C54082B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C54082B4()
{
  v2 = qword_1EC15BD20;
  if (!qword_1EC15BD20)
  {
    type metadata accessor for RecoveryContactsViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C540835C()
{
  updated = sub_1C540848C();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1C540848C()
{
  v4 = qword_1EC15BD28;
  if (!qword_1EC15BD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BCD0);
    v3 = sub_1C5594EA4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15BD28);
      return v1;
    }
  }

  return v4;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v4;
}

unint64_t sub_1C54085A4()
{
  v2 = qword_1EC15BD30;
  if (!qword_1EC15BD30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C540861C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1C5596C94();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1C5596C94();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1C5596C94();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1C5596C94();
                __break(1u);
              }

              sub_1C5596C94();
              __break(1u);
            }

            sub_1C5596C94();
            __break(1u);
          }

          sub_1C5596C94();
          __break(1u);
        }

        sub_1C5596C94();
        __break(1u);
      }

      sub_1C5596C94();
      __break(1u);
    }

    sub_1C5596C94();
    __break(1u);
  }

  result = sub_1C5596C94();
  __break(1u);
  return result;
}

void *sub_1C5408B78(const void *a1, void *a2)
{
  v6 = sub_1C5596814();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1C5408CA0(uint64_t a1)
{
  v3 = sub_1C5596814();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1C5408D48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_1C5408F08(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C540901C;

  return v6(a1);
}

uint64_t sub_1C540901C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1C5409148(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5408F08(a1, v6);
}

uint64_t sub_1C5409260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1C54092E0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5405D3C(a1, v6);
}

uint64_t sub_1C54093A0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5406064(a1, v6);
}

void *sub_1C540955C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1C5594CF4();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1C54095E8()
{
  v4 = *v0;
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  sub_1C5373718();
  return v2 & 1;
}

uint64_t sub_1C5409664(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  return result;
}

__int128 *sub_1C54096A4()
{
  v4 = *v0;
  sub_1C5409664(&v4, v3);
  sub_1C5409664(&v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
  result = &v4;
  sub_1C5373718();
  return result;
}

uint64_t sub_1C540974C()
{
  v4 = *v0;
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  sub_1C5373718();
  return v2;
}

uint64_t sub_1C54097E0()
{
  v2 = *v0;

  return v2 & 1;
}

uint64_t sub_1C540981C(char a1, uint64_t a2)
{

  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t sub_1C5409868()
{
  v4 = *(v0 + 16);
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  sub_1C5373718();
  return v2 & 1;
}

__int128 *sub_1C54098E4()
{
  v4 = *(v0 + 16);
  sub_1C5409664(&v4, v3);
  sub_1C5409664(&v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
  result = &v4;
  sub_1C5373718();
  return result;
}

uint64_t sub_1C5409980()
{
  v4 = *(v0 + 16);
  sub_1C5409664(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  sub_1C5373718();
  return v2;
}

uint64_t sub_1C5409A14()
{
  v2 = *(v0 + 16);

  return v2 & 1;
}

uint64_t sub_1C5409A50(char a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1C5409A9C()
{
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD48);
  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C5409B20()
{
  v4 = *(v0 + 32);
  sub_1C5409B98(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50);
  sub_1C5595F84();
  sub_1C5409BF0();
  return v2;
}

void *sub_1C5409B98(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1C5594CF4();
  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_1C5409C28()
{
  v4 = *(v0 + 32);
  sub_1C5409B98(&v4, &v3);
  sub_1C5409B98(&v4, &v2);
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50);
  sub_1C5595F94();
  sub_1C5409BF0();
  sub_1C5409BF0();
}

uint64_t sub_1C5409D08()
{
  v4 = *(v0 + 32);
  sub_1C5409B98(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50);
  sub_1C5595FA4();
  sub_1C5409BF0();
  return v2;
}

uint64_t sub_1C5409D98()
{
  v2 = *(v0 + 32);
  sub_1C5594CF4();

  return v2;
}

uint64_t sub_1C5409DD8(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1C5409E40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD58);
  sub_1C5595F74();
  return v1;
}

uint64_t sub_1C5409ED0()
{
  v4[0] = *(v0 + 48);
  v4[1] = *(v0 + 64);
  sub_1C5409F74(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F84();
  sub_1C5409FBC();
  return v2;
}

uint64_t sub_1C5409F74(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v4;
  return result;
}

_OWORD *sub_1C5409FE8()
{
  v4[0] = *(v0 + 48);
  v4[1] = *(v0 + 64);
  sub_1C5409F74(v4, v3);
  sub_1C5409F74(v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F94();
  sub_1C5409FBC();
  result = v4;
  sub_1C5409FBC();
  return result;
}

_OWORD *sub_1C540A0D0@<X0>(uint64_t a1@<X8>)
{
  v10[0] = *(v1 + 48);
  v10[1] = *(v1 + 64);
  sub_1C5409F74(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595FA4();
  result = v10;
  sub_1C5409FBC();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8 & 1;
  return result;
}

uint64_t sub_1C540A1AC()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1C540A224(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3 & 1;
  *(v4 + 72) = a4;
}

uint64_t sub_1C540A2AC()
{
  v2 = *(v0 + 80);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1C540A318()
{
  v2 = *(v0 + 96);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C540A344(uint64_t a1)
{
  swift_unknownObjectRetain();
  *(v1 + 96) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C540A3A0()
{
  v2 = *(v0 + 104);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C540A3D8()
{
  sub_1C55965F4();
  v1 = sub_1C54637B4();

  return v1;
}

uint64_t sub_1C540A434()
{
  v2 = *(v0 + 120);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C540A46C()
{
  sub_1C55965F4();
  v1 = sub_1C54637B4();

  return v1;
}

uint64_t sub_1C540A4C8()
{
  v2 = *(v0 + 136);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C540A500@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v9 - v9;
  v10 = 0;
  v11 = (*(*(sub_1C55947D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v9 - v11;
  v37 = sub_1C5594794();
  v29 = *(v37 - 8);
  v30 = v37 - 8;
  v14 = v29[8];
  v12 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v9 - v12;
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](&v9 - v12);
  v35 = &v9 - v13;
  v43 = &v9 - v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v9 - v15;
  v42 = &v9 - v15;
  v41 = v3;
  v16 = *(v3 + 120);
  v18 = *(v3 + 128);
  sub_1C5594CF4();
  v25 = 1;
  v4 = sub_1C55965F4();
  v17 = v5;
  v19 = MEMORY[0x1C6947180](v16, v18, v4);
  v20 = v6;

  sub_1C540A91C();
  sub_1C55947A4();
  v22 = *(v21 + 136);
  v23 = *(v21 + 144);
  sub_1C5594CF4();
  sub_1C540A91C();
  sub_1C55947A4();
  KeyPath = swift_getKeyPath();
  v27 = swift_getKeyPath();
  sub_1C55965F4();
  v26 = v7;
  sub_1C55948A4();

  sub_1C540AB30();
  sub_1C5594724();
  v34 = v29[2];
  v33 = v29 + 2;
  v34(v31, v35, v37);
  sub_1C540ABA8();
  sub_1C5594774();
  v39 = v29[1];
  v38 = v29 + 1;
  v39(v31, v37);
  v34(v32, v36, v37);
  v39(v35, v37);
  return (v39)(v36, v37);
}

BOOL sub_1C540A934()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0D8);
  v1 = sub_1C55964D4();

  return (v1 & 1) != 0;
}

void sub_1C540AA58()
{

  sub_1C540AB30();
  sub_1C5594854();
  __break(1u);
}

void sub_1C540AA8C(uint64_t a1)
{
  v2[1] = a1;
  v1 = sub_1C5594714();
  v4 = *(v1 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(v2 - v3);
  sub_1C5594704();
  __break(1u);
}

unint64_t sub_1C540AB30()
{
  v2 = qword_1EC15BD70;
  if (!qword_1EC15BD70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540ABA8()
{
  v2 = qword_1EC15BD78;
  if (!qword_1EC15BD78)
  {
    sub_1C5594794();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C540AC28@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v138 = v1;
  v86 = sub_1C540D660;
  v108 = MEMORY[0x1E697CF10];
  v119 = MEMORY[0x1E697D600];
  v131 = MEMORY[0x1E697D368];
  v49 = sub_1C541129C;
  v50 = sub_1C5411614;
  v51 = sub_1C54117B4;
  v52 = MEMORY[0x1E697D340];
  v174 = 0;
  __src = v175;
  __n = 160;
  memcpy(v175, v1, sizeof(v175));
  memcpy(__dst, v175, sizeof(__dst));
  v135 = 0;
  v116 = sub_1C5595584();
  v109 = *(v116 - 8);
  v110 = v116 - 8;
  v55 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v111 = v22 - v55;
  v100 = sub_1C55955D4();
  v93 = *(v100 - 8);
  v94 = v100 - 8;
  v56 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100);
  v99 = v22 - v56;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD80);
  v88 = *(v91 - 8);
  v89 = v91 - 8;
  v57 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91);
  v90 = v22 - v57;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD88);
  v58 = (*(*(v96 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v95 = v22 - v58;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD90);
  v103 = *(v106 - 8);
  v104 = v106 - 8;
  v59 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v106);
  v105 = v22 - v59;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD98);
  v112 = *(v115 - 8);
  v113 = v115 - 8;
  v60 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115);
  v114 = v22 - v60;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDA0);
  v124 = *(v126 - 8);
  v125 = v126 - 8;
  v61 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v126);
  v127 = v22 - v61;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDA8);
  v62 = (*(*(v129 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v129);
  v128 = v22 - v62;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDB0);
  v139 = *(v142 - 8);
  v140 = v142 - 8;
  v63 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v142);
  v141 = v22 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDB8);
  v65 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v133 = v22 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDC0);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v68 = v22 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDC8);
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69);
  v71 = v22 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDD0);
  v73 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v74 = v22 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDD8);
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v138);
  v79 = v22 - v78;
  v80 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v81 = v22 - v80;
  v82 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v83 = v22 - v82;
  v174 = v22 - v82;
  sub_1C540D4D4(v6, &v173);
  v84 = v148;
  v148[2] = v138;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDE0);
  sub_1C540D668();
  sub_1C5595964();
  sub_1C540D6F0(v138);
  v87 = v138[19];
  sub_1C540D790();
  sub_1C5595C24();
  (*(v88 + 8))(v90, v91);
  v92 = sub_1C55957A4();
  sub_1C55955C4();
  v97 = sub_1C540D818();
  v134 = 0;
  MEMORY[0x1C6946710](v92, 0x3FB999999999999ALL);
  v102 = *(v93 + 8);
  v101 = v93 + 8;
  v102(v99, v100);
  sub_1C540DA78(v95);
  v98 = sub_1C5595804();
  sub_1C55955C4();
  v172[3] = v96;
  v172[4] = v97;
  v132 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1C6946710](v98, v135, v134, v99, v106);
  v102(v99, v100);
  (*(v103 + 8))(v105, v106);
  sub_1C5595574();
  v172[1] = v106;
  v172[2] = OpaqueTypeConformance2;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = MEMORY[0x1E697C750];
  sub_1C5595E24();
  (*(v109 + 8))(v111, v116);
  (*(v112 + 8))(v114, v115);
  v7 = sub_1C5595E74();
  v123 = v172;
  v172[0] = v7;
  v168 = v115;
  v169 = v116;
  v170 = v117;
  v171 = v118;
  v121 = swift_getOpaqueTypeConformance2();
  v120 = MEMORY[0x1E69815C0];
  v122 = MEMORY[0x1E6981568];
  sub_1C5410CE8();
  sub_1C5595A74();
  sub_1C5410D10();
  (*(v124 + 8))(v127, v126);
  v130 = sub_1C5410D3C();
  sub_1C5595C94();
  sub_1C5358BE0(v128);
  v166 = v129;
  v167 = v130;
  v136 = swift_getOpaqueTypeConformance2();
  v8 = sub_1C5410F68();
  v137 = &v14;
  v14 = 0;
  v15 = 1;
  v16 = 0x7FF0000000000000;
  v17 = 0;
  v18 = v8;
  v19 = v9;
  v20 = v142;
  v21 = v136;
  sub_1C5595D24();
  v10 = v138;
  (*(v139 + 8))(v141, v142);
  v11 = *(v10 + 3);
  v144 = &v178;
  v178 = v11;
  v179 = *(v10 + 4);
  sub_1C5409F74(&v178, &v162);
  v160 = v178;
  v161 = v179;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
  sub_1C5595F84();
  v145 = v157;
  v146 = v158;
  v147 = v159;
  sub_1C5409FBC();
  v163 = v145;
  v164 = v146;
  v165 = v147 & 1;
  if (v147)
  {
    v46 = 0;
    v47 = 1;
  }

  else
  {
    v46 = v163;
    v47 = 0;
  }

  v40 = v47;
  v41 = v46;
  v12 = *(v138 + 3);
  v42 = &v176;
  v176 = v12;
  v177 = *(v138 + 4);
  sub_1C5409F74(&v176, v154);
  v152 = v176;
  v153 = v177;
  sub_1C5595F84();
  v43 = v150[20];
  v44 = v150[21];
  v45 = v151;
  sub_1C5409FBC();
  v154[4] = v43;
  v155 = v44;
  v156 = v45 & 1;
  if (v45)
  {
    v38 = 0;
    v39 = 1;
  }

  else
  {
    v38 = v155;
    v39 = 0;
  }

  v23 = v39;
  v22[1] = v38;
  v24 = sub_1C5410F8C();
  sub_1C5410F68();
  sub_1C5595D14();
  sub_1C5358C70(v133);
  v25 = sub_1C54110A4();
  v26 = sub_1C5411080();
  sub_1C5411148();
  sub_1C5595BB4();
  sub_1C5358C70(v68);
  sub_1C540D4D4(v138, v150);
  v28 = 176;
  v29 = 7;
  v27 = swift_allocObject();
  v30 = 160;
  memcpy((v27 + 16), v138, 0xA0uLL);
  sub_1C54112A4();
  sub_1C5595DC4();
  sub_1C5411348(v49);
  sub_1C5358C70(v71);
  v32 = type metadata accessor for CGSize();
  sub_1C540D4D4(v138, &v149);
  v31 = swift_allocObject();
  memcpy((v31 + 16), v138, v30);
  v33 = sub_1C54117BC();
  v34 = sub_1C5411860();
  v20 = v34;
  sub_1C5595C64();

  sub_1C5358DF8(v74);
  v148[3] = v72;
  v148[4] = v32;
  v148[5] = v33;
  v148[6] = v34;
  v35 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v81, v75, v83);
  v37 = *(v76 + 8);
  v36 = v76 + 8;
  v37(v81, v75);
  (*(v76 + 16))(v79, v83, v75);
  sub_1C540EFD8(v79, v75, v48);
  v37(v79, v75);
  return (v37)(v83, v75);
}

uint64_t sub_1C540BC08@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = &v183;
  v68 = a1;
  v70 = a2;
  v71 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v175 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v163 = 0;
  v160 = 0;
  v2 = *a1;
  v199 = a1[1];
  v198 = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v203 = a1[5];
  v202 = v5;
  v201 = v4;
  v200 = v3;
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v207 = a1[9];
  v206 = v8;
  v205 = v7;
  v204 = v6;
  v214 = v199;
  v213 = v198;
  v218 = v203;
  v217 = v202;
  v216 = v201;
  v215 = v200;
  v222 = v207;
  v221 = v8;
  v220 = v7;
  v219 = v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF18);
  v73 = *(v72 - 8);
  v74 = v73;
  v75 = *(v73 + 64);
  v9 = MEMORY[0x1EEE9AC00](v72 - 8);
  v77 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = v32 - v77;
  MEMORY[0x1EEE9AC00](v9);
  v78 = v32 - v77;
  v197 = v32 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF20);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v82 = (v80 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = v32 - v82;
  MEMORY[0x1EEE9AC00](v32 - v82);
  v83 = v32 - v82;
  v196 = v32 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
  v85 = *(v84 - 8);
  v86 = v85;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84 - 8);
  v88 = v32 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
  v90 = *(v89 - 8);
  v91 = v90;
  v93 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89 - 8);
  v95 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v32 - v95;
  v10 = MEMORY[0x1EEE9AC00](v32 - v95);
  v94 = v32 - v95;
  MEMORY[0x1EEE9AC00](v10);
  v96 = v32 - v95;
  v195 = v32 - v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38);
  v99 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97 - 8);
  v101 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = v32 - v101;
  v11 = MEMORY[0x1EEE9AC00](v32 - v101);
  v100 = v32 - v101;
  MEMORY[0x1EEE9AC00](v11);
  v102 = v32 - v101;
  v194 = v32 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v103 - 8);
  v107 = v32 - v106;
  v193 = v32 - v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
  v110 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108 - 8);
  v112 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v32 - v112;
  v12 = MEMORY[0x1EEE9AC00](v32 - v112);
  v111 = v32 - v112;
  MEMORY[0x1EEE9AC00](v12);
  v113 = v32 - v112;
  v192 = v32 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
  v115 = *(v114 - 8);
  v116 = v115;
  v117 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v114 - 8);
  v118 = v32 - v117;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58);
  v120 = *(*(v119 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v119 - 8);
  v122 = (v120 + 15) & 0xFFFFFFFFFFFFFFF0;
  v121 = v32 - v122;
  MEMORY[0x1EEE9AC00](v13);
  v123 = v32 - v122;
  v191 = v32 - v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60);
  v126 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124 - 8);
  v128 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = v32 - v128;
  v14 = MEMORY[0x1EEE9AC00](v32 - v128);
  v127 = v32 - v128;
  MEMORY[0x1EEE9AC00](v14);
  v129 = v32 - v128;
  v190 = v32 - v128;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
  v131 = *(v130 - 8);
  v132 = v131;
  v133 = (*(v131 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v130 - 8);
  v134 = v32 - v133;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
  v136 = *(v135 - 8);
  v137 = v136;
  v140 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v135 - 8);
  v142 = (v140 + 15) & 0xFFFFFFFFFFFFFFF0;
  v138 = v32 - v142;
  v15 = MEMORY[0x1EEE9AC00](v32 - v142);
  v139 = v32 - v142;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v141 = v32 - v142;
  MEMORY[0x1EEE9AC00](v16);
  v143 = v32 - v142;
  v189 = v32 - v142;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78);
  v145 = *(v144 - 8);
  v146 = v145;
  v147 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v144 - 8);
  v148 = v32 - v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80);
  v151 = *(*(v149 - 8) + 64);
  MEMORY[0x1EEE9AC00](v149 - 8);
  v153 = (v151 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = v32 - v153;
  v17 = MEMORY[0x1EEE9AC00](v32 - v153);
  v152 = v32 - v153;
  MEMORY[0x1EEE9AC00](v17);
  v154 = v32 - v153;
  v188 = v32 - v153;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF88);
  v156 = *(*(v155 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v155 - 8);
  v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  v157 = v32 - v158;
  MEMORY[0x1EEE9AC00](v18);
  v159 = v32 - v158;
  v187 = v32 - v158;
  if ([objc_opt_self() isSolariumEnabled])
  {
    sub_1C540D4D4(v68, &v162);
    v65 = v32;
    MEMORY[0x1EEE9AC00](v32);
    v63 = &v32[-4];
    v32[-2] = v19;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C020);
    sub_1C5415D48();
    sub_1C5596164();
    sub_1C540D6F0(v68);
    v20 = [objc_opt_self() systemGroupedBackgroundColor];
    v161 = sub_1C5595E44();
    sub_1C5415C9C();
    v66 = &v161;
    sub_1C5595BF4();
    sub_1C5410D10();
    (*(v146 + 8))(v148, v144);
    v67 = sub_1C5415BF4();
    sub_1C540EFD8(v152, v149, v154);
    sub_1C5417DE0(v152);
    v160 = v152;
    sub_1C5417E70(v154, v150);
    sub_1C540EFD8(v150, v149, v152);
    sub_1C5417DE0(v150);
    sub_1C5417E70(v152, v150);
    v21 = sub_1C5415DD0();
    sub_1C540FD1C(v150, v149, v79, v67, v21, v157);
    sub_1C5417DE0(v150);
    sub_1C541613C(v157, v159);
    sub_1C5417DE0(v152);
    sub_1C5417DE0(v154);
  }

  else
  {
    sub_1C540D4D4(v68, &v186);
    v57 = v32;
    MEMORY[0x1EEE9AC00](v32);
    v55 = &v32[-4];
    v32[-2] = v22;
    v56 = sub_1C54143D0();
    sub_1C5596164();
    sub_1C540D6F0(v68);
    v23 = [objc_opt_self() systemGroupedBackgroundColor];
    v185 = sub_1C5595E44();
    v58 = sub_1C541444C();
    v59 = &v185;
    sub_1C5595BF4();
    sub_1C5410D10();
    v60 = *(v132 + 8);
    v61 = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60(v134, v130);
    v62 = sub_1C54144F8();
    sub_1C540EFD8(v141, v135, v143);
    sub_1C5414628(v141);
    v210 = *(v68 + 88);
    if (v210 == 1)
    {
      sub_1C540D4D4(v68, &v174);
      v52 = v32;
      MEMORY[0x1EEE9AC00](v32);
      v50 = &v32[-4];
      v32[-2] = v24;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048);
      sub_1C54172B4();
      sub_1C5596164();
      sub_1C540D6F0(v68);
      v25 = [objc_opt_self() systemGroupedBackgroundColor];
      v173 = sub_1C5595E44();
      sub_1C541733C();
      v53 = &v173;
      sub_1C5595BF4();
      sub_1C5410D10();
      (*(v116 + 8))(v118, v114);
      v54 = sub_1C54173E8();
      sub_1C540EFD8(v121, v119, v123);
      sub_1C5417490(v121);
      *(v69 + 29) = *(v68 + 104);
      sub_1C5402BDC(v209, &v172);
      *(v69 + 31) = *(v69 + 29);
      if (v212)
      {
        v48 = v211;
        v49 = v212;
        v166 = v211;
        v167 = v212;
        v165 = v141;
        sub_1C5594CF4();
        v46 = v32;
        MEMORY[0x1EEE9AC00](v32);
        v32[-2] = v48;
        v32[-1] = v26;
        sub_1C5596164();

        v27 = [objc_opt_self() systemGroupedBackgroundColor];
        v164 = sub_1C5595E44();
        v47 = &v164;
        sub_1C5595BF4();
        sub_1C5410D10();
        v60(v134, v130);
        sub_1C540EFD8(v139, v135, v141);
        sub_1C5414628(v139);
        v163 = v139;
        sub_1C5415064(v141, v138);
        sub_1C540EFD8(v138, v135, v139);
        sub_1C5414628(v138);
        sub_1C5415064(v139, v109);
        (*(v137 + 56))(v109, 0, 1, v135);
        sub_1C540F554(v109, v135, v111);
        sub_1C5417520(v109);
        sub_1C54175F4(v111, v113);
        sub_1C5414628(v139);
        sub_1C5414628(v141);
      }

      else
      {
        (*(v137 + 56))(v109, 1, 1, v135);
        sub_1C540F554(v109, v135, v111);
        sub_1C5417520(v109);
        sub_1C54175F4(v111, v113);
      }

      sub_1C5417750(v123, v121);
      v171[0] = v121;
      sub_1C5417800(v113, v111);
      v171[1] = v111;
      v170[0] = v119;
      v170[1] = v108;
      v168 = v54;
      v169 = sub_1C5417974();
      sub_1C540F5A0(v171, 2uLL, v170, v107);
      sub_1C5417520(v111);
      sub_1C5417490(v121);
      sub_1C5417A0C(v107, v125);
      (*(v105 + 56))(v125, 0, 1, v103);
      sub_1C54146B8();
      sub_1C540F554(v125, v103, v127);
      sub_1C5414740(v125);
      sub_1C54148F4(v127, v129);
      sub_1C5417C5C(v107);
      sub_1C5417520(v113);
      sub_1C5417490(v123);
    }

    else
    {
      (*(v105 + 56))(v125, 1, 1, v103);
      sub_1C54146B8();
      sub_1C540F554(v125, v103, v127);
      sub_1C5414740(v125);
      sub_1C54148F4(v127, v129);
    }

    *(v69 + 28) = v68[2];
    v42 = v208;
    sub_1C5409B98(v208, &v184);
    *v69 = *(v69 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50);
    sub_1C5595F84();
    v44 = v182[4];
    sub_1C5409BF0();
    v182[3] = v44;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD48);
    sub_1C5414BD0();
    v45 = sub_1C55968F4();

    if (v45)
    {
      (*(v91 + 56))(v98, 1, 1, v89);
      sub_1C5414C58();
      sub_1C540F554(v98, v89, v100);
      sub_1C5414E34(v98);
      sub_1C5414F08(v100, v102);
    }

    else
    {
      sub_1C540D4D4(v68, v177);
      v39 = v32;
      MEMORY[0x1EEE9AC00](v32);
      v37 = &v32[-4];
      v32[-2] = v28;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8);
      sub_1C5414DAC();
      sub_1C5596164();
      sub_1C540D6F0(v68);
      v29 = [objc_opt_self() systemGroupedBackgroundColor];
      v176 = sub_1C5595E44();
      sub_1C5414D00();
      v40 = &v176;
      sub_1C5595BF4();
      sub_1C5410D10();
      (*(v86 + 8))(v88, v84);
      v41 = sub_1C5414C58();
      sub_1C540EFD8(v94, v89, v96);
      sub_1C541716C(v94);
      v175 = v94;
      sub_1C54171FC(v96, v92);
      sub_1C540EFD8(v92, v89, v94);
      sub_1C541716C(v92);
      sub_1C54171FC(v94, v98);
      (*(v91 + 56))(v98, 0, 1, v89);
      sub_1C540F554(v98, v89, v100);
      sub_1C5414E34(v98);
      sub_1C5414F08(v100, v102);
      sub_1C541716C(v94);
      sub_1C541716C(v96);
    }

    sub_1C5415064(v143, v141);
    v182[0] = v141;
    sub_1C5415114(v129, v127);
    v182[1] = v127;
    sub_1C541541C(v102, v100);
    v182[2] = v100;
    v181[0] = v135;
    v181[1] = v124;
    v181[2] = v97;
    v180[20] = v62;
    v180[21] = sub_1C5415590();
    v180[22] = sub_1C5415628();
    sub_1C540F5A0(v182, 3uLL, v181, v83);
    sub_1C5414E34(v100);
    sub_1C5414740(v127);
    sub_1C5414628(v141);
    sub_1C54156C0(v83, v81);
    v36 = sub_1C5415BF4();
    v30 = sub_1C5415DD0();
    sub_1C54108A0(v81, v149, v79, v36, v30, v157);
    sub_1C5415E58(v81);
    sub_1C541613C(v157, v159);
    sub_1C5415E58(v83);
    sub_1C5414E34(v102);
    sub_1C5414740(v129);
    sub_1C5414628(v143);
  }

  sub_1C540D4D4(v68, v180);
  v32[1] = v32;
  MEMORY[0x1EEE9AC00](v32);
  v32[-2] = v68;
  sub_1C5596164();
  sub_1C540D6F0(v68);
  v33 = sub_1C54166BC();
  sub_1C540EFD8(v76, v72, v78);
  v35 = *(v74 + 8);
  v34 = v74 + 8;
  v35(v76, v72);
  sub_1C5416764(v159, v157);
  v179[0] = v157;
  (*(v74 + 16))(v76, v78, v72);
  v179[1] = v76;
  v178[0] = v155;
  v178[1] = v72;
  v177[20] = sub_1C5416D4C();
  v177[21] = v33;
  sub_1C540F5A0(v179, 2uLL, v178, v70);
  v35(v76, v72);
  sub_1C5416DF4(v157);
  v35(v78, v72);
  return sub_1C5416DF4(v159);
}

uint64_t sub_1C540D4D4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);

  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);

  *(a2 + 24) = v4;
  v5 = *(a1 + 32);
  sub_1C5594CF4();
  *(a2 + 32) = v5;
  v6 = *(a1 + 40);

  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);

  *(a2 + 72) = v7;
  v8 = *(a1 + 80);
  MEMORY[0x1E69E5928](v8);
  *(a2 + 80) = v8;
  *(a2 + 88) = *(a1 + 88);
  v9 = *(a1 + 96);
  swift_unknownObjectRetain();
  *(a2 + 96) = v9;
  *(a2 + 104) = *(a1 + 104);
  v10 = *(a1 + 112);
  sub_1C5594CF4();
  *(a2 + 112) = v10;
  *(a2 + 120) = *(a1 + 120);
  v11 = *(a1 + 128);
  sub_1C5594CF4();
  *(a2 + 128) = v11;
  *(a2 + 136) = *(a1 + 136);
  v13 = *(a1 + 144);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 144) = v13;
  *(a2 + 152) = *(a1 + 152);
  return result;
}

unint64_t sub_1C540D668()
{
  v2 = qword_1EC15BDE8;
  if (!qword_1EC15BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BDE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C540D6F0(uint64_t a1)
{

  MEMORY[0x1E69E5920](*(a1 + 80));
  swift_unknownObjectRelease();

  return a1;
}

unint64_t sub_1C540D790()
{
  v2 = qword_1EC15BDF0;
  if (!qword_1EC15BDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BDF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540D818()
{
  v2 = qword_1EC15BDF8;
  if (!qword_1EC15BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD88);
    sub_1C540D8C0();
    sub_1C540D9F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BDF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540D8C0()
{
  v2 = qword_1EC15BE00;
  if (!qword_1EC15BE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE08);
    sub_1C540D790();
    sub_1C540D968();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540D968()
{
  v2 = qword_1EC15BE10;
  if (!qword_1EC15BE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C540D9F0()
{
  v2 = qword_1EC15BE20;
  if (!qword_1EC15BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C540DA78(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD80);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BE08) + 36);
  v7 = sub_1C5595374();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!(v9)(a1 + v5, 1))
  {
    (*(v8 + 8))(a1 + v5, v7);
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD88) + 36);

  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BE28) + 28);
  if (!v9())
  {
    (*(v8 + 8))(v4, v7);
  }

  return a1;
}

uint64_t *sub_1C540DC40@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = &v177;
  v164 = a1;
  v126 = a2;
  v127 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  memset(v217, 0, sizeof(v217));
  v207 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0u;
  v181 = 0u;
  v179 = 0;
  v178 = 0u;
  v177 = 0u;
  v2 = *a1;
  v227 = a1[1];
  v226 = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v231 = a1[5];
  v230 = v5;
  v229 = v4;
  v228 = v3;
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v235 = a1[9];
  v234 = v8;
  v233 = v7;
  v232 = v6;
  v244 = v227;
  v243 = v226;
  v248 = v231;
  v247 = v230;
  v246 = v229;
  v245 = v228;
  v252 = v235;
  v251 = v8;
  v250 = v7;
  v249 = v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8);
  v129 = *(v128 - 8);
  v130 = v129;
  v132 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v128 - 8);
  v134 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  v131 = &v37 - v134;
  v9 = MEMORY[0x1EEE9AC00](&v37 - v134);
  v133 = &v37 - v134;
  MEMORY[0x1EEE9AC00](v9);
  v135 = &v37 - v134;
  v222 = &v37 - v134;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C070);
  v138 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136 - 8);
  v140 = (v138 + 15) & 0xFFFFFFFFFFFFFFF0;
  v137 = &v37 - v140;
  v10 = MEMORY[0x1EEE9AC00](&v37 - v140);
  v139 = &v37 - v140;
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v37 - v140;
  v221 = &v37 - v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C078);
  v143 = *(v142 - 8);
  v144 = v143;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v142 - 8);
  v146 = &v37 - v145;
  v220 = &v37 - v145;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048);
  v148 = *(v147 - 8);
  v149 = v148;
  v150 = *(v148 + 64);
  v11 = MEMORY[0x1EEE9AC00](v147 - 8);
  v152 = (v150 + 15) & 0xFFFFFFFFFFFFFFF0;
  v151 = &v37 - v152;
  MEMORY[0x1EEE9AC00](v11);
  v153 = &v37 - v152;
  v219 = &v37 - v152;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C080);
  v156 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154 - 8);
  v158 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = &v37 - v158;
  v12 = MEMORY[0x1EEE9AC00](&v37 - v158);
  v157 = &v37 - v158;
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v37 - v158;
  v218 = &v37 - v158;
  v160 = sub_1C540EE98();
  sub_1C55965F4();
  v161 = v13;
  v162 = sub_1C54637B4();
  v163 = v14;

  v166 = *(v164 + 10);
  v165 = v166;
  v15 = v166;
  v167 = [v166 aa_fullName];
  if (v167)
  {
    v124 = v167;
    v119 = v167;
    v120 = sub_1C5596574();
    v121 = v16;

    v122 = v120;
    v123 = v121;
  }

  else
  {
    v122 = 0;
    v123 = 0;
  }

  v118 = v123;
  v117 = v122;

  if (v118)
  {
    v115 = v117;
    v116 = v118;
  }

  else
  {
    LODWORD(v36) = 0;
    v35 = 44;
    LOBYTE(v34) = 2;
    sub_1C5596C94();
    __break(1u);
  }

  sub_1C540EFC0(v160, v162, v163, v115, v116, v223);
  v17 = v125;
  v18 = v125[69];
  v19 = v125[70];
  v216[4] = v223[4];
  v125[62] = v19;
  v17[61] = v18;
  v113 = sub_1C54143D0();
  v114 = v216;
  sub_1C540EFD8(v216, &unk_1F4476CD8, v217);
  sub_1C5412D34();
  v240 = *(v164 + 88);
  if (v240 == 1)
  {
    v125[87] = *v164;
    v106 = v239;
    sub_1C5409664(v239, &v206);
    v125[25] = v125[87];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
    sub_1C5595FA4();
    v109 = v203;
    v107 = v204;
    v108 = v205;
    sub_1C5373718();
    v36 = MEMORY[0x1E6981138];
    v35 = v113;
    v34 = MEMORY[0x1E6981148];
    sub_1C55951F4();
    v110 = sub_1C54172B4();
    sub_1C540EFD8(v151, v147, v153);
    v111 = *(v149 + 8);
    v112 = (v149 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v111(v151, v147);
    v125[86] = *(v164 + 104);
    sub_1C5402BDC(&v238, &v197);
    v125[89] = v125[86];
    if (v242)
    {
      v65 = v241;
      v85 = v242;
      v184 = v241;
      v185 = v242;
      sub_1C5418C84();
      v62 = 1;
      sub_1C55965F4();
      sub_1C540F4E0();
      v64 = sub_1C5595ED4();
      sub_1C5594CF4();
      sub_1C55965F4();
      v63 = v20;
      v66 = sub_1C54637B4();
      v67 = v21;

      sub_1C540EFC0(v64, v65, v85, v66, v67, v224);
      v22 = v125;
      v23 = v224[0];
      v180[4] = v225;
      v125[4] = v224[1];
      v22[3] = v23;
      v76 = &unk_1F4476CD8;
      v84 = &v181;
      v68 = v180;
      sub_1C540EFD8(v180, &unk_1F4476CD8, &v181);
      sub_1C5412D34();
      v69 = v181;
      v70 = v182;
      v71 = v183;

      sub_1C5594CF4();
      sub_1C5594CF4();
      v175[0] = v69;
      v175[1] = v70;
      v176 = v71;
      v83 = &v177;
      v72 = v175;
      sub_1C540EFD8(v175, v76, &v177);
      sub_1C5412D34();
      v73 = v177;
      v74 = v178;
      v75 = v179;

      sub_1C5594CF4();
      sub_1C5594CF4();
      v168[0] = v73;
      v168[1] = v74;
      v169 = v75;
      v77 = v168;
      sub_1C540F554(v168, v76, &v170);
      sub_1C5418A08(v77);
      v78 = v170;
      v86 = v170;
      v79 = v171;
      v87 = v171;
      v80 = v172;
      v88 = v172;
      v81 = v173;
      v89 = v173;
      v82 = v174;
      v90 = v174;
      sub_1C541891C(v170, v171, v172);
      v198 = v78;
      v199 = v79;
      v200 = v80;
      v201 = v81;
      v202 = v82;
      sub_1C5412D34();
      sub_1C5412D34();

      v101 = v86;
      v102 = v87;
      v103 = v88;
      v104 = v89;
      v105 = v90;
    }

    else
    {
      memset(v191, 0, sizeof(v191));
      sub_1C540F554(v191, &unk_1F4476CD8, &v192);
      v91 = v192;
      v96 = v192;
      v92 = v193;
      v97 = v193;
      v93 = v194;
      v98 = v194;
      v94 = v195;
      v99 = v195;
      v95 = v196;
      v100 = v196;
      sub_1C541891C(v192, v193, v194);
      v198 = v91;
      v199 = v92;
      v200 = v93;
      v201 = v94;
      v202 = v95;
      v101 = v96;
      v102 = v97;
      v103 = v98;
      v104 = v99;
      v105 = v100;
    }

    v60 = v105;
    v59 = v104;
    v58 = v103;
    v57 = v102;
    v56 = v101;
    (*(v149 + 16))(v151, v153, v147);
    v190[0] = v151;
    v189[0] = v56;
    v189[1] = v57;
    v189[2] = v58;
    v189[3] = v59;
    v189[4] = v60;
    v61 = v189;
    v190[1] = v189;
    v188[0] = v147;
    v188[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0B0);
    v186 = v110;
    v187 = sub_1C5418970();
    sub_1C540F5A0(v190, 2uLL, v188, v146);
    sub_1C5418A08(v61);
    v111(v151, v147);
    sub_1C5418A60(v146, v155);
    (*(v144 + 56))(v155, 0, 1, v142);
    sub_1C5417F20();
    sub_1C540F554(v155, v142, v157);
    sub_1C5417FA8(v155);
    sub_1C54180BC(v157, v159);
    sub_1C5418BB4(v146);
    sub_1C5418A08(&v198);
    v111(v153, v147);
  }

  else
  {
    (*(v144 + 56))(v155, 1, 1, v142);
    sub_1C5417F20();
    sub_1C540F554(v155, v142, v157);
    sub_1C5417FA8(v155);
    sub_1C54180BC(v157, v159);
  }

  v125[85] = v164[2];
  v52 = v237;
  sub_1C5409B98(v237, &v215);
  v125[59] = v125[85];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50);
  sub_1C5595F84();
  v54 = v214[4];
  sub_1C5409BF0();
  v214[3] = v54;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD48);
  sub_1C5414BD0();
  v55 = sub_1C55968F4();

  if (v55)
  {
    (*(v130 + 56))(v137, 1, 1, v128);
    sub_1C5414DAC();
    sub_1C540F554(v137, v128, v139);
    sub_1C5418240(v137);
    sub_1C54182F4(v139, v141);
  }

  else
  {
    v125[84] = v164[1];
    v42 = v236;
    sub_1C5409664(v236, v211);
    v125[49] = v125[84];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
    sub_1C5595FA4();
    v47 = v209[20];
    v43 = v209[21];
    v44 = v210;
    sub_1C5373718();
    sub_1C540D4D4(v164, v209);
    v24 = swift_allocObject();
    v25 = v164;
    v45 = v24;
    v26 = *v164;
    v24[2] = v164[1];
    v24[1] = v26;
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v24[6] = v25[5];
    v24[5] = v29;
    v24[4] = v28;
    v24[3] = v27;
    v30 = v25[6];
    v31 = v25[7];
    v32 = v25[8];
    v24[10] = v25[9];
    v24[9] = v32;
    v24[8] = v31;
    v24[7] = v30;
    sub_1C540D4D4(v25, &v208);
    v48 = &v37;
    MEMORY[0x1EEE9AC00](&v37);
    v46 = &v34;
    v36 = sub_1C54188A4();
    v35 = v113;
    v34 = &unk_1F447E790;
    sub_1C55951F4();
    sub_1C540D6F0(v164);
    v49 = sub_1C5414DAC();
    sub_1C540EFD8(v133, v128, v135);
    v50 = *(v130 + 8);
    v51 = (v130 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v133, v128);
    v207 = v133;
    v41 = *(v130 + 16);
    v40 = v130 + 16;
    v41(v131, v135, v128);
    sub_1C540EFD8(v131, v128, v133);
    v50(v131, v128);
    v41(v137, v133, v128);
    (*(v130 + 56))(v137, 0, 1, v128);
    sub_1C540F554(v137, v128, v139);
    sub_1C5418240(v137);
    sub_1C54182F4(v139, v141);
    v50(v133, v128);
    v50(v135, v128);
  }

  v39 = v217;
  v38 = v213;
  sub_1C5412728(v217, v213);
  v214[0] = v38;
  sub_1C5418428(v159, v157);
  v214[1] = v157;
  sub_1C5418630(v141, v139);
  v214[2] = v139;
  v212[0] = &unk_1F4476CD8;
  v212[1] = v154;
  v212[2] = v136;
  v211[2] = v113;
  v211[3] = sub_1C5418764();
  v211[4] = sub_1C54187FC();
  sub_1C540F5A0(v214, 3uLL, v212, v126);
  sub_1C5418240(v139);
  sub_1C5417FA8(v157);
  sub_1C5412D34();
  sub_1C5418240(v141);
  sub_1C5417FA8(v159);
  result = v39;
  sub_1C5412D34();
  return result;
}

uint64_t sub_1C540EE98()
{
  sub_1C54118E0();
  v5 = sub_1C5404B48();
  MEMORY[0x1E69E5928](v5);
  if (v5)
  {
    v3 = [v5 profilePictureForAccountOwner];
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v1 = sub_1C5595ED4();
    MEMORY[0x1E69E5920](v5);
    return v1;
  }

  else
  {
    MEMORY[0x1E69E5920](v5);
    return 0;
  }
}

uint64_t sub_1C540EFC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1C540F03C@<X0>(uint64_t a1@<X8>)
{
  v42 = 0u;
  v43 = 0u;
  sub_1C55965F4();
  v9 = sub_1C54637B4();
  v10 = v1;

  v40 = v9;
  v41 = v10;
  sub_1C54141E8();
  v36 = sub_1C5595A04();
  v37 = v2;
  v38 = v3;
  v39 = v4;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  sub_1C5595824();
  v32 = v36;
  v33 = v11;
  v34 = v12 & 1;
  v35 = v13;
  v28 = sub_1C55959C4();
  v29 = v5;
  v30 = v6;
  v31 = v7;
  v14 = v5;
  v15 = v6;
  v16 = v7;

  sub_1C5412EA0(v36, v11, v12 & 1);

  v25[0] = v28;
  v25[1] = v14;
  v26 = v15 & 1;
  v27 = v16;
  v21 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v25, MEMORY[0x1E6981148], &v42);
  sub_1C5414260(v25);
  v17 = v42;
  v18 = v43;
  v19 = *(&v43 + 1);
  sub_1C54130AC(v42, *(&v42 + 1), v43 & 1);
  sub_1C5594CF4();
  v22 = v17;
  v23 = v18 & 1;
  v24 = v19;
  sub_1C540EFD8(&v22, v21, a1);
  sub_1C5414260(&v22);
  return sub_1C5414260(&v42);
}

void *sub_1C540F290@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  sub_1C5418C84();
  sub_1C55965F4();
  sub_1C540F46C();
  v4 = sub_1C5595ED4();
  sub_1C55965F4();
  v5 = sub_1C54637B4();
  v6 = v1;

  sub_1C55965F4();
  v7 = sub_1C54637B4();
  v8 = v2;

  sub_1C540EFC0(v4, v5, v6, v7, v8, v18);
  memcpy(__dst, v18, sizeof(__dst));
  sub_1C54143D0();
  sub_1C540EFD8(__dst, &unk_1F4476CD8, __b);
  sub_1C5412D34();
  v9 = __b[0];
  v10 = __b[1];
  v11 = __b[2];
  v12 = __b[3];
  v13 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  sub_1C540EFD8(v15, &unk_1F4476CD8, a1);
  sub_1C5412D34();
  result = __b;
  sub_1C5412D34();
  return result;
}

id sub_1C540F46C()
{
  v1 = sub_1C5596554();
  v2 = [swift_getObjCClassFromMetadata() imageForDataclassWithBundleID_];
  MEMORY[0x1E69E5920](v1);

  return v2;
}

id sub_1C540F4E0()
{
  v1 = sub_1C5596554();
  v2 = [swift_getObjCClassFromMetadata() imageForTableUIWithType_];
  MEMORY[0x1E69E5920](v1);

  return v2;
}

uint64_t *sub_1C540F5A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    MEMORY[0x1EEE9AC00](&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  MEMORY[0x1EEE9AC00](&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_1C5596274();
  return v15;
}

void *sub_1C540F7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[0] = 0;
  v9[1] = a1;
  v10 = *(a1 + 32);
  sub_1C5409B98(&v10, &v8);
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50);
  sub_1C5595F84();
  sub_1C5409BF0();
  v6[0] = nullsub_1(v6[1]);
  sub_1C54188A4();
  sub_1C540EFD8(v6, &unk_1F447E790, v9);
  sub_1C541439C();
  v3 = v9[0];
  sub_1C5594CF4();
  v5 = v3;
  sub_1C540EFD8(&v5, &unk_1F447E790, a2);
  sub_1C541439C();
  result = v9;
  sub_1C541439C();
  return result;
}

void *sub_1C540F908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x28uLL);
  __b[5] = a1;
  sub_1C5418C84();
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v20);
  v25[3] = v21;
  v25[2] = 1;
  type metadata accessor for UIUserInterfaceIdiom();
  sub_1C5418D80();
  sub_1C5596E24();
  sub_1C55965F4();
  sub_1C540F46C();
  v8 = sub_1C5595ED4();
  sub_1C55965F4();
  v9 = sub_1C54637B4();
  v10 = v2;

  sub_1C55965F4();
  sub_1C54637B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0D0);
  sub_1C5596E04();
  v7 = v3;
  v28 = *(a1 + 32);
  sub_1C5409B98(&v28, v25);
  v24 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50);
  sub_1C5595F84();
  sub_1C5409BF0();
  type metadata accessor for AAUIWalletCardListItem();
  v4 = sub_1C5596744();
  v7[3] = MEMORY[0x1E69E6530];
  v7[4] = MEMORY[0x1E69E65A8];
  *v7 = v4;

  sub_1C540FCD8();
  v11 = sub_1C5596584();
  v12 = v5;

  sub_1C540EFC0(v8, v9, v10, v11, v12, v27);
  memcpy(__dst, v27, sizeof(__dst));
  sub_1C54143D0();
  sub_1C540EFD8(__dst, &unk_1F4476CD8, __b);
  sub_1C5412D34();
  v13 = __b[0];
  v14 = __b[1];
  v15 = __b[2];
  v16 = __b[3];
  v17 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  sub_1C540EFD8(v22, &unk_1F4476CD8, a2);
  sub_1C5412D34();
  result = __b;
  sub_1C5412D34();
  return result;
}

uint64_t sub_1C540FD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_1C55954B4();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_1C55954C4();
}

void *sub_1C540FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x28uLL);
  __b[5] = a1;
  v18 = sub_1C540EE98();
  sub_1C55965F4();
  v19 = sub_1C54637B4();
  v20 = v3;

  v22 = *(a1 + 80);
  MEMORY[0x1E69E5928](v22);
  v23 = [v22 aa_fullName];
  if (v23)
  {
    v13 = sub_1C5596574();
    v14 = v4;
    MEMORY[0x1E69E5920](v23);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  MEMORY[0x1E69E5920](v22);
  if (v16)
  {
    v11 = v15;
    v12 = v16;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  sub_1C540EFC0(v18, v19, v20, v11, v12, v27);
  memcpy(__dst, v27, sizeof(__dst));
  sub_1C54143D0();
  sub_1C540EFD8(__dst, &unk_1F4476CD8, __b);
  sub_1C5412D34();
  v6 = __b[0];
  v7 = __b[1];
  v8 = __b[2];
  v9 = __b[3];
  v10 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v24[0] = v6;
  v24[1] = v7;
  v24[2] = v8;
  v24[3] = v9;
  v24[4] = v10;
  sub_1C540EFD8(v24, &unk_1F4476CD8, a2);
  sub_1C5412D34();
  result = __b;
  sub_1C5412D34();
  return result;
}

uint64_t sub_1C54100E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v7 = a1;
  v15 = 0;
  v13 = sub_1C540F03C;
  v14 = sub_1C540F290;
  v32 = 0;
  v31 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048);
  v17 = *(v23 - 8);
  v18 = v23 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v21 = &v7 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v22 = &v7 - v9;
  v32 = &v7 - v9;
  v31 = v4;
  v5 = *v4;
  v10 = &v33;
  v33 = v5;
  sub_1C5409664(&v33, v30);
  v29 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  v16 = v26;
  v11 = v27;
  v12 = v28;
  sub_1C5373718();
  sub_1C54143D0();
  sub_1C55951F4();
  v20 = sub_1C54172B4();
  sub_1C540EFD8(v21, v23, v22);
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v25(v21, v23);
  (*(v17 + 16))(v21, v22, v23);
  sub_1C540EFD8(v21, v23, v19);
  v25(v21, v23);
  return (v25)(v22, v23);
}

void *sub_1C5410394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0x28uLL);
  __b[5] = a1;
  __b[6] = a2;
  sub_1C5418C84();
  sub_1C55965F4();
  sub_1C540F4E0();
  v5 = sub_1C5595ED4();
  sub_1C5594CF4();
  sub_1C55965F4();
  v8 = sub_1C54637B4();
  v9 = v3;

  sub_1C540EFC0(v5, a1, a2, v8, v9, v19);
  memcpy(__dst, v19, sizeof(__dst));
  sub_1C54143D0();
  sub_1C540EFD8(__dst, &unk_1F4476CD8, __b);
  sub_1C5412D34();
  v10 = __b[0];
  v11 = __b[1];
  v12 = __b[2];
  v13 = __b[3];
  v14 = __b[4];

  sub_1C5594CF4();
  sub_1C5594CF4();
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = v14;
  sub_1C540EFD8(v16, &unk_1F4476CD8, a3);
  sub_1C5412D34();
  result = __b;
  sub_1C5412D34();
  return result;
}

uint64_t sub_1C5410564@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v21 = __src;
  v16 = sub_1C5418894;
  v18 = sub_1C541889C;
  v37 = 0;
  __srca = v38;
  __n = 160;
  memcpy(v38, __src, sizeof(v38));
  memcpy(__dst, v38, sizeof(__dst));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8);
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v7 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v27 = &v7 - v10;
  v37 = &v7 - v10;
  v5 = *(v4 + 16);
  v11 = &v39;
  v39 = v5;
  sub_1C5409664(&v39, &v36);
  v35 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();
  v20 = v33[20];
  v14 = v33[21];
  v15 = v34;
  sub_1C5373718();
  sub_1C540D4D4(v21, v33);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v21, __n);
  sub_1C540D4D4(v21, &v32);
  v19 = v31;
  v31[2] = v21;
  v13 = sub_1C54143D0();
  sub_1C54188A4();
  sub_1C55951F4();
  sub_1C540D6F0(v21);
  v25 = sub_1C5414DAC();
  sub_1C540EFD8(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_1C540EFD8(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}

uint64_t sub_1C54108A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_1C55954B4();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_1C55954C4();
}

uint64_t sub_1C5410998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = &v69;
  v37 = a2;
  v71 = 0;
  v41 = &v69;
  v69 = 0u;
  v70 = 0u;
  v3 = sub_1C5594794();
  v16 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v15 - v16;
  v71 = a1;
  sub_1C540A500(&v15 - v16);
  v65 = sub_1C55959F4();
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v19 = v65;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v18 = sub_1C5595914();
  v61 = v19;
  v62 = v20;
  v35 = 1;
  v63 = v21 & 1;
  v64 = v22;
  v57 = sub_1C55959C4();
  v58 = v7;
  v59 = v8;
  v60 = v9;
  v26 = v57;
  v24 = v7;
  v25 = v8;
  v27 = v9;

  sub_1C5412EA0(v19, v20, v21 & 1);

  v10 = sub_1C5410CD0();
  v23 = &v56;
  v56 = v10;
  v52 = v26;
  v53 = v24;
  v54 = v25 & 1 & v35;
  v55 = v27;
  v48 = sub_1C5595994();
  v49 = v11;
  v50 = v12;
  v51 = v13;
  v28 = v48;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  sub_1C5410D10();
  sub_1C5412EA0(v26, v24, v25 & 1);

  v32 = v45;
  v45[0] = v28;
  v45[1] = v29;
  v46 = v30 & 1 & v35;
  v47 = v31;
  v38 = MEMORY[0x1E6981148];
  v39 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v45, MEMORY[0x1E6981148], v41);
  sub_1C5414260(v32);
  v33 = v69;
  v34 = v70;
  v36 = *(&v70 + 1);
  sub_1C54130AC(v69, *(&v69 + 1), v70 & 1);
  sub_1C5594CF4();
  v40 = &v42;
  v42 = v33;
  v43 = v34 & 1 & v35;
  v44 = v36;
  sub_1C540EFD8(&v42, v38, v37);
  sub_1C5414260(v40);
  return sub_1C5414260(v41);
}

unint64_t sub_1C5410D3C()
{
  v2 = qword_1EC15BE30;
  if (!qword_1EC15BE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD98);
    sub_1C5595584();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD88);
    sub_1C540D818();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5410EE0()
{
  v2 = qword_1EC159FF8;
  if (!qword_1EC159FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5410F8C()
{
  v2 = qword_1EC15BE48;
  if (!qword_1EC15BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDA8);
    sub_1C5410D3C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54110A4()
{
  v2 = qword_1EC15BE50;
  if (!qword_1EC15BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDC0);
    sub_1C5410F8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C541116C(void *a1)
{
  v14 = a1;
  v5 = a1[12];
  swift_unknownObjectRetain();
  swift_getObjectType();
  sub_1C540D4D4(a1, v13);
  v3 = swift_allocObject();
  memcpy((v3 + 16), a1, 0xA0uLL);
  v11 = sub_1C5414330;
  v12 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = 0;
  v9 = sub_1C541153C;
  v10 = &block_descriptor_0;
  v4 = _Block_copy(&aBlock);

  [v5 fetchWalletCardsWithCompletion_];
  _Block_release(v4);
  return swift_unknownObjectRelease();
}

unint64_t sub_1C54112A4()
{
  v2 = qword_1EC15BE58;
  if (!qword_1EC15BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDC8);
    sub_1C54110A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5411348(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for CGSize()
{
  v4 = qword_1EC15BE98;
  if (!qword_1EC15BE98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15BE98);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C5411414(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  sub_1C5594CF4();
  v7 = a1;
  if (a1)
  {
    v8 = v7;
  }

  else
  {
    type metadata accessor for AAUIWalletCardListItem();
    v8 = sub_1C5596E04();
  }

  v11 = *(a2 + 32);
  sub_1C5409B98(&v11, &v6);
  sub_1C5409B98(&v11, &v5);
  sub_1C5594CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD50);
  sub_1C5595F94();
  sub_1C5409BF0();
  sub_1C5409BF0();
}

uint64_t sub_1C541153C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    type metadata accessor for AAUIWalletCardListItem();
    sub_1C5596714();
    MEMORY[0x1E69E5920](a2);
  }

  v3();
}

uint64_t sub_1C5411614@<X0>(void *a1@<X8>)
{
  result = sub_1C55951C4();
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t *sub_1C541165C(uint64_t *result, double *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0;
  v3 = result[1];
  v11 = *result;
  v12 = v3;
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  v8 = a3;
  if (v9 != 0.0 || v5 != 0.0)
  {
    v13[0] = *(a3 + 48);
    v13[1] = *(a3 + 64);
    sub_1C5409F74(v13, v7);
    sub_1C5409F74(v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD60);
    sub_1C5595F94();
    sub_1C5409FBC();
    result = v13;
    sub_1C5409FBC();
  }

  return result;
}

unint64_t sub_1C54117BC()
{
  v2 = qword_1EC15BE60;
  if (!qword_1EC15BE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDD0);
    sub_1C54112A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5411860()
{
  v2 = qword_1EC15BE68;
  if (!qword_1EC15BE68)
  {
    type metadata accessor for CGSize();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54118E0()
{
  v2 = qword_1EC15BE70;
  if (!qword_1EC15BE70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15BE70);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1C541195C()
{
  if ([objc_opt_self() isSolariumEnabled])
  {
    return 0.0;
  }

  else
  {
    return 15.0;
  }
}

void *sub_1C54119C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v34 = a1;
  v33 = a2 & 1;
  v32 = a3;
  v30 = a4;
  v31 = a5;
  LOBYTE(__b[0]) = sub_1C5409594() & 1;
  __b[1] = v6;
  LOBYTE(__b[2]) = sub_1C5409594() & 1;
  __b[3] = v7;
  type metadata accessor for AAUIWalletCardListItem();
  sub_1C5596E04();
  __b[4] = sub_1C5409A9C();
  __b[5] = v8;
  v26 = sub_1C5409E40();
  v27 = v9;
  v28 = v10;
  v29 = v11;
  __b[6] = v26;
  __b[7] = v9;
  LOBYTE(__b[8]) = v10 & 1;
  __b[9] = v11;
  sub_1C55965F4();
  v15 = sub_1C54637B4();
  v16 = v12;

  __b[15] = v15;
  __b[16] = v16;
  sub_1C55965F4();
  v17 = sub_1C54637B4();
  v18 = v13;

  __b[17] = v17;
  __b[18] = v18;
  __b[19] = sub_1C541195C();
  MEMORY[0x1E69E5928](a1);
  __b[10] = a1;
  LOBYTE(__b[11]) = a2;
  swift_unknownObjectRetain();
  __b[12] = a3;
  sub_1C5594CF4();
  __b[13] = a4;
  __b[14] = a5;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1C540D4D4(__dst, v25);

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  sub_1C540D6F0(__b);
  return memcpy(a6, __dst, 0xA0uLL);
}

uint64_t sub_1C5411CE0()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1C5411D0C(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_1C5411D68()
{
  v2 = *(v0 + 8);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5411DA0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_1C5411E0C()
{
  v2 = *(v0 + 24);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5411E44(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1C5411EB0@<X0>(uint64_t a1@<X8>)
{
  memset(&v10[25], 0, 0x28uLL);
  memset(v10, 0, 0xC8uLL);
  memcpy(__dst, v1, sizeof(__dst));
  v10[25] = __dst[0];
  v10[26] = __dst[1];
  v10[27] = __dst[2];
  v10[28] = __dst[3];
  v10[29] = __dst[4];
  sub_1C5412728(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BE78);
  sub_1C5412CAC();
  sub_1C5412C88();
  sub_1C5596024();
  sub_1C5412D34();
  memcpy(v12, v9, sizeof(v12));
  memcpy(v7, v12, sizeof(v7));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BE88);
  sub_1C5412D78();
  sub_1C540EFD8(v7, v4, v10);
  sub_1C5412E00(v7);
  memcpy(v13, v10, sizeof(v13));
  sub_1C5412EE4(v13, v6);
  memcpy(v5, v13, sizeof(v5));
  sub_1C540EFD8(v5, v4, a1);
  sub_1C5412E00(v5);
  return sub_1C5412E00(v10);
}

void *sub_1C541208C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = &v87;
  v48 = a1;
  v45 = a2;
  v123 = 0;
  v122 = 0u;
  v121 = 0u;
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  v2 = *a1;
  v3 = *(a1 + 1);
  v126 = a1[4];
  v125 = v3;
  v124 = v2;
  v52 = *(&v2 + 1);
  v46 = v2;
  v53 = v3;
  v47 = v126;
  v49 = sub_1C5595F04();
  v50 = *(v49 - 8);
  v51 = v50;
  v4 = MEMORY[0x1EEE9AC00](v48);
  v54 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v121 = v6;
  *(&v121 + 1) = v52;
  v122 = v53;
  v123 = v7;
  v127 = *v4;
  sub_1C5413AF4(&v127, v110);
  v128 = v127;
  if (v127)
  {
    v34 = v128;
    v30 = sub_1C54127B4();
    v31 = v8;
    v32 = v9;
    v33 = v10;
    sub_1C54127C8(v54);
    v35 = sub_1C5595F44();
    (*(v51 + 8))(v54, v49);

    v60 = v35;
    v36 = &v60;
    sub_1C5595B14();
    sub_1C5410D10();
    v57[0] = v110[1];
    v57[1] = v110[2];
    v58 = v111;
    v59 = v112;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8);
    v38 = sub_1C5413D10();
    sub_1C5410F68();
    v39 = v57;
    sub_1C5595D14();
    sub_1C5410D10();
    v61 = v44[31];
    v11 = v44[32];
    v12 = v44[33];
    v13 = v44[34];
    v65 = v113;
    v64 = v13;
    v63 = v12;
    v62 = v11;
    v55[0] = v61;
    v56 = v113;
    v55[3] = v13;
    v55[2] = v12;
    v55[1] = v11;
    v41 = sub_1C5595E54();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEC8);
    sub_1C5413C6C();
    v42 = v55;
    sub_1C5595B94();

    sub_1C5410D10();
    v67 = v115;
    v66 = v114;
    v71 = v119;
    v70 = v118;
    v69 = v117;
    v68 = v116;
    v73 = v115;
    v72 = v114;
    v77 = v119;
    v76 = v118;
    v75 = v117;
    v74 = v116;
    v130 = v115;
    v129 = v114;
    v134 = v119;
    v133 = v118;
    v132 = v117;
    v131 = v116;
  }

  else
  {
    v43 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v130 = 0u;
    v129 = 0u;
    v134 = 0;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
  }

  v91[1] = v130;
  v91[0] = v129;
  v92 = v134;
  v91[4] = v133;
  v91[3] = v132;
  v91[2] = v131;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BEA0);
  v24 = sub_1C5413B2C();
  v29 = v120;
  v20[0] = v91;
  sub_1C540EFD8(v91, v22, v120);
  sub_1C5413E38(v20[0]);
  v20[3] = sub_1C5595434();
  sub_1C5412728(v48, v86);
  v20[4] = v20;
  MEMORY[0x1EEE9AC00](v20);
  v20[1] = &v20[-4];
  v20[-2] = v14;
  v20[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BEF0);
  sub_1C5413E98();
  sub_1C5596064();
  sub_1C5412D34();
  v15 = *v44;
  v94 = v44[1];
  v93 = v15;
  v16 = v44[2];
  v17 = v44[3];
  v18 = v44[4];
  v98 = v88;
  v97 = v18;
  v96 = v17;
  v95 = v16;
  v84[1] = v94;
  v84[0] = v93;
  v85 = v88;
  v84[4] = v18;
  v84[3] = v17;
  v84[2] = v16;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF00);
  v25 = sub_1C5413F20();
  v28 = v89;
  v21 = v84;
  sub_1C540EFD8(v84, v23, v89);
  sub_1C5413FA8(v21);
  v27 = v82;
  sub_1C5414014(v29, v82);
  v83[0] = v27;
  v26 = v81;
  sub_1C54140E0(v28, v81);
  v83[1] = v26;
  v80[0] = v22;
  v80[1] = v23;
  v78 = v24;
  v79 = v25;
  sub_1C540F5A0(v83, 2uLL, v80, v45);
  sub_1C5413FA8(v26);
  sub_1C5413E38(v27);
  sub_1C5413FA8(v28);
  return sub_1C5413E38(v29);
}

void *sub_1C5412728(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  a2[1] = a1[1];
  v5 = a1[2];
  sub_1C5594CF4();
  a2[2] = v5;
  a2[3] = a1[3];
  v7 = a1[4];
  sub_1C5594CF4();
  result = a2;
  a2[4] = v7;
  return result;
}

uint64_t sub_1C54127C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6981630];
  v1 = sub_1C5595F04();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1C5412834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v85, 0, sizeof(v85));
  memset(v67, 0, sizeof(v67));
  v86 = a1;
  v88 = *(a1 + 8);
  sub_1C5402BDC(&v88, &v84);
  v83 = v88;
  sub_1C54141E8();
  v79 = sub_1C5595A04();
  v80 = v2;
  v81 = v3;
  v82 = v4;
  v18 = v79;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  sub_1C5595924();
  v75 = v18;
  v76 = v19;
  v77 = v20 & 1;
  v78 = v21;
  v71 = sub_1C55959C4();
  v72 = v5;
  v73 = v6;
  v74 = v7;
  v22 = v71;
  v23 = v5;
  v24 = v6;
  v25 = v7;

  sub_1C5412EA0(v18, v19, v20 & 1);

  v68[0] = v22;
  v68[1] = v23;
  v69 = v24 & 1;
  v70 = v25;
  v36 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v68, MEMORY[0x1E6981148], v85);
  sub_1C5414260(v68);
  v87 = *(a1 + 24);
  sub_1C5402BDC(&v87, &v66);
  v65 = v87;
  v61 = sub_1C5595A04();
  v62 = v8;
  v63 = v9;
  v64 = v10;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  sub_1C5595814();
  v57 = v61;
  v58 = v27;
  v59 = v28 & 1;
  v60 = v29;
  v53 = sub_1C55959C4();
  v54 = v11;
  v55 = v12;
  v56 = v13;
  v30 = v11;
  v31 = v12;
  v32 = v13;

  sub_1C5412EA0(v61, v27, v28 & 1);

  sub_1C5595E64();
  v49 = v53;
  v50 = v30;
  v51 = v31 & 1;
  v52 = v32;
  v45 = sub_1C5595984();
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v33 = v14;
  v34 = v15;
  v35 = v16;

  sub_1C5412EA0(v53, v30, v31 & 1);

  v42[0] = v45;
  v42[1] = v33;
  v43 = v34 & 1;
  v44 = v35;
  sub_1C540EFD8(v42, v36, v67);
  sub_1C5414260(v42);
  sub_1C54142A8(v85, v40);
  v41[0] = v40;
  sub_1C54142A8(v67, v39);
  v41[1] = v39;
  v38[0] = v36;
  v38[1] = v36;
  sub_1C540F5A0(v41, 2uLL, v38, a2);
  sub_1C5414260(v39);
  sub_1C5414260(v40);
  sub_1C5414260(v67);
  return sub_1C5414260(v85);
}

unint64_t sub_1C5412CAC()
{
  v2 = qword_1EC15BE80;
  if (!qword_1EC15BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE80);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C5412D34()
{
}

unint64_t sub_1C5412D78()
{
  v2 = qword_1EC15BE90;
  if (!qword_1EC15BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BE88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BE90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5412E00(uint64_t a1)
{
  if (*(a1 + 24))
  {
  }

  sub_1C5412EA0(*(a1 + 136), *(a1 + 144), *(a1 + 152) & 1);

  sub_1C5412EA0(*(a1 + 168), *(a1 + 176), *(a1 + 184) & 1);

  return a1;
}

uint64_t sub_1C5412EA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C5412EE4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 24))
  {
    v11 = *(a1 + 24);

    *(a2 + 24) = v11;
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 40) = *(a1 + 40);
    memcpy((a2 + 48), (a1 + 48), 0x30uLL);
    v12 = *(a1 + 96);

    *(a2 + 96) = v12;
    v13 = *(a1 + 104);

    *(a2 + 104) = v13;
  }

  else
  {
    memcpy((a2 + 24), (a1 + 24), 0x58uLL);
  }

  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 136) = v3;
  *(a2 + 144) = v4;
  *(a2 + 152) = v5 & 1;
  v6 = *(a1 + 160);
  sub_1C5594CF4();
  *(a2 + 160) = v6;
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v9 = *(a1 + 184);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 168) = v7;
  *(a2 + 176) = v8;
  *(a2 + 184) = v9 & 1;
  v10 = *(a1 + 192);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 192) = v10;
  return result;
}

uint64_t sub_1C54130AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1C5594CF4();
  }
}

uint64_t sub_1C54131D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 32)))
      {
        v3 = *(a1 + 32);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1C54132E8(void *result, int a2, int a3)
{
  v3 = result + 20;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[4] = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1C5413528(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5413640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C5413838(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C5413944(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

void *sub_1C5413AF4(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_1C5413B2C()
{
  v2 = qword_1EC15BEA8;
  if (!qword_1EC15BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BEA0);
    sub_1C5413BC4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413BC4()
{
  v2 = qword_1EC15BEB0;
  if (!qword_1EC15BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC15BEB8);
    sub_1C5413C6C();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413C6C()
{
  v2 = qword_1EC15A010;
  if (!qword_1EC15A010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC15BEC8);
    sub_1C5413D10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413D10()
{
  v2 = qword_1EC15A020;
  if (!qword_1EC15A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BED8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413DB0()
{
  v2 = qword_1EC15BEE0;
  if (!qword_1EC15BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BEE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BEE0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5413E38(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

unint64_t sub_1C5413E98()
{
  v2 = qword_1EC15BEF8;
  if (!qword_1EC15BEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BEF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5413F20()
{
  v2 = qword_1EC15BF08;
  if (!qword_1EC15BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BF08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5413FA8(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

void *sub_1C5414014(void *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;

    *a2 = v3;
    a2[1] = a1[1];
    *(a2 + 8) = *(a1 + 8);
    memcpy(a2 + 3, a1 + 3, 0x30uLL);
    v4 = a1[9];

    a2[9] = v4;
    v5 = a1[10];

    a2[10] = v5;
  }

  else
  {
    memcpy(a2, a1, 0x58uLL);
  }

  return a2;
}

uint64_t sub_1C54140E0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9 & 1;
  v12 = *(a1 + 80);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 80) = v12;
  return result;
}

unint64_t sub_1C54141E8()
{
  v2 = qword_1EC159FB0;
  if (!qword_1EC159FB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5414260(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_1C54142A8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 24) = v8;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C54143D0()
{
  v2 = qword_1EC15BF90;
  if (!qword_1EC15BF90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BF90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C541444C()
{
  v2 = qword_1EC15BF98;
  if (!qword_1EC15BF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF68);
    sub_1C54143D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54144F8()
{
  v2 = qword_1EC15BFA0;
  if (!qword_1EC15BFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF70);
    sub_1C541444C();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54145A0()
{
  v2 = qword_1EC15BFA8;
  if (!qword_1EC15BFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BFB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5414628(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);

  return a1;
}

unint64_t sub_1C54146B8()
{
  v2 = qword_1EC15BFB8;
  if (!qword_1EC15BFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5414740(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
    (*(*(v2 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58);

    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0) + 48);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
    if (!(*(*(v6 - 8) + 48))(v5, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
      (*(*(v3 - 8) + 8))(v5);
    }
  }

  return a1;
}

char *sub_1C54148F4(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58);
    *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0);
    __dst = &a2[*(v4 + 48)];
    __src = &a1[*(v4 + 48)];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(__src, 1))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
      (*(*(v5 - 8) + 32))(__dst, __src);
      *&__dst[*(v11 + 36)] = *&__src[*(v11 + 36)];
      (*(v12 + 56))();
    }

    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

unint64_t sub_1C5414BD0()
{
  v2 = qword_1EC15BFC8;
  if (!qword_1EC15BFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BD48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5414C58()
{
  v2 = qword_1EC15BFD0;
  if (!qword_1EC15BFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF30);
    sub_1C5414D00();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5414D00()
{
  v2 = qword_1EC15BFD8;
  if (!qword_1EC15BFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF28);
    sub_1C5414DAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5414DAC()
{
  v2 = qword_1EC15BFE0;
  if (!qword_1EC15BFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BFE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5414E34(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_1C5414F08(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
    (*(*(v2 - 8) + 32))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

uint64_t sub_1C5415064(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

char *sub_1C5415114(char *a1, char *a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
    (*(*(v2 - 8) + 16))(a2, a1);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58) + 36);
    v11 = *&a1[v10];

    *&a2[v10] = v11;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0);
    __dst = &a2[*(v3 + 48)];
    __src = &a1[*(v3 + 48)];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(__src, 1))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
      (*(*(v4 - 8) + 16))(__dst, __src);
      v8 = *(v14 + 36);
      v9 = *&__src[v8];

      *&__dst[v8] = v9;
      (*(v15 + 56))();
    }

    (*(v19 + 56))(a2, 0, 1, v18);
  }

  return a2;
}

char *sub_1C541541C(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = *(v9 + 36);
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    (*(v10 + 56))();
  }

  return a2;
}

unint64_t sub_1C5415590()
{
  v2 = qword_1EC15BFF0;
  if (!qword_1EC15BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF60);
    sub_1C54146B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5415628()
{
  v2 = qword_1EC15BFF8;
  if (!qword_1EC15BFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF38);
    sub_1C5414C58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BFF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54156C0(uint64_t a1, uint64_t a2)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
  v23 = *(*(v22 - 8) + 16);
  v23(a2, a1);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
  v25 = *(v24 + 36);
  v27 = *(a1 + v25);

  *(a2 + v25) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000);
  v29 = *(v28 + 48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(a1 + v29, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60);
    memcpy((a2 + v29), (a1 + v29), *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
    (*(*(v2 - 8) + 16))();
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58) + 36);
    v18 = *(a1 + v29 + v17);

    *(a2 + v29 + v17) = v18;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0);
    __dst = (a2 + v29 + *(v3 + 48));
    __src = (a1 + v29 + *(v3 + 48));
    v21 = *(v24 - 8);
    if ((*(v21 + 48))())
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
    }

    else
    {
      (v23)(__dst, __src, v22);
      v15 = *(v24 + 36);
      v16 = *&__src[v15];

      *&__dst[v15] = v16;
      (*(v21 + 56))();
    }

    (*(v32 + 56))(a2 + v29, 0, 1, v31);
  }

  v11 = (a2 + *(v28 + 64));
  v12 = (a1 + *(v28 + 64));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38);
    memcpy(v11, v12, *(*(v7 - 8) + 64));
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
    (*(*(v6 - 8) + 16))(v11, v12);
    v9 = *(v13 + 36);
    v10 = *&v12[v9];

    *&v11[v9] = v10;
    (*(v14 + 56))();
  }

  return a2;
}

unint64_t sub_1C5415BF4()
{
  v2 = qword_1EC15C008;
  if (!qword_1EC15C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF80);
    sub_1C5415C9C();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5415C9C()
{
  v2 = qword_1EC15C010;
  if (!qword_1EC15C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF78);
    sub_1C5415D48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5415D48()
{
  v2 = qword_1EC15C018;
  if (!qword_1EC15C018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5415DD0()
{
  v2 = qword_1EC15C028;
  if (!qword_1EC15C028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5415E58(uint64_t a1)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
  v9 = *(*(v8 - 8) + 8);
  v9(a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000);
  v12 = *(v11 + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
  if (!(*(*(v1 - 8) + 48))(a1 + v12, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
    (*(*(v2 - 8) + 8))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58);

    v7 = a1 + v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0) + 48);
    if (!(*(*(v10 - 8) + 48))())
    {
      (v9)(v7, v8);
    }
  }

  v5 = a1 + *(v11 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
  if (!(*(*(v6 - 8) + 48))(v5, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
    (*(*(v3 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t sub_1C541613C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
    v20 = *(*(v19 - 8) + 32);
    v20(a2, a1);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
    *(a2 + *(v21 + 36)) = *(a1 + *(v21 + 36));
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000);
    v23 = (a2 + *(v22 + 48));
    v24 = (a1 + *(v22 + 48));
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60);
      memcpy(v23, v24, *(*(v8 - 8) + 64));
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
      (*(*(v4 - 8) + 32))(v23, v24);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58);
      *&v23[*(v5 + 36)] = *&v24[*(v5 + 36)];
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0);
      __dst = &v23[*(v6 + 48)];
      __src = &v24[*(v6 + 48)];
      v18 = *(v21 - 8);
      if ((*(v18 + 48))())
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
        memcpy(__dst, __src, *(*(v7 - 8) + 64));
      }

      else
      {
        (v20)(__dst, __src, v19);
        *&__dst[*(v21 + 36)] = *&__src[*(v21 + 36)];
        (*(v18 + 56))();
      }

      (*(v26 + 56))(v23, 0, 1, v25);
    }

    v12 = (a2 + *(v22 + 64));
    v13 = (a1 + *(v22 + 64));
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38);
      memcpy(v12, v13, *(*(v10 - 8) + 64));
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
      (*(*(v9 - 8) + 32))(v12, v13);
      *&v12[*(v14 + 36)] = *&v13[*(v14 + 36)];
      (*(v15 + 56))();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80);
    *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1C54166BC()
{
  v2 = qword_1EC15C038;
  if (!qword_1EC15C038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5416764(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
    v24 = *(*(v23 - 8) + 16);
    v24(a2, a1);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
    v26 = *(v25 + 36);
    v27 = *(a1 + v26);

    *(a2 + v26) = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000);
    v29 = (a2 + *(v28 + 48));
    v30 = (a1 + *(v28 + 48));
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF60);
      memcpy(v29, v30, *(*(v6 - 8) + 64));
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
      (*(*(v3 - 8) + 16))(v29, v30);
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58) + 36);
      v19 = *&v30[v18];

      *&v29[v18] = v19;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0);
      __dst = &v29[*(v4 + 48)];
      __src = &v30[*(v4 + 48)];
      v22 = *(v25 - 8);
      if ((*(v22 + 48))())
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
        memcpy(__dst, __src, *(*(v5 - 8) + 64));
      }

      else
      {
        (v24)(__dst, __src, v23);
        v16 = *(v25 + 36);
        v17 = *&__src[v16];

        *&__dst[v16] = v17;
        (*(v22 + 56))();
      }

      (*(v32 + 56))(v29, 0, 1, v31);
    }

    v12 = (a2 + *(v28 + 64));
    v13 = (a1 + *(v28 + 64));
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF38);
      memcpy(v12, v13, *(*(v8 - 8) + 64));
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
      (*(*(v7 - 8) + 16))(v12, v13);
      v10 = *(v14 + 36);
      v11 = *&v13[v10];

      *&v12[v10] = v11;
      (*(v15 + 56))();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78);
    (*(*(v2 - 8) + 16))(a2, a1);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80) + 36);
    v34 = *(a1 + v33);

    *(a2 + v33) = v34;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1C5416D4C()
{
  v2 = qword_1EC15C040;
  if (!qword_1EC15C040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF88);
    sub_1C5415BF4();
    sub_1C5415DD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5416DF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
    v10 = *(*(v9 - 8) + 8);
    v10(a1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C000);
    v13 = a1 + *(v12 + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF40);
    if (!(*(*(v2 - 8) + 48))(v13, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
      (*(*(v3 - 8) + 8))(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58);

      v8 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0) + 48);
      if (!(*(*(v11 - 8) + 48))())
      {
        (v10)(v8, v9);
      }
    }

    v6 = a1 + *(v12 + 64);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);
    if (!(*(*(v7 - 8) + 48))(v6, 1))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
      (*(*(v4 - 8) + 8))(v6);
    }
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78);
    (*(*(v1 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80);
  }

  return a1;
}

uint64_t sub_1C541716C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30);

  return a1;
}

uint64_t sub_1C54171FC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF28);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF30) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1C54172B4()
{
  v2 = qword_1EC15C050;
  if (!qword_1EC15C050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C048);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C541733C()
{
  v2 = qword_1EC15C058;
  if (!qword_1EC15C058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF50);
    sub_1C54172B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54173E8()
{
  v2 = qword_1EC15C060;
  if (!qword_1EC15C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF58);
    sub_1C541733C();
    sub_1C54145A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5417490(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58);

  return a1;
}

uint64_t sub_1C5417520(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_1C54175F4(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
    (*(*(v2 - 8) + 32))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

uint64_t sub_1C5417750(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

char *sub_1C5417800(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = *(v9 + 36);
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    (*(v10 + 56))();
  }

  return a2;
}

unint64_t sub_1C5417974()
{
  v2 = qword_1EC15C068;
  if (!qword_1EC15C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BF48);
    sub_1C54144F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5417A0C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58) + 36);
  v10 = *(a1 + v8);

  *(a2 + v8) = v10;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0) + 48);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1 + v11, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF48);
    memcpy((a2 + v11), (a1 + v11), *(*(v4 - 8) + 64));
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
    (*(*(v3 - 8) + 16))();
    v6 = *(v13 + 36);
    v7 = *(a1 + v11 + v6);

    *(a2 + v11 + v6) = v7;
    (*(v14 + 56))();
  }

  return a2;
}

uint64_t sub_1C5417C5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF50);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF58);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFC0) + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF70);
  if (!(*(*(v6 - 8) + 48))(a1 + v4, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF68);
    (*(*(v2 - 8) + 8))();
  }

  return a1;
}

uint64_t sub_1C5417DE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80);

  return a1;
}

uint64_t sub_1C5417E70(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF78);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BF80) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1C5417F20()
{
  v2 = qword_1EC15C088;
  if (!qword_1EC15C088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C078);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C088);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5417FA8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C078);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048);
    (*(*(v2 - 8) + 8))(a1);
    if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090) + 48) + 16))
    {
    }
  }

  return a1;
}

char *sub_1C54180BC(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C078);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C080);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090);
    memcpy(&a2[*(v3 + 48)], &a1[*(v3 + 48)], 0x28uLL);
    (*(v9 + 56))(a2, 0, 1, v8);
  }

  return a2;
}

uint64_t sub_1C5418240(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1C54182F4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C070);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_1C5418428(char *a1, char *a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C078);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C080);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090);
    __dst = &a2[*(v3 + 48)];
    __src = &a1[*(v3 + 48)];
    if (*(__src + 2))
    {
      v6 = *__src;

      *__dst = v6;
      *(__dst + 1) = *(__src + 1);
      v7 = *(__src + 2);
      sub_1C5594CF4();
      *(__dst + 2) = v7;
      *(__dst + 3) = *(__src + 3);
      v8 = *(__src + 4);
      sub_1C5594CF4();
      *(__dst + 4) = v8;
    }

    else
    {
      memcpy(__dst, __src, 0x28uLL);
    }

    (*(v14 + 56))(a2, 0, 1, v13);
  }

  return a2;
}

void *sub_1C5418630(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BFE8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C070);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C5418764()
{
  v2 = qword_1EC15C098;
  if (!qword_1EC15C098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C080);
    sub_1C5417F20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54187FC()
{
  v2 = qword_1EC15C0A0;
  if (!qword_1EC15C0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C070);
    sub_1C5414DAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54188A4()
{
  v2 = qword_1EC15C0A8;
  if (!qword_1EC15C0A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C541891C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    sub_1C5594CF4();
    return sub_1C5594CF4();
  }

  return result;
}

unint64_t sub_1C5418970()
{
  v2 = qword_1EC15C0B8;
  if (!qword_1EC15C0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C0B0);
    sub_1C54143D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5418A08(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C5418A60(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048);
  (*(*(v2 - 8) + 16))(a2, a1);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090) + 48);
  if (*(a1 + v10 + 16))
  {
    v4 = *(a1 + v10);

    v6 = (a2 + v10);
    *v6 = v4;
    v6[1] = *(a1 + v10 + 8);
    v5 = *(a1 + v10 + 16);
    sub_1C5594CF4();
    v6[2] = v5;
    v6[3] = *(a1 + v10 + 24);
    v7 = *(a1 + v10 + 32);
    sub_1C5594CF4();
    v6[4] = v7;
  }

  else
  {
    memcpy((a2 + v10), (a1 + v10), 0x28uLL);
  }

  return a2;
}

uint64_t sub_1C5418BB4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C048);
  (*(*(v1 - 8) + 8))(a1);
  if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C090) + 48) + 16))
  {
  }

  return a1;
}

unint64_t sub_1C5418C84()
{
  v2 = qword_1EC159F00;
  if (!qword_1EC159F00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC159F00);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for UIUserInterfaceIdiom()
{
  v4 = qword_1EC15C0E0;
  if (!qword_1EC15C0E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C0E0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C5418D80()
{
  v2 = qword_1EC15C0C8;
  if (!qword_1EC15C0C8)
  {
    type metadata accessor for UIUserInterfaceIdiom();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0C8);
    return WitnessTable;
  }

  return v2;
}

void sub_1C5418E00(uint64_t a1@<X8>)
{
  sub_1C5418E3C();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

void *sub_1C5418EB8(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

id sub_1C5418FC8(void *a1)
{
  v34 = a1;
  v44 = 0;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v33 = 0;
  v41 = sub_1C5594C74();
  v35 = v41;
  v36 = *(v41 - 8);
  v40 = v36;
  v37 = v36;
  v38 = *(v36 + 64);
  v1 = &v11 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v1;
  v56 = MEMORY[0x1EEE9AC00](v34);
  v55 = v2;
  v3 = sub_1C54B05F8();
  (*(v40 + 16))(v1, v3, v41);
  v46 = sub_1C5594C54();
  v42 = v46;
  v45 = sub_1C5596974();
  v43 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v47 = sub_1C5596E04();
  if (os_log_type_enabled(v46, v45))
  {
    v4 = v33;
    v24 = sub_1C5596A74();
    v20 = v24;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v22 = 0;
    v25 = sub_1C5419DC0(0);
    v23 = v25;
    v26 = sub_1C5419DC0(v22);
    v51 = v24;
    v50 = v25;
    v49 = v26;
    v27 = 0;
    v28 = &v51;
    sub_1C5419E14(0, &v51);
    sub_1C5419E14(v27, v28);
    v48 = v47;
    v29 = &v11;
    MEMORY[0x1EEE9AC00](&v11);
    v30 = &v11 - 6;
    *(&v11 - 4) = v5;
    *(&v11 - 3) = &v50;
    *(&v11 - 2) = &v49;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v32 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v42, v43, "Creating RecoveryContactsView.", v20, 2u);
      v18 = 0;
      sub_1C5419E74(v23);
      sub_1C5419E74(v26);
      sub_1C5596A54();

      v19 = v32;
    }
  }

  else
  {

    v19 = v33;
  }

  (*(v37 + 8))(v39, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0F0);
  v6 = v34;
  memset(v53, 0, sizeof(v53));
  v12 = type metadata accessor for RecoveryContactsViewModel();
  sub_1C5404CB4();
  v13 = v54;
  sub_1C54768EC(v34, v53, v12, v54);
  v17 = sub_1C5595484();
  v52 = v17;
  v7 = v17;
  sub_1C55965F4();
  v14 = v8;
  sub_1C54637B4();
  v15 = v9;
  v16 = sub_1C5596554();

  [v17 setTitle_];

  return v17;
}

void *sub_1C54195EC(void *a1)
{
  v9 = a1;
  v14 = 0;
  v13 = 0;
  v8 = sub_1C5594994();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v4;
  v14 = MEMORY[0x1EEE9AC00](v9);
  v13 = v1;
  sub_1C5594984();
  v10 = sub_1C5594944();
  v11 = v2;
  (*(v5 + 8))(v7, v8);
  v12 = sub_1C5419708(v9, v10, v11);

  return v12;
}

void *sub_1C5419708(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v31 = a2;
  v30 = a1;
  v41 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v28 = 0;
  v38 = sub_1C5594C74();
  v32 = v38;
  v33 = *(v38 - 8);
  v37 = v33;
  v34 = v33;
  v35 = *(v33 + 64);
  v3 = &v13 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v3;
  v52 = MEMORY[0x1EEE9AC00](v30);
  v50 = v4;
  v51 = v5;
  v49 = v6;
  v7 = sub_1C54B05F8();
  (*(v37 + 16))(v3, v7, v38);
  v43 = sub_1C5594C54();
  v39 = v43;
  v42 = sub_1C5596974();
  v40 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v44 = sub_1C5596E04();
  if (os_log_type_enabled(v43, v42))
  {
    v8 = v28;
    v19 = sub_1C5596A74();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v17 = 0;
    v20 = sub_1C5419DC0(0);
    v18 = v20;
    v21 = sub_1C5419DC0(v17);
    v48 = v19;
    v47 = v20;
    v46 = v21;
    v22 = 0;
    v23 = &v48;
    sub_1C5419E14(0, &v48);
    sub_1C5419E14(v22, v23);
    v45 = v44;
    v24 = &v13;
    MEMORY[0x1EEE9AC00](&v13);
    v25 = &v13 - 6;
    *(&v13 - 4) = v9;
    *(&v13 - 3) = &v47;
    *(&v13 - 2) = &v46;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v27 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v39, v40, "Creating RecoveryContactsViewModel.", v15, 2u);
      v13 = 0;
      sub_1C5419E74(v18);
      sub_1C5419E74(v21);
      sub_1C5596A54();

      v14 = v27;
    }
  }

  else
  {

    v14 = v28;
  }

  (*(v34 + 8))(v36, v32);
  type metadata accessor for RecoveryContactsViewModel();
  v10 = v30;
  sub_1C5594CF4();
  v11 = sub_1C54045FC();
  return sub_1C5404604(v30, v11 & 1, v31, v29);
}

id RecoveryContactsViewFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for RecoveryContactsViewFactory();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id RecoveryContactsViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryContactsViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5419DC0(uint64_t a1)
{
  if (a1)
  {
    return sub_1C5596A74();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5419E14(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1C5419E74(uint64_t result)
{
  if (result)
  {
    sub_1C5596A64();
    return sub_1C5596A54();
  }

  return result;
}

unint64_t sub_1C5419F0C()
{
  v2 = qword_1EC159F80;
  if (!qword_1EC159F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC15E1F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C541A0AC()
{
  type metadata accessor for NameAndPhotoSharingViewModel();
  v4 = sub_1C54907D0();
  v2 = sub_1C5490840();
  v3 = sub_1C5490880();
  v0 = sub_1C54908AC();
  result = sub_1C54908D8(v4, v2, v3, v0);
  qword_1EC160008 = result;
  return result;
}

uint64_t *sub_1C541A114()
{
  if (qword_1EC160000 != -1)
  {
    swift_once();
  }

  return &qword_1EC160008;
}

uint64_t static NameAndPhotoSharingViewModelKey.defaultValue.getter()
{
  v1 = *sub_1C541A114();

  return v1;
}

uint64_t sub_1C541A1A4@<X0>(uint64_t *a1@<X8>)
{
  result = static NameAndPhotoSharingViewModelKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter()
{
  sub_1C541A21C();
  sub_1C55969E4();
  return v1;
}

unint64_t sub_1C541A21C()
{
  v2 = qword_1EC15C0F8;
  if (!qword_1EC15C0F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C0F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C541A298@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1C541A304(uint64_t a1, void *a2)
{

  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  RUIDecodingUserInfo.nameAndPhotoSharingViewModel.setter();
  return MEMORY[0x1E69E5920](v4);
}

uint64_t RUIDecodingUserInfo.nameAndPhotoSharingViewModel.setter()
{

  sub_1C541A21C();
  sub_1C55969F4();
}

uint64_t (*RUIDecodingUserInfo.nameAndPhotoSharingViewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
  return sub_1C541A458;
}

uint64_t sub_1C541A458(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return RUIDecodingUserInfo.nameAndPhotoSharingViewModel.setter();
  }

  RUIDecodingUserInfo.nameAndPhotoSharingViewModel.setter();
}

uint64_t getEnumTagSinglePayload for NameAndPhotoSharingViewModelKey(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for NameAndPhotoSharingViewModelKey(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1C541A7F8@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v14 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v6;
  v14 = v1;
  (*(*v1 + 312))(v3);

  v9 = sub_1C5594924();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = *(v10 + 48);
  v13 = v10 + 48;
  if ((v12)(v8, 1) == 1)
  {
    (*(v10 + 16))(v5, v7 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate, v9);
    if (v12(v8, 1, v9) != 1)
    {
      sub_1C541A9D8(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v5, v8, v9);
  }
}

uint64_t sub_1C541A9D8(uint64_t a1)
{
  v3 = sub_1C5594924();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1C541AA80@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  swift_beginAccess();
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C541AB0C(uint64_t a1)
{
  v10 = a1;
  v11 = sub_1C5594924();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C541ACF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v10 = a1;
  v11 = 0;
  v9 = sub_1C5594924();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v5 = &v4 - v4;
  v11 = v2;
  (*(v7 + 16))();
  (*(v7 + 32))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t sub_1C541AE10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 944))();

  v5 = v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  swift_beginAccess();
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 16))(a1, v5);
  return swift_endAccess();
}

uint64_t sub_1C541AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1C5594924();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 264))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t sub_1C541B020(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = sub_1C5594924();
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 272))(v8);
}

uint64_t sub_1C541B12C(uint64_t a1)
{
  v31 = a1;
  v19 = 0;
  v41 = 0;
  v40 = 0;
  v18 = 0;
  v33 = sub_1C5594924();
  v20 = v33;
  v21 = *(v33 - 8);
  v32 = v21;
  v22 = v21;
  v23 = *(v21 + 64);
  v2 = MEMORY[0x1EEE9AC00](v31);
  v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v9 - v25;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v34 = &v9 - v25;
  v26 = &v9 - v25;
  v41 = v3;
  v40 = v1;
  v27 = v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  v30 = &v39;
  swift_beginAccess();
  v28 = *(v32 + 16);
  v29 = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v34, v27, v33);
  swift_endAccess();
  sub_1C54290E8();
  v37 = sub_1C542908C();
  v35 = *(v32 + 8);
  v36 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v34, v33);
  if ((v37 & 1) == 0)
  {
    v28(v26, v31, v20);
    v28(v24, v26, v20);
    v10 = v17 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
    v11 = &v38;
    swift_beginAccess();
    (*(v22 + 40))(v10, v24, v20);
    swift_endAccess();
    v35(v26, v20);
    v12 = v18;
    return (v35)(v31, v20, v12);
  }

  v4 = v17;
  v5 = v18;
  KeyPath = swift_getKeyPath();
  v13 = KeyPath;

  v15 = &v9;
  v6 = MEMORY[0x1EEE9AC00](KeyPath);
  *(&v9 - 2) = v4;
  *(&v9 - 1) = v7;
  (*(*v4 + 952))(v6, sub_1C5429168);
  v16 = v5;
  if (!v5)
  {

    v12 = v16;
    return (v35)(v31, v20, v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C541B514(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v4 = a2;
  v20 = 0;
  v19 = 0;
  v17 = sub_1C5594924();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = *(v14 + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v12 = &v4 - v5;
  v7 = v5;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v16 = &v4 - v7;
  v20 = v10;
  v19 = v2;
  v9 = *(v14 + 16);
  v8 = v14 + 16;
  v9(&v4 - v7);
  (v9)(v12, v16, v17);
  v11 = v10 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  v13 = &v18;
  swift_beginAccess();
  (*(v14 + 40))(v11, v12, v17);
  swift_endAccess();
  return (*(v14 + 8))(v16, v17);
}

void (*sub_1C541B6E0(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541AC4C();
  return sub_1C541B8C0;
}

void sub_1C541B8C0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541B97C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541B97C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541B97C(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C541BB18@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  swift_beginAccess();
  sub_1C5429288(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C541BB74(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1C5429288(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  v7 = &v9;
  swift_beginAccess();
  sub_1C54293B0(v5, v6);
  swift_endAccess();
  return sub_1C541A9D8(v8);
}

uint64_t sub_1C541BCA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a2;
  v7 = a1;
  v8 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v3 - v4;
  v8 = MEMORY[0x1EEE9AC00](v7);
  sub_1C5429288(v8, &v3 - v4);
  sub_1C54295D8(v6, v5);
  return sub_1C541A9D8(v7);
}

uint64_t sub_1C541BD58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 944))();

  v4 = (v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  swift_beginAccess();
  sub_1C5429288(v4, a1);
  return swift_endAccess();
}

uint64_t sub_1C541BE18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v4 - v6;
  v7 = *MEMORY[0x1EEE9AC00](v5);

  v11 = v7;
  v10 = v7;
  (*(*v7 + 312))(v2);
  sub_1C54295D8(v8, v9);
}

uint64_t sub_1C541BF10(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v4 - v6;
  sub_1C5429288(v2, &v4 - v6);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 320))(v8);
}

uint64_t sub_1C541C004(const void *a1)
{
  v26 = a1;
  v19 = 0;
  v33 = 0;
  v32 = 0;
  v18 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
  v20 = *(*(v27 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v26);
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v9 - v22;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v28 = &v9 - v22;
  v23 = &v9 - v22;
  v33 = v3;
  v32 = v1;
  v24 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  v25 = &v31;
  swift_beginAccess();
  sub_1C5429288(v24, v28);
  swift_endAccess();
  sub_1C5429700();
  v29 = sub_1C542908C();
  sub_1C541A9D8(v28);
  if ((v29 & 1) == 0)
  {
    sub_1C5429288(v26, v23);
    sub_1C5429288(v23, v21);
    v10 = (v17 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
    v11 = &v30;
    swift_beginAccess();
    sub_1C54293B0(v21, v10);
    swift_endAccess();
    sub_1C541A9D8(v23);
    v12 = v18;
    return sub_1C541A9D8(v26);
  }

  v4 = v17;
  v5 = v18;
  KeyPath = swift_getKeyPath();
  v13 = KeyPath;

  v15 = &v9;
  v6 = MEMORY[0x1EEE9AC00](KeyPath);
  *(&v9 - 2) = v4;
  *(&v9 - 1) = v7;
  (*(*v4 + 952))(v6, sub_1C5429798);
  v16 = v5;
  if (!v5)
  {

    v12 = v16;
    return sub_1C541A9D8(v26);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C541C2D0(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v7 = a2;
  v18 = 0;
  v17 = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v6 - v8;
  v10 = v8;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v15 = &v6 - v10;
  v18 = v4;
  v17 = v3;
  sub_1C5429288(v3, &v6 - v10);
  sub_1C5429288(v15, v12);
  v13 = (v11 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  v14 = &v16;
  swift_beginAccess();
  sub_1C54293B0(v12, v13);
  swift_endAccess();
  return sub_1C541A9D8(v15);
}

void (*sub_1C541C410(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541BC44();
  return sub_1C541C5F0;
}

void sub_1C541C5F0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541C6AC(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541C6AC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541C6AC(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C541C820()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C541C888(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C541C974@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1E69E5928]();
  *a2 = a1;
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C541C9C4()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_1C541CA90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 360))(v2);
}

uint64_t sub_1C541CB18(uint64_t *a1, uint64_t *a2)
{
  sub_1C5402C1C(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 368))(v4);
}

void sub_1C541CBAC(void *a1)
{
  v23 = a1;
  v31 = 0;
  v19 = 0;
  v32 = a1;
  v20 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  v21 = &v30;
  swift_beginAccess();
  v22 = *v20;
  v2 = v22;
  swift_endAccess();
  v29 = v22;
  v28 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C120);
  sub_1C5429878();
  v25 = &v29;
  v26 = sub_1C542908C();
  sub_1C5401EF8(&v29);
  if (v26)
  {
    v3 = v18;
    v4 = v19;
    KeyPath = swift_getKeyPath();
    v14 = KeyPath;

    v5 = v23;
    v16 = &v10;
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 952))(v6, sub_1C54299F4);
    v17 = v4;

    v13 = v17;
  }

  else
  {
    v7 = v23;
    v8 = v23;
    v11 = (v18 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
    v12 = &v27;
    swift_beginAccess();
    v9 = *v11;
    *v11 = v23;

    swift_endAccess();
    v13 = v19;
  }
}

uint64_t sub_1C541CE24(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a2);
  v5 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a2;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a2);
}

void (*sub_1C541CEE4(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541C910();
  return sub_1C541D0C4;
}

void sub_1C541D0C4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541D180(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541D180(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541D180(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C541D2BC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C541D328(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C541D40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C5594CF4();
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1C541D470()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  swift_beginAccess();
  v4 = *v3;
  sub_1C5594CF4();
  swift_endAccess();
  return v4;
}

uint64_t sub_1C541D540@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 408))(v2);
  a2[1] = v3;
}

uint64_t sub_1C541D5CC(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 416))(v4, v6);
}

uint64_t sub_1C541D66C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = a1;
  v32 = 0;
  v18 = 0;
  v33 = a1;
  v34 = a2;
  v19 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  v20 = &v31;
  swift_beginAccess();
  v21 = *v19;
  v22 = v19[1];
  sub_1C5594CF4();
  swift_endAccess();
  v30[0] = v21;
  v30[1] = v22;
  v28 = v23;
  v29 = v24;
  v25 = v30;
  v26 = sub_1C542908C();
  sub_1C5401ECC();
  if (v26)
  {
    v3 = v17;
    v4 = v18;
    KeyPath = swift_getKeyPath();
    v13 = KeyPath;

    sub_1C5594CF4();
    v15 = &v9;
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 952))(v5, sub_1C5429A20);
    v16 = v4;

    v12 = v16;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C5594CF4();
    v10 = (v17 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
    v11 = &v27;
    swift_beginAccess();
    v6 = v10;
    v7 = v24;
    *v10 = v23;
    v6[1] = v7;

    swift_endAccess();

    v12 = v18;
  }
}

uint64_t sub_1C541D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5594CF4();
  sub_1C5594CF4();
  v6 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;

  swift_endAccess();
}

void (*sub_1C541D9D8(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541D3A8();
  return sub_1C541DBB8;
}

void sub_1C541DBB8(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541DC74(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541DC74(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541DC74(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C541DDB0()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1C541DDEC()
{
  result = sub_1C55965F4();
  qword_1EC16B420 = result;
  qword_1EC16B428 = v1;
  return result;
}

uint64_t *sub_1C541DE30()
{
  if (qword_1EC160090 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B420;
}

uint64_t sub_1C541DE90()
{
  v1 = *sub_1C541DE30();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C541DECC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_postBirthdayTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1C541DF2C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_postBirthdayTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C541E000()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C541E060(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C541E140()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C541E204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 480))(v2) & 1;
}

uint64_t sub_1C541E290(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 488))(v4 & 1);
}

uint64_t sub_1C541E318(int a1)
{
  v20 = a1;
  v15 = a1;
  v23 = 0;
  v16 = 0;
  v24 = a1;
  v17 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  v18 = &v22;
  swift_beginAccess();
  v19 = *v17;
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1C542908C())
  {
    v2 = v14;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 952))(v4, sub_1C5429A50);
    v13 = v3;

    return v13;
  }

  else
  {
    v7 = (v14 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
    v8 = v21;
    swift_beginAccess();
    *v7 = v15 & 1;
    swift_endAccess();
    return v16;
  }
}

uint64_t sub_1C541E534(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C541E5B0(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541E0BC();
  return sub_1C541E790;
}

void sub_1C541E790(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541E84C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541E84C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541E84C(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C541E994()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C541E9F4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C541EAB4()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C541EB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 528))(v2) & 1;
}

uint64_t sub_1C541EC04(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 536))(v4 & 1);
}

uint64_t sub_1C541EC8C(int a1)
{
  v20 = a1;
  v15 = a1;
  v23 = 0;
  v16 = 0;
  v24 = a1;
  v17 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  v18 = &v22;
  swift_beginAccess();
  v19 = *v17;
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1C542908C())
  {
    v2 = v14;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 952))(v4, sub_1C5429A80);
    v13 = v3;

    return v13;
  }

  else
  {
    v7 = (v14 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
    v8 = v21;
    swift_beginAccess();
    *v7 = v15 & 1;
    swift_endAccess();
    return v16;
  }
}

uint64_t sub_1C541EEA8(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C541EF24(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541EA50();
  return sub_1C541F104;
}

void sub_1C541F104(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541F1C0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541F1C0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541F1C0(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C541F2FC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C541F35C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C541F41C()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C541F4E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 576))(v2) & 1;
}

uint64_t sub_1C541F56C(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 584))(v4 & 1);
}

uint64_t sub_1C541F5F4(int a1)
{
  v20 = a1;
  v15 = a1;
  v23 = 0;
  v16 = 0;
  v24 = a1;
  v17 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  v18 = &v22;
  swift_beginAccess();
  v19 = *v17;
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1C542908C())
  {
    v2 = v14;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 952))(v4, sub_1C5429AB0);
    v13 = v3;

    return v13;
  }

  else
  {
    v7 = (v14 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
    v8 = v21;
    swift_beginAccess();
    *v7 = v15 & 1;
    swift_endAccess();
    return v16;
  }
}

uint64_t sub_1C541F810(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C541F88C(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541F3B8();
  return sub_1C541FA6C;
}

void sub_1C541FA6C(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541FB28(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C541FB28(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C541FB28(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C541FC64()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C541FCC4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C541FD84()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C541FE48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 624))(v2) & 1;
}

uint64_t sub_1C541FED4(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 632))(v4 & 1);
}

uint64_t sub_1C541FF5C(int a1)
{
  v20 = a1;
  v15 = a1;
  v23 = 0;
  v16 = 0;
  v24 = a1;
  v17 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  v18 = &v22;
  swift_beginAccess();
  v19 = *v17;
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1C542908C())
  {
    v2 = v14;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 952))(v4, sub_1C5429AE0);
    v13 = v3;

    return v13;
  }

  else
  {
    v7 = (v14 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
    v8 = v21;
    swift_beginAccess();
    *v7 = v15 & 1;
    swift_endAccess();
    return v16;
  }
}

uint64_t sub_1C5420178(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C54201F4(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C541FD20();
  return sub_1C54203D4;
}

void sub_1C54203D4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5420490(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5420490(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5420490(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C54205CC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C542062C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C54206EC()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C54207B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 672))(v2) & 1;
}

uint64_t sub_1C542083C(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 680))(v4 & 1);
}

uint64_t sub_1C54208C4(int a1)
{
  v20 = a1;
  v15 = a1;
  v23 = 0;
  v16 = 0;
  v24 = a1;
  v17 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  v18 = &v22;
  swift_beginAccess();
  v19 = *v17;
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1C542908C())
  {
    v2 = v14;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 952))(v4, sub_1C5429B10);
    v13 = v3;

    return v13;
  }

  else
  {
    v7 = (v14 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
    v8 = v21;
    swift_beginAccess();
    *v7 = v15 & 1;
    swift_endAccess();
    return v16;
  }
}

uint64_t sub_1C5420AE0(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C5420B5C(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5420688();
  return sub_1C5420D3C;
}

void sub_1C5420D3C(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5420DF8(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5420DF8(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5420DF8(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C5420F34()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C5420F94(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C5421054()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_1C5421118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 720))(v2) & 1;
}

uint64_t sub_1C54211A4(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 728))(v4 & 1);
}

uint64_t sub_1C542122C(int a1)
{
  v20 = a1;
  v15 = a1;
  v23 = 0;
  v16 = 0;
  v24 = a1;
  v17 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  v18 = &v22;
  swift_beginAccess();
  v19 = *v17;
  swift_endAccess();
  v21[31] = v19;
  v21[30] = v20;
  if (sub_1C542908C())
  {
    v2 = v14;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 952))(v4, sub_1C5429B40);
    v13 = v3;

    return v13;
  }

  else
  {
    v7 = (v14 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
    v8 = v21;
    swift_beginAccess();
    *v7 = v15 & 1;
    swift_endAccess();
    return v16;
  }
}

uint64_t sub_1C5421448(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_1C54214C4(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5420FF0();
  return sub_1C54216A4;
}

void sub_1C54216A4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5421760(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5421760(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5421760(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C542189C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate;
  v2 = sub_1C5594924();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5421908()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5421970(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C5421A5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1E69E5928]();
  *a2 = a1;
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C5421AB4()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_1C5421B80@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1C5421AB4();
}

uint64_t sub_1C5421BDC(void *a1)
{
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);

  sub_1C5421C58(v2);
}

void sub_1C5421C58(void *a1)
{
  v23 = a1;
  v22 = 0;
  v29 = 0;
  v19 = 0;
  v30 = a1;
  v20 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  v21 = &v28;
  swift_beginAccess();
  v25 = *v20;
  v2 = v25;
  swift_endAccess();
  v24 = type metadata accessor for PendingBirthdayModel();
  sub_1C5429C5C();
  v26 = sub_1C5429BE8();

  if (v26)
  {
    v3 = v18;
    v4 = v19;
    KeyPath = swift_getKeyPath();
    v14 = KeyPath;

    v5 = v23;
    v16 = &v10;
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 952))(v6, sub_1C5429CDC);
    v17 = v4;

    v13 = v17;
  }

  else
  {
    v7 = v23;
    v8 = v23;
    v11 = (v18 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
    v12 = &v27;
    swift_beginAccess();
    v9 = *v11;
    *v11 = v23;

    swift_endAccess();
    v13 = v19;
  }
}

uint64_t sub_1C5421EB0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a2);
  v5 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a2;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a2);
}

void (*sub_1C5421F74(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C54219F8();
  return sub_1C5422154;
}

void sub_1C5422154(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5422210(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5422210(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5422210(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C542234C()
{
  sub_1C5594E24();
  sub_1C5429D08();
  return sub_1C5596424();
}

uint64_t sub_1C5422384()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54223E4(uint64_t a1)
{
  sub_1C5594CF4();
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C54224B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C5594CF4();
  *a2 = a1;
}

uint64_t sub_1C5422500()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  swift_beginAccess();
  v4 = *v3;
  sub_1C5594CF4();
  swift_endAccess();
  return v4;
}

uint64_t sub_1C54225C4@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1C5422500();
}

uint64_t sub_1C5422620(uint64_t *a1)
{
  sub_1C540955C(a1, &v3);
  v2 = v3;

  sub_1C5422688(v2);
}

uint64_t sub_1C5422688(uint64_t a1)
{
  v19 = a1;
  v27 = 0;
  v15 = 0;
  v28 = a1;
  v16 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  v17 = &v26;
  swift_beginAccess();
  v18 = *v16;
  sub_1C5594CF4();
  swift_endAccess();
  v25 = v18;
  v24 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C150);
  sub_1C5429D88();
  v21 = &v25;
  v22 = sub_1C542908C();
  sub_1C541439C();
  if (v22)
  {
    v2 = v14;
    v3 = v15;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    sub_1C5594CF4();
    v12 = &v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 952))(v4, sub_1C5429E10);
    v13 = v3;

    v9 = v13;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C5594CF4();
    v7 = (v14 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
    v8 = &v23;
    swift_beginAccess();
    *v7 = v19;

    swift_endAccess();

    v9 = v15;
  }
}

uint64_t sub_1C5422900(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  sub_1C5594CF4();
  v4 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables);
  swift_beginAccess();
  *v4 = a2;

  swift_endAccess();
}

void (*sub_1C54229A4(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5422454();
  return sub_1C5422B84;
}

void sub_1C5422B84(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5422C40(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5422C40(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5422C40(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C5422D94()
{
  sub_1C55965F4();
  v1 = sub_1C54637B4();

  return v1;
}

void *sub_1C5422E90(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v57 = a1;
  v49 = a2;
  v47 = a3;
  v53 = a4;
  v63 = a5;
  v48 = a6;
  v7 = v6;
  v65 = v7;
  v40 = *v7;
  v83 = 0;
  v82 = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118);
  v41 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v35 - v41;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
  v43 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v35 - v43;
  v45 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v43);
  v72 = &v35 - v45;
  v46 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v45);
  v68 = &v35 - v46;
  v55 = 0;
  v74 = sub_1C5594924();
  v70 = *(v74 - 8);
  v71 = v74 - 8;
  v51 = v70[8];
  v50 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v57);
  v52 = &v35 - v50;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v35 - v15;
  v83 = v14;
  v82 = v16;
  v80 = v17;
  v81 = v53;
  v79 = a5;
  v78 = v18;
  v77 = v65;
  v64 = &qword_1EC160000;
  v19 = v70[7];
  v73 = 1;
  v19(v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB, 1);
  v20 = v55;
  v21 = v65;
  *(v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings) = v55;
  *(v21 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_postBirthdayTask) = v20;
  v54 = 0;
  sub_1C541E120(0, v21 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showGear);
  sub_1C541E120(v73 & 1, v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pickerEnabled);
  sub_1C541E120(v54 & 1, v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pressingRow);
  sub_1C541E120(v54 & 1, v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__doneButtonActive);
  sub_1C541E120(v54 & 1, v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showingBirthdaySheet);
  sub_1C541E120(v54 & 1, v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  v56 = sub_1C5594E24();
  sub_1C5429D08();
  v22 = sub_1C5596424();
  sub_1C54224B8(v22, (v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__cancellables));
  v23 = sub_1C5428020();
  sub_1C5421A5C(v23, (v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter));
  sub_1C5594B14();
  v58 = v70[2];
  v59 = v70 + 2;
  v58(v60, v57, v74);
  v61 = v70[4];
  v62 = v70 + 4;
  v61(v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate, v60, v74);
  MEMORY[0x1E69E5928](a5);
  v24 = sub_1C5421A5C(a5, (v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel));
  v25 = *a5;
  v69 = MEMORY[0x1E69E7D40];
  (*((v25 & *MEMORY[0x1E69E7D40]) + 0x68))(v24);
  v26 = v63;
  v67 = *v65;
  v66 = v65 + v64[23];
  sub_1C541A9D8(v66);
  v27 = sub_1C541BCA8(v68, v66);
  (*((*v26 & *v69) + 0x68))(v27);
  v75 = v70[6];
  v76 = v70 + 6;
  if (v75(v72, v73, v74) == 1)
  {
    v58(v52, v57, v74);
    if (v75(v72, 1, v74) != 1)
    {
      sub_1C541A9D8(v72);
    }
  }

  else
  {
    v61(v52, v72, v74);
  }

  v28 = v63;
  v29 = sub_1C541ACF0(v52, v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday);
  (*((*v28 & *MEMORY[0x1E69E7D40]) + 0x68))(v29);
  v39 = (v75)(v44, 1, v74) != 1;
  v38 = v39;
  sub_1C541A9D8(v44);
  sub_1C541E120(v38, v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__showWarning);
  sub_1C5423BF8(v49, v42);
  sub_1C5429EA0(v42, v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_dateRange);
  MEMORY[0x1E69E5928](v48);
  *(v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider) = v48;
  if ([objc_opt_self() deviceIsiPad])
  {
    v37 = 20.0;
  }

  else
  {
    v37 = 16.0;
  }

  v30 = v65;
  v31 = v53;
  v32 = v47;
  *(v65 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_horizontalPadding) = v37;
  sub_1C541D40C(v32, v31, (v30 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__title));
  sub_1C5424348();
  sub_1C54250DC();
  MEMORY[0x1E69E5920](v48);
  v33 = MEMORY[0x1E69E5920](v63);
  v36 = v70[1];
  v35 = v70 + 1;
  v36(v49, v74, v33);
  (v36)(v57, v74);
  return v65;
}

void sub_1C5423988(void *a1)
{
  v23 = a1;
  v22 = 0;
  v29 = 0;
  v19 = 0;
  v30 = a1;
  v20 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  v21 = &v28;
  swift_beginAccess();
  v25 = *v20;
  v2 = v25;
  swift_endAccess();
  v24 = sub_1C5429F54();
  sub_1C5429FB8();
  v26 = sub_1C5429BE8();

  if (v26)
  {
    v3 = v18;
    v4 = v19;
    KeyPath = swift_getKeyPath();
    v14 = KeyPath;

    v5 = v23;
    v16 = &v10;
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 952))(v6, sub_1C542A038);
    v17 = v4;

    v13 = v17;
  }

  else
  {
    v7 = v23;
    v8 = v23;
    v11 = (v18 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
    v12 = &v27;
    swift_beginAccess();
    v9 = *v11;
    *v11 = v23;

    swift_endAccess();
    v13 = v19;
  }
}

uint64_t sub_1C5423BF8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v34 = a1;
  v15 = "Fatal error";
  v16 = "Unexpectedly found nil while unwrapping an Optional value";
  v17 = "AppleAccountUI/BirthdayPickerRowViewModel.swift";
  v18 = "Range requires lowerBound <= upperBound";
  v19 = "Swift/ClosedRange.swift";
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C178);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v20);
  v22 = &v7 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v7 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v7 - v26;
  v51 = &v7 - v26;
  v30 = 0;
  v38 = sub_1C5594A64();
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v28 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v37 = &v7 - v28;
  v42 = sub_1C5594A74();
  v39 = *(v42 - 8);
  v40 = v42 - 8;
  v29 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v7 - v29;
  v31 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v45 = &v7 - v31;
  v47 = sub_1C5594924();
  v43 = *(v47 - 8);
  v44 = v47 - 8;
  v32 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v34);
  v33 = &v7 - v32;
  v50 = &v7 - v32;
  v49 = v4;
  v48 = v5;
  sub_1C5594A44();
  (*(v35 + 104))(v37, *MEMORY[0x1E6969A68], v38);
  sub_1C5409740();
  v46 = 1;
  sub_1C5594A34();
  (*(v35 + 8))(v37, v38);
  (*(v39 + 8))(v41, v42);
  if ((*(v43 + 48))(v45, v46, v47) == 1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v12 = *(v43 + 32);
  v13 = v43 + 32;
  v12(v33, v45, v47);
  sub_1C542A064();
  if ((sub_1C55964B4() & 1) == 0)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v8 = *(v43 + 16);
  v7 = v43 + 16;
  v8(v24, v33, v47);
  v8(v24 + *(v20 + 48), v34, v47);
  sub_1C542A0E4(v24, v22);
  v9 = v22 + *(v20 + 48);
  (v12)(v27);
  v11 = *(v43 + 8);
  v10 = v43 + 8;
  v11(v9, v47);
  sub_1C542A198(v24, v22);
  v12((v27 + *(v25 + 36)), (v22 + *(v20 + 48)), v47);
  v11(v22, v47);
  sub_1C54297C4(v27, v14);
  sub_1C542A24C(v27);
  return (v11)(v33, v47);
}

uint64_t sub_1C5424348()
{
  v22 = MEMORY[0x1E69E85E0];
  v23 = &unk_1C55AE2B0;
  v29 = 0;
  v28 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v24 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v12 - v24;
  v29 = v0;
  v26 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider);
  MEMORY[0x1E69E5928](v26);
  v27 = [v26 ageRangeCache];
  *&v2 = MEMORY[0x1E69E5920](v26).n128_u64[0];
  if (v27)
  {
    v20 = v27;
    v17 = v27;
    v18 = [v27 ageRangeSettings];
    MEMORY[0x1E69E5920](v17);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v16 = v19;
  if (v19)
  {
    v15 = v16;
    v3 = v21;
    v14 = v16;
    v28 = v16;
    MEMORY[0x1E69E5928](v16);
    (*(*v3 + 368))(v14);
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    v12 = 0;
    v4 = sub_1C5596814();
    (*(*(v4 - 8) + 56))(v25, 1);

    sub_1C55967E4();
    v13 = sub_1C55967D4();
    v5 = swift_allocObject();
    v6 = v22;
    v7 = v21;
    v8 = v12;
    v9 = v25;
    v10 = v23;
    v5[2] = v13;
    v5[3] = v6;
    v5[4] = v7;
    sub_1C54061EC(v8, v8, v9, v10, v5, MEMORY[0x1E69E7CA8] + 8);
  }

  return sub_1C54250DC();
}

uint64_t sub_1C54245FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v4[18] = v4;
  v4[19] = 0;
  v4[21] = 0;
  v5 = sub_1C5594C74();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v4[19] = a4;
  sub_1C55967E4();
  v4[30] = sub_1C55967D4();
  v9 = sub_1C55967A4();
  v4[31] = v9;
  v4[32] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5424738, v9, v6);
}

uint64_t sub_1C5424738()
{
  v1 = *(v0 + 208);
  *(v0 + 144) = v0;
  v4 = *(v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider);
  *(v0 + 264) = v4;
  MEMORY[0x1E69E5928](v4);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1C5424884;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1C8);
  *(v0 + 112) = v3;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_1C5424EE4;
  *(v0 + 104) = &block_descriptor_1;
  [v4 refreshAgeRangeWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C5424884()
{
  v6 = *v0;
  v6[18] = *v0;
  v1 = v6[6];
  v6[34] = v1;
  if (v1)
  {
    v2 = v6[32];
    v3 = v6[31];
    v4 = sub_1C5424AE0;
  }

  else
  {
    v2 = v6[32];
    v3 = v6[31];
    v4 = sub_1C54249EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1C54249EC()
{
  v4 = v0[33];
  v1 = v0[26];
  v0[18] = v0;
  (*(*v1 + 368))(v0[20]);
  MEMORY[0x1E69E5920](v4);

  v2 = *(v0[18] + 8);

  return v2();
}

uint64_t sub_1C5424AE0()
{
  v16 = v0[34];
  v15 = v0[33];
  v14 = v0[29];
  v17 = v0[28];
  v18 = v0[27];
  v0[18] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v15);
  v1 = v16;
  v0[21] = v16;
  v2 = sub_1C54B05F8();
  (*(v17 + 16))(v14, v2, v18);
  v20 = sub_1C5594C54();
  v19 = sub_1C5596954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v21 = sub_1C5596E04();
  if (os_log_type_enabled(v20, v19))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v10 = sub_1C5419DC0(0);
    v11 = sub_1C5419DC0(0);
    *(v13 + 176) = buf;
    *(v13 + 184) = v10;
    *(v13 + 192) = v11;
    sub_1C5419E14(0, (v13 + 176));
    sub_1C5419E14(0, (v13 + 176));
    *(v13 + 200) = v21;
    v12 = swift_task_alloc();
    v12[2] = v13 + 176;
    v12[3] = v13 + 184;
    v12[4] = v13 + 192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, v20, v19, "Encountered error fetching age range cache.", buf, 2u);
    sub_1C5419E74(v10);
    sub_1C5419E74(v11);
    sub_1C5596A54();
  }

  v8 = *(v13 + 272);
  v6 = *(v13 + 232);
  v7 = *(v13 + 216);
  v5 = *(v13 + 224);
  MEMORY[0x1E69E5920](v20);
  (*(v5 + 8))(v6, v7);

  v3 = *(*(v13 + 144) + 8);

  return v3();
}

uint64_t sub_1C5424EE4(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_1C5429990();
    sub_1C542501C(v11, a3, v6);
  }

  else
  {
    MEMORY[0x1E69E5928](a2);
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_1C5596E44();
      __break(1u);
    }

    v12 = v7;
    v3 = sub_1C5429990();
    sub_1C5425080(v11, &v12, v3);
  }

  MEMORY[0x1E69E5920](a3);
  return MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1C542501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E4F0);
  return sub_1C542AC5C(v7, a1, a3, v3);
}

uint64_t sub_1C54250DC()
{
  v5 = sub_1C542A3C8;
  v15 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E450);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v15 = v0;
  v4 = sub_1C5421AB4();
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x80))();
  MEMORY[0x1E69E5920](v4);
  v6 = swift_allocObject();

  swift_weakInit();

  sub_1C542A3D0();
  v13 = sub_1C5594EB4();

  (*(v7 + 8))(v9, v10);
  v11 = v14;
  v12 = sub_1C54229A4(v14);
  sub_1C5594E14();
  v12();
}

uint64_t sub_1C54252E0(const void *a1, uint64_t a2)
{
  v42 = a1;
  v40 = a2;
  v31 = MEMORY[0x1E69E85E0];
  v41 = 0;
  v32 = &unk_1C55AE448;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v21 - v33;
  v35 = sub_1C5594924();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v21 - v38;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8);
  v44 = v43;
  v45 = *(v43 + 64);
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v21 - v46;
  v48 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v49 = &v21 - v48;
  v56 = v5;
  v50 = v6 + 16;
  v55 = v6 + 16;
  v51 = &v54;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v30 = Strong;
    v8 = Strong;
    v27 = Strong;
    v53 = Strong;
    sub_1C5429288(v42, v49);
    v9 = (*(*v8 + 320))(v49);
    (*(*v27 + 312))(v9);

    v28 = *(v36 + 48);
    v29 = v36 + 48;
    if (v28(v47, 1, v35) == 1)
    {
      (*(v36 + 16))(v39, v27 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate, v35);
      if (v28(v47, 1, v35) != 1)
      {
        sub_1C541A9D8(v47);
      }
    }

    else
    {
      (*(v36 + 32))(v39, v47, v35);
    }

    v10 = v27;

    (*(*v10 + 272))(v39);
    v25 = 0;
    v11 = sub_1C5596814();
    (*(*(v11 - 8) + 56))(v34, 1);
    sub_1C5429288(v42, v49);

    sub_1C55967E4();
    v22 = sub_1C55967D4();
    v23 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v24 = (v23 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    v13 = v31;
    v14 = v23;
    v15 = v12;
    v16 = v49;
    v26 = v15;
    *(v15 + 16) = v22;
    *(v15 + 24) = v13;
    sub_1C54295D8(v16, (v15 + v14));
    v17 = v25;
    v18 = v34;
    v19 = v32;
    v20 = v26;
    *(v26 + v24) = v27;
    sub_1C54061EC(v17, v17, v18, v19, v20, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1C5425874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_1C55967E4();
  v5[7] = sub_1C55967D4();
  v8 = sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C542593C, v8, v6);
}

uint64_t sub_1C542593C()
{
  v5 = *(v0 + 40);
  *(v0 + 16) = v0;
  v1 = sub_1C5594924();
  if ((*(*(v1 - 8) + 48))(v5, 1) == 1)
  {
    (*(**(v4 + 48) + 728))(0);
  }

  else
  {
    (*(**(v4 + 48) + 728))(1);
  }

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1C5425AF8(uint64_t a1)
{
  v66 = a1;
  v61 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v72 = 0;
  v71 = 0;
  v53 = sub_1C5594C74();
  v54 = *(v53 - 8);
  v55 = v54;
  MEMORY[0x1EEE9AC00](0);
  v56 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C5594924();
  v58 = *(v57 - 8);
  v59 = v58;
  MEMORY[0x1EEE9AC00](v61);
  v60 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1C55946F4();
  v63 = *(v62 - 8);
  v64 = v63;
  MEMORY[0x1EEE9AC00](v61);
  v65 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v65;
  v67 = sub_1C5594A74();
  v68 = *(v67 - 8);
  v69 = v68;
  v5 = MEMORY[0x1EEE9AC00](v66);
  v70 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v70;
  v79 = v5;
  v78 = v1;
  v77 = (*(*v1 + 360))();
  if (v77)
  {
    v48 = v77;
    v7 = v77;
    sub_1C5401EF8(&v77);
    v49 = [v48 u13Limit];

    v50 = v49;
    v51 = 0;
  }

  else
  {
    sub_1C5401EF8(&v77);
    v50 = 0;
    v51 = 1;
  }

  v47 = v50;
  if (v51)
  {
    v11 = v56;
    v12 = sub_1C54B05F8();
    (*(v55 + 16))(v11, v12, v53);
    v36 = sub_1C5594C54();
    v33 = v36;
    v35 = sub_1C5596954();
    v34 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v37 = sub_1C5596E04();
    if (os_log_type_enabled(v36, v35))
    {
      v32 = v52;
      v24 = sub_1C5596A74();
      v20 = v24;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v22 = 0;
      v25 = sub_1C5419DC0(0);
      v23 = v25;
      v26 = sub_1C5419DC0(v22);
      v76 = v24;
      v75 = v25;
      v74 = v26;
      v27 = 0;
      v28 = &v76;
      sub_1C5419E14(0, &v76);
      sub_1C5419E14(v27, v28);
      v73 = v37;
      v29 = v16;
      MEMORY[0x1EEE9AC00](v16);
      v30 = &v16[-6];
      v16[-4] = v13;
      v16[-3] = &v75;
      v16[-2] = &v74;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      v14 = v32;
      sub_1C55966B4();
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v33, v34, "BirthdayPickerRowViewModel - Missing age range settings.", v20, 2u);
        v19 = 0;
        sub_1C5419E74(v23);
        sub_1C5419E74(v26);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    (*(v55 + 8))(v56, v53);
    sub_1C542A458();
    v16[1] = 0;
    v17 = 0;
    v18 = swift_allocError();
    swift_willThrow();
    return v17;
  }

  else
  {
    v46 = v47;
    v40 = v47;
    v72 = v47;
    sub_1C5594A44();
    v42 = sub_1C5594A64();
    v41 = sub_1C5596E04();
    (*(*(v42 - 8) + 104))(v8, *MEMORY[0x1E6969A68]);
    v9 = v41;
    sub_1C540FCD8();
    v43 = v9;
    sub_1C542A64C();
    v44 = sub_1C5596874();
    sub_1C5594914();
    sub_1C55949F4();
    (*(v59 + 8))(v60, v57);

    v45 = sub_1C55946E4();
    if ((v10 & 1) != 0 || (v39 = v45, v71 = v39, v39 >= v40))
    {
      (*(v64 + 8))(v65, v62);
      (*(v69 + 8))(v70, v67);
      v38 = 0;
    }

    else
    {
      (*(v64 + 8))(v65, v62);
      (*(v69 + 8))(v70, v67);
      v38 = 1;
    }

    return v38 & 1;
  }
}

uint64_t sub_1C5426418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v39 = a1;
  v13 = "Fatal error";
  v14 = "Unexpectedly found nil while unwrapping an Optional value";
  v15 = "AppleAccountUI/BirthdayPickerRowViewModel.swift";
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
  v16 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v11 - v16;
  v59 = 0;
  v17 = sub_1C55946F4();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v11 - v20;
  v68 = &v11 - v20;
  v21 = (*(*(sub_1C5594AA4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v50 = &v11 - v21;
  v47 = sub_1C55949D4();
  v27 = *(v47 - 8);
  v28 = v47 - 8;
  v22 = (v27[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v46 = &v11 - v22;
  v56 = sub_1C5594A74();
  v41 = *(v56 - 8);
  v42 = v56 - 8;
  v25 = v41[8];
  v23 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v11 - v23;
  v67 = &v11 - v23;
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v55 = &v11 - v24;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v29 = &v11 - v6;
  v66 = &v11 - v6;
  v65 = v39;
  v64 = v26;
  v43 = MEMORY[0x1E6969868];
  v7 = *MEMORY[0x1E6969868];
  v45 = v27[13];
  v44 = v27 + 13;
  v45(v5, v7);
  sub_1C55949E4();
  v49 = v27[1];
  v48 = v27 + 1;
  v49(v46, v47);
  sub_1C5594A94();
  sub_1C5594A54();
  v53 = v41[2];
  v52 = v41 + 2;
  v53(v55, v29, v56);
  v37 = sub_1C5594A64();
  v36 = sub_1C5596E04();
  v33 = v8;
  v30 = *(v37 - 8);
  v31 = v37 - 8;
  v35 = *(v30 + 104);
  v34 = v30 + 104;
  v35();
  v32 = *(v30 + 72);
  (v35)(v33 + v32, *MEMORY[0x1E6969A78], v37);
  (v35)(v33 + 2 * v32, *MEMORY[0x1E6969A48], v37);
  v9 = v36;
  sub_1C540FCD8();
  v38 = v9;
  sub_1C542A64C();
  v40 = sub_1C5596874();
  sub_1C5594A04();

  v58 = v41[1];
  v57 = v41 + 1;
  v58(v55, v56);
  (v45)(v46, *v43, v47);
  sub_1C55949E4();
  v49(v46, v47);
  sub_1C5426C34(v50);
  sub_1C5594A54();
  v53(v55, v51, v56);
  sub_1C5594A24();
  v58(v55, v56);
  v61 = sub_1C5594924();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  if ((*(v62 + 48))(v60, 1) == 1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  (*(v62 + 32))(v12, v60, v61);
  v58(v51, v56);
  (*(v18 + 8))(v54, v17);
  return (v58)(v29, v56);
}

uint64_t sub_1C5426C34@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1C0);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v3 - v5;
  v6 = 0;
  sub_1C5594A84();
  v8 = sub_1C5594AA4();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  result = (*(v9 + 48))(v7, 1);
  if (result != 1)
  {
    return (*(v9 + 32))(v4, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5426D5C(uint64_t a1)
{
  *(v2 + 184) = v1;
  *(v2 + 176) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 304) = 0;
  v3 = sub_1C5594C74();
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5426EBC, 0, 0);
}

uint64_t sub_1C5426EBC()
{
  v1 = v0[23];
  v2 = v0[22];
  v0[2] = v0;
  v40 = (*(*v1 + 864))(v2);
  *(v39 + 304) = (v40 & 1) == 0;
  if (v40)
  {
    v12 = *(v39 + 216);
    v22 = *(v39 + 192);
    v21 = *(v39 + 200);
    v13 = sub_1C54B05F8();
    (*(v21 + 16))(v12, v13, v22);
    oslog = sub_1C5594C54();
    v23 = sub_1C5596934();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v25 = sub_1C5596E04();
    if (os_log_type_enabled(oslog, v23))
    {
      buf = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v18 = sub_1C5419DC0(0);
      v19 = sub_1C5419DC0(0);
      *(v39 + 80) = buf;
      *(v39 + 88) = v18;
      *(v39 + 96) = v19;
      sub_1C5419E14(0, (v39 + 80));
      sub_1C5419E14(0, (v39 + 80));
      *(v39 + 104) = v25;
      v20 = swift_task_alloc();
      v20[2] = v39 + 80;
      v20[3] = v39 + 88;
      v20[4] = v39 + 96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, oslog, v23, "BirthdayPickerRowViewModel - Skip clearing. DOB is not U13", buf, 2u);
      sub_1C5419E74(v18);
      sub_1C5419E74(v19);
      sub_1C5596A54();
    }

    v15 = *(v39 + 216);
    v16 = *(v39 + 192);
    v14 = *(v39 + 200);
    MEMORY[0x1E69E5920](oslog);
    (*(v14 + 8))(v15, v16);

    v10 = *(*(v39 + 16) + 8);
  }

  else
  {
    v3 = *(v39 + 232);
    v35 = *(v39 + 192);
    v34 = *(v39 + 200);
    v4 = sub_1C54B05F8();
    v5 = *(v34 + 16);
    *(v39 + 240) = v5;
    *(v39 + 248) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v3, v4, v35);
    v37 = sub_1C5594C54();
    v36 = sub_1C5596934();
    *(v39 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v38 = sub_1C5596E04();
    if (os_log_type_enabled(v37, v36))
    {
      v30 = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v31 = sub_1C5419DC0(0);
      v32 = sub_1C5419DC0(0);
      *(v39 + 144) = v30;
      *(v39 + 152) = v31;
      *(v39 + 160) = v32;
      sub_1C5419E14(0, (v39 + 144));
      sub_1C5419E14(0, (v39 + 144));
      *(v39 + 168) = v38;
      v33 = swift_task_alloc();
      v33[2] = v39 + 144;
      v33[3] = v39 + 152;
      v33[4] = v39 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, v37, v36, "BirthdayPickerRowViewModel - Attempting to clear DOB", v30, 2u);
      sub_1C5419E74(v31);
      sub_1C5419E74(v32);
      sub_1C5596A54();
    }

    *(v39 + 264) = 0;
    v27 = *(v39 + 232);
    v28 = *(v39 + 192);
    v26 = *(v39 + 200);
    MEMORY[0x1E69E5920](v37);
    v6 = *(v26 + 8);
    *(v39 + 272) = v6;
    *(v39 + 280) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v27, v28);
    v7 = sub_1C5421AB4();
    *(v39 + 288) = v7;
    v8 = *((*v7 & *MEMORY[0x1E69E7D40]) + 0xD8);
    v29 = (v8 + *v8);
    v9 = swift_task_alloc();
    v10 = v29;
    *(v39 + 296) = v9;
    *v9 = *(v39 + 16);
    v9[1] = sub_1C5427B08;
  }

  return v10();
}

uint64_t sub_1C5427B08()
{
  v2 = *(*v0 + 288);
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C5427C40, 0, 0);
}

uint64_t sub_1C5427C40()
{
  v15 = v0[30];
  v1 = v0[28];
  v14 = v0[24];
  v0[2] = v0;
  v2 = sub_1C54B05F8();
  v15(v1, v2, v14);
  v17 = sub_1C5594C54();
  v16 = sub_1C5596934();
  v18 = sub_1C5596E04();
  if (os_log_type_enabled(v17, v16))
  {
    v3 = *(v13 + 264);
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v10 = sub_1C5419DC0(0);
    v11 = sub_1C5419DC0(0);
    *(v13 + 112) = buf;
    *(v13 + 120) = v10;
    *(v13 + 128) = v11;
    sub_1C5419E14(0, (v13 + 112));
    sub_1C5419E14(0, (v13 + 112));
    *(v13 + 136) = v18;
    v12 = swift_task_alloc();
    v12[2] = v13 + 112;
    v12[3] = v13 + 120;
    v12[4] = v13 + 128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    if (v3)
    {
    }

    _os_log_impl(&dword_1C5355000, v17, v16, "BirthdayPickerRowViewModel - Cleared pending DOB", buf, 2u);
    sub_1C5419E74(v10);
    sub_1C5419E74(v11);
    sub_1C5596A54();
  }

  else
  {
  }

  v8 = *(v13 + 272);
  v6 = *(v13 + 224);
  v7 = *(v13 + 192);
  MEMORY[0x1E69E5920](v17);
  v8(v6, v7);

  v5 = *(*(v13 + 16) + 8);

  return v5();
}

id sub_1C5428020()
{
  sub_1C5429F54();
  v1 = sub_1C5404B48();
  [v1 setDateStyle_];
  [v1 setTimeStyle_];
  return v1;
}

uint64_t sub_1C5428094()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54280FC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C54281E8()
{
  swift_getKeyPath();
  (*(*v0 + 944))();

  v3 = (v2 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_1C54282B4@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1C54281E8();
}

uint64_t sub_1C5428310(void *a1)
{
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);

  sub_1C5423988(v2);
}

uint64_t sub_1C542838C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a2);
  v5 = (a1 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a2;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a2);
}

void (*sub_1C5428450(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 944))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5428184();
  return sub_1C5428630;
}

void sub_1C5428630(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54286EC(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54286EC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54286EC(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5429194();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C5428828()
{
  v13 = 0;
  v6 = sub_1C5594924();
  v4 = *(v6 - 8);
  v5 = v6 - 8;
  v3[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = v3 - v3[0];
  v13 = v0;
  v9 = sub_1C54281E8();
  (*(*v3[1] + 264))();
  v8 = sub_1C55948E4();
  (*(v4 + 8))(v7, v6);
  v10 = [v9 stringFromDate_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  v11 = sub_1C5596574();
  v12 = v1;
  MEMORY[0x1E69E5920](v10);
  return v11;
}

uint64_t sub_1C54289AC()
{
  v10 = v0;
  v3 = sub_1C54229A4(v9);
  sub_1C5594E24();
  sub_1C5429D08();
  sub_1C5428BEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C150);
  sub_1C5596894();
  v3();
  v4 = OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__selectedBirthday;
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 8);
  v6(v8 + v4);
  sub_1C541A9D8(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingDOB);
  sub_1C542A24C(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_dateRange);
  sub_1C5401EF8((v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__ageRangeSettings));
  sub_1C5401ECC();
  MEMORY[0x1E69E5920](*(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_ageSettingsProvider));
  sub_1C5410D10();
  (v6)(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_serverBirthdate, v5);
  MEMORY[0x1E69E5920](*(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__pendingBirthdayModel));
  sub_1C541439C();
  MEMORY[0x1E69E5920](*(v8 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel__dateFormatter));
  v7 = OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(v8 + v7);
  return v8;
}

uint64_t sub_1C5428C68@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5428CD4(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1C5594B24();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1C5429194();
  sub_1C5594AE4();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C5428E44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1C5594B24();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1C5429194();
  v8 = v22;
  sub_1C5594AD4();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

unint64_t sub_1C54290E8()
{
  v2 = qword_1EC15C100;
  if (!qword_1EC15C100)
  {
    sub_1C5594924();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429194()
{
  v2 = qword_1EC15C108;
  if (!qword_1EC15C108)
  {
    type metadata accessor for BirthdayPickerRowViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C108);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for BirthdayPickerRowViewModel()
{
  v1 = qword_1EC160380;
  if (!qword_1EC160380)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1C5429288(const void *a1, void *a2)
{
  v6 = sub_1C5594924();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1C54293B0(const void *a1, void *a2)
{
  v7 = sub_1C5594924();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void *sub_1C54295D8(const void *a1, void *a2)
{
  v6 = sub_1C5594924();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C5429700()
{
  v2 = qword_1EC15C110;
  if (!qword_1EC15C110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E370);
    sub_1C54290E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54297C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118);
  (v6)(a2 + *(v2 + 36), a1 + *(v2 + 36), v5);
  return a2;
}

unint64_t sub_1C5429878()
{
  v2 = qword_1EC15C128;
  if (!qword_1EC15C128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C120);
    sub_1C5429910();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429910()
{
  v2 = qword_1EC15C130;
  if (!qword_1EC15C130)
  {
    sub_1C5429990();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429990()
{
  v2 = qword_1EC15C138;
  if (!qword_1EC15C138)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C138);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5429B70()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_1C5596E54();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

unint64_t sub_1C5429C5C()
{
  v2 = qword_1EC15C140;
  if (!qword_1EC15C140)
  {
    type metadata accessor for PendingBirthdayModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C140);
    return WitnessTable;
  }

  return v2;
}