void *sub_1A78FCB28@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1A78FFE3C();
  *a1 = result;
  return result;
}

uint64_t sub_1A78FCB54@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  sub_1A793DB18();
  v6 = sub_1A78E2CCC(0x38uLL, v5);

  *a2 = v6;
  return result;
}

unint64_t static ChaChaPoly.seal<A, B>(_:using:nonce:authenticating:)(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v23 = a7;
  v14 = sub_1A793DC78();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  v26 = *a2;
  v25 = *a3;
  v19 = *(a6 - 8);
  (*(v19 + 16))(&v22 - v17, a4, a6);
  (*(v19 + 56))(v18, 0, 1, a6);
  v20 = sub_1A78CA440(&v26, a1, &v25, v18, a5, a6, v23, v24);
  (*(v15 + 8))(v18, v14);
  return v20;
}

uint64_t ChaChaPoly.SealedBox.init<A, B>(nonce:ciphertext:tag:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1A78FD548(a1, a2, a3, a4, a5, a6, a7);
  (*(*(a5 - 8) + 8))(a3, a5);
  (*(*(a4 - 8) + 8))(a2, a4);
  return v11;
}

uint64_t static ChaChaPoly.open<A>(_:using:authenticating:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A793DC78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v21 = *a3;
  v17 = *(a5 - 8);
  (*(v17 + 16))(&v20 - v15, a4, a5);
  (*(v17 + 56))(v16, 0, 1, a5);
  v18 = sub_1A78FDA28(&v21, a1, a2, v16, a5, a6);
  (*(v13 + 8))(v16, v12);
  return v18;
}

uint64_t ChaChaPoly.SealedBox.tag.getter(uint64_t a1, unint64_t a2)
{
  sub_1A78C0990(a1, a2);
  sub_1A78C8A28(16, a1, a2, &v5);
  return v5;
}

uint64_t ChaChaPoly.SealedBox.ciphertext.getter(uint64_t a1, unint64_t a2)
{
  sub_1A78C0990(a1, a2);
  sub_1A78C0B50(12, a1, a2, v5);
  sub_1A78C3CAC(16, v5[0], v5[1], &v6);
  return v6;
}

uint64_t ChaChaPoly.SealedBox.nonce.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1A78C0990(a1, a2);
  sub_1A78C3AA4(12, a1, a2, v7);
  return sub_1A78C7ED4(v7[0], v7[1], a3);
}

uint64_t ChaChaPoly.SealedBox.init<A>(combined:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() > 27)
  {
    v8 = sub_1A78C7370(a1, a2, *(v5 + 8));
    (*(*(a2 - 8) + 8))(a1, a2);
    return v8;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v6 = 1;
    *(v6 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }
}

uint64_t sub_1A78FD264(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
      goto LABEL_10;
    }

    if (qword_1EB2A6D80 == -1)
    {
LABEL_12:
      v11 = *(a3 + 16);
      v7 = ccchacha20poly1305_aad();
      if (!v7)
      {
LABEL_14:

        goto LABEL_15;
      }

LABEL_13:
      v12 = v7;
      sub_1A78D6484();
      swift_allocError();
      *v13 = v12;
      *(v13 + 4) = 0;
      swift_willThrow();
      goto LABEL_14;
    }

LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  if (!v5)
  {
    if (qword_1EB2A6D80 != -1)
    {
      swift_once();
    }

    v6 = *(a3 + 16);
    v7 = ccchacha20poly1305_aad();
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = a1;
  v9 = a1 >> 32;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_10:

  sub_1A78FD494(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A78FD494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1A793D648();
  v8 = result;
  if (result)
  {
    result = sub_1A793D678();
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

  v11 = sub_1A793D668();
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

  sub_1A78FE1D0(v8, v14, a4);
}

uint64_t sub_1A78FD548(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = *(*(*(a7 + 8) + 8) + 8);
  if (sub_1A793DB98() == 16)
  {
    v37 = a6;
    v40 = &type metadata for ChaChaPoly.Nonce;
    v41 = sub_1A78FD97C();
    *&v39 = v9;
    *(&v39 + 1) = v8;
    v11 = __swift_project_boxed_opaque_existential_1(&v39, &type metadata for ChaChaPoly.Nonce);
    v12 = *v11;
    v13 = v11[1];
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        *(&v38 + 6) = 0;
        *&v38 = 0;
        sub_1A78C0990(v9, v8);
        v15 = &v38;
        v16 = &v38;
        goto LABEL_25;
      }

      v19 = *(v12 + 16);
      v35 = *(v12 + 24);
      sub_1A78C0990(v9, v8);
      v20 = sub_1A793D648();
      if (v20)
      {
        v21 = sub_1A793D678();
        if (__OFSUB__(v19, v21))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v20 += v19 - v21;
      }

      v22 = __OFSUB__(v35, v19);
      v23 = v35 - v19;
      if (!v22)
      {
        v24 = sub_1A793D668();
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

LABEL_20:
        v30 = (v25 + v20);
        if (v20)
        {
          v16 = v30;
        }

        else
        {
          v16 = 0;
        }

        v15 = v20;
        goto LABEL_25;
      }
    }

    else
    {
      if (!v14)
      {
        *&v38 = *v11;
        WORD4(v38) = v13;
        BYTE10(v38) = BYTE2(v13);
        BYTE11(v38) = BYTE3(v13);
        BYTE12(v38) = BYTE4(v13);
        BYTE13(v38) = BYTE5(v13);
        sub_1A78C0990(v9, v8);
        v15 = &v38;
        v16 = (&v38 + BYTE6(v13));
LABEL_25:
        sub_1A78C2D58(v15, v16, &v42);
        sub_1A78C0AFC(v9, v8);
        v31 = v42;
        __swift_destroy_boxed_opaque_existential_1(&v39);
        v39 = v31;
        sub_1A78FD9D0();
        v32 = *(*(*(*(v37 + 8) + 8) + 8) + 8);
        sub_1A793DC08();
        sub_1A78C0AFC(v39, *(&v39 + 1));
        v38 = v42;
        v33 = *(v10 + 8);
        sub_1A793DC08();
        sub_1A78C0AFC(v38, *(&v38 + 1));
        result = v39;
        goto LABEL_26;
      }

      v26 = v12;
      v27 = v12 >> 32;
      v36 = v27 - v26;
      if (v27 >= v26)
      {
        sub_1A78C0990(v9, v8);
        v20 = sub_1A793D648();
        if (!v20)
        {
          goto LABEL_18;
        }

        v28 = sub_1A793D678();
        if (!__OFSUB__(v26, v28))
        {
          v20 += v26 - v28;
LABEL_18:
          v29 = sub_1A793D668();
          v25 = v36;
          if (v29 < v36)
          {
            v25 = v29;
          }

          goto LABEL_20;
        }

LABEL_30:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_1A78C0AFC(v9, v8);
  sub_1A78D6484();
  swift_allocError();
  *v17 = 1;
  *(v17 + 4) = 1;
  result = swift_willThrow();
LABEL_26:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A78FD8B0()
{
  result = qword_1EB2A75D8;
  if (!qword_1EB2A75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75D8);
  }

  return result;
}

unint64_t sub_1A78FD908()
{
  result = qword_1EB2A75E0;
  if (!qword_1EB2A75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75E0);
  }

  return result;
}

unint64_t sub_1A78FD97C()
{
  result = qword_1EB2A75E8;
  if (!qword_1EB2A75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75E8);
  }

  return result;
}

unint64_t sub_1A78FD9D0()
{
  result = qword_1EB2A75F0;
  if (!qword_1EB2A75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A75F0);
  }

  return result;
}

uint64_t sub_1A78FDA28(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a4;
  v11 = sub_1A793DC78();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v40 = *(a5 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);
  sub_1A78C0990(a2, a3);

  sub_1A78C3AA4(12, a2, a3, &v42);
  sub_1A78C7ED4(v42, *(&v42 + 1), &v43);
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v41[0] = v19;
    v42 = v43;
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    swift_allocObject();
    v20 = sub_1A78C8170(v41, &v42);
    v36 = 0;
    v44 = v20;
    v21 = v39;
    (*(v39 + 16))(v15, v38, v11);
    v22 = v40;
    if ((*(v40 + 48))(v15, 1, a5) == 1)
    {
      (*(v21 + 8))(v15, v11);
    }

    else
    {
      (*(v22 + 32))(v18, v15, a5);
      v23 = v36;
      sub_1A78FDEB4(v18, a5, v37);
      v36 = v23;
      if (v23)
      {
        sub_1A78C0AFC(a2, a3);
        sub_1A78C0AFC(a2, a3);
        (*(v22 + 8))(v18, a5);
      }

      (*(v22 + 8))(v18, a5);
    }

    v43 = xmmword_1A793F230;
    sub_1A78C0B50(12, a2, a3, v41);
    sub_1A78C3CAC(16, v41[0], v41[1], &v42);
    v26 = *(&v42 + 1);
    v25 = v42;
    v27 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v36;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v30 = swift_allocObject();
      v31 = swift_slowAlloc();
      *(v30 + 16) = v31;
      memmove(v31, *(v27 + 16), 0x100uLL);
    }

    sub_1A78C9630(v25, v26, &v43);
    if (v29)
    {
      sub_1A78C0AFC(a2, a3);
      sub_1A78C0AFC(v25, v26);
    }

    else
    {
      sub_1A78C0AFC(v25, v26);
      sub_1A78C8A28(16, a2, a3, &v42);
      v32 = v42;
      v33 = sub_1A78CA02C(v42, *(&v42 + 1));
      sub_1A78C0AFC(v32, *(&v32 + 1));
      if (v33)
      {

        return v43;
      }

      sub_1A78D6484();
      swift_allocError();
      *v34 = 2;
      *(v34 + 4) = 1;
      swift_willThrow();
    }

    sub_1A78C0AFC(v43, *(&v43 + 1));
  }

  return result;
}

uint64_t sub_1A78FDEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CoreCryptoChaChaPolyImpl.Context();
    v10 = swift_allocObject();
    v11 = swift_slowAlloc();
    *(v10 + 16) = v11;
    memmove(v11, *(v9 + 16), 0x100uLL);

    *v3 = v10;
  }

  return sub_1A78FDF64(a1, a2, a3);
}

uint64_t sub_1A78FDF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13[-v9];
  sub_1A793D5A8();
  v14 = a2;
  v15 = a3;
  v16 = v3;
  v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  sub_1A793DAC8();
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1A78FE0D0()
{
  swift_getAssociatedTypeWitness();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A793D6A8();
}

uint64_t sub_1A78FE1D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (qword_1EB2A6D80 == -1)
  {
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return result;
  }

  v7 = a3;
  result = swift_once();
  a3 = v7;
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(a3 + 16);
  result = ccchacha20poly1305_aad();
  if (result)
  {
    v5 = result;
    sub_1A78D6484();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

void *sub_1A78FE2CC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1A78C0AFC(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
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

      v17 = sub_1A78FE670(v6, v6 >> 32, a1);

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
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    result = sub_1A78FE670(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1A78FE670(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
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

uint64_t sub_1A78FE724()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1A78FE0D0();
}

uint64_t sub_1A78FE770(unint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) != 0 || (v4 = a2 - 1, a2 < 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v5 = a1;
  if (a1 <= 1)
  {
    v5 = 1;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    goto LABEL_69;
  }

  v8 = ceil(log2(v7) * 0.125);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = v8;
  if (v8 > a2)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v44 = sub_1A78CC5A0(a2);
  v45 = v10;
  sub_1A78CC640(&v44, 0);
  v11 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 >= a2)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v13 = v44;
  v12 = v45;
  v14 = v9 - 1;
  v42 = v4;
  while (1)
  {
    v15 = v4 - v11;
    if (__OFSUB__(v4, v11))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if ((v15 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_57;
    }

    v16 = 8 * v15;
    if ((v16 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_21;
    }

    if (v16 < 0)
    {
      if (v16 == -64)
      {
        goto LABEL_17;
      }

      v17 = a1 << (-v16 & 0x38);
    }

    else
    {
      if (v16 == 64)
      {
        goto LABEL_17;
      }

      v17 = a1 >> (v16 & 0x38);
    }

LABEL_21:
    v18 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      break;
    }

    if (v18)
    {
      if (v11 >= v13 >> 32 || v11 < v13)
      {
        goto LABEL_61;
      }

      v22 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_1A793D648() && __OFSUB__(v13, sub_1A793D678()))
        {
          goto LABEL_66;
        }

        v23 = sub_1A793D698();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        v26 = sub_1A793D628();

        v22 = v26;
        v4 = v42;
      }

      sub_1A793D618();
      v27 = sub_1A793D648();
      if (!v27)
      {
        goto LABEL_77;
      }

      v28 = v27;
      v29 = sub_1A793D678();
      if (__OFSUB__(v11, v29))
      {
        goto LABEL_63;
      }

      *(v28 + v11 - v29) = v17;
      v12 = v22 | 0x4000000000000000;
      if (!v14)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v44 = v13;
      LOWORD(v45) = v12;
      BYTE2(v45) = BYTE2(v12);
      BYTE3(v45) = BYTE3(v12);
      BYTE4(v45) = BYTE4(v12);
      BYTE5(v45) = BYTE5(v12);
      BYTE6(v45) = BYTE6(v12);
      if (v11 >= BYTE6(v12))
      {
        goto LABEL_59;
      }

      *(&v44 + v11) = v17;
      v13 = v44;
      v2 = v2 & 0xF00000000000000 | v45 | ((WORD2(v45) | (BYTE6(v45) << 16)) << 32);
      v12 = v2;
      if (!v14)
      {
        goto LABEL_55;
      }
    }

LABEL_13:
    --v14;
    v6 = __OFADD__(v11++, 1);
    if (v6)
    {
      goto LABEL_58;
    }
  }

  if (v18 != 2)
  {
    goto LABEL_76;
  }

  if (v11 < *(v13 + 16))
  {
    goto LABEL_60;
  }

  if (v11 >= *(v13 + 24))
  {
    goto LABEL_62;
  }

  v19 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (sub_1A793D648())
    {
      if (__OFSUB__(v20, sub_1A793D678()))
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v21, v20))
      {
        goto LABEL_65;
      }
    }

    else if (__OFSUB__(v21, v20))
    {
      goto LABEL_65;
    }

    v30 = sub_1A793D698();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_1A793D628();

    v19 = v33;
    v4 = v42;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = *(v13 + 16);
    v35 = *(v13 + 24);
    sub_1A793D738();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    v4 = v42;

    v13 = v36;
  }

  sub_1A793D618();
  v37 = sub_1A793D648();
  if (!v37)
  {
    goto LABEL_78;
  }

  v38 = v37;
  v39 = sub_1A793D678();
  if (__OFSUB__(v11, v39))
  {
    goto LABEL_64;
  }

  *(v38 + v11 - v39) = v17;
  v12 = v19 | 0x8000000000000000;
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_55:
  v40 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t SymmetricKey.bitCount.getter()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!(v3 >> 60))
  {
    return 8 * v3;
  }

  __break(1u);
  return result;
}

CryptoKit::SymmetricKeySize __swiftcall SymmetricKeySize.init(bitCount:)(CryptoKit::SymmetricKeySize bitCount)
{
  if (bitCount.bitCount < 1 || (bitCount.bitCount & 7) != 0)
  {
    __break(1u);
  }

  else
  {
    v1->bitCount = bitCount.bitCount;
  }

  return bitCount;
}

uint64_t SymmetricKey.init(size:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 7;
  }

  if ((*a1 + 7) <= 0xE)
  {
    if (qword_1ED5F8A30 != -1)
    {
      swift_once();
    }

    v5 = off_1ED5F8A18;

    goto LABEL_16;
  }

  if (v3 < -7)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >> 35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v4 >> 3;
  v8 = ((v4 >> 3) - 1) | (((v4 >> 3) - 1) >> 1);
  v9 = v8 | (v8 >> 2) | ((v8 | (v8 >> 2)) >> 4);
  v10 = v9 | (v9 >> 8) | ((v9 | (v9 >> 8)) >> 16);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
  }

  type metadata accessor for SecureBytes.Backing();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v13;
  if ((_swift_stdlib_malloc_size(v5) - 32) < v7)
  {
LABEL_19:
    __break(1u);
    __break(1u);
  }

  result = ccrng();
  if (result)
  {
    ccrng_generate_bridge();
    result = swift_beginAccess();
    v5[2] = v7;
LABEL_16:
    *a2 = v5;
    v14 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

BOOL _s9CryptoKit12SymmetricKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  sub_1A78CBAB0(v3 + 32, v3 + 32 + *(v3 + 16), v2 + 32, v2 + 32 + v4, &v6);
  return v6;
}

uint64_t static HashFunction.hash(bufferPointer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 32))(v13, v12);
  (*(a4 + 40))(a1, a2, a3, a4);
  (*(a4 + 48))(a3, a4);
  return (*(v8 + 8))(v11, a3);
}

uint64_t get_enum_tag_for_layout_string_9CryptoKit4ASN1O26RFC5480AlgorithmIdentifierVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1A78FF0A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1A78FF0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A78FF15C(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A78BF874(v24);
  if (v25 != 255)
  {
    v39[0] = v24[0];
    v39[1] = v24[1];
    v39[2] = v24[2];
    v40 = v25;
    sub_1A791FAD4(v39, 2u);
    if (v2)
    {
      return;
    }

    if (!v5)
    {
      sub_1A78BEFA0(48, v26);
      sub_1A78BF874(v27);
      if (v32 == 255)
      {
        sub_1A78D6B80();
        swift_allocError();
        *v11 = 3;
        swift_willThrow();
        v48 = *v26;
        sub_1A78D6BD4(&v48);
        v47[0] = *&v26[8];
        v47[1] = *&v26[24];
        v12 = &qword_1EB2A6F30;
        v13 = &qword_1A793F4A8;
        v14 = v47;
      }

      else if (v27[0] == 4)
      {
        if ((v32 & 1) == 0)
        {
          sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
          __break(1u);
          return;
        }

        v7 = v28;
        v8 = v29;
        v9 = v30;
        v10 = v31;
        sub_1A791644C(a1, 0, 2u);
        sub_1A78BF9FC(v27, v23, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78BDFE0(v7, v8, v9, v10, v33);
        sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
        sub_1A78BF80C(v33, v23);
        sub_1A7920BEC(v33, 0x30u, v34);
        v43[0] = *v34;
        v43[1] = *&v34[16];
        v44 = *&v34[32];
        v16 = *v34;
        if (!*v34)
        {
          sub_1A78BF494(v33);
          v17 = &qword_1EB2A6F38;
          v18 = &qword_1A793F4B0;
          v19 = v27;
          goto LABEL_17;
        }

        v52 = *&v34[8];
        v53 = *&v34[24];
        v49 = *&v43[0];
        v50 = *&v34[8];
        v51 = *&v34[24];
        sub_1A78BF9FC(v43, v23, &qword_1EB2A75F8, qword_1A7942108);
        if (sub_1A78D6980(&v49, v26))
        {
          sub_1A78BF494(v33);
          sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
          v56 = v16;
          sub_1A78D6BD4(&v56);
          v57[0] = v52;
          v57[1] = v53;
          v17 = &qword_1EB2A6F30;
          v18 = &qword_1A793F4A8;
          v19 = v57;
LABEL_17:
          sub_1A78C2ADC(v19, v17, v18);
          *&v22[56] = v35;
          *&v22[72] = v36;
          *&v22[88] = v37;
          *&v22[8] = *v34;
          *&v22[104] = v38;
          *&v22[24] = *&v34[16];
          *&v22[40] = *&v34[32];
          v20 = *&v26[16];
          *v22 = *&v26[32];
          *a2 = *v26;
          a2[1] = v20;
          a2[7] = *&v22[80];
          a2[8] = *&v22[96];
          a2[5] = *&v22[48];
          a2[6] = *&v22[64];
          a2[3] = *&v22[16];
          a2[4] = *&v22[32];
          a2[2] = *v22;
          return;
        }

        sub_1A78D6B80();
        swift_allocError();
        *v21 = 3;
        swift_willThrow();
        v54 = v16;
        sub_1A78D6BD4(&v54);
        v55[0] = v52;
        v55[1] = v53;
        sub_1A78C2ADC(v55, &qword_1EB2A6F30, &qword_1A793F4A8);
        sub_1A78FFBA4(v34);
        sub_1A78BF494(v33);
        sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
        v42 = *v26;
        sub_1A78D6BD4(&v42);
        v41[0] = *&v26[8];
        v41[1] = *&v26[24];
        v14 = v41;
        v12 = &qword_1EB2A6F30;
        v13 = &qword_1A793F4A8;
      }

      else
      {
        sub_1A78D6B80();
        swift_allocError();
        *v15 = 1;
        swift_willThrow();
        v46 = *v26;
        sub_1A78D6BD4(&v46);
        v45[0] = *&v26[8];
        v45[1] = *&v26[24];
        sub_1A78C2ADC(v45, &qword_1EB2A6F30, &qword_1A793F4A8);
        v12 = &qword_1EB2A6F38;
        v13 = &qword_1A793F4B0;
        v14 = v27;
      }

      sub_1A78C2ADC(v14, v12, v13);
      return;
    }
  }

  sub_1A78D6B80();
  swift_allocError();
  *v6 = 3;
  swift_willThrow();
}

uint64_t sub_1A78FF6E4(char **a1, uint64_t a2)
{
  v17[0] = 0;
  v16[2] = v17;
  result = sub_1A791C348(2, a1, sub_1A78FF8EC, v16);
  if (!v2)
  {
    v6 = *(a2 + 16);
    v21[0] = *a2;
    v21[1] = v6;
    v22 = *(a2 + 32);
    v24 = *&v21[0];
    v7 = *(a2 + 24);
    v23[0] = *(a2 + 8);
    v23[1] = v7;
    sub_1A78FF910(&v24, v17);
    sub_1A78BF9FC(v23, v17, &qword_1EB2A6F30, &qword_1A793F4A8);
    sub_1A7917A4C(48, a1, v21);
    v18 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
    v8 = *(a2 + 88);
    v9 = *(a2 + 120);
    v19[4] = *(a2 + 104);
    v19[5] = v9;
    v20 = *(a2 + 136);
    v10 = *(a2 + 56);
    v19[0] = *(a2 + 40);
    v19[1] = v10;
    v19[2] = *(a2 + 72);
    v19[3] = v8;
    sub_1A78FFB48(v19, v17);
    sub_1A791BAC0(48, &v18, v19);
    sub_1A78FFBA4(v19);
    v11 = (2 * *(v18 + 2)) | 1;
    MEMORY[0x1EEE9AC00](v18);
    v15[2] = v12;
    v15[3] = v13;
    v15[4] = 0;
    v15[5] = v14;
    sub_1A791C348(4, a1, sub_1A78FFBF8, v15);
  }

  return result;
}

uint64_t sub_1A78FF96C@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
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
  v25[0] = *(a1 + 8);
  v25[1] = v9;
  v26 = v8;
  sub_1A78BF80C(a1, v15);
  swift_unknownObjectRetain();
  sub_1A78FF15C(v25, &v16);
  if (v3)
  {
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF874(v27);
  if (v27[48] != 255)
  {
    sub_1A78C2ADC(v27, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78D6B80();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    v15[6] = v22;
    v15[7] = v23;
    v15[8] = v24;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[5] = v21;
    v15[0] = v16;
    v15[1] = v17;
    sub_1A78FFC18(v15);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF494(a1);
  sub_1A78BF494(a1);
  result = swift_unknownObjectRelease();
  v11 = v23;
  a3[6] = v22;
  a3[7] = v11;
  a3[8] = v24;
  v12 = v19;
  a3[2] = v18;
  a3[3] = v12;
  v13 = v21;
  a3[4] = v20;
  a3[5] = v13;
  v14 = v17;
  *a3 = v16;
  a3[1] = v14;
  return result;
}

uint64_t sub_1A78FFC48()
{
  v1 = *v0;
  sub_1A793DF58();
  sub_1A793DF88();
  return sub_1A793DFA8();
}

uint64_t sub_1A78FFCBC()
{
  v1 = *v0;
  sub_1A793DF58();
  sub_1A793DF88();
  return sub_1A793DFA8();
}

uint64_t sub_1A78FFD00()
{
  sub_1A793DE28();

  v0 = sub_1A793DEA8();
  MEMORY[0x1AC55D280](v0);

  MEMORY[0x1AC55D280](41, 0xE100000000000000);
  return 0x6E656449314E5341;
}

unint64_t sub_1A78FFDB8()
{
  result = qword_1EB2A7600;
  if (!qword_1EB2A7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7600);
  }

  return result;
}

void *sub_1A78FFE3C()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = sub_1A793DB28();
  *(v0 + 16) = 56;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  if (!ccrng())
  {
LABEL_5:
    __break(1u);
  }

  if (cccurve448_make_pub())
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = sub_1A7900118(v0);

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void *sub_1A78FFF3C@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2 - a1 == 56)
  {
    result = sub_1A78BDC10(56, 0);
    if (a2 <= a1)
    {
      __break(1u);
    }

    else
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = a1[2];
      result[10] = *(a1 + 6);
      *(result + 3) = v8;
      *(result + 4) = v9;
      *(result + 2) = v7;
      *a3 = result;
    }
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v10 = 0;
    *(v10 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A78FFFF0(uint64_t result, uint64_t a2)
{
  if (!result || a2 - result != 56)
  {
    sub_1A78D6484();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A790005C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, _DWORD *a3@<X8>)
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

  result = cccurve448();
  *a3 = result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A7900118(uint64_t a1)
{
  if (*(a1 + 16) == 56)
  {
    result = sub_1A78BDC10(56, 0);
    v4 = *(a1 + 48);
    v3 = *(a1 + 64);
    v5 = *(a1 + 32);
    result[10] = *(a1 + 80);
    *(result + 3) = v4;
    *(result + 4) = v3;
    *(result + 2) = v5;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v6 = 0;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A79001A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
  result = sub_1A793D6A8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1A7900234()
{
  result = sub_1A793D6A8();
  if (!v0)
  {
    return sub_1A78C2B3C();
  }

  return result;
}

uint64_t AES.GCM.SealedBox.nonce.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1A78C0990(v3, v4);
  sub_1A78C3AA4(v5, v3, v4, v7);
  return sub_1A78C32F4(v7[0], v7[1], a1);
}

uint64_t AES.GCM.SealedBox.ciphertext.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A78C0990(v1, v2);
  sub_1A78C0B50(v3, v1, v2, v5);
  sub_1A78C3CAC(16, v5[0], v5[1], &v6);
  return v6;
}

uint64_t AES.GCM.SealedBox.tag.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A78C0990(v1, v2);
  sub_1A78C8A28(16, v1, v2, &v4);
  return v4;
}

uint64_t static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>)
{
  v24 = a8;
  v22 = a5;
  v23 = a7;
  v15 = sub_1A793DC78();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  v26 = *a2;
  v25 = *a3;
  v20 = *(a6 - 8);
  (*(v20 + 16))(&v22 - v18, a4, a6);
  (*(v20 + 56))(v19, 0, 1, a6);
  sub_1A78D550C(&v26, a1, &v25, v19, v22, a6, v23, v24, a9);
  return (*(v16 + 8))(v19, v15);
}

uint64_t AES.GCM.SealedBox.combined.getter()
{
  if (v0[2] != 12)
  {
    return 0;
  }

  v2 = v0;
  v1 = *v0;
  sub_1A78C0990(v1, v2[1]);
  return v1;
}

uint64_t AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X8>)
{
  v36 = a8;
  v14 = *a1;
  v13 = a1[1];
  v15 = *(*(*(a7 + 8) + 8) + 8);
  result = sub_1A793DB98();
  if (result != 16)
  {
    sub_1A78C0AFC(v14, v13);
    sub_1A78D6484();
    swift_allocError();
    *v19 = 1;
    *(v19 + 4) = 1;
    swift_willThrow();
    (*(*(a5 - 8) + 8))(a3, a5);
    return (*(*(a4 - 8) + 8))(a2, a4);
  }

  v17 = v13 >> 62;
  v33 = a4;
  if ((v13 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v13);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v21 = *(v14 + 16);
  v20 = *(v14 + 24);
  v18 = v20 - v21;
  if (__OFSUB__(v20, v21))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v18 = HIDWORD(v14) - v14;
  }

LABEL_13:
  v35 = xmmword_1A793F230;
  v22 = *(*(*(a6 + 8) + 8) + 8);
  v32 = a2;
  result = sub_1A793DB98();
  v23 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v24 = sub_1A793DB98();
  v25 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v25)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1A793D768();
  v34[3] = MEMORY[0x1E6969080];
  v34[4] = MEMORY[0x1E6969078];
  v34[0] = v14;
  v34[1] = v13;
  v26 = __swift_project_boxed_opaque_existential_1(v34, MEMORY[0x1E6969080]);
  v27 = *v26;
  v28 = v26[1];
  sub_1A78C0990(v14, v13);
  sub_1A7900C14(v27, v28);
  sub_1A78C0AFC(v14, v13);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v29 = *(v22 + 8);
  sub_1A793D7F8();
  v30 = *(v15 + 8);
  sub_1A793D7F8();
  (*(*(a5 - 8) + 8))(a3, a5);
  result = (*(*(v33 - 8) + 8))(v32, v33);
  v31 = v36;
  *v36 = v35;
  *(v31 + 2) = v18;
  return result;
}

uint64_t static AES.GCM.open<A>(_:using:authenticating:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A793DC78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = *(a1 + 2);
  v21 = *a2;
  v19 = *a1;
  v20 = v15;
  v16 = *(a4 - 8);
  (*(v16 + 16))(v14, a3, a4);
  (*(v16 + 56))(v14, 0, 1, a4);
  v17 = sub_1A78D5984(&v21, &v19, v14, a4, a5);
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t static AES.GCM.seal<A>(_:using:nonce:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v15 = *a2;
  v10 = *a3;
  v13 = xmmword_1A7940CC0;
  v14 = v10;
  v11 = sub_1A78CA3EC();
  return sub_1A78D550C(&v15, a1, &v14, &v13, a4, MEMORY[0x1E6969080], a5, v11, a6);
}

uint64_t AES.GCM.SealedBox.init(combined:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 12;
  return result;
}

uint64_t AES.GCM.SealedBox.init<A>(combined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() >= 28)
  {
    v10 = sub_1A78C7370(a1, a2, *(v7 + 8));
    v12 = v11;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v10;
    a4[1] = v12;
    a4[2] = 12;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v8 = 1;
    *(v8 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

uint64_t sub_1A7900C14(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_1A793D788();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1A7900D4C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7900D4C(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  if (!result || (result = sub_1A793D678(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1A793D668();
      return sub_1A793D788();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A7900DE0()
{
  result = qword_1EB2A7608;
  if (!qword_1EB2A7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7608);
  }

  return result;
}

unint64_t sub_1A7900E38()
{
  result = qword_1EB2A7610;
  if (!qword_1EB2A7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7610);
  }

  return result;
}

uint64_t sub_1A7900E9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A7900EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1A7900F54(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v24 = *(v2 + 16);
      v23 = *(v2 + 24);
      v8 = ccgcm_aad();
      if (!v8)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);

    v11 = sub_1A793D648();
    if (v11)
    {
      v12 = sub_1A793D678();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_24;
      }

      v11 += v9 - v12;
    }

    if (__OFSUB__(v10, v9))
    {
      goto LABEL_22;
    }

    sub_1A793D668();
    if (v11)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = ccgcm_aad();
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  v13 = sub_1A793D648();
  if (!v13)
  {
    result = sub_1A793D668();
    goto LABEL_26;
  }

  v14 = v13;
  v15 = sub_1A793D678();
  if (__OFSUB__(a1, v15))
  {
    goto LABEL_23;
  }

  v16 = a1 - v15 + v14;
  result = sub_1A793D668();
  if (v16)
  {
LABEL_16:
    v18 = *(v2 + 16);
    v19 = *(v2 + 24);
    v8 = ccgcm_aad();
    if (!v8)
    {
LABEL_18:
      result = sub_1A78C0AFC(a1, a2);
      v22 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_17:
    v20 = v8;
    sub_1A78D6484();
    swift_allocError();
    *v21 = v20;
    *(v21 + 4) = 0;
    swift_willThrow();
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A7901198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a5 >> 60 == 15)
  {
    v54 = xmmword_1A793F380;
    sub_1A78CBDF4(&v54);
    v15 = v8;
    v16 = *(&v54 + 1);
    v17 = v54;
  }

  else
  {
    v15 = v8;
    v17 = a4;
    v16 = a5;
  }

  sub_1A78C0990(v17, v16);
  sub_1A78CBE8C(a4, a5);
  v18 = ccaes_gcm_encrypt_mode();
  if (!v18)
  {
LABEL_45:
    __break(1u);
  }

  v19 = v18;
  *&v57 = a1;
  *&v54 = v17;
  *(&v54 + 1) = v16;
  type metadata accessor for CoreCryptoGCMImpl.Context();
  swift_allocObject();

  v20 = sub_1A78C35B4(&v57, &v54, v19);
  if (!v15)
  {
    v22 = v20;
    if (a7 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = a8;
        v23 = swift_allocObject();
        v24 = *(v22 + 24);
        v48 = v23;
        *(v23 + 24) = v24;
        MEMORY[0x1AC55E040](v24);
        v25 = swift_slowAlloc();
        __src = *(v22 + 16);
        v26 = MEMORY[0x1AC55E040](v24);
        if ((v26 & 0x8000000000000000) != 0)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        memmove(v25, __src, v26);
        *(v48 + 16) = v25;

        v22 = v48;
        a8 = v50;
      }

      sub_1A7900F54(a6, a7);
    }

    v27 = v16 >> 62;
    v28 = a3;
    if ((v16 >> 62) > 1)
    {
      if (v27 != 2)
      {
        v29 = 0;
        goto LABEL_22;
      }

      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      v29 = v30 - v31;
      if (!__OFSUB__(v30, v31))
      {
LABEL_22:
        v57 = xmmword_1A793F230;
        v32 = a3 >> 62;
        if ((a3 >> 62) > 1)
        {
          if (v32 != 2)
          {
            v33 = 0;
            goto LABEL_32;
          }

          v35 = *(a2 + 16);
          v34 = *(a2 + 24);
          v36 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (!v36)
          {
LABEL_32:
            v36 = __OFADD__(v29, v33);
            v37 = v29 + v33;
            if (v36)
            {
              __break(1u);
            }

            else if (!__OFADD__(v37, 16))
            {
              v49 = v29;
              sub_1A793D768();
              v55 = MEMORY[0x1E6969080];
              v56 = MEMORY[0x1E6969078];
              *&v54 = v17;
              *(&v54 + 1) = v16;
              v38 = __swift_project_boxed_opaque_existential_1(&v54, MEMORY[0x1E6969080]);
              v39 = *v38;
              v40 = v38[1];
              sub_1A78C0990(v17, v16);
              sub_1A7900C14(v39, v40);
              __swift_destroy_boxed_opaque_existential_1(&v54);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_37:
                sub_1A78C3908(a2, v28, &v57);
                sub_1A78D6390();
                sub_1A78C0AFC(v17, v16);

                *a8 = v57;
                *(a8 + 16) = v49;
                goto LABEL_38;
              }

              v51 = a8;
              v41 = swift_allocObject();
              v42 = *(v22 + 24);
              *(v41 + 24) = v42;
              MEMORY[0x1AC55E040](v42);
              v43 = swift_slowAlloc();
              v44 = *(v22 + 16);
              v45 = MEMORY[0x1AC55E040](v42);
              if ((v45 & 0x8000000000000000) == 0)
              {
                memmove(v43, v44, v45);
                *(v41 + 16) = v43;

                a8 = v51;
                v28 = a3;
                goto LABEL_37;
              }

              goto LABEL_41;
            }

            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          __break(1u);
        }

        else if (!v32)
        {
          v33 = BYTE6(a3);
          goto LABEL_32;
        }

        LODWORD(v33) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v33 = v33;
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v29 = BYTE6(v16);
      goto LABEL_22;
    }

    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = HIDWORD(v17) - v17;
    goto LABEL_22;
  }

  result = sub_1A78C0AFC(v17, v16);
LABEL_38:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1A79015B8@<D0>(size_t a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 != 128)
  {
    if (v4 > 0x80)
    {
      v5 = sub_1A793DB28();
      *(v5 + 16) = 128;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 144) = 0u;
      sub_1A7901E58(a1 + 32, a1 + 32 + *(a1 + 16), v22);
      *(v5 + 32) = v22[0];
      *(v5 + 48) = v22[1];
      *(v5 + 64) = v22[2];
      *(v5 + 80) = v22[3];
      v6 = sub_1A78C24CC(v5);

      a1 = v6;
    }

    else
    {
      v7 = sub_1A793DB28();
      *(v7 + 16) = 128;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 112) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 144) = 0u;
      *&v22[0] = v7;
      sub_1A78C1F84(0, *(a1 + 16), (a1 + 32), a1 + 32 + *(a1 + 16));

      a1 = sub_1A78C24CC(*&v22[0]);
    }
  }

  v8 = ccsha512_di();
  if (!v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7198, "tF");
  v10 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v11 = swift_slowAlloc();
  ccdigest_init();
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(&v21 + 1) = v10;
  swift_beginAccess();
  sub_1A78C29D0((a1 + 32), (a1 + 32 + *(a1 + 16)), &v20);
  v12 = sub_1A793DB18();
  _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(v12 + 32, v12 + 32 + *(v12 + 16));

  v13 = ccsha512_di();
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v16 = swift_slowAlloc();
  ccdigest_init();
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *&v21 = v15;
  sub_1A78C5560((a1 + 32), (a1 + 32 + *(a1 + 16)), &v20);
  v17 = sub_1A793DB18();
  _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(v17 + 32, v17 + 32 + *(v17 + 16));

  result = *&v21;
  *a2 = v21;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1A79018A8@<D0>(size_t a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 != 128)
  {
    if (v4 > 0x80)
    {
      v5 = sub_1A793DB28();
      *(v5 + 16) = 128;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 144) = 0u;
      sub_1A7901F14(a1 + 32, a1 + 32 + *(a1 + 16), v23);
      *(v5 + 32) = v23[0];
      v6 = v23[2];
      *(v5 + 48) = v23[1];
      *(v5 + 64) = v6;
      v7 = sub_1A78C24CC(v5);

      a1 = v7;
    }

    else
    {
      v8 = sub_1A793DB28();
      *(v8 + 16) = 128;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *&v23[0] = v8;
      sub_1A78C1F84(0, *(a1 + 16), (a1 + 32), a1 + 32 + *(a1 + 16));

      a1 = sub_1A78C24CC(*&v23[0]);
    }
  }

  v9 = ccsha384_di();
  if (!v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A0, qword_1A7940068);
  v11 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v12 = swift_slowAlloc();
  ccdigest_init();
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(&v22 + 1) = v11;
  swift_beginAccess();
  sub_1A78C29D0((a1 + 32), (a1 + 32 + *(a1 + 16)), &v21);
  v13 = sub_1A793DB18();
  _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v13 + 32, v13 + 32 + *(v13 + 16));

  v14 = ccsha384_di();
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v17 = swift_slowAlloc();
  ccdigest_init();
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *&v22 = v16;
  sub_1A78C5560((a1 + 32), (a1 + 32 + *(a1 + 16)), &v21);
  v18 = sub_1A793DB18();
  _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v18 + 32, v18 + 32 + *(v18 + 16));

  result = *&v22;
  *a2 = v22;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1A7901B88@<D0>(size_t a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 != 64)
  {
    if (v4 > 0x40)
    {
      v5 = sub_1A793DB28();
      *(v5 + 16) = 64;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      sub_1A7901FD0(a1 + 32, a1 + 32 + *(a1 + 16), v22);
      *(v5 + 32) = v22[0];
      *(v5 + 48) = v22[1];
      v6 = sub_1A78C24CC(v5);

      a1 = v6;
    }

    else
    {
      v7 = sub_1A793DB28();
      *(v7 + 16) = 64;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *&v22[0] = v7;
      sub_1A78C1F84(0, *(a1 + 16), (a1 + 32), a1 + 32 + *(a1 + 16));

      a1 = sub_1A78C24CC(*&v22[0]);
    }
  }

  v8 = ccsha256_di();
  if (!v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
  v10 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v11 = swift_slowAlloc();
  ccdigest_init();
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(&v21 + 1) = v10;
  swift_beginAccess();
  sub_1A78C29D0((a1 + 32), (a1 + 32 + *(a1 + 16)), &v20);
  v12 = sub_1A793DB18();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v12 + 32, v12 + 32 + *(v12 + 16));

  v13 = ccsha256_di();
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = swift_allocObject();
  getDigestSizeForDigestInfo();
  v16 = swift_slowAlloc();
  ccdigest_init();
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *&v21 = v15;
  sub_1A78C5560((a1 + 32), (a1 + 32 + *(a1 + 16)), &v20);
  v17 = sub_1A793DB18();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v17 + 32, v17 + 32 + *(v17 + 16));

  result = *&v21;
  *a2 = v21;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7901E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = ccsha512_di();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7198, "tF");
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v9 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v7;
    *(inited + 24) = v9;
    _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(a1, a2);
    sub_1A78C465C(a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7901F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = ccsha384_di();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A0, qword_1A7940068);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v9 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v7;
    *(inited + 24) = v9;
    _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(a1, a2);
    sub_1A78C4BA4(a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7901FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = ccsha256_di();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v9 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v7;
    *(inited + 24) = v9;
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(a1, a2);
    sub_1A78BD4B0(a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7902164@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = sub_1A793D6F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](a1);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = ccec_ctx_k(result);
  result = a2();
  if (result)
  {
    result = [objc_opt_self() groupOrderByteCountForCP_];
    if ((result & 0x8000000000000000) == 0)
    {
      v15 = sub_1A7902328(v14, result);
      v16 = sub_1A78C24CC(v15);

      swift_beginAccess();
      v17 = *(v16 + 16);
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *v13 = a3;
      v13[1] = v18;
      (*(v9 + 104))(v13, *MEMORY[0x1E6969028], v8);

      v19 = sub_1A78DA2C4(v16 + 32, v17, v13);
      v21 = v20;

      *a4 = v19;
      a4[1] = v21;
      return result;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1A7902328(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v2 = result;
  v4 = sub_1A78BDC10(a2, 0);
  result = sub_1A78E259C(v4 + 4, a2, v2, a2);
  if (v5 != a2)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  v6 = v4[2];
  if (v6 < 2)
  {
    return v4;
  }

  v7 = v6 >> 1;
  v8 = v6 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_9;
    }

    v10 = v4[2];
    if (i - 32 >= v10)
    {
      break;
    }

    if (v8 - 32 >= v10)
    {
      goto LABEL_16;
    }

    v11 = *(v4 + i);
    v12 = *(v4 + v8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A78F5C2C(v4);
      v4 = result;
    }

    *(v4 + i) = v12;
    *(v4 + v8) = v11;
LABEL_9:
    --v8;
    if (!--v7)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A7902420(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v30 = *MEMORY[0x1E69E9840];
  v28 = a1;
  v29 = a2;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v27, 0, 14);
      v7 = v27;
      v6 = v27;
      goto LABEL_23;
    }

    v8 = v2;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = sub_1A793D648();
    if (v11)
    {
      v12 = sub_1A793D678();
      if (__OFSUB__(v9, v12))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v27[0] = a1;
    LOWORD(v27[1]) = a2;
    BYTE2(v27[1]) = BYTE2(a2);
    BYTE3(v27[1]) = BYTE3(a2);
    BYTE4(v27[1]) = BYTE4(a2);
    BYTE5(v27[1]) = BYTE5(a2);
    v6 = v27 + BYTE6(a2);
    v7 = v27;
    goto LABEL_23;
  }

  v14 = (v4 >> 32) - v4;
  if (v4 >> 32 < v4)
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = v2;
  v11 = sub_1A793D648();
  if (v11)
  {
    v15 = sub_1A793D678();
    if (!__OFSUB__(v4, v15))
    {
      v11 += v4 - v15;
      goto LABEL_15;
    }

LABEL_32:
    __break(1u);
  }

LABEL_15:
  v16 = sub_1A793D668();
  if (v16 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v17 + v11);
  if (v11)
  {
    v6 = v18;
  }

  else
  {
    v6 = 0;
  }

  v7 = v11;
  v2 = v8;
LABEL_23:
  v19 = sub_1A79026C0(v7, v6);
  if (v2)
  {
    goto LABEL_27;
  }

  v27[0] = 0;
  result = MEMORY[0x1AC55DAD0](v19);
  if (result)
  {
    v21 = getccec_pub_ctx_size();
    v26 = MEMORY[0x1EEE9AC00](v21);
    v22 = sub_1A78C0EA8(v26, sub_1A790AE34);
    if (!v27[0])
    {
      v25 = v22;
      sub_1A78C0AFC(v28, v29);
      result = v25;
      goto LABEL_28;
    }

    sub_1A78D6484();
    swift_allocError();
    *v23 = 1;
    *(v23 + 4) = 1;
    swift_willThrow();
    v4 = v28;
    v3 = v29;
LABEL_27:
    result = sub_1A78C0AFC(v4, v3);
LABEL_28:
    v24 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79026C0(_BYTE *a1, _BYTE *a2)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    goto LABEL_15;
  }

  result = [objc_opt_self() groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(result, 1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = 1;
  if (v4 != result + 1 || (v6 = 5, !a1) || a2 == a1 || (*a1 & 0xFE) != 2)
  {
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A79027A8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = result;
  v13 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_1A78C0AFC(a3, a4);
      sub_1A78C0AFC(v12, a2);
      v20 = a5;
      v21 = a6;
      goto LABEL_15;
    }

    v15 = *(a5 + 16);
    v14 = *(a5 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_46;
    }

    if (v17 != 16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!v13)
    {
      if (BYTE6(a6) != 16)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (HIDWORD(a5) - a5 != 16)
    {
LABEL_13:
      sub_1A78C0AFC(a5, a6);
      sub_1A78C0AFC(a3, a4);
      v20 = v12;
      v21 = a2;
LABEL_15:
      sub_1A78C0AFC(v20, v21);
      sub_1A78D6484();
      swift_allocError();
      *v22 = 1;
      *(v22 + 4) = 1;
      return swift_willThrow();
    }
  }

LABEL_8:
  v18 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(a2);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v18 != 2)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v24 = *(result + 16);
  v23 = *(result + 24);
  v19 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v19 = HIDWORD(result) - result;
  }

LABEL_23:
  v47 = xmmword_1A793F230;
  v25 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v25 == 2)
    {
      v28 = *(a3 + 16);
      v27 = *(a3 + 24);
      v16 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v16)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_33:
    v16 = __OFADD__(v19, v26);
    v29 = v19 + v26;
    if (v16)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v13 == 2)
    {
      v32 = *(a5 + 16);
      v31 = *(a5 + 24);
      v16 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (!v16)
      {
LABEL_42:
        result = v29 + v30;
        if (!__OFADD__(v29, v30))
        {
          v48 = v19;
          sub_1A793D768();
          v34 = MEMORY[0x1E6969080];
          v45 = MEMORY[0x1E6969080];
          v46 = MEMORY[0x1E6969078];
          v43 = v12;
          v44 = a2;
          v35 = __swift_project_boxed_opaque_existential_1(&v43, MEMORY[0x1E6969080]);
          v37 = *v35;
          v36 = v35[1];
          sub_1A78C0990(v12, a2);
          sub_1A7900C14(v37, v36);
          sub_1A78C0AFC(v12, a2);
          __swift_destroy_boxed_opaque_existential_1(&v43);
          v45 = v34;
          v38 = MEMORY[0x1E6969078];
          v46 = MEMORY[0x1E6969078];
          v43 = a3;
          v44 = a4;
          v39 = __swift_project_boxed_opaque_existential_1(&v43, v34);
          sub_1A7900C14(*v39, v39[1]);
          __swift_destroy_boxed_opaque_existential_1(&v43);
          v45 = v34;
          v46 = v38;
          v43 = a5;
          v44 = a6;
          v40 = __swift_project_boxed_opaque_existential_1(&v43, v34);
          sub_1A7900C14(*v40, v40[1]);
          result = __swift_destroy_boxed_opaque_existential_1(&v43);
          *a7 = v47;
          *(a7 + 16) = v48;
          return result;
        }

        goto LABEL_45;
      }

      __break(1u);
    }

    else if (v13 == 1)
    {
      LODWORD(v30) = HIDWORD(a5) - a5;
      if (__OFSUB__(HIDWORD(a5), a5))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v30 = v30;
      goto LABEL_42;
    }

    v30 = BYTE6(a6);
    goto LABEL_42;
  }

  if (!v25)
  {
    v26 = BYTE6(a4);
    goto LABEL_33;
  }

LABEL_30:
  LODWORD(v26) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v26 = v26;
    goto LABEL_33;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1A7902AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  sub_1A78C0990(a2, a3);
  sub_1A78F3E70(a2, a3);
  swift_beginAccess();
  v8 = *(a1 + 16);

  sub_1A7901B88(v9, &v27);
  v10 = sub_1A793DAE8();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v10, v11);
  v12 = v27;
  sub_1A78BD4B0(v26);
  v25 = v12;
  v20[0] = v26[0];
  v20[1] = v26[1];

  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v20, &v21);

  sub_1A78BD4B0(&v22);

  v13 = v22;
  v14 = v23;
  v15 = v24;

  sub_1A78C0AFC(a2, a3);
  result = sub_1A78D040C(v13, *(&v13 + 1), v14, v15, MEMORY[0x1E69E7CC0], a4, a5);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7902C68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E7CC0];
  sub_1A793DB18();

  v6 = sub_1A793DB18();
  sub_1A78C24CC(v6);

  swift_beginAccess();
  v7 = *(a1 + 16);

  sub_1A7901B88(v8, &v25);
  v9 = sub_1A793DAE8();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v9, v10);
  v11 = v25;
  sub_1A78BD4B0(v24);
  v23 = v11;
  v18[0] = v24[0];
  v18[1] = v24[1];

  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v18, &v19);

  sub_1A78BD4B0(&v20);

  v12 = v20;
  v14 = v21;
  v13 = v22;

  result = sub_1A78D040C(v12, *(&v12 + 1), v14, v13, v5, a2, a3);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CompoundMKEMCiphertext.IndividualElement.ciphertext.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t CompoundMKEMCiphertext.IndividualElement.keyID.getter()
{
  v1 = *(v0 + 16);
  sub_1A78C0990(v1, *(v0 + 24));
  return v1;
}

uint64_t CompoundMKEMCiphertext.IndividualElement.init(ciphertext:keyID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static CompoundMKEMCiphertext.IndividualElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_1A790A674(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1A790A674(v2, v3, v4, v5);
}

uint64_t CompoundMKEMCiphertext.IndividualElement.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1A793D7E8();

  return sub_1A793D7E8();
}

uint64_t CompoundMKEMCiphertext.IndividualElement.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A7902F98()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A7903000()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1A793D7E8();

  return sub_1A793D7E8();
}

uint64_t sub_1A7903050()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A793D7E8();
  return sub_1A793DFA8();
}

uint64_t sub_1A79030B4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((sub_1A790A674(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1A790A674(v2, v3, v4, v5);
}

uint64_t CompoundMKEMCiphertext.sharedPrefix.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t CompoundMKEMCiphertext.sharedPrefix.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A78C0AFC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t CompoundMKEMCiphertext.individualElements.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t CompoundMKEMCiphertext.init(sharedPrefix:individualElements:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static CompoundMKEMCiphertext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if ((sub_1A790A674(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1A79032D8(v2, v3);
}

uint64_t sub_1A790327C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79032D8(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_281:
    result = 0;
    goto LABEL_282;
  }

  if (!v2 || a1 == a2)
  {
LABEL_279:
    result = 1;
LABEL_282:
    v155 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = (a2 + 56);
  v4 = (a1 + 56);
  while (1)
  {
    v7 = *(v4 - 3);
    v8 = *(v4 - 2);
    v9 = *v4;
    v11 = *(v3 - 3);
    v10 = *(v3 - 2);
    v12 = *(v3 - 1);
    v13 = *v3;
    v14 = v8 >> 62;
    v15 = v10 >> 62;
    v176 = v11;
    v177 = *(v4 - 1);
    v174 = v7;
    v175 = v8;
    if (v8 >> 62 == 3)
    {
      if (v7)
      {
        v16 = 0;
      }

      else
      {
        v16 = v8 == 0xC000000000000000;
      }

      v17 = 0;
      v18 = v16 && v10 >> 62 == 3;
      if (v18 && !v11 && v10 == 0xC000000000000000)
      {
        sub_1A78C0990(0, 0xC000000000000000);
        sub_1A78C0990(v177, v9);
        v19 = 0;
        v20 = 0xC000000000000000;
        goto LABEL_53;
      }

LABEL_30:
      if (v15 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v26 = *(v7 + 16);
        v25 = *(v7 + 24);
        v23 = __OFSUB__(v25, v26);
        v17 = v25 - v26;
        if (v23)
        {
          goto LABEL_287;
        }

        goto LABEL_30;
      }

      v17 = 0;
      if (v15 <= 1)
      {
        goto LABEL_31;
      }
    }

    else if (v14)
    {
      LODWORD(v17) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_286;
      }

      v17 = v17;
      if (v15 <= 1)
      {
LABEL_31:
        if (v15)
        {
          LODWORD(v24) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            goto LABEL_283;
          }

          v24 = v24;
        }

        else
        {
          v24 = BYTE6(v10);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v17 = BYTE6(v8);
      if (v15 <= 1)
      {
        goto LABEL_31;
      }
    }

LABEL_24:
    if (v15 != 2)
    {
      if (v17)
      {
        goto LABEL_281;
      }

LABEL_52:
      sub_1A78C0990(v7, v8);
      sub_1A78C0990(v177, v9);
      v19 = v11;
      v20 = v10;
LABEL_53:
      sub_1A78C0990(v19, v20);
      sub_1A78C0990(v12, v13);
      goto LABEL_147;
    }

    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
    }

LABEL_37:
    if (v17 != v24)
    {
      goto LABEL_281;
    }

    if (v17 < 1)
    {
      goto LABEL_52;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        __s1[0] = v7;
        LOWORD(__s1[1]) = v8;
        BYTE2(__s1[1]) = BYTE2(v8);
        BYTE3(__s1[1]) = BYTE3(v8);
        BYTE4(__s1[1]) = BYTE4(v8);
        BYTE5(__s1[1]) = BYTE5(v8);
        if (!v15)
        {
          goto LABEL_75;
        }

        if (v15 != 1)
        {
          v56 = *(v11 + 16);
          v165 = *(v11 + 24);
          sub_1A78C0990(v7, v8);
          v171 = v9;
          sub_1A78C0990(v177, v9);
          sub_1A78C0990(v11, v10);
          sub_1A78C0990(v12, v13);
          v43 = sub_1A793D648();
          if (v43)
          {
            v57 = sub_1A793D678();
            if (__OFSUB__(v56, v57))
            {
              goto LABEL_317;
            }

            v43 += v56 - v57;
          }

          v23 = __OFSUB__(v165, v56);
          v45 = &v165[-v56];
          if (v23)
          {
            goto LABEL_300;
          }

          v46 = sub_1A793D668();
          if (!v43)
          {
            goto LABEL_328;
          }

          goto LABEL_107;
        }

        v27 = v11;
        v161 = ((v11 >> 32) - v11);
        if (v11 >> 32 < v11)
        {
          goto LABEL_297;
        }

        sub_1A78C0990(v7, v8);
        sub_1A78C0990(v177, v9);
        sub_1A78C0990(v11, v10);
        sub_1A78C0990(v12, v13);
        v28 = sub_1A793D648();
        if (!v28)
        {
          goto LABEL_329;
        }

        v29 = v28;
        v30 = sub_1A793D678();
        if (__OFSUB__(v27, v30))
        {
          goto LABEL_301;
        }

        v31 = (v27 - v30 + v29);
        v32 = sub_1A793D668();
        if (!v31)
        {
          goto LABEL_330;
        }

        if (v32 >= v161)
        {
          v33 = v161;
        }

        else
        {
          v33 = v32;
        }

        if (memcmp(__s1, v31, v33))
        {
          goto LABEL_280;
        }

        goto LABEL_147;
      }

      v169 = *(v3 - 1);
      v37 = *v3;
      v38 = v7;
      if (v7 > v7 >> 32)
      {
        goto LABEL_290;
      }

      sub_1A78C0990(v7, v8);
      sub_1A78C0990(v177, v9);
      sub_1A78C0990(v11, v10);
      sub_1A78C0990(v169, v37);
      v39 = sub_1A793D648();
      if (v39)
      {
        v40 = v39;
        v41 = sub_1A793D678();
        if (__OFSUB__(v38, v41))
        {
          goto LABEL_293;
        }

        v163 = (v38 - v41 + v40);
      }

      else
      {
        v163 = 0;
      }

      v13 = v37;
      sub_1A793D668();
      if (v15 == 2)
      {
        v72 = *(v176 + 16);
        v73 = *(v176 + 24);
        v50 = sub_1A793D648();
        if (v50)
        {
          v74 = sub_1A793D678();
          if (__OFSUB__(v72, v74))
          {
            goto LABEL_319;
          }

          v50 += v72 - v74;
        }

        v23 = __OFSUB__(v73, v72);
        v75 = v73 - v72;
        if (v23)
        {
          goto LABEL_305;
        }

        v76 = sub_1A793D668();
        if (v76 >= v75)
        {
          v53 = v75;
        }

        else
        {
          v53 = v76;
        }

        v48 = v163;
        if (!v163)
        {
          goto LABEL_340;
        }

        v13 = v37;
        v12 = v169;
        if (!v50)
        {
          goto LABEL_339;
        }

        goto LABEL_142;
      }

      if (v15 == 1)
      {
        if (v176 >> 32 < v176)
        {
          goto LABEL_304;
        }

        v50 = sub_1A793D648();
        if (v50)
        {
          v54 = sub_1A793D678();
          if (__OFSUB__(v176, v54))
          {
            goto LABEL_321;
          }

          v50 += v176 - v54;
        }

        v13 = v37;
        v55 = sub_1A793D668();
        if (v55 >= (v176 >> 32) - v176)
        {
          v53 = (v176 >> 32) - v176;
        }

        else
        {
          v53 = v55;
        }

        v48 = v163;
        v12 = v169;
        if (!v163)
        {
          goto LABEL_338;
        }

        if (!v50)
        {
          goto LABEL_337;
        }

        goto LABEL_142;
      }

      v48 = v163;
      __s1[0] = v176;
      LOWORD(__s1[1]) = v10;
      BYTE2(__s1[1]) = BYTE2(v10);
      BYTE3(__s1[1]) = BYTE3(v10);
      BYTE4(__s1[1]) = BYTE4(v10);
      BYTE5(__s1[1]) = BYTE5(v10);
      v12 = v169;
      if (!v163)
      {
        goto LABEL_331;
      }

LABEL_145:
      v47 = BYTE6(v10);
      p_s2 = __s1;
LABEL_146:
      if (memcmp(v48, p_s2, v47))
      {
        goto LABEL_280;
      }

      goto LABEL_147;
    }

    if (v14 == 2)
    {
      break;
    }

    memset(__s1, 0, 14);
    if (!v15)
    {
LABEL_75:
      __s2 = v11;
      v179 = v10;
      v180 = BYTE2(v10);
      v181 = BYTE3(v10);
      v182 = BYTE4(v10);
      v183 = BYTE5(v10);
      sub_1A78C0990(v7, v8);
      sub_1A78C0990(v177, v9);
      sub_1A78C0990(v11, v10);
      sub_1A78C0990(v12, v13);
      v47 = BYTE6(v10);
      v48 = __s1;
      p_s2 = &__s2;
      goto LABEL_146;
    }

    if (v15 == 2)
    {
      v42 = *(v11 + 16);
      v164 = *(v11 + 24);
      sub_1A78C0990(v7, v8);
      v171 = v9;
      sub_1A78C0990(v177, v9);
      sub_1A78C0990(v11, v10);
      sub_1A78C0990(v12, v13);
      v43 = sub_1A793D648();
      if (v43)
      {
        v44 = sub_1A793D678();
        if (__OFSUB__(v42, v44))
        {
          goto LABEL_316;
        }

        v43 += v42 - v44;
      }

      v23 = __OFSUB__(v164, v42);
      v45 = &v164[-v42];
      if (v23)
      {
        goto LABEL_298;
      }

      v46 = sub_1A793D668();
      if (!v43)
      {
        goto LABEL_334;
      }

LABEL_107:
      if (v46 >= v45)
      {
        v58 = v45;
      }

      else
      {
        v58 = v46;
      }

      v9 = v171;
      if (memcmp(__s1, v43, v58))
      {
        goto LABEL_280;
      }

      goto LABEL_147;
    }

    v59 = v11;
    v60 = (v11 >> 32) - v11;
    if (v11 >> 32 < v11)
    {
      goto LABEL_296;
    }

    sub_1A78C0990(v7, v8);
    sub_1A78C0990(v177, v9);
    sub_1A78C0990(v11, v10);
    sub_1A78C0990(v12, v13);
    v61 = sub_1A793D648();
    if (!v61)
    {
      goto LABEL_332;
    }

    v62 = v61;
    v63 = sub_1A793D678();
    if (__OFSUB__(v59, v63))
    {
      goto LABEL_302;
    }

    v64 = (v59 - v63 + v62);
    v65 = sub_1A793D668();
    if (!v64)
    {
      goto LABEL_333;
    }

    if (v65 >= v60)
    {
      v66 = v60;
    }

    else
    {
      v66 = v65;
    }

    if (memcmp(__s1, v64, v66))
    {
LABEL_280:
      sub_1A78C0AFC(v176, v10);
      sub_1A78C0AFC(v12, v13);
      sub_1A78C0AFC(v174, v175);
      sub_1A78C0AFC(v177, v9);
      goto LABEL_281;
    }

LABEL_147:
    v77 = v9 >> 62;
    v78 = v13 >> 62;
    if (v9 >> 62 == 3)
    {
      v79 = 0;
      if (!v177 && v9 == 0xC000000000000000 && v13 >> 62 == 3)
      {
        v79 = 0;
        if (!v12 && v13 == 0xC000000000000000)
        {
          sub_1A78C0AFC(v176, v10);
          sub_1A78C0AFC(0, 0xC000000000000000);
          sub_1A78C0AFC(v174, v175);
          v5 = 0;
          v6 = 0xC000000000000000;
          goto LABEL_7;
        }
      }

LABEL_163:
      if (v78 <= 1)
      {
        goto LABEL_164;
      }

      goto LABEL_157;
    }

    if (v77 > 1)
    {
      if (v77 == 2)
      {
        v84 = *(v177 + 16);
        v83 = *(v177 + 24);
        v23 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        if (v23)
        {
          goto LABEL_288;
        }

        goto LABEL_163;
      }

      v79 = 0;
      if (v78 <= 1)
      {
        goto LABEL_164;
      }
    }

    else if (v77)
    {
      LODWORD(v79) = HIDWORD(v177) - v177;
      if (__OFSUB__(HIDWORD(v177), v177))
      {
        goto LABEL_289;
      }

      v79 = v79;
      if (v78 <= 1)
      {
LABEL_164:
        if (v78)
        {
          LODWORD(v82) = HIDWORD(v12) - v12;
          if (__OFSUB__(HIDWORD(v12), v12))
          {
            goto LABEL_285;
          }

          v82 = v82;
        }

        else
        {
          v82 = BYTE6(v13);
        }

        goto LABEL_168;
      }
    }

    else
    {
      v79 = BYTE6(v9);
      if (v78 <= 1)
      {
        goto LABEL_164;
      }
    }

LABEL_157:
    if (v78 != 2)
    {
      if (v79)
      {
        goto LABEL_280;
      }

LABEL_6:
      sub_1A78C0AFC(v176, v10);
      sub_1A78C0AFC(v12, v13);
      sub_1A78C0AFC(v174, v175);
      v5 = v177;
      v6 = v9;
LABEL_7:
      sub_1A78C0AFC(v5, v6);
      goto LABEL_8;
    }

    v81 = *(v12 + 16);
    v80 = *(v12 + 24);
    v23 = __OFSUB__(v80, v81);
    v82 = v80 - v81;
    if (v23)
    {
      goto LABEL_284;
    }

LABEL_168:
    if (v79 != v82)
    {
      goto LABEL_280;
    }

    if (v79 < 1)
    {
      goto LABEL_6;
    }

    if (v77 > 1)
    {
      v85 = v174;
      v86 = v175;
      if (v77 != 2)
      {
        memset(__s1, 0, 14);
        if (!v78)
        {
LABEL_200:
          __s2 = v12;
          v179 = v13;
          v180 = BYTE2(v13);
          v181 = BYTE3(v13);
          v182 = BYTE4(v13);
          v183 = BYTE5(v13);
          v107 = v85;
          v168 = memcmp(__s1, &__s2, BYTE6(v13));
          sub_1A78C0AFC(v176, v10);
          sub_1A78C0AFC(v12, v13);
          sub_1A78C0AFC(v107, v86);
          sub_1A78C0AFC(v177, v9);
          if (v168)
          {
            goto LABEL_281;
          }

          goto LABEL_8;
        }

        v170 = v12;
        v172 = v9;
        if (v78 == 2)
        {
          v104 = *(v12 + 16);
          v105 = *(v12 + 24);
          v94 = sub_1A793D648();
          v90 = v13;
          if (v94)
          {
            v106 = sub_1A793D678();
            if (__OFSUB__(v104, v106))
            {
              goto LABEL_322;
            }

            v94 += v104 - v106;
          }

          v23 = __OFSUB__(v105, v104);
          v89 = v105 - v104;
          if (v23)
          {
            goto LABEL_309;
          }

          result = sub_1A793D668();
          if (!v94)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v90 = v13;
          v89 = (v170 >> 32) - v170;
          if (v170 >> 32 < v170)
          {
            goto LABEL_307;
          }

          v130 = sub_1A793D648();
          if (!v130)
          {
            goto LABEL_344;
          }

          v131 = v130;
          v132 = sub_1A793D678();
          if (__OFSUB__(v170, v132))
          {
            goto LABEL_311;
          }

          v94 = (v170 - v132 + v131);
          result = sub_1A793D668();
          if (!v94)
          {
            goto LABEL_345;
          }
        }

LABEL_242:
        if (result >= v89)
        {
          v133 = v89;
        }

        else
        {
          v133 = result;
        }

        v127 = memcmp(__s1, v94, v133);
        sub_1A78C0AFC(v176, v10);
        v128 = v170;
        v129 = v90;
        goto LABEL_246;
      }

      v158 = v10;
      v166 = v13;
      v96 = v175;
      v97 = *(v177 + 16);
      v98 = sub_1A793D648();
      v173 = v9;
      if (v98)
      {
        v99 = v98;
        v100 = sub_1A793D678();
        if (__OFSUB__(v97, v100))
        {
          goto LABEL_294;
        }

        v156 = (v97 - v100 + v99);
      }

      else
      {
        v156 = 0;
      }

      v108 = v177;
      sub_1A793D668();
      v109 = v176;
      if (v78 == 2)
      {
        v134 = v175;
        v135 = *(v12 + 16);
        v136 = *(v12 + 24);
        v137 = sub_1A793D648();
        v138 = v174;
        if (v137)
        {
          v139 = sub_1A793D678();
          if (__OFSUB__(v135, v139))
          {
            goto LABEL_324;
          }

          v137 += v135 - v139;
        }

        v23 = __OFSUB__(v136, v135);
        v149 = v136 - v135;
        if (v23)
        {
          goto LABEL_313;
        }

        v150 = v166;
        v151 = sub_1A793D668();
        if (v151 >= v149)
        {
          v152 = v149;
        }

        else
        {
          v152 = v151;
        }

        result = v156;
        if (!v156)
        {
          goto LABEL_354;
        }

        if (!v137)
        {
          goto LABEL_353;
        }

LABEL_272:
        if (result == v137)
        {
          sub_1A78C0AFC(v176, v158);
          sub_1A78C0AFC(v12, v150);
          v118 = v138;
          v119 = v134;
          goto LABEL_274;
        }

        v145 = memcmp(result, v137, v152);
        sub_1A78C0AFC(v176, v158);
        sub_1A78C0AFC(v12, v150);
        v147 = v138;
        v148 = v134;
        goto LABEL_276;
      }

      v110 = v174;
      if (v78 != 1)
      {
        v140 = v156;
        __s1[0] = v12;
        v141 = v166;
        LODWORD(__s1[1]) = v166;
        WORD2(__s1[1]) = WORD2(v166);
        if (!v156)
        {
          goto LABEL_346;
        }

LABEL_257:
        v145 = memcmp(v140, __s1, BYTE6(v141));
        sub_1A78C0AFC(v109, v158);
        sub_1A78C0AFC(v12, v141);
        sub_1A78C0AFC(v110, v96);
        v146 = v108;
        goto LABEL_277;
      }

      if (v12 >> 32 < v12)
      {
        goto LABEL_308;
      }

      v111 = sub_1A793D648();
      if (v111)
      {
        v112 = sub_1A793D678();
        if (__OFSUB__(v12, v112))
        {
          goto LABEL_325;
        }

        v111 += v12 - v112;
      }

      v113 = v166;
      v114 = sub_1A793D668();
      if (v114 >= (v12 >> 32) - v12)
      {
        v115 = (v12 >> 32) - v12;
      }

      else
      {
        v115 = v114;
      }

      result = v156;
      if (!v156)
      {
        goto LABEL_348;
      }

      if (!v111)
      {
        goto LABEL_347;
      }
    }

    else
    {
      v85 = v174;
      v86 = v175;
      if (!v77)
      {
        __s1[0] = v177;
        LOWORD(__s1[1]) = v9;
        BYTE2(__s1[1]) = BYTE2(v9);
        BYTE3(__s1[1]) = BYTE3(v9);
        BYTE4(__s1[1]) = BYTE4(v9);
        BYTE5(__s1[1]) = BYTE5(v9);
        if (!v78)
        {
          goto LABEL_200;
        }

        v87 = v13;
        v170 = v12;
        v172 = v9;
        if (v78 == 1)
        {
          v88 = v12;
          v89 = (v12 >> 32) - v12;
          if (v12 >> 32 < v12)
          {
            goto LABEL_306;
          }

          v90 = v87;
          v91 = sub_1A793D648();
          if (!v91)
          {
            goto LABEL_350;
          }

          v92 = v91;
          v93 = sub_1A793D678();
          if (__OFSUB__(v88, v93))
          {
            goto LABEL_312;
          }

          v94 = (v88 - v93 + v92);
          result = sub_1A793D668();
          if (!v94)
          {
            goto LABEL_351;
          }

          goto LABEL_242;
        }

        v120 = *(v12 + 16);
        v121 = *(v12 + 24);
        v122 = sub_1A793D648();
        if (v122)
        {
          v123 = sub_1A793D678();
          if (__OFSUB__(v120, v123))
          {
            goto LABEL_323;
          }

          v122 += v120 - v123;
        }

        v23 = __OFSUB__(v121, v120);
        v124 = v121 - v120;
        if (v23)
        {
          goto LABEL_310;
        }

        v125 = sub_1A793D668();
        if (!v122)
        {
          goto LABEL_343;
        }

        if (v125 >= v124)
        {
          v126 = v124;
        }

        else
        {
          v126 = v125;
        }

        v127 = memcmp(__s1, v122, v126);
        sub_1A78C0AFC(v176, v10);
        v128 = v12;
        v129 = v87;
LABEL_246:
        sub_1A78C0AFC(v128, v129);
        sub_1A78C0AFC(v174, v175);
        sub_1A78C0AFC(v177, v172);
        if (v127)
        {
          goto LABEL_281;
        }

        goto LABEL_8;
      }

      v158 = v10;
      v167 = v13;
      if (v177 > v177 >> 32)
      {
        goto LABEL_291;
      }

      v96 = v175;
      v101 = sub_1A793D648();
      v173 = v9;
      if (v101)
      {
        v102 = v101;
        v103 = sub_1A793D678();
        if (__OFSUB__(v177, v103))
        {
          goto LABEL_295;
        }

        v157 = (v177 - v103 + v102);
      }

      else
      {
        v157 = 0;
      }

      v108 = v177;
      sub_1A793D668();
      v109 = v176;
      if (v78 == 2)
      {
        v134 = v175;
        v142 = *(v12 + 16);
        v143 = *(v12 + 24);
        v137 = sub_1A793D648();
        v138 = v174;
        if (v137)
        {
          v144 = sub_1A793D678();
          if (__OFSUB__(v142, v144))
          {
            goto LABEL_326;
          }

          v137 += v142 - v144;
        }

        v23 = __OFSUB__(v143, v142);
        v153 = v143 - v142;
        if (v23)
        {
          goto LABEL_315;
        }

        v150 = v167;
        v154 = sub_1A793D668();
        if (v154 >= v153)
        {
          v152 = v153;
        }

        else
        {
          v152 = v154;
        }

        result = v157;
        if (!v157)
        {
          goto LABEL_356;
        }

        if (!v137)
        {
          goto LABEL_355;
        }

        goto LABEL_272;
      }

      v110 = v174;
      if (v78 != 1)
      {
        v140 = v157;
        __s1[0] = v12;
        v141 = v167;
        LODWORD(__s1[1]) = v167;
        WORD2(__s1[1]) = WORD2(v167);
        if (!v157)
        {
          goto LABEL_349;
        }

        goto LABEL_257;
      }

      if (v12 >> 32 < v12)
      {
        goto LABEL_314;
      }

      v111 = sub_1A793D648();
      if (v111)
      {
        v116 = sub_1A793D678();
        if (__OFSUB__(v12, v116))
        {
          goto LABEL_327;
        }

        v111 += v12 - v116;
      }

      v113 = v167;
      v117 = sub_1A793D668();
      if (v117 >= (v12 >> 32) - v12)
      {
        v115 = (v12 >> 32) - v12;
      }

      else
      {
        v115 = v117;
      }

      result = v157;
      if (!v157)
      {
        goto LABEL_358;
      }

      if (!v111)
      {
        goto LABEL_357;
      }
    }

    if (result == v111)
    {
      sub_1A78C0AFC(v176, v158);
      sub_1A78C0AFC(v12, v113);
      v118 = v110;
      v119 = v96;
LABEL_274:
      sub_1A78C0AFC(v118, v119);
      sub_1A78C0AFC(v177, v173);
      goto LABEL_8;
    }

    v145 = memcmp(result, v111, v115);
    sub_1A78C0AFC(v176, v158);
    sub_1A78C0AFC(v12, v113);
    v147 = v110;
    v148 = v96;
LABEL_276:
    sub_1A78C0AFC(v147, v148);
    v146 = v177;
LABEL_277:
    sub_1A78C0AFC(v146, v173);
    if (v145)
    {
      goto LABEL_281;
    }

LABEL_8:
    v4 += 4;
    v3 += 4;
    if (!--v2)
    {
      goto LABEL_279;
    }
  }

  v159 = *(v7 + 16);
  sub_1A78C0990(v7, v8);
  sub_1A78C0990(v177, v9);
  sub_1A78C0990(v11, v10);
  v162 = v13;
  sub_1A78C0990(v12, v13);
  v34 = sub_1A793D648();
  if (v34)
  {
    v35 = v34;
    v36 = sub_1A793D678();
    if (__OFSUB__(v159, v36))
    {
      goto LABEL_292;
    }

    v160 = (v159 - v36 + v35);
  }

  else
  {
    v160 = 0;
  }

  sub_1A793D668();
  if (v15 == 2)
  {
    v67 = *(v176 + 16);
    v68 = *(v176 + 24);
    v50 = sub_1A793D648();
    if (v50)
    {
      v69 = sub_1A793D678();
      if (__OFSUB__(v67, v69))
      {
        goto LABEL_318;
      }

      v50 += v67 - v69;
    }

    v23 = __OFSUB__(v68, v67);
    v70 = v68 - v67;
    if (v23)
    {
      goto LABEL_303;
    }

    v71 = sub_1A793D668();
    if (v71 >= v70)
    {
      v53 = v70;
    }

    else
    {
      v53 = v71;
    }

    v48 = v160;
    v13 = v162;
    if (!v160)
    {
      goto LABEL_336;
    }

    if (!v50)
    {
      goto LABEL_335;
    }

    goto LABEL_142;
  }

  if (v15 == 1)
  {
    if (v176 >> 32 < v176)
    {
      goto LABEL_299;
    }

    v50 = sub_1A793D648();
    if (v50)
    {
      v51 = sub_1A793D678();
      if (__OFSUB__(v176, v51))
      {
        goto LABEL_320;
      }

      v50 += v176 - v51;
    }

    v52 = sub_1A793D668();
    if (v52 >= (v176 >> 32) - v176)
    {
      v53 = (v176 >> 32) - v176;
    }

    else
    {
      v53 = v52;
    }

    v48 = v160;
    if (!v160)
    {
      goto LABEL_342;
    }

    if (!v50)
    {
      goto LABEL_341;
    }

LABEL_142:
    if (v48 == v50)
    {
      goto LABEL_147;
    }

    v47 = v53;
    p_s2 = v50;
    goto LABEL_146;
  }

  v48 = v160;
  __s1[0] = v176;
  LOWORD(__s1[1]) = v10;
  BYTE2(__s1[1]) = BYTE2(v10);
  BYTE3(__s1[1]) = BYTE3(v10);
  BYTE4(__s1[1]) = BYTE4(v10);
  BYTE5(__s1[1]) = BYTE5(v10);
  if (v160)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_328:
  __break(1u);
LABEL_329:
  sub_1A793D668();
LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  sub_1A793D668();
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);
LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  sub_1A793D668();
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
LABEL_348:
  __break(1u);
LABEL_349:
  __break(1u);
LABEL_350:
  result = sub_1A793D668();
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
  return result;
}

uint64_t CompoundMKEMCiphertext.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A793D7E8();
  v4 = *(v3 + 16);
  result = MEMORY[0x1AC55D830](v4);
  if (v4)
  {
    v6 = (v3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      sub_1A78C0990(v7, v8);
      sub_1A78C0990(v9, v10);
      sub_1A793D7E8();
      sub_1A793D7E8();
      sub_1A78C0AFC(v7, v8);
      result = sub_1A78C0AFC(v9, v10);
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CompoundMKEMCiphertext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A793DF58();
  sub_1A793D7E8();
  v4 = *(v3 + 16);
  MEMORY[0x1AC55D830](v4);
  if (v4)
  {
    v5 = (v3 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_1A78C0990(v6, v7);
      sub_1A78C0990(v8, v9);
      sub_1A793D7E8();
      sub_1A793D7E8();
      sub_1A78C0AFC(v6, v7);
      sub_1A78C0AFC(v8, v9);
      v5 += 4;
      --v4;
    }

    while (v4);
  }

  return sub_1A793DFA8();
}

uint64_t sub_1A7904868()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A790A150(v5, v3);
  return sub_1A793DFA8();
}

uint64_t sub_1A79048CC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1A793D7E8();

  return sub_1A790A150(a1, v5);
}

uint64_t sub_1A7904910()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1A793DF58();
  sub_1A793D7E8();
  sub_1A790A150(v5, v3);
  return sub_1A793DFA8();
}

uint64_t sub_1A7904970(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if ((sub_1A790A674(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1A79032D8(v2, v3);
}

uint64_t SimMKEMPublicKey.rawRepresentation.getter()
{
  v1 = *(v0 + 24);
  sub_1A78C0990(v1, *(v0 + 32));
  return v1;
}

uint64_t SimMKEMPublicKey.keyID.getter()
{
  v1 = *(v0 + 40);
  sub_1A78C0990(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_1A7904A3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v50[0] = a1;
      WORD4(v50[0]) = a2;
      BYTE10(v50[0]) = BYTE2(a2);
      BYTE11(v50[0]) = BYTE3(a2);
      BYTE12(v50[0]) = BYTE4(a2);
      BYTE13(v50[0]) = BYTE5(a2);
      v8 = v50 + BYTE6(a2);
      v9 = v50;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v7 != 2)
  {
    *(v50 + 6) = 0;
    *&v50[0] = 0;
    v9 = v50;
    v8 = v50;
    goto LABEL_23;
  }

  v10 = v3;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = sub_1A793D648();
  if (v13)
  {
    v14 = sub_1A793D678();
    if (__OFSUB__(v11, v14))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v13 += v11 - v14;
  }

  v15 = __OFSUB__(v12, v11);
  v16 = v12 - v11;
  if (v15)
  {
    __break(1u);
LABEL_11:
    v16 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v10 = v3;
    v13 = sub_1A793D648();
    if (v13)
    {
      v17 = sub_1A793D678();
      if (__OFSUB__(a1, v17))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v13 += a1 - v17;
    }
  }

  v18 = sub_1A793D668();
  if (v18 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v19 + v13);
  if (v13)
  {
    v8 = v20;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  v3 = v10;
LABEL_23:
  sub_1A78CE4C8(v9, v8, v52);
  v21 = v52[0];
  v22 = *(&v52[0] + 1) >> 62;
  if ((*(&v52[0] + 1) >> 62) <= 1)
  {
    if (v22)
    {
      LODWORD(v23) = DWORD1(v52[0]) - LODWORD(v52[0]);
      if (!__OFSUB__(DWORD1(v52[0]), v52[0]))
      {
        v23 = v23;
        goto LABEL_29;
      }

      goto LABEL_47;
    }

LABEL_32:
    sub_1A78C0AFC(a1, a2);
    sub_1A78D6484();
    swift_allocError();
    *v27 = 0;
    *(v27 + 4) = 1;
    swift_willThrow();
    goto LABEL_33;
  }

  if (v22 != 2)
  {
    goto LABEL_32;
  }

  v25 = *(*&v52[0] + 16);
  v24 = *(*&v52[0] + 24);
  v15 = __OFSUB__(v24, v25);
  v23 = v24 - v25;
  if (v15)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_29:
  if (v23 != 1601)
  {
    goto LABEL_32;
  }

  sub_1A78C0990(*&v52[0], *(&v52[0] + 1));
  sub_1A78C3AA4(33, v21, *(&v21 + 1), v52);
  v26 = sub_1A7902420(*&v52[0], *(&v52[0] + 1));
  if (v3)
  {
    sub_1A78C0AFC(a1, a2);
LABEL_33:
    v29 = *(&v21 + 1);
    v28 = v21;
    goto LABEL_34;
  }

  v32 = v26;
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    __break(1u);
    goto LABEL_54;
  }

  v33 = ccec_compressed_x962_export_pub_size();
  if (v33 < 0)
  {
    goto LABEL_51;
  }

  v34 = v33;
  if (v33)
  {
    v35 = sub_1A793DB28();
    *(v35 + 16) = v34;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v47 = v32;
  if (ccec_compressed_x962_export_pub())
  {
LABEL_52:
    __break(1u);
  }

  *(v35 + 16) = v34;
  v36 = sub_1A78C0DCC(v35);
  v38 = v37;

  v48 = sub_1A790A204(v36, v38, 0x620uLL);
  v49 = v39;
  sub_1A78C0AFC(v36, v38);
  result = ccsha256_di();
  if (result)
  {
    v40 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v42 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v40;
    *(inited + 24) = v42;
    *&v50[0] = inited;
    sub_1A78C0990(v21, *(&v21 + 1));
    sub_1A79097B4(v21, *(&v21 + 1));
    sub_1A78C0AFC(v21, *(&v21 + 1));
    sub_1A78BD4B0(v52);

    v50[0] = v52[0];
    v50[1] = v52[1];
    sub_1A78F6AF0(v50, v51, v53);
    sub_1A78C0AFC(a1, a2);
    v44 = v53[0];
    v43 = v53[1];
    sub_1A78C0990(v21, *(&v21 + 1));
    sub_1A78C8A28(1568, v21, *(&v21 + 1), v52);
    v45 = v52[0];
    LOBYTE(v42) = sub_1A790A674(*&v52[0], *(&v52[0] + 1), v48, v49);
    result = sub_1A78C0AFC(v45, *(&v45 + 1));
    if (v42)
    {
      *a3 = v47;
      *(a3 + 8) = v48;
      *(a3 + 16) = v49;
      *(a3 + 24) = v21;
      *(a3 + 40) = v44;
      *(a3 + 48) = v43;
      goto LABEL_35;
    }

    sub_1A78D6484();
    swift_allocError();
    *v46 = 5;
    *(v46 + 4) = 1;
    swift_willThrow();

    sub_1A78C0AFC(v48, v49);
    sub_1A78C0AFC(v21, *(&v21 + 1));
    v28 = v44;
    v29 = v43;
LABEL_34:
    result = sub_1A78C0AFC(v28, v29);
LABEL_35:
    v31 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t SimMKEMPublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40[2] = *MEMORY[0x1E69E9840];
  sub_1A793D6A8();
  v7 = v39[0];
  v8 = *(&v39[0] + 1) >> 62;
  if ((*(&v39[0] + 1) >> 62) <= 1)
  {
    if (v8)
    {
      LODWORD(v9) = DWORD1(v39[0]) - LODWORD(v39[0]);
      if (!__OFSUB__(DWORD1(v39[0]), v39[0]))
      {
        v9 = v9;
        goto LABEL_7;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_13:
    sub_1A78D6484();
    swift_allocError();
    *v19 = 0;
    *(v19 + 4) = 1;
    swift_willThrow();
    goto LABEL_14;
  }

  if (v8 != 2)
  {
    goto LABEL_13;
  }

  v11 = *(*&v39[0] + 16);
  v10 = *(*&v39[0] + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    goto LABEL_24;
  }

LABEL_7:
  if (v9 != 1601)
  {
    goto LABEL_13;
  }

  sub_1A78C0990(*&v39[0], *(&v39[0] + 1));
  sub_1A78C3AA4(33, *&v39[0], *(&v39[0] + 1), v39);
  v13 = sub_1A7902420(*&v39[0], *(&v39[0] + 1));
  if (v3)
  {
LABEL_14:
    (*(*(a2 - 8) + 8))(a1, a2);
    v21 = *(&v7 + 1);
    v20 = v7;
    goto LABEL_15;
  }

  v14 = v13;
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = ccec_compressed_x962_export_pub_size();
  if (v16 < 0)
  {
    goto LABEL_25;
  }

  v17 = v16;
  if (v16)
  {
    v18 = sub_1A793DB28();
    *(v18 + 16) = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v34 = v14;
  if (ccec_compressed_x962_export_pub())
  {
LABEL_26:
    __break(1u);
  }

  *(v18 + 16) = v17;
  v23 = sub_1A78C0DCC(v18);
  v25 = v24;

  v35 = sub_1A790A204(v23, v25, 0x620uLL);
  v36 = v26;
  sub_1A78C0AFC(v23, v25);
  result = ccsha256_di();
  if (result)
  {
    v27 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A71A8, &qword_1A7942350);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v29 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v27;
    *(inited + 24) = v29;
    sub_1A78C0990(v7, *(&v7 + 1));
    sub_1A79097B4(v7, *(&v7 + 1));
    sub_1A78C0AFC(v7, *(&v7 + 1));
    sub_1A78BD4B0(v39);

    v37[0] = v39[0];
    v37[1] = v39[1];
    sub_1A78F6AF0(v37, v38, v40);
    v32 = v40[0];
    v33 = v40[1];
    sub_1A78C0990(v7, *(&v7 + 1));
    sub_1A78C8A28(1568, v7, *(&v7 + 1), v39);
    v30 = v39[0];
    LOBYTE(v29) = sub_1A790A674(*&v39[0], *(&v39[0] + 1), v35, v36);
    sub_1A78C0AFC(v30, *(&v30 + 1));
    if (v29)
    {
      result = (*(*(a2 - 8) + 8))(a1, a2);
      *a3 = v34;
      *(a3 + 8) = v35;
      *(a3 + 16) = v36;
      *(a3 + 24) = v7;
      *(a3 + 40) = v32;
      *(a3 + 48) = v33;
      goto LABEL_16;
    }

    sub_1A78D6484();
    swift_allocError();
    *v31 = 5;
    *(v31 + 4) = 1;
    swift_willThrow();
    (*(*(a2 - 8) + 8))(a1, a2);

    sub_1A78C0AFC(v35, v36);
    sub_1A78C0AFC(v7, *(&v7 + 1));
    v20 = v32;
    v21 = v33;
LABEL_15:
    result = sub_1A78C0AFC(v20, v21);
LABEL_16:
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A7905354()
{
  v1 = *(v0 + 24);
  sub_1A78C0990(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_1A7905388()
{
  v1 = *(v0 + 40);
  sub_1A78C0990(v1, *(v0 + 48));
  return v1;
}

uint64_t SimMKEMPrivateKey.publicParameter.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t SimMKEMPrivateKey.publicParameter.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A78C0AFC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SimMKEMPrivateKey.rawRepresentation.getter()
{
  v1 = *(v0 + 40);
  sub_1A78C0990(v1, *(v0 + 48));
  return v1;
}

uint64_t SimMKEMPrivateKey.publicKey.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1A793DB18();
  sub_1A78C0990(v3, v4);
  sub_1A78C0990(v5, v6);

  return sub_1A78C0990(v7, v8);
}

uint64_t sub_1A7905514(uint64_t a1, unint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v24[0] = a1;
      LOWORD(v24[1]) = a2;
      BYTE2(v24[1]) = BYTE2(a2);
      BYTE3(v24[1]) = BYTE3(a2);
      BYTE4(v24[1]) = BYTE4(a2);
      BYTE5(v24[1]) = BYTE5(a2);
      v3 = v24 + BYTE6(a2);
      v4 = v24;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    memset(v24, 0, 14);
    v4 = v24;
    v3 = v24;
    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  a1 = sub_1A793D648();
  v7 = a1;
  if (a1)
  {
    a1 = sub_1A793D678();
    if (__OFSUB__(v5, a1))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    v7 += v5 - a1;
  }

  v8 = __OFSUB__(v6, v5);
  v9 = v6 - v5;
  if (v8)
  {
    __break(1u);
LABEL_11:
    v10 = a1;
    v9 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_36;
    }

    v7 = sub_1A793D648();
    if (v7)
    {
      v11 = sub_1A793D678();
      if (__OFSUB__(v10, v11))
      {
        goto LABEL_39;
      }

      v7 += v10 - v11;
    }
  }

  v12 = sub_1A793D668();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = (v13 + v7);
  if (v7)
  {
    v3 = v14;
  }

  else
  {
    v3 = 0;
  }

  v4 = v7;
LABEL_23:
  sub_1A78CE4C8(v4, v3, &v25);
  v15 = v25;
  v16 = v26;
  v17 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v17)
    {
      if (BYTE6(v26) == 32)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (!__OFSUB__(HIDWORD(v25), v25))
    {
      if (HIDWORD(v25) - v25 == 32)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_37;
  }

  if (v17 != 2)
  {
LABEL_30:
    sub_1A78D6484();
    swift_allocError();
    *v21 = 1;
    *(v21 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(v15, v16);
    goto LABEL_31;
  }

  v19 = *(v25 + 16);
  v18 = *(v25 + 24);
  v8 = __OFSUB__(v18, v19);
  v20 = v18 - v19;
  if (v8)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v20 != 32)
  {
    goto LABEL_30;
  }

LABEL_31:
  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t static SimMKEMPrivateKey.normalizePublicParameter<A>(_:)()
{
  result = sub_1A793D6A8();
  v1 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v1 != 2)
    {
      goto LABEL_11;
    }

    v4 = *(v7 + 16);
    v3 = *(v7 + 24);
    v5 = __OFSUB__(v3, v4);
    v2 = v3 - v4;
    if (!v5)
    {
LABEL_10:
      if (v2 == 32)
      {
        return v7;
      }

LABEL_11:
      sub_1A78D6484();
      swift_allocError();
      *v6 = 1;
      *(v6 + 4) = 1;
      swift_willThrow();
      sub_1A78C0AFC(v7, v8);
      return v7;
    }

    __break(1u);
  }

  else if (!v1)
  {
    v2 = BYTE6(v8);
    goto LABEL_10;
  }

  LODWORD(v2) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v2 = v2;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790587C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A7905514(a1, a2);
  if (v3)
  {
    v9 = a1;
    v10 = a2;
    return sub_1A78C0AFC(v9, v10);
  }

  v65 = a2;
  v11 = v7;
  v12 = v8;
  v59 = a3;
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    goto LABEL_32;
  }

  v14 = getccec_full_ctx_size();
  v15 = sub_1A78E2908(v14, 0, v14);
  swift_beginAccess();
  v16 = *(v15 + 16);
  v17 = v15 + 32;
  v64 = MEMORY[0x1E69E9510];
  sub_1A7902164(v15 + 32, MEMORY[0x1E69E9510], sub_1A790AE6C, &v73);
  v77 = 0;
  v18 = v73;
  v19 = v74;
  v67 = v73;
  v68 = v74;
  *&v75 = MEMORY[0x1E6969080];
  *(&v75 + 1) = MEMORY[0x1E6969078];
  v73 = v11;
  *&v74 = v12;
  v20 = v12;
  v21 = __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x1E6969080]);
  v22 = *v21;
  v23 = v21[1];
  sub_1A78C0990(v18, v19);
  v60 = v11;
  v61 = v20;
  sub_1A78C0990(v11, v20);
  v24 = v15;
  v25 = v77;
  sub_1A7900C14(v22, v23);
  sub_1A78C0AFC(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v26 = sub_1A790A204(v67, v68, 0x20uLL);
  v28 = v27;
  sub_1A78C0AFC(v67, v68);
  v77 = v24;
  v29 = v17 + *(v24 + 16);
  __src = v17;
  sub_1A7902164(v17, v64, sub_1A790AE6C, &v73);
  sub_1A78C0AFC(a1, v65);
  v30 = v73;
  v31 = v74;
  v67 = v73;
  v68 = v74;
  *&v75 = MEMORY[0x1E6969080];
  *(&v75 + 1) = MEMORY[0x1E6969078];
  v73 = v26;
  *&v74 = v28;
  v32 = __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x1E6969080]);
  v33 = *v32;
  v34 = v32[1];
  sub_1A78C0990(v30, v31);
  v66 = v26;
  sub_1A78C0990(v26, v28);
  sub_1A7900C14(v33, v34);
  sub_1A78C0AFC(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v36 = v67;
  v35 = v68;
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v37 = result;

  if (v37)
  {
    v38 = sub_1A793DB28();
    *(v38 + 16) = v37;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v38 + 32), __src, v37);
  *(v38 + 16) = v37;

  result = ccec_compressed_x962_export_pub_size();
  if (result < 0)
  {
    goto LABEL_27;
  }

  v39 = result;
  if (result)
  {
    v40 = sub_1A793DB28();
    *(v40 + 16) = v39;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  result = ccec_compressed_x962_export_pub();
  if (result)
  {
    goto LABEL_28;
  }

  v63 = v35;
  *(v40 + 16) = v39;
  v41 = sub_1A78C0DCC(v40);
  v43 = v42;

  v44 = sub_1A790A204(v41, v43, 0x620uLL);
  v46 = v45;
  sub_1A78C0AFC(v41, v43);
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v47 = result;

  if (v47)
  {
    v48 = sub_1A793DB28();
    *(v48 + 16) = v47;
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v48 + 32), __src, v47);
  *(v48 + 16) = v47;

  result = ccec_compressed_x962_export_pub_size();
  if (result < 0)
  {
    goto LABEL_30;
  }

  v49 = result;
  if (result)
  {
    v50 = sub_1A793DB28();
    *(v50 + 16) = v49;
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  result = ccec_compressed_x962_export_pub();
  if (result)
  {
    goto LABEL_31;
  }

  *(v50 + 16) = v49;
  v51 = sub_1A78C0DCC(v50);
  v53 = v52;

  v71 = v51;
  v72 = v53;
  v69 = MEMORY[0x1E6969080];
  v70 = MEMORY[0x1E6969078];
  v67 = v44;
  v68 = v46;
  v54 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x1E6969080]);
  v55 = *v54;
  v56 = v54[1];
  sub_1A78C0990(v51, v53);
  sub_1A78C0990(v44, v46);
  sub_1A7900C14(v55, v56);
  sub_1A78C0AFC(v51, v53);
  __swift_destroy_boxed_opaque_existential_1(&v67);
  sub_1A7904A3C(v71, v72, &v73);
  result = sub_1A78C0AFC(v44, v46);
  if (v25)
  {
    sub_1A78C0AFC(v60, v61);

    sub_1A78C0AFC(v66, v28);
    v9 = v36;
    v10 = v63;
    return sub_1A78C0AFC(v9, v10);
  }

  v57 = v73;
  *v59 = v60;
  *(v59 + 8) = v61;
  *(v59 + 16) = v77;
  *(v59 + 24) = v66;
  *(v59 + 32) = v28;
  *(v59 + 40) = v36;
  *(v59 + 48) = v63;
  *(v59 + 56) = v57;
  v58 = v75;
  *(v59 + 64) = v74;
  *(v59 + 80) = v58;
  *(v59 + 96) = v76;
  return result;
}

uint64_t SimMKEMPrivateKey.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = static SimMKEMPrivateKey.normalizePublicParameter<A>(_:)();
  if (v3)
  {
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  v10 = v7;
  v61 = a2;
  v62 = a1;
  v11 = v8;
  v56 = a3;
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
    goto LABEL_29;
  }

  v12 = getccec_full_ctx_size();
  v13 = sub_1A78E2908(v12, 0, v12);
  swift_beginAccess();
  v14 = *(v13 + 16);
  v64 = MEMORY[0x1E69E9510];
  sub_1A7902164(v13 + 32, MEMORY[0x1E69E9510], sub_1A790AE6C, &v71);
  v16 = v71;
  v15 = v72;
  v65 = v71;
  v66 = v72;
  *&v73 = MEMORY[0x1E6969080];
  *(&v73 + 1) = MEMORY[0x1E6969078];
  v17 = v10;
  v71 = v10;
  *&v72 = v11;
  v18 = __swift_project_boxed_opaque_existential_1(&v71, MEMORY[0x1E6969080]);
  v20 = *v18;
  v19 = v18[1];
  sub_1A78C0990(v16, v15);
  v59 = v17;
  v60 = v11;
  v21 = v11;
  v22 = v13;
  sub_1A78C0990(v17, v21);
  sub_1A7900C14(v20, v19);
  sub_1A78C0AFC(v16, v15);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  v23 = sub_1A790A204(v65, v66, 0x20uLL);
  v25 = v24;
  sub_1A78C0AFC(v65, v66);
  v26 = v13 + 32 + *(v13 + 16);
  v75 = (v13 + 32);
  sub_1A7902164(v13 + 32, v64, sub_1A790AE6C, &v71);
  v27 = v71;
  v28 = v72;
  v65 = v71;
  v66 = v72;
  *&v73 = MEMORY[0x1E6969080];
  *(&v73 + 1) = MEMORY[0x1E6969078];
  v71 = v23;
  *&v72 = v25;
  v29 = __swift_project_boxed_opaque_existential_1(&v71, MEMORY[0x1E6969080]);
  v30 = *v29;
  v31 = v29[1];
  sub_1A78C0990(v27, v28);
  sub_1A78C0990(v23, v25);
  sub_1A7900C14(v30, v31);
  sub_1A78C0AFC(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  v33 = v65;
  v32 = v66;
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = result;

  if (v34)
  {
    v35 = sub_1A793DB28();
    *(v35 + 16) = v34;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v35 + 32), v75, v34);
  *(v35 + 16) = v34;

  result = ccec_compressed_x962_export_pub_size();
  if (result < 0)
  {
    goto LABEL_24;
  }

  v36 = result;
  if (result)
  {
    v37 = sub_1A793DB28();
    *(v37 + 16) = v36;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  result = ccec_compressed_x962_export_pub();
  if (result)
  {
    goto LABEL_25;
  }

  v58 = v33;
  v63 = v32;
  *(v37 + 16) = v36;
  v38 = sub_1A78C0DCC(v37);
  v40 = v39;

  v41 = sub_1A790A204(v38, v40, 0x620uLL);
  v43 = v42;
  sub_1A78C0AFC(v38, v40);
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = result;

  v57 = v23;
  if (v44)
  {
    v45 = sub_1A793DB28();
    *(v45 + 16) = v44;
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v45 + 32), v75, v44);
  *(v45 + 16) = v44;

  result = ccec_compressed_x962_export_pub_size();
  if ((result & 0x8000000000000000) == 0)
  {
    v46 = result;
    v75 = v25;
    if (result)
    {
      v47 = sub_1A793DB28();
      *(v47 + 16) = v46;
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
    }

    result = ccec_compressed_x962_export_pub();
    if (!result)
    {
      *(v47 + 16) = v46;
      v48 = sub_1A78C0DCC(v47);
      v50 = v49;

      v69 = v48;
      v70 = v50;
      v67 = MEMORY[0x1E6969080];
      v68 = MEMORY[0x1E6969078];
      v65 = v41;
      v66 = v43;
      v51 = __swift_project_boxed_opaque_existential_1(&v65, MEMORY[0x1E6969080]);
      v52 = *v51;
      v53 = v51[1];
      sub_1A78C0990(v48, v50);
      sub_1A78C0990(v41, v43);
      sub_1A7900C14(v52, v53);
      sub_1A78C0AFC(v48, v50);
      __swift_destroy_boxed_opaque_existential_1(&v65);
      sub_1A7904A3C(v69, v70, &v71);
      (*(*(v61 - 8) + 8))(v62);
      result = sub_1A78C0AFC(v41, v43);
      v54 = v71;
      *v56 = v59;
      *(v56 + 8) = v60;
      *(v56 + 16) = v22;
      *(v56 + 24) = v57;
      *(v56 + 32) = v75;
      *(v56 + 40) = v58;
      *(v56 + 48) = v63;
      *(v56 + 56) = v54;
      v55 = v73;
      *(v56 + 64) = v72;
      *(v56 + 80) = v55;
      *(v56 + 96) = v74;
      return result;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t SimMKEMPrivateKey.init<A>(rawRepresentation:publicParameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1A793D6A8();
  v11 = *&v76[8];
  v10 = *v76;
  v12 = *&v76[8] >> 62;
  if ((*&v76[8] >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_13;
    }

    v14 = *(*v76 + 16);
    v13 = *(*v76 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      if (v16 == 64)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v12)
  {
    if (!__OFSUB__(*&v76[4], *v76))
    {
      if (*&v76[4] - *v76 == 64)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A78D6484();
      swift_allocError();
      *v21 = 0;
      *(v21 + 4) = 1;
      swift_willThrow();
      goto LABEL_14;
    }

    goto LABEL_38;
  }

  if (v76[14] != 64)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = static SimMKEMPrivateKey.normalizePublicParameter<A>(_:)();
  if (v4)
  {
LABEL_14:
    v22 = *(*(a3 - 8) + 8);
    v22(a2, a3);
    v22(a1, a3);
    return sub_1A78C0AFC(v10, v11);
  }

  v69 = a2;
  v70 = v17;
  v79 = v18;
  sub_1A78C0990(*v76, *&v76[8]);
  v19 = sub_1A78C3AA4(32, *v76, *&v76[8], v76);
  *v71 = *v76;
  result = MEMORY[0x1AC55DAD0](v19);
  if (!result)
  {
    goto LABEL_45;
  }

  v20 = getccec_full_ctx_size();
  v57 = MEMORY[0x1EEE9AC00](v20);
  v23 = sub_1A78C05E8(v57, sub_1A790A7DC);
  v60 = a4;
  sub_1A78C0AFC(v71[0], v71[1]);
  sub_1A78C0990(v10, v11);
  sub_1A78C8A28(32, v10, v11, v76);
  v67 = *&v76[8];
  v24 = *v76;
  swift_beginAccess();
  v25 = *(v23 + 16);
  v68 = v23;
  v61 = (v23 + 32);
  sub_1A7902164(v23 + 32, MEMORY[0x1E69E9510], sub_1A790AE6C, v76);
  v26 = *v76;
  *v71 = *v76;
  *&v77 = MEMORY[0x1E6969080];
  *(&v77 + 1) = MEMORY[0x1E6969078];
  v27 = v79;
  *v76 = v70;
  *&v76[8] = v79;
  v28 = __swift_project_boxed_opaque_existential_1(v76, MEMORY[0x1E6969080]);
  v65 = *v28;
  v63 = v28[1];
  sub_1A78C0990(v26, *(&v26 + 1));
  v29 = v24;
  sub_1A78C0990(v70, v27);
  sub_1A7900C14(v65, v63);
  sub_1A78C0AFC(v26, *(&v26 + 1));
  __swift_destroy_boxed_opaque_existential_1(v76);
  v30 = sub_1A790A204(v71[0], v71[1], 0x20uLL);
  v32 = v31;
  sub_1A78C0AFC(v71[0], v71[1]);
  if ((sub_1A790A674(v29, v67, v30, v32) & 1) == 0)
  {
    sub_1A78D6484();
    swift_allocError();
    *v35 = 5;
    *(v35 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(v30, v32);
    v36 = *(*(a3 - 8) + 8);
    v36(v69, a3);
    v36(a1, a3);
    sub_1A78C0AFC(v70, v79);

    sub_1A78C0AFC(v29, v67);
    return sub_1A78C0AFC(v10, v11);
  }

  v64 = v29;
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
    goto LABEL_39;
  }

  v33 = result;

  if (v33)
  {
    v34 = sub_1A793DB28();
    *(v34 + 16) = v33;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v34 + 32), v61, v33);
  *(v34 + 16) = v33;

  result = ccec_compressed_x962_export_pub_size();
  if (result < 0)
  {
    goto LABEL_40;
  }

  v37 = result;
  if (result)
  {
    v38 = sub_1A793DB28();
    *(v38 + 16) = v37;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v58 = v32;
  v59 = v30;
  result = ccec_compressed_x962_export_pub();
  if (result)
  {
    goto LABEL_41;
  }

  *(v38 + 16) = v37;
  v39 = sub_1A78C0DCC(v38);
  v41 = v40;

  v66 = sub_1A790A204(v39, v41, 0x620uLL);
  v43 = v42;
  sub_1A78C0AFC(v39, v41);
  result = getccec_pub_ctx_size();
  if (result < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v44 = result;

  if (v44)
  {
    v45 = sub_1A793DB28();
    *(v45 + 16) = v44;
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v45 + 32), v61, v44);
  *(v45 + 16) = v44;

  result = ccec_compressed_x962_export_pub_size();
  if ((result & 0x8000000000000000) == 0)
  {
    v46 = result;
    if (result)
    {
      v47 = sub_1A793DB28();
      *(v47 + 16) = v46;
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
    }

    result = ccec_compressed_x962_export_pub();
    if (!result)
    {
      *(v47 + 16) = v46;
      v48 = sub_1A78C0DCC(v47);
      v50 = v49;

      v74 = v48;
      v75 = v50;
      v72 = MEMORY[0x1E6969080];
      v73 = MEMORY[0x1E6969078];
      v71[0] = v66;
      v71[1] = v43;
      v51 = __swift_project_boxed_opaque_existential_1(v71, MEMORY[0x1E6969080]);
      v52 = v51[1];
      v62 = *v51;
      sub_1A78C0990(v48, v50);
      sub_1A78C0990(v66, v43);
      sub_1A7900C14(v62, v52);
      sub_1A78C0AFC(v48, v50);
      __swift_destroy_boxed_opaque_existential_1(v71);
      sub_1A7904A3C(v74, v75, v76);
      sub_1A78C0AFC(v59, v58);
      sub_1A78C0AFC(v66, v43);
      v53 = *(*(a3 - 8) + 8);
      v53(v69, a3);
      result = (v53)(a1, a3);
      v54 = *v76;
      v55 = v79;
      *v60 = v70;
      *(v60 + 8) = v55;
      *(v60 + 16) = v68;
      *(v60 + 24) = v64;
      *(v60 + 32) = v67;
      *(v60 + 40) = v10;
      *(v60 + 48) = v11;
      *(v60 + 56) = v54;
      v56 = v77;
      *(v60 + 64) = *&v76[8];
      *(v60 + 80) = v56;
      *(v60 + 96) = v78;
      return result;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1A7906C28()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1A7906C8C@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1A793DB18();
  sub_1A78C0990(v3, v4);
  sub_1A78C0990(v5, v6);

  return sub_1A78C0990(v7, v8);
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.publicParameter.getter()
{
  v1 = *(v0 + 56);
  sub_1A78C0990(v1, *(v0 + 64));
  return v1;
}

double SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.init()@<D0>(uint64_t a1@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = sub_1A793D988();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A793D978();
  v7 = sub_1A793D968();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v21 = v7;
  sub_1A793D978();
  v11 = sub_1A793D968();
  v13 = v12;
  v10(v6, v2);
  if (v13 >> 60 == 15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1A793D978();
  v14 = sub_1A793D968();
  v16 = v15;
  v10(v6, v2);
  if (v16 >> 60 == 15)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  type metadata accessor for SecureBytes.Backing();
  v17 = swift_allocObject();
  v17[1] = xmmword_1A7942340;
  if (_swift_stdlib_malloc_size(v17) < 64)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = 0;
  if (!ccrng())
  {
    goto LABEL_13;
  }

  if (v23)
  {
    goto LABEL_9;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v17 + 2) = 32;
  sub_1A78F6AF0((v17 + 2), (v17 + 4), &v22);

  v18 = v21;
  *a1 = 32;
  *(a1 + 8) = v18;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  result = *&v22;
  *(a1 + 56) = v22;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.init(publicParameter:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a2;
  v31 = a1;
  v4 = sub_1A793D988();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A793D978();
  v9 = sub_1A793D968();
  v11 = v10;
  v12 = *(v5 + 8);
  result = v12(v8, v4);
  if (v11 >> 60 == 15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v9;
  sub_1A793D978();
  v29 = sub_1A793D968();
  v15 = v14;
  result = v12(v8, v4);
  if (v15 >> 60 == 15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1A793D978();
  v16 = sub_1A793D968();
  v18 = v17;
  result = v12(v8, v4);
  if (v18 >> 60 != 15)
  {
    v19 = v32;
    v20 = v32 >> 62;
    v21 = v31;
    if ((v32 >> 62) > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_14;
      }

      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (!v25)
      {
        if (v22 == 32)
        {
          goto LABEL_11;
        }

LABEL_14:
        sub_1A78D6484();
        swift_allocError();
        *v27 = 1;
        *(v27 + 4) = 1;
        swift_willThrow();
        sub_1A78C0AFC(v21, v19);
        sub_1A78C0AFC(v30, v11);
        sub_1A78C0AFC(v29, v15);
        return sub_1A78C0AFC(v16, v18);
      }

      __break(1u);
    }

    else
    {
      if (!v20)
      {
        v22 = BYTE6(v32);
        if (BYTE6(v32) != 32)
        {
          goto LABEL_14;
        }

LABEL_11:
        *a3 = v22;
        v26 = v29;
        a3[1] = v30;
        a3[2] = v11;
        a3[3] = v26;
        a3[4] = v15;
        a3[5] = v16;
        a3[6] = v18;
        a3[7] = v21;
        a3[8] = v19;
        return result;
      }

      LODWORD(v22) = HIDWORD(v31) - v31;
      if (!__OFSUB__(HIDWORD(v31), v31))
      {
        v22 = v22;
        if (v22 == 32)
        {
          goto LABEL_11;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.generateKeyPair()(uint64_t a1, void *a2)
{
  v7 = *(v2 + 56);
  v6 = *(v2 + 64);
  sub_1A78C0990(v7, v6);
  result = sub_1A790587C(v7, v6, v17);
  if (!v3)
  {
    v9 = v20;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = v17[1];
    *a1 = v17[0];
    *(a1 + 16) = v15;
    *(a1 + 32) = v17[2];
    v16 = v19;
    *(a1 + 48) = v18;
    *(a1 + 56) = v16;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    *(a1 + 88) = v12;
    *(a1 + 96) = v13;
    *(a1 + 104) = v14;
    *a2 = v16;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
    a2[4] = v12;
    a2[5] = v13;
    a2[6] = v14;
    sub_1A793DB18();
    sub_1A78C0990(v9, v10);
    sub_1A78C0990(v11, v12);
    return sub_1A78C0990(v13, v14);
  }

  return result;
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.encap(mKEMPublicKeys:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v131 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  if (HIDWORD(v5))
  {
    sub_1A78D6484();
    swift_allocError();
    *v6 = 5;
    *(v6 + 4) = 1;
    result = swift_willThrow();
    goto LABEL_37;
  }

  v101 = v3[2];
  v102 = v3[1];
  v97 = v3[6];
  v98 = v3[5];
  v99 = v3[8];
  v100 = v3[7];
  type metadata accessor for SecureBytes.Backing();
  v9 = swift_allocObject();
  v9[1] = xmmword_1A7942340;
  if (_swift_stdlib_malloc_size(v9) < 64)
  {
LABEL_39:
    __break(1u);
    __break(1u);
    goto LABEL_40;
  }

  LODWORD(v128) = 0;
  result = ccrng();
  if (!result)
  {
    __break(1u);
    goto LABEL_47;
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v9 + 2) = 32;
  sub_1A78F6AF0((v9 + 2), (v9 + 4), &v128);
  v10 = v4;

  v104 = v128;
  result = MEMORY[0x1AC55DAD0](v11);
  if (!result)
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = getccec_full_ctx_size();
  v14 = sub_1A78E2908(v13, 0, v13);
  v15 = getccec_pub_ctx_size();
  if (v15 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = v15;

  if (v16)
  {
    v17 = sub_1A793DB28();
    *(v17 + 16) = v16;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v17 + 32), (v14 + 32), v16);
  *(v17 + 16) = v16;

  v18 = ccec_compressed_x962_export_pub_size();
  if (v18 < 0)
  {
    goto LABEL_41;
  }

  v19 = v18;
  if (v18)
  {
    v20 = sub_1A793DB28();
    *(v20 + 16) = v19;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  if (ccec_compressed_x962_export_pub())
  {
    goto LABEL_42;
  }

  *(v20 + 16) = v19;
  v21 = sub_1A78C0DCC(v20);
  v23 = v22;

  v24 = getccec_pub_ctx_size();
  if (v24 < 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = v24;

  if (v25)
  {
    v26 = sub_1A793DB28();
    *(v26 + 16) = v25;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v26 + 32), (v14 + 32), v25);
  *(v26 + 16) = v25;

  v27 = ccec_compressed_x962_export_pub_size();
  if (v27 < 0)
  {
    goto LABEL_44;
  }

  v28 = v27;
  v103 = v12;
  if (v27)
  {
    v29 = sub_1A793DB28();
    *(v29 + 16) = v28;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  if (ccec_compressed_x962_export_pub())
  {
LABEL_45:
    __break(1u);
  }

  *(v29 + 16) = v28;
  v30 = sub_1A78C0DCC(v29);
  v107 = v14;
  v32 = v31;

  v33 = sub_1A790A204(v30, v32, 0xB00uLL);
  v35 = v34;
  sub_1A78C0AFC(v30, v32);
  *&v123 = v21;
  *(&v123 + 1) = v23;
  *(&v129 + 1) = MEMORY[0x1E6969080];
  v130 = MEMORY[0x1E6969078];
  *&v128 = v33;
  *(&v128 + 1) = v35;
  v36 = __swift_project_boxed_opaque_existential_1(&v128, MEMORY[0x1E6969080]);
  v37 = *v36;
  v38 = v36[1];
  sub_1A78C0990(v21, v23);
  sub_1A78C0990(v33, v35);
  v39 = v37;
  v40 = v107;
  sub_1A7900C14(v39, v38);
  sub_1A78C0AFC(v33, v35);
  sub_1A78C0AFC(v21, v23);
  __swift_destroy_boxed_opaque_existential_1(&v128);
  v105 = v21;
  v106 = v23;
  swift_beginAccess();
  if (v5)
  {
    v41 = (a3 + 80);
    v114 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v42 = v40;
      v109 = v41;
      v110 = v5;
      v44 = *(v41 - 6);
      v43 = *(v41 - 5);
      v46 = *(v41 - 4);
      v45 = *(v41 - 3);
      v48 = *(v41 - 2);
      v47 = *(v41 - 1);
      v49 = *v41;
      v117 = objc_opt_self();
      sub_1A793DB18();
      v112 = v43;
      v113 = v46;
      sub_1A78C0990(v43, v46);
      sub_1A78C0990(v45, v48);
      sub_1A78C0990(v47, v49);
      sub_1A793DB18();
      v50 = [v117 groupOrderByteCountForCP_];
      if ((v50 & 0x8000000000000000) != 0)
      {
        break;
      }

      *&v128 = v50;
      v51 = sub_1A78E396C(v50, v42 + 32, v44 + 32, &v128, v50);
      if (v10)
      {

        sub_1A78C0AFC(v43, v46);
        sub_1A78C0AFC(v45, v48);
        sub_1A78C0AFC(v47, v49);
        sub_1A78C0AFC(v104, *(&v104 + 1));
        sub_1A78C0AFC(v105, v106);

        goto LABEL_37;
      }

      v52 = v51;
      v111 = v48;
      v119 = v49;
      v120 = v47;

      v126 = v102;
      v127 = v101;
      *(&v129 + 1) = MEMORY[0x1E6969080];
      v130 = MEMORY[0x1E6969078];
      *&v128 = v100;
      *(&v128 + 1) = v99;
      v53 = __swift_project_boxed_opaque_existential_1(&v128, MEMORY[0x1E6969080]);
      v54 = *v53;
      v55 = v53[1];
      sub_1A78C0990(v102, v101);
      sub_1A78C0990(v100, v99);
      sub_1A7900C14(v54, v55);
      __swift_destroy_boxed_opaque_existential_1(&v128);
      v56 = v126;
      v57 = v127;
      v115 = v126;
      sub_1A78C0990(v126, v127);
      sub_1A78F3E70(v56, v57);
      swift_beginAccess();
      v58 = v52[2];

      sub_1A7901B88(v59, &v121);
      v60 = sub_1A793DAE8();
      _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v60, v61);
      sub_1A78BD4B0(&v128);
      v122[0] = v128;
      v122[1] = v129;

      _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v122, &v123);

      sub_1A78BD4B0(&v123);

      v62 = v123;
      v63 = v124;
      v64 = v125;

      sub_1A78C0AFC(v115, v57);
      sub_1A78C0990(v105, v106);
      sub_1A78D07C4(v62, *(&v62 + 1), v63, v64, v105, v106, 0x20uLL, &v128);
      sub_1A78C0AFC(v115, v57);
      sub_1A78C0AFC(v105, v106);
      *&v122[0] = v128;
      sub_1A7907F80(&v123, &v128, v122);
      v118 = v123;
      v65 = v128;
      sub_1A78C0990(v104, *(&v104 + 1));
      v66 = sub_1A790A204(v104, *(&v104 + 1), 0x162uLL);
      v68 = v67;
      v123 = v104;
      v69 = MEMORY[0x1E6969080];
      *(&v129 + 1) = MEMORY[0x1E6969080];
      v130 = MEMORY[0x1E6969078];
      v70 = MEMORY[0x1E6969078];
      *&v128 = v66;
      *(&v128 + 1) = v67;
      v71 = __swift_project_boxed_opaque_existential_1(&v128, MEMORY[0x1E6969080]);
      v72 = *v71;
      v73 = v71[1];
      sub_1A78C0990(v66, v68);
      sub_1A7900C14(v72, v73);
      sub_1A78C0AFC(v66, v68);
      __swift_destroy_boxed_opaque_existential_1(&v128);
      v74 = *(&v123 + 1);
      v116 = v123;
      *&v122[0] = v98;
      *(&v122[0] + 1) = v97;
      *(&v129 + 1) = v69;
      v130 = v70;
      *&v128 = v120;
      *(&v128 + 1) = v119;
      v75 = __swift_project_boxed_opaque_existential_1(&v128, v69);
      v76 = *v75;
      v77 = v75[1];
      sub_1A78C0990(v65, *(&v65 + 1));
      sub_1A78C0990(v98, v97);
      sub_1A78C0990(v120, v119);
      sub_1A7900C14(v76, v77);
      __swift_destroy_boxed_opaque_existential_1(&v128);
      v78 = v122[0];
      sub_1A78C0990(*&v122[0], *(&v122[0] + 1));
      v108 = v74;
      sub_1A7901198(v118, v116, v74, v65, *(&v65 + 1), v78, *(&v78 + 1), &v123);
      v10 = 0;
      v79 = MEMORY[0x1E6969080];
      v80 = MEMORY[0x1E6969078];
      sub_1A78C0AFC(v78, *(&v78 + 1));
      sub_1A78C0AFC(v65, *(&v65 + 1));
      sub_1A78C0AFC(v78, *(&v78 + 1));
      v81 = v123;
      v82 = v124;
      sub_1A78C0990(v123, *(&v123 + 1));
      sub_1A78C0B50(v82, v81, *(&v81 + 1), &v123);
      sub_1A78C3CAC(16, v123, *(&v123 + 1), &v128);
      v83 = v128;
      sub_1A78C0990(v81, *(&v81 + 1));
      sub_1A78C8A28(16, v81, *(&v81 + 1), &v128);
      v84 = v128;
      v123 = v83;
      *(&v129 + 1) = v79;
      v130 = v80;
      v85 = __swift_project_boxed_opaque_existential_1(&v128, v79);
      v86 = *v85;
      v87 = v85[1];
      sub_1A78C0990(v83, *(&v83 + 1));
      sub_1A78C0990(v84, *(&v84 + 1));
      sub_1A7900C14(v86, v87);
      sub_1A78C0AFC(v84, *(&v84 + 1));
      sub_1A78C0AFC(v83, *(&v83 + 1));
      __swift_destroy_boxed_opaque_existential_1(&v128);
      v88 = v123;
      sub_1A78C0990(v120, v119);
      sub_1A78C0990(v88, *(&v88 + 1));
      v89 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_1A79096A8(0, *(v114 + 2) + 1, 1, v114);
      }

      v91 = *(v89 + 2);
      v90 = *(v89 + 3);
      if (v91 >= v90 >> 1)
      {
        v89 = sub_1A79096A8((v90 > 1), v91 + 1, 1, v89);
      }

      sub_1A78C0AFC(v116, v108);

      sub_1A78C0AFC(v81, *(&v81 + 1));

      sub_1A78C0AFC(v112, v113);
      sub_1A78C0AFC(v45, v111);
      sub_1A78C0AFC(v120, v119);
      sub_1A78C0AFC(v88, *(&v88 + 1));
      sub_1A78C0AFC(v65, *(&v65 + 1));
      *(v89 + 2) = *(&v84 + 1) + 1;
      v114 = v89;
      v92 = &v89[32 * *(&v84 + 1)];
      *(v92 + 2) = v88;
      *(v92 + 6) = v120;
      *(v92 + 7) = v119;
      v41 = v109 + 7;
      v5 = v110 - 1;
      v40 = v107;
      if (v110 == 1)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v114 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v93 = sub_1A78F3E70(v104, *(&v104 + 1));
  sub_1A7902C68(v93, 0x20uLL, &v128);

  result = sub_1A78C0AFC(v104, *(&v104 + 1));
  *a1 = v128;
  *a2 = v105;
  a2[1] = v106;
  a2[2] = v114;
LABEL_37:
  v94 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7907F80(void *a1, void *a2, uint64_t *a3)
{
  sub_1A7902C68(*a3, 0x2CuLL, v20);
  v6 = v20[0];
  swift_beginAccess();
  v7 = sub_1A78D9BB4(v6 + 32, v6 + 32 + *(v6 + 16));
  v9 = v8;
  v10 = sub_1A793D798();
  v12 = v11;
  v13 = sub_1A78F3E70(v10, v11);
  sub_1A78C0AFC(v10, v12);
  v14 = sub_1A793D798();
  sub_1A78C32F4(v14, v15, v19);
  if (v3)
  {

    sub_1A78C0AFC(v7, v9);
  }

  else
  {
    sub_1A78C0AFC(v7, v9);
    v17 = v19[0];
    v18 = v19[1];

    *a1 = v13;
    *a2 = v17;
    a2[1] = v18;
  }

  return result;
}

uint64_t SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.decap(mKEMSecretKey:ciphertextShared:ciphertextIndividual:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = v7;
  v107 = *MEMORY[0x1E69E9840];
  v11 = a1[2];
  v12 = a1[12];
  v13 = a1[13];
  v14 = v6[1];
  v15 = v6[2];
  v16 = v6[5];
  v17 = v6[6];
  v18 = v6[7];
  v19 = v6[8];
  v20 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_8;
    }

    v21 = *(a2 + 16);
  }

  else
  {
    if (!v20)
    {
      goto LABEL_8;
    }

    v21 = a2;
  }

  if (v21 > 33)
  {
    __break(1u);
  }

LABEL_8:
  v87 = v15;
  v88 = v14;
  v90 = v19;
  v92 = v18;
  v81 = v17;
  v82 = v16;
  v83 = v13;
  v84 = v12;
  v22 = sub_1A793D798();
  v24 = v23;
  sub_1A78C0990(v22, v23);
  v25 = sub_1A790A204(v22, v24, 0xB00uLL);
  v27 = v26;
  sub_1A78C0AFC(v22, v24);
  *&v99 = v22;
  *(&v99 + 1) = v24;
  *(&v105 + 1) = MEMORY[0x1E6969080];
  v106 = MEMORY[0x1E6969078];
  *&v104 = v25;
  *(&v104 + 1) = v27;
  v28 = __swift_project_boxed_opaque_existential_1(&v104, MEMORY[0x1E6969080]);
  v29 = *v28;
  v30 = v28[1];
  sub_1A78C0990(v22, v24);
  sub_1A78C0990(v25, v27);
  sub_1A7900C14(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(&v104);
  v94 = a2;
  v31 = sub_1A790A674(v22, v24, a2, a3);
  sub_1A78C0AFC(v22, v24);
  if ((v31 & 1) == 0)
  {
    sub_1A78D6484();
    swift_allocError();
    *v35 = 5;
    *(v35 + 4) = 1;
    swift_willThrow();
    sub_1A78C0AFC(v25, v27);
    v33 = v22;
    v34 = v24;
    goto LABEL_12;
  }

  v80 = v25;
  v78 = v27;
  sub_1A78C0990(v22, v24);
  v32 = sub_1A7902420(v22, v24);
  if (v8)
  {
    sub_1A78C0AFC(v22, v24);
    v33 = v25;
    v34 = v27;
LABEL_12:
    result = sub_1A78C0AFC(v33, v34);
    v37 = *MEMORY[0x1E69E9840];
    return result;
  }

  v38 = v32;
  v77 = v22;
  result = MEMORY[0x1AC55DAD0]();
  if (result)
  {
    v39 = [objc_opt_self() groupOrderByteCountForCP_];
    v40 = MEMORY[0x1E6969080];
    v41 = MEMORY[0x1E6969078];
    if ((v39 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v42 = v39;
    swift_beginAccess();
    *&v104 = v42;
    v43 = sub_1A78E396C(v42, v11 + 32, v38 + 32, &v104, v42);
    v76 = v24;

    v102 = v88;
    v103 = v87;
    *(&v105 + 1) = v40;
    v106 = v41;
    v44 = v43;
    *&v104 = v92;
    *(&v104 + 1) = v90;
    v45 = __swift_project_boxed_opaque_existential_1(&v104, v40);
    v46 = *v45;
    v47 = v45[1];
    sub_1A78C0990(v88, v87);
    sub_1A78C0990(v92, v90);
    sub_1A7900C14(v46, v47);
    __swift_destroy_boxed_opaque_existential_1(&v104);
    v48 = v88;
    sub_1A78C0990(v88, v87);
    sub_1A78F3E70(v88, v87);
    swift_beginAccess();
    v49 = v44[2];

    sub_1A7901B88(v50, &v98);
    v51 = sub_1A793DAE8();
    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v51, v52);
    v53 = v98;
    sub_1A78BD4B0(&v104);
    v97[1] = v53;
    v96[0] = v104;
    v96[1] = v105;

    _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v96, v97);

    sub_1A78BD4B0(&v99);

    v54 = v99;
    v91 = v100;
    v93 = *(&v99 + 1);
    v89 = v101;

    sub_1A78C0AFC(v48, v87);
    sub_1A78C0990(v94, a3);
    sub_1A78D07C4(v54, v93, v91, v89, v94, a3, 0x20uLL, &v104);
    sub_1A78C0AFC(v48, v87);
    sub_1A78C0AFC(v94, a3);
    *&v96[0] = v104;
    sub_1A7907F80(&v99, &v104, v96);
    v95 = v99;
    v55 = v104;
    sub_1A78C0990(a4, a5);
    sub_1A78C3AA4(386, a4, a5, &v104);
    v56 = v104;
    sub_1A78C0990(a4, a5);
    sub_1A78C8A28(16, a4, a5, &v104);
    v57 = v104;
    sub_1A78C0990(v55, *(&v55 + 1));
    sub_1A78C0990(v56, *(&v56 + 1));
    sub_1A78C0990(v57, *(&v57 + 1));
    sub_1A79027A8(v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), &v104);
    v58 = v104;
    v75 = v105;
    *&v99 = v82;
    *(&v99 + 1) = v81;
    *(&v105 + 1) = MEMORY[0x1E6969080];
    v106 = MEMORY[0x1E6969078];
    *&v104 = v84;
    *(&v104 + 1) = v83;
    v59 = __swift_project_boxed_opaque_existential_1(&v104, MEMORY[0x1E6969080]);
    v60 = *v59;
    v61 = v59[1];
    sub_1A78C0990(v82, v81);
    sub_1A78C0990(v84, v83);
    sub_1A7900C14(v60, v61);
    __swift_destroy_boxed_opaque_existential_1(&v104);
    v62 = v99;
    sub_1A78C0990(v99, *(&v99 + 1));
    v63 = sub_1A78C2E80(v95, v58, *(&v58 + 1), v75, v62, *(&v62 + 1));
    v65 = v64;
    sub_1A78C0AFC(v62, *(&v62 + 1));
    sub_1A78C0AFC(v62, *(&v62 + 1));
    sub_1A78C0990(v63, v65);
    sub_1A78C3AA4(32, v63, v65, &v104);
    v67 = *(&v104 + 1);
    v66 = v104;
    sub_1A78C0990(v63, v65);
    sub_1A78C8A28(354, v63, v65, &v104);
    v68 = v104;
    sub_1A78C0990(v66, v67);
    v69 = sub_1A790A204(v66, v67, 0x162uLL);
    v71 = v70;
    v72 = v66;
    sub_1A78C0AFC(v66, v67);
    LOBYTE(v66) = sub_1A790A674(v68, *(&v68 + 1), v69, v71);
    sub_1A78C0AFC(v69, v71);
    sub_1A78C0AFC(v68, *(&v68 + 1));
    if (v66)
    {
      v73 = sub_1A78F3E70(v72, v67);
      sub_1A7902C68(v73, 0x20uLL, a6);
    }

    else
    {
      sub_1A78D6484();
      swift_allocError();
      *v74 = 4;
      *(v74 + 4) = 1;
      swift_willThrow();
    }

    sub_1A78C0AFC(v72, v67);
    sub_1A78C0AFC(v63, v65);
    sub_1A78C0AFC(v58, *(&v58 + 1));
    sub_1A78C0AFC(v57, *(&v57 + 1));
    sub_1A78C0AFC(v56, *(&v56 + 1));
    sub_1A78C0AFC(v55, *(&v55 + 1));

    sub_1A78C0AFC(v80, v78);
    v34 = v76;
    v33 = v77;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

char *SimCombinedMLKEM1024AndECDHWithOnlyTemporaryTrivialMKEM.extractIndividualCiphertext(_:keyID:)(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_143:
    sub_1A78D6484();
    swift_allocError();
    *v66 = 5;
    *(v66 + 4) = 1;
    swift_willThrow();
LABEL_147:
    v70 = *MEMORY[0x1E69E9840];
    return v4;
  }

  v7 = a4;
  v9 = 0;
  v75 = a2[1];
  v76 = *a2;
  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4 == 0xC000000000000000;
  }

  v11 = a4 >> 62;
  v12 = !v10;
  v91 = v12;
  v84 = HIDWORD(a3);
  v13 = __OFSUB__(HIDWORD(a3), a3);
  v87 = v13;
  __n = BYTE6(a4);
  v85 = a3;
  v86 = HIDWORD(a3) - a3;
  v82 = (a3 >> 32) - a3;
  v83 = a3 >> 32;
  v14 = (v5 + 56);
  v89 = a2[2];
  v88 = *(v5 + 16);
  while (1)
  {
    if (v9 >= *(v5 + 16))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
    }

    v15 = *(v14 - 3);
    v4 = *(v14 - 2);
    v16 = *(v14 - 1);
    v17 = *v14;
    v18 = *v14 >> 62;
    if (v18 == 3)
    {
      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v91) & 1) == 0)
      {
        v68 = *(v14 - 3);
        sub_1A78C0990(v15, *(v14 - 2));
        sub_1A78C0990(0, 0xC000000000000000);
        v69 = v68;
        v16 = 0;
LABEL_146:
        *a1 = v69;
        a1[1] = v4;
        a1[2] = v16;
        a1[3] = v17;
        v4 = v76;
        sub_1A78C0990(v76, v75);
        goto LABEL_147;
      }

LABEL_37:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_37;
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_152;
      }

      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_151;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_34:
        v26 = __n;
        if (v11)
        {
          v26 = v86;
          if (v87)
          {
            goto LABEL_149;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v22 = BYTE6(v17);
      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v11 != 2)
    {
      if (!v22)
      {
        goto LABEL_144;
      }

      goto LABEL_13;
    }

    v28 = *(a3 + 16);
    v27 = *(a3 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_150;
    }

LABEL_40:
    if (v22 == v26)
    {
      break;
    }

LABEL_13:
    ++v9;
    v14 += 4;
    if (v6 == v9)
    {
      goto LABEL_143;
    }
  }

  if (v22 < 1)
  {
LABEL_144:
    v67 = *(v14 - 3);
    sub_1A78C0990(v15, *(v14 - 2));
    sub_1A78C0990(v16, v17);
    v69 = v67;
    goto LABEL_146;
  }

  v94 = *(v14 - 3);
  if (v18 <= 1)
  {
    if (!v18)
    {
      __s1[0] = *(v14 - 1);
      LOWORD(__s1[1]) = v17;
      BYTE2(__s1[1]) = BYTE2(v17);
      BYTE3(__s1[1]) = BYTE3(v17);
      BYTE4(__s1[1]) = BYTE4(v17);
      BYTE5(__s1[1]) = BYTE5(v17);
      if (v11)
      {
        v92 = v4;
        if (v11 == 1)
        {
          if (v83 < v85)
          {
            goto LABEL_156;
          }

          sub_1A78C0990(v15, v4);
          sub_1A78C0990(v16, v17);
          v29 = sub_1A793D648();
          if (!v29)
          {
            goto LABEL_172;
          }

          v30 = v29;
          v31 = sub_1A793D678();
          if (__OFSUB__(v85, v31))
          {
            goto LABEL_161;
          }

          v32 = (v85 - v31 + v30);
          result = sub_1A793D668();
          if (!v32)
          {
            goto LABEL_173;
          }

          goto LABEL_108;
        }

        v51 = *(a3 + 16);
        v81 = *(a3 + 24);
        sub_1A78C0990(v15, v4);
        sub_1A78C0990(v16, v17);
        v32 = sub_1A793D648();
        if (v32)
        {
          v52 = sub_1A793D678();
          if (__OFSUB__(v51, v52))
          {
            goto LABEL_167;
          }

          v32 += v51 - v52;
        }

        v25 = __OFSUB__(v81, v51);
        v43 = &v81[-v51];
        if (v25)
        {
          goto LABEL_159;
        }

        result = sub_1A793D668();
        if (!v32)
        {
          goto LABEL_185;
        }

LABEL_101:
        if (result >= v43)
        {
          v53 = v43;
        }

        else
        {
          v53 = result;
        }

        goto LABEL_111;
      }

LABEL_70:
      v95 = a3;
      v96 = BYTE2(a3);
      v97 = BYTE3(a3);
      v98 = v84;
      v99 = BYTE5(a3);
      v100 = BYTE6(a3);
      v101 = HIBYTE(a3);
      v102 = v7;
      v103 = BYTE2(v7);
      v104 = BYTE3(v7);
      v105 = BYTE4(v7);
      v106 = BYTE5(v7);
      sub_1A78C0990(v15, v4);
      sub_1A78C0990(v16, v17);
      result = __s1;
      v44 = &v95;
LABEL_123:
      if (!memcmp(result, v44, __n))
      {
        goto LABEL_145;
      }

LABEL_142:
      sub_1A78C0AFC(v94, v4);
      sub_1A78C0AFC(v16, v17);
      v6 = v88;
      v5 = v89;
      goto LABEL_13;
    }

    if (v16 > v16 >> 32)
    {
      goto LABEL_153;
    }

    sub_1A78C0990(v15, v4);
    sub_1A78C0990(v16, v17);
    v38 = sub_1A793D648();
    if (v38)
    {
      v39 = v38;
      v40 = sub_1A793D678();
      if (__OFSUB__(v16, v40))
      {
        goto LABEL_155;
      }

      v79 = (v16 - v40 + v39);
    }

    else
    {
      v79 = 0;
    }

    sub_1A793D668();
    v7 = a4;
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        if (v83 < v85)
        {
          goto LABEL_164;
        }

        v45 = sub_1A793D648();
        if (v45)
        {
          v49 = sub_1A793D678();
          if (__OFSUB__(v85, v49))
          {
            goto LABEL_171;
          }

          v45 += v85 - v49;
        }

        v50 = sub_1A793D668();
        v48 = v82;
        if (v50 < v82)
        {
          v48 = v50;
        }

        result = v79;
        if (!v79)
        {
          goto LABEL_179;
        }

        if (!v45)
        {
          goto LABEL_178;
        }

LABEL_94:
        if (result == v45)
        {
          goto LABEL_145;
        }

LABEL_141:
        if (!memcmp(result, v45, v48))
        {
LABEL_145:
          v69 = v94;
          goto LABEL_146;
        }

        goto LABEL_142;
      }

      result = v79;
      LOWORD(__s1[0]) = a3;
      BYTE2(__s1[0]) = BYTE2(a3);
      BYTE3(__s1[0]) = BYTE3(a3);
      BYTE4(__s1[0]) = v84;
      BYTE5(__s1[0]) = BYTE5(a3);
      BYTE6(__s1[0]) = BYTE6(a3);
      HIBYTE(__s1[0]) = HIBYTE(a3);
      LOWORD(__s1[1]) = a4;
      *(&__s1[1] + 2) = *(&a4 + 2);
      if (!v79)
      {
        goto LABEL_180;
      }

LABEL_122:
      v44 = __s1;
      goto LABEL_123;
    }

    v72 = *(a3 + 24);
    v74 = *(a3 + 16);
    v45 = sub_1A793D648();
    if (v45)
    {
      v60 = sub_1A793D678();
      v61 = v74;
      if (__OFSUB__(v74, v60))
      {
        goto LABEL_169;
      }

      v45 += v74 - v60;
    }

    else
    {
      v61 = v74;
    }

    v64 = v72 - v61;
    if (__OFSUB__(v72, v61))
    {
      goto LABEL_165;
    }

    v65 = sub_1A793D668();
    if (v65 >= v64)
    {
      v48 = v64;
    }

    else
    {
      v48 = v65;
    }

    result = v79;
    if (!v79)
    {
      goto LABEL_184;
    }

    if (!v45)
    {
      goto LABEL_183;
    }

LABEL_140:
    v7 = a4;
    if (result == v45)
    {
      goto LABEL_145;
    }

    goto LABEL_141;
  }

  if (v18 != 2)
  {
    memset(__s1, 0, 14);
    if (!v11)
    {
      goto LABEL_70;
    }

    v92 = v4;
    if (v11 == 2)
    {
      v41 = *(a3 + 16);
      v80 = *(a3 + 24);
      sub_1A78C0990(v15, v4);
      sub_1A78C0990(v16, v17);
      v32 = sub_1A793D648();
      if (v32)
      {
        v42 = sub_1A793D678();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_166;
        }

        v32 += v41 - v42;
      }

      v25 = __OFSUB__(v80, v41);
      v43 = &v80[-v41];
      if (v25)
      {
        goto LABEL_160;
      }

      result = sub_1A793D668();
      if (!v32)
      {
        goto LABEL_186;
      }

      goto LABEL_101;
    }

    if (v83 < v85)
    {
      goto LABEL_157;
    }

    sub_1A78C0990(v15, v4);
    sub_1A78C0990(v16, v17);
    v54 = sub_1A793D648();
    if (!v54)
    {
      goto LABEL_174;
    }

    v55 = v54;
    v56 = sub_1A793D678();
    if (__OFSUB__(v85, v56))
    {
      goto LABEL_162;
    }

    v32 = (v85 - v56 + v55);
    result = sub_1A793D668();
    if (!v32)
    {
      goto LABEL_175;
    }

LABEL_108:
    if (result >= v82)
    {
      v53 = v82;
    }

    else
    {
      v53 = result;
    }

LABEL_111:
    v57 = memcmp(__s1, v32, v53);
    v7 = a4;
    v4 = v92;
    if (!v57)
    {
      goto LABEL_145;
    }

    goto LABEL_142;
  }

  v34 = *(v16 + 16);
  sub_1A78C0990(v15, v4);
  sub_1A78C0990(v16, v17);
  v35 = sub_1A793D648();
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A793D678();
    if (__OFSUB__(v34, v37))
    {
      goto LABEL_154;
    }

    v78 = (v34 - v37 + v36);
  }

  else
  {
    v78 = 0;
  }

  v7 = a4;
  sub_1A793D668();
  if (v11 == 2)
  {
    v71 = *(a3 + 24);
    v73 = *(a3 + 16);
    v45 = sub_1A793D648();
    if (v45)
    {
      v58 = sub_1A793D678();
      v59 = v73;
      if (__OFSUB__(v73, v58))
      {
        goto LABEL_168;
      }

      v45 += v73 - v58;
    }

    else
    {
      v59 = v73;
    }

    v62 = v71 - v59;
    if (__OFSUB__(v71, v59))
    {
      goto LABEL_163;
    }

    v63 = sub_1A793D668();
    if (v63 >= v62)
    {
      v48 = v62;
    }

    else
    {
      v48 = v63;
    }

    result = v78;
    if (!v78)
    {
      goto LABEL_182;
    }

    if (!v45)
    {
      goto LABEL_181;
    }

    goto LABEL_140;
  }

  if (v11 == 1)
  {
    if (v83 < v85)
    {
      goto LABEL_158;
    }

    v45 = sub_1A793D648();
    if (v45)
    {
      v46 = sub_1A793D678();
      if (__OFSUB__(v85, v46))
      {
        goto LABEL_170;
      }

      v45 += v85 - v46;
    }

    v47 = sub_1A793D668();
    v48 = v82;
    if (v47 < v82)
    {
      v48 = v47;
    }

    result = v78;
    if (!v78)
    {
      goto LABEL_177;
    }

    if (!v45)
    {
      goto LABEL_176;
    }

    goto LABEL_94;
  }

  result = v78;
  LOWORD(__s1[0]) = a3;
  BYTE2(__s1[0]) = BYTE2(a3);
  BYTE3(__s1[0]) = BYTE3(a3);
  BYTE4(__s1[0]) = v84;
  BYTE5(__s1[0]) = BYTE5(a3);
  BYTE6(__s1[0]) = BYTE6(a3);
  HIBYTE(__s1[0]) = HIBYTE(a3);
  LOWORD(__s1[1]) = a4;
  *(&__s1[1] + 2) = *(&a4 + 2);
  if (v78)
  {
    goto LABEL_122;
  }

  __break(1u);
LABEL_172:
  sub_1A793D668();
LABEL_173:
  __break(1u);
LABEL_174:
  result = sub_1A793D668();
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_1A79093FC()
{
  v1 = *(v0 + 56);
  sub_1A78C0990(v1, *(v0 + 64));
  return v1;
}

uint64_t sub_1A790944C(uint64_t a1, void *a2)
{
  v7 = *(v2 + 56);
  v6 = *(v2 + 64);
  sub_1A78C0990(v7, v6);
  result = sub_1A790587C(v7, v6, v17);
  if (!v3)
  {
    v9 = v20;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v15 = v17[1];
    *a1 = v17[0];
    *(a1 + 16) = v15;
    *(a1 + 32) = v17[2];
    v16 = v19;
    *(a1 + 48) = v18;
    *(a1 + 56) = v16;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    *(a1 + 88) = v12;
    *(a1 + 96) = v13;
    *(a1 + 104) = v14;
    *a2 = v16;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
    a2[4] = v12;
    a2[5] = v13;
    a2[6] = v14;
    sub_1A793DB18();
    sub_1A78C0990(v9, v10);
    sub_1A78C0990(v11, v12);
    return sub_1A78C0990(v13, v14);
  }

  return result;
}

char *sub_1A790959C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7638, "JQ");
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1A79096A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7640, &qword_1A7942D48);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A79097B4(uint64_t a1, unint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v8, 0, 14);
      v3 = v8;
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      v8[0] = a1;
      LOWORD(v8[1]) = a2;
      BYTE2(v8[1]) = BYTE2(a2);
      BYTE3(v8[1]) = BYTE3(a2);
      BYTE4(v8[1]) = BYTE4(a2);
      BYTE5(v8[1]) = BYTE5(a2);
      v3 = v8 + BYTE6(a2);
LABEL_9:
      result = _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v8, v3);
      goto LABEL_10;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1A7909C58(v4, v5);
LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A79098EC(uint64_t result, unint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      result = MEMORY[0x1AC55DAD0]();
      if (result)
      {
LABEL_21:
        result = ccec_compressed_x962_import_pub();
        *a3 = result;
        *a5 = a6;
        v17 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_27;
    }

    v11 = *(result + 16);
    v10 = *(result + 24);
    v12 = sub_1A793D648();
    if (v12)
    {
      v13 = sub_1A793D678();
      if (__OFSUB__(v11, v13))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 += v11 - v13;
    }

    if (__OFSUB__(v10, v11))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_1A793D668();
    result = MEMORY[0x1AC55DAD0]();
    if (!result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v12)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v9)
  {
    result = MEMORY[0x1AC55DAD0]();
    if (result)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = result;
  if (result >> 32 < result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = sub_1A793D648();
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = sub_1A793D678();
  if (__OFSUB__(v14, v16))
  {
LABEL_25:
    __break(1u);
  }

  v15 += v14 - v16;
LABEL_17:
  sub_1A793D668();
  result = MEMORY[0x1AC55DAD0]();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v15)
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1A7909B30(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      v4 = v9 + BYTE6(a2);
LABEL_9:
      result = sub_1A7936A18(v9, v4, a3);
      goto LABEL_10;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1A7909CEC(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7909C58(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  v5 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
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
    goto LABEL_13;
  }

  v8 = sub_1A793D668();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v5, v11);
}

uint64_t sub_1A7909CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_1A793D648();
  v8 = result;
  if (result)
  {
    result = sub_1A793D678();
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

  v11 = sub_1A793D668();
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

  return sub_1A7936A18(v8, v14, a4);
}

uint64_t sub_1A7909D90@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1A793D648();
    if (v10)
    {
      v11 = sub_1A793D678();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1A793D668();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1A793D648();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1A793D678();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1A793D668();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1A7909FC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A790A5BC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A78C0AFC(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1A7909D90(v14, a3, a4, &v13);
  v10 = v4;
  sub_1A78C0AFC(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1A790A150(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC55D830](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_1A78C0990(v6, v7);
      sub_1A78C0990(v8, v9);
      sub_1A793D7E8();
      sub_1A793D7E8();
      sub_1A78C0AFC(v6, v7);
      result = sub_1A78C0AFC(v8, v9);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1A790A204(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v6 = sub_1A793D988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(v36, 0, 14);
      v13 = v36;
      v12 = v36;
      goto LABEL_23;
    }

    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = sub_1A793D648();
    if (v16)
    {
      a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = sub_1A793D678();
      if (__OFSUB__(v14, v17))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v16 += v14 - v17;
    }

    v18 = __OFSUB__(v15, v14);
    v19 = v15 - v14;
    if (!v18)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v36[0] = a1;
    LOWORD(v36[1]) = a2;
    BYTE2(v36[1]) = BYTE2(a2);
    BYTE3(v36[1]) = BYTE3(a2);
    BYTE4(v36[1]) = BYTE4(a2);
    BYTE5(v36[1]) = BYTE5(a2);
    v12 = (v36 + BYTE6(a2));
    v13 = v36;
    goto LABEL_23;
  }

  v19 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = sub_1A793D648();
  if (v16)
  {
    v20 = sub_1A793D678();
    if (!__OFSUB__(a1, v20))
    {
      v16 += a1 - v20;
      goto LABEL_15;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

LABEL_15:
  v21 = sub_1A793D668();
  if (v21 >= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  v23 = (v22 + v16);
  if (v16)
  {
    v12 = v23;
  }

  else
  {
    v12 = 0;
  }

  v13 = v16;
LABEL_23:
  sub_1A78F6AF0(v13, v12, &v34);
  v24 = v34;
  v25 = v35;
  sub_1A78C0990(v34, v35);
  v26 = sub_1A78F3E70(v24, v25);
  sub_1A78C0AFC(v24, v25);
  sub_1A793D978();
  v27 = sub_1A793D968();
  v29 = v28;
  (*(v7 + 8))(v10, v6);
  if (v29 >> 60 == 15)
  {
    goto LABEL_28;
  }

  sub_1A7902AE0(v26, v27, v29, a3, v33);

  sub_1A78CEEC8(v27, v29);
  v30 = v33[0];
  swift_beginAccess();
  sub_1A78F6AF0(v30 + 32, v30 + 32 + *(v30 + 16), v36);
  sub_1A78C0AFC(v24, v25);

  result = v36[0];
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1A790A544(uint64_t *result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*result)
  {
    return sub_1A79098EC(*a4, *(a4 + 8), a5, *result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A790A580(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1A7909B30(*a3, *(a3 + 8), a1);
  if (!v4)
  {
    *a2 = a4;
  }

  return result;
}

uint64_t sub_1A790A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A793D648();
  v11 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A793D668();
  sub_1A7909D90(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1A790A674(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1A78C0990(a3, a4);
          return sub_1A7909FC0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A790A7DC(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = sub_1A7909B30(*v5, *(v5 + 8), a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

unint64_t sub_1A790A818()
{
  result = qword_1EB2A7618;
  if (!qword_1EB2A7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7618);
  }

  return result;
}

unint64_t sub_1A790A870()
{
  result = qword_1EB2A7620;
  if (!qword_1EB2A7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7620);
  }

  return result;
}

uint64_t sub_1A790AAA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A790AAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A790AB40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A790AB94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1A790ABF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A790AC3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1A790ACBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A790AD04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A790AD70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A790ADC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_1A790AE90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*result)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  cckem_pub_ctx_init();
  v7 = *(a3 + 16);
  result = cckem_xwing_mlkem768x25519();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = cckem_import_pubkey();
  if (result)
  {
    v8 = result;
    sub_1A78D6484();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = a4;
  }

  return result;
}