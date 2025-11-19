char *SensitiveRawBuffer.clone(range:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = *v3;
  v6 = v3[1] - *v3;
  if (!*v3)
  {
    v6 = 0;
  }

  if (v6 < a2)
  {
    goto LABEL_14;
  }

  if (a2 < result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v5)
  {
    v7 = v5 + a2;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = &result[v5];
  }

  else
  {
    v8 = 0;
  }

  result = sub_1E0B63520(v8, v7, &v9);
  *a3 = v9;
  return result;
}

void _s13AppleKeyStore18SensitiveRawBufferV9copyBytes4from0I6Offset02toJ05countyx_S3itAA10SourceDataRzRi_zlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 | a2 | a4) < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(a2, a4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*(a6 + 8))(a5, a6) < a2 + a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(a3, a4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v6[1];
  v13 = v12 - *v6;
  if (!*v6)
  {
    v13 = 0;
  }

  if (v13 >= a3 + a4)
  {
    v14[2] = *v6;
    v14[3] = v12;
    v14[4] = a4;
    v14[5] = a3;
    v14[6] = a2;
    (*(a6 + 16))(sub_1E0B63FF4, v14, MEMORY[0x1E69E7CA8] + 8, a5, a6);
    return;
  }

LABEL_13:
  __break(1u);
}

void *SensitiveRawBuffer.toInsecureArray()()
{
  v1 = *v0;
  if (!*v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0 + 8);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1E0B63E84(v2 - v1, 0);
  if (v3 <= 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    memmove(result + 4, v1, v3);
    return v5;
  }

  return result;
}

void _s13AppleKeyStore18SensitiveRawBufferV11concatenateyACx_q_tAA10SourceDataRzAaER_Ri_zRi__r0_lFZ(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v22 = *(a5 + 8);
  v13 = v22(a3, a5);
  v21 = *(a6 + 8);
  v14 = v21(a4, a6);
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v15 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = v16 + v15;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  *a7 = v16;
  a7[1] = v17;
  v18 = v22(a3, a5);
  _s13AppleKeyStore18SensitiveRawBufferV9copyBytes4from0I6Offset02toJ05countyx_S3itAA10SourceDataRzRi_zlF(a1, 0, 0, v18, a3, a5);
  v19 = v22(a3, a5);
  v20 = v21(a4, a6);
  _s13AppleKeyStore18SensitiveRawBufferV9copyBytes4from0I6Offset02toJ05countyx_S3itAA10SourceDataRzRi_zlF(a2, 0, v19, v20, a4, a6);
}

Swift::Bool __swiftcall SensitiveRawBuffer.containsNonZeroBytes()()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v2 = v0[1];
  v3 = v2 - v1;
  if (v2 - v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v2 == v1)
    {
      return 0;
    }

    v5 = 0;
    do
    {
      v6 = *v1++;
      v5 |= v6;
      --v3;
    }

    while (v3);
    return v5 != 0;
  }

  return result;
}

uint64_t _s13AppleKeyStore18SensitiveRawBufferV2eeoiySbAC_xtAA10SourceDataRzRi_zlFZ(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!*a1)
  {
    v4 = 0;
  }

  *&v6[17] = *a1;
  *&v6[25] = v4;
  (*(a4 + 16))(v6, sub_1E0B63F70, &v6[1], MEMORY[0x1E69E6370], a3);
  return v6[0];
}

BOOL _s13AppleKeyStore18SensitiveRawBufferV2neoiySbAC_xtAA10SourceDataRzRi_zlFZ(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!*a1)
  {
    v4 = 0;
  }

  *&v6[17] = *a1;
  *&v6[25] = v4;
  (*(a4 + 16))(v6, sub_1E0B63F70, &v6[1], MEMORY[0x1E69E6370], a3);
  return (v6[0] & 1) == 0;
}

void *sub_1E0B63E08(_BYTE *a1, _BYTE *a2)
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

  result = sub_1E0B63E84(a2 - a1, 0);
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

void *sub_1E0B63E84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE787B0, &qword_1E0BABA88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1E0B63F2C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for AKSUUID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1E0B63F70@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = timingSafeIsMemoryEqual(_:_:)(*(v3 + 16), *(v3 + 24), a1, a2);
  *a3 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_1E0B63FF4(char *result)
{
  v2 = v1[2];
  v3 = v1[4];
  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!v3)
    {
      return result;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3)
  {
    return memcpy((v2 + v1[5]), &result[v1[6]], v3);
  }

  return result;
}

uint64_t sub_1E0B64040(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E0B6409C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DERDictionaryItem()
{
  result = qword_1ECE787B8;
  if (!qword_1ECE787B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E0B64170()
{
  result = type metadata accessor for der_key();
  if (v1 <= 0x3F)
  {
    result = sub_1E0BA8AE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E0B641F4@<X0>(uint64_t a1@<X0>, size_t *a2@<X1>, size_t *a3@<X8>)
{
  v4 = v3;
  v51 = a2;
  v40 = a3;
  v49 = type metadata accessor for DERDictionaryItem();
  v46 = *(v49 - 8);
  v6 = *(v46 + 64);
  v7 = MEMORY[0x1EEE9AC00](v49);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78830, &unk_1E0BABD00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v39 - v14;
  v16 = sub_1E0BA8B08();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v48 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  v47 = a1;
  sub_1E0BA8A98();
  v44 = v17[6];
  v45 = v17 + 6;
  if (v44(v15, 1, v16) == 1)
  {
LABEL_2:
    sub_1E0B67644(v15);
    *v40 = *v51;
  }

  else
  {
    v25 = v17[4];
    v24 = v17 + 4;
    v41 = (v24 - 2);
    v42 = v25;
    v43 = (v24 - 3);
    while (1)
    {
      v42(v22, v15, v16);
      (*v41)(v48, v22, v16);
      sub_1E0B67228(&qword_1ECE78810, type metadata accessor for DERDictionaryItem);
      sub_1E0BA8BB8();
      if (v4)
      {
        return (*v43)(v22, v16);
      }

      v50 = 0;
      v26 = v15;
      v27 = v11;
      v28 = v11;
      v29 = v9;
      sub_1E0B67160(v28, v9, type metadata accessor for DERDictionaryItem);
      v30 = v51;
      v31 = *v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v30 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1E0B66768(0, v31[2] + 1, 1, v31);
        *v51 = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v38 = sub_1E0B66768(v33 > 1, v34 + 1, 1, v31);
        *v51 = v38;
      }

      sub_1E0B671C8(v27, type metadata accessor for DERDictionaryItem);
      (*v43)(v22, v16);
      v35 = *v51;
      *(v35 + 16) = v34 + 1;
      v36 = v35 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v34;
      v9 = v29;
      v11 = v27;
      sub_1E0B67494(v9, v36, type metadata accessor for DERDictionaryItem);
      v15 = v26;
      sub_1E0BA8A98();
      v37 = v44(v26, 1, v16);
      v4 = v50;
      if (v37 == 1)
      {
        goto LABEL_2;
      }
    }
  }
}

uint64_t sub_1E0B64650@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DERDictionaryItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (result = , (v10 = *(a1 + 16)) != 0))
  {
    v11 = 0;
    while (v11 < v10)
    {
      sub_1E0B67160(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, type metadata accessor for DERDictionaryItem);
      sub_1E0BA8A28();
      sub_1E0B67228(&qword_1ECE78818, MEMORY[0x1E69D4E48]);
      if (sub_1E0BA8CA8())
      {
        sub_1E0B67494(v8, a2, type metadata accessor for DERDictionaryItem);
      }

      ++v11;
      result = sub_1E0B671C8(v8, type metadata accessor for DERDictionaryItem);
      v10 = *(a1 + 16);
      if (v11 == v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1E0B67560();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_1E0B64850(uint64_t a1)
{
  v3 = type metadata accessor for DERDictionaryItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*v1)
  {
    *v1 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v6);
  *&v15[-16] = a1;
  v9 = 0;
  v10 = sub_1E0B66B38(sub_1E0B676AC, &v15[-32]);
  v11 = *(*v1 + 16);
  if (v11 < v10)
  {
    __break(1u);
LABEL_11:
    v9 = sub_1E0B66768(0, v9[2] + 1, 1, v9);
    goto LABEL_6;
  }

  result = sub_1E0B673D4(v10, v11);
  if (!*v1)
  {
    return result;
  }

  sub_1E0B67160(a1, v8, type metadata accessor for DERDictionaryItem);
  v9 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_1E0B66768(v13 > 1, v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  result = sub_1E0B67494(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for DERDictionaryItem);
  *v1 = v9;
  return result;
}

uint64_t sub_1E0B64A30(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E0BA8AE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for der_key();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DERDictionaryItem();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0B67160(a1, v13, type metadata accessor for der_key);
  v20[3] = a2;
  sub_1E0BA8AD8();
  if (v2)
  {
    sub_1E0B671C8(v13, type metadata accessor for der_key);
    sub_1E0B67560();
    swift_allocError();
    *v18 = 22;
    swift_willThrow();
    return MEMORY[0x1E12E8B70](v2);
  }

  else
  {
    sub_1E0B67494(v13, v17, type metadata accessor for der_key);
    (*(v6 + 32))(&v17[*(v14 + 20)], v9, v5);
    sub_1E0B64850(v17);
    return sub_1E0B671C8(v17, type metadata accessor for DERDictionaryItem);
  }
}

uint64_t sub_1E0B64CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E0BA8A88();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1E0BA8AE8();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for der_key();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DERDictionaryItem();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0B67160(a1, v15, type metadata accessor for der_key);
  v20 = (2 * *(a2 + 16)) | 1;

  sub_1E0BA8A58();
  sub_1E0BA8AD8();
  if (v3)
  {
    sub_1E0B671C8(v15, type metadata accessor for der_key);
    sub_1E0B67560();
    swift_allocError();
    *v21 = 22;
    swift_willThrow();
    return MEMORY[0x1E12E8B70](v3);
  }

  else
  {
    sub_1E0B67494(v15, v19, type metadata accessor for der_key);
    (*(v23 + 32))(&v19[*(v16 + 20)], v11, v24);
    sub_1E0B64850(v19);
    return sub_1E0B671C8(v19, type metadata accessor for DERDictionaryItem);
  }
}

uint64_t sub_1E0B64F78(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DERDictionaryItem();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - v12;
  sub_1E0B67160(a1, v23 - v12, type metadata accessor for der_key);
  v14 = *(v6 + 28);
  v15 = sub_1E0BA8AE8();
  v16 = (*(*(v15 - 8) + 16))(&v13[v14], a2, v15);
  if (!*v2)
  {
    *v2 = MEMORY[0x1E69E7CC0];
  }

  v17 = v23;
  MEMORY[0x1EEE9AC00](v16);
  v23[-2] = v13;
  v18 = sub_1E0B66B38(sub_1E0B67270, &v23[-4]);
  v19 = *(*v2 + 16);
  if (v19 < v18)
  {
    __break(1u);
LABEL_11:
    v17 = sub_1E0B66768(0, v17[2] + 1, 1, v17);
    goto LABEL_6;
  }

  sub_1E0B673D4(v18, v19);
  if (!*v2)
  {
    return sub_1E0B671C8(v13, type metadata accessor for DERDictionaryItem);
  }

  sub_1E0B67160(v13, v11, type metadata accessor for DERDictionaryItem);
  v17 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v21 = v17[2];
  v20 = v17[3];
  if (v21 >= v20 >> 1)
  {
    v17 = sub_1E0B66768(v20 > 1, v21 + 1, 1, v17);
  }

  v17[2] = v21 + 1;
  sub_1E0B67494(v11, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, type metadata accessor for DERDictionaryItem);
  *v2 = v17;
  return sub_1E0B671C8(v13, type metadata accessor for DERDictionaryItem);
}

uint64_t sub_1E0B6520C()
{
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78818, MEMORY[0x1E69D4E48]);
  return sub_1E0BA8CA8() & 1;
}

uint64_t sub_1E0B6529C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
  }

  v11 = 0;
  while (v11 < v10)
  {
    sub_1E0B67160(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, type metadata accessor for DERDictionaryItem);
    sub_1E0B67228(&qword_1ECE787D8, type metadata accessor for DERDictionaryItem);
    sub_1E0BA8C08();
    if (v2)
    {
      sub_1E0B671C8(v8, type metadata accessor for DERDictionaryItem);
    }

    ++v11;
    result = sub_1E0B671C8(v8, type metadata accessor for DERDictionaryItem);
    v10 = *(a2 + 16);
    if (v11 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B6545C(uint64_t a1)
{
  v2 = type metadata accessor for DERDictionaryItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0BA8F48();
  if (a1)
  {
    sub_1E0BA8F68();
    v7 = *(a1 + 16);
    MEMORY[0x1E12E7CF0](v7);
    if (v7)
    {
      v8 = *(v2 + 20);
      v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v10 = *(v3 + 72);
      do
      {
        sub_1E0B67160(v9, v6, type metadata accessor for DERDictionaryItem);
        sub_1E0BA8A28();
        sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48]);
        sub_1E0BA8C88();
        sub_1E0BA8AE8();
        sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88]);
        sub_1E0BA8C88();
        sub_1E0B671C8(v6, type metadata accessor for DERDictionaryItem);
        v9 += v10;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_1E0BA8F68();
  }

  return sub_1E0BA8F98();
}

uint64_t sub_1E0B65664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E0B66F60(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E0B656EC()
{
  v1 = type metadata accessor for DERDictionaryItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (!*v0)
  {
    return sub_1E0BA8F68();
  }

  sub_1E0BA8F68();
  result = MEMORY[0x1E12E7CF0](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = *(v1 + 20);
    v10 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_1E0B67160(v10, v5, type metadata accessor for DERDictionaryItem);
      sub_1E0BA8A28();
      sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48]);
      sub_1E0BA8C88();
      sub_1E0BA8AE8();
      sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88]);
      sub_1E0BA8C88();
      result = sub_1E0B671C8(v5, type metadata accessor for DERDictionaryItem);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1E0B658DC()
{
  v1 = type metadata accessor for DERDictionaryItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1E0BA8F48();
  if (v6)
  {
    sub_1E0BA8F68();
    MEMORY[0x1E12E7CF0](*(v6 + 16));
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *(v1 + 20);
      v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v10 = *(v2 + 72);
      do
      {
        sub_1E0B67160(v9, v5, type metadata accessor for DERDictionaryItem);
        sub_1E0BA8A28();
        sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48]);
        sub_1E0BA8C88();
        sub_1E0BA8AE8();
        sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88]);
        sub_1E0BA8C88();
        sub_1E0B671C8(v5, type metadata accessor for DERDictionaryItem);
        v9 += v10;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_1E0BA8F68();
  }

  return sub_1E0BA8F98();
}

uint64_t sub_1E0B65B7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *a2;

      v5 = sub_1E0B69314(v2, v3);

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E0B65BDC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1E0BA8AE8();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E0BA89F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E0BA8A28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for der_key();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0BA8B88();
  v15 = v25;
  result = sub_1E0BA8B98();
  if (!v15)
  {
    v18 = v22;
    v17 = v23;
    (*(v7 + 32))(v14, v10, v6);
    v19 = v24;
    sub_1E0BA8B48();
    sub_1E0B67494(v14, v17, type metadata accessor for der_key);
    v20 = type metadata accessor for DERDictionaryItem();
    return (*(v18 + 32))(v17 + *(v20 + 20), v19, v1);
  }

  return result;
}

uint64_t sub_1E0B65EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for der_key();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0B67160(a2, v7, type metadata accessor for der_key);
  v8 = sub_1E0BA8A28();
  sub_1E0BA8C08();
  if (v2)
  {
    return (*(*(v8 - 8) + 8))(v7, v8);
  }

  (*(*(v8 - 8) + 8))(v7, v8);
  v10 = *(type metadata accessor for DERDictionaryItem() + 20);
  sub_1E0BA8AE8();
  return sub_1E0BA8C08();
}

uint64_t sub_1E0B66000(uint64_t a1, uint64_t a2)
{
  sub_1E0BA8C58();
  v4 = sub_1E0BA89F8();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_1E0BA8B08();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_1E0B66114(uint64_t a1)
{
  sub_1E0BA8F48();
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48]);
  sub_1E0BA8C88();
  v2 = *(a1 + 20);
  sub_1E0BA8AE8();
  sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88]);
  sub_1E0BA8C88();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B66200(uint64_t a1, uint64_t a2)
{
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48]);
  sub_1E0BA8C88();
  v3 = *(a2 + 20);
  sub_1E0BA8AE8();
  sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88]);
  return sub_1E0BA8C88();
}

uint64_t sub_1E0B662D4(uint64_t a1, uint64_t a2)
{
  sub_1E0BA8F48();
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78800, MEMORY[0x1E69D4E48]);
  sub_1E0BA8C88();
  v3 = *(a2 + 20);
  sub_1E0BA8AE8();
  sub_1E0B67228(&qword_1ECE78808, MEMORY[0x1E69D4E88]);
  sub_1E0BA8C88();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B664B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78818, MEMORY[0x1E69D4E48]);
  if ((sub_1E0BA8CA8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_1E0BA8AC8();
}

unint64_t sub_1E0B66648()
{
  result = qword_1ECE787E0;
  if (!qword_1ECE787E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE787E0);
  }

  return result;
}

unint64_t sub_1E0B666A0()
{
  result = qword_1ECE787E8;
  if (!qword_1ECE787E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE787E8);
  }

  return result;
}

unint64_t sub_1E0B666F8()
{
  result = qword_1ECE787F0;
  if (!qword_1ECE787F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE787F0);
  }

  return result;
}

size_t sub_1E0B66768(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78820, &qword_1E0BABCF8);
  v10 = *(type metadata accessor for DERDictionaryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for DERDictionaryItem() - 8);
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

char *sub_1E0B66940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE787B0, &qword_1E0BABA88);
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

char *sub_1E0B66A34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E0B66B38(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for DERDictionaryItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = *v2;
  result = sub_1E0B66E60(a1, a2, *v2);
  if (!v3)
  {
    v41 = v16;
    v44 = 0;
    if (v19)
    {
      return v17[2];
    }

    v34 = v2;
    v35 = v11;
    v38 = a1;
    v42 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v17 + 2;
      v21 = v17[2];
      v23 = v41;
      if (v20 == v21)
      {
        return v42;
      }

      v36 = a2;
      v37 = v7;
      while (v20 < v21)
      {
        v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v43 = v17;
        v39 = v24;
        v25 = v17 + v24;
        v26 = *(v7 + 72);
        v40 = v26 * v20;
        sub_1E0B67160(&v25[v26 * v20], v23, type metadata accessor for DERDictionaryItem);
        v27 = v44;
        v28 = v38(v23);
        result = sub_1E0B671C8(v23, type metadata accessor for DERDictionaryItem);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          v7 = v37;
          v23 = v41;
          v17 = v43;
        }

        else
        {
          v23 = v41;
          v29 = v42;
          if (v20 == v42)
          {
            v7 = v37;
            v17 = v43;
          }

          else
          {
            if ((v42 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v22;
            if (v42 >= *v22)
            {
              goto LABEL_27;
            }

            v31 = v26 * v42;
            result = sub_1E0B67160(&v25[v26 * v42], v14, type metadata accessor for DERDictionaryItem);
            if (v20 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v40;
            sub_1E0B67160(&v25[v40], v35, type metadata accessor for DERDictionaryItem);
            v17 = v43;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1E0B66F4C(v17);
            }

            v33 = v17 + v39;
            result = sub_1E0B674FC(v35, v17 + v39 + v31);
            v7 = v37;
            if (v20 >= v17[2])
            {
              goto LABEL_29;
            }

            result = sub_1E0B674FC(v14, &v33[v32]);
            *v34 = v17;
            v29 = v42;
          }

          v42 = v29 + 1;
        }

        ++v20;
        v22 = v17 + 2;
        v21 = v17[2];
        if (v20 == v21)
        {
          return v42;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E0B66E60(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for DERDictionaryItem() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1E0B66F60(uint64_t a1, uint64_t a2)
{
  sub_1E0BA8C38();
  v5 = sub_1E0BA89F8();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_1E0BA8B08();
  (*(*(v6 - 8) + 8))(a1, v6);
  if (!v2)
  {
    a1 = v8;
  }

  return a1;
}

unint64_t sub_1E0B670F0()
{
  result = qword_1ECE787F8;
  if (!qword_1ECE787F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE787F8);
  }

  return result;
}

uint64_t sub_1E0B67160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0B671C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E0B67228(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E0B6728C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for DERDictionaryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1E0B673D4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1E0B66768(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1E0B6728C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1E0B67494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0B674FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0B67560()
{
  result = qword_1ECE78828;
  if (!qword_1ECE78828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78828);
  }

  return result;
}

uint64_t sub_1E0B675B4()
{
  v1 = *(v0 + 16);
  sub_1E0BA8A28();
  sub_1E0B67228(&qword_1ECE78818, MEMORY[0x1E69D4E48]);
  return sub_1E0BA8CA8() & 1;
}

uint64_t sub_1E0B67644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78830, &unk_1E0BABD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0B676C8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= -536870171)
  {
    if (result > -536870188)
    {
      if (result <= -536870185)
      {
        if (result == -536870187)
        {
          *a2 = 26;
          return result;
        }

        if (result == -536870186)
        {
          *a2 = 17;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 0xE00002D8:
            *a2 = 13;
            return result;
          case 0xE00002DB:
            *a2 = 27;
            return result;
          case 0xE00002E2:
            *a2 = 1;
            return result;
        }
      }
    }

    else if (result <= -536870208)
    {
      if (result == -536870212)
      {
        *a2 = 0;
        return result;
      }

      if (result == -536870211)
      {
        *a2 = 16;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 0xE00002C1:
          *a2 = 28;
          return result;
        case 0xE00002CA:
          *a2 = 25;
          return result;
        case 0xE00002CE:
          *a2 = 4;
          return result;
      }
    }

LABEL_30:
    *a2 = 38;
  }

  else
  {
    switch(result)
    {
      case 0xE007C006:
        *a2 = 5;
        return result;
      case 0xE007C007:
        *a2 = 6;
        return result;
      case 0xE007C008:
        *a2 = 7;
        return result;
      case 0xE007C009:
        *a2 = 8;
        return result;
      case 0xE007C00A:
        *a2 = 9;
        return result;
      case 0xE007C00B:
      case 0xE007C00C:
      case 0xE007C00F:
      case 0xE007C010:
      case 0xE007C011:
      case 0xE007C012:
      case 0xE007C01B:
      case 0xE007C01C:
      case 0xE007C01D:
      case 0xE007C020:
        goto LABEL_30;
      case 0xE007C00D:
        *a2 = 12;
        return result;
      case 0xE007C00E:
        *a2 = 3;
        return result;
      case 0xE007C013:
        *a2 = 18;
        return result;
      case 0xE007C014:
        *a2 = 19;
        return result;
      case 0xE007C015:
        *a2 = 20;
        return result;
      case 0xE007C016:
        *a2 = 21;
        return result;
      case 0xE007C017:
        *a2 = 22;
        return result;
      case 0xE007C018:
        *a2 = 23;
        return result;
      case 0xE007C019:
        *a2 = 24;
        return result;
      case 0xE007C01A:
        *a2 = 31;
        return result;
      case 0xE007C01E:
        *a2 = 29;
        return result;
      case 0xE007C01F:
        *a2 = 30;
        return result;
      case 0xE007C021:
        *a2 = 32;
        return result;
      case 0xE007C022:
        *a2 = 33;
        return result;
      case 0xE007C023:
        *a2 = 34;
        return result;
      case 0xE007C024:
        *a2 = 35;
        return result;
      case 0xE007C025:
        *a2 = 36;
        return result;
      case 0xE007C026:
        *a2 = 37;
        return result;
      default:
        if (result == -536870170)
        {
          *a2 = 11;
        }

        else
        {
          if (result != -536870160)
          {
            goto LABEL_30;
          }

          *a2 = 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for der_key()
{
  result = qword_1ECE78840;
  if (!qword_1ECE78840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E0B67A1C()
{
  result = sub_1E0BA8A28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E0B67A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E0BA8A28();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(*(a2 - 8) + 56);

  return v7(a3, 0, 1, a2);
}

uint64_t sub_1E0B67B38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E0BA8A28();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E0B67BA0()
{
  sub_1E0BA8F48();
  sub_1E0BA8A28();
  sub_1E0B6823C(&qword_1ECE78800, MEMORY[0x1E69D4E48]);
  sub_1E0BA8C88();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B67C28()
{
  sub_1E0BA8A28();
  sub_1E0B6823C(&qword_1ECE78800, MEMORY[0x1E69D4E48]);

  return sub_1E0BA8C88();
}

uint64_t sub_1E0B67CAC()
{
  sub_1E0BA8F48();
  sub_1E0BA8A28();
  sub_1E0B6823C(&qword_1ECE78800, MEMORY[0x1E69D4E48]);
  sub_1E0BA8C88();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B67D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_1E0BA89F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E0BA8B08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E0BA8A28();
  v22 = *(v15 - 8);
  v23 = v15;
  v16 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v11 + 16);
  v26 = a1;
  v19(v14, a1, v10);
  (*(v6 + 16))(v9, a2, v5);
  v20 = v25;
  sub_1E0BA8A08();
  (*(v6 + 8))(a2, v5);
  if (v20)
  {
    return (*(v11 + 8))(v26, v10);
  }

  (*(v11 + 8))(v26, v10);
  return (*(v22 + 32))(v24, v18, v23);
}

uint64_t sub_1E0B67FE4()
{
  sub_1E0BA8A28();
  sub_1E0B6823C(&qword_1ECE78818, MEMORY[0x1E69D4E48]);
  return sub_1E0BA8CA8() & 1;
}

uint64_t sub_1E0B6823C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E0B68284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1E0BA8AE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  sub_1E0B64650(a2, v7);
  if (v2)
  {
    MEMORY[0x1E12E8B70](v2);
    v16 = 0;
  }

  else
  {
    v18 = *(v9 + 16);
    v18(v15, &v7[*(v4 + 20)], v8);
    sub_1E0B671C8(v7, type metadata accessor for DERDictionaryItem);
    v18(v13, v15, v8);
    sub_1E0BA8B78();
    (*(v9 + 8))(v15, v8);
    v16 = v20;
  }

  v19[12] = v2 != 0;
  return v16 | ((v2 != 0) << 32);
}

uint64_t sub_1E0B684C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[5] = a4;
  v21[1] = a3;
  v6 = type metadata accessor for DERDictionaryItem();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E0BA8AE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  sub_1E0B64650(a2, v9);
  if (v4)
  {
    MEMORY[0x1E12E8B70](v4);
    return 0;
  }

  else
  {
    v19 = *(v6 + 20);
    v20 = *(v11 + 16);
    v20(v17, &v9[v19], v10);
    sub_1E0B671C8(v9, type metadata accessor for DERDictionaryItem);
    v20(v15, v17, v10);
    sub_1E0BA8B78();
    (*(v11 + 8))(v17, v10);
    return v21[2];
  }
}

uint64_t sub_1E0B686F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E0BA8AE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  sub_1E0B64650(a2, v7);
  if (v2)
  {
    MEMORY[0x1E12E8B70](v2);
    return 2;
  }

  else
  {
    v17 = *(v9 + 16);
    v17(v15, &v7[*(v4 + 20)], v8);
    sub_1E0B671C8(v7, type metadata accessor for DERDictionaryItem);
    v17(v13, v15, v8);
    sub_1E0BA8B78();
    (*(v9 + 8))(v15, v8);
    return v19;
  }
}

uint64_t sub_1E0B68914(uint64_t a1, uint64_t a2, char a3)
{
  v8 = sub_1E0BA8AE8();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for der_key();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DERDictionaryItem();
  v16 = *(*(v24 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v23 - 2) = a1;
    result = sub_1E0B66B38(sub_1E0B766D8, (&v23 - 4));
    v20 = *(*v3 + 16);
    if (v20 < result)
    {
      __break(1u);
      return result;
    }

    result = sub_1E0B673D4(result, v20);
  }

  if ((a3 & 1) == 0)
  {
    sub_1E0B76324(a1, v15, type metadata accessor for der_key);
    v27 = a2;
    v28 = 0;
    sub_1E0BA8AD8();
    if (v4)
    {
      v21 = type metadata accessor for der_key;
      v22 = v15;
    }

    else
    {
      sub_1E0B7380C(v15, v19);
      (*(v25 + 32))(&v19[*(v24 + 20)], v11, v26);
      sub_1E0B64850(v19);
      v21 = type metadata accessor for DERDictionaryItem;
      v22 = v19;
    }

    return sub_1E0B671C8(v22, v21);
  }

  return result;
}

uint64_t sub_1E0B68BA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = sub_1E0BA8AE8();
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for der_key();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DERDictionaryItem();
  v18 = *(*(v26 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v26);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v4)
  {
    v29 = v13;
    MEMORY[0x1EEE9AC00](result);
    *(&v25 - 2) = a1;
    result = sub_1E0B66B38(sub_1E0B766D8, (&v25 - 4));
    v22 = *(*v4 + 16);
    if (v22 < result)
    {
      __break(1u);
      return result;
    }

    result = sub_1E0B673D4(result, v22);
    v13 = v29;
  }

  if ((a4 & 1) == 0)
  {
    sub_1E0B76324(a1, v17, type metadata accessor for der_key);
    v30 = a2;
    v31 = a3;
    v32 = 0;
    sub_1E0B73878();
    sub_1E0BA8AD8();
    if (v5)
    {
      v23 = type metadata accessor for der_key;
      v24 = v17;
    }

    else
    {
      sub_1E0B7380C(v17, v21);
      (*(v27 + 32))(&v21[*(v26 + 20)], v13, v28);
      sub_1E0B64850(v21);
      v23 = type metadata accessor for DERDictionaryItem;
      v24 = v21;
    }

    return sub_1E0B671C8(v24, v23);
  }

  return result;
}

uint64_t sub_1E0B68E50(uint64_t a1, char a2)
{
  v6 = sub_1E0BA8AE8();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for der_key();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DERDictionaryItem();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v22 - 2) = a1;
    result = sub_1E0B66B38(sub_1E0B765CC, (&v22 - 4));
    v19 = *(*v2 + 16);
    if (v19 < result)
    {
      __break(1u);
      return result;
    }

    result = sub_1E0B673D4(result, v19);
  }

  if (a2 != 2)
  {
    sub_1E0B76324(a1, v13, type metadata accessor for der_key);
    v25 = a2;
    sub_1E0BA8AD8();
    if (v3)
    {
      v20 = type metadata accessor for der_key;
      v21 = v13;
    }

    else
    {
      sub_1E0B7380C(v13, v18);
      (*(v23 + 32))(&v18[*(v14 + 20)], v9, v24);
      sub_1E0B64850(v18);
      v20 = type metadata accessor for DERDictionaryItem;
      v21 = v18;
    }

    return sub_1E0B671C8(v21, v20);
  }

  return result;
}

uint64_t AKSUUID.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, int a10, int a11)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 12) = a11;
  return result;
}

uint64_t AKSUUID.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) == 16)
  {
    v5 = *(a1 + 32);

    *a2 = v5;
  }

  else
  {

    sub_1E0B67560();
    swift_allocError();
    *v4 = 10;
    return swift_willThrow();
  }

  return result;
}

uint64_t AKSUUID.init(repeating:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x101010101010101 * result;
  *a2 = v2;
  a2[1] = v2;
  return result;
}

uint64_t static AKSUUID.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v3 = sub_1E0B63E08(&v7, v8);
  v7 = *a2;
  v4 = sub_1E0B63E08(&v7, v8);
  LOBYTE(a2) = sub_1E0B692B8(v3, v4);

  v5 = *MEMORY[0x1E69E9840];
  return a2 & 1;
}

void *AKSUUID.bytes.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  result = sub_1E0B63E08(&v3, v4);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0B692B8(uint64_t result, uint64_t a2)
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

uint64_t sub_1E0B69314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DERDictionaryItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    sub_1E0BA8A28();
    v16 = *(v5 + 72);
    while (1)
    {
      sub_1E0B76324(v14, v11, type metadata accessor for DERDictionaryItem);
      sub_1E0B76324(v15, v9, type metadata accessor for DERDictionaryItem);
      sub_1E0B7638C(&qword_1ECE78818, MEMORY[0x1E69D4E48]);
      if ((sub_1E0BA8CA8() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 20);
      v18 = sub_1E0BA8AC8();
      sub_1E0B671C8(v9, type metadata accessor for DERDictionaryItem);
      sub_1E0B671C8(v11, type metadata accessor for DERDictionaryItem);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1E0B671C8(v9, type metadata accessor for DERDictionaryItem);
    sub_1E0B671C8(v11, type metadata accessor for DERDictionaryItem);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1E0B69564(__int128 *a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *a1;
  v2 = AKSUUID.bytes.getter();
  v3 = AKSUUID.bytes.getter();
  v4 = sub_1E0B692B8(v2, v3);

  return v4 & 1;
}

uint64_t AKSUUID.init(derEncoded:withIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v44 = a2;
  v41 = a3;
  v4 = sub_1E0BA89F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E0BA8B08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E0BA8A88();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  v18 = *(v5 + 16);
  v19 = v44;
  v46 = v4;
  v18(v8, v44, v4);
  v20 = v45;
  sub_1E0BA8A48();
  if (v20)
  {
    goto LABEL_14;
  }

  *&v45 = v9;
  v40 = v5;
  v21 = v19;
  v22 = a1;
  v23 = sub_1E0BA8A68();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v42 + 8))(v17, v43);
  v43 = v10;
  if ((v29 & 1) == 0)
  {
    goto LABEL_3;
  }

  v35 = v25;
  sub_1E0BA8EA8();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v29 >> 1, v27))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v37 != (v29 >> 1) - v27)
  {
LABEL_17:
    swift_unknownObjectRelease_n();
    v25 = v35;
LABEL_3:
    sub_1E0B726FC(v23, v25, v27, v29);
    v31 = v30;
    v19 = v21;
    v32 = v46;
    v5 = v40;
    v33 = v45;
    v34 = v43;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v19 = v21;
  v32 = v46;
  v5 = v40;
  v33 = v45;
  v34 = v43;
  if (!v31)
  {
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_11:
  if (*(v31 + 16) == 16)
  {
    v45 = *(v31 + 32);

    (*(v5 + 8))(v19, v32);
    result = (*(v34 + 8))(v22, v33);
    *v41 = v45;
    return result;
  }

  a1 = v22;
  v9 = v33;
  sub_1E0BA8B38();
  sub_1E0B7638C(&qword_1ECE78898, MEMORY[0x1E69D4E98]);
  swift_allocError();
  sub_1E0BA8B28();
  swift_willThrow();
  v10 = v34;
LABEL_14:
  (*(v5 + 8))(v19, v46);
  return (*(v10 + 8))(a1, v9);
}

uint64_t AKSUUID.serialize(into:withIdentifier:)()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = sub_1E0BA8A88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v9 = *v0;
  v6 = (2 * sub_1E0B63E08(&v9, v10)[2]) | 1;
  sub_1E0BA8A58();
  sub_1E0BA8A78();
  result = (*(v2 + 8))(v5, v1);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0B69C90(uint64_t a1)
{
  v2 = sub_1E0B72BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B69CCC(uint64_t a1)
{
  v2 = sub_1E0B72BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.State.LockState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788A0, &qword_1E0BABE90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72BB4();
  sub_1E0BA8FB8();
  v14 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v13 = 1;
    sub_1E0BA8E58();
    return (*(v5 + 8))(v8, v4);
  }
}

unint64_t AKSIdentity.State.LockState.description.getter()
{
  v1 = *v0;
  v2 = 0x64656B636F6C6E75;
  v3 = 0x642D747265737361;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x656E696665646E75;
  if (v1 != 4)
  {
    v4 = 0x65702D6563617267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E696B636F6CLL;
  if (v1 != 2)
  {
    v5 = 0x64656C6261736964;
  }

  if (*v0)
  {
    v2 = 0x64656B636F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E0B6A0EC(uint64_t a1)
{
  v2 = sub_1E0B72C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6A128(uint64_t a1)
{
  v2 = sub_1E0B72C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Config.Options.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788B0, &qword_1E0BABE98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72C08();
  sub_1E0BA8FB8();
  v13 = v9;
  AKSIdentity.Config.Options.description.getter();
  v12[15] = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_1E0BA8E68();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E0B6A358(uint64_t a1)
{
  v2 = sub_1E0B72D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6A394(uint64_t a1)
{
  v2 = sub_1E0B72D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Config.RecoveryBlob.State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788D0, &qword_1E0BABEA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72D08();
  sub_1E0BA8FB8();
  v15 = v9;
  AKSIdentity.Config.RecoveryBlob.State.description.getter();
  v14 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v13 = 1;
    sub_1E0BA8E58();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E0B6A5C0(uint64_t a1)
{
  v2 = sub_1E0B72D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6A5FC(uint64_t a1)
{
  v2 = sub_1E0B72D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.State.State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788E0, &qword_1E0BABEB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72D5C();
  sub_1E0BA8FB8();
  v15 = v9;
  AKSIdentity.State.State.description.getter();
  v14 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v13 = 1;
    sub_1E0BA8E58();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E0B6A828(uint64_t a1)
{
  v2 = sub_1E0B72DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6A864(uint64_t a1)
{
  v2 = sub_1E0B72DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.State.MoreState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788F0, &qword_1E0BABEB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72DB0();
  sub_1E0BA8FB8();
  v15 = v9;
  AKSIdentity.State.MoreState.description.getter();
  v14 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v13 = 1;
    sub_1E0BA8E58();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E0B6AA60(uint64_t *a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v4 = *v2;
  swift_beginAccess();
  v5 = *a1;
  v6 = *(*a1 + 16);

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v11 = 24 * v8;
  while (v6 != v8)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    ++v8;
    v12 = v11 + 24;
    v13 = *(v5 + v11 + 32);
    v11 += 24;
    if ((v13 & ~v4) == 0)
    {
      v14 = *(v5 + v12 + 16);
      v15 = *(v5 + v12 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v14;
      if ((result & 1) == 0)
      {
        result = a2(0, v10[2] + 1, 1);
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        result = a2(v16 > 1, v17 + 1, 1);
      }

      v10[2] = v17 + 1;
      v18 = &v10[3 * v17];
      *(v18 + 8) = v13;
      v18[5] = v29;
      v18[6] = v15;
      goto LABEL_2;
    }
  }

  v19 = v10[2];
  if (v19)
  {
    sub_1E0B727BC(0, v19, 0);
    v20 = v9;
    v21 = v10 + 6;
    do
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_1E0B727BC((v24 > 1), v25 + 1, 1);
      }

      *(v20 + 16) = v25 + 1;
      v26 = v20 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v21 += 3;
      --v19;
    }

    while (v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788C0, &qword_1E0BABEA0);
  sub_1E0B72C5C();
  v27 = sub_1E0BA8C98();

  return v27;
}

uint64_t sub_1E0B6AE20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65756C6156776172;
  }

  else
  {
    v4 = 0x7470697263736564;
  }

  if (v3)
  {
    v5 = 0xEB000000006E6F69;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x65756C6156776172;
  }

  else
  {
    v6 = 0x7470697263736564;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEB000000006E6F69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E0BA8E88();
  }

  return v9 & 1;
}

uint64_t sub_1E0B6AED0()
{
  v1 = *v0;
  sub_1E0BA8F48();
  sub_1E0BA8CD8();

  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6AF5C()
{
  v1 = *v0;
  sub_1E0BA8F48();
  sub_1E0BA8CD8();

  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6AFF0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E0BA8DA8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1E0B6B058@<X0>(char *a1@<X8>)
{
  v2 = sub_1E0BA8DA8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1E0B6B0B8(uint64_t a1)
{
  v2 = sub_1E0B72E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6B0F4(uint64_t a1)
{
  v2 = sub_1E0B72E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Memento.State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78908, &qword_1E0BABEC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72E58();
  sub_1E0BA8FB8();
  v13 = v9;
  AKSIdentity.Memento.State.description.getter();
  v12[15] = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12[14] = 1;
    sub_1E0BA8E18();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E0B6B2F4(uint64_t *a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v4 = *v2;
  swift_beginAccess();
  v5 = *a1;
  v6 = *a1 + 32;
  v7 = *(*a1 + 16);

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v6 + 24 * v9);
  while (v7 != v9)
  {
    if (v9 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    ++v9;
    v13 = v12 + 3;
    v14 = *v12;
    v12 += 3;
    if ((v14 & ~v4) == 0)
    {
      v16 = *(v13 - 2);
      v15 = *(v13 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v16;
      if ((result & 1) == 0)
      {
        result = a2(0, v11[2] + 1, 1);
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        result = a2(v17 > 1, v18 + 1, 1);
      }

      v11[2] = v18 + 1;
      v19 = &v11[3 * v18];
      v19[4] = v14;
      v19[5] = v30;
      v19[6] = v15;
      goto LABEL_2;
    }
  }

  v20 = v11[2];
  if (v20)
  {
    sub_1E0B727BC(0, v20, 0);
    v21 = v10;
    v22 = v11 + 6;
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_1E0B727BC((v25 > 1), v26 + 1, 1);
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v22 += 3;
      --v20;
    }

    while (v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788C0, &qword_1E0BABEA0);
  sub_1E0B72C5C();
  v28 = sub_1E0BA8C98();

  return v28;
}

uint64_t AKSIdentity.Memento.SESlot.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t AKSIdentity.Memento.SESlot.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Memento.failedAttempts.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t AKSIdentity.Memento.maxUnlockAttempts.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

void AKSIdentity.Memento.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t AKSIdentity.Memento.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1E0B6B76C@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = a1;
  v3 = type metadata accessor for DERDictionaryItem();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E0BA8AE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = sub_1E0BA89F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = 1;
  _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
  sub_1E0B670F0();
  sub_1E0BA8BA8();
  if (v2)
  {
    *v49 = 18;
    LOBYTE(v50) = 18;
    sub_1E0B67560();
    swift_willThrowTypedImpl();
    return MEMORY[0x1E12E8B70](v2);
  }

  else
  {
    v46 = v8;
    v47 = v6;
    v45 = v14;
    v17 = v48;
    v18 = v50;
    if (qword_1ECE785C8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for der_key();
    v21 = v3;
    v22 = v12;
    v20 = __swift_project_value_buffer(v19, qword_1ECE79380);
    v44 = sub_1E0B684C0(v20, v18, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
    v54 = v23 & 1;
    if (qword_1ECE785A8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v19, qword_1ECE79320);
    v25 = sub_1E0B68284(v24, v18);
    v26 = v47;
    v27 = v25;
    v53 = BYTE4(v25) & 1;
    if (qword_1ECE784F0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v19, qword_1ECE790F8);
    v29 = sub_1E0B68284(v28, v18);
    v42 = v29;
    v52 = BYTE4(v29) & 1;
    if (qword_1ECE78590 != -1)
    {
      swift_once();
    }

    v43 = v27;
    __swift_project_value_buffer(v19, qword_1ECE792D8);
    sub_1E0B64650(v18, v26);

    v35 = *(v21 + 20);
    v36 = v46;
    v37 = *(v46 + 16);
    v38 = v7;
    v39 = v45;
    v37();
    sub_1E0B671C8(v26, type metadata accessor for DERDictionaryItem);
    (v37)(v22, v39, v38);
    sub_1E0B738D0();
    sub_1E0BA8B78();
    result = (*(v36 + 8))(v39, v38);
    v40 = v50;
    v31 = v54;
    v32 = v53;
    v33 = v52;
    *v17 = v44;
    *(v17 + 8) = v31;
    v34 = v42;
    *(v17 + 12) = v43;
    *(v17 + 16) = v32;
    *(v17 + 20) = v34;
    *(v17 + 24) = v33;
    *(v17 + 32) = v40;
    *(v17 + 40) = 0;
  }

  return result;
}

unint64_t sub_1E0B6BC3C()
{
  v1 = 0x746F6C534553;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x744164656C696166;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E0B6BCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0B72F54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0B6BCE8(uint64_t a1)
{
  v2 = sub_1E0B72EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6BD24(uint64_t a1)
{
  v2 = sub_1E0B72EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Memento.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78918, &qword_1E0BABEC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v22 = *(v1 + 3);
  v21 = *(v1 + 16);
  v20 = *(v1 + 5);
  v19 = *(v1 + 24);
  v18 = v1[4];
  v17 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B72EAC();
  sub_1E0BA8FB8();
  v31 = 0;
  v11 = v23;
  sub_1E0BA8DC8();
  if (!v11)
  {
    v12 = v19;
    v13 = v17;
    v14 = v18;
    v30 = 1;
    v28 = v21;
    sub_1E0BA8DE8();
    v29 = 2;
    v26 = v12;
    sub_1E0BA8DE8();
    v24 = v14;
    v25 = v13;
    v27 = 3;
    sub_1E0B72F00();
    sub_1E0BA8DD8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AKSIdentity.getMemento()@<X0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E0BABE70;
  *(inited + 32) = v4;
  v15 = 0;
  v6 = sub_1E0BA8D18();
  *(v6 + 16) = 0x8000;
  bzero((v6 + 32), 0x8000uLL);
  v14 = v6;
  result = sub_1E0B84FE0(0x8Bu, inited, 0, &v15, &v14);
  if (v2)
  {
  }

  else if (result)
  {
    v8 = result;

    sub_1E0B67560();
    swift_allocError();
    sub_1E0B676C8(v8, v9);
    return swift_willThrow();
  }

  else if (v14)
  {

    result = sub_1E0B6B76C(&v11, &v12);
    v10 = v13[0];
    *a1 = v12;
    a1[1] = v10;
    *(a1 + 25) = *(v13 + 9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AKSIdentity.State.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t AKSIdentity.State.state.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

uint64_t AKSIdentity.State.backoff.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t AKSIdentity.State.backoff.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.State.failedAttempts.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t AKSIdentity.State.generationState.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t AKSIdentity.State.recoveryCountdown.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t AKSIdentity.State.recoveryCountdown.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void AKSIdentity.State.moreState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 52);
  *(a1 + 4) = v2;
}

uint64_t AKSIdentity.State.moreState.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 52) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t AKSIdentity.State.maxUnlockAttempts.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 64) = BYTE4(result) & 1;
  return result;
}

__n128 AKSIdentity.State.userUUID.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 81);
  result = *(v1 + 65);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AKSIdentity.State.userUUID.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 65) = *a1;
  *(v1 + 81) = v2;
  return result;
}

uint64_t sub_1E0B6C408@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  v108 = a1;
  v102 = a2;
  v107 = type metadata accessor for DERDictionaryItem();
  v2 = *(*(v107 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v107);
  v100 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v101 = &v92 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v104 = &v92 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v92 - v9;
  v10 = sub_1E0BA8AE8();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v92 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v92 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v92 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v92 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v92 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v92 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v92 - v32;
  v34 = sub_1E0BA89F8();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v117 = 1;
  v112 = 1;
  v118 = 1;
  _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
  sub_1E0B670F0();
  v36 = v109;
  sub_1E0BA8BA8();
  if (v36)
  {
    *v108 = 18;
    LOBYTE(v110) = 18;
    sub_1E0B67560();
    swift_willThrowTypedImpl();
    return MEMORY[0x1E12E8B70](v36);
  }

  else
  {
    v97 = v31;
    v98 = v33;
    v37 = v103;
    v95 = v25;
    v96 = v28;
    v38 = v104;
    v93 = v19;
    v94 = v22;
    v92 = v16;
    v39 = v107;
    v40 = v110;
    if (qword_1ECE78590 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for der_key();
    __swift_project_value_buffer(v109, qword_1ECE792D8);
    sub_1E0B64650(v40, v37);
    v41 = v38;
    v53 = *(v39 + 20);
    v54 = v106;
    v55 = *(v105 + 16);
    v56 = v98;
    v57 = v105;
    v55(v98, v37 + v53, v106);
    sub_1E0B671C8(v37, type metadata accessor for DERDictionaryItem);
    v55(v97, v56, v54);
    sub_1E0B74114();
    sub_1E0BA8B78();
    v63 = v57;
    (*(v57 + 8))(v56, v54);
    LODWORD(v103) = v110;
    v64 = v107;
    v117 = 0;
    if (qword_1ECE78598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v109, qword_1ECE792F0);
    sub_1E0B64650(v40, v41);
    v58 = v40;
    v59 = v63;
    v60 = *(v63 + 16);
    v61 = v96;
    v60(v96, v41 + *(v64 + 20), v54);
    sub_1E0B671C8(v41, type metadata accessor for DERDictionaryItem);
    v60(v95, v61, v54);
    sub_1E0B74274();
    sub_1E0BA8B78();
    v65 = v61;
    v66 = v59;
    (*(v59 + 8))(v65, v54);
    v67 = v110;
    v68 = v58;
    v69 = v109;
    v42 = v101;
    v43 = v102;
    if (qword_1ECE785A0 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v69, qword_1ECE79308);
    v105 = sub_1E0B684C0(v44, v68, MEMORY[0x1E69E76D8], MEMORY[0x1E69D4EF8]);
    v116 = v45 & 1;
    if (qword_1ECE785A8 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v69, qword_1ECE79320);
    v104 = sub_1E0B68284(v46, v68);
    v115 = BYTE4(v104) & 1;
    if (qword_1ECE785B0 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v69, qword_1ECE79338);
    v98 = sub_1E0B68284(v47, v68);
    v114 = BYTE4(v98) & 1;
    if (qword_1ECE785B8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v69, qword_1ECE79350);
    v97 = sub_1E0B684C0(v48, v68, MEMORY[0x1E69E76D8], MEMORY[0x1E69D4EF8]);
    v113 = v49 & 1;
    if (qword_1ECE785C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v69, qword_1ECE79368);
    sub_1E0B64650(v68, v42);
    v96 = v68;
    v70 = *(v64 + 20);
    v71 = v66;
    v72 = *(v66 + 16);
    v73 = v94;
    v74 = v106;
    v72(v94, v42 + v70, v106);
    sub_1E0B671C8(v42, type metadata accessor for DERDictionaryItem);
    v72(v93, v73, v74);
    sub_1E0B741C4();
    sub_1E0BA8B78();
    v82 = v73;
    v83 = v71;
    (*(v71 + 8))(v82, v74);
    v84 = v110;
    v85 = v107;
    v86 = v96;
    v112 = 0;
    if (qword_1ECE784F0 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v109, qword_1ECE790F8);
    v51 = sub_1E0B68284(v50, v86);
    v52 = v100;
    v101 = v51;
    v111 = BYTE4(v51) & 1;
    if (qword_1ECE785D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v109, qword_1ECE79398);
    sub_1E0B64650(v86, v52);
    LODWORD(v109) = v84;

    v87 = *(v85 + 20);
    v88 = *(v83 + 16);
    v89 = v92;
    v90 = v106;
    v88(v92, v52 + v87, v106);
    sub_1E0B671C8(v52, type metadata accessor for DERDictionaryItem);
    v88(v99, v89, v90);
    sub_1E0B73764();
    sub_1E0BA8B78();
    result = (*(v83 + 8))(v89, v106);
    v91 = v110;
    LODWORD(v90) = v109;
    v75 = v117;
    v76 = v116;
    v77 = v115;
    v78 = v114;
    v79 = v113;
    v80 = v112;
    v81 = v111;
    *v43 = v103;
    *(v43 + 4) = v75;
    *(v43 + 5) = v67;
    *(v43 + 8) = v105;
    *(v43 + 16) = v76;
    *(v43 + 20) = v104;
    *(v43 + 24) = v77;
    *(v43 + 28) = v98;
    *(v43 + 32) = v78;
    *(v43 + 40) = v97;
    *(v43 + 48) = v79;
    *(v43 + 52) = v90;
    *(v43 + 56) = v80;
    *(v43 + 60) = v101;
    *(v43 + 64) = v81;
    *(v43 + 65) = v91;
    *(v43 + 81) = 0;
  }

  return result;
}

AppleKeyStore::AKSIdentity::State::LockState_optional __swiftcall AKSIdentity.State.LockState.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1E0B6D17C()
{
  v1 = *v0;
  sub_1E0BA8F48();
  sub_1E0BA8F78();
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6D1F0()
{
  v1 = *v0;
  sub_1E0BA8F48();
  sub_1E0BA8F78();
  return sub_1E0BA8F98();
}

unint64_t sub_1E0B6D248()
{
  v1 = *v0;
  v2 = 0x64656B636F6C6E75;
  v3 = 0x642D747265737361;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x656E696665646E75;
  if (v1 != 4)
  {
    v4 = 0x65702D6563617267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E696B636F6CLL;
  if (v1 != 2)
  {
    v5 = 0x64656C6261736964;
  }

  if (*v0)
  {
    v2 = 0x64656B636F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1E0B6D480(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6574617473;
    v6 = 0x66666F6B636162;
    if (a1 != 2)
    {
      v6 = 0x744164656C696166;
    }

    if (a1)
    {
      v5 = 0x746174536B636F6CLL;
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
    v1 = 0x7461745365726F6DLL;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0x4449555572657375;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x69746172656E6567;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_1E0B6D5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0B75850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0B6D600(uint64_t a1)
{
  v2 = sub_1E0B730C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6D63C(uint64_t a1)
{
  v2 = sub_1E0B730C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78930, &qword_1E0BABED0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v36 = *(v1 + 5);
  v31 = *(v1 + 1);
  v30 = *(v1 + 16);
  v29 = v1[5];
  v28 = *(v1 + 24);
  v27 = v1[7];
  v10 = *(v1 + 32);
  v24 = *(v1 + 5);
  v25 = *(v1 + 48);
  v26 = v10;
  LODWORD(v6) = *(v1 + 56);
  v22 = v1[13];
  v23 = v6;
  v21 = v1[15];
  v11 = *(v1 + 64);
  v12 = *(v1 + 73);
  v17 = *(v1 + 65);
  v18 = v12;
  v19 = *(v1 + 81);
  v20 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B730C0();
  sub_1E0BA8FB8();
  LODWORD(v33) = v8;
  BYTE4(v33) = v9;
  v37 = 0;
  sub_1E0B73114();
  v14 = v32;
  sub_1E0BA8DD8();
  if (!v14)
  {
    v15 = v28;
    LOBYTE(v33) = v36;
    v37 = 1;
    sub_1E0B73168();
    sub_1E0BA8DD8();
    LOBYTE(v33) = 2;
    sub_1E0BA8DF8();
    LOBYTE(v33) = 3;
    v37 = v15;
    sub_1E0BA8DE8();
    LOBYTE(v33) = 4;
    v37 = v26;
    sub_1E0BA8DE8();
    LOBYTE(v33) = 5;
    sub_1E0BA8DF8();
    LODWORD(v33) = v22;
    BYTE4(v33) = v23;
    v37 = 6;
    sub_1E0B731BC();
    sub_1E0BA8DD8();
    LOBYTE(v33) = 7;
    v37 = v20;
    sub_1E0BA8DE8();
    v33 = v17;
    v34 = v18;
    v35 = v19;
    v37 = 8;
    sub_1E0B73210();
    sub_1E0BA8DD8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AKSIdentity.Config.gracePeriod.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t AKSIdentity.Config.gracePeriod.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.backOffDelay.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AKSIdentity.Config.backOffDelay.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.maxUnlockAttempts.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t AKSIdentity.Config.maxUnlockAttempts.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void AKSIdentity.Config.options.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t AKSIdentity.Config.options.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

__n128 AKSIdentity.Config.userUUID.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 73);
  result = *(v1 + 57);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AKSIdentity.Config.userUUID.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 57) = *a1;
  *(v1 + 73) = v2;
  return result;
}

__n128 AKSIdentity.Config.groupUUID.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 90);
  result = *(v1 + 74);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AKSIdentity.Config.groupUUID.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 74) = *a1;
  *(v1 + 90) = v2;
  return result;
}

uint64_t AKSIdentity.Config.recoveryIterations.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t AKSIdentity.Config.recoveryIterations.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.recoveryTargetIterations.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t AKSIdentity.Config.recoveryTargetIterations.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

__n128 AKSIdentity.Config.recoveryBlobState.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[9].n128_u8[0];
  result = v1[8];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 AKSIdentity.Config.recoveryBlobState.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u8[0] = v2;
  return result;
}

uint64_t AKSIdentity.Config.mementoPasscodeGeneration.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t AKSIdentity.Config.mementoPasscodeGeneration.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.passcodeGeneration.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t AKSIdentity.Config.passcodeGeneration.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.escrowPasscodePeriod.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t AKSIdentity.Config.escrowPasscodePeriod.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.escrowTokenPeriod.getter()
{
  result = *(v0 + 200);
  v2 = *(v0 + 208);
  return result;
}

uint64_t AKSIdentity.Config.escrowTokenPeriod.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t AKSIdentity.Config.bindKEKToKB.setter(uint64_t a1)
{
  v3 = *(v1 + 216);

  *(v1 + 216) = a1;
  return result;
}

void AKSIdentity.Config.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 65) = 0;
  *(a1 + 57) = 0;
  *(a1 + 73) = 1;
  *(a1 + 82) = 0;
  *(a1 + 74) = 0;
  *(a1 + 90) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 145) = 514;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 209) = 514;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
}

uint64_t sub_1E0B6E07C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
}

uint64_t sub_1E0B6E120(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;

  swift_beginAccess();
  v7 = *a5;
  *a5 = v6;
}

uint64_t AKSIdentity.Config.RecoveryBlob.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = BYTE4(result);
  *(a2 + 9) = BYTE5(result);
  *(a2 + 12) = result;
  return result;
}

uint64_t sub_1E0B6E25C()
{
  v1 = 0x65756C6156776172;
  v2 = 0x746F6C535350;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E0B6E2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0B75B54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0B6E2F8(uint64_t a1)
{
  v2 = sub_1E0B73264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6E334(uint64_t a1)
{
  v2 = sub_1E0B73264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.Config.RecoveryBlob.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78960, &qword_1E0BABED8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v15 = *(v1 + 9);
  v16 = v10;
  HIDWORD(v14) = *(v1 + 3);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B73264();
  sub_1E0BA8FB8();
  v21 = 0;
  sub_1E0BA8E68();
  if (!v2)
  {
    v12 = HIDWORD(v14);
    v20 = 1;
    sub_1E0BA8E48();
    v19 = 2;
    sub_1E0BA8E48();
    v17 = v12;
    v18 = 3;
    sub_1E0B732B8();
    sub_1E0BA8E28();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E0B6E58C(char a1)
{
  result = 0x7265506563617267;
  switch(a1)
  {
    case 1:
      result = 0x4466664F6B636162;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x736E6F6974706FLL;
      break;
    case 4:
      result = 0x4449555572657375;
      break;
    case 5:
      result = 0x49555570756F7267;
      break;
    case 6:
    case 12:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 13:
    case 16:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0x544B454B646E6962;
      break;
    case 18:
      result = 0x65646F6373736170;
      break;
    case 19:
      result = 0x6665526D6361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E0B6E7D0()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7CF0](v1);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6E818()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7CF0](v1);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B6E864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0B75CB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0B6E898(uint64_t a1)
{
  v2 = sub_1E0B734C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B6E8D4(uint64_t a1)
{
  v2 = sub_1E0B734C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSIdentity.getConfiguration()@<X0>(_OWORD *a1@<X8>)
{
  v4 = sub_1E0BA89F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *v1;
  v7 = sub_1E0BA8D18();
  *(v7 + 16) = 0x8000;
  bzero((v7 + 32), 0x8000uLL);
  v28 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E0BABE70;
  *(inited + 32) = v6;
  v27 = 0;
  result = sub_1E0B84FE0(0x1Fu, inited, 0, &v27, &v28);
  if (v2)
  {
  }

  else if (result)
  {
    v10 = result;

    sub_1E0B67560();
    swift_allocError();
    sub_1E0B676C8(v10, v11);
    return swift_willThrow();
  }

  else if (v28)
  {

    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B7330C();
    result = sub_1E0BA8BA8();
    a1[12] = v24;
    a1[13] = v25;
    a1[14] = v26;
    a1[8] = v20;
    a1[9] = v21;
    a1[10] = v22;
    a1[11] = v23;
    a1[4] = v16;
    a1[5] = v17;
    a1[6] = v18;
    a1[7] = v19;
    *a1 = v12;
    a1[1] = v13;
    a1[2] = v14;
    a1[3] = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AKSIdentity.setConfiguration(_:_:)(uint64_t a1, _OWORD *a2)
{
  v4 = v2;
  v7 = sub_1E0BA8C28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[13];
  v69[12] = a2[12];
  v69[13] = v12;
  v69[14] = a2[14];
  v13 = a2[9];
  v69[8] = a2[8];
  v69[9] = v13;
  v14 = a2[11];
  v69[10] = a2[10];
  v69[11] = v14;
  v15 = a2[5];
  v69[4] = a2[4];
  v69[5] = v15;
  v16 = a2[7];
  v69[6] = a2[6];
  v69[7] = v16;
  v17 = a2[1];
  v69[0] = *a2;
  v69[1] = v17;
  v18 = a2[3];
  v69[2] = a2[2];
  v69[3] = v18;
  v19 = *v4;
  sub_1E0B73360(v69, &v54);
  sub_1E0BA8C18();

  v20 = a2[13];
  v66 = a2[12];
  v67 = v20;
  v21 = *(a2 + 28);
  v22 = a2[9];
  v62 = a2[8];
  v63 = v22;
  v23 = a2[11];
  v64 = a2[10];
  v65 = v23;
  v24 = a2[5];
  v58 = a2[4];
  v59 = v24;
  v25 = a2[7];
  v60 = a2[6];
  v61 = v25;
  v26 = a2[1];
  v54 = *a2;
  v55 = v26;
  v27 = a2[3];
  v56 = a2[2];
  v57 = v27;
  *&v68 = v21;
  *(&v68 + 1) = a1;
  sub_1E0B73398();
  sub_1E0BA8C08();
  if (v3)
  {
    v51 = v66;
    v52 = v67;
    v53 = v68;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v50 = v65;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v46 = v61;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    sub_1E0B733EC(&v39);
    sub_1E0B67560();
    swift_allocError();
    *v28 = 23;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v3);
  }

  else
  {
    v37 = v7;
    v51 = v66;
    v52 = v67;
    v53 = v68;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v50 = v65;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v46 = v61;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    sub_1E0B733EC(&v39);
    v30 = sub_1E0BA8D18();
    *(v30 + 16) = 0x8000;
    bzero((v30 + 32), 0x8000uLL);
    v70 = v30;
    v31 = sub_1E0BA8BE8();
    v32 = v31 + 32;
    v33 = *(v31 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1E0BABE80;
    *(v34 + 32) = v19;
    *(v34 + 40) = v32;
    *(v34 + 48) = v33;
    v38 = 0;
    v35 = sub_1E0B84FE0(0x1Eu, v34, 0, &v38, &v70);

    swift_setDeallocating();
    swift_deallocClassInstance();

    v7 = v37;
    if (v35)
    {
      sub_1E0B67560();
      swift_allocError();
      sub_1E0B676C8(v35, v36);
      swift_willThrow();
    }
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t AKSIdentity.getIdentityState()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78838, &unk_1E0BABD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E0BABE70;
  *(inited + 32) = v4;
  v16 = 0;
  v6 = sub_1E0BA8D18();
  *(v6 + 16) = 0x8000;
  bzero((v6 + 32), 0x8000uLL);
  v15 = v6;
  result = sub_1E0B84FE0(0x23u, inited, 0, &v16, &v15);
  if (v2)
  {
  }

  else if (result)
  {
    v8 = result;

    sub_1E0B67560();
    swift_allocError();
    sub_1E0B676C8(v8, v9);
    return swift_willThrow();
  }

  else if (v15)
  {

    result = sub_1E0B6C408(&v12, v13);
    v10 = v13[3];
    *(a1 + 32) = v13[2];
    *(a1 + 48) = v10;
    *(a1 + 64) = v13[4];
    *(a1 + 80) = v14;
    v11 = v13[1];
    *a1 = v13[0];
    *(a1 + 16) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E0B6F140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v20 = a3;
  v19 = a4;
  v6 = sub_1E0BA89F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E0BA8B08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v7 + 16))(v10, a2, v6);
  v20(v15);
  v16 = v21;
  sub_1E0BA8AA8();
  (*(v7 + 8))(a2, v6);
  result = (*(v12 + 8))(a1, v11);
  if (!v16)
  {
    *v19 = v22;
  }

  return result;
}

uint64_t sub_1E0B6F3A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  a3();
  return sub_1E0BA8AB8();
}

uint64_t sub_1E0B6F454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = *v5;
  a5();
  return sub_1E0BA8AB8();
}

uint64_t sub_1E0B6F604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v17 = a3;
  v6 = sub_1E0BA89F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E0BA8B08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(&v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  (*(v7 + 16))(v10, a2, v6);
  sub_1E0B73470();
  sub_1E0BA8AA8();
  (*(v7 + 8))(a2, v6);
  result = (*(v12 + 8))(a1, v11);
  if (!v3)
  {
    *v17 = v18;
  }

  return result;
}

uint64_t sub_1E0B6F844()
{
  v2 = *v0;
  sub_1E0B73470();
  return sub_1E0BA8AB8();
}

AppleKeyStore::AKSIdentity::State::LockState AKSIdentity.State.LockState.init(derEncoded:withIdentifier:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v19 = a3;
  v6 = sub_1E0BA89F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E0BA8B08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  (*(v7 + 16))(v10, a2, v6);
  sub_1E0B73470();
  sub_1E0BA8AA8();
  if (v3)
  {
    (*(v7 + 8))(a2, v6);
    return (*(v12 + 8))(a1, v11);
  }

  else
  {
    v16 = v19;
    result = AKSIdentity.State.LockState.init(rawValue:)(v21).value;
    v17 = v20;
    if (v20 == 8)
    {
      __break(1u);
    }

    else
    {
      (*(v7 + 8))(a2, v6);
      result = (*(v12 + 8))(a1, v11);
      *v16 = v17;
    }
  }

  return result;
}

uint64_t AKSIdentity.State.LockState.serialize(into:withIdentifier:)()
{
  v2 = *v0;
  sub_1E0B73470();
  return sub_1E0BA8AB8();
}

uint64_t sub_1E0B6FC00()
{
  v2 = *v0;
  sub_1E0B73470();
  return sub_1E0BA8AB8();
}

uint64_t AKSIdentity.Config.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78998, &qword_1E0BABEE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v58 = *(v1 + 24);
  v52 = v1[4];
  v53 = v10;
  v51 = *(v1 + 40);
  v50 = v1[6];
  v49 = *(v1 + 56);
  v48 = *(v1 + 57);
  v46 = *(v1 + 65);
  v47 = *(v1 + 73);
  v11 = *(v1 + 82);
  v43 = *(v1 + 74);
  v44 = v11;
  v45 = *(v1 + 90);
  v41 = v1[12];
  v42 = *(v1 + 104);
  v39 = v1[14];
  v40 = *(v1 + 120);
  v12 = v1[17];
  v36 = v1[16];
  v37 = v12;
  v38 = *(v1 + 144);
  v35 = *(v1 + 145);
  v34 = *(v1 + 146);
  v32 = v1[19];
  v33 = *(v1 + 160);
  v30 = v1[21];
  v31 = *(v1 + 176);
  v28 = v1[23];
  v29 = *(v1 + 192);
  v26 = v1[25];
  v27 = *(v1 + 208);
  v25 = *(v1 + 209);
  v24 = *(v1 + 210);
  v13 = v1[28];
  v21 = v1[27];
  v22 = v13;
  v23 = v1[29];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B734C4();
  v15 = v3;
  sub_1E0BA8FB8();
  LOBYTE(v55) = 0;
  v16 = v54;
  sub_1E0BA8DC8();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v49;
  v19 = v50;
  v20 = v48;
  v54 = v4;
  LOBYTE(v55) = 1;
  sub_1E0BA8DC8();
  LOBYTE(v55) = 2;
  sub_1E0BA8DC8();
  v55 = v19;
  LOBYTE(v56) = v18;
  v59 = 3;
  sub_1E0B73518();
  sub_1E0BA8DD8();
  v55 = v20;
  v56 = v46;
  v57 = v47;
  v59 = 4;
  sub_1E0B73210();
  sub_1E0BA8DD8();
  v55 = v43;
  v56 = v44;
  v57 = v45;
  v59 = 5;
  sub_1E0BA8DD8();
  LOBYTE(v55) = 6;
  sub_1E0BA8DC8();
  LOBYTE(v55) = 7;
  sub_1E0BA8DC8();
  v55 = v36;
  v56 = v37;
  v57 = v38;
  v59 = 8;
  sub_1E0B7356C();
  sub_1E0BA8DD8();
  LOBYTE(v55) = 9;
  sub_1E0BA8DB8();
  LOBYTE(v55) = 10;
  sub_1E0BA8DB8();
  LOBYTE(v55) = 11;
  sub_1E0BA8DC8();
  LOBYTE(v55) = 12;
  sub_1E0BA8DC8();
  LOBYTE(v55) = 13;
  sub_1E0BA8DC8();
  LOBYTE(v55) = 14;
  sub_1E0BA8DC8();
  LOBYTE(v55) = 15;
  sub_1E0BA8DB8();
  LOBYTE(v55) = 16;
  sub_1E0BA8DB8();
  v55 = v21;
  v59 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE789B8, &qword_1E0BABEE8);
  sub_1E0B735C0();
  sub_1E0BA8DD8();
  v55 = v22;
  v59 = 18;
  sub_1E0BA8DD8();
  v55 = v23;
  v59 = 19;
  sub_1E0BA8DD8();
  return (*(v54 + 8))(v7, v15);
}

uint64_t AKSUUID.encode(to:)(void *a1)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0BA8FA8();
  v18 = *v1;
  v3 = sub_1E0B63E08(&v18, v19);
  v4 = v3[2];
  if (v4)
  {
    v16 = v3;
    v17 = MEMORY[0x1E69E7CC0];
    sub_1E0B727BC(0, v4, 0);
    v5 = v16;
    v6 = v17;
    v7 = 32;
    sub_1E0B7363C();
    do
    {
      *&v18 = *(v5 + v7);
      v8 = sub_1E0BA8D08();
      v10 = v9;
      if (sub_1E0BA8CE8() == 1)
      {
        *&v18 = 48;
        *(&v18 + 1) = 0xE100000000000000;
        MEMORY[0x1E12E7A90](v8, v10);
        v5 = v16;

        v10 = *(&v18 + 1);
        v8 = v18;
      }

      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E0B727BC((v11 > 1), v12 + 1, 1);
        v5 = v16;
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      ++v7;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE788C0, &qword_1E0BABEA0);
  sub_1E0B72C5C();
  sub_1E0BA8C98();

  __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_1E0BA8E98();

  result = __swift_destroy_boxed_opaque_existential_1(v19);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AKSIdentity.Config.init(derEncoded:withIdentifier:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v210 = a2;
  v132 = a1;
  v120 = a3;
  v129 = type metadata accessor for DERDictionaryItem();
  v3 = *(*(v129 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v129);
  v126 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v125 = &v109 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v109 - v8;
  v130 = sub_1E0BA8AE8();
  v128 = *(v130 - 8);
  v9 = *(v128 + 8);
  v10 = MEMORY[0x1EEE9AC00](v130);
  v121 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v122 = &v109 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v123 = &v109 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v124 = &v109 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v109 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v109 - v21;
  v23 = sub_1E0BA89F8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E0BA8B08();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = 1;
  v207 = 1;
  v205 = 1;
  v203 = 1;
  v202 = 1;
  v201 = 1;
  v198 = 1;
  v196 = 1;
  v194 = 1;
  v191 = 1;
  v189 = 1;
  v187 = 1;
  v185 = 1;
  (*(v29 + 16))(v32, v132, v28);
  (*(v24 + 16))(v27, v210, v23);
  v133 = &v134;
  v134 = MEMORY[0x1E69E7CC0];
  v33 = v131;
  sub_1E0BA8C38();
  v131 = v33;
  if (v33)
  {
    v34 = *(v24 + 8);
    v34(v27, v23);
    v35 = *(v29 + 8);
    v35(v32, v28);

    v34(v210, v23);
    v35(v132, v28);
LABEL_29:
    v134 = 0;
    LOBYTE(v135) = v209;
    *(&v135 + 1) = *v208;
    HIDWORD(v135) = *&v208[3];
    v136 = 0;
    v137 = v207;
    *v138 = *v206;
    *&v138[3] = *&v206[3];
    v139 = 0;
    v140 = v205;
    *v141 = *v204;
    *&v141[3] = *&v204[3];
    v142 = 0;
    v143 = v203;
    v144 = 0;
    v145 = 0;
    v146 = v202;
    v147 = 0;
    v148 = 0;
    v149 = v201;
    v151 = v200;
    v150 = v199;
    v152 = 0;
    v153 = v198;
    *&v154[3] = *&v197[3];
    *v154 = *v197;
    v155 = 0;
    v156 = v196;
    *&v157[3] = *&v195[3];
    *v157 = *v195;
    v158 = 0;
    v159 = 0;
    v160 = v194;
    v161 = 2;
    v162 = 2;
    v164 = v193;
    v163 = v192;
    v165 = 0;
    v166 = v191;
    *&v167[3] = *&v190[3];
    *v167 = *v190;
    v168 = 0;
    v169 = v189;
    *&v170[3] = *&v188[3];
    *v170 = *v188;
    v171 = 0;
    v172 = v187;
    *&v173[3] = *&v186[3];
    *v173 = *v186;
    v174 = 0;
    v175 = v185;
    v176 = 514;
    v178 = v184;
    v177 = v183;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    return sub_1E0B733EC(&v134);
  }

  v117 = v20;
  v118 = v22;
  v37 = *(v24 + 8);
  v36 = v24 + 8;
  v119 = v37;
  v37(v27, v23);
  v40 = *(v29 + 8);
  v39 = v29 + 8;
  v38 = v40;
  v40(v32, v28);
  v41 = v182;

  v42 = v28;
  if (qword_1ECE784E0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for der_key();
  v44 = __swift_project_value_buffer(v43, qword_1ECE790C8);
  v45 = v131;
  v46 = sub_1E0B684C0(v44, v41, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v48 = v41;
  v49 = v210;
  if (v45)
  {

    v119(v49, v23);
    v38(v132, v42);
    goto LABEL_29;
  }

  v115 = v42;
  v116 = v46;
  v50 = v48;
  v131 = v43;
  v209 = v47 & 1;
  if (qword_1ECE784E8 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v131, qword_1ECE790E0);
  v114 = sub_1E0B684C0(v51, v50, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v207 = v52 & 1;
  if (qword_1ECE784F0 != -1)
  {
    swift_once();
  }

  v53 = __swift_project_value_buffer(v131, qword_1ECE790F8);
  v54 = sub_1E0B684C0(v53, v50, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v55 = v130;
  v110 = v38;
  v111 = v23;
  v112 = v39;
  v113 = v54;
  v205 = v56 & 1;
  if (qword_1ECE78508 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v131, qword_1ECE79140);
  v57 = v127;
  sub_1E0B64650(v50, v127);
  v109 = v50;
  v61 = v128;
  v62 = *(v128 + 2);
  v63 = v55;
  v64 = v118;
  v62(v118, v57 + *(v129 + 20), v63);
  sub_1E0B671C8(v57, type metadata accessor for DERDictionaryItem);
  v62(v117, v64, v63);
  sub_1E0B737B8();
  sub_1E0BA8B78();
  v75 = v64;
  v76 = v130;
  v61[1](v75, v130);
  v77 = v109;
  v118 = v134;
  v203 = 0;
  if (qword_1ECE785D0 != -1)
  {
    swift_once();
  }

  v127 = v36;
  __swift_project_value_buffer(v131, qword_1ECE79398);
  v58 = v125;
  sub_1E0B64650(v77, v125);
  v65 = v128;
  v66 = *(v128 + 2);
  v67 = v58 + *(v129 + 20);
  v68 = v58;
  v69 = v124;
  v66(v124, v67, v76);
  sub_1E0B671C8(v68, type metadata accessor for DERDictionaryItem);
  v66(v123, v69, v76);
  sub_1E0B73764();
  sub_1E0BA8B78();
  v65[1](v69, v76);
  v78 = v129;
  v79 = v126;
  v128 = v134;
  v129 = v135;
  v202 = 0;
  v59 = v131;
  if (qword_1ECE78608 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v59, qword_1ECE79440);
  sub_1E0B64650(v77, v79);
  v70 = *(v78 + 20);
  v71 = v65[2];
  v72 = v122;
  (v71)(v122, v79 + v70, v76);
  sub_1E0B671C8(v79, type metadata accessor for DERDictionaryItem);
  (v71)(v121, v72, v76);
  sub_1E0B73764();
  sub_1E0BA8B78();
  v65[1](v72, v76);
  v80 = v131;
  v126 = v134;
  v130 = v135;
  v201 = 0;
  if (qword_1ECE78618 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v80, qword_1ECE79470);
  v125 = sub_1E0B684C0(v60, v77, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v198 = v73 & 1;
  if (qword_1ECE78628 != -1)
  {
    swift_once();
  }

  v74 = __swift_project_value_buffer(v80, qword_1ECE794A0);
  v124 = sub_1E0B684C0(v74, v77, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v196 = v81 & 1;
  if (qword_1ECE78620 != -1)
  {
    swift_once();
  }

  v82 = __swift_project_value_buffer(v80, qword_1ECE79488);
  v83 = sub_1E0B684C0(v82, v77, MEMORY[0x1E69E76D8], MEMORY[0x1E69D4EF8]);
  if (v84)
  {
    v85 = 0;
  }

  else
  {
    v85 = v83;
  }

  v86 = __ROR8__(v85, 32) & 0xFFFFFFFF0000FFFFLL;
  v194 = 0;
  if (qword_1ECE78668 != -1)
  {
    swift_once();
  }

  v87 = __swift_project_value_buffer(v80, qword_1ECE79560);
  v88 = sub_1E0B686F4(v87, v77);
  v90 = v88;
  if (qword_1ECE78670 != -1)
  {
    swift_once();
  }

  v91 = __swift_project_value_buffer(v131, qword_1ECE79578);
  LODWORD(v123) = sub_1E0B686F4(v91, v77);
  if (qword_1ECE78680 != -1)
  {
    swift_once();
  }

  v93 = v77;
  v92 = __swift_project_value_buffer(v131, qword_1ECE795A8);
  v94 = sub_1E0B684C0(v92, v77, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v191 = v95 & 1;
  if (qword_1ECE78678 != -1)
  {
    swift_once();
  }

  v96 = __swift_project_value_buffer(v131, qword_1ECE79590);
  v97 = sub_1E0B684C0(v96, v93, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v189 = v98 & 1;
  if (qword_1ECE784F8 != -1)
  {
    swift_once();
  }

  v99 = __swift_project_value_buffer(v131, qword_1ECE79110);
  v100 = sub_1E0B684C0(v99, v93, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  v187 = v101 & 1;
  if (qword_1ECE78500 != -1)
  {
    swift_once();
  }

  v102 = __swift_project_value_buffer(v131, qword_1ECE79128);
  v131 = sub_1E0B684C0(v102, v93, MEMORY[0x1E69E6530], MEMORY[0x1E69D4EC0]);
  LODWORD(v122) = v103;

  v185 = v122 & 1;
  LODWORD(v121) = v203;
  v104 = v118;
  LODWORD(v122) = (v118 >> 1) & 1;
  v119(v210, v111);
  result = v110(v132, v115);
  v105 = v121 == 0;
  v106 = v120;
  *v120 = v116;
  v107 = v122;
  if (v105)
  {
    v108 = (v104 & 8) != 0;
  }

  else
  {
    v107 = 2;
    v108 = 2;
  }

  *(v106 + 8) = v209;
  *(v106 + 9) = *v208;
  *(v106 + 3) = *&v208[3];
  v106[2] = v114;
  *(v106 + 24) = v207;
  *(v106 + 25) = *v206;
  *(v106 + 7) = *&v206[3];
  v106[4] = v113;
  *(v106 + 40) = v205;
  *(v106 + 41) = *v204;
  *(v106 + 11) = *&v204[3];
  v106[6] = v104;
  *(v106 + 56) = v203;
  *(v106 + 57) = v128;
  *(v106 + 65) = v129;
  *(v106 + 73) = v202;
  *(v106 + 74) = v126;
  *(v106 + 82) = v130;
  *(v106 + 90) = v201;
  *(v106 + 95) = v200;
  *(v106 + 91) = v199;
  v106[12] = v125;
  *(v106 + 104) = v198;
  *(v106 + 27) = *&v197[3];
  *(v106 + 105) = *v197;
  v106[14] = v124;
  *(v106 + 120) = v196;
  *(v106 + 31) = *&v195[3];
  *(v106 + 121) = *v195;
  v106[16] = v85;
  v106[17] = v86;
  *(v106 + 144) = v194;
  *(v106 + 145) = v90;
  *(v106 + 146) = v123;
  *(v106 + 151) = v193;
  *(v106 + 147) = v192;
  v106[19] = v94;
  *(v106 + 160) = v191;
  *(v106 + 41) = *&v190[3];
  *(v106 + 161) = *v190;
  v106[21] = v97;
  *(v106 + 176) = v189;
  *(v106 + 45) = *&v188[3];
  *(v106 + 177) = *v188;
  v106[23] = v100;
  *(v106 + 192) = v187;
  *(v106 + 49) = *&v186[3];
  *(v106 + 193) = *v186;
  v106[25] = v131;
  *(v106 + 208) = v185;
  *(v106 + 209) = v107;
  *(v106 + 210) = v108;
  *(v106 + 215) = v184;
  *(v106 + 211) = v183;
  v106[27] = 0;
  v106[28] = 0;
  v106[29] = 0;
  return result;
}

uint64_t AKSIdentity.Config.serialize(into:withIdentifier:)(uint64_t a1)
{
  v34 = a1;
  v2 = sub_1E0BA8AE8();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for der_key();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DERDictionaryItem();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = *(v1 + 8);
  v52 = v1[2];
  v51 = *(v1 + 24);
  v50 = v1[4];
  v49 = *(v1 + 40);
  v16 = *(v1 + 57);
  v41 = *(v1 + 65);
  v42 = v16;
  LODWORD(v16) = *(v1 + 73);
  v46 = v1[23];
  v45 = *(v1 + 192);
  v44 = v1[25];
  v43 = *(v1 + 208);
  v39 = *(v1 + 209);
  v40 = v16;
  v38 = *(v1 + 210);
  v17 = v1[27];
  v35 = v1[28];
  v36 = v1[29];
  v37 = v17;
  v56 = 0;
  if (qword_1ECE784E0 != -1)
  {
    swift_once();
  }

  v18 = v6;
  v19 = __swift_project_value_buffer(v6, qword_1ECE790C8);
  if (v15)
  {
    v20 = v53;
  }

  else
  {
    sub_1E0B76324(v19, v9, type metadata accessor for der_key);
    v54 = v14;
    v55 = 0;
    v21 = v53;
    sub_1E0BA8AD8();
    v20 = v21;
    if (v21)
    {
      return sub_1E0B671C8(v9, type metadata accessor for der_key);
    }

    sub_1E0B7380C(v9, v13);
    (*(v47 + 32))(&v13[*(v10 + 20)], v5, v48);
    sub_1E0B64850(v13);
    sub_1E0B671C8(v13, type metadata accessor for DERDictionaryItem);
  }

  if (qword_1ECE784E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v18, qword_1ECE790E0);
  sub_1E0B68914(v23, v52, v51);
  if (!v20)
  {
    if (qword_1ECE784F0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v18, qword_1ECE790F8);
    sub_1E0B68914(v24, v50, v49);
    if (qword_1ECE784F8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_1ECE79110);
    sub_1E0B68914(v25, v46, v45);
    if (qword_1ECE78500 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v18, qword_1ECE79128);
    sub_1E0B68914(v26, v44, v43);
    if (qword_1ECE785D0 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v18, qword_1ECE79398);
    sub_1E0B68BA8(v27, v42, v41, v40);
    if (qword_1ECE78688 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v18, qword_1ECE795C0);
    sub_1E0B68E50(v28, v39);
    if (qword_1ECE78690 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v18, qword_1ECE795D8);
    sub_1E0B68E50(v29, v38);
    v30 = v37;
    if (v37)
    {
      if (qword_1ECE78610 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v18, qword_1ECE79458);
      sub_1E0B64CA0(v31, v30);
    }

    if (v36)
    {
      if (qword_1ECE78410 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v18, qword_1ECE78E58);
      v33 = v36;
    }

    else
    {
      if (!v35)
      {
LABEL_38:
        v54 = v56;
        sub_1E0B670F0();
        sub_1E0BA8BD8();
      }

      if (qword_1ECE78420 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v18, qword_1ECE78E88);
      v33 = v35;
    }

    sub_1E0B64CA0(v32, v33);
    goto LABEL_38;
  }
}

void sub_1E0B726FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE787B0, &qword_1E0BABA88);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1E0B727BC(char *a1, int64_t a2, char a3)
{
  result = sub_1E0B7291C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E0B727DC(void *a1, int64_t a2, char a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C48, &qword_1E0BADC30, &qword_1ECE78C50, &qword_1E0BADC38);
  *v3 = result;
  return result;
}

void *sub_1E0B7281C(void *a1, int64_t a2, char a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C30, &qword_1E0BADC18, &qword_1ECE78C38, &qword_1E0BADC20);
  *v3 = result;
  return result;
}

void *sub_1E0B7285C(void *a1, int64_t a2, char a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C20, &qword_1E0BADC08, &qword_1ECE78C28, &qword_1E0BADC10);
  *v3 = result;
  return result;
}

void *sub_1E0B7289C(void *a1, int64_t a2, char a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C10, &qword_1E0BADBF8, &qword_1ECE78C18, &qword_1E0BADC00);
  *v3 = result;
  return result;
}

void *sub_1E0B728DC(void *a1, int64_t a2, char a3)
{
  result = sub_1E0B72A28(a1, a2, a3, *v3, &qword_1ECE78C00, &qword_1E0BADBE8, &qword_1ECE78C08, &qword_1E0BADBF0);
  *v3 = result;
  return result;
}

char *sub_1E0B7291C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78C40, &qword_1E0BADC28);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E0B72A28(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E0B72BB4()
{
  result = qword_1ECE788A8;
  if (!qword_1ECE788A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788A8);
  }

  return result;
}

unint64_t sub_1E0B72C08()
{
  result = qword_1ECE788B8;
  if (!qword_1ECE788B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788B8);
  }

  return result;
}

unint64_t sub_1E0B72C5C()
{
  result = qword_1ECE788C8;
  if (!qword_1ECE788C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE788C0, &qword_1E0BABEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E0B72D08()
{
  result = qword_1ECE788D8;
  if (!qword_1ECE788D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788D8);
  }

  return result;
}

unint64_t sub_1E0B72D5C()
{
  result = qword_1ECE788E8;
  if (!qword_1ECE788E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788E8);
  }

  return result;
}

unint64_t sub_1E0B72DB0()
{
  result = qword_1ECE788F8;
  if (!qword_1ECE788F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE788F8);
  }

  return result;
}

unint64_t sub_1E0B72E04()
{
  result = qword_1ECE78900;
  if (!qword_1ECE78900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78900);
  }

  return result;
}

unint64_t sub_1E0B72E58()
{
  result = qword_1ECE78910;
  if (!qword_1ECE78910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78910);
  }

  return result;
}

unint64_t sub_1E0B72EAC()
{
  result = qword_1ECE78920;
  if (!qword_1ECE78920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78920);
  }

  return result;
}

unint64_t sub_1E0B72F00()
{
  result = qword_1ECE78928;
  if (!qword_1ECE78928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78928);
  }

  return result;
}

uint64_t sub_1E0B72F54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746F6C534553 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x744164656C696166 && a2 == 0xEE007374706D6574 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB71F0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E0BA8E88();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1E0B730C0()
{
  result = qword_1ECE78938;
  if (!qword_1ECE78938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78938);
  }

  return result;
}

unint64_t sub_1E0B73114()
{
  result = qword_1ECE78940;
  if (!qword_1ECE78940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78940);
  }

  return result;
}

unint64_t sub_1E0B73168()
{
  result = qword_1ECE78948;
  if (!qword_1ECE78948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78948);
  }

  return result;
}

unint64_t sub_1E0B731BC()
{
  result = qword_1ECE78950;
  if (!qword_1ECE78950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78950);
  }

  return result;
}

unint64_t sub_1E0B73210()
{
  result = qword_1ECE78958;
  if (!qword_1ECE78958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78958);
  }

  return result;
}

unint64_t sub_1E0B73264()
{
  result = qword_1ECE78968;
  if (!qword_1ECE78968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78968);
  }

  return result;
}

unint64_t sub_1E0B732B8()
{
  result = qword_1ECE78970;
  if (!qword_1ECE78970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78970);
  }

  return result;
}

unint64_t sub_1E0B7330C()
{
  result = qword_1ECE78978;
  if (!qword_1ECE78978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78978);
  }

  return result;
}

unint64_t sub_1E0B73398()
{
  result = qword_1ECE78980;
  if (!qword_1ECE78980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78980);
  }

  return result;
}

unint64_t sub_1E0B7341C()
{
  result = qword_1ECE78988;
  if (!qword_1ECE78988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78988);
  }

  return result;
}

unint64_t sub_1E0B73470()
{
  result = qword_1ECE78990;
  if (!qword_1ECE78990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78990);
  }

  return result;
}

unint64_t sub_1E0B734C4()
{
  result = qword_1ECE789A0;
  if (!qword_1ECE789A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789A0);
  }

  return result;
}

unint64_t sub_1E0B73518()
{
  result = qword_1ECE789A8;
  if (!qword_1ECE789A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789A8);
  }

  return result;
}

unint64_t sub_1E0B7356C()
{
  result = qword_1ECE789B0;
  if (!qword_1ECE789B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789B0);
  }

  return result;
}

unint64_t sub_1E0B735C0()
{
  result = qword_1ECE789C0;
  if (!qword_1ECE789C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE789B8, &qword_1E0BABEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789C0);
  }

  return result;
}

unint64_t sub_1E0B7363C()
{
  result = qword_1ECE789C8;
  if (!qword_1ECE789C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789C8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1E0B73764()
{
  result = qword_1ECE789D0;
  if (!qword_1ECE789D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789D0);
  }

  return result;
}

unint64_t sub_1E0B737B8()
{
  result = qword_1ECE789D8;
  if (!qword_1ECE789D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789D8);
  }

  return result;
}

uint64_t sub_1E0B7380C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for der_key();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0B73878()
{
  result = qword_1ECE789E0;
  if (!qword_1ECE789E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789E0);
  }

  return result;
}

unint64_t sub_1E0B738D0()
{
  result = qword_1ECE789E8;
  if (!qword_1ECE789E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789E8);
  }

  return result;
}

unint64_t sub_1E0B73928()
{
  result = qword_1ECE789F0;
  if (!qword_1ECE789F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789F0);
  }

  return result;
}

unint64_t sub_1E0B73980()
{
  result = qword_1ECE789F8;
  if (!qword_1ECE789F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE789F8);
  }

  return result;
}

unint64_t sub_1E0B739D8()
{
  result = qword_1ECE78A00;
  if (!qword_1ECE78A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A00);
  }

  return result;
}

unint64_t sub_1E0B73A30()
{
  result = qword_1ECE78A08;
  if (!qword_1ECE78A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A08);
  }

  return result;
}

unint64_t sub_1E0B73A88()
{
  result = qword_1ECE78A10;
  if (!qword_1ECE78A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A10);
  }

  return result;
}

unint64_t sub_1E0B73AE0()
{
  result = qword_1ECE78A18;
  if (!qword_1ECE78A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A18);
  }

  return result;
}

unint64_t sub_1E0B73B38()
{
  result = qword_1ECE78A20;
  if (!qword_1ECE78A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A20);
  }

  return result;
}

unint64_t sub_1E0B73B90()
{
  result = qword_1ECE78A28;
  if (!qword_1ECE78A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A28);
  }

  return result;
}

unint64_t sub_1E0B73BE8()
{
  result = qword_1ECE78A30;
  if (!qword_1ECE78A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A30);
  }

  return result;
}

unint64_t sub_1E0B73C40()
{
  result = qword_1ECE78A38;
  if (!qword_1ECE78A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A38);
  }

  return result;
}

unint64_t sub_1E0B73C98()
{
  result = qword_1ECE78A40;
  if (!qword_1ECE78A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A40);
  }

  return result;
}

unint64_t sub_1E0B73CF0()
{
  result = qword_1ECE78A48;
  if (!qword_1ECE78A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A48);
  }

  return result;
}

unint64_t sub_1E0B73D48()
{
  result = qword_1ECE78A50;
  if (!qword_1ECE78A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A50);
  }

  return result;
}

unint64_t sub_1E0B73DA0()
{
  result = qword_1ECE78A58;
  if (!qword_1ECE78A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A58);
  }

  return result;
}

unint64_t sub_1E0B73DF8()
{
  result = qword_1ECE78A60;
  if (!qword_1ECE78A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A60);
  }

  return result;
}

unint64_t sub_1E0B73E50()
{
  result = qword_1ECE78A68;
  if (!qword_1ECE78A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A68);
  }

  return result;
}

unint64_t sub_1E0B73EA8()
{
  result = qword_1ECE78A70;
  if (!qword_1ECE78A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A70);
  }

  return result;
}

unint64_t sub_1E0B73F00()
{
  result = qword_1ECE78A78;
  if (!qword_1ECE78A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A78);
  }

  return result;
}

unint64_t sub_1E0B73F58()
{
  result = qword_1ECE78A80;
  if (!qword_1ECE78A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A80);
  }

  return result;
}

unint64_t sub_1E0B73FB0()
{
  result = qword_1ECE78A88;
  if (!qword_1ECE78A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A88);
  }

  return result;
}

unint64_t sub_1E0B74008()
{
  result = qword_1ECE78A90;
  if (!qword_1ECE78A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A90);
  }

  return result;
}

unint64_t sub_1E0B74060()
{
  result = qword_1ECE78A98;
  if (!qword_1ECE78A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78A98);
  }

  return result;
}

unint64_t sub_1E0B740BC()
{
  result = qword_1ECE78AA0;
  if (!qword_1ECE78AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AA0);
  }

  return result;
}

unint64_t sub_1E0B74114()
{
  result = qword_1ECE78AA8;
  if (!qword_1ECE78AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AA8);
  }

  return result;
}

unint64_t sub_1E0B7416C()
{
  result = qword_1ECE78AB0;
  if (!qword_1ECE78AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AB0);
  }

  return result;
}

unint64_t sub_1E0B741C4()
{
  result = qword_1ECE78AB8;
  if (!qword_1ECE78AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AB8);
  }

  return result;
}

unint64_t sub_1E0B7421C()
{
  result = qword_1ECE78AC0;
  if (!qword_1ECE78AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AC0);
  }

  return result;
}

unint64_t sub_1E0B74274()
{
  result = qword_1ECE78AC8;
  if (!qword_1ECE78AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AC8);
  }

  return result;
}

unint64_t sub_1E0B742CC()
{
  result = qword_1ECE78AD0;
  if (!qword_1ECE78AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AD0);
  }

  return result;
}

unint64_t sub_1E0B74324()
{
  result = qword_1ECE78AD8;
  if (!qword_1ECE78AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AD8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

__n128 __swift_memcpy16_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E0B74418(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0B74438(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E0B744B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 82))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 5);
  if (v3 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(a1 + 5);
  }

  v5 = v4 - 9;
  if (v3 < 8)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1E0B74508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSIdentity.State.LockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSIdentity.State.LockState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1E0B74734(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 216);
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

uint64_t sub_1E0B74790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSIdentity.Config.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSIdentity.Config.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSIdentity.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AKSIdentity.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E0B74B10(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E0B74BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSHandle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSHandle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E0B74E04()
{
  result = qword_1ECE78AE0;
  if (!qword_1ECE78AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AE0);
  }

  return result;
}

unint64_t sub_1E0B74E5C()
{
  result = qword_1ECE78AE8;
  if (!qword_1ECE78AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AE8);
  }

  return result;
}

unint64_t sub_1E0B74EB4()
{
  result = qword_1ECE78AF0;
  if (!qword_1ECE78AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AF0);
  }

  return result;
}

unint64_t sub_1E0B74F0C()
{
  result = qword_1ECE78AF8;
  if (!qword_1ECE78AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78AF8);
  }

  return result;
}

unint64_t sub_1E0B74F64()
{
  result = qword_1ECE78B00;
  if (!qword_1ECE78B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B00);
  }

  return result;
}

unint64_t sub_1E0B74FBC()
{
  result = qword_1ECE78B08;
  if (!qword_1ECE78B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B08);
  }

  return result;
}

unint64_t sub_1E0B75014()
{
  result = qword_1ECE78B10;
  if (!qword_1ECE78B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B10);
  }

  return result;
}

unint64_t sub_1E0B7506C()
{
  result = qword_1ECE78B18;
  if (!qword_1ECE78B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B18);
  }

  return result;
}

unint64_t sub_1E0B750C4()
{
  result = qword_1ECE78B20;
  if (!qword_1ECE78B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B20);
  }

  return result;
}

unint64_t sub_1E0B7511C()
{
  result = qword_1ECE78B28;
  if (!qword_1ECE78B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B28);
  }

  return result;
}

unint64_t sub_1E0B75174()
{
  result = qword_1ECE78B30;
  if (!qword_1ECE78B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B30);
  }

  return result;
}

unint64_t sub_1E0B751CC()
{
  result = qword_1ECE78B38;
  if (!qword_1ECE78B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B38);
  }

  return result;
}

unint64_t sub_1E0B75224()
{
  result = qword_1ECE78B40;
  if (!qword_1ECE78B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B40);
  }

  return result;
}

unint64_t sub_1E0B7527C()
{
  result = qword_1ECE78B48;
  if (!qword_1ECE78B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B48);
  }

  return result;
}

unint64_t sub_1E0B752D4()
{
  result = qword_1ECE78B50;
  if (!qword_1ECE78B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B50);
  }

  return result;
}

unint64_t sub_1E0B7532C()
{
  result = qword_1ECE78B58;
  if (!qword_1ECE78B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B58);
  }

  return result;
}

unint64_t sub_1E0B75384()
{
  result = qword_1ECE78B60;
  if (!qword_1ECE78B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B60);
  }

  return result;
}

unint64_t sub_1E0B753DC()
{
  result = qword_1ECE78B68;
  if (!qword_1ECE78B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B68);
  }

  return result;
}

unint64_t sub_1E0B75434()
{
  result = qword_1ECE78B70;
  if (!qword_1ECE78B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B70);
  }

  return result;
}

unint64_t sub_1E0B7548C()
{
  result = qword_1ECE78B78;
  if (!qword_1ECE78B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B78);
  }

  return result;
}

unint64_t sub_1E0B754E4()
{
  result = qword_1ECE78B80;
  if (!qword_1ECE78B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B80);
  }

  return result;
}

unint64_t sub_1E0B7553C()
{
  result = qword_1ECE78B88;
  if (!qword_1ECE78B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B88);
  }

  return result;
}

unint64_t sub_1E0B75594()
{
  result = qword_1ECE78B90;
  if (!qword_1ECE78B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B90);
  }

  return result;
}

unint64_t sub_1E0B755EC()
{
  result = qword_1ECE78B98;
  if (!qword_1ECE78B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78B98);
  }

  return result;
}

unint64_t sub_1E0B75644()
{
  result = qword_1ECE78BA0;
  if (!qword_1ECE78BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BA0);
  }

  return result;
}

unint64_t sub_1E0B7569C()
{
  result = qword_1ECE78BA8;
  if (!qword_1ECE78BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BA8);
  }

  return result;
}

unint64_t sub_1E0B756F4()
{
  result = qword_1ECE78BB0;
  if (!qword_1ECE78BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BB0);
  }

  return result;
}

unint64_t sub_1E0B7574C()
{
  result = qword_1ECE78BB8;
  if (!qword_1ECE78BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BB8);
  }

  return result;
}

unint64_t sub_1E0B757A4()
{
  result = qword_1ECE78BC0;
  if (!qword_1ECE78BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BC0);
  }

  return result;
}

unint64_t sub_1E0B757FC()
{
  result = qword_1ECE78BC8;
  if (!qword_1ECE78BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BC8);
  }

  return result;
}

uint64_t sub_1E0B75850(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746174536B636F6CLL && a2 == 0xE900000000000065 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66666F6B636162 && a2 == 0xE700000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x744164656C696166 && a2 == 0xEE007374706D6574 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69746172656E6567 && a2 == 0xEF65746174536E6FLL || (sub_1E0BA8E88() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB7210 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745365726F6DLL && a2 == 0xE900000000000065 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB71F0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4449555572657375 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E0BA8E88();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1E0B75B54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746F6C535350 && a2 == 0xE600000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E0BA8E88();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E0B75CB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69;
  if (v4 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4466664F6B636162 && a2 == 0xEC00000079616C65 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB71F0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449555572657375 && a2 == 0xE800000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49555570756F7267 && a2 == 0xE900000000000044 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E0BB7230 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E0BB7250 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB7270 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E0BB7290 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB72B0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E0BB72D0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E0BB72F0 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E0BB7310 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E0BB7330 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E0BB6E50 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E0BB7350 == a2 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x544B454B646E6962 && a2 == 0xEB00000000424B6FLL || (sub_1E0BA8E88() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xE800000000000000 || (sub_1E0BA8E88() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6665526D6361 && a2 == 0xE600000000000000)
  {

    return 19;
  }

  else
  {
    v6 = sub_1E0BA8E88();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1E0B76324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0B7638C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E0B763D4()
{
  result = qword_1ECE78BD0;
  if (!qword_1ECE78BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BD0);
  }

  return result;
}

unint64_t sub_1E0B76428()
{
  result = qword_1ECE78BD8;
  if (!qword_1ECE78BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BD8);
  }

  return result;
}

unint64_t sub_1E0B7647C()
{
  result = qword_1ECE78BE0;
  if (!qword_1ECE78BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BE0);
  }

  return result;
}

unint64_t sub_1E0B764D0()
{
  result = qword_1ECE78BE8;
  if (!qword_1ECE78BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BE8);
  }

  return result;
}

unint64_t sub_1E0B76524()
{
  result = qword_1ECE78BF0;
  if (!qword_1ECE78BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BF0);
  }

  return result;
}

unint64_t sub_1E0B76578()
{
  result = qword_1ECE78BF8;
  if (!qword_1ECE78BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78BF8);
  }

  return result;
}

uint64_t AKSError.hashValue.getter()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7CF0](v1);
  return sub_1E0BA8F98();
}

unint64_t sub_1E0B7686C()
{
  result = qword_1ECE78C58;
  if (!qword_1ECE78C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78C58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E0B76A20@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E0BA8DA8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1E0B76A80@<X0>(char *a1@<X8>)
{
  v2 = sub_1E0BA8DA8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1E0B76AE4(uint64_t a1)
{
  v2 = sub_1E0B76CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0B76B20(uint64_t a1)
{
  v2 = sub_1E0B76CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AKSHandle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78C80, &qword_1E0BADDA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0B76CFC();
  sub_1E0BA8FB8();
  v15 = v9;
  AKSHandle.description.getter();
  v14 = 0;
  sub_1E0BA8E08();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v13 = 1;
    sub_1E0BA8E38();
    return (*(v5 + 8))(v8, v4);
  }
}

unint64_t sub_1E0B76CFC()
{
  result = qword_1ECE78C88;
  if (!qword_1ECE78C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78C88);
  }

  return result;
}

uint64_t AKSHandle.description.getter()
{
  v1 = *v0;
  if (qword_1ECE783B0 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C60 == v1)
  {
    return 0x654B6D6574737973;
  }

  if (qword_1ECE783B8 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C64 == v1)
  {
    return 0x796C6E4F64697575;
  }

  if (qword_1ECE783C0 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C68 == v1)
  {
    return 0x6F6F52736F63616DLL;
  }

  if (qword_1ECE783C8 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C6C == v1)
  {
    return 0x6E6F6973736573;
  }

  if (qword_1ECE783D0 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C70 == v1)
  {
    return 0x70756B636162;
  }

  if (qword_1ECE783D8 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C74 == v1)
  {
    return 6578530;
  }

  if (qword_1ECE783E0 != -1)
  {
    swift_once();
  }

  if (dword_1ECE78C78 == v1)
  {
    return 0x656369766564;
  }

  else
  {
    return sub_1E0BA8E78();
  }
}

void *sub_1E0B7718C@<X0>(void *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

unint64_t sub_1E0B77204()
{
  result = qword_1ECE78C90;
  if (!qword_1ECE78C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78C90);
  }

  return result;
}

unint64_t sub_1E0B7725C()
{
  result = qword_1ECE78C98;
  if (!qword_1ECE78C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78C98);
  }

  return result;
}

unint64_t sub_1E0B772B4()
{
  result = qword_1ECE78CA0;
  if (!qword_1ECE78CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78CA0);
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

uint64_t sub_1E0B77BDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for der_key();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  return MEMORY[0x1E12E77D0](a3, a4, 2);
}

uint64_t sub_1E0B77C40@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1E0B77C98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t AKSRefKeyParam.hashValue.getter()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7CF0](v1);
  return sub_1E0BA8F98();
}

uint64_t AKSSystemKeyType.description.getter()
{
  result = 7039347;
  switch(*v0)
  {
    case 1:
      result = 7039349;
      break;
    case 2:
      result = 6580583;
      break;
    case 3:
      result = 7039329;
      break;
    case 4:
      result = 7039331;
      break;
    case 5:
      result = 7039343;
      break;
    case 6:
      result = 0x6E65766168;
      break;
    case 7:
      result = 29539;
      break;
    case 8:
      result = 7037284;
      break;
    case 9:
      result = 1801544819;
      break;
    case 0xA:
      result = 7037282;
      break;
    case 0xB:
      result = 1801544295;
      break;
    case 0xC:
      result = 6912101;
      break;
    case 0xD:
      result = 1802068836;
      break;
    case 0xE:
      result = 7038323;
      break;
    default:
      return result;
  }

  return result;
}

AppleKeyStore::AKSSystemKeyType_optional __swiftcall AKSSystemKeyType.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xF)
  {
    v2 = 15;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AKSSystemKeyGeneration.description.getter()
{
  v1 = 0x657474696D6D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6465736F706F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

AppleKeyStore::AKSSystemKeyGeneration_optional __swiftcall AKSSystemKeyGeneration.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1E0B77F5C()
{
  v1 = 0x657474696D6D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6465736F706F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t AKSSystemKeyOperation.description.getter()
{
  v1 = 0x74696D6D6F63;
  if (*v0 != 1)
  {
    v1 = 0x61726574696C626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1886221666;
  }
}

uint64_t sub_1E0B78018()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7D20](v1 + 1);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B78060()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7D20](v1 + 1);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B780A4()
{
  v1 = 0x74696D6D6F63;
  if (*v0 != 1)
  {
    v1 = 0x61726574696C626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1886221666;
  }
}

uint64_t AKSKeyClass.description.getter()
{
  result = 97;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 98;
      break;
    case 3:
      result = 99;
      break;
    case 4:
      result = 100;
      break;
    case 5:
      result = 101;
      break;
    case 6:
      result = 27489;
      break;
    case 7:
      result = 27491;
      break;
    case 8:
      result = 27492;
      break;
    case 9:
      result = 7695201;
      break;
    case 0xA:
      result = 7695203;
      break;
    case 0xB:
      result = 7695204;
      break;
    case 0xC:
      result = 1970301793;
      break;
    case 0xD:
      result = 102;
      break;
    case 0xE:
      result = 109;
      break;
    case 0xF:
      result = 28007;
      break;
    case 0x10:
      result = 27495;
      break;
    case 0x11:
      result = 30819;
      break;
    case 0x12:
      result = 7043171;
      break;
    case 0x13:
      result = 1969977443;
      break;
    case 0x14:
      result = 7695223;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

AppleKeyStore::AKSKeyClass_optional __swiftcall AKSKeyClass.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 0;
  v3 = 3;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
LABEL_11:
      v3 = v2;
      goto LABEL_12;
    case 3:
LABEL_12:
      *v1 = v3;
      break;
    case 4:
      *v1 = 4;
      break;
    case 5:
      *v1 = 5;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    default:
      *v1 = 21;
      break;
  }

  return rawValue;
}

uint64_t sub_1E0B78370(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1E0BA8F48();
  a3(v5);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B7840C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1E0BA8F48();
  a4(v6);
  return sub_1E0BA8F98();
}

uint64_t AKSRefKeyType.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x383637726562796BLL;
    v7 = 0x323031726562796BLL;
    if (v1 != 10)
    {
      v7 = 0x64696C61766E69;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x7461747365747461;
    v9 = 0x343833506365;
    if (v1 != 7)
    {
      v9 = 0x34383350616B70;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 7174515;
    v3 = 0x39313535326465;
    v4 = 0x363532506365;
    if (v1 != 4)
    {
      v4 = 0x36353250616B70;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x3535326576727563;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

AppleKeyStore::AKSRefKeyType_optional __swiftcall AKSRefKeyType.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue > 5)
  {
    if (rawValue > 8)
    {
      switch(rawValue)
      {
        case 9:
          *v1 = 9;
          return rawValue;
        case 0xALL:
          *v1 = 10;
          return rawValue;
        case 0xFFFFFFFFLL:
          *v1 = 11;
          return rawValue;
      }

      goto LABEL_26;
    }

    if (rawValue == 6)
    {
      *v1 = 6;
    }

    else if (rawValue == 7)
    {
      *v1 = 7;
    }

    else
    {
      *v1 = 8;
    }
  }

  else
  {
    if (rawValue <= 2)
    {
      switch(rawValue)
      {
        case 0:
          *v1 = 0;
          return rawValue;
        case 1:
          *v1 = 1;
          return rawValue;
        case 2:
          *v1 = 2;
          return rawValue;
      }

LABEL_26:
      *v1 = 12;
      return rawValue;
    }

    if (rawValue == 3)
    {
      *v1 = 3;
    }

    else if (rawValue == 4)
    {
      *v1 = 4;
    }

    else
    {
      *v1 = 5;
    }
  }

  return rawValue;
}

uint64_t sub_1E0B78748()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7D20](qword_1E0BAE910[v1]);
  return sub_1E0BA8F98();
}

uint64_t sub_1E0B787D0()
{
  v1 = *v0;
  sub_1E0BA8F48();
  MEMORY[0x1E12E7D20](qword_1E0BAE910[v1]);
  return sub_1E0BA8F98();
}

void *sub_1E0B78B98@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t sub_1E0B78C00@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  switch(*a1)
  {
    case 1:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78408 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE78E40;
      goto LABEL_106;
    case 2:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78410 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE78E58;
      goto LABEL_106;
    case 3:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78428 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE78EA0;
      goto LABEL_106;
    case 4:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE783F8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE78E10;
      goto LABEL_106;
    case 5:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785E0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE793C8;
      goto LABEL_106;
    case 6:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785D8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE793B0;
      goto LABEL_106;
    case 7:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785F0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE793F8;
      goto LABEL_106;
    case 8:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785F8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79410;
      goto LABEL_106;
    case 9:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78630 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE794B8;
      goto LABEL_106;
    case 0xA:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78638 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE794D0;
      goto LABEL_106;
    case 0xB:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78640 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE794E8;
      goto LABEL_106;
    case 0xC:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78648 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79500;
      goto LABEL_106;
    case 0xD:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78650 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79518;
      goto LABEL_106;
    case 0xE:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE785E8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE793E0;
      goto LABEL_106;
    case 0xF:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78540 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE791E8;
      goto LABEL_106;
    case 0x10:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78550 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79218;
      goto LABEL_106;
    case 0x11:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78568 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79260;
      goto LABEL_106;
    case 0x12:
      if (a2 != 2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78578 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79290;
      goto LABEL_106;
    case 0x13:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78580 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE792A8;
      goto LABEL_106;
    case 0x14:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78588 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE792C0;
      goto LABEL_106;
    case 0x15:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78570 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79278;
      goto LABEL_106;
    case 0x16:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78548 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79200;
      goto LABEL_106;
    case 0x17:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78660 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79548;
      goto LABEL_106;
    case 0x18:
      if (a2 != 1)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78698 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE795F0;
      goto LABEL_106;
    case 0x19:
      if (a2)
      {
        goto LABEL_107;
      }

      if (qword_1ECE78600 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for der_key();
      v5 = qword_1ECE79428;
      goto LABEL_106;
    default:
      if (a2 == 1)
      {
        if (qword_1ECE78418 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for der_key();
        v5 = qword_1ECE78E70;
LABEL_106:
        v6 = __swift_project_value_buffer(v4, v5);
        return sub_1E0B76324(v6, a3, type metadata accessor for der_key);
      }

      else
      {
LABEL_107:
        sub_1E0B67560();
        swift_allocError();
        *v8 = 10;
        return swift_willThrow();
      }
  }
}