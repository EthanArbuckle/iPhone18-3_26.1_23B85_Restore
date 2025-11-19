uint64_t SHA512Digest.hash(into:)()
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  result = sub_1A793DF68();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA512Digest.hashValue.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A792F028();
}

void *sub_1A792D63C()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v2 = v0[3];
  v4[2] = v0[2];
  v4[3] = v2;
  return sub_1A791C2D8(v4);
}

uint64_t sub_1A792D670(void *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  return sub_1A78E3860(a1, a2, a3);
}

uint64_t Insecure.SHA1Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 2);
  v11 = *v3;
  v12 = v5;
  v14 = a3;
  v15 = a1;
  v16 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7928, &qword_1A7945490);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7910, &qword_1A7945478);
  result = sub_1A78BECA0(&v11, sub_1A792F1E8, v13, v6, v7, a3, MEMORY[0x1E69E7288], &v10);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792D7A4()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v5 = *v0;
  v6[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v5, v6);
  v5 = v1;
  sub_1A793B52C(&v5, v6);
  v5 = v2;
  sub_1A793B52C(&v5, v6);
  result = v6[0];
  *(v6[0] + 16);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Insecure.SHA1Digest.description.getter()
{
  v1 = *(v0 + 2);
  strcpy(v19, "SHA1 digest: ");
  HIWORD(v19[1]) = -4864;
  v17 = *v0;
  v18 = v1;
  result = sub_1A792D7A4();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  *&v17 = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, &v17, &v16);
  swift_unknownObjectRelease();
  v12 = *(v17 + 16);
  v13 = sub_1A793D998();
  v15 = v14;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v13, v15);

  return v19[0];
}

uint64_t Insecure.SHA1Digest.hash(into:)()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v4 = *(v0 + 2);
  result = sub_1A793DF68();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Insecure.SHA1Digest.hashValue.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *v0;
  v1 = *(v0 + 2);
  sub_1A793DF58();
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792DAE4()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *v0;
  v1 = *(v0 + 2);
  sub_1A793DF58();
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792DB74()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v4 = *(v0 + 2);
  result = sub_1A793DF68();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792DBEC()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *v0;
  v1 = *(v0 + 2);
  sub_1A793DF58();
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A792DC94@<X0>(void *a1@<X8>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 2);
  v6 = *v1;
  v7[0] = v3;
  result = sub_1A78BDB94(&v6, v7 + 4);
  *a1 = result;
  a1[1] = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1A792DD24(__int128 *a1, __int128 *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v9 = *a1;
  v10[0] = v2;
  v7 = *a2;
  v8 = v3;
  sub_1A78CBAB0(&v7, &v8 + 4, &v9, v10 + 4, &v6);
  result = v6;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792DDC4()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v4 = *v0;
  v5[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v4, v5);
  v4 = v1;
  sub_1A793B52C(&v4, v5);
  result = v5[0];
  *(v5[0] + 16);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Insecure.MD5Digest.description.getter()
{
  strcpy(v17, "MD5 digest: ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v16 = *v0;
  result = sub_1A792DDC4();
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v5 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = 2 * v5;
  if (((2 * v5) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = v2;
  v8 = v3;
  v9 = v4;
  if (v6)
  {
    v10 = sub_1A793DB28();
    *(v10 + 16) = v6;
    bzero((v10 + 32), v6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  *&v16 = v10;
  sub_1A793DDA8();
  sub_1A78DCF04(v7, v8, v9, &v16, &v15);
  swift_unknownObjectRelease();
  v11 = *(v16 + 16);
  v12 = sub_1A793D998();
  v14 = v13;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v12, v14);

  return v17[0];
}

uint64_t Insecure.MD5Digest.hash(into:)()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  result = sub_1A793DF68();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Insecure.MD5Digest.hashValue.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  sub_1A793DF58();
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792E0C8()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  sub_1A793DF58();
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792E148()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  result = sub_1A793DF68();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792E1B8()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  sub_1A793DF58();
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1A792E248(__int128 *a1, __int128 *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6 = *a2;
  v7 = v2;
  sub_1A78CBAB0(&v6, &v7, &v7, v8, &v5);
  result = v5;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA3_256Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78BEB00(a1, a2, a3, sub_1A7930878);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792E334()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v6 = *v0;
  v7[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v6, v7);
  v6 = v1;
  sub_1A793B52C(&v6, v7);
  v6 = v2;
  sub_1A793B52C(&v6, v7);
  v6 = v3;
  sub_1A793B52C(&v6, v7);
  result = v7[0];
  if (*(v7[0] + 16) < 0x20uLL)
  {
    __break(1u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA3_256Digest.description.getter()
{
  v18 = 0xD000000000000011;
  v19 = 0x80000001A7950520;
  v1 = v0[1];
  v17[0] = *v0;
  v17[1] = v1;
  result = sub_1A792E334();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  *&v17[0] = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, v17, &v16);
  swift_unknownObjectRelease();
  v12 = *(*&v17[0] + 16);
  v13 = sub_1A793D998();
  v15 = v14;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v13, v15);

  return v18;
}

uint64_t sub_1A792E56C()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v4 = v0[1];
  result = sub_1A793DF68();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792E5DC()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A793DF58();
  v3 = *v0;
  v4 = v0[1];
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792E65C()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A793DF58();
  v3 = *v0;
  v4 = v0[1];
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1A792E6F4(_OWORD *a1, _OWORD *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  sub_1A78CBAB0(v7, v8, v8, v9, &v6);
  result = v6;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA3_384Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78C541C(a1, a2, a3, sub_1A7930890);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792E7E4()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v8 = *v0;
  v9[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v8, v9);
  v8 = v1;
  sub_1A793B52C(&v8, v9);
  v8 = v2;
  sub_1A793B52C(&v8, v9);
  v8 = v3;
  sub_1A793B52C(&v8, v9);
  v8 = v4;
  sub_1A793B52C(&v8, v9);
  v8 = v5;
  sub_1A793B52C(&v8, v9);
  result = v9[0];
  if (*(v9[0] + 16) < 0x30uLL)
  {
    __break(1u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA3_384Digest.description.getter()
{
  v18 = 0xD000000000000011;
  v19 = 0x80000001A7950540;
  v1 = v0[1];
  v17[0] = *v0;
  v17[1] = v1;
  v17[2] = v0[2];
  result = sub_1A792E7E4();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  *&v17[0] = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, v17, &v16);
  swift_unknownObjectRelease();
  v12 = *(*&v17[0] + 16);
  v13 = sub_1A793D998();
  v15 = v14;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v13, v15);

  return v18;
}

uint64_t sub_1A792EA58()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  result = sub_1A793DF68();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792EAD0()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_1A793DF58();
  v5 = *v0;
  v6 = v0[1];
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792EB60()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_1A793DF58();
  v5 = *v0;
  v6 = v0[1];
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A792EC08@<X0>(void *a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  result = sub_1A78BDB94(v6, v7);
  *a1 = result;
  a1[1] = 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1A792EC80(_OWORD *a1, _OWORD *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = a1[2];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  sub_1A78CBAB0(v7, v8, v8, v9, &v6);
  result = v6;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA3_512Digest.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A78CD364(a1, a2, a3, sub_1A79308A8);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792ED80()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v10 = *v0;
  v11[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v10, v11);
  v10 = v1;
  sub_1A793B52C(&v10, v11);
  v10 = v2;
  sub_1A793B52C(&v10, v11);
  v10 = v3;
  sub_1A793B52C(&v10, v11);
  v10 = v4;
  sub_1A793B52C(&v10, v11);
  v10 = v5;
  sub_1A793B52C(&v10, v11);
  v10 = v6;
  sub_1A793B52C(&v10, v11);
  v10 = v7;
  sub_1A793B52C(&v10, v11);
  result = v11[0];
  if (*(v11[0] + 16) < 0x40uLL)
  {
    __break(1u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA3_512Digest.description.getter()
{
  v1 = v0[1];
  v18[0] = *v0;
  v18[1] = v1;
  v2 = v0[3];
  v18[2] = v0[2];
  v18[3] = v2;
  v19 = 0xD000000000000011;
  v20 = 0x80000001A7950560;
  result = sub_1A792ED80();
  v7 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 2 * v7;
  if (((2 * v7) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (v8)
  {
    v12 = sub_1A793DB28();
    *(v12 + 16) = v8;
    bzero((v12 + 32), v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v17 = 0;
  *&v18[0] = v12;
  sub_1A793DDA8();
  sub_1A78DCF04(v9, v10, v11, v18, &v17);
  swift_unknownObjectRelease();
  v13 = *(*&v18[0] + 16);
  v14 = sub_1A793D998();
  v16 = v15;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v14, v16);

  return v19;
}

uint64_t sub_1A792F028()
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1A793DF58();
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792F0B0()
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1A793DF58();
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  sub_1A793DF68();
  result = sub_1A793DFA8();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1A792F150(_OWORD *a1, _OWORD *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v10[0] = *a1;
  v10[1] = v2;
  v3 = a1[3];
  v10[2] = a1[2];
  v10[3] = v3;
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  sub_1A78CBAB0(v9, v10, v10, v11, &v8);
  result = v8;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792F1E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  if (a1)
  {
    v8 = a1 + 20;
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

unint64_t sub_1A792F22C(uint64_t a1)
{
  result = sub_1A78F6060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792F2A8()
{
  result = qword_1ED5F89F8;
  if (!qword_1ED5F89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89F8);
  }

  return result;
}

unint64_t sub_1A792F2FC()
{
  result = qword_1ED5F89D8;
  if (!qword_1ED5F89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89D8);
  }

  return result;
}

unint64_t sub_1A792F350()
{
  result = qword_1ED5F89F0;
  if (!qword_1ED5F89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89F0);
  }

  return result;
}

unint64_t sub_1A792F3A4()
{
  result = qword_1ED5F89E0;
  if (!qword_1ED5F89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89E0);
  }

  return result;
}

unint64_t sub_1A792F3FC()
{
  result = qword_1ED5F89E8;
  if (!qword_1ED5F89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89E8);
  }

  return result;
}

unint64_t sub_1A792F450(uint64_t a1)
{
  result = sub_1A78F6138();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792F4CC()
{
  result = qword_1ED5F8AB0;
  if (!qword_1ED5F8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8AB0);
  }

  return result;
}

unint64_t sub_1A792F520()
{
  result = qword_1ED5F8A90;
  if (!qword_1ED5F8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A90);
  }

  return result;
}

unint64_t sub_1A792F574()
{
  result = qword_1ED5F8AA8;
  if (!qword_1ED5F8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8AA8);
  }

  return result;
}

unint64_t sub_1A792F5C8()
{
  result = qword_1ED5F8A98;
  if (!qword_1ED5F8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8A98);
  }

  return result;
}

unint64_t sub_1A792F620()
{
  result = qword_1ED5F8AA0;
  if (!qword_1ED5F8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F8AA0);
  }

  return result;
}

unint64_t sub_1A792F674(uint64_t a1)
{
  result = sub_1A78F6210();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792F6F0()
{
  result = qword_1EB2A6D70;
  if (!qword_1EB2A6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D70);
  }

  return result;
}

unint64_t sub_1A792F744()
{
  result = qword_1EB2A6D50;
  if (!qword_1EB2A6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D50);
  }

  return result;
}

unint64_t sub_1A792F798()
{
  result = qword_1EB2A6D68;
  if (!qword_1EB2A6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D68);
  }

  return result;
}

unint64_t sub_1A792F7EC()
{
  result = qword_1EB2A6D58;
  if (!qword_1EB2A6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D58);
  }

  return result;
}

unint64_t sub_1A792F844()
{
  result = qword_1EB2A6D60;
  if (!qword_1EB2A6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D60);
  }

  return result;
}

unint64_t sub_1A792F898(uint64_t a1)
{
  result = sub_1A790DAB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792F914()
{
  result = qword_1EB2A7938;
  if (!qword_1EB2A7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7938);
  }

  return result;
}

unint64_t sub_1A792F968()
{
  result = qword_1EB2A7940;
  if (!qword_1EB2A7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7940);
  }

  return result;
}

unint64_t sub_1A792F9BC()
{
  result = qword_1EB2A7948;
  if (!qword_1EB2A7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7948);
  }

  return result;
}

unint64_t sub_1A792FA10()
{
  result = qword_1EB2A7950;
  if (!qword_1EB2A7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7950);
  }

  return result;
}

unint64_t sub_1A792FA68()
{
  result = qword_1EB2A7958;
  if (!qword_1EB2A7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7958);
  }

  return result;
}

unint64_t sub_1A792FABC(uint64_t a1)
{
  result = sub_1A790DB60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792FB38()
{
  result = qword_1EB2A7960;
  if (!qword_1EB2A7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7960);
  }

  return result;
}

unint64_t sub_1A792FB8C()
{
  result = qword_1EB2A7968;
  if (!qword_1EB2A7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7968);
  }

  return result;
}

unint64_t sub_1A792FBE0()
{
  result = qword_1EB2A7970;
  if (!qword_1EB2A7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7970);
  }

  return result;
}

unint64_t sub_1A792FC34()
{
  result = qword_1EB2A7978;
  if (!qword_1EB2A7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7978);
  }

  return result;
}

unint64_t sub_1A792FC8C()
{
  result = qword_1EB2A7980;
  if (!qword_1EB2A7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7980);
  }

  return result;
}

unint64_t sub_1A792FCE0(uint64_t a1)
{
  result = sub_1A78DAEA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792FD5C()
{
  result = qword_1EB2A7988;
  if (!qword_1EB2A7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7988);
  }

  return result;
}

unint64_t sub_1A792FDB0()
{
  result = qword_1EB2A7990;
  if (!qword_1EB2A7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7990);
  }

  return result;
}

unint64_t sub_1A792FE04()
{
  result = qword_1EB2A7998;
  if (!qword_1EB2A7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7998);
  }

  return result;
}

unint64_t sub_1A792FE5C()
{
  result = qword_1EB2A79A0;
  if (!qword_1EB2A79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79A0);
  }

  return result;
}

unint64_t sub_1A792FEB0(uint64_t a1)
{
  result = sub_1A78DAFD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A792FF2C()
{
  result = qword_1EB2A79A8;
  if (!qword_1EB2A79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79A8);
  }

  return result;
}

unint64_t sub_1A792FF80()
{
  result = qword_1EB2A79B0;
  if (!qword_1EB2A79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79B0);
  }

  return result;
}

unint64_t sub_1A792FFD4()
{
  result = qword_1EB2A79B8;
  if (!qword_1EB2A79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79B8);
  }

  return result;
}

unint64_t sub_1A7930028()
{
  result = qword_1EB2A79C0;
  if (!qword_1EB2A79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79C0);
  }

  return result;
}

unint64_t sub_1A7930080()
{
  result = qword_1EB2A79C8;
  if (!qword_1EB2A79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79C8);
  }

  return result;
}

unint64_t sub_1A79300D4(uint64_t a1)
{
  result = sub_1A78DB100();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A7930150(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1A79301B4()
{
  result = qword_1EB2A79D0;
  if (!qword_1EB2A79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79D0);
  }

  return result;
}

unint64_t sub_1A7930208()
{
  result = qword_1EB2A79D8;
  if (!qword_1EB2A79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79D8);
  }

  return result;
}

unint64_t sub_1A793025C()
{
  result = qword_1EB2A79E0;
  if (!qword_1EB2A79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79E0);
  }

  return result;
}

unint64_t sub_1A79302B0()
{
  result = qword_1EB2A79E8;
  if (!qword_1EB2A79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A79E8);
  }

  return result;
}

unint64_t sub_1A7930308()
{
  result = qword_1EB2A79F0[0];
  if (!qword_1EB2A79F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2A79F0);
  }

  return result;
}

uint64_t _s10SHA1DigestVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10SHA1DigestVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1A79303F8()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CEC60();
}

uint64_t sub_1A7930450()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CE948();
}

uint64_t sub_1A79304A8()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CE9A0();
}

uint64_t sub_1A7930500()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CEAA8();
}

uint64_t sub_1A7930558()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CEB00();
}

void *sub_1A79305B0@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1A78CEB58(a1);
}

uint64_t sub_1A7930608()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CECD8();
}

BOOL sub_1A7930660(_OWORD *a1, _OWORD *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1A78CE9F8(a1, a2);
}

BOOL sub_1A79306B8(_OWORD *a1, _OWORD *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1A78CEBB0(a1, a2);
}

BOOL sub_1A7930710(_OWORD *a1, _OWORD *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1A78CED30(a1, a2);
}

uint64_t SHA3_256Digest.hashValue.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return SHA256Digest.hashValue.getter();
}

uint64_t SHA3_384Digest.hashValue.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return SHA384Digest.hashValue.getter();
}

uint64_t SHA3_512Digest.hashValue.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return SHA512Digest.hashValue.getter();
}

uint64_t SHA3_512Digest.hash(into:)()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return SHA512Digest.hash(into:)();
}

uint64_t SHA3_256Digest.hash(into:)()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return SHA256Digest.hash(into:)();
}

uint64_t SHA3_384Digest.hash(into:)()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return SHA384Digest.hash(into:)();
}

uint64_t sub_1A79309D0()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CE8F0();
}

uint64_t sub_1A7930A28()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CEA50();
}

uint64_t sub_1A7930A80()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A78CEC08();
}

void SecureEnclave.P256.KeyAgreement.PrivateKey.init(dataRepresentation:parameters:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A7930B90(a1, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void SecureEnclave.P256.Signing.PrivateKey.init(dataRepresentation:parameters:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A7930B90(a1, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A7930B90(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1A79221B0(a4, a3);
  if (v5)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v12 = v10;
    v13 = sub_1A793D7B8();
    v28[0] = 0;
    v14 = [v12 objectForObjectID:v13 error:v28];

    if (v14)
    {
      v15 = v28[0];
      v16 = [v14 publicKey];
      if (v16)
      {
        v17 = v16;
        v26 = v14;
        v27 = a5;
        v18 = sub_1A793D7D8();
        v20 = v19;

        sub_1A78C0990(v18, v20);
        v21 = sub_1A78F9B58(v18, v20);
        sub_1A78C0AFC(v18, v20);

        v22 = v26;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v23 = v22;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *v27 = v21;
        v27[1] = a1;
        v27[2] = a2;
        v27[3] = v23;
      }

      else
      {

        sub_1A78FC3E4();
        swift_allocError();
        *v25 = 2;
        *(v25 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v24 = v28[0];

      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t static SecureEnclave.isAvailable.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v1 = [v0 tokenIDs];
  v2 = sub_1A793DB08();

  v3 = *MEMORY[0x1E697AEE0];
  v8[0] = sub_1A793D958();
  v8[1] = v4;
  v7[2] = v8;
  v5 = sub_1A7931890(sub_1A7931994, v7, v2);

  return v5 & 1;
}

void sub_1A7930F04()
{
  v0 = *MEMORY[0x1E697AEE0];
  v1 = objc_allocWithZone(MEMORY[0x1E69666D8]);
  v2 = v0;
  v3 = [v1 initWithTokenID_];

  qword_1ED5FA2A0 = v3;
}

void SecureEnclave.P256.Signing.PrivateKey.init(dataRepresentation:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A793106C(a1, a2, a3, a4);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t SecureEnclave.P256.KeyAgreement.PrivateKey.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

void SecureEnclave.P256.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A793106C(a1, a2, a3, a4);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A793106C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1A79221B0(a3, 0);
  if (v4)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v11 = v9;
    v12 = sub_1A793D7B8();
    v26[0] = 0;
    v13 = [v11 objectForObjectID:v12 error:v26];

    if (v13)
    {
      v14 = v26[0];
      v15 = [v13 publicKey];
      if (v15)
      {
        v16 = v15;
        v25 = v13;
        v17 = sub_1A793D7D8();
        v19 = v18;

        sub_1A78C0990(v17, v19);
        v20 = sub_1A78F9B58(v17, v19);
        sub_1A78C0AFC(v17, v19);

        v21 = v25;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v22 = v21;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *a4 = v20;
        a4[1] = a1;
        a4[2] = a2;
        a4[3] = v22;
      }

      else
      {
        sub_1A78FC3E4();
        swift_allocError();
        *v24 = 2;
        *(v24 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v23 = v26[0];
      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

id sub_1A79312DC(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v7 = v5;
  v58[9] = *MEMORY[0x1E69E9840];
  v10 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v11 = [v10 tokenIDs];
  v12 = sub_1A793DB08();

  v13 = *MEMORY[0x1E697AEE0];
  *&v55[0] = sub_1A793D958();
  *(&v55[0] + 1) = v14;
  v54 = v55;
  LOBYTE(a5) = sub_1A7931890(a5, v53, v12);

  if (a5)
  {
    v15 = sub_1A79221B0(a4, 0);
    if (!v5)
    {
      v16 = v15;
      v49 = a1;
      v50 = objc_opt_self();
      v17 = *MEMORY[0x1E697ABC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C0, &qword_1A7941D70);
      type metadata accessor for CFString(0);
      v18 = 1000;
      sub_1A7922338();
      while (1)
      {
        *&v55[0] = v17;
        v19 = v17;
        sub_1A793DDE8();
        v20 = [v50 dataFromACL_];
        v21 = sub_1A793D7D8();
        v23 = v22;

        v58[8] = MEMORY[0x1E6969080];
        v58[5] = v21;
        v58[6] = v23;
        v24 = sub_1A793DE98();
        sub_1A7931A10(v58, v55);
        v25 = sub_1A78FBCDC(v55);
        if (v26)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
        }

        v24[(v25 >> 6) + 8] |= 1 << v25;
        v27 = v24[6] + 40 * v25;
        v28 = v55[0];
        v29 = v55[1];
        *(v27 + 32) = v56;
        *v27 = v28;
        *(v27 + 16) = v29;
        sub_1A78FC550(&v57, (v24[7] + 32 * v25));
        v30 = v24[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_19;
        }

        v24[2] = v32;
        sub_1A7931A80(v58);
        v33 = sub_1A793D878();

        *&v55[0] = 0;
        v7 = [v16 createObjectWithAttributes:v33 error:v55];

        if (!v7)
        {
          break;
        }

        v34 = *&v55[0];
        v35 = [v7 publicKey];
        if (!v35)
        {
          goto LABEL_20;
        }

        v36 = v35;
        v37 = sub_1A793D7D8();
        v39 = v38;

        if ((a2 & 1) == 0)
        {
          goto LABEL_15;
        }

        v40 = sub_1A793D7B8();
        if (!MEMORY[0x1AC55DAD0]())
        {
          goto LABEL_21;
        }

        IsCompactRepresentable = keyIsCompactRepresentable();

        if (IsCompactRepresentable)
        {
LABEL_15:
          v46 = [v7 objectID];
          sub_1A793D7D8();

          sub_1A78C0990(v37, v39);
          v47 = sub_1A78F9B58(v37, v39);

          sub_1A78C0AFC(v37, v39);
          *v49 = v47;
          goto LABEL_14;
        }

        sub_1A78C0AFC(v37, v39);

        if (!--v18)
        {
          sub_1A78FC3E4();
          swift_allocError();
          *v42 = 3;
          *(v42 + 8) = 1;
          goto LABEL_17;
        }
      }

      v48 = *&v55[0];
      sub_1A793D6C8();

LABEL_17:
      swift_willThrow();
    }
  }

  else
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v43 = 0;
    *(v43 + 8) = 1;
    swift_willThrow();
  }

LABEL_14:
  v44 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1A79317B8(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void *)@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_1A79312DC(&v17, a1, a2, a3, a4);
  v11 = v10;
  v13 = v12;

  if (!v5)
  {
    v14 = v17;
    v15 = v9;
    sub_1A78C0990(v11, v13);
    sub_1A78C0AFC(v11, v13);
    v16 = v15;
    sub_1A78C0990(v11, v13);

    sub_1A78C0AFC(v11, v13);
    *a5 = v14;
    a5[1] = v11;
    a5[2] = v13;
    a5[3] = v16;
  }
}

uint64_t sub_1A7931890(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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
      sub_1A793DB18();
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

uint64_t sub_1A793193C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A793DEC8() & 1;
  }
}

uint64_t sub_1A7931A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C8, &qword_1A7941D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7931A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C8, &qword_1A7941D78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7931AE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A793DEC8() & 1;
  }
}

id sub_1A7931B44(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A78CEE3C(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void SecureEnclave.P384.KeyAgreement.PrivateKey.init(dataRepresentation:parameters:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A7931C5C(a1, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void SecureEnclave.P384.Signing.PrivateKey.init(dataRepresentation:parameters:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A7931C5C(a1, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A7931C5C(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1A79221B0(a4, a3);
  if (v5)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v12 = v10;
    v13 = sub_1A793D7B8();
    v28[0] = 0;
    v14 = [v12 objectForObjectID:v13 error:v28];

    if (v14)
    {
      v15 = v28[0];
      v16 = [v14 publicKey];
      if (v16)
      {
        v17 = v16;
        v26 = v14;
        v27 = a5;
        v18 = sub_1A793D7D8();
        v20 = v19;

        sub_1A78C0990(v18, v20);
        v21 = sub_1A78F9BE0(v18, v20);
        sub_1A78C0AFC(v18, v20);

        v22 = v26;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v23 = v22;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *v27 = v21;
        v27[1] = a1;
        v27[2] = a2;
        v27[3] = v23;
      }

      else
      {

        sub_1A78FC3E4();
        swift_allocError();
        *v25 = 2;
        *(v25 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v24 = v28[0];

      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void SecureEnclave.P384.Signing.PrivateKey.init(dataRepresentation:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7932000(a1, a2, a3, a4);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t SecureEnclave.P384.KeyAgreement.PrivateKey.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

void SecureEnclave.P384.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A7932000(a1, a2, a3, a4);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A7932000(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1A79221B0(a3, 0);
  if (v4)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v11 = v9;
    v12 = sub_1A793D7B8();
    v26[0] = 0;
    v13 = [v11 objectForObjectID:v12 error:v26];

    if (v13)
    {
      v14 = v26[0];
      v15 = [v13 publicKey];
      if (v15)
      {
        v16 = v15;
        v25 = v13;
        v17 = sub_1A793D7D8();
        v19 = v18;

        sub_1A78C0990(v17, v19);
        v20 = sub_1A78F9BE0(v17, v19);
        sub_1A78C0AFC(v17, v19);

        v21 = v25;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v22 = v21;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *a4 = v20;
        a4[1] = a1;
        a4[2] = a2;
        a4[3] = v22;
      }

      else
      {
        sub_1A78FC3E4();
        swift_allocError();
        *v24 = 2;
        *(v24 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v23 = v26[0];
      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

id sub_1A7932270(uint64_t *a1, char a2, uint64_t a3, id a4, uint64_t (*a5)(void *))
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v10 = [v9 tokenIDs];
  v11 = sub_1A793DB08();

  v12 = *MEMORY[0x1E697AEE0];
  v45[0] = sub_1A793D958();
  v45[1] = v13;
  v47 = v45;
  LOBYTE(a5) = sub_1A7931890(a5, v46, v11);

  if (a5)
  {
    v14 = sub_1A79221B0(a4, 0);
    if (!v5)
    {
      v42 = v14;
      v39 = a1;
      v41 = objc_opt_self();
      v40 = *MEMORY[0x1E697AD50];
      v15 = *MEMORY[0x1E697ABC8];
      type metadata accessor for CFString(0);
      v16 = 1000;
      sub_1A7922338();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78E0, "<5");
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A7946140;
        v45[0] = v40;
        v18 = v40;
        sub_1A793DDE8();
        *(inited + 96) = MEMORY[0x1E69E6530];
        *(inited + 72) = 384;
        v45[0] = v15;
        v19 = v15;
        sub_1A793DDE8();
        v20 = [v41 dataFromACL_];
        v21 = sub_1A793D7D8();
        v23 = v22;

        *(inited + 168) = MEMORY[0x1E6969080];
        *(inited + 144) = v21;
        *(inited + 152) = v23;
        sub_1A78FC2A8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C8, &qword_1A7941D78);
        swift_arrayDestroy();
        v24 = sub_1A793D878();

        v45[0] = 0;
        a4 = [v42 createObjectWithAttributes:v24 error:v45];

        if (!a4)
        {
          break;
        }

        v25 = v45[0];
        v26 = [a4 publicKey];
        if (!v26)
        {
          __break(1u);
LABEL_16:
          __break(1u);
        }

        v27 = v26;
        v28 = sub_1A793D7D8();
        v30 = v29;

        if ((a2 & 1) == 0)
        {
          goto LABEL_13;
        }

        v31 = sub_1A793D7B8();
        if (!MEMORY[0x1AC55DAE0]())
        {
          goto LABEL_16;
        }

        IsCompactRepresentable = keyIsCompactRepresentable();

        if (IsCompactRepresentable)
        {
LABEL_13:
          v37 = [a4 objectID];
          sub_1A793D7D8();

          sub_1A78C0990(v28, v30);
          v38 = sub_1A78F9BE0(v28, v30);

          sub_1A78C0AFC(v28, v30);
          *v39 = v38;
          goto LABEL_12;
        }

        sub_1A78C0AFC(v28, v30);

        if (!--v16)
        {
          sub_1A78FC3E4();
          swift_allocError();
          *v33 = 3;
          *(v33 + 8) = 1;
          swift_willThrow();

          goto LABEL_12;
        }
      }

      a4 = v45[0];
      sub_1A793D6C8();

      swift_willThrow();
    }
  }

  else
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 1;
    swift_willThrow();
  }

LABEL_12:
  v35 = *MEMORY[0x1E69E9840];
  return a4;
}

void sub_1A7932764(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void *)@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_1A7932270(&v17, a1, a2, a3, a4);
  v11 = v10;
  v13 = v12;

  if (!v5)
  {
    v14 = v17;
    v15 = v9;
    sub_1A78C0990(v11, v13);
    sub_1A78C0AFC(v11, v13);
    v16 = v15;
    sub_1A78C0990(v11, v13);

    sub_1A78C0AFC(v11, v13);
    *a5 = v14;
    a5[1] = v11;
    a5[2] = v13;
    a5[3] = v16;
  }
}

uint64_t sub_1A7932894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v17 = a2;
  v18 = a3;
  sub_1A78C0990(a2, a3);
  sub_1A78CA3EC();
  v14 = sub_1A79332C8(&v17, a4, MEMORY[0x1E6969080], a6);
  result = sub_1A78C0AFC(v17, v18);
  if (!v8)
  {
    swift_beginAccess();
    v16 = v14 + 32 + *(v14 + 16);
    sub_1A79333BC((v14 + 32), a1, a4, a5, a6, a8, a7);
  }

  return result;
}

uint64_t sub_1A7932A40@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
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

uint64_t sub_1A7932AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  return a4(v9, a2, a3);
}

uint64_t sub_1A7932BD0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
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

uint64_t sub_1A7932C68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A7932CBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1A7932D10(void **a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  result = *a1;
  if (result)
  {
    return sub_1A7932D58(result, a3, a2, a4, a5, a6, a7, a8, &v9);
  }

  __break(1u);
  return result;
}

void *sub_1A7932D58(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v48 = a2;
  v42 = a3;
  v43 = a4;
  v50 = a1;
  swift_getAssociatedTypeWitness();
  v54 = a6;
  v49 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = *(v49 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v44 = &v42 - v17;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  v26 = a7[5];
  v45 = a5;
  v46 = a7;
  result = v26(v51, a5, a7);
  if (!v51[0])
  {
    __break(1u);
    goto LABEL_11;
  }

  cckem_pub_ctx_init();
  v28 = v48;
  v29 = a8;
  sub_1A793D5A8();
  v30 = sub_1A793DB98();
  v31 = *(v19 + 8);
  v31(v25, v18);
  if (v30 == 1)
  {
    sub_1A793D5A8();
    v32 = v44;
    sub_1A793DBC8();
    v31(v23, v18);
    v33 = *(AssociatedTypeWitness - 8);
    result = (*(v33 + 48))(v32, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v52 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
      (*(v33 + 32))(boxed_opaque_existential_1, v32, AssociatedTypeWitness);
      v35 = v52;
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v36 = sub_1A78C7370(v28, v54, *(*(*(v29[1] + 8) + 8) + 8));
  v35 = MEMORY[0x1E6969080];
  v52 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v51[0] = v36;
  v51[1] = v37;
LABEL_6:
  v38 = v50;
  v39 = __swift_project_boxed_opaque_existential_1(v51, v35);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v54;
  *(&v42 - 6) = v45;
  *(&v42 - 5) = v40;
  v41 = v47;
  *(&v42 - 4) = v46;
  *(&v42 - 3) = v29;
  *(&v42 - 2) = v38;
  sub_1A793D6A8();
  if (v41)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v51);
    *a9 = v41;
  }

  else
  {
    *v42 = v43;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return result;
}

uint64_t sub_1A7933168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 40))(&v10, a4, a6);
  result = v10;
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
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

  return result;
}

unint64_t sub_1A7933228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1A79332C8(a1, a2, a3, a4);
  if (!v4)
  {
    swift_beginAccess();
    sub_1A793393C(a2, a4, &v8);

    return v8;
  }

  return result;
}

unint64_t sub_1A79332C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 40))(&v8, a2, a4);
  if (!v8)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = cckem_sizeof_full_ctx();
  v7 = MEMORY[0x1EEE9AC00](v5);
  result = sub_1A78C05E8(v7, sub_1A7934030);
  if (v4)
  {
LABEL_5:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t *sub_1A79333BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    return sub_1A7933408(result, a2, a3, a4, a5, a6, &v7, a7);
  }

  __break(1u);
  return result;
}

void *sub_1A7933408@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v45 = a7;
  v46 = a1;
  v49 = a2;
  v41 = a8;
  swift_getAssociatedTypeWitness();
  v48 = a6;
  v12 = a4;
  v13 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v44 = &v41 - v17;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v41 - v24;
  (*(a5 + 40))(v50, a3, a5);
  result = v50[0];
  if (!v50[0])
  {
    goto LABEL_16;
  }

  v43 = AssociatedTypeWitness;
  v27 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v50[0] = off_1ED5F8A18;
  v28 = v49;
  v42 = v23;
  if (v27)
  {
    if ((v27 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v27, 0);
      v28 = v49;
      v29 = v50[0];
      goto LABEL_8;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_8:
  v53 = v29;
  v30 = v48;
  sub_1A793D5A8();
  v31 = sub_1A793DB98();
  v32 = *(v19 + 8);
  v32(v25, v18);
  if (v31 == 1)
  {
    v33 = v42;
    sub_1A793D5A8();
    v34 = v44;
    sub_1A793DBC8();
    v32(v33, v18);
    v35 = v43;
    v36 = *(v43 - 8);
    result = (*(v36 + 48))(v34, 1, v43);
    if (result != 1)
    {
      v51 = v35;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
      v38 = (*(v36 + 32))(boxed_opaque_existential_1, v34, v35);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v38 = sub_1A78C7370(v28, v12, *(*(*(*(v30 + 8) + 8) + 8) + 8));
  v51 = MEMORY[0x1E6969080];
  AssociatedConformanceWitness = MEMORY[0x1E6969078];
  v50[0] = v38;
  v50[1] = v39;
LABEL_12:
  MEMORY[0x1EEE9AC00](v38);
  *(&v41 - 2) = v50;
  v40 = v47;
  *(&v41 - 1) = v46;
  sub_1A7924E08(sub_1A7927D7C);
  if (v40)
  {

    result = __swift_destroy_boxed_opaque_existential_1(v50);
    *v45 = v40;
  }

  else
  {
    *v41 = v53;
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  return result;
}

uint64_t sub_1A7933874(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_1A793D6A8();
}

uint64_t sub_1A793393C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  (*(a2 + 40))(v12, a1, a2);
  if (!v12[0])
  {
    goto LABEL_13;
  }

  v4 = cckem_pubkey_nbytes_info();
  if (v4 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  if (v4)
  {
    v6 = sub_1A793DB28();
    *(v6 + 16) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v12[0] = v5;
  if (!cckem_public_ctx())
  {
LABEL_14:
    __break(1u);
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_11;
  }

  if (v5 < v12[0])
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v6 + 16) = v12[0];
  v7 = sub_1A78C0DCC(v6);
  v9 = v8;

  *a3 = v7;
  a3[1] = v9;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1A7933A6C(void **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *a1;
  if (result)
  {
    result = sub_1A7933AD4(result, a3, a5, a6, a7, a8, &v12);
    if (!v8)
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A7933AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v40 = a7;
  v42 = a5;
  v43 = a2;
  v38 = *(a4 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v47 = a6;
  v13 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A793DC78();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v37 = &v37 - v17;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - v24;
  result = (*(v42 + 40))(v44, a3);
  if (!v44[0])
  {
    __break(1u);
    goto LABEL_10;
  }

  v42 = a1;
  cckem_full_ctx_init();
  sub_1A793D5A8();
  v27 = sub_1A793DB98();
  v28 = *(v19 + 8);
  v28(v25, v18);
  if (v27 == 1)
  {
    sub_1A793D5A8();
    v29 = v37;
    sub_1A793DBC8();
    v30 = v29;
    v28(v23, v18);
    Description = AssociatedTypeWitness[-1].Description;
    result = (Description)[6](v30, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v45 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
      (Description)[4](boxed_opaque_existential_1, v30, AssociatedTypeWitness);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  (*(v38 + 16))(v39, v43, a4);
  v45 = &type metadata for SecureBytes;
  AssociatedConformanceWitness = sub_1A78C7DD0();
  sub_1A78E18BC();
  v33 = *(*(*(*(v47 + 8) + 8) + 8) + 8);
  sub_1A793DC28();
LABEL_6:
  v34 = v42;
  v35 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v35);
  *(&v37 - 2) = v34;
  v36 = v41;
  sub_1A793D6A8();
  result = __swift_destroy_boxed_opaque_existential_1(v44);
  if (v36)
  {
    *v40 = v36;
  }

  return result;
}

uint64_t sub_1A7933F50(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!ccrng())
  {
    goto LABEL_7;
  }

  result = cckem_derive_key_from_seed();
  if (result)
  {
    v2 = result;
    sub_1A78D6484();
    swift_allocError();
    *v3 = v2;
    *(v3 + 4) = 0;
    result = swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A7934078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 40))(&v7, a2, a4);
  result = v7;
  if (v7)
  {
    v5 = cckem_sizeof_pub_ctx();
    v6 = MEMORY[0x1EEE9AC00](v5);
    return sub_1A78C05E8(v6, sub_1A7934534);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A793413C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v29 = *a2;
  v30 = a2[1];
  v10 = *(a2 + 32);
  v11 = sub_1A7933228(a1, a3, a4, a5);
  if (v6)
  {
LABEL_6:
    v27 = *MEMORY[0x1E69E9840];
    return v10;
  }

  v13 = v11;
  v14 = v12;
  result = ccsha3_256_di();
  if (result)
  {
    v16 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v18 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v16;
    *(inited + 24) = v18;
    *&v32 = inited;
    sub_1A78C0990(v13, v14);
    sub_1A791D828(v13, v14);
    sub_1A78C0AFC(v13, v14);
    sub_1A78BD4B0(&v35);

    v19 = v35;
    v20 = v36;
    if ((v10 & 1) != 0 || (v35 = v29, v36 = v30, v32 = v19, v33 = v20, sub_1A78CBAB0(&v32, &v34, &v35, v37, &v31), v31))
    {
      *(&v36 + 1) = &type metadata for SHA3_256Digest;
      v37[0] = sub_1A790CAC0();
      v21 = swift_allocObject();
      *&v35 = v21;
      *(v21 + 16) = v19;
      *(v21 + 32) = v20;
      v22 = __swift_project_boxed_opaque_existential_1(&v35, &type metadata for SHA3_256Digest);
      v23 = v22[1];
      v32 = *v22;
      v33 = v23;
      v24 = sub_1A793D698();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      sub_1A793D638();
      __swift_destroy_boxed_opaque_existential_1(&v35);
      v10 = sub_1A78C7370(a1, a4, *(*(*(*(a6 + 8) + 8) + 8) + 8));
      sub_1A78C0AFC(v13, v14);
    }

    else
    {
      sub_1A790CA04();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();
      sub_1A78C0AFC(v13, v14);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A79343D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 0uLL;
  v12 = a3 >> 60;
  if (a3 >> 60 == 15)
  {
    v13 = 0uLL;
  }

  else
  {
    v21 = a7;
    v22 = a1;
    result = ccsha3_256_di();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v19 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v17;
    *(inited + 24) = v19;
    v26 = inited;
    sub_1A78C0990(a2, a3);
    sub_1A791D828(a2, a3);
    sub_1A78CEEC8(a2, a3);
    sub_1A78BD4B0(&v23);

    v11 = v23;
    v13 = v24;
    a7 = v21;
    a1 = v22;
  }

  v23 = v11;
  v24 = v13;
  v25 = v12 > 0xE;
  result = sub_1A793413C(a1, &v23, a4, a5, a6, a7);
  if (v7)
  {
    return v20;
  }

  return result;
}

uint64_t sub_1A79345B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C0, &qword_1A7941D70);
    v2 = sub_1A793DE98();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_1A793DB18();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;
    sub_1A793DB18();
    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1A78FC550(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1A78FC550(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1A793DDC8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1A78FC550(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A7934870(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v8 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_35;
  }

  if (!a6())
  {
    goto LABEL_36;
  }

  v16 = cckem_pub_ctx_init();
  v17 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v17)
    {
      result = (a6)(v16);
      if (result)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  if (v17 == 2)
  {
    v32 = a5;
    v33 = a2;
    v19 = *(a3 + 16);
    v20 = *(a3 + 24);

    a5 = sub_1A793D648();
    if (a5)
    {
      v21 = sub_1A793D678();
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_33;
      }

      a5 += v19 - v21;
    }

    v22 = __OFSUB__(v20, v19);
    a2 = (v20 - v19);
    if (!v22)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    v33 = a2;
    a2 = ((a3 >> 32) - a3);
    if (a3 >> 32 >= a3)
    {
      v32 = a5;

      a5 = sub_1A793D648();
      if (!a5)
      {
LABEL_18:
        v24 = sub_1A793D668();
        if (v24 >= a2)
        {
          v25 = a2;
        }

        else
        {
          v25 = v24;
        }

        v26 = v25 + a5;
        if (a5)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        sub_1A7934B28(a5, v27, v9, a7);
        result = sub_1A78C0AFC(a3, a4);
        if (v7)
        {
          goto LABEL_31;
        }

        a5 = v32;
        a2 = v33;
        goto LABEL_30;
      }

      v23 = sub_1A793D678();
      if (!__OFSUB__(a3, v23))
      {
        a5 += a3 - v23;
        goto LABEL_18;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  result = (a6)(v16);
  if (result)
  {
LABEL_27:
    v28 = cckem_import_pubkey();
    if (v28)
    {
      v29 = v28;
      sub_1A78D6484();
      swift_allocError();
      *v30 = v29;
      *(v30 + 4) = 0;
      swift_willThrow();
      result = sub_1A78C0AFC(a3, a4);
LABEL_31:
      v31 = *MEMORY[0x1E69E9840];
      return result;
    }

    result = sub_1A78C0AFC(a3, a4);
LABEL_30:
    *a2 = a5;
    goto LABEL_31;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A7934B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = cckem_import_pubkey();
  if (result)
  {
    v6 = result;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t SecureEnclave.MLKEM768.PrivateKey.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

void sub_1A7934D90(uint64_t (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(void *, uint64_t *)@<X3>, unint64_t *a5@<X8>)
{
  v11 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697ABE8], 0, 0);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A7934E98(&v21, v11, 0, a1, a2, a3, a4);
    v15 = v14;
    v17 = v16;

    if (!v5)
    {
      v18 = v21;
      v19 = v13;
      sub_1A78C0990(v15, v17);
      sub_1A78C0AFC(v15, v17);
      v20 = v19;
      sub_1A78C0990(v15, v17);

      sub_1A78C0AFC(v15, v17);
      a5[2] = v17;
      a5[3] = v20;
      *a5 = v18;
      a5[1] = v15;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A7934E98(unint64_t *a1, id a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(void *, uint64_t *))
{
  v56 = *MEMORY[0x1E69E9840];
  v12 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v13 = [v12 tokenIDs];
  v14 = sub_1A793DB08();

  v15 = *MEMORY[0x1E697AEE0];
  v54 = sub_1A793D958();
  v55 = v16;
  v53[2] = &v54;
  LOBYTE(a4) = sub_1A7931890(a4, v53, v14);

  if ((a4 & 1) == 0)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v42 = 0;
    *(v42 + 8) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  v17 = sub_1A79221B0(a3, 0);
  if (v7)
  {
LABEL_9:
    v43 = *MEMORY[0x1E69E9840];
    return a2;
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78E0, "<5");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7944DF0;
  v54 = *MEMORY[0x1E697AD50];
  v20 = v54;
  type metadata accessor for CFString(0);
  v22 = v21;
  sub_1A7922338();
  v23 = v20;
  sub_1A793DDE8();
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = a5;
  v54 = *MEMORY[0x1E697AD68];
  v24 = v54;
  result = sub_1A793DDE8();
  v26 = *MEMORY[0x1E697ADA0];
  if (*MEMORY[0x1E697ADA0])
  {
    *(inited + 168) = v22;
    *(inited + 144) = v26;
    v54 = *MEMORY[0x1E697ABC8];
    v27 = v54;
    v28 = v26;
    sub_1A793DDE8();
    v29 = [objc_opt_self() dataFromACL_];
    v30 = sub_1A793D7D8();
    v32 = v31;

    *(inited + 240) = MEMORY[0x1E6969080];
    *(inited + 216) = v30;
    *(inited + 224) = v32;
    sub_1A78FC2A8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C8, &qword_1A7941D78);
    swift_arrayDestroy();
    v33 = sub_1A793D878();

    v54 = 0;
    a2 = [v18 createObjectWithAttributes:v33 error:&v54];

    if (!a2)
    {
      v44 = v54;
      sub_1A793D6C8();

      swift_willThrow();
      goto LABEL_9;
    }

    v34 = v54;
    v35 = [a2 publicKey];
    if (!v35)
    {
      sub_1A78FC3E4();
      swift_allocError();
      *v45 = 2;
      *(v45 + 8) = 1;
      swift_willThrow();

      goto LABEL_9;
    }

    v36 = v35;
    v37 = sub_1A793D7D8();
    v39 = v38;

    v54 = v37;
    v55 = v39;
    v40 = sub_1A78C0990(v37, v39);
    result = a6(v40);
    if (result)
    {
      v41 = cckem_sizeof_pub_ctx();
      v48 = MEMORY[0x1EEE9AC00](v41);
      v52 = sub_1A78C05E8(v48, a7);
      sub_1A78C0AFC(v54, v55);
      v46 = v18;
      v47 = [a2 objectID];
      sub_1A793D7D8();
      sub_1A78C0AFC(v37, v39);

      *a1 = v52;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A793537C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t (*a7)(uint64_t), void (*a8)(void *, uint64_t *))
{
  v10 = v8;
  v45 = *MEMORY[0x1E69E9840];
  v15 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v16 = [v15 tokenIDs];
  v17 = sub_1A793DB08();

  v18 = *MEMORY[0x1E697AEE0];
  v43 = sub_1A793D958();
  v44 = v19;
  v42 = &v43;
  LOBYTE(a6) = sub_1A7931890(a6, v41, v17);

  if ((a6 & 1) == 0)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v20 = sub_1A79221B0(a4, a5);
  if (v8)
  {
LABEL_8:
    v33 = *MEMORY[0x1E69E9840];
    return v10;
  }

  v21 = v20;
  v22 = sub_1A793D7B8();
  v43 = 0;
  v10 = [v21 objectForObjectID:v22 error:&v43];

  if (!v10)
  {
    v35 = v43;
    sub_1A793D6C8();

    swift_willThrow();
    goto LABEL_8;
  }

  v23 = v43;
  v24 = [v10 publicKey];
  if (!v24)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v36 = 2;
    *(v36 + 8) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v25 = v24;
  v26 = sub_1A793D7D8();
  v28 = v27;

  v43 = v26;
  v44 = v28;
  v29 = sub_1A78C0990(v26, v28);
  if (a7(v29))
  {
    v30 = cckem_sizeof_pub_ctx();
    v37 = MEMORY[0x1EEE9AC00](v30);
    v31 = sub_1A78C05E8(v37, a8);

    sub_1A78C0AFC(v26, v28);
    sub_1A78C0AFC(v43, v44);
    *a1 = v31;
    sub_1A78C0990(a2, a3);
    goto LABEL_8;
  }

  __break(1u);
  sub_1A78C0AFC(v43, v44);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1A7935714(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, unint64_t *a7@<X8>)
{
  v11 = sub_1A7934E98(&v19, a1, a2, a3, a4, a5, a6);
  v13 = v12;
  v15 = v14;

  if (!v7)
  {
    v16 = v19;
    v17 = v11;
    sub_1A78C0990(v13, v15);
    sub_1A78C0AFC(v13, v15);
    v18 = v17;
    sub_1A78C0990(v13, v15);

    sub_1A78C0AFC(v13, v15);
    *a7 = v16;
    a7[1] = v13;
    a7[2] = v15;
    a7[3] = v18;
  }
}

void sub_1A7935848(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void *)@<X4>, uint64_t (*a6)(uint64_t)@<X5>, void (*a7)(void *, uint64_t *)@<X6>, unint64_t *a8@<X8>)
{
  v14 = sub_1A78C7370(a1, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
  v16 = v15;
  v17 = sub_1A793537C(&v28, v14, v15, a2, 0, a5, a6, a7);
  if (v8)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    sub_1A78C0AFC(v14, v16);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    v22 = v19;
    (*(*(a3 - 8) + 8))(a1, a3);
    sub_1A78C0AFC(v14, v16);

    v23 = v28;
    v24 = v20;
    sub_1A78C0990(v21, v22);
    sub_1A78C0AFC(v21, v22);
    v25 = v24;
    sub_1A78C0990(v21, v22);

    sub_1A78C0AFC(v21, v22);
    *a8 = v23;
    a8[1] = v21;
    a8[2] = v22;
    a8[3] = v25;
  }
}

uint64_t sub_1A79359F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1A7935C00(*(v3 + 24), a1, a2);
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    v10 = sub_1A78F3E70(result, v7);
    result = sub_1A78C0AFC(v8, v9);
    *a3 = v10;
  }

  return result;
}

void *sub_1A7935A60(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A793D7B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A79414F0;
  if (!*MEMORY[0x1E697B160])
  {
    __break(1u);
  }

  *(v3 + 32) = sub_1A793D958();
  *(v3 + 40) = v4;
  v5 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v6 = sub_1A793D878();

  v12[0] = 0;
  v7 = [a1 decapsulate:v2 algorithms:v5 parameters:v6 error:v12];

  v8 = v12[0];
  if (v7)
  {
    v9 = sub_1A793D7D8();
  }

  else
  {
    v9 = v8;
    sub_1A793D6C8();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void *sub_1A7935C00(void *a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    v7 = v20[0];
    v8 = v20[1];
    v9 = sub_1A793D7B8();
    sub_1A78C0AFC(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A79414F0;
  if (!*MEMORY[0x1E697B160])
  {
    __break(1u);
  }

  *(v10 + 32) = sub_1A793D958();
  *(v10 + 40) = v11;
  v12 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v13 = sub_1A793D878();

  v20[0] = 0;
  v14 = [a1 decapsulate:v9 algorithms:v12 parameters:v13 error:v20];

  v15 = v20[0];
  if (v14)
  {
    v9 = sub_1A793D7D8();
  }

  else
  {
    v16 = v15;
    sub_1A793D6C8();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1A7935E74@<X0>(void *a1@<X8>)
{
  result = sub_1A7935A60(*(v1 + 24));
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    v8 = sub_1A78F3E70(result, v5);
    result = sub_1A78C0AFC(v6, v7);
    *a1 = v8;
  }

  return result;
}

void SecureEnclave.Curve25519.KeyAgreement.PrivateKey.init(dataRepresentation:parameters:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A7936148(a1, a2, a3, a4, sub_1A78FC77C, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void SecureEnclave.Curve25519.Signing.PrivateKey.init(dataRepresentation:parameters:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1A7936148(a1, a2, a3, a4, sub_1A78FC77C, a5);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A7936148(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t (*a5)(uint64_t, unint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v12 = sub_1A79221B0(a4, a3);
  if (v6)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v14 = v12;
    v30 = a6;
    v15 = sub_1A793D7B8();
    v31[0] = 0;
    v16 = [v14 objectForObjectID:v15 error:v31];

    if (v16)
    {
      v17 = v31[0];
      v18 = [v16 publicKey];
      if (v18)
      {
        v19 = v18;
        v28 = v16;
        v29 = v14;
        v20 = sub_1A793D7D8();
        v22 = v21;

        sub_1A78C0990(v20, v22);
        v23 = a5(v20, v22);
        sub_1A78C0AFC(v20, v22);

        v24 = v28;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v25 = v24;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *v30 = v23;
        v30[1] = a1;
        v30[2] = a2;
        v30[3] = v25;
      }

      else
      {

        sub_1A78FC3E4();
        swift_allocError();
        *v27 = 2;
        *(v27 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v26 = v31[0];

      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void SecureEnclave.Curve25519.Signing.PrivateKey.init(dataRepresentation:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A79364F0(a1, a2, a3, sub_1A78FC77C, a4);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t SecureEnclave.Curve25519.KeyAgreement.PrivateKey.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

void SecureEnclave.Curve25519.KeyAgreement.PrivateKey.init(dataRepresentation:authenticationContext:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A79364F0(a1, a2, a3, sub_1A78FC77C, a4);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A79364F0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, unint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v11 = sub_1A79221B0(a3, 0);
  if (v5)
  {

    sub_1A78C0AFC(a1, a2);
  }

  else
  {
    v13 = v11;
    v14 = sub_1A793D7B8();
    v29[0] = 0;
    v15 = [v13 objectForObjectID:v14 error:v29];

    if (v15)
    {
      v16 = v29[0];
      v17 = [v15 publicKey];
      if (v17)
      {
        v18 = v17;
        v27 = v15;
        v28 = a5;
        v19 = sub_1A793D7D8();
        v21 = v20;

        sub_1A78C0990(v19, v21);
        v22 = a4(v19, v21);
        sub_1A78C0AFC(v19, v21);

        v23 = v27;
        sub_1A78C0990(a1, a2);
        sub_1A78C0AFC(a1, a2);
        v24 = v23;
        sub_1A78C0990(a1, a2);

        sub_1A78C0AFC(a1, a2);
        *v28 = v22;
        v28[1] = a1;
        v28[2] = a2;
        v28[3] = v24;
      }

      else
      {
        sub_1A78FC3E4();
        swift_allocError();
        *v26 = 2;
        *(v26 + 8) = 1;
        swift_willThrow();

        sub_1A78C0AFC(a1, a2);
      }
    }

    else
    {
      v25 = v29[0];
      sub_1A793D6C8();

      swift_willThrow();
      sub_1A78C0AFC(a1, a2);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A79367CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A7936928(a1, MEMORY[0x1E69E9510], sub_1A78E396C, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7936840@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A7936928(a1, MEMORY[0x1E69E9518], sub_1A78E396C, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A79368B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A7936928(a1, MEMORY[0x1E69E9520], sub_1A78E396C, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7936928@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(unint64_t, uint64_t, uint64_t, void *, unint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *v4;
  v10 = a2();
  if (!v10)
  {
LABEL_7:
    __break(1u);
  }

  v11 = [objc_opt_self() groupOrderByteCountForCP_];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  swift_beginAccess();
  v15[0] = v12;
  result = a3(v12, v9 + 32, v8 + 32, v15, v12);
  if (!v5)
  {
    *a4 = result;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7936A18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A7936B00(a1, a2, a3, MEMORY[0x1E69E9510], MEMORY[0x1E69E9510]);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7936A8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A7936B00(a1, a2, a3, MEMORY[0x1E69E9518], MEMORY[0x1E69E9518]);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7936B00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (!*a3)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!a4())
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_27;
  }

  v8 = ccec_raw_import_priv_only();
  if (v8)
  {
    v9 = v8;
    sub_1A78D6484();
    swift_allocError();
    *v10 = v9;
    *(v10 + 4) = 0;
    result = swift_willThrow();
LABEL_20:
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

  v12 = ccec_der_export_priv_size();
  if (!v12)
  {
    if (qword_1ED5F8A30 == -1)
    {
LABEL_16:
      v20 = off_1ED5F8A18;

      goto LABEL_17;
    }

LABEL_24:
    swift_once();
    goto LABEL_16;
  }

  v13 = v12;
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v12))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v12 - 1) | ((v12 - 1) >> 1) | (((v12 - 1) | ((v12 - 1) >> 1)) >> 2);
  v15 = v14 | (v14 >> 4) | ((v14 | (v14 >> 4)) >> 8);
  v16 = v15 | HIWORD(v15);
  v17 = __CFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v19 = v18;
  }

  type metadata accessor for SecureBytes.Backing();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = v19;
  if ((_swift_stdlib_malloc_size(v20) - 32) < v13)
  {
    goto LABEL_23;
  }

  v25 = 0;
  result = ccrng();
  if (result)
  {
    ccrng_generate_bridge();
    swift_beginAccess();
    v20[2] = v13;
LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_beginAccess();
      sub_1A78C2BF8((v20 + 4), v20 + v20[2] + 32, &v24);
      v21 = v24;

      v20 = v21;
    }

    swift_beginAccess();
    sub_1A7936DF8((v20 + 4), v20 + v20[2] + 32, &v23, v5, a5);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7936D84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A7936B00(a1, a2, a3, MEMORY[0x1E69E9520], MEMORY[0x1E69E9520]);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7936DF8(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  LODWORD(result) = ccec_der_export_priv();
  *a3 = result;
  if (!result)
  {
    result = a5();
    if (result)
    {
      result = ccec_der_import_priv();
      *a3 = result;
      if (!result)
      {
        return result;
      }

      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    return result;
  }

LABEL_5:
  v7 = result;
  sub_1A78D6484();
  swift_allocError();
  *v8 = v7;
  *(v8 + 4) = 0;
  return swift_willThrow();
}

uint64_t sub_1A7936ECC(char *a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1A793DB18();
  v5 = ccec_export_pub_size((v4 + 32));
  v6 = sub_1A793DB28();
  *(v6 + 16) = v5;
  ccec_export_pub();
  *(v6 + 16) = v5;
  v7 = sub_1A78C0DCC(v6);
  v9 = v8;

  v10 = sub_1A793D7B8();
  v11 = sub_1A78C0AFC(v7, v9);
  result = a2(v11);
  if (result)
  {
    IsCompactRepresentable = keyIsCompactRepresentable();

    if (IsCompactRepresentable)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_1A78F5C2C(a1);
      }

      v14 = ccec_compact_export_size(a1 + 4);
      if (v14)
      {
        v15 = sub_1A793DB28();
        *(v15 + 16) = v14;
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      ccec_compact_export_pub();
      *(v15 + 16) = v14;
      v16 = sub_1A78C0DCC(v15);

      return v16;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A7936928(a1, MEMORY[0x1E69E9510], sub_1A78E396C, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t P256.Signing.PublicKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6CC0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADA90;
  v12 = *(&xmmword_1EB2ADA90 + 8);
  v13 = unk_1EB2ADAA8;
  swift_unknownObjectRetain();
  sub_1A793DB18();
  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_1A793DB28();
  *(v4 + 16) = v3;
  ccec_export_pub();
  *(v4 + 16) = v3;
  v5 = sub_1A78C0DCC(v4);
  v7 = v6;

  v8 = sub_1A791EBC0(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793A8E8(&v16, v14);
  sub_1A79198AC(0x30uLL, &v15, &v16);
  v10 = sub_1A78C0DCC(v15);

  sub_1A78C5F48(&v16);
  return v10;
}

uint64_t P256.Signing.PrivateKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6CC0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADA90;
  v16 = unk_1EB2ADAA8;
  v17 = *(&xmmword_1EB2ADA90 + 8);
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  sub_1A793DB18();
  sub_1A790208C(v1 + 32, &v20);
  v4 = sub_1A791EBC0(v20, v21);
  if (!MEMORY[0x1AC55DAD0]())
  {
    goto LABEL_10;
  }

  v5 = getccec_pub_ctx_size();
  if (v5 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = v5;

  if (v6)
  {
    v7 = sub_1A793DB28();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v7 + 32), (v1 + 32), v6);
  *(v7 + 16) = v6;

  v8 = ccec_export_pub_size((v7 + 32));
  v9 = sub_1A793DB28();
  *(v9 + 16) = v8;
  ccec_export_pub();
  *(v9 + 16) = v8;
  v10 = sub_1A78C0DCC(v9);
  v12 = v11;

  v13 = sub_1A791EBC0(v10, v12);
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  sub_1A7920DC4(v4, v24, v13, &v23);
  v20 = v2;
  v22 = v16;
  v21 = v17;
  v19 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793AA0C(&v20, v18);
  sub_1A791BDC8(48, &v19, &v20);
  sub_1A78FFC18(&v20);
  v14 = sub_1A78C0DCC(v19);

  sub_1A78FFC18(&v20);
  return v14;
}

uint64_t P256.KeyAgreement.PublicKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6CC0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADA90;
  v12 = *(&xmmword_1EB2ADA90 + 8);
  v13 = unk_1EB2ADAA8;
  swift_unknownObjectRetain();
  sub_1A793DB18();
  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_1A793DB28();
  *(v4 + 16) = v3;
  ccec_export_pub();
  *(v4 + 16) = v3;
  v5 = sub_1A78C0DCC(v4);
  v7 = v6;

  v8 = sub_1A791EBC0(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793A8E8(&v16, v14);
  sub_1A79198AC(0x30uLL, &v15, &v16);
  v10 = sub_1A78C0DCC(v15);

  sub_1A78C5F48(&v16);
  return v10;
}

uint64_t sub_1A7937AA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v10 = sub_1A793A6F8(a1, a2, a3, a4, a5);
  result = sub_1A78C0AFC(a1, a2);
  if (!v6)
  {
    *a6 = v10;
  }

  return result;
}

uint64_t P256.KeyAgreement.PrivateKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6CC0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADA90;
  v16 = unk_1EB2ADAA8;
  v17 = *(&xmmword_1EB2ADA90 + 8);
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  sub_1A793DB18();
  sub_1A790208C(v1 + 32, &v20);
  v4 = sub_1A791EBC0(v20, v21);
  if (!MEMORY[0x1AC55DAD0]())
  {
    goto LABEL_10;
  }

  v5 = getccec_pub_ctx_size();
  if (v5 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = v5;

  if (v6)
  {
    v7 = sub_1A793DB28();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v7 + 32), (v1 + 32), v6);
  *(v7 + 16) = v6;

  v8 = ccec_export_pub_size((v7 + 32));
  v9 = sub_1A793DB28();
  *(v9 + 16) = v8;
  ccec_export_pub();
  *(v9 + 16) = v8;
  v10 = sub_1A78C0DCC(v9);
  v12 = v11;

  v13 = sub_1A791EBC0(v10, v12);
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  sub_1A7920DC4(v4, v24, v13, &v23);
  v20 = v2;
  v22 = v16;
  v21 = v17;
  v19 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793AA0C(&v20, v18);
  sub_1A791BDC8(48, &v19, &v20);
  sub_1A78FFC18(&v20);
  v14 = sub_1A78C0DCC(v19);

  sub_1A78FFC18(&v20);
  return v14;
}

uint64_t sub_1A7937E34(uint64_t (*a1)(void))
{
  v7 = *v1;
  v2 = a1();
  v4 = v3;
  v5 = sub_1A78E3E4C(0x2045544156495250, 0xEB0000000059454BLL);

  sub_1A78C0AFC(v2, v4);
  return v5;
}

uint64_t P384.Signing.PublicKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6D98 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADAC0;
  v12 = *(&xmmword_1EB2ADAC0 + 8);
  v13 = unk_1EB2ADAD8;
  swift_unknownObjectRetain();
  sub_1A793DB18();
  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_1A793DB28();
  *(v4 + 16) = v3;
  ccec_export_pub();
  *(v4 + 16) = v3;
  v5 = sub_1A78C0DCC(v4);
  v7 = v6;

  v8 = sub_1A791EBC0(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793A8E8(&v16, v14);
  sub_1A79198AC(0x30uLL, &v15, &v16);
  v10 = sub_1A78C0DCC(v15);

  sub_1A78C5F48(&v16);
  return v10;
}

uint64_t P384.Signing.PrivateKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6D98 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADAC0;
  v16 = unk_1EB2ADAD8;
  v17 = *(&xmmword_1EB2ADAC0 + 8);
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  sub_1A793DB18();
  sub_1A79020D4(v1 + 32, &v20);
  v4 = sub_1A791EBC0(v20, v21);
  if (!MEMORY[0x1AC55DAE0]())
  {
    goto LABEL_10;
  }

  v5 = getccec_pub_ctx_size();
  if (v5 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = v5;

  if (v6)
  {
    v7 = sub_1A793DB28();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v7 + 32), (v1 + 32), v6);
  *(v7 + 16) = v6;

  v8 = ccec_export_pub_size((v7 + 32));
  v9 = sub_1A793DB28();
  *(v9 + 16) = v8;
  ccec_export_pub();
  *(v9 + 16) = v8;
  v10 = sub_1A78C0DCC(v9);
  v12 = v11;

  v13 = sub_1A791EBC0(v10, v12);
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  sub_1A7920DC4(v4, v24, v13, &v23);
  v20 = v2;
  v22 = v16;
  v21 = v17;
  v19 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793AA0C(&v20, v18);
  sub_1A791BDC8(48, &v19, &v20);
  sub_1A78FFC18(&v20);
  v14 = sub_1A78C0DCC(v19);

  sub_1A78FFC18(&v20);
  return v14;
}

uint64_t P384.KeyAgreement.PublicKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6D98 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADAC0;
  v12 = *(&xmmword_1EB2ADAC0 + 8);
  v13 = unk_1EB2ADAD8;
  swift_unknownObjectRetain();
  sub_1A793DB18();
  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_1A793DB28();
  *(v4 + 16) = v3;
  ccec_export_pub();
  *(v4 + 16) = v3;
  v5 = sub_1A78C0DCC(v4);
  v7 = v6;

  v8 = sub_1A791EBC0(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793A8E8(&v16, v14);
  sub_1A79198AC(0x30uLL, &v15, &v16);
  v10 = sub_1A78C0DCC(v15);

  sub_1A78C5F48(&v16);
  return v10;
}

uint64_t P384.KeyAgreement.PrivateKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6D98 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADAC0;
  v16 = unk_1EB2ADAD8;
  v17 = *(&xmmword_1EB2ADAC0 + 8);
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  sub_1A793DB18();
  sub_1A79020D4(v1 + 32, &v20);
  v4 = sub_1A791EBC0(v20, v21);
  if (!MEMORY[0x1AC55DAE0]())
  {
    goto LABEL_10;
  }

  v5 = getccec_pub_ctx_size();
  if (v5 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = v5;

  if (v6)
  {
    v7 = sub_1A793DB28();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v7 + 32), (v1 + 32), v6);
  *(v7 + 16) = v6;

  v8 = ccec_export_pub_size((v7 + 32));
  v9 = sub_1A793DB28();
  *(v9 + 16) = v8;
  ccec_export_pub();
  *(v9 + 16) = v8;
  v10 = sub_1A78C0DCC(v9);
  v12 = v11;

  v13 = sub_1A791EBC0(v10, v12);
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  sub_1A7920DC4(v4, v24, v13, &v23);
  v20 = v2;
  v22 = v16;
  v21 = v17;
  v19 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793AA0C(&v20, v18);
  sub_1A791BDC8(48, &v19, &v20);
  sub_1A78FFC18(&v20);
  v14 = sub_1A78C0DCC(v19);

  sub_1A78FFC18(&v20);
  return v14;
}

uint64_t _s9CryptoKit4P256O12KeyAgreementO06PublicD0V18x963Representation10Foundation4DataVvg_0()
{
  v1 = ccec_export_pub_size((*v0 + 32));
  v2 = sub_1A793DB28();
  *(v2 + 16) = v1;
  ccec_export_pub();
  *(v2 + 16) = v1;
  v3 = sub_1A78C0DCC(v2);

  return v3;
}

uint64_t P521.Signing.PublicKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6DA0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADAE8;
  v12 = *(&xmmword_1EB2ADAE8 + 8);
  v13 = unk_1EB2ADB00;
  swift_unknownObjectRetain();
  sub_1A793DB18();
  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_1A793DB28();
  *(v4 + 16) = v3;
  ccec_export_pub();
  *(v4 + 16) = v3;
  v5 = sub_1A78C0DCC(v4);
  v7 = v6;

  v8 = sub_1A791EBC0(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793A8E8(&v16, v14);
  sub_1A79198AC(0x30uLL, &v15, &v16);
  v10 = sub_1A78C0DCC(v15);

  sub_1A78C5F48(&v16);
  return v10;
}

uint64_t sub_1A7938CC0@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, void, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  result = a2();
  if (result)
  {
    v8 = getccec_full_ctx_size();
    result = a3(v8, a1 & 1, v8);
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t P521.Signing.PrivateKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6DA0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADAE8;
  v16 = unk_1EB2ADB00;
  v17 = *(&xmmword_1EB2ADAE8 + 8);
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  sub_1A793DB18();
  sub_1A790211C(v1 + 32, &v20);
  v4 = sub_1A791EBC0(v20, v21);
  if (!ccec_cp_521())
  {
    goto LABEL_10;
  }

  v5 = getccec_pub_ctx_size();
  if (v5 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = v5;

  if (v6)
  {
    v7 = sub_1A793DB28();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v7 + 32), (v1 + 32), v6);
  *(v7 + 16) = v6;

  v8 = ccec_export_pub_size((v7 + 32));
  v9 = sub_1A793DB28();
  *(v9 + 16) = v8;
  ccec_export_pub();
  *(v9 + 16) = v8;
  v10 = sub_1A78C0DCC(v9);
  v12 = v11;

  v13 = sub_1A791EBC0(v10, v12);
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  sub_1A7920DC4(v4, v24, v13, &v23);
  v20 = v2;
  v22 = v16;
  v21 = v17;
  v19 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793AA0C(&v20, v18);
  sub_1A791BDC8(48, &v19, &v20);
  sub_1A78FFC18(&v20);
  v14 = sub_1A78C0DCC(v19);

  sub_1A78FFC18(&v20);
  return v14;
}

uint64_t sub_1A7939128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
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

uint64_t sub_1A7939210@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1A78E4D98(a1, a2);
  if (!v4)
  {
    v11 = v9;
    v12 = v10;
    if (result == 0x4B2043494C425550 && v8 == 0xEA00000000005945 || (sub_1A793DEC8() & 1) != 0)
    {
      sub_1A78C0990(v11, v12);
      v13 = sub_1A791EBC0(v11, v12);
      sub_1A78BDFE0(v13, v13 + 32, 0, (2 * *(v13 + 16)) | 1, v20);

      sub_1A78BF578(v20, 0x30u, v21);
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = swift_unknownObjectRetain();
      v19 = a3(v18, v15, v16, v17);
      sub_1A78C5F48(v21);

      result = sub_1A78C0AFC(v11, v12);
      *a4 = v19;
    }

    else
    {
      sub_1A78D6B80();
      swift_allocError();
      *v14 = 7;
      swift_willThrow();

      return sub_1A78C0AFC(v11, v12);
    }
  }

  return result;
}

uint64_t sub_1A7939480(uint64_t (*a1)(void))
{
  v2 = *v1;
  result = a1();
  if (result)
  {
    result = ccec_compressed_x962_export_pub_size();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
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

      result = ccec_compressed_x962_export_pub();
      if (!result)
      {
        *(v5 + 16) = v4;
        v6 = sub_1A78C0DCC(v5);

        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t P521.KeyAgreement.PublicKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6DA0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADAE8;
  v12 = *(&xmmword_1EB2ADAE8 + 8);
  v13 = unk_1EB2ADB00;
  swift_unknownObjectRetain();
  sub_1A793DB18();
  v3 = ccec_export_pub_size((v1 + 32));
  v4 = sub_1A793DB28();
  *(v4 + 16) = v3;
  ccec_export_pub();
  *(v4 + 16) = v3;
  v5 = sub_1A78C0DCC(v4);
  v7 = v6;

  v8 = sub_1A791EBC0(v5, v7);
  v9 = *(v8 + 16);
  v16 = v2;
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v20 = v8 + 32;
  v21 = 0;
  v22 = (2 * v9) | 1;
  v15 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793A8E8(&v16, v14);
  sub_1A79198AC(0x30uLL, &v15, &v16);
  v10 = sub_1A78C0DCC(v15);

  sub_1A78C5F48(&v16);
  return v10;
}

uint64_t sub_1A79396CC(uint64_t (*a1)(void))
{
  v7 = *v1;
  v2 = a1();
  v4 = v3;
  v5 = sub_1A78E3E4C(0x4B2043494C425550, 0xEA00000000005945);

  sub_1A78C0AFC(v2, v4);
  return v5;
}

uint64_t sub_1A793983C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(void *, uint64_t *)@<X3>, void (*a5)(void *, uint64_t *)@<X4>, unint64_t *a6@<X8>)
{
  result = sub_1A78E4D98(a1, a2);
  if (!v6)
  {
    v15 = result;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v41 = a6;
    if (result == 0x4156495250204345 && v12 == 0xEE0059454B204554 || (sub_1A793DEC8() & 1) != 0)
    {
      sub_1A78C0990(v17, v18);
      v19 = sub_1A791EBC0(v17, v18);
      sub_1A78BDFE0(v19, v19 + 32, 0, (2 * *(v19 + 16)) | 1, v34);

      v20 = sub_1A7920BEC(v34, 0x30u, v35);
      v39[0] = *&v35[40];
      v39[1] = v36;
      result = a3(v20);
      if (result)
      {
        swift_unknownObjectRetain();
        v22 = getccec_full_ctx_size();
        MEMORY[0x1EEE9AC00](v22);
        v24 = sub_1A78C05E8(v23, a4);
        v25 = v41;
        v28 = v24;
        sub_1A78FFBA4(v35);

        sub_1A78C0AFC(v17, v18);
        result = sub_1A793A988(v39);
        *v25 = v28;
        return result;
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if ((v15 != 0x2045544156495250 || v16 != 0xEB0000000059454BLL) && (sub_1A793DEC8() & 1) == 0)
    {
      sub_1A78D6B80();
      swift_allocError();
      *v27 = 7;
      swift_willThrow();

      return sub_1A78C0AFC(v17, v18);
    }

    sub_1A78C0990(v17, v18);
    v21 = sub_1A791EBC0(v17, v18);
    sub_1A78BDFE0(v21, v21 + 32, 0, (2 * *(v21 + 16)) | 1, v37);

    v26 = sub_1A78FF96C(v37, 0x30u, v38);
    v40[0] = v38[5];
    v40[1] = v38[6];
    result = a3(v26);
    if (!result)
    {
      goto LABEL_17;
    }

    swift_unknownObjectRetain();
    v29 = getccec_full_ctx_size();
    MEMORY[0x1EEE9AC00](v29);
    v31 = sub_1A78C05E8(v30, a5);
    v32 = v41;
    v33 = v31;
    sub_1A78FFC18(v38);

    sub_1A78C0AFC(v17, v18);
    result = sub_1A793A988(v40);
    *v32 = v33;
  }

  return result;
}

uint64_t sub_1A7939CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, void (*a5)(void *, uint64_t *)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, unint64_t *a7@<X8>)
{
  v43 = a6;
  v30 = a7;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v15);
  v17 = *(*(*(a3 + 8) + 8) + 8);
  v18 = sub_1A793DB38();
  v19 = (2 * *(v18 + 16)) | 1;
  sub_1A78BDFE0(v18, v18 + 32, 0, v19, v33);
  if (v7)
  {
    sub_1A78BDFE0(v18, v18 + 32, 0, v19, v37);

    v21 = sub_1A7920BEC(v37, 0x30u, v38);
    v41[0] = v39;
    v41[1] = v40;
    v31 = v39;
    v32 = v40;
    result = a4(v21);
    if (result)
    {
      swift_unknownObjectRetain();
      v25 = getccec_full_ctx_size();
      MEMORY[0x1EEE9AC00](v25);
      *(&v29 - 2) = &v31;
      *(&v29 - 1) = v26;
      v27 = sub_1A78C05E8(v26, v43);
      MEMORY[0x1AC55E410](v7);
      sub_1A78FFBA4(v38);
      (*(v13 + 8))(a1, a2);
      result = sub_1A793A988(v41);
      v28 = v27;
      goto LABEL_8;
    }
  }

  else
  {
    v20 = sub_1A78FF96C(v33, 0x30u, v34);
    v42[0] = v35;
    v42[1] = v36;
    v31 = v35;
    v32 = v36;
    result = a4(v20);
    if (result)
    {
      swift_unknownObjectRetain();
      v23 = getccec_full_ctx_size();
      v29 = &v29;
      MEMORY[0x1EEE9AC00](v23);
      *(&v29 - 2) = &v31;
      *(&v29 - 1) = v24;
      v28 = sub_1A78C05E8(v24, a5);
      sub_1A78FFC18(v34);

      (*(v13 + 8))(a1, a2);
      result = sub_1A793A988(v42);
LABEL_8:
      *v30 = v28;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A793A0A0(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(&v5, v3 + 32, v3 + 32 + *(v3 + 16));
  return v5;
}

uint64_t _s9CryptoKit4P256O12KeyAgreementO07PrivateD0V18x963Representation10Foundation4DataVvg_0()
{
  v1 = ccec_x963_export_size((*v0 + 32));
  v2 = sub_1A793DB28();
  *(v2 + 16) = v1;
  ccec_x963_export();
  *(v2 + 16) = v1;
  v3 = sub_1A78C0DCC(v2);

  return v3;
}

uint64_t P521.KeyAgreement.PrivateKey.derRepresentation.getter()
{
  v1 = *v0;
  if (qword_1EB2A6DA0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB2ADAE8;
  v16 = unk_1EB2ADB00;
  v17 = *(&xmmword_1EB2ADAE8 + 8);
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  sub_1A793DB18();
  sub_1A790211C(v1 + 32, &v20);
  v4 = sub_1A791EBC0(v20, v21);
  if (!ccec_cp_521())
  {
    goto LABEL_10;
  }

  v5 = getccec_pub_ctx_size();
  if (v5 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = v5;

  if (v6)
  {
    v7 = sub_1A793DB28();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  memcpy((v7 + 32), (v1 + 32), v6);
  *(v7 + 16) = v6;

  v8 = ccec_export_pub_size((v7 + 32));
  v9 = sub_1A793DB28();
  *(v9 + 16) = v8;
  ccec_export_pub();
  *(v9 + 16) = v8;
  v10 = sub_1A78C0DCC(v9);
  v12 = v11;

  v13 = sub_1A791EBC0(v10, v12);
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  sub_1A7920DC4(v4, v24, v13, &v23);
  v20 = v2;
  v22 = v16;
  v21 = v17;
  v19 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A793AA0C(&v20, v18);
  sub_1A791BDC8(48, &v19, &v20);
  sub_1A78FFC18(&v20);
  v14 = sub_1A78C0DCC(v19);

  sub_1A78FFC18(&v20);
  return v14;
}

uint64_t P384.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A7936928(a1, MEMORY[0x1E69E9518], sub_1A78E396C, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t P521.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1A7936928(a1, MEMORY[0x1E69E9520], sub_1A78E396C, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A793A590@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
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

uint64_t sub_1A793A658(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = *a1;
  v7[2] = *v4;
  return a4(v7);
}

uint64_t *sub_1A793A698(uint64_t *result, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = a3[2];
  v8 = a3[3] >> 1;
  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    result = sub_1A7936B00(a3[1] + v7, a3[1] + v7 + v10, result, a5, a6);
    if (!v6)
    {
      *a2 = a4;
    }
  }

  return result;
}

uint64_t sub_1A793A6F8(uint64_t result, unint64_t a2, char a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = result;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(result + 16);
  v11 = *(result + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = HIDWORD(result) - result;
  }

LABEL_11:
  result = a4();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  result = [objc_opt_self() groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(result, 8))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 == result + 8)
  {
    v13 = getccec_full_ctx_size();
    if (a3)
    {
      v14 = 9;
    }

    else
    {
      v14 = 1;
    }

    return a5(v13, v8, a2, v14, v13);
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v15 = 1;
    *(v15 + 4) = 1;
    return swift_willThrow();
  }
}

unint64_t sub_1A793A840()
{
  result = qword_1ED5F89D0;
  if (!qword_1ED5F89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5F89D0);
  }

  return result;
}

unint64_t sub_1A793A894()
{
  result = qword_1EB2A7AF8;
  if (!qword_1EB2A7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A7AF8);
  }

  return result;
}

uint64_t sub_1A793B034(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1 + 32;
  v5 = v4 + *(*v1 + 16);
  sub_1A793B1CC(v4, &v7);
  return v7;
}

uint64_t sub_1A793B0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  swift_beginAccess();
  v8 = v5 + 32 + *(v5 + 16);
  v6 = *(a3 + 8);
  return sub_1A793D6A8();
}

uint64_t sub_1A793B1CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __break(1u);
  }

  MEMORY[0x1EEE9AC00](a1);
  v4 = *(v3 + 8);
  result = sub_1A793D6A8();
  *a2 = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A793B2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t (*a5)(void)@<X6>, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t *a7@<X8>)
{
  v11 = a5();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1A78C0990(v11, v12);
  sub_1A78C0990(v15, v17);
  v18 = a6(v11, v13, v11, v13, v15, v17, a1, a2, a3, a4);
  sub_1A78C0AFC(v11, v13);
  result = sub_1A78C0AFC(v15, v17);
  *a7 = v18;
  return result;
}

uint64_t sub_1A793B388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_1A793B2A0(a1, a2, v3[4], v3[5], sub_1A793D50C, sub_1A793BE0C, a3);
}

uint64_t sub_1A793B488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_1A793B2A0(a1, a2, v3[4], v3[5], sub_1A793C584, sub_1A793BE0C, a3);
}

uint64_t sub_1A793B52C(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = sub_1A78C57C4(result, v12, 1, v7);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v3 && v4 && v4 > v3 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v3, v15);
    v3 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v3;
  v22 = v3 + 1;
  v23 = v24;
  while (1)
  {
    v25 = *(v7 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  result = sub_1A78C57C4((v25 > 1), v21 + 1, 1, v7);
  v7 = result;
  v26 = *(result + 24) >> 1;
  if (v21 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v21 + 32;
  while (1)
  {
    *(v7 + v27) = v23;
    if (v22 == v4)
    {
      break;
    }

    v28 = *v22++;
    v23 = v28;
    if (++v27 - v26 == 32)
    {
      v21 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v27 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_1A793B6DC(uint64_t result, unint64_t a2, unint64_t a3)
{
  v7 = (71 - __clz(a3)) >> 3;
  if (v7 < result)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = result - a2;
  v3 = *v4;
  v11 = *(*v4 + 2);
  v5 = v11 + result - a2;
  if (__OFADD__(v11, result - a2))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v3 + 3) >> 1, v15 < v5))
  {
    if (v11 <= v5)
    {
      v16 = v5;
    }

    else
    {
      v16 = v11;
    }

    v3 = sub_1A78C57C4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
    v15 = *(v3 + 3) >> 1;
  }

  v17 = *(v3 + 2);
  v18 = v15 - v17;
  result = sub_1A793D08C(&v34, &v3[v17 + 32], v15 - v17, v9, a2, a3);
  if (result < v10)
  {
    goto LABEL_19;
  }

  if (result >= 1)
  {
    v19 = *(v3 + 2);
    v20 = __OFADD__(v19, result);
    v7 = v19 + result;
    if (v20)
    {
      __break(1u);
LABEL_38:
      *(v3 + 2) = v6 - 31;
      goto LABEL_15;
    }

    *(v3 + 2) = v7;
  }

  if (result != v18)
  {
LABEL_15:
    *v4 = v3;
    return result;
  }

LABEL_20:
  v21 = v35;
  v22 = v37;
  if (!__OFSUB__(v37, v35))
  {
    if (v37 == v35)
    {
      goto LABEL_15;
    }

    v23 = *(v3 + 2);
    v24 = v34;
    v25 = v36;
    result = sub_1A793D004(v37, v34, v35, v36, v7);
    v26 = v22 - 1;
    if (v22 >= 1)
    {
      v5 = (71 - __clz(v25)) >> 3;
      if (v5 >= v22)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    do
    {
LABEL_25:
      while (1)
      {
        *(v3 + 2) = v23;
LABEL_26:
        v27 = *(v3 + 3);
        v28 = v27 >> 1;
        if ((v27 >> 1) < v23 + 1)
        {
          break;
        }

        if (v23 < v28)
        {
          goto LABEL_28;
        }
      }

      v32 = result;
      v3 = sub_1A78C57C4((v27 > 1), v23 + 1, 1, v3);
      result = v32;
      v27 = *(v3 + 3);
      v28 = v27 >> 1;
    }

    while (v23 >= (v27 >> 1));
LABEL_28:
    v6 = v23 + 32;
    v33 = v28;
    v29 = -v28;
    v30 = v26;
    while (1)
    {
      v3[v6] = result;
      if (__OFSUB__(v30, v21))
      {
        break;
      }

      if (v21 == v30)
      {
        goto LABEL_38;
      }

      result = sub_1A793D004(v30, v24, v21, v25, v27);
      if (v26 > v5)
      {
        goto LABEL_40;
      }

      if (v30-- < 1)
      {
        goto LABEL_40;
      }

      ++v6;
      v27 = v29 + v6;
      if (v29 + v6 == 32)
      {
        v23 = v33;
        v26 = v30;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A793B930(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  sub_1A793DB18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7100, &unk_1A7946B00);
  if (!swift_dynamicCast())
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_1A78C2ADC(v41, &qword_1EB2A6F18, &qword_1A793F240);
    result = sub_1A793D1EC(a1, a2);
    if ((result & 1) == 0)
    {
      goto LABEL_68;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

LABEL_8:
    v8 = *v2;
    v9 = v2[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_18;
      }

      v13 = v8 + 16;
      v8 = *(v8 + 16);
      v11 = *(v13 + 8);
      v12 = v11 - v8;
      if (!__OFSUB__(v11, v8))
      {
LABEL_18:
        if (__OFADD__(v11, v7))
        {
          __break(1u);
        }

        else if (v11 + v7 >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v14 = sub_1A793D748();
            MEMORY[0x1EEE9AC00](v14);
            v15 = sub_1A78FE2CC(sub_1A793D400);
            v19 = v16;
            if (v18 == v7)
            {
              v20 = v15;
              v21 = v17;
              if ((v16 & 0x2000000000000000) != 0)
              {
                v22 = HIBYTE(v16) & 0xF;
              }

              else
              {
                v22 = v15 & 0xFFFFFFFFFFFFLL;
              }

              *(v41 + 7) = 0;
              *&v41[0] = 0;
              if (4 * v22 == v17 >> 14)
              {
LABEL_67:

                goto LABEL_68;
              }

              LOBYTE(v23) = 0;
              v24 = (v15 >> 59) & 1;
              if ((v16 & 0x1000000000000000) == 0)
              {
                LOBYTE(v24) = 1;
              }

              v25 = 4 << v24;
              v39 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v40 = v16 & 0xFFFFFFFFFFFFFFLL;
              while (1)
              {
                v26 = v21 & 0xC;
                v27 = v21;
                if (v26 == v25)
                {
                  v27 = sub_1A78E4BE8(v21, v20, v19);
                }

                v28 = v27 >> 16;
                if (v27 >> 16 >= v22)
                {
                  __break(1u);
LABEL_70:
                  __break(1u);
LABEL_71:
                  __break(1u);
LABEL_72:
                  v7 = sub_1A793D9D8();
                  goto LABEL_8;
                }

                if ((v19 & 0x1000000000000000) != 0)
                {
                  v30 = sub_1A793DA18();
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else if ((v19 & 0x2000000000000000) != 0)
                {
                  *&v43 = v20;
                  *(&v43 + 1) = v40;
                  v30 = *(&v43 + v28);
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v29 = v39;
                  if ((v20 & 0x1000000000000000) == 0)
                  {
                    v29 = sub_1A793DE48();
                  }

                  v30 = *(v29 + v28);
                  if (v26 != v25)
                  {
LABEL_40:
                    if ((v19 & 0x1000000000000000) != 0)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_41;
                  }
                }

                v21 = sub_1A78E4BE8(v21, v20, v19);
                if ((v19 & 0x1000000000000000) != 0)
                {
LABEL_44:
                  if (v22 <= v21 >> 16)
                  {
                    goto LABEL_71;
                  }

                  v21 = sub_1A793D9E8();
                  goto LABEL_46;
                }

LABEL_41:
                v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
                *(v41 + v23) = v30;
                v23 = v23 + 1;
                if ((v23 >> 8))
                {
                  goto LABEL_70;
                }

                if (v23 == 14)
                {
                  *&v43 = *&v41[0];
                  *(&v43 + 6) = *(v41 + 6);
                  sub_1A793D788();
                  LOBYTE(v23) = 0;
                }

                if (4 * v22 == v21 >> 14)
                {
                  if (v23)
                  {
                    *&v43 = *&v41[0];
                    *(&v43 + 6) = *(v41 + 6);
                    sub_1A793D788();
                  }

                  goto LABEL_67;
                }
              }
            }

            v31 = 0;
            v32 = *v2;
            v33 = v2[1];
            v34 = v33 >> 62;
            if ((v33 >> 62) > 1)
            {
              if (v34 == 2)
              {
                v31 = *(v32 + 16);
              }
            }

            else if (v34)
            {
              v31 = v32;
            }

            v35 = __OFADD__(v31, v12);
            v36 = v31 + v12;
            if (!v35)
            {
              if (!__OFADD__(v36, v18))
              {
                if (v34 > 1)
                {
                  if (v34 == 2)
                  {
                    v37 = *(v32 + 24);
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else if (v34)
                {
                  v37 = v32 >> 32;
                }

                else
                {
                  v37 = BYTE6(v33);
                }

                if (v37 >= v36 + v18)
                {
                  sub_1A793D758();
                  goto LABEL_67;
                }

                goto LABEL_78;
              }

LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        __break(1u);
        goto LABEL_75;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
    goto LABEL_18;
  }

  sub_1A78C78FC(v41, &v43);
  v5 = __swift_project_boxed_opaque_existential_1(&v43, v44);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A793D6A8();
  result = __swift_destroy_boxed_opaque_existential_1(&v43);
LABEL_68:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A793BE0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *MEMORY[0x1E69E9840];
  result = sub_1A78C8B74(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_1A78C8E60);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A793BE74(unint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = sub_1A793C0D4(a1);
    return sub_1A793B6DC(v3, v4, v5);
  }

  else
  {
    v7 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if ((result & 1) == 0)
    {
      result = sub_1A78C57C4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *a2 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_1A78C57C4((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
      *a2 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + v9 + 32) = 0;
  }

  return result;
}

void sub_1A793BF34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a5;
  if (a4 >> 1 != a3)
  {
    if ((a4 >> 1) <= a3)
    {
      __break(1u);
    }

    else
    {
      if ((*(a2 + a3) & 0x80000000) == 0)
      {
        v13 = sub_1A793C31C(a1, a2, a3, a4);
LABEL_14:
        sub_1A78C5A88(v13, v14, v15, v16);
        return;
      }

      v8 = a2;
      v7 = a3;
      v6 = a4;
      v9 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v9;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_11:
        v18 = *(v9 + 2);
        v19 = *(v9 + 3);
        v20 = v18 + 1;
        if (v18 >= v19 >> 1)
        {
          v24 = v18 + 1;
          v21 = v9;
          v22 = *(v9 + 2);
          v23 = sub_1A78C57C4((v19 > 1), v18 + 1, 1, v21);
          v18 = v22;
          v20 = v24;
          v9 = v23;
          *v5 = v23;
        }

        *(v9 + 2) = v20;
        v9[v18 + 32] = 0;
        v13 = swift_unknownObjectRetain();
        v14 = v8;
        v15 = v7;
        v16 = v6;
        goto LABEL_14;
      }
    }

    v9 = sub_1A78C57C4(0, *(v9 + 2) + 1, 1, v9);
    *v5 = v9;
    goto LABEL_11;
  }

  v6 = *a5;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if ((v10 & 1) == 0)
  {
LABEL_16:
    v6 = sub_1A78C57C4(0, *(v6 + 2) + 1, 1, v6);
    *v5 = v6;
  }

  v12 = *(v6 + 2);
  v11 = *(v6 + 3);
  if (v12 >= v11 >> 1)
  {
    v6 = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v6);
    *v5 = v6;
  }

  *(v6 + 2) = v12 + 1;
  v6[v12 + 32] = 0;
}

unint64_t sub_1A793C0D4(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = __clz(a1);
  v3 = (71 - v2) >> 3;
  v4 = sub_1A793D004(v3, v3, 0, a1, 71 - v2);
  if (v4 != 255 && v4 != 0)
  {
    return (71 - v2) >> 3;
  }

  if (a1 < 0x100)
  {
    return 1;
  }

  v6 = v3 - 1;
  if (v4 != (a1 >> (8 * ((v3 - 1) & 7))))
  {
    return (71 - v2) >> 3;
  }

  v7 = (71 - v2) >> 3;
  if (((v4 ^ (a1 >> ((55 - v2) & 0x38))) & 0x80) == 0)
  {
    if (a1 < 0x10000)
    {
      return 1;
    }

    v8 = v3 - 2;
    if (v4 != (a1 >> (8 * ((v3 - 2) & 7))))
    {
      return v6;
    }

    v7 = v3 - 1;
    if (((v4 ^ (a1 >> ((8 * v6 + 48) & 0x38))) & 0x80) != 0)
    {
      return v7;
    }

    if (!(a1 >> 24))
    {
      return 1;
    }

    v6 = v3 - 3;
    if (v4 != (a1 >> (8 * ((v3 - 3) & 7))))
    {
      return v8;
    }

    v7 = v3 - 2;
    if (((v4 ^ (a1 >> ((8 * v8 + 48) & 0x38))) & 0x80) != 0)
    {
      return v7;
    }

    if (!HIDWORD(a1))
    {
      return 1;
    }

    v8 = v3 - 4;
    if (v4 != (a1 >> (8 * ((v3 - 4) & 7))))
    {
      return v6;
    }

    v7 = v3 - 3;
    if (((v4 ^ (a1 >> ((8 * v6 + 48) & 0x38))) & 0x80) != 0)
    {
      return v7;
    }

    if (!(a1 >> 40))
    {
      return 1;
    }

    if (v4 != (a1 >> (8 * ((v3 - 5) & 7))))
    {
      return v8;
    }

    v7 = v3 - 4;
    if (((v4 ^ (a1 >> ((8 * v8 + 48) & 0x38))) & 0x80) != 0)
    {
      return v7;
    }

    if (!HIWORD(a1))
    {
      return 1;
    }

    v6 = v3 - 6;
    if (v4 != (a1 >> (8 * ((v3 - 6) & 7))))
    {
      return v3 - 5;
    }

    v7 = v3 - 5;
    if (((v4 ^ (a1 >> ((8 * (v3 - 5) + 48) & 0x38))) & 0x80) == 0)
    {
      if (HIBYTE(a1))
      {
        if (v4 == (a1 >> ((15 - v2) & 0x38)))
        {
          if (((v4 ^ (a1 >> ((8 * v6 + 48) & 0x38))) & 0x80u) == 0)
          {
            return 1;
          }

          else
          {
            return v3 - 6;
          }
        }

        return v6;
      }

      return 1;
    }
  }

  return v7;
}

uint64_t sub_1A793C31C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if ((a4 >> 1) < a3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a4 >> 1 == a3)
  {
    return swift_unknownObjectRetain();
  }

  if (v4 > a3)
  {
    v5 = *(a2 + a3);
    if (v5 != 255 && v5 != 0)
    {
      return swift_unknownObjectRetain();
    }

    v7 = a3 + 1;
    v8 = *(a2 + a3);
    while (!__OFSUB__(v4, v7 - 1))
    {
      if (v4 - (v7 - 1) < 2 || v8 != v5)
      {
        return swift_unknownObjectRetain();
      }

      if (v4 == v7)
      {
        goto LABEL_21;
      }

      if (v7 >= v4)
      {
        goto LABEL_22;
      }

      v8 = *(a2 + v7++);
      if (((v8 ^ v5) & 0x80) != 0)
      {
        return swift_unknownObjectRetain();
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

void *sub_1A793C3D8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A793C444(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1A793C4C4(char **a1, __int128 *a2)
{
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v10 = &v11;
  result = sub_1A791C348(2, a1, sub_1A793D3C0, v9);
  if (!v2)
  {
    v7 = a2[3];
    v11 = a2[2];
    v12 = v7;
    MEMORY[0x1EEE9AC00](result);
    v8[2] = &v11;
    return sub_1A791C348(2, a1, sub_1A793D560, v8);
  }

  return result;
}

uint64_t sub_1A793C5B4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a4 + 32;
  v5 = a3[1];
  v16[0] = *a3;
  v16[1] = v5;
  v16[2] = a3[2];
  HIBYTE(v17) = 0;
  v18 = a1;
  v19 = a2;
  v6 = sub_1A78C883C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1A78C0990(v6, v7);
  sub_1A78C0990(v10, v12);
  v13 = sub_1A78C8B74(v6, v8, v6, v8, v10, v12, v16, &v17, v4, &v17 + 7, sub_1A78C8E60);
  sub_1A78C0AFC(v6, v8);
  sub_1A78C0AFC(v10, v12);
  v14 = *MEMORY[0x1E69E9840];
  return (v13 == 0) & HIBYTE(v17);
}

uint64_t sub_1A793C6F8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a4 + 32;
  v5 = a3[1];
  v17[0] = *a3;
  v17[1] = v5;
  v6 = a3[3];
  v17[2] = a3[2];
  v17[3] = v6;
  HIBYTE(v18) = 0;
  v19 = a1;
  v20 = a2;
  v7 = sub_1A78C883C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1A78C0990(v7, v8);
  sub_1A78C0990(v11, v13);
  v14 = sub_1A78C8B74(v7, v9, v7, v9, v11, v13, v17, &v18, v4, &v18 + 7, sub_1A78C8E60);
  sub_1A78C0AFC(v7, v9);
  sub_1A78C0AFC(v11, v13);
  v15 = *MEMORY[0x1E69E9840];
  return (v14 == 0) & HIBYTE(v18);
}

uint64_t P256.Signing.ECDSASignature.rawRepresentation.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A78C0AFC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t P256.Signing.ECDSASignature.withUnsafeBytes<A>(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A793D7A8();
}

uint64_t sub_1A793C950(unint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v4 + 16);
    v7 = *(v4 + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v3);
LABEL_10:
    v10 = v6;
    sub_1A78C0990(v4, v3);
    sub_1A78C3AA4(v10 / 2, v4, v3, &v20);
    v11 = sub_1A791EBC0(v20, *(&v20 + 1));
    v12 = (2 * *(v11 + 16)) | 1;
    sub_1A78C0990(v4, v3);
    sub_1A78C8A28(v10 / 2, v4, v3, &v20);
    v13 = sub_1A791EBC0(v20, *(&v20 + 1));
    v14 = (2 * *(v13 + 16)) | 1;
    *&v20 = v11;
    *(&v20 + 1) = v11 + 32;
    *&v21 = 0;
    *(&v21 + 1) = v12;
    *&v22 = v13;
    *(&v22 + 1) = v13 + 32;
    *&v23 = 0;
    *(&v23 + 1) = v14;
    sub_1A793DB18();
    sub_1A793DB18();
    v19 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    MEMORY[0x1EEE9AC00](v19);
    v17[2] = v18;
    sub_1A7919C8C(48, a1, v17);
    v15 = sub_1A78C0DCC(v19);

    sub_1A78C2ADC(&v20, &qword_1EB2A7408, &qword_1A7941540);
    return v15;
  }

  LODWORD(v6) = HIDWORD(v4) - v4;
  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    v6 = v6;
    goto LABEL_10;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t P384.Signing.PrivateKey.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  return sub_1A793AF90(a1, a2, a3);
}

{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *v3;
  v8 = sub_1A78D14CC();
  static HashFunction.hash<A>(data:)(a1, &type metadata for SHA384, a2, v8, a3);
  swift_beginAccess();
  v9 = *(v7 + 16);
  v12[0] = v15[0];
  v12[1] = v15[1];
  v13 = v16;
  v14 = v17;
  result = sub_1A793AFC4(v12, v15, v7 + 32, v7 + 32 + v9);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t P384.Signing.PublicKey.isValidSignature<A>(_:for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *v4;
  v11 = sub_1A78D14CC();
  static HashFunction.hash<A>(data:)(a2, &type metadata for SHA384, a3, v11, a4);
  v16[0] = v13;
  v16[1] = v14;
  v16[2] = v15;
  return sub_1A793C5B4(v8, v9, v16, v10) & 1;
}

uint64_t P521.Signing.PrivateKey.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  return sub_1A793B09C(a1, a2, a3);
}

{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *v3;
  v8 = sub_1A78CF35C();
  static HashFunction.hash<A>(data:)(a1, &type metadata for SHA512, a2, v8, a3);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  swift_beginAccess();
  v9 = *(v7 + 16);
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  result = sub_1A793B174(v12, &v13, v7 + 32, v7 + 32 + v9);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A793CF1C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__int128 *))
{
  v8 = *v5;
  v7 = *a1;
  return a5(&v7) & 1;
}

uint64_t P521.Signing.PublicKey.isValidSignature<A>(_:for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *v4;
  v11 = sub_1A78CF35C();
  static HashFunction.hash<A>(data:)(a2, &type metadata for SHA512, a3, v11, a4);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = v16;
  return sub_1A793C6F8(v8, v9, v17, v10) & 1;
}

unint64_t sub_1A793D004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int64_t a5@<X8>)
{
  if (a2 < a1 || a3 >= a1)
  {
    __break(1u);
    goto LABEL_12;
  }

  a5 = (a1 - 0x1000000000000001) >> 61;
  if (a5 != 7)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    v7 = a4 << ((8 - v5) & 0x38);
    if (a5 == -64)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  v5 = 8 * a1;
  a5 = 8 * a1 - 8;
  if (a5 < -64)
  {
    return 0;
  }

  if (a5 > 64)
  {
    return 0;
  }

  if (a5 < 0)
  {
    goto LABEL_13;
  }

  if (8 * a1 == 72)
  {
    return 0;
  }

  return a4 >> (a5 & 0x38);
}

int64_t *sub_1A793D08C(int64_t *result, _BYTE *a2, int64_t a3, int64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  if (a3 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (__OFSUB__(a4, a5))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  if (a4 != a5)
  {
    if (a4 > a5)
    {
      v7 = 0;
      v8 = (71 - __clz(a6)) >> 3;
      v9 = 8 - 8 * a4;
      v10 = 8 * a4 - 8;
      while (1)
      {
        if ((a4 - 0x1000000000000001 + v7) >> 61 != 7)
        {
          goto LABEL_34;
        }

        if (v10 < -64)
        {
LABEL_13:
          LOBYTE(v11) = 0;
          if (v8 < a4)
          {
            goto LABEL_30;
          }

          goto LABEL_21;
        }

        if (v10 > 64)
        {
          break;
        }

        if (v10 < 0)
        {
          if (v9 == 64)
          {
            goto LABEL_13;
          }

          v11 = a6 << (v9 & 0x38);
          if (v8 < a4)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            v6 = a4 + v7 - 1;
            goto LABEL_8;
          }
        }

        else
        {
          if (v9 == -64)
          {
            break;
          }

          v11 = a6 >> (v10 & 0x38);
          if (v8 < a4)
          {
            goto LABEL_30;
          }
        }

LABEL_21:
        v12 = a4 + v7;
        if (a4 + v7 < 1)
        {
          goto LABEL_30;
        }

        *a2 = v11;
        if (!(a3 - 1 + v7))
        {
          goto LABEL_31;
        }

        v13 = v12 - 1;
        if (__OFSUB__(v12 - 1, a5))
        {
          goto LABEL_35;
        }

        if (!(a4 - a5 - 1 + v7))
        {
          v6 = a5;
          a3 = a4 - a5;
          goto LABEL_8;
        }

        if (v13 <= a4)
        {
          ++a2;
          --v7;
          v9 += 8;
          v10 -= 8;
          if (v13 > a5)
          {
            continue;
          }
        }

        goto LABEL_33;
      }

      LOBYTE(v11) = 0;
      if (v8 < a4)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_6:
  a3 = 0;
LABEL_7:
  v6 = a4;
LABEL_8:
  *result = a4;
  result[1] = a5;
  result[2] = a6;
  result[3] = v6;
  return a3;
}

unint64_t sub_1A793D1EC(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_1A793DE48();
    }

    sub_1A793D788();
  }

  return v2 >> 60;
}

uint64_t sub_1A793D280(char **a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  v6[0] = *v2;
  v6[1] = v3;
  v4 = v2[3];
  v6[2] = v2[2];
  v6[3] = v4;
  return sub_1A793C4C4(a1, v6);
}

uint64_t sub_1A793D400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 32);
  v7 = *v6;
  v8 = v6[1];
  result = sub_1A793D468(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v10;
    a3[2] = v11;
    a3[3] = v12;
  }

  return result;
}

uint64_t sub_1A793D468(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1A793DB18();
  result = sub_1A793DE38();
  if ((v3 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}