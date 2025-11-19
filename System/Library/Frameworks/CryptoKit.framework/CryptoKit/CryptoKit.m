uint64_t sub_1A78BD2F4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  result = a1();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = swift_allocObject();
    getDigestSizeForDigestInfo();
    v10 = swift_slowAlloc();
    result = ccdigest_init();
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A78BD37C()
{
  result = qword_1ED5F8C10[0];
  if (!qword_1ED5F8C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5F8C10);
  }

  return result;
}

unint64_t sub_1A78BD3E0(uint64_t a1)
{
  result = sub_1A78BD37C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A78BD504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v14 = swift_allocObject();
    v12 = *(v11 + 16);
    *(v14 + 16) = v12;
    DigestSizeForDigestInfo = getDigestSizeForDigestInfo();
    v16 = swift_slowAlloc();
    if ((DigestSizeForDigestInfo & 0x8000000000000000) != 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6F340](v16, v17, v18, v19);
    }

    v13 = v16;
    memmove(v16, *(v11 + 24), DigestSizeForDigestInfo);
    *(v14 + 24) = v13;

    *v4 = v14;
  }

  if (a1)
  {
    v18 = a2 - a1;
  }

  else
  {
    v18 = 0;
  }

  v16 = v12;
  v17 = v13;
  v19 = a1;

  return MEMORY[0x1EEE6F340](v16, v17, v18, v19);
}

uint64_t sub_1A78BD5E8@<X0>(void (*a1)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A793DB28();
  *(v5 + 16) = 32;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  v6 = *(v2 + 24);
  ccdigest_final(*(v2 + 16));
  a1(v9, v5 + 32, v5 + 32 + *(v5 + 16));
  if (v10)
  {
    __break(1u);
    sub_1A793DB18();
    result = MEMORY[0x1AC55E410](0);
    __break(1u);
  }

  else
  {

    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t sub_1A78BD6B8()
{
  MEMORY[0x1AC55E570](*(v0 + 24), -1, -1);

  return swift_deallocClassInstance();
}

void *sub_1A78BD6F8@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1A78BD750(a1);
}

void *sub_1A78BD750@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1A78C4894(a1);
}

uint64_t sub_1A78BD7E4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  result = a1();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = swift_allocObject();
    getDigestSizeForDigestInfo();
    v10 = swift_slowAlloc();
    result = ccdigest_init();
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A78BD87C(uint64_t a1)
{
  result = sub_1A78BD8A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A78BD8A4()
{
  result = qword_1ED5F88D0;
  if (!qword_1ED5F88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F88D0);
  }

  return result;
}

uint64_t sub_1A78BD934@<X0>(void *a1@<X8>)
{
  v3 = sub_1A793DB28();
  *(v3 + 16) = 16;
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  v4 = *(v1 + 24);
  ccdigest_final(*(v1 + 16));
  sub_1A78BD9E4((v3 + 32), v3 + 32 + *(v3 + 16), v8);
  if (v9)
  {
    __break(1u);
    sub_1A793DB18();
    result = MEMORY[0x1AC55E410](0);
    __break(1u);
  }

  else
  {
    v6 = v8[0];
    v5 = v8[1];

    *a1 = v6;
    a1[1] = v5;
  }

  return result;
}

__int128 *sub_1A78BD9E4@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = a2 - result == 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  v5 = 0uLL;
  if (v3)
  {
    v5 = *result;
  }

  *a3 = v5;
  *(a3 + 16) = v4;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__int128 *sub_1A78BDA88@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78BDAD4(a1, a2, a3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *sub_1A78BDAD4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78BDB20(a1, a2, a3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *sub_1A78BDB20@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = a2 - result == 32;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  v5 = 0uLL;
  v6 = 0uLL;
  if (v3)
  {
    v5 = *result;
    v6 = result[1];
  }

  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v4;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A78BDB94(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1A78BDC10(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A78BDC10(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1A78BDC84@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1A78BDCDC(a1);
}

void *sub_1A78BDCDC@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1A78BDD34(a1);
}

void *sub_1A78BDD34@<X0>(void *a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  result = sub_1A78BDB94(v6, v7);
  *a1 = result;
  a1[1] = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78BDDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, a2);
  v14 = *(*(*(a3 + 8) + 8) + 8);
  v15 = sub_1A793DB38();
  sub_1A78BDFE0(v15, v15 + 32, 0, (2 * *(v15 + 16)) | 1, v22);
  if (v5)
  {
    (*(v11 + 8))(a1, a2);
  }

  else
  {

    sub_1A78BF578(v22, 0x30u, v23);
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = swift_unknownObjectRetain();
    v21 = a4(v20, v17, v18, v19);
    sub_1A78C5F48(v23);
    result = (*(v11 + 8))(a1, a2);
    *a5 = v21;
  }

  return result;
}

void sub_1A78BDFE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A78BE1A8(a1, a2, a3, a4);
  if (!v5)
  {
    v37[6] = 0;
    v27 = v7;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    sub_1A78BEAAC(v31);
    v11 = v31[0];
    if ((v31[0] & 0x20) != 0)
    {
      v26 = v31[0];
      v19 = v30 >> 1;
      v20 = v29;
      if (v29 != v30 >> 1)
      {
        if (v29 <= (v30 >> 1))
        {
          v21 = v30 >> 1;
        }

        else
        {
          v21 = v29;
        }

        v22 = (v28 + 48 * v29 + 8);
        v20 = v29;
        while (1)
        {
          if (v21 == v20)
          {
            __break(1u);
            goto LABEL_25;
          }

          if (v32 >= *v22)
          {
            break;
          }

          ++v20;
          v22 += 6;
          if (v19 == v20)
          {
            v20 = v30 >> 1;
            break;
          }
        }

        if (v20 < v29)
        {
          goto LABEL_27;
        }
      }

      if (v19 < v29)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v19 < v20)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v20 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (__OFSUB__(v20, v29))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v23 = v30 & 1 | (2 * v20);
      sub_1A78BE7F0(v20 - v29, v27, v28, v29, v30);
      v17 = v24;
      v18 = v25;
      sub_1A78BF4E8(v27, v28, v29, v23, v32, v37);
      v12 = v37[0];
      v15 = v37[1];
      v14 = v37[2];
      v13 = v37[3];
      v16 = v37[4];
      swift_unknownObjectRetain();
      v11 = v26;
    }

    else
    {
      v12 = v33;
      if (!v33)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v14 = v35;
      v13 = v36;
      v15 = v34;
      swift_unknownObjectRetain();
      v16 = 0;
      v17 = v29;
      v18 = v30;
    }

    if (__OFSUB__(v18 >> 1, v17))
    {
LABEL_25:
      __break(1u);
    }

    else if (v18 >> 1 == v17)
    {
      swift_unknownObjectRelease();
      *a5 = v11;
      *(a5 + 8) = v12;
      *(a5 + 16) = v15;
      *(a5 + 24) = v14;
      *(a5 + 32) = v13;
      *(a5 + 40) = v16;
      *(a5 + 48) = (v11 & 0x20) == 0;
      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }
}

void sub_1A78BE1A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v7 = sub_1A78BE2B8(0, 16, 0, MEMORY[0x1E69E7CC0]);
  sub_1A78BE448(v8, 1, &v7);
  if (v4)
  {

LABEL_7:
    swift_unknownObjectRelease();
    return;
  }

  if (!__OFSUB__(v10 >> 1, v9))
  {
    if (v10 >> 1 == v9)
    {
      v5 = (2 * *(v7 + 2)) | 1;
      swift_unknownObjectRelease();
      return;
    }

    sub_1A78D6B80();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1A78BE2B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7648, &unk_1A7942D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A78BE3D8@<X0>(void *a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  result = sub_1A78BDB94(&v5, v6);
  *a1 = result;
  a1[1] = 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A78BE448(char *a1, uint64_t a2, char **a3)
{
  if (a2 > 10)
  {
    goto LABEL_2;
  }

  v9 = sub_1A78BE7A8();
  if ((v9 & 0x100) != 0)
  {
LABEL_8:
    sub_1A78D6B80();
    swift_allocError();
    v5 = 5;
    goto LABEL_9;
  }

  v10 = v9;
  if ((~v9 & 0x1F) != 0)
  {
    sub_1A78BE8DC();
    if (v3)
    {
      return;
    }

    if (v13)
    {
      goto LABEL_8;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_2:
      sub_1A78D6B80();
      swift_allocError();
      v5 = 3;
LABEL_9:
      *v4 = v5;
      goto LABEL_10;
    }

    v14 = *a1;
    v47 = *(a1 + 1);
    v15 = *(a1 + 2);
    v43 = *(a1 + 3);
    v16 = v12;
    v17 = sub_1A78BE7F8(v12, v14, v47, v15, v43);
    v19 = v18;
    v42 = v17;
    v44[0] = v17;
    v44[1] = v20;
    v41 = v20;
    v45 = v21;
    v46 = v18;
    v22 = v15;
    v23 = v21;
    *a1 = sub_1A78BE7F0(v16, v14, v47, v22, v43);
    *(a1 + 1) = v24;
    *(a1 + 2) = v25;
    *(a1 + 3) = v26;
    if (!__OFSUB__(v19 >> 1, v23))
    {
      if ((v19 >> 1) - v23 != v16)
      {
        sub_1A78D6B80();
        swift_allocError();
        *v33 = 5;
        swift_willThrow();
        swift_unknownObjectRetain();
LABEL_29:
        swift_unknownObjectRelease();
        return;
      }

      v14 = v19;
      a1 = *a3;
      swift_unknownObjectRetain();
      if ((v10 & 0x20) == 0)
      {
        swift_unknownObjectRetain();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_17:
          v27 = a3;
          v28 = a2;
          v29 = v41;
          v31 = *(a1 + 2);
          v30 = *(a1 + 3);
          if (v31 >= v30 >> 1)
          {
            v39 = sub_1A78BE2B8((v30 > 1), v31 + 1, 1, a1);
            v29 = v41;
            v28 = a2;
            v27 = a3;
            a1 = v39;
          }

          *(a1 + 2) = v31 + 1;
          v32 = &a1[48 * v31];
          v32[32] = v10;
          *(v32 + 5) = v28;
          *(v32 + 6) = v42;
          *(v32 + 7) = v29;
          *(v32 + 8) = v23;
          *(v32 + 9) = v14;
          *v27 = a1;
          goto LABEL_29;
        }

LABEL_32:
        a1 = sub_1A78BE2B8(0, *(a1 + 2) + 1, 1, a1);
        goto LABEL_17;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_1A78BE2B8(0, *(a1 + 2) + 1, 1, a1);
      }

      v34 = a3;
      v35 = a2;
      v37 = *(a1 + 2);
      v36 = *(a1 + 3);
      if (v37 >= v36 >> 1)
      {
        v40 = sub_1A78BE2B8((v36 > 1), v37 + 1, 1, a1);
        v35 = a2;
        v34 = a3;
        a1 = v40;
      }

      *(a1 + 2) = v37 + 1;
      v38 = &a1[48 * v37];
      v38[32] = v10;
      *(v38 + 5) = v35;
      *(v38 + 3) = 0u;
      *(v38 + 4) = 0u;
      *v34 = a1;
      while (!__OFSUB__(v46 >> 1, v45))
      {
        if (((v46 >> 1) - v45) < 1)
        {
          goto LABEL_29;
        }

        sub_1A78BE448(v44, a2 + 1, a3);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  sub_1A78D6B80();
  swift_allocError();
  *v11 = 0;
LABEL_10:
  swift_willThrow();
}

uint64_t sub_1A78BE7A8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  return v3 | ((v1 == v2) << 8);
}

unint64_t sub_1A78BE7F8(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1A78BE870(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1A78BE8DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v3 >> 1;
  if (v2 == v3 >> 1)
  {
    return;
  }

  if (v2 >= (v3 >> 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v5 = *v0;
  v6 = v0[1];
  v7 = *(v6 + v2);
  v8 = v2 + 1;
  v0[2] = v2 + 1;
  if (v7 == 128)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v9 = 6;
    swift_willThrow();
    return;
  }

  if ((v7 & 0x80) != 0)
  {
    v10 = __OFSUB__(v4, v8);
    v11 = v4 - v8;
    if (v10)
    {
      goto LABEL_16;
    }

    v12 = v7 & 0x7F;
    if (v11 >= v12)
    {
      sub_1A78BE7F8(v7 & 0x7F, v5, v6, v2 + 1, v3);
      v14 = v13;
      v24 = v15;
      v17 = v16;
      *v0 = sub_1A78BE7F0(v12, v5, v6, v8, v3);
      v0[1] = v18;
      v0[2] = v19;
      v0[3] = v20;
      swift_unknownObjectRetain();
      v21 = swift_unknownObjectRetain();
      sub_1A791FFF0(v21, v14, v24, v17);
      if (!v1 && (v22 <= 0x7F || v12 > (71 - __clz(v22)) >> 3))
      {
        sub_1A78D6B80();
        swift_allocError();
        *v23 = 6;
        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1A78BEAAC(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    __break(1u);
  }

  else if (v2 < v3)
  {
    v4 = v1[1] + 48 * v2;
    v5 = *(v4 + 40);
    *a1 = *v4;
    *(a1 + 8) = *(v4 + 8);
    v6 = *(v4 + 24);
    v1[2] = v2 + 1;
    *(a1 + 24) = v6;
    *(a1 + 40) = v5;
    return;
  }

  __break(1u);
}

uint64_t sub_1A78BEB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = v4[1];
  v13[0] = *v4;
  v13[1] = v7;
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7908, &qword_1A7945470);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7910, &qword_1A7945478);
  result = sub_1A78BECA0(v13, a4, v14, v8, v9, a3, MEMORY[0x1E69E7288], &v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA256Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78BEB00(a1, a2, a3, sub_1A78BEC44);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78BEC5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  if (a1)
  {
    v8 = a1 + 32;
  }

  else
  {
    v8 = 0;
  }

  result = v6(a1, v8);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1A78BECA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t Insecure.MD5Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = *v3;
  v12 = a3;
  v13 = a1;
  v14 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7930, &qword_1A7945498);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7910, &qword_1A7945478);
  result = sub_1A78BECA0(&v10, sub_1A78BEEAC, v11, v5, v6, a3, MEMORY[0x1E69E7288], &v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78BEEAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  if (a1)
  {
    v8 = a1 + 16;
  }

  else
  {
    v8 = 0;
  }

  result = v6(a1, v8);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1A78BEEF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = a1();
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = swift_allocObject();
    getDigestSizeForDigestInfo();
    v10 = swift_slowAlloc();
    result = ccdigest_init();
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78BEFA0@<X0>(char a1@<W1>, char **a2@<X8>)
{
  sub_1A78BF874(v19);
  if (v23 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v7 = 3;
    return swift_willThrow();
  }

  if (v19[0] != a1 || (v23 & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_1A78C2ADC(v19, &qword_1EB2A6F38, &qword_1A793F4B0);
  }

  v16 = v20;
  v17 = v21;
  v18 = v22;
  sub_1A78BF874(v24);
  if (v25 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v31[0] = v24[0];
  v31[1] = v24[1];
  v31[2] = v24[2];
  v32 = v25;
  sub_1A78BF9FC(v19, v15, &qword_1EB2A6F38, &qword_1A793F4B0);
  sub_1A78BF9FC(v19, v15, &qword_1EB2A6F38, &qword_1A793F4B0);
  v8 = sub_1A78BFB00(v31, 6);
  if (v2)
  {
    sub_1A78C2ADC(v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    return swift_unknownObjectRelease();
  }

  v10 = v8;
  sub_1A78BF874(v26);
  if (v27 == 255)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v29[0] = v26[0];
    v29[1] = v26[1];
    v29[2] = v26[2];
    v30 = v27;
    v15[0] = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
    sub_1A78C6284(v29[0], v15, v29);
    sub_1A78C2ADC(v26, &qword_1EB2A6F38, &qword_1A793F4B0);
    v11 = v15[0];
    v12 = v15[0] + 32;
    v13 = (2 * *(v15[0] + 16)) | 1;
  }

  sub_1A78BF874(v28);
  if (v28[48] != 255)
  {
    sub_1A78C2ADC(v28, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78D6B80();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    sub_1A78C2ADC(v19, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78C2ADC(v19, &qword_1EB2A6F38, &qword_1A793F4B0);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  sub_1A78C2ADC(v19, &qword_1EB2A6F38, &qword_1A793F4B0);
  sub_1A78C2ADC(v19, &qword_1EB2A6F38, &qword_1A793F4B0);
  result = swift_unknownObjectRelease();
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = 0;
  a2[4] = v13;
  return result;
}

void sub_1A78BF380(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1A78BF36C(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v16 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1A78BF4E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a4 >> 1;
  if (a3 <= (a4 >> 1))
  {
    v7 = a4 >> 1;
  }

  else
  {
    v7 = a3;
  }

  v8 = v7 - a3 + 1;
  v9 = (48 * a3) | 8;
  v10 = v6 - a3;
  do
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    if (!--v8)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v11 = *(a2 + v9);
    v9 += 48;
    --v10;
  }

  while (v11 > a5);
  __break(1u);
LABEL_9:
  if (v6 == a3)
  {
LABEL_13:
    *a6 = result;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = a4;
    a6[4] = a5;
    return result;
  }

  if (v6 <= a3)
  {
    goto LABEL_15;
  }

  if (__OFADD__(a5, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a2 + 48 * a3 + 8) == a5 + 1)
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1A78BF578@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if (*a1 != a2 || (a1[48] & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_1A78BF494(a1);
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v23 = *(a1 + 8);
  v24 = v9;
  v25 = v8;
  sub_1A78BF80C(a1, &v18);
  swift_unknownObjectRetain();
  sub_1A78BEFA0(48, v26);
  if (v3)
  {
    goto LABEL_8;
  }

  sub_1A78BF874(v27);
  if (v28 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v33 = *v26;
    sub_1A78D6BD4(&v33);
    v32[0] = *&v26[8];
    v32[1] = *&v26[24];
    sub_1A78C2ADC(v32, &qword_1EB2A6F30, &qword_1A793F4A8);
LABEL_8:
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    return swift_unknownObjectRelease();
  }

  v30[0] = v27[0];
  v30[1] = v27[1];
  v30[2] = v27[2];
  v31 = v28;
  v10 = sub_1A78C5B9C(v30, 3u);
  v18 = *v26;
  v19 = *&v26[16];
  *&v20 = *&v26[32];
  *(&v20 + 1) = v10;
  *&v21 = v11;
  *(&v21 + 1) = v12;
  v22 = v13;
  sub_1A78BF874(v29);
  if (v29[48] != 255)
  {
    sub_1A78C2ADC(v29, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78D6B80();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    sub_1A78C5F48(&v18);
    goto LABEL_8;
  }

  sub_1A78BF494(a1);
  sub_1A78BF494(a1);
  result = swift_unknownObjectRelease();
  v16 = v21;
  *(a3 + 32) = v20;
  *(a3 + 48) = v16;
  *(a3 + 64) = v22;
  v17 = v19;
  *a3 = v18;
  *(a3 + 16) = v17;
  return result;
}

void sub_1A78BF874(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v3 >> 1;
  if (v4 == v3 >> 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v9 = -1;
    v10 = 0uLL;
LABEL_18:
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 24) = v10;
    *(a1 + 40) = v7;
    *(a1 + 48) = v9;
    return;
  }

  if (v4 >= (v3 >> 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *v1;
  v12 = v1[1];
  v13 = (v12 + 48 * v4);
  v6 = *v13;
  v14 = *(v13 + 1);
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);
  v17 = v4 + 1;
  v1[2] = v4 + 1;
  if ((v6 & 0x20) != 0)
  {
    if (v17 == v5)
    {
LABEL_12:
      v19 = v3 >> 1;
    }

    else
    {
      v18 = (v12 + 48 * v4 + 56);
      v19 = v4 + 1;
      while (1)
      {
        v20 = *v18;
        v18 += 6;
        if (v14 >= v20)
        {
          break;
        }

        if (v5 == ++v19)
        {
          goto LABEL_12;
        }
      }
    }

    if (v19 > v4)
    {
      if (v5 >= v19)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          if (!__OFSUB__(v19, v17))
          {
            v21 = v3 & 1 | (2 * v19);
            *v1 = sub_1A78BE7F0(v19 - v17, v11, v12, v4 + 1, v3);
            v1[1] = v22;
            v1[2] = v23;
            v1[3] = v24;
            sub_1A78BF4E8(v11, v12, v17, v21, v14, v29);
            v26 = v29[1];
            v28 = v29[0];
            v7 = v30;
            swift_unknownObjectRetain();
            v10 = v26;
            v8 = v28;
            v9 = 0;
            goto LABEL_18;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v16;
  v27 = v15;
  if (v15)
  {
    swift_unknownObjectRetain();
    v7 = 0;
    v9 = 1;
    v10 = v25;
    v8 = v27;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1A78BF9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A78BFA64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1A78BFAAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

char *sub_1A78BFB00(char *result, char a2)
{
  v8 = result;
  if (*result != a2)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return sub_1A78BF494(v8);
  }

  if (result[48] != 1)
  {
    goto LABEL_47;
  }

  v9 = v2;
  v22 = *(result + 8);
  v23 = *(result + 3);
  v24 = *(result + 4);
  v10 = (v24 >> 1) - v23;
  v11 = __OFSUB__(v24 >> 1, v23);
  swift_unknownObjectRetain();
  if (v11)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = MEMORY[0x1E69E7CC0];
  while (v10 >= 1)
  {
    sub_1A78BFEC8();
    if (v9)
    {
      sub_1A78BF494(v8);

      return swift_unknownObjectRelease();
    }

    v11 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1A78BF36C(0, *(v3 + 2) + 1, 1, v3);
    }

    v5 = *(v3 + 2);
    v13 = *(v3 + 3);
    v4 = (v5 + 1);
    if (v5 >= v13 >> 1)
    {
      v3 = sub_1A78BF36C((v13 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v4;
    *&v3[8 * v5 + 32] = v11;
    v10 = (v24 >> 1) - v23;
    if (__OFSUB__(v24 >> 1, v23))
    {
      goto LABEL_38;
    }
  }

  v15 = *(v3 + 2);
  if (v15 < 2)
  {

    sub_1A78D6B80();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
    sub_1A78BF494(v8);
    return swift_unknownObjectRelease();
  }

  result = sub_1A78BF36C(0, v15 + 1, 0, MEMORY[0x1E69E7CC0]);
  if (!*(v3 + 2))
  {
    goto LABEL_39;
  }

  v11 = result;
  v4 = (v3 + 32);
  v17 = *(v3 + 4);
  if (v17 <= 0x27)
  {
    v19 = *(result + 2);
    v18 = *(result + 3);
    v10 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v11 = sub_1A78BF36C((v18 > 1), v19 + 1, 1, result);
    }

    *(v11 + 2) = v10;
    *&v11[8 * v19 + 32] = 0;
    v20 = *(v3 + 2);
    if (v20)
    {
      v6 = *(v3 + 4);
      goto LABEL_36;
    }

    __break(1u);
LABEL_42:
    result = sub_1A78BF36C((v20 > 1), v10, 1, v11);
    v11 = result;
    goto LABEL_30;
  }

  v19 = *(result + 2);
  v20 = *(result + 3);
  v21 = v20 >> 1;
  v10 = v19 + 1;
  if (v17 > 0x4F)
  {
    goto LABEL_33;
  }

  if (v21 <= v19)
  {
    goto LABEL_42;
  }

LABEL_30:
  *(v11 + 2) = v10;
  *&v11[8 * v19 + 32] = 1;
  v20 = *(v3 + 2);
  if (!v20)
  {
    __break(1u);
    goto LABEL_44;
  }

  v20 = *v4;
  v6 = *v4 - 40;
  if (*v4 >= 0x28)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_33:
  if (v21 <= v19)
  {
LABEL_44:
    result = sub_1A78BF36C((v20 > 1), v10, 1, v11);
    v11 = result;
  }

  *(v11 + 2) = v10;
  *&v11[8 * v19 + 32] = 2;
  if (*(v3 + 2))
  {
    v6 = *v4 - 80;
    if (*v4 >= 0x50)
    {
LABEL_36:
      v7 = *(v11 + 3);
      v5 = v19 + 2;
      sub_1A793DB18();
      if (v5 <= (v7 >> 1))
      {
LABEL_37:
        *(v11 + 2) = v5;
        *&v11[8 * v10 + 32] = v6;

        sub_1A78BF380(v3, v4, *(v3 + 2) != 0, (2 * *(v3 + 2)) | 1);
        sub_1A78BF494(v8);
        swift_unknownObjectRelease();
        return v11;
      }

LABEL_40:
      v11 = sub_1A78BF36C((v7 > 1), v5, 1, v11);
      goto LABEL_37;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_1A78BFEC8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1 >> 1;
  if (v2 == v1 >> 1)
  {
LABEL_9:
    sub_1A78D6B80();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }

  else
  {
    v4 = v0[1];
    if (v2 <= (v1 >> 1))
    {
      v5 = v1 >> 1;
    }

    else
    {
      v5 = v0[2];
    }

    v6 = (v0[3] & 1 | (2 * v2)) + 2;
    v7 = v0[2];
    while (1)
    {
      if (v5 == v7)
      {
        __break(1u);
        goto LABEL_13;
      }

      if ((*(v4 + v7) & 0x80000000) == 0)
      {
        break;
      }

      ++v7;
      v6 += 2;
      if (v3 == v7)
      {
        goto LABEL_9;
      }
    }

    if (v7 >= -1)
    {
      v9 = *v0;
      v0[2] = v7 + 1;
      v10 = swift_unknownObjectRetain();
      sub_1A78C02F0(v10, v4, v2, v6);
      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1A78BFFA0(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7628, "FQ");
    v11 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 24);

  v15 = v11 + 4;
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7628, "FQ");
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1A78C0234(int64_t a1, int64_t a2, uint64_t a3)
{
  result = sub_1A78BFFA0(a1, a2, a3);
  v4 = result;
  v5 = *(result + 16);
  if (v5 < 2)
  {
    return v4;
  }

  v6 = v5 >> 1;
  v7 = v5 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v7)
    {
      goto LABEL_5;
    }

    v9 = *(v4 + 16);
    if (i - 4 >= v9)
    {
      break;
    }

    if (v7 - 4 >= v9)
    {
      goto LABEL_12;
    }

    v10 = *(v4 + 8 * i);
    v11 = *(v4 + 8 * v7);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A78F5C18(v4);
      v4 = result;
    }

    *(v4 + 8 * i) = v11;
    *(v4 + 8 * v7) = v10;
LABEL_5:
    --v7;
    if (!--v6)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1A78C02F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = 7 * v5;
  if ((v5 * 7) >> 64 != (7 * v5) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(v7, 7))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 + 7 > 71)
  {
    swift_unknownObjectRelease();
    sub_1A78D6B80();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
    return;
  }

  v10 = sub_1A78C0234(0, v7, 7);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_22;
  }

  if (a3 <= v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = a3;
  }

  if (v12 - a3 > (v11 - 1))
  {
    v13 = 0;
    v14 = (a2 + a3);
    v15 = 32;
    do
    {
      v17 = *(v10 + v15);
      if (v17 - 65 <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v16 = 0;
      }

      else
      {
        v18 = *v14 & 0x7F;
        if ((v17 & 0x8000000000000000) != 0)
        {
          v20 = v18 >> -v17;
          if (v17 <= 0xFFFFFFFFFFFFFFC0)
          {
            v16 = 0;
          }

          else
          {
            v16 = v20;
          }
        }

        else
        {
          v19 = v18 << v17;
          if (v17 >= 0x40)
          {
            v16 = 0;
          }

          else
          {
            v16 = v19;
          }
        }
      }

      v13 |= v16;
      ++v14;
      v15 += 8;
      --v11;
    }

    while (v11);
LABEL_22:

    swift_unknownObjectRelease();
    return;
  }

LABEL_26:
  __break(1u);
}

char *sub_1A78C0464(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

unint64_t sub_1A78C0560()
{
  result = qword_1ED5F89C0;
  if (!qword_1ED5F89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89C0);
  }

  return result;
}

uint64_t sub_1A78C05B4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A78C05E8(unint64_t result, void (*a2)(void *, uint64_t *))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
    v5 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
    v7 = v6 | HIWORD(v6);
    if (v7 == -1)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = (v7 + 1);
    }
  }

  else
  {
    v8 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = v8;
  v10 = _swift_stdlib_malloc_size(v9);
  v11 = sub_1A78C0CEC(v3, (v9 + 4), v9 + v10);
  v13 = v12 + v11;
  v15 = v12 + v14;
  if (!v12)
  {
    v15 = 0;
    v13 = 0;
  }

  v17[0] = v13;
  v17[1] = v15;
  v18 = 0;

  a2(v17, &v18);
  if (v2)
  {
  }

  else
  {
    v16 = v18;
    swift_beginAccess();
    v9[2] = v16;
  }

  return v9;
}

uint64_t sub_1A78C07A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v14 = a4();
  v15 = a6(a1, a5, a2, v14, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v7)
  {
    *a7 = v15;
  }

  return result;
}

unint64_t sub_1A78C088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t *))
{
  (*(a4 + 24))(&v9, a2, a4);
  v8 = getccec_full_ctx_size();
  return sub_1A78C05E8(v8, a6);
}

uint64_t sub_1A78C0990(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A78C09E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78C0A98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1A78C0AFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A78C0B50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1A78C09E4(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_1A78C0A98(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_1A793D798();
    v17 = v16;
    result = sub_1A78C0AFC(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

uint64_t type metadata accessor for SecureBytes.Backing()
{
  result = qword_1ED5F8BD8;
  if (!qword_1ED5F8BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A78C0D04(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, int64_t, uint64_t, uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = a3 - a2;
    }

    else
    {
      v5 = 0;
    }

    result = a4(0, v5, a2, a3);
    if (v4 && result < v4)
    {
      v4 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v5 >= v4)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C0D98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C0DCC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  v10 = sub_1A78C2E38(&qword_1ED5F8BD0, qword_1EB2A6E88, qword_1A7940400);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);
  sub_1A793DB18();
  sub_1A78C2D58(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1A78C0EA8(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A78C0FA8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1A793D698();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1A793D638();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1A78C102C()
{
  swift_beginAccess();
  memset_s((v0 + 32), *(v0 + 24), 0, *(v0 + 24));
  return swift_deallocClassInstance();
}

uint64_t _s9CryptoKit4P256O12KeyAgreementO06PublicD0V17rawRepresentation10Foundation4DataVvg_0()
{
  v1 = ccec_export_pub_size((*v0 + 32));
  v2 = sub_1A793DB28();
  *(v2 + 16) = v1;
  ccec_export_pub();
  *(v2 + 16) = v1;
  v3 = sub_1A78C0DCC(v2);
  v5 = v4;

  sub_1A78C0B50(1, v3, v5, &v7);
  return v7;
}

uint64_t sub_1A78C116C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 40);
  result = sub_1A793D6A8();
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1A78C123C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (!*a3)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  (*(a6 + 24))(v28, a4, a6);
  if (!a1)
  {
    goto LABEL_27;
  }

  v11 = ccec_raw_import_priv_only();
  if (v11)
  {
    v12 = v11;
    sub_1A78D6484();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 0;
    result = swift_willThrow();
LABEL_20:
    v25 = *MEMORY[0x1E69E9840];
    return result;
  }

  v15 = ccec_der_export_priv_size();
  if (!v15)
  {
    if (qword_1ED5F8A30 == -1)
    {
LABEL_16:
      v23 = off_1ED5F8A18;

      goto LABEL_17;
    }

LABEL_25:
    swift_once();
    goto LABEL_16;
  }

  v16 = v15;
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v15))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = (v15 - 1) | ((v15 - 1) >> 1) | (((v15 - 1) | ((v15 - 1) >> 1)) >> 2);
  v18 = v17 | (v17 >> 4) | ((v17 | (v17 >> 4)) >> 8);
  v19 = v18 | HIWORD(v18);
  v20 = __CFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    v22 = 0xFFFFFFFFLL;
  }

  else
  {
    v22 = v21;
  }

  type metadata accessor for SecureBytes.Backing();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = v22;
  if ((_swift_stdlib_malloc_size(v23) - 32) < v16)
  {
    goto LABEL_23;
  }

  LODWORD(v28[0]) = 0;
  result = ccrng();
  if (result)
  {
    if (!LODWORD(v28[0]))
    {
      ccrng_generate_bridge();
      swift_beginAccess();
      v23[2] = v16;
LABEL_17:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_beginAccess();
        sub_1A78C2BF8((v23 + 4), v23 + v23[2] + 32, &v27);
        v24 = v27;

        v23 = v24;
      }

      swift_beginAccess();
      sub_1A78C14FC((v23 + 4), v23 + v23[2] + 32, &v26, v6, a4, a5, a6);

      goto LABEL_20;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C14FC(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    LODWORD(result) = ccec_der_export_priv();
    *a3 = result;
    if (result || ((*(a7 + 24))(&v12, a5, a7), result = ccec_der_import_priv(), (*a3 = result) != 0))
    {
      v10 = result;
      sub_1A78D6484();
      swift_allocError();
      *v11 = v10;
      *(v11 + 4) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78C1610@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = a1();
  if (!result)
  {
    goto LABEL_8;
  }

  result = getccec_pub_ctx_size();
  if (result < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = result;

  if (v6)
  {
    v7 = sub_1A793DB28();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v7 + 32), (v4 + 32), v6);
  *(v7 + 16) = v6;

  *a2 = v7;
  return result;
}

uint64_t static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)@<X0>(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(char *, uint64_t, uint64_t)@<X7>, void *a9@<X8>, uint64_t a10)
{
  v71 = a8;
  v75 = a2;
  v70 = a1;
  v61 = a9;
  v85[3] = *MEMORY[0x1E69E9840];
  v74 = type metadata accessor for HashedAuthenticationCode();
  v69 = *(v74 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v59 - v16;
  v72 = sub_1A793DC78();
  v63 = *(v72 - 8);
  v17 = *(v63 + 64);
  v18 = MEMORY[0x1EEE9AC00](v72);
  v79 = &v59 - v19;
  v77 = a6;
  v64 = *(a6 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HMAC();
  v62 = *(v22 - 8);
  v23 = *(v62 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  v27 = *(a5 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = a7;
  v76 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = AssociatedTypeWitness;
  v34 = ceil(a3 / (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness));
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v34 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v34 < 256.0)
  {
    v33 = v34;
    if (qword_1ED5F8A30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_5:
  v35 = off_1ED5F8A18;
  v84 = off_1ED5F8A18;
  (*(v27 + 16))(v30, v70, a5);
  swift_retain_n();
  SymmetricKey.init<A>(data:)(v30, a5, v85);
  v36 = v79;
  v68 = v33;
  if (!v33)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  v60 = a3;
  v66 = a10;
  v37 = v85[0];
  v71 = (v63 + 16);
  v70 = (v64 + 48);
  v65 = (v64 + 32);
  v64 += 8;
  v63 += 8;
  v69 += 8;
  v38 = (v62 + 8);
  LOBYTE(v39) = 1;
  v40 = v68;
  while (1)
  {
    v85[0] = v37;

    HMAC.init(key:)(v85, v76, v78);
    v85[0] = v35;
    v41 = sub_1A78C490C();
    HMAC.update<A>(data:)(v85, v22, &type metadata for SecureBytes, v41);
    v42 = v72;
    (*v71)(v36, v75, v72);
    v43 = v77;
    if ((*v70)(v36, 1, v77) == 1)
    {
      (*v63)(v36, v42);
    }

    else
    {
      v44 = v37;
      v45 = v67;
      (*v65)(v67, v36, v43);
      HMAC.update<A>(data:)(v45, v22, v43, v66);
      v46 = v45;
      v37 = v44;
      v40 = v68;
      (*v64)(v46, v43);
    }

    LOBYTE(v85[0]) = v39;
    sub_1A78C4988(v85, v85 + 1, v22);
    v47 = v73;
    HMAC.finalize()(v22, v73);
    v48 = v74;
    swift_getWitnessTable();
    v49 = sub_1A78C2B3C();
    (*v69)(v47, v48);

    sub_1A78C7BC0(v50);

    (*v38)(v26, v22);
    if (v40 == v39)
    {
      break;
    }

    v39 = v39 + 1;
    v35 = v49;
    v36 = v79;
    if ((v39 & 0x100) != 0)
    {
      __break(1u);
      break;
    }
  }

  v51 = v60;
  if (v60 < 0)
  {
    goto LABEL_25;
  }

  v52 = v84;
  swift_beginAccess();
  v53 = *(v52 + 16);
  v54 = sub_1A78C7D08(0, v51, v53, v52);
  if (v55)
  {
    v56 = v53;
  }

  else
  {
    v56 = v54;
  }

  if ((v56 | v53) < 0)
  {
    goto LABEL_26;
  }

  if (v53 < v56)
  {
    goto LABEL_27;
  }

  v80 = 0;
  v81 = v56;
  v82 = v52;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6E40, &qword_1A793F018);
  type metadata accessor for SecureBytes.Backing();
  sub_1A78C7DD0();
  sub_1A793DF48();

  *v61 = v83;
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1A78C1F84(char *result, uint64_t a2, void *a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3)
  {
    v12 = a4 - a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = __OFSUB__(v12, v9);
  v14 = v12 - v9;
  if (v13)
  {
    goto LABEL_19;
  }

  v15 = v7 + v14;
  if (__OFADD__(v7, v14))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v16 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v6 + 3) >> 1)
  {
    if (v7 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v7;
    }

    v6 = sub_1A78C57C4(isUniquelyReferenced_nonNull_native, v18, 1, v6);
    *v4 = v6;
  }

  result = sub_1A78C2070(v8, a2, v12, a3, a4);
  *v4 = v6;
  return result;
}

char *sub_1A78C2070(char *result, uint64_t a2, int64_t a3, void *__src, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *v5;
  v9 = &result[v8 + 32];
  if (!v7)
  {
    goto LABEL_13;
  }

  v10 = *(v8 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
    goto LABEL_22;
  }

  result = &v9[a3];
  v13 = (v8 + 32 + a2);
  if (&v9[a3] != v13 || result >= &v13[v12])
  {
    v15 = a3;
    v16 = __src;
    v17 = a5;
    result = memmove(result, v13, v12);
    a5 = v17;
    __src = v16;
    a3 = v15;
  }

  v18 = *(v8 + 16);
  v11 = __OFADD__(v18, v7);
  v19 = v18 + v7;
  if (v11)
  {
    goto LABEL_23;
  }

  *(v8 + 16) = v19;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (!__src)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a5 - __src != a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return memcpy(v9, __src, a3);
}

uint64_t HMAC.init(key:)(size_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(a3 + 24);
  if (v6 == v7(a2, a3))
  {
    goto LABEL_14;
  }

  v8 = *(v5 + 16);
  if (v7(a2, a3) >= v8)
  {
    result = v7(a2, a3);
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v12 = result;
        v13 = sub_1A793DB28();
        *(v13 + 16) = v12;
        bzero((v13 + 32), v12);
      }

      else
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      v22[0] = v13;
      sub_1A78C1F84(0, *(v5 + 16), (v5 + 32), v5 + 32 + *(v5 + 16));

      v5 = sub_1A78C24CC(v13);
      goto LABEL_13;
    }
  }

  else
  {
    result = v7(a2, a3);
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v10 = result;
        v11 = sub_1A793DB28();
        *(v11 + 16) = v10;
        bzero((v11 + 32), v10);
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      v22[0] = v11;
      sub_1A78DC6C0(v5 + 32, v5 + 32 + *(v5 + 16), v22, a2, a3, &v21);

      v5 = v21;
LABEL_13:

LABEL_14:
      v14 = *(a3 + 32);
      v20 = v14;
      v19 = *(type metadata accessor for HMAC() + 36);
      v14(a2, a3);
      swift_beginAccess();
      v15 = (v5 + 32);
      sub_1A78C29D0((v5 + 32), (v5 + 32 + *(v5 + 16)), &v21);
      v16 = v5;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
      v18 = sub_1A78C2E38(&qword_1ED5F8AC0, qword_1EB2A6E88, qword_1A7940400);
      HashFunction.update<A>(data:)(&v21, a2, v17, a3, v18);

      v20(a2, a3);
      sub_1A78C5560(v15, &v15[*(v16 + 16)], &v21);
      HashFunction.update<A>(data:)(&v21, a2, v17, a3, v18);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1A78C24CC(size_t result)
{
  v1 = *(result + 16);
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (v1)
    {
      v3 = (v1 - 1) | ((v1 - 1) >> 1) | (((v1 - 1) | ((v1 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v5 = v4 | HIWORD(v4);
      if (v5 == -1)
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = (v5 + 1);
      }
    }

    else
    {
      v6 = 1;
    }

    type metadata accessor for SecureBytes.Backing();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = v6;
    _swift_stdlib_malloc_size(v7);
    memcpy(v7 + 4, (v2 + 32), v1);
    swift_beginAccess();
    v7[2] = v1;
    result = _swift_stdlib_malloc_size(v7);
    if ((result - 32) >= v1)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

char *sub_1A78C25B8(char *a1, int64_t a2, char a3)
{
  result = sub_1A78C25D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A78C25D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71F0, &qword_1A79405C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t SymmetricKey.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1A78C2B3C();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t HashFunction.update<A>(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17[-v13];
  sub_1A793D5A8();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = v5;
  v15 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  sub_1A793DAC8();
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1A78C28A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_1A78C28C4();
}

uint64_t sub_1A78C28C4()
{
  swift_getAssociatedTypeWitness();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

char *sub_1A78C29D0@<X0>(char *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (!result || (v4 = a2 - result, a2 == result))
  {
LABEL_3:
    *a3 = v3;
    return result;
  }

  v5 = result;
  v6 = a3;
  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A78C25B8(0, v4 & ~(v4 >> 63), 0);
  if (v4 >= 1)
  {
    v3 = v13;
    v7 = *(v13 + 16);
    a3 = v6;
    v8 = v5;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v14 = v3;
      v11 = *(v3 + 24);
      if (v7 >= v11 >> 1)
      {
        v12 = v8;
        result = sub_1A78C25B8((v11 > 1), v7 + 1, 1);
        v8 = v12;
        a3 = v6;
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + v7++ + 32) = v9 ^ 0x36;
      --v4;
    }

    while (v4);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C2ADC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A78C2B84()
{
  type metadata accessor for SecureBytes.Backing();
  sub_1A793D6A8();
  return v1;
}

size_t sub_1A78C2BF8@<X0>(size_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 - result;
  if (result)
  {
    v5 = a2 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  if (v5)
  {
    v7 = (v5 - 1) | ((v5 - 1) >> 1) | (((v5 - 1) | ((v5 - 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | HIWORD(v8);
    if (v9 == -1)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = (v9 + 1);
    }
  }

  else
  {
    v10 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = v10;
  _swift_stdlib_malloc_size(v11);
  if (v6)
  {
    memmove(v11 + 4, v6, v4);
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v11[2] = v4;
  result = _swift_stdlib_malloc_size(v11);
  if ((result - 32) >= v4)
  {
    *a3 = v11;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_BYTE *sub_1A78C2D58@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1A78C3BEC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1A792BC64(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1A78C0FA8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1A78C2E38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A78C2E80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  v44 = a5;
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);
  sub_1A78C3AA4(a4, a2, a3, &v42);
  sub_1A78C32F4(v42, *(&v42 + 1), &v43);
  if (v6)
  {
    goto LABEL_28;
  }

  v12 = v43;
  v13 = ccaes_gcm_decrypt_mode();
  if (!v13)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v14 = v13;
  v40 = a1;
  v42 = v12;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  swift_allocObject();

  v15 = sub_1A78C35B4(&v40, &v42, v14);
  if (a6 >> 60 != 15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = swift_allocObject();
      v17 = *(v15 + 24);
      v39 = v16;
      *(v16 + 24) = v17;
      MEMORY[0x1AC55E040](v17);
      v18 = swift_slowAlloc();
      __src = *(v15 + 16);
      v19 = MEMORY[0x1AC55E040](v17);
      if ((v19 & 0x8000000000000000) != 0)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      memmove(v18, __src, v19);
      *(v39 + 16) = v18;

      v15 = v39;
    }

    sub_1A7900F54(v44, a6);
  }

  v43 = xmmword_1A793F230;
  sub_1A78C0B50(a4, a2, a3, &v40);
  sub_1A78C3CAC(16, v40, v41, &v42);
  v21 = *(&v42 + 1);
  v20 = v42;
  v22 = *(&v42 + 1) >> 62;
  if ((*(&v42 + 1) >> 62) <= 1)
  {
    if (!v22)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v22 != 2)
  {
LABEL_17:
    sub_1A78C0AFC(v42, *(&v42 + 1));
    goto LABEL_18;
  }

  v24 = *(v42 + 16);
  v23 = *(v42 + 24);
  sub_1A78C0AFC(v42, *(&v42 + 1));
  v20 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
LABEL_15:
    v25 = HIDWORD(v20);
    v26 = v20;
    sub_1A78C0AFC(v20, v21);
    if (__OFSUB__(v25, v26))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

LABEL_18:
  sub_1A793D768();
  sub_1A78C0B50(a4, a2, a3, &v40);
  sub_1A78C3CAC(16, v40, v41, &v42);
  v27 = *(&v42 + 1);
  v28 = v42;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_21;
  }

  v29 = swift_allocObject();
  v30 = *(v15 + 24);
  *(v29 + 24) = v30;
  MEMORY[0x1AC55E040](v30);
  v31 = swift_slowAlloc();
  v44 = *(v15 + 16);
  v32 = MEMORY[0x1AC55E040](v30);
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  memmove(v31, v44, v32);
  *(v29 + 16) = v31;

LABEL_21:
  sub_1A78C3908(v28, v27, &v43);
  sub_1A78C0AFC(v28, v27);
  sub_1A78C8A28(16, a2, a3, &v42);
  v34 = *(&v42 + 1);
  v33 = v42;
  v35 = sub_1A78CDD2C(v42, *(&v42 + 1));
  sub_1A78C0AFC(v33, v34);
  if (v35)
  {

    return v43;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v37 = 2;
    *(v37 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(v43, *(&v43 + 1));
  }
}

uint64_t sub_1A78C32F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v33[5] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 < 12)
      {
        goto LABEL_8;
      }

LABEL_11:
      v33[3] = MEMORY[0x1E6969080];
      v33[4] = MEMORY[0x1E6969078];
      v33[0] = a1;
      v33[1] = a2;
      v11 = __swift_project_boxed_opaque_existential_1(v33, MEMORY[0x1E6969080]);
      v12 = *v11;
      v13 = v11[1];
      v14 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v14 != 2)
        {
          memset(v31, 0, 14);
          v16 = v31;
          v15 = v31;
          goto LABEL_33;
        }

        v17 = *(v12 + 16);
        v18 = *(v12 + 24);
        v19 = sub_1A793D648();
        if (v19)
        {
          v20 = sub_1A793D678();
          v12 = v17 - v20;
          if (__OFSUB__(v17, v20))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v19 += v12;
        }

        v6 = __OFSUB__(v18, v17);
        v21 = v18 - v17;
        if (!v6)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v14)
      {
        v31[0] = *v11;
        LOWORD(v31[1]) = v13;
        BYTE2(v31[1]) = BYTE2(v13);
        BYTE3(v31[1]) = BYTE3(v13);
        BYTE4(v31[1]) = BYTE4(v13);
        BYTE5(v31[1]) = BYTE5(v13);
        v15 = v31 + BYTE6(v13);
        v16 = v31;
LABEL_33:
        sub_1A78C2D58(v16, v15, v32);
        v28 = v32[0];
        v29 = v32[1];
        result = __swift_destroy_boxed_opaque_existential_1(v33);
        *a3 = v28;
        a3[1] = v29;
        goto LABEL_34;
      }

      v22 = v12;
      v23 = v12 >> 32;
      v21 = v23 - v22;
      if (v23 >= v22)
      {
        v19 = sub_1A793D648();
        if (!v19)
        {
LABEL_25:
          v25 = sub_1A793D668();
          if (v25 >= v21)
          {
            v26 = v21;
          }

          else
          {
            v26 = v25;
          }

          v27 = (v26 + v19);
          if (v19)
          {
            v15 = v27;
          }

          else
          {
            v15 = 0;
          }

          v16 = v19;
          goto LABEL_33;
        }

        v24 = sub_1A793D678();
        if (!__OFSUB__(v22, v24))
        {
          v19 += v22 - v24;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 12)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0xCuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1A78C0AFC(a1, a2);
  sub_1A78D6484();
  swift_allocError();
  *v8 = 1;
  *(v8 + 4) = 1;
  result = swift_willThrow();
LABEL_34:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78C35B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v29 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v8 = *a2;
  v7 = a2[1];
  swift_beginAccess();
  v9 = *(v6 + 16);
  if (v9 >> 60)
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = v9 > 0x20;
  v11 = (1 << v9) & 0x101010000;
  if (v10 || v11 == 0)
  {
    sub_1A78C0AFC(v8, v7);

    sub_1A78D6484();
    swift_allocError();
    *v17 = 0;
    *(v17 + 4) = 1;
    swift_willThrow();
    type metadata accessor for CoreCryptoGCMImpl.Context();
    swift_deallocPartialClassInstance();
    goto LABEL_30;
  }

  MEMORY[0x1AC55E040](a3);
  *(v3 + 16) = swift_slowAlloc();
  *(v3 + 24) = a3;
  v13 = *(v6 + 16);
  v14 = ccgcm_init();

  if (v14)
  {
    sub_1A78C0AFC(v8, v7);
LABEL_29:
    sub_1A78D6484();
    swift_allocError();
    *v27 = v14;
    *(v27 + 4) = 0;
    swift_willThrow();

    goto LABEL_30;
  }

  v15 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v26 = *(v4 + 16);
      goto LABEL_28;
    }

    v18 = *(v8 + 16);

    v19 = sub_1A793D648();
    if (v19)
    {
      v20 = sub_1A793D678();
      if (__OFSUB__(v18, v20))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v19 += v18 - v20;
    }

    result = sub_1A793D668();
    if (!__OFSUB__(*(v8 + 24), *(v8 + 16)))
    {
      if (v19)
      {
        v22 = *(v4 + 16);
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (!v15)
  {
    v16 = *(v4 + 16);
    goto LABEL_28;
  }

  if (v8 > v8 >> 32)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v23 = sub_1A793D648();
  if (v23)
  {
    v24 = sub_1A793D678();
    if (__OFSUB__(v8, v24))
    {
      goto LABEL_36;
    }

    v23 += v8 - v24;
  }

  result = sub_1A793D668();
  if (__OFSUB__(HIDWORD(v8), v8))
  {
    goto LABEL_34;
  }

  if (v23)
  {
    v25 = *(v4 + 16);
LABEL_28:
    v14 = ccgcm_set_iv();
    sub_1A78C0AFC(v8, v7);
    sub_1A78C0AFC(v8, v7);
    if (v14)
    {
      goto LABEL_29;
    }

LABEL_30:
    v28 = *MEMORY[0x1E69E9840];
    return v4;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A78C3908(uint64_t result, unint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = v3 + 16;
    v3 = *(v3 + 16);
    if (!__OFSUB__(*(v5 + 8), v3))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v3), v3))
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_9:
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      result = BYTE6(a2);
      goto LABEL_21;
    }

LABEL_16:
    if (!__OFSUB__(HIDWORD(result), result))
    {
      result = HIDWORD(result) - result;
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (v6 != 2)
  {
    goto LABEL_20;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  result = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_20:
  result = 0;
LABEL_21:
  v9 = sub_1A78C3DF4(result);
  MEMORY[0x1EEE9AC00](v9);
  result = sub_1A78CD4CC(sub_1A78CDCF4);
  if (result)
  {
    v10 = result;
    sub_1A78D6484();
    swift_allocError();
    *v11 = v10;
    *(v11 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78C3AA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1A78C09E4(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1A78C0A98(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1A793D798();
    v15 = v14;
    result = sub_1A78C0AFC(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1A78C3BEC(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1A78C45DC(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78C3CAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_1A78C09E4(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_1A78C0A98(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 >= v12)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (v7 <= 1)
    {
LABEL_26:
      v14 = sub_1A793D798();
      v16 = v15;
      result = sub_1A78C0AFC(v5, a3);
      *a4 = v14;
      a4[1] = v16;
      return result;
    }

    if (v7 == 2)
    {
      v13 = *(v5 + 16);
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C3DF4(uint64_t a1)
{
  v28[5] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2A7B00, &qword_1A7946B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7100, &unk_1A7946B00);
  if (!swift_dynamicCast())
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_1A78C2ADC(v26, &qword_1EB2A6F18, &qword_1A793F240);
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      v8 = 0;
      v9 = 0;
      if (v7 != 2)
      {
        goto LABEL_12;
      }

      v10 = v5 + 16;
      v5 = *(v5 + 16);
      v8 = *(v10 + 8);
      v9 = v8 - v5;
      if (!__OFSUB__(v8, v5))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v7)
    {
      v8 = BYTE6(v6);
      v9 = BYTE6(v6);
      goto LABEL_12;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_52;
    }

    v9 = HIDWORD(v5) - v5;
    v8 = v5 >> 32;
LABEL_12:
    if (!__OFADD__(v8, a1))
    {
      if (v8 + a1 < v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v8 < 0)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v11 = sub_1A793D748();
      MEMORY[0x1EEE9AC00](v11);
      result = sub_1A78C4178(sub_1A78C8704);
      if (v14 != a1)
      {
        v18 = 0;
        v19 = *v1;
        v20 = v1[1];
        v21 = v20 >> 62;
        if ((v20 >> 62) > 1)
        {
          if (v21 == 2)
          {
            v18 = *(v19 + 16);
          }
        }

        else if (v21)
        {
          v18 = v19;
        }

        v22 = __OFADD__(v18, v9);
        v23 = v18 + v9;
        if (!v22)
        {
          if (!__OFADD__(v23, v14))
          {
            if (v21 > 1)
            {
              if (v21 == 2)
              {
                v24 = *(v19 + 24);
              }

              else
              {
                v24 = 0;
              }
            }

            else if (v21)
            {
              v24 = v19 >> 32;
            }

            else
            {
              v24 = BYTE6(v20);
            }

            if (v24 >= v23 + v14)
            {
              result = sub_1A793D758();
              goto LABEL_42;
            }

            goto LABEL_51;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      memset(v28, 0, 15);
      if (v13 == result)
      {
        goto LABEL_42;
      }

      if ((v13 & 0x8000000000000000) == 0 && v13 < result)
      {
        v15 = v12;
        LOBYTE(v16) = 0;
        for (i = v13 - result + 1; i != 1; ++i)
        {
          *(v28 + v16) = v15;
          v16 = v16 + 1;
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v16 == 14)
          {
            *&v26[0] = v28[0];
            *(v26 + 6) = *(v28 + 6);
            result = sub_1A793D788();
            if (!i)
            {
              goto LABEL_42;
            }

            LOBYTE(v16) = 0;
          }

          else if (!i)
          {
            *&v26[0] = v28[0];
            *(v26 + 6) = *(v28 + 6);
            result = sub_1A793D788();
            goto LABEL_42;
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_1A78C78FC(v26, v28);
  v3 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A793D6A8();
  result = __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_42:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A78C4178(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1A78C0AFC(v6, v5);
      v20[0] = v6;
      LOWORD(v20[1]) = v5;
      BYTE2(v20[1]) = BYTE2(v5);
      BYTE3(v20[1]) = BYTE3(v5);
      BYTE4(v20[1]) = BYTE4(v5);
      BYTE5(v20[1]) = BYTE5(v5);
      BYTE6(v20[1]) = BYTE6(v5);
      result = a1(&v21, v20, v20 + BYTE6(v5));
      if (!v2)
      {
        result = v21;
      }

      v9 = LODWORD(v20[1]) | ((WORD2(v20[1]) | (BYTE6(v20[1]) << 16)) << 32);
      *v3 = v20[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v6, v5);
    *v3 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1A793D648() && __OFSUB__(v6, sub_1A793D678()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1A793D698();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1A793D628();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1A78C4524(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1A78C0AFC(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    result = sub_1A78C4524(v21[2], v21[3], a1);
    v10 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v21;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v21;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v20, 0, 15);
  result = a1(&v21, v20, v20);
  if (!v2)
  {
    result = v21;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1A78C4524(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1A793D648();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1A793D678();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1A793D668();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1A78C45DC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C4698@<X0>(void (*a1)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A793DB28();
  *(v5 + 16) = 64;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  v6 = *(v2 + 24);
  ccdigest_final(*(v2 + 16));
  a1(v10, v5 + 32, v5 + 32 + *(v5 + 16));
  if (v11)
  {
    __break(1u);
    sub_1A793DB18();
    result = MEMORY[0x1AC55E410](0);
    __break(1u);
  }

  else
  {

    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
    v9 = v10[3];
    a2[2] = v10[2];
    a2[3] = v9;
  }

  return result;
}

__int128 *sub_1A78C4770@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78C47BC(a1, a2, a3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *sub_1A78C47BC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78C4808(a1, a2, a3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *sub_1A78C4808@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result && a2 - result == 64)
  {
    v3 = 0;
    v4 = *result;
    v5 = result[1];
    v6 = result[2];
    v7 = result[3];
  }

  else
  {
    v3 = 1;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a3 = v4;
  *(a3 + 16) = v5;
  *(a3 + 32) = v6;
  *(a3 + 48) = v7;
  *(a3 + 64) = v3;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A78C4894@<X0>(void *a1@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  result = sub_1A78BDB94(v7, v8);
  *a1 = result;
  a1[1] = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A78C490C()
{
  result = qword_1ED5F8A50;
  if (!qword_1ED5F8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A50);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A78C49E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  result = sub_1A793D6A8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1A78C4A74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_1A78C4A98();
}

uint64_t sub_1A78C4A98()
{
  swift_getAssociatedTypeWitness();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

uint64_t sub_1A78C4BBC@<X0>(void (*a1)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A793DB28();
  *(v5 + 16) = 48;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 32) = 0u;
  v6 = *(v2 + 24);
  ccdigest_final(*(v2 + 16));
  a1(v11, v5 + 32, v5 + 32 + *(v5 + 16));
  if (v14)
  {
    __break(1u);
    sub_1A793DB18();
    result = MEMORY[0x1AC55E410](0);
    __break(1u);
  }

  else
  {
    v8 = v12;
    v7 = v13;

    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v8;
    *(a2 + 40) = v7;
  }

  return result;
}

__int128 *sub_1A78C4C8C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78C4CD8(a1, a2, a3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *sub_1A78C4CD8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78C4D24(a1, a2, a3);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *sub_1A78C4D24@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = a2 - result == 48;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  if (v3)
  {
    v5 = *result;
    v6 = result[1];
    v7 = result[2];
  }

  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  *(a3 + 48) = v4;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA384Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78C541C(a1, a2, a3, sub_1A78C4F50);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78C4E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 40))(v10);
  (*(v8 + 16))(v12, a3, a4);
  (*(a5 + 48))(a4, a5);
  return (*(v8 + 8))(v12, a4);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t HMAC.update<A>(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16[-v11];
  sub_1A793D5A8();
  v13 = *(a2 + 24);
  v17 = *(a2 + 16);
  v18 = a3;
  v19 = v13;
  v20 = a4;
  v21 = v4;
  v14 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  sub_1A793DAC8();
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_1A78C50E4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[6];
  v8 = type metadata accessor for HMAC();
  v9 = *(v8 + 36);
  return (*(*(v8 + 24) + 40))(a1, a2, *(v8 + 16));
}

uint64_t HMAC.finalize()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = *(a1 + 16);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v26 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = v3 + *(a1 + 36);
  (*(v10 + 48))(v5, v10);
  (*(v27 + 16))(v9, v3, v5);
  v28 = v5;
  v29 = v10;
  v30 = v9;
  v23 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1A793D6A8();
  (*(v12 + 8))(v21, AssociatedTypeWitness);
  v24 = *(v12 + 32);
  v24(v16, v19, AssociatedTypeWitness);
  v24(v26, v16, AssociatedTypeWitness);
  return (*(v27 + 8))(v9, v5);
}

uint64_t sub_1A78C541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = v4[1];
  v13[0] = *v4;
  v13[1] = v7;
  v13[2] = v4[2];
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7918, &qword_1A7945480);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7910, &qword_1A7945478);
  result = sub_1A78BECA0(v13, a4, v14, v8, v9, a3, MEMORY[0x1E69E7288], &v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78C5508(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  if (a1)
  {
    v8 = a1 + 48;
  }

  else
  {
    v8 = 0;
  }

  result = v6(a1, v8);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

char *sub_1A78C5560@<X0>(char *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (!result || (v4 = a2 - result, a2 == result))
  {
LABEL_3:
    *a3 = v3;
    return result;
  }

  v5 = result;
  v6 = a3;
  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A78C25B8(0, v4 & ~(v4 >> 63), 0);
  if (v4 >= 1)
  {
    v3 = v13;
    v7 = *(v13 + 16);
    a3 = v6;
    v8 = v5;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v14 = v3;
      v11 = *(v3 + 24);
      if (v7 >= v11 >> 1)
      {
        v12 = v8;
        result = sub_1A78C25B8((v11 > 1), v7 + 1, 1);
        v8 = v12;
        a3 = v6;
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + v7++ + 32) = v9 ^ 0x5C;
      --v4;
    }

    while (v4);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t Curve25519.KeyAgreement.PublicKey.rawRepresentation.getter()
{
  v1 = *v0;
  v2 = sub_1A793DB18();
  v3 = sub_1A78C0DCC(v2);

  return v3;
}

char *sub_1A78C56D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void sub_1A78C57D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (*(a2 + 48))
  {
    v6 = swift_unknownObjectRetain();
    sub_1A78C5A88(v6, v3, v5, v4);
  }

  else if (v5 != v4 >> 1)
  {
    v7 = *(a2 + 8);
    sub_1A78BF80C(a2, v31);
    v26 = v7;
    swift_unknownObjectRetain();
    while (1)
    {
      v8 = v4 >> 1;
      if (v5 == v4 >> 1)
      {
        break;
      }

      if (v5 >= (v4 >> 1))
      {
        goto LABEL_27;
      }

      v9 = (v3 + 48 * v5);
      v10 = *v9;
      v11 = v5 + 1;
      if ((v10 & 0x20) != 0)
      {
        v14 = *(v9 + 1);
        if (v11 == v8)
        {
LABEL_14:
          v16 = v4 >> 1;
        }

        else
        {
          v15 = (v3 + 48 * v5 + 56);
          v16 = v5 + 1;
          while (1)
          {
            v17 = *v15;
            v15 += 6;
            if (v14 >= v17)
            {
              break;
            }

            if (v8 == ++v16)
            {
              goto LABEL_14;
            }
          }
        }

        if (v16 <= v5)
        {
          goto LABEL_28;
        }

        if (v8 < v16)
        {
          goto LABEL_29;
        }

        if (v16 < 0)
        {
          goto LABEL_30;
        }

        if (__OFSUB__(v16, v11))
        {
          goto LABEL_31;
        }

        v18 = v4 & 1 | (2 * v16);
        v19 = sub_1A78BE7F0(v16 - v11, v26, v3, v5 + 1, v4);
        v20 = v3;
        v22 = v21;
        v5 = v23;
        v4 = v24;
        sub_1A78BF4E8(v26, v20, v11, v18, v14, v32);
        v28 = v32[1];
        v30 = v32[0];
        v12 = v33;
        swift_unknownObjectRetain();
        v13 = v30;
        v26 = v19;
        v39 = v22;
      }

      else
      {
        v29 = *(v9 + 1);
        if (!v29)
        {
          goto LABEL_32;
        }

        v39 = v3;
        v28 = *(v9 + 2);
        swift_unknownObjectRetain();
        v12 = 0;
        ++v5;
        v13 = v29;
      }

      v34[0] = v10;
      v35 = v13;
      v36 = v28;
      v37 = v12;
      v38 = (v10 & 0x20) == 0;
      j__swift_unknownObjectRetain();
      sub_1A7917A18(v10, a1, v34);
      if (v2)
      {
        sub_1A78BF494(a2);
        j__swift_unknownObjectRelease();
        goto LABEL_24;
      }

      j__swift_unknownObjectRelease();
      v3 = v39;
      if (v5 == v4 >> 1)
      {
        sub_1A78BF494(a2);
LABEL_24:
        swift_unknownObjectRelease();
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_1A78C5A88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1A78C57C4(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v16 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

unsigned __int8 *sub_1A78C5B9C(unsigned __int8 *result, unsigned __int8 a2)
{
  v2 = result;
  if (*result != a2)
  {
    v5 = 1;
    goto LABEL_9;
  }

  if (result[48])
  {
    v4 = *(result + 3);
    v3 = *(result + 4);
    if (v4 != v3 >> 1)
    {
      if (v4 >= (v3 >> 1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      if (!*(*(result + 2) + v4))
      {
        if (!__OFSUB__(v3 >> 1, v4))
        {
          return *(result + 1);
        }

        goto LABEL_12;
      }
    }

    v5 = 3;
LABEL_9:
    sub_1A78D6B80();
    swift_allocError();
    *v6 = v5;
    swift_willThrow();
    return sub_1A78BF494(v2);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A78C5C60(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void *, uint64_t *))
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_1A78C5D88((a2 + a3), (a2 + (a4 >> 1)), a5);
    if (v7)
    {
      return swift_unknownObjectRelease();
    }

    result = a6(v10);
    if (result)
    {
      v11 = getccec_pub_ctx_size();
      v13 = MEMORY[0x1EEE9AC00](v11);
      v12 = sub_1A78C0EA8(v13, a7);
      swift_unknownObjectRelease();
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C5D88(_BYTE *a1, _BYTE *a2, uint64_t (*a3)(void))
{
  result = a3();
  if (!result)
  {
    goto LABEL_15;
  }

  result = [objc_opt_self() groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result + 0x4000000000000000 < 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!a1)
  {
    v6 = 1;
    goto LABEL_10;
  }

  v6 = 1;
  if (a2 - a1 == ((2 * result) | 1))
  {
    if (a2 != a1)
    {
      if (*a1 == 4)
      {
        return result;
      }

      v6 = 5;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_10:
  sub_1A78D6484();
  swift_allocError();
  *v7 = v6;
  *(v7 + 4) = 1;
  return swift_willThrow();
}

uint64_t *sub_1A78C5E7C(uint64_t *result, void *a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(void))
{
  v6 = *result;
  if (!*result)
  {
    goto LABEL_6;
  }

  v7 = a4[2];
  v8 = a4[3] >> 1;
  v9 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = a4[1];
  result = a6();
  if (result)
  {
    result = MEMORY[0x1AC55DB90](result, v9, v13 + v7, v6);
    *a5 = result;
    *a2 = a3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1A78C5F88(unint64_t result, unsigned int (*a2)(void), uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  if (HIDWORD(result))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result)
  {
    v7 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | HIWORD(v8);
    if (v9 == -1)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = (v9 + 1);
    }
  }

  else
  {
    v10 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v10;
  v13 = v11;

  sub_1A78C60E4(v12, v4, &v13, a2, a3);

  if (v3)
  {
  }

  return v11;
}

unint64_t Curve25519.KeyAgreement.PrivateKey.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A78C6074(0x20uLL);
  *a1 = result;
  return result;
}

uint64_t sub_1A78C60E4(const void *a1, unint64_t a2, uint64_t *a3, unsigned int (*a4)(void), uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = _swift_stdlib_malloc_size(a1);
  v11 = sub_1A78C0CEC(a2, a1 + 32, a1 + v10);
  if (v12)
  {
    v13 = v12 + v11;
  }

  else
  {
    v13 = 0;
  }

  if (!ccrng())
  {
    goto LABEL_9;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  if (a4())
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  v14 = *a3;
  result = swift_beginAccess();
  *(v14 + 16) = a5;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void *Curve25519.KeyAgreement.PrivateKey.publicKey.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1A78C65E0();
  *a1 = result;
  return result;
}

void *sub_1A78C6204(uint64_t a1)
{
  if (*(a1 + 16) == 32)
  {
    result = sub_1A78BDC10(32, 0);
    v3 = *(a1 + 48);
    *(result + 2) = *(a1 + 32);
    *(result + 3) = v3;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v4 = 0;
    *(v4 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1A78C6284(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    v8[v10 + 32] = v7;
    v7 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v7;
    v8[v12 + 32] = 0;
    *a2 = v8;
    v8 = (v10 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_1A78C57D8(a2, a3);
    if (v4)
    {
      return;
    }

    v4 = *a2;
    v13 = *(*a2 + 16);
    v12 = v13 - v7;
    if ((v13 - v7) > 127)
    {
      if (v13 >= v7)
      {
        v10 = 71 - __clz(v12);
        a3 = v10 >> 3;
        sub_1A7919F9C(v10 >> 3, v7, v13);
        v4 = *a2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    v4 = sub_1A78F5C2C(v4);
LABEL_11:
    if (v8 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v14 = v4 + 32;
    v8[(v4 + 32)] = (v10 >> 3) | 0x80;
    *a2 = v4;
    if (v7 < *(v4 + 2))
    {
      v14[v7] = v12 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v4 + 2))
      {
        v14[v7 + 1] = v12 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v4 + 2))
        {
          v14[v7 + 2] = v12 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v4 + 2))
          {
            v14[v7 + 3] = v12 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v4 + 2))
            {
              v14[v7 + 4] = v12 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v4 + 2))
              {
                v14[v7 + 5] = v12 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v4 + 2))
                {
                  v14[v7 + 6] = v12 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v4 + 2))
                  {
                    v14[v7 + 7] = v12 >> (v10 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v8 = sub_1A78C57C4(0, *(v8 + 2) + 1, 1, v8);
  }

  v15 = *a2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_30;
  }

LABEL_41:
  v4 = sub_1A78F5C2C(v4);
LABEL_30:
  if (v8 < *(v4 + 2))
  {
    v8[v4 + 32] = v12;
    goto LABEL_32;
  }

  __break(1u);
}

void *sub_1A78C65E0()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = sub_1A793DB28();
  *(v0 + 16) = 32;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  if (!ccrng())
  {
LABEL_5:
    __break(1u);
  }

  if (cccurve25519_make_pub_with_rng())
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = sub_1A78C66DC(v0);

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t static HKDF.extract<A>(inputKeyMaterial:salt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a3;
  v50 = a5;
  v52 = a1;
  v53 = a2;
  v51 = a7;
  swift_getAssociatedTypeWitness();
  v48 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v48 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v44 - v12;
  v13 = swift_checkMetadataState();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v44 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v19 = sub_1A793DC78();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v44 - v23;
  v25 = *(a4 - 1);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v22);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v44 - v30;
  v52 = *v52;
  (*(v20 + 16))(v24, v53, v19);
  if ((*(v25 + 48))(v24, 1, a4) == 1)
  {
    (*(v20 + 8))(v24, v19);
    v32 = sub_1A78C24CC(MEMORY[0x1E69E7CC0]);
    v33 = v32;
    v34 = a6;
LABEL_7:
    v54 = v52;
    MEMORY[0x1EEE9AC00](v32);
    v43 = v50;
    *(&v44 - 6) = v49;
    *(&v44 - 5) = a4;
    *(&v44 - 4) = v43;
    *(&v44 - 3) = v34;
    *(&v44 - 2) = v33;
    type metadata accessor for HashedAuthenticationCode();
    SymmetricKey.withUnsafeBytes<A>(_:)(sub_1A78C6C7C, (&v44 - 8));
  }

  (*(v25 + 32))(v31, v24, a4);
  sub_1A793D5A8();
  v35 = sub_1A793DB98();
  v36 = *(v47 + 8);
  v36(v18, v13);
  v34 = a6;
  if (v35 != 1)
  {
    (*(v25 + 16))(v29, v31, a4);
    v41 = *(*(*(*(a6 + 8) + 8) + 8) + 8);
    v42 = sub_1A793DB38();
    v33 = sub_1A78C24CC(v42);

    v32 = (*(v25 + 8))(v31, a4);
    goto LABEL_7;
  }

  v37 = v44;
  sub_1A793D5A8();
  v38 = v45;
  sub_1A793DBC8();
  v36(v37, v13);
  v39 = AssociatedTypeWitness;
  result = (*(*(AssociatedTypeWitness - 8) + 48))(v38, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    swift_getAssociatedConformanceWitness();
    SymmetricKey.init<A>(data:)(v38, v39, &v54);
    v32 = (*(v25 + 8))(v31, a4);
    v33 = v54;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C6C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[4];
  v7 = v3[6];
  v11[0] = a1;
  v11[1] = a2;
  v10 = v7;
  v8 = sub_1A78C6CF0();
  return static HMAC.authenticationCode<A>(for:using:)(v11, &v10, v5, MEMORY[0x1E69E6290], v6, v8, a3);
}

unint64_t sub_1A78C6CF0()
{
  result = qword_1ED5F8A28;
  if (!qword_1ED5F8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A28);
  }

  return result;
}

uint64_t static HMAC.authenticationCode<A>(for:using:)@<X0>(uint64_t a1@<X0>, size_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for HMAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  v21 = *a2;

  HMAC.init(key:)(&v21, a3, a5);
  HMAC.update<A>(data:)(a1, v14, a4, a6);
  HMAC.finalize()(v14, a7);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1A78C6E78(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  return (*(v4 + 40))(a1, a2, v3);
}

uint64_t sub_1A78C6F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t *))
{
  v12 = 0;
  (*(a4 + 24))(&v11, a2, a4);
  v10 = getccec_pub_ctx_size();
  result = sub_1A78C0EA8(v10, a6);
  if (v12)
  {
    v8 = result;

    sub_1A78D6484();
    swift_allocError();
    *v9 = 1;
    *(v9 + 4) = 1;
    swift_willThrow();
    return v8;
  }

  return result;
}

uint64_t *sub_1A78C703C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v9 = v1[5];
  return sub_1A78C7148(a1);
}

void *sub_1A78C70A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[2];
  v9 = v3[6];
  v8 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  result = (*(v3[4] + 24))(&v13);
  if (a1)
  {
    result = a3(v13, a2 - a1, a1, v8);
    *v9 = result;
    *v10 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1A78C7148(uint64_t *result)
{
  if (*result)
  {
    v1 = *result;
    return sub_1A793D6A8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A78C7204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(*(*(a3 + 8) + 8) + 8);
  v10 = sub_1A793DB98();
  result = a4();
  if (!result)
  {
    goto LABEL_9;
  }

  result = [objc_opt_self() groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result + 0x4000000000000000 < 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v10 == 2 * result)
  {
    v12 = sub_1A78C7370(a1, a2, *(v9 + 8));
    v14 = v13;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a5 = v12;
    a5[1] = v14;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v15 = 1;
    *(v15 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

uint64_t sub_1A78C7370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v33 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v33 - v15;
  v17 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  (*(v19 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7100, &unk_1A7946B00);
  if (swift_dynamicCast())
  {
    sub_1A78C78FC(v36, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_1A793D6A8();
    v36[0] = v35;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_34;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1A78D4A78(v36);
  sub_1A793DA98();
  if (*(&v38 + 1) >> 60 != 15)
  {
    v36[0] = v38;
    goto LABEL_34;
  }

  v34 = v38;
  v20 = sub_1A793DA88();
  *&v36[0] = sub_1A78CC5A0(v20);
  *(&v36[0] + 1) = v21;
  MEMORY[0x1EEE9AC00](*&v36[0]);
  *(&v33 - 4) = a2;
  *(&v33 - 3) = a3;
  *(&v33 - 2) = a1;
  sub_1A793D778();
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v23 = *(&v36[0] + 1) >> 62;
  if ((*(&v36[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v36[0]), v36[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v36[0]) - LODWORD(v36[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v36[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v36[0] + 16);
    v24 = *(*&v36[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v36[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v36[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v36[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      sub_1A793D758();
LABEL_33:
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v38 = 0;
  *(&v38 + 7) = 0;
  sub_1A793DCF8();
  if (BYTE1(v35) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v38 + v29) = v35;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 == 14)
    {
      *&v35 = v38;
      *(&v35 + 6) = *(&v38 + 6);
      sub_1A793D788();
      LOBYTE(v29) = 0;
    }

    sub_1A793DCF8();
  }

  while ((BYTE1(v35) & 1) == 0);
  if (v29)
  {
    *&v35 = v38;
    *(&v35 + 6) = *(&v38 + 6);
    sub_1A793D788();
    sub_1A78CEEC8(v34, *(&v34 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  sub_1A78CEEC8(v34, *(&v34 + 1));
LABEL_34:
  v30 = v36[0];
  sub_1A78C0990(*&v36[0], *(&v36[0] + 1));
  sub_1A78C0AFC(v30, *(&v30 + 1));
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t sub_1A78C78FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t P256.Signing.PublicKey.isValidSignature<A>(_:for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *v4;
  v11 = sub_1A78BD37C();
  static HashFunction.hash<A>(data:)(a2, &type metadata for SHA256, a3, v11, a4);
  return sub_1A78C8918(v8, v9, v13, v14, v15, v16, v10) & 1;
}

uint64_t static HashFunction.hash<A>(data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 32))(v15, v14);
  HashFunction.update<A>(data:)(a1, a2, a3, a4, a5);
  (*(a4 + 48))(a2, a4);
  return (*(v10 + 8))(v13, a2);
}

uint64_t HashedAuthenticationCode.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_1A793D6A8();
}

uint64_t sub_1A78C7BC0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = v4[2];
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v8)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = _swift_stdlib_malloc_size(v4) - 32;
  v11 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v12 = v10 < v9;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v17 = *v2;
    return sub_1A78DED90(a1);
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  if (HIDWORD(v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9)
  {
    v13 = (v9 - 1) | ((v9 - 1) >> 1) | (((v9 - 1) | ((v9 - 1) >> 1)) >> 2);
    v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8);
    v15 = v14 | HIWORD(v14);
    if (v15 == -1)
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = (v15 + 1);
    }
  }

  else
  {
    v16 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = v16;
  v19 = *v2;
  result = swift_beginAccess();
  v20 = v19[2];
  if ((v20 & 0x8000000000000000) == 0)
  {
    sub_1A78DECAC(v19, 0, v20);

    *v2 = v18;
    return sub_1A78DED90(a1);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A78C7D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v9 = *(a4 + 16);
  if (v9 < a3 || (a3 | a1) < 0 || v9 < a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_11:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v9 < result)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t sub_1A78C7DD0()
{
  result = qword_1ED5F8A60;
  if (!qword_1ED5F8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A60);
  }

  return result;
}

uint64_t sub_1A78C7E34(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (v7 >= v4 && ((v4 | v3) & 0x8000000000000000) == 0 && v7 >= v3)
  {
    return v4 - v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C7ED4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v33[5] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      if (BYTE6(a2) != 12)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 12)
      {
        goto LABEL_13;
      }

LABEL_8:
      v33[3] = MEMORY[0x1E6969080];
      v33[4] = MEMORY[0x1E6969078];
      v33[0] = a1;
      v33[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v33, MEMORY[0x1E6969080]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v31, 0, 14);
          v14 = v31;
          v13 = v31;
          goto LABEL_33;
        }

        v17 = *(v10 + 16);
        v18 = *(v10 + 24);
        v19 = sub_1A793D648();
        if (v19)
        {
          v20 = sub_1A793D678();
          v10 = v17 - v20;
          if (__OFSUB__(v17, v20))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v19 += v10;
        }

        v6 = __OFSUB__(v18, v17);
        v21 = v18 - v17;
        if (!v6)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v31[0] = *v9;
        LOWORD(v31[1]) = v11;
        BYTE2(v31[1]) = BYTE2(v11);
        BYTE3(v31[1]) = BYTE3(v11);
        BYTE4(v31[1]) = BYTE4(v11);
        BYTE5(v31[1]) = BYTE5(v11);
        v13 = v31 + BYTE6(v11);
        v14 = v31;
LABEL_33:
        sub_1A78C2D58(v14, v13, v32);
        v28 = v32[0];
        v29 = v32[1];
        result = __swift_destroy_boxed_opaque_existential_1(v33);
        *a3 = v28;
        a3[1] = v29;
        goto LABEL_34;
      }

      v22 = v10;
      v23 = v10 >> 32;
      v21 = v23 - v22;
      if (v23 >= v22)
      {
        v19 = sub_1A793D648();
        if (!v19)
        {
LABEL_25:
          v25 = sub_1A793D668();
          if (v25 >= v21)
          {
            v26 = v21;
          }

          else
          {
            v26 = v25;
          }

          v27 = (v26 + v19);
          if (v19)
          {
            v13 = v27;
          }

          else
          {
            v13 = 0;
          }

          v14 = v19;
          goto LABEL_33;
        }

        v24 = sub_1A793D678();
        if (!__OFSUB__(v22, v24))
        {
          v19 += v22 - v24;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v7 == 12)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  sub_1A78C0AFC(a1, a2);
  sub_1A78D6484();
  swift_allocError();
  *v15 = 1;
  *(v15 + 4) = 1;
  result = swift_willThrow();
LABEL_34:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78C8170(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  swift_beginAccess();
  v6 = *(v3 + 16);
  if (v6 >> 60)
  {
    __break(1u);
LABEL_12:
    swift_once();
    v15 = *(v2 + 16);
    goto LABEL_4;
  }

  if (v6 != 32)
  {
    sub_1A78C0AFC(v5, v4);

    sub_1A78D6484();
    swift_allocError();
    *v11 = 0;
    *(v11 + 4) = 1;
    swift_willThrow();
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v7 = swift_slowAlloc();
  *(v2 + 16) = v7;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[12] = 0u;
  v7[13] = 0u;
  v7[14] = 0u;
  v7[15] = 0u;
  if (qword_1EB2A6D80 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v8 = ccchacha20poly1305_init();
  if (v8)
  {
    v9 = v8;
    sub_1A78D6484();
    swift_allocError();
    *v10 = v9;
    *(v10 + 4) = 0;
    swift_willThrow();
    sub_1A78C0AFC(v5, v4);

LABEL_9:

    return v2;
  }

  v12 = sub_1A78C94A4(v5, v4, v2);
  sub_1A78C0AFC(v5, v4);
  if (v12)
  {
    sub_1A78D6484();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  return v2;
}

uint64_t sub_1A78C838C()
{
  result = ccchacha20poly1305_info();
  qword_1EB2ADAB8 = result;
  return result;
}

uint64_t sub_1A78C83AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    v13 = swift_allocObject();
    v14 = swift_slowAlloc();
    *(v13 + 16) = v14;
    memmove(v14, *(v12 + 16), 0x100uLL);

    *v5 = v13;
  }

  return sub_1A78C8474(a1, a2, MEMORY[0x1E69E94E8], a3, a4);
}

uint64_t sub_1A78C8474(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = a2[1] >> 62;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_9;
    }

    v7 = v5 + 16;
    v5 = *(v5 + 16);
    if (!__OFSUB__(*(v7 + 8), v5))
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  v8 = *(*(*(a5 + 8) + 8) + 8);
  result = sub_1A793DB98();
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = sub_1A78C3DF4(result);
    MEMORY[0x1EEE9AC00](v9);
    return sub_1A78C9770(sub_1A78C8594);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A78C85B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_1A78C85DC();
}

uint64_t sub_1A78C85DC()
{
  swift_getAssociatedTypeWitness();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

uint64_t sub_1A78C8704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A78C8748(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_1A78C8748(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A78C883C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    v7 = __OFSUB__(v5, v6);
    v4 = v5 - v6;
    if (!v7)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(v2);
LABEL_11:
    v8 = v4;
    sub_1A78C0990(v1, v2);
    sub_1A78C3AA4(v8 / 2, v1, v2, &v12);
    v9 = v12;
    sub_1A78C0990(v1, v2);
    sub_1A78C8A28(v8 / 2, v1, v2, &v11);
    return v9;
  }

  LODWORD(v4) = HIDWORD(v1) - v1;
  if (!__OFSUB__(HIDWORD(v1), v1))
  {
    v4 = v4;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C8918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  HIBYTE(v19) = 0;
  v18[0] = a3;
  v18[1] = a4;
  v7 = a7 + 32;
  v18[2] = a5;
  v18[3] = a6;
  v20 = a1;
  v21 = a2;
  v8 = sub_1A78C883C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1A78C0990(v8, v9);
  sub_1A78C0990(v12, v14);
  v15 = sub_1A78C8B74(v8, v10, v8, v10, v12, v14, v18, &v19, v7, &v19 + 7, sub_1A78C8E60);
  sub_1A78C0AFC(v8, v10);
  sub_1A78C0AFC(v12, v14);
  v16 = *MEMORY[0x1E69E9840];
  return (v15 == 0) & HIBYTE(v19);
}

uint64_t sub_1A78C8A28@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_1A78C09E4(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_1A78C0A98(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_1A793D798();
    v14 = v13;
    result = sub_1A78C0AFC(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A78C8B74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *__return_ptr, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a6;
  v13 = a5;
  v16 = a11;
  v37[2] = *MEMORY[0x1E69E9840];
  v17 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v17)
    {
      v37[0] = a1;
      LOWORD(v37[1]) = a2;
      BYTE2(v37[1]) = BYTE2(a2);
      BYTE3(v37[1]) = BYTE3(a2);
      BYTE4(v37[1]) = BYTE4(a2);
      BYTE5(v37[1]) = BYTE5(a2);
      (a11)(&v36, v37, v37 + BYTE6(a2), a3, a4, a5, a6);
      sub_1A78C0AFC(a3, a4);
      result = sub_1A78C0AFC(v13, v12);
      if (!v11)
      {
        result = v36;
      }

      goto LABEL_29;
    }

    goto LABEL_12;
  }

  if (v17 != 2)
  {
    memset(v37, 0, 14);
    (a11)(&v36, v37, v37, a3, a4, a5, a6);
    sub_1A78C0AFC(a3, a4);
    if (v11)
    {
      result = sub_1A78C0AFC(v13, v12);
    }

    else
    {
      sub_1A78C0AFC(v13, v12);
      result = v36;
    }

    goto LABEL_29;
  }

  v31 = a11;
  v32 = a5;
  v33 = a7;
  v34 = a8;
  v35 = v11;
  v19 = *(a1 + 16);
  v29 = *(a1 + 24);
  a1 = sub_1A793D648();
  v13 = a1;
  if (a1)
  {
    a1 = sub_1A793D678();
    if (__OFSUB__(v19, a1))
    {
      goto LABEL_31;
    }

    v13 += v19 - a1;
  }

  v20 = __OFSUB__(v29, v19);
  v21 = v29 - v19;
  if (v20)
  {
    __break(1u);
LABEL_12:
    v30 = v12;
    v22 = a1;
    v21 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v31 = v16;
      v32 = v13;
      v33 = a7;
      v34 = a8;
      v35 = v11;
      v13 = sub_1A793D648();
      if (!v13)
      {
LABEL_16:
        v12 = v30;
        goto LABEL_17;
      }

      v23 = sub_1A793D678();
      if (!__OFSUB__(v22, v23))
      {
        v13 += v22 - v23;
        goto LABEL_16;
      }

LABEL_32:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_17:
  v24 = sub_1A793D668();
  if (v24 >= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v24;
  }

  v26 = v25 + v13;
  if (v13)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v31(v37, v13, v27, a3, a4, v32, v12, v33, v34, a9, a10);
  sub_1A78C0AFC(a3, a4);
  result = sub_1A78C0AFC(v32, v12);
  if (!v35)
  {
    result = v37[0];
  }

LABEL_29:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78C8E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  result = sub_1A78C8EB4(a1, a2, a3, a4, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78C8EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  result = sub_1A78C8F08(a1, a2, a3, a4, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78C8F08@<X0>(uint64_t result@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v6 = result;
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_15;
    }

    v8 = a3 >> 40;
    if (!a4)
    {
      __break(1u);
      goto LABEL_32;
    }

    if (result)
    {
LABEL_25:
      result = ccec_verify_composite();
      goto LABEL_26;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    if (a4)
    {
      if (result)
      {
        goto LABEL_25;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v16 = a5;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  a5 = sub_1A793D648();
  if (a5)
  {
    v11 = sub_1A793D678();
    if (__OFSUB__(v9, v11))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    a5 = (a5 + v9 - v11);
  }

  if (__OFSUB__(v10, v9))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = sub_1A793D668();
  if (!a4)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v6)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a5)
  {
LABEL_22:
    result = ccec_verify_composite();
    a5 = v16;
LABEL_26:
    *a5 = result;
    v15 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
LABEL_15:
  v12 = a2;
  if (a2 > a2 >> 32)
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = a5;
  v13 = sub_1A793D648();
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = sub_1A793D678();
  if (__OFSUB__(v12, v14))
  {
LABEL_30:
    __break(1u);
  }

  v13 += v12 - v14;
LABEL_19:
  result = sub_1A793D668();
  if (!a4)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v6)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v13)
  {
    goto LABEL_22;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A78C9148(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);
  sub_1A78C3AA4(12, a2, a3, &v22);
  sub_1A78C7ED4(v22, *(&v22 + 1), &v23);
  if (v5)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v21[0] = a1;
    v22 = v23;
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    swift_allocObject();

    v11 = sub_1A78C8170(v21, &v22);
    if (a5 >> 60 != 15)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        v12 = swift_allocObject();
        v13 = swift_slowAlloc();
        *(v12 + 16) = v13;
        memmove(v13, *(v11 + 16), 0x100uLL);

        v11 = v12;
      }

      sub_1A78CBE8C(a4, a5);
      sub_1A78FD264(a4, a5, v11);
      sub_1A78CEEC8(a4, a5);
    }

    v23 = xmmword_1A793F230;
    sub_1A78C0B50(12, a2, a3, v21);
    sub_1A78C3CAC(16, v21[0], v21[1], &v22);
    v14 = v22;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = swift_allocObject();
      v16 = swift_slowAlloc();
      *(v15 + 16) = v16;
      memmove(v16, *(v11 + 16), 0x100uLL);
    }

    sub_1A78C9630(v14, *(&v14 + 1), &v23);
    sub_1A78C0AFC(v14, *(&v14 + 1));
    sub_1A78C8A28(16, a2, a3, &v22);
    v17 = v22;
    v18 = sub_1A78CA02C(v22, *(&v22 + 1));
    sub_1A78C0AFC(v17, *(&v17 + 1));
    if (v18)
    {

      return v23;
    }

    else
    {
      sub_1A78D6484();
      swift_allocError();
      *v20 = 2;
      *(v20 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v23, *(&v23 + 1));
    }
  }

  return result;
}

uint64_t sub_1A78C94A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    if (a1 > a1 >> 32)
    {
      __break(1u);
    }

    v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
LABEL_8:
    v6 = sub_1A792CA1C(a1, v5, a3);

    goto LABEL_12;
  }

  if (v4 == 2)
  {
    a1 = *(a1 + 16);
    v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

LABEL_9:
  if (qword_1EB2A6D80 != -1)
  {
    swift_once();
  }

  v7 = *(a3 + 16);
  v6 = ccchacha20poly1305_setnonce();

LABEL_12:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1A78C9630(uint64_t result, unint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = v3 + 16;
    v3 = *(v3 + 16);
    if (!__OFSUB__(*(v5 + 8), v3))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v3), v3))
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_20;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
LABEL_18:
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_20:
      result = 0;
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(a2);
LABEL_21:
    v9 = sub_1A78C3DF4(result);
    MEMORY[0x1EEE9AC00](v9);
    return sub_1A78C9770(sub_1A78C9FA8);
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    result = HIDWORD(result) - result;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A78C9770(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1A78C0AFC(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      result = sub_1A78C9A20(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1A78C0AFC(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1A78C0AFC(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_1A793D648();
  if (result)
  {
    v13 = result;
    v14 = sub_1A793D678();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_1A793D668();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78C9A20(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1A793D708();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_1A793D648();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1A793D678();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_1A793D668();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

uint64_t sub_1A78C9AFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char *a6, uint64_t a7)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v12 = sub_1A78C9FCC(a3, a1, a2);
  if (v14)
  {
    v15 = v14 + v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14 + v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v17)
    {
      v47[0] = a4;
      LOWORD(v47[1]) = a5;
      BYTE2(v47[1]) = BYTE2(a5);
      v18 = v15 - v16;
      BYTE3(v47[1]) = BYTE3(a5);
      BYTE4(v47[1]) = BYTE4(a5);
      if (!v16)
      {
        v18 = 0;
      }

      v7 = BYTE6(a5);
      BYTE5(v47[1]) = BYTE5(a5);
      if (v18 >= BYTE6(a5))
      {
        if (qword_1EB2A6D80 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_66;
      }

      goto LABEL_63;
    }

    v46 = a6;
    a6 = v15;
    v15 = a4;
    if (a4 >> 32 < a4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v24 = sub_1A793D648();
    if (v24)
    {
      v36 = sub_1A793D678();
      if (__OFSUB__(a4, v36))
      {
        goto LABEL_74;
      }

      v24 += a4 - v36;
    }

    v15 = a6;
    v37 = sub_1A793D668();
    if (v37 >= (a4 >> 32) - a4)
    {
      v28 = (a4 >> 32) - a4;
    }

    else
    {
      v28 = v37;
    }

    if (v24)
    {
      v38 = v28;
    }

    else
    {
      v38 = 0;
    }

    v39 = &a6[-v16];
    if (!v16)
    {
      v39 = 0;
    }

    if (v39 >= v38)
    {
      if (qword_1EB2A6D80 == -1)
      {
        v40 = v46;
        if (v24)
        {
          goto LABEL_48;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

LABEL_71:
      swift_once();
      v40 = v46;
      if (v24)
      {
LABEL_48:
        v32 = v40(qword_1EB2ADAB8, *(a7 + 16), v28, v24, v16);
        if (!v32)
        {
          v33 = v28;
          v34 = v16;
          v35 = v15;
          goto LABEL_50;
        }

        goto LABEL_56;
      }

      goto LABEL_72;
    }

    goto LABEL_68;
  }

  if (v17 != 2)
  {
    memset(v47, 0, 14);
    if (v16 && v15 - v16 < 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (qword_1EB2A6D80 != -1)
    {
      swift_once();
    }

    v32 = (a6)(qword_1EB2ADAB8, *(a7 + 16), 0, v47, v16);
    if (!v32)
    {
      v44 = 0;
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  v46 = a6;
  a6 = v15;
  v23 = *(a4 + 16);
  v22 = *(a4 + 24);

  v7 = a5 & 0x3FFFFFFFFFFFFFFFLL;
  v24 = sub_1A793D648();
  if (v24)
  {
    v7 = a5 & 0x3FFFFFFFFFFFFFFFLL;
    v25 = sub_1A793D678();
    if (__OFSUB__(v23, v25))
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

    v24 += v23 - v25;
  }

  v26 = __OFSUB__(v22, v23);
  v15 = v22 - v23;
  if (!v26)
  {
    v27 = sub_1A793D668();
    if (v27 >= v15)
    {
      v28 = v15;
    }

    else
    {
      v28 = v27;
    }

    if (v24)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = &a6[-v16];
    if (!v16)
    {
      v30 = 0;
    }

    if (v30 >= v29)
    {
      if (qword_1EB2A6D80 == -1)
      {
        v31 = v46;
        if (!v24)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

LABEL_31:
        v32 = v31(qword_1EB2ADAB8, *(a7 + 16), v28, v24, v16);
        if (!v32)
        {
          v33 = v28;
          v34 = v16;
          v35 = a6;
LABEL_50:
          sub_1A78C9FCC(v33, v34, v35);
          result = sub_1A78C0AFC(a4, a5);
          v42 = *MEMORY[0x1E69E9840];
          return result;
        }

LABEL_56:
        v43 = v32;
        sub_1A78D6484();
        swift_allocError();
        *v21 = v43;
        goto LABEL_57;
      }

LABEL_69:
      swift_once();
      v31 = v46;
      if (!v24)
      {
        goto LABEL_70;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_13:
  v19 = (a6)(qword_1EB2ADAB8, *(a7 + 16), v7, v47, v16);
  if (!v19)
  {
    v44 = v7;
LABEL_60:
    sub_1A78C9FCC(v44, v16, v15);
    goto LABEL_61;
  }

  v20 = v19;
  sub_1A78D6484();
  swift_allocError();
  *v21 = v20;
LABEL_57:
  *(v21 + 4) = 0;
  swift_willThrow();
LABEL_61:
  result = sub_1A78C0AFC(a4, a5);
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A78C9FCC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v5 = a3 - a2;
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (result)
  {
    if (v6 < result)
    {
      result = v5;
      if (a2)
      {
        return result;
      }

      return 0;
    }

    if (!a2)
    {
LABEL_17:
      __break(1u);
      return result;
    }
  }

  else if (!a2)
  {
    return 0;
  }

  if (v5 < result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1A78CA02C(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = a1;
    if (a1 > a1 >> 32)
    {
      __break(1u);
    }

LABEL_7:

    v6 = sub_1A78CA1C8(v5, a2 & 0x3FFFFFFFFFFFFFFFLL, v2);

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    goto LABEL_7;
  }

LABEL_8:
  v7 = qword_1EB2A6D80;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *(v2 + 16);
  v9 = ccchacha20poly1305_verify();

  v6 = v9 == 0;
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

uint64_t sub_1A78CA1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A793D648();
  if (v5)
  {
    v6 = v5;
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_10;
    }

    v8 = a1 - result + v6;
  }

  else
  {
    v8 = 0;
  }

  result = sub_1A793D668();
  if (qword_1EB2A6D80 == -1)
  {
    if (v8)
    {
LABEL_7:
      v9 = *(a3 + 16);
      return ccchacha20poly1305_verify() == 0;
    }
  }

  else
  {
    result = swift_once();
    if (v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1A78CA288()
{
  v1 = *(v0 + 16);
  memset_s(v1, 0x100uLL, 0, 0x100uLL);
  MEMORY[0x1AC55E570](v1, -1, -1);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A78CA31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t static ChaChaPoly.seal<A>(_:using:nonce:)(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v13 = *a2;
  v8 = *a3;
  v11 = xmmword_1A7940CC0;
  *v12 = v8;
  v9 = sub_1A78CA3EC();
  return sub_1A78CA440(&v13, a1, v12, &v11, a4, MEMORY[0x1E6969080], a5, v9);
}

unint64_t sub_1A78CA3EC()
{
  result = qword_1ED5F89C8;
  if (!qword_1ED5F89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89C8);
  }

  return result;
}

unint64_t sub_1A78CA440(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v35 = a2;
  v36 = a5;
  v37 = a7;
  v38 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v12 = sub_1A793DC78();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v41 = *(a6 - 8);
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v21 = *a3;
  v20 = a3[1];
  if (v20 >> 60 == 15)
  {
    v43 = xmmword_1A793F380;
    sub_1A78CBDF4(&v43);
    v22 = *(&v43 + 1);
    v23 = v43;
  }

  else
  {
    v23 = *a3;
    v22 = a3[1];
  }

  v42[0] = v19;
  *&v43 = v23;
  *(&v43 + 1) = v22;
  type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
  swift_allocObject();
  sub_1A78CBE8C(v21, v20);

  sub_1A78C0990(v23, v22);
  v24 = sub_1A78C8170(v42, &v43);
  if (v8)
  {
    sub_1A78C0AFC(v23, v22);
  }

  else
  {
    v42[1] = v24;
    v25 = v39;
    v26 = v40;
    (*(v39 + 16))(v16, v38, v40);
    v27 = v41;
    if ((*(v41 + 48))(v16, 1, a6) == 1)
    {
      (*(v25 + 8))(v16, v26);
    }

    else
    {
      v28 = v33;
      (*(v27 + 32))(v33, v16, a6);
      sub_1A78FDEB4(v28, a6, v34);
      (*(v27 + 8))(v28, a6);
    }

    *&v43 = v23;
    *(&v43 + 1) = v22;
    sub_1A78C0990(v23, v22);
    sub_1A78C83AC(v35, &v43, v36, v37);
    sub_1A78CC178();
    sub_1A78C0AFC(v23, v22);

    v29 = *(&v43 + 1);
    v22 = v43;
    sub_1A78C0990(v43, *(&v43 + 1));
    sub_1A78C0AFC(v22, v29);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t Curve25519.KeyAgreement.PublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A78C49E8();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void *sub_1A78CA880@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2 - a1 == 32)
  {
    result = sub_1A78BDC10(32, 0);
    if (a2 <= a1)
    {
      __break(1u);
    }

    else
    {
      v7 = a1[1];
      *(result + 2) = *a1;
      *(result + 3) = v7;
      *a3 = result;
    }
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v8 = 0;
    *(v8 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1A78CA924(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
    v4 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v6 = v5 | HIWORD(v5);
    if (v6 == -1)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = (v6 + 1);
    }
  }

  else
  {
    v7 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = v7;
  v9 = _swift_stdlib_malloc_size(v8);
  v10 = sub_1A78C0CEC(v2, (v8 + 4), v8 + v9);
  v12 = v11 + v10;
  v14 = v11 + v13;
  if (!v11)
  {
    v14 = 0;
    v12 = 0;
  }

  v19[0] = v12;
  v19[1] = v14;
  swift_beginAccess();
  v15 = *(a2 + 16);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_1A78CAB98(a2 + 32, v19, v18);
  v16 = v18[0];
  if (v18[0])
  {
    sub_1A78D6484();
    swift_allocError();
    *v17 = v16;
    *(v17 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v8[2] = 32;
  }

  swift_bridgeObjectRelease_n();

  return v8;
}

uint64_t Curve25519.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *v2;

  sub_1A793DB18();
  v7 = sub_1A78CA924(0x20uLL, v6);

  if (!v3)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1A78CAB98@<X0>(uint64_t a1@<X0>, void *a2@<X2>, _DWORD *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!ccrng())
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!*a2)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  result = cccurve25519_with_rng();
  *a3 = result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78CACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, __int128 *a5@<X8>)
{
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v14 = *(*(*(*(a3 + 8) + 8) + 8) + 8);
  v15 = sub_1A793DB38();
  sub_1A78BDFE0(v15, v15 + 32, 0, (2 * *(v15 + 16)) | 1, v50);
  if (v5)
  {
    (*(v11 + 8))(a1, a2);
  }

  v53 = v51;
  v54[0] = v52[0];
  *(v54 + 9) = *(v52 + 9);
  sub_1A78CB1E8(&v53, &v45);
  v17 = sub_1A78CB244(v50, 0x30u, v49);
  v45 = v49[0];
  v46 = v49[1];
  v47 = v49[2];
  v48 = v49[3];
  result = a4(v17);
  if (!result)
  {
    goto LABEL_34;
  }

  v18 = result;
  v55 = objc_opt_self();
  result = [v55 groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = (*(&v46 + 1) >> 1) - v46;
  if (__OFSUB__(*(&v46 + 1) >> 1, v46))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result < v19)
  {
LABEL_9:
    sub_1A78D6484();
    swift_allocError();
    *v21 = 1;
    *(v21 + 4) = 1;
    swift_willThrow();
    sub_1A78C2ADC(&v45, &qword_1EB2A7408, &qword_1A7941540);
    sub_1A78BF494(v50);
    return (*(v11 + 8))(a1, a2);
  }

  v20 = v48;
  if (__OFSUB__(*(&v48 + 1) >> 1, v48))
  {
    goto LABEL_23;
  }

  if (result < (*(&v48 + 1) >> 1) - v48)
  {
    goto LABEL_9;
  }

  v37 = *(&v46 + 1);
  v38 = v46;
  v35 = *(&v48 + 1);
  v36 = (*(&v48 + 1) >> 1) - v48;
  v39 = v47;
  v40 = v45;
  v44 = xmmword_1A793F230;
  result = [v55 groupOrderByteCountForCP_];
  if (result < 0)
  {
    goto LABEL_24;
  }

  v34 = v20;
  if (result + 0x4000000000000000 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1A793D768();
  result = [v55 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = __OFSUB__(result, v19);
  result -= v19;
  if (v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1A78C3DF4(result);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7108, &unk_1A7946860);
  v42 = v23;
  v33 = sub_1A78CB614();
  v43 = v33;
  v24 = swift_allocObject();
  v41[0] = v24;
  *(v24 + 16) = v40;
  v25 = v37;
  *(v24 + 32) = v38;
  *(v24 + 40) = v25;
  v38 = v23;
  result = __swift_project_boxed_opaque_existential_1(v41, v23);
  v26 = *(result + 16);
  if (__OFSUB__(*(result + 24) >> 1, v26))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = *(result + 8) + v26;
  swift_unknownObjectRetain_n();
  sub_1A793D788();
  __swift_destroy_boxed_opaque_existential_1(v41);
  swift_unknownObjectRelease();
  result = [v55 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = __OFSUB__(result, v36);
  result -= v36;
  if (v22)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1A78C3DF4(result);
    v28 = v38;
    v42 = v38;
    v43 = v33;
    v29 = swift_allocObject();
    v41[0] = v29;
    *(v29 + 16) = v39;
    v30 = v35;
    *(v29 + 32) = v34;
    *(v29 + 40) = v30;
    result = __swift_project_boxed_opaque_existential_1(v41, v28);
    v31 = *(result + 16);
    if (!__OFSUB__(*(result + 24) >> 1, v31))
    {
      v32 = *(result + 8) + v31;
      swift_unknownObjectRetain();
      sub_1A793D788();
      __swift_destroy_boxed_opaque_existential_1(v41);
      sub_1A78C2ADC(&v45, &qword_1EB2A7408, &qword_1A7941540);
      sub_1A78BF494(v50);
      result = (*(v11 + 8))(a1, a2);
      *a5 = v44;
      return result;
    }

    goto LABEL_33;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1A78CB1B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A78CB244@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 **a3@<X8>)
{
  if (*a1 != a2 || (a1[48] & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_1A78BF494(a1);
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v29 = *(a1 + 8);
  v30 = v9;
  v31 = v8;
  sub_1A78BF874(v32);
  if (v33 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v39[0] = v32[0];
  v39[1] = v32[1];
  v39[2] = v32[2];
  v40 = v33;
  sub_1A78BF80C(a1, v28);
  sub_1A78BF80C(a1, v28);
  v10 = sub_1A78CB518(v39, 2u);
  if (v3)
  {
LABEL_11:
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    return swift_unknownObjectRelease();
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  v17 = v10;
  sub_1A78BF874(v34);
  if (v35 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v37[0] = v34[0];
  v37[1] = v34[1];
  v37[2] = v34[2];
  v38 = v35;
  v18 = sub_1A78CB518(v37, 2u);
  v26 = v19;
  v27 = v20;
  v41 = v21;
  sub_1A78BF874(v36);
  if (v36[48] != 255)
  {
    sub_1A78C2ADC(v36, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78D6B80();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    v28[0] = v17;
    v28[1] = v14;
    v28[2] = v15;
    v28[3] = v16;
    v28[4] = v18;
    v28[5] = v26;
    v28[6] = v27;
    v28[7] = v41;
    sub_1A78C2ADC(v28, &qword_1EB2A7408, &qword_1A7941540);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF494(a1);
  sub_1A78BF494(a1);
  result = swift_unknownObjectRelease();
  *a3 = v17;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v16;
  a3[4] = v18;
  a3[5] = v26;
  v25 = v41;
  a3[6] = v27;
  a3[7] = v25;
  return result;
}

unsigned __int8 *sub_1A78CB518(unsigned __int8 *result, unsigned __int8 a2)
{
  v2 = result;
  if (*result == a2)
  {
    if ((result[48] & 1) == 0)
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v3 = *(result + 3);
    v4 = *(result + 4) >> 1;
    if (__OFSUB__(v4, v3))
    {
      __break(1u);
    }

    else
    {
      if (v4 - v3 <= 0)
      {
        goto LABEL_17;
      }

      result = *(result + 1);
      v5 = *(v2 + 16);
      if (v3 == v4)
      {
        return result;
      }

      if (v3 < v4)
      {
        v6 = *(v5 + v3);
        if (v3 + 1 == v4)
        {
          if (!*(v5 + v3))
          {
            return result;
          }

LABEL_16:
          if ((v6 & 0x80) == 0)
          {
            return result;
          }

          goto LABEL_17;
        }

        if (v3 + 1 < v4)
        {
          if (v6 != 255)
          {
            if (*(v5 + v3))
            {
              goto LABEL_16;
            }

            if (*(v5 + v3 + 1) < 0)
            {
              return result;
            }
          }

LABEL_17:
          v7 = 4;
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = 1;
LABEL_18:
  sub_1A78D6B80();
  swift_allocError();
  *v8 = v7;
  swift_willThrow();
  return sub_1A78BF494(v2);
}

unint64_t sub_1A78CB614()
{
  result = qword_1ED5F8988;
  if (!qword_1ED5F8988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2A7108, &unk_1A7946860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8988);
  }

  return result;
}

uint64_t static MessageAuthenticationCode.== infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v39 = a1;
  v40 = a3;
  swift_getAssociatedTypeWitness();
  v9 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A793DC78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v35 - v12;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  v21 = a2;
  sub_1A793D5A8();
  v22 = sub_1A793DB98();
  v23 = *(v14 + 8);
  v23(v20, v13);
  if (v22 != 1)
  {
    v32 = sub_1A78C7370(v21, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
    v34 = v33;
    v41[0] = v32;
    v41[1] = v33;
    v31 = sub_1A78CB9C8(v39, v41, v40, MEMORY[0x1E6969080], *(v37 + 8), MEMORY[0x1E6969078]);
    sub_1A78C0AFC(v32, v34);
    return v31 & 1;
  }

  sub_1A793D5A8();
  v24 = v38;
  sub_1A793DBC8();
  v23(v18, v13);
  v25 = AssociatedTypeWitness;
  v26 = *(AssociatedTypeWitness - 8);
  result = (*(v26 + 48))(v24, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v28 = *(v37 + 8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = v38;
    v31 = sub_1A78CB9C8(v39, v38, v40, v25, v28, AssociatedConformanceWitness);
    (*(v26 + 8))(v30, v25);
    return v31 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A78CBA5C()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  return sub_1A793D6A8();
}

uint64_t sub_1A78CBAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  result = a4 - a3;
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (a1)
  {
    if (v7 == a2 - a1)
    {
      if (a3)
      {
        result = cc_cmp_safe();
        *a5 = result == 0;
        return result;
      }

      goto LABEL_11;
    }

LABEL_9:
    *a5 = 0;
    return result;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1A78CBB34(uint64_t *result)
{
  v1 = result;
  v18 = *MEMORY[0x1E69E9840];
  v3 = *result;
  v2 = result[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_1A78C0AFC(v3, v2);
      v16 = v3;
      v17 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v1 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      result = sub_1A792C910(&v16);
      v14 = v17 | 0x4000000000000000;
      *v1 = v16;
      v1[1] = v14;
      goto LABEL_17;
    }

    sub_1A78C0AFC(v3, v2);
    v16 = v3;
    LOWORD(v17) = v2;
    BYTE2(v17) = BYTE2(v2);
    BYTE3(v17) = BYTE3(v2);
    BYTE4(v17) = BYTE4(v2);
    BYTE5(v17) = BYTE5(v2);
    BYTE6(v17) = BYTE6(v2);
    if (((v2 >> 50) & 0x3F) >= 3)
    {
      result = ccrng();
      if (result)
      {
        result = ccrng_generate_bridge();
        v5 = v17 | ((WORD2(v17) | (BYTE6(v17) << 16)) << 32);
        *v1 = v16;
        v1[1] = v5;
LABEL_17:
        v15 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v4 != 2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = *result;

  sub_1A78C0AFC(v3, v2);
  v16 = v3;
  v17 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *v1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v7 = v17;
  v8 = *(v16 + 16);
  v9 = *(v16 + 24);
  result = sub_1A793D648();
  if (!result)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v8, sub_1A793D678()))
  {
LABEL_19:
    __break(1u);
    __break(1u);
    goto LABEL_20;
  }

  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = sub_1A793D668();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v13 < 12)
  {
LABEL_21:
    __break(1u);
    __break(1u);
  }

  result = ccrng();
  if (result)
  {
    result = ccrng_generate_bridge();
    *v1 = v16;
    v1[1] = v7 | 0x8000000000000000;
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}