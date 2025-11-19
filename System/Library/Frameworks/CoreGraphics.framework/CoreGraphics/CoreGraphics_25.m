void _sSo13CGPDFArrayRefa12CoreGraphicsEySSSgSi_SSmtcis_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_18438FCF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[4] = a1;
  v15[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854998);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v15[0] = v15[2];
  v15[1] = v15[3];
  sub_18438FCE8();
  sub_183F8FF4C();
  v13 = sub_18438FF68();
  (*(v9 + 8))(v12, v8);
  if (!v13)
  {
    __break(1u);
LABEL_7:
    sub_184390118();
    __break(1u);
    return;
  }

  v14 = CGPDFObjectCreateWithName((v13 + 32));

  if (v14)
  {
    CGPDFArraySetObjectAtIndex(*v4, a3, v14);
    CGPDFObjectRelease(v14);
  }
}

void sub_183FBECA0(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  a5(0);
  if (swift_dynamicCast())
  {
    v10 = a6();
    if (v10)
    {
      v11 = v10;
      CGPDFArraySetObjectAtIndex(*v6, a2, v10);
      CGPDFObjectRelease(v11);
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_183FBEEE0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854940);
    sub_183FBEF9C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_183FBEF9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPDFArrayRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_183FBF080()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FBF100(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_183FBF268(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

double sub_183FBF510@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  return result;
}

double sub_183FBF534@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = v3;
  *(a2 + 20) = 0;
  return result;
}

double sub_183FBF558@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 12) = 0;
  *(a3 + 16) = v5;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_183FBF57C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (result + 8);
  v4 = (result + 16);
  v5 = *(result + 20);
  v6 = *(v2 + 20);
  if (*(result + 12))
  {
    v3 = (v2 + 8);
  }

  v7 = *v3;
  v8 = *(result + 12) & *(v2 + 12);
  if (*(result + 20))
  {
    v4 = (v2 + 16);
  }

  v9 = *v4;
  *a2 = *result;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8;
  *(a2 + 16) = v9;
  *(a2 + 20) = v5 & v6;
  return result;
}

BOOL sub_183FBF628(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_183FBF658@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_183FBF684@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_183FBF760@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_183F80DD0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_183FBF7A0()
{
  result = sub_183FBF95C(&unk_1EF2324A8);
  byte_1EA868CE8 = result;
  return result;
}

uint64_t sub_183FBF7C8()
{
  result = sub_183FBF95C(&unk_1EF2324D0);
  byte_1EA868CEA = result;
  return result;
}

uint64_t sub_183FBF7F0()
{
  result = sub_183FBF95C(&unk_1EF2324F8);
  byte_1EA868CEB = result;
  return result;
}

uint64_t sub_183FBF818()
{
  result = sub_183FBF95C(&unk_1EF232480);
  byte_1EA868CE9 = result;
  return result;
}

double sub_183FBF840@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 1;
  return result;
}

double sub_183FBF854@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 2;
  return result;
}

double sub_183FBF868@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 3;
  return result;
}

double sub_183FBF87C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v4 = *(v2 + 8) ^ *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_183FBF898(char a1, unsigned __int8 a2, unsigned int a3)
{
  v3 = (a3 >> 8) & 1;
  v4 = (a3 ^ a1);
  v5 = ((1 << (a3 ^ a1)) & a2) != 0;
  v6 = v5 ^ ((a3 & 0x100) >> 8);
  v7 = v5 << 8;
  if (v4 > 7)
  {
    v7 = 0;
  }

  else
  {
    v3 = v6;
  }

  v8 = v7 | v4;
  if (v3)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  return v8 | v9;
}

uint64_t sub_183FBF8E8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  if (v3[9])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v3[8];
  if (v3[10])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  result = sub_183FBF898(*(a1 + 8), *a2, v6 | v7);
  *a3 = v9;
  *(a3 + 8) = result;
  *(a3 + 9) = BYTE1(result) & 1;
  *(a3 + 10) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_183FBF95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = a1 + 32;
  v6 = v1 - 1;
  while (v3 < v1)
  {
    while (1)
    {
      v7 = *(v5 + v3);
      if (v7 < 8)
      {
        break;
      }

      if (v6 == v3)
      {
        return result;
      }

      if (v1 == ++v3)
      {
        goto LABEL_12;
      }
    }

    result = (1 << v7) | result;
    if (v6 == v3++)
    {
      return result;
    }
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_183FBF9D8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FBFA58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_183FBFBB8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Spandex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Spandex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Scanline(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Scanline(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OpcodedSegment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OpcodedSegment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SourcedSegment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_183FBFFD4()
{
  result = qword_1EA8549B8;
  if (!qword_1EA8549B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8549B8);
  }

  return result;
}

unint64_t sub_183FC002C()
{
  result = qword_1EA8549C0;
  if (!qword_1EA8549C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8549C0);
  }

  return result;
}

unint64_t sub_183FC0084()
{
  result = qword_1EA8549C8;
  if (!qword_1EA8549C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8549C8);
  }

  return result;
}

unint64_t sub_183FC00DC()
{
  result = qword_1EA8549D0;
  if (!qword_1EA8549D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8549D0);
  }

  return result;
}

unint64_t sub_183FC0134()
{
  result = qword_1EA8549D8[0];
  if (!qword_1EA8549D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA8549D8);
  }

  return result;
}

uint64_t sub_183FC018C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FC0210(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_183FC03A8(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t sub_183FC05F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, __n128 a8@<Q0>)
{
  v80 = a5;
  v69 = a1;
  v67 = a7;
  v89 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a8);
  v65 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18438FF18();
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v63 - v16;
  v70 = a3;
  v68 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v79 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v21);
  v23 = &v63 - v22;
  v24 = *(a6 + 8);
  v25 = v17;
  v26 = a2;
  v87 = v24;
  v27 = *(*(v24 + 24) + 16);
  v28 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v63 - v31;
  v33 = AssociatedTypeWitness;
  v34 = v23;
  v35 = swift_checkMetadataState();
  v73 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v83 = &v63 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v64 = &v63 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v82 = &v63 - v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v63 - v46;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = v29;
  v81 = AssociatedConformanceWitness;
  sub_184390288();
  v88 = v47;
  v84 = v32;
  v86 = v27;
  sub_184390228();
  v49 = v65;
  (*(v68 + 16))(v79, v69, v70);
  sub_18438FD38();
  v50 = v64;
  v51 = swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  v52 = v89;
  v79 = *(v89 + 48);
  v80 = v89 + 48;
  if ((v79)(v25, 1, v26) != 1)
  {
    v53 = *(v52 + 32);
    ++v73;
    v74 = v53;
    v89 = v52 + 32;
    v71 = (v52 + 8);
    v72 = v26;
    v77 = v28;
    v78 = v34;
    v75 = v51;
    v76 = v33;
    do
    {
      v74(v49, v25, v26);
      sub_184390288();
      sub_184390228();
      v54 = v50;
      v55 = v83;
      sub_18438FDA8();
      v56 = v82;
      sub_18438FFB8();
      v57 = v25;
      v58 = v49;
      v59 = *v73;
      v60 = v55;
      v50 = v54;
      (*v73)(v60, v35);
      v59(v54, v35);
      sub_18438FFC8();
      v59(v56, v35);
      v49 = v58;
      v25 = v57;
      v26 = v72;
      v33 = v76;
      v34 = v78;
      (*v71)(v49, v72);
      sub_18438FF58();
    }

    while ((v79)(v25, 1, v26) != 1);
  }

  (*(v68 + 8))(v69, v70);
  (*(v66 + 8))(v34, v33);
  v61 = swift_getAssociatedTypeWitness();
  return (*(*(v61 - 8) + 32))(v67, v88, v61);
}

BOOL sub_183FC0CE8(uint64_t a1, void *a2)
{
  v35 = a1;
  v34 = *(a2[4] + 8);
  v2 = *(*(v34 + 24) + 16);
  v3 = a2[2];
  v4 = *(a2[3] + 8);
  v33[4] = v3;
  v33[5] = v4;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = v33 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v33 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = v33 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v33 - v24;
  v33[1] = swift_getAssociatedConformanceWitness();
  sub_184390288();
  v33[2] = v8;
  v33[3] = v2;
  sub_184390228();
  sub_18438FDA8();
  sub_18438FFB8();
  v26 = *(v10 + 8);
  v26(v14, v9);
  v26(v18, v9);
  sub_18438FF88();
  v26(v22, v9);
  if (sub_18438FFF8())
  {
    if (sub_18438FFE8() >= 64)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v27 = sub_18438FFF8();
  v28 = sub_18438FFE8();
  if ((v27 & 1) == 0)
  {
    if (v28 < 64)
    {
      goto LABEL_9;
    }

LABEL_10:
    v36 = 0;
    sub_183FC2958();
    sub_18438FF78();
    v30 = sub_18438FCC8();
    v26(v22, v9);
    v26(v25, v9);
    return (v30 & 1) == 0;
  }

  if (v28 > 64)
  {
    goto LABEL_10;
  }

  sub_184390288();
  sub_184390228();
  v29 = sub_18438FC78();
  v26(v22, v9);
  if (v29)
  {
LABEL_9:
    v31 = sub_18438FFD8();
    v26(v25, v9);
    v30 = v31 == 0;
    return (v30 & 1) == 0;
  }

  v26(v25, v9);
  v30 = 0;
  return (v30 & 1) == 0;
}

uint64_t sub_183FC1138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_183FC11C0(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = a1;
  v3 = *(*(*(a3[4] + 8) + 24) + 16);
  v4 = a3[3];
  v48 = a3[2];
  v49 = a2;
  v46 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v41 - v7;
  v9 = swift_checkMetadataState();
  v50 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v41 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v41 - v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_184390288();
  v44 = v8;
  v45 = v3;
  sub_184390228();
  v25 = v50;
  sub_18438FDA8();
  sub_18438FFB8();
  v26 = *(v25 + 8);
  v27 = v17;
  v28 = v13;
  v26(v27, v9);
  v46 = v26;
  v50 = v25 + 8;
  v26(v21, v9);
  sub_18438FF88();
  if (sub_18438FFF8())
  {
    if (sub_18438FFE8() < 64)
    {
      v29 = sub_18438FFD8();
      v30 = v28;
      v31 = v9;
      v32 = v46;
LABEL_4:
      v32(v30, v31);
      if (!v29)
      {
        goto LABEL_16;
      }

LABEL_18:
      v39 = 0;
      goto LABEL_19;
    }

    v51 = 0;
    sub_183FC2958();
    sub_18438FF78();
    v36 = sub_18438FCC8();
    v32 = v46;
    v46(v21, v9);
    v32(v28, v9);
    if ((v36 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v42 = v24;
    v33 = sub_18438FFF8();
    v34 = sub_18438FFE8();
    if (v33)
    {
      if (v34 <= 64)
      {
        sub_184390288();
        sub_184390228();
        v35 = sub_18438FC78();
        v32 = v46;
        v46(v21, v9);
        v24 = v42;
        if ((v35 & 1) == 0)
        {
          v32(v28, v9);
          goto LABEL_18;
        }

        v29 = sub_18438FFD8();
        v30 = v28;
        v31 = v9;
        goto LABEL_4;
      }
    }

    else if (v34 < 64)
    {
      v37 = sub_18438FFD8();
      v32 = v46;
      v46(v28, v9);
      v24 = v42;
      if (!v37)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    v51 = 0;
    sub_183FC2958();
    sub_18438FF78();
    v38 = sub_18438FCC8();
    v32 = v46;
    v46(v21, v9);
    v32(v28, v9);
    v24 = v42;
    if ((v38 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  sub_18438FFC8();
  v39 = 1;
LABEL_19:
  v32(v24, v9);
  (*(*(v48 - 8) + 16))(v47, v49);
  return v39;
}

uint64_t sub_183FC175C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v44 = a3;
  v41 = *(a2[4] + 8);
  v3 = *(*(v41 + 24) + 16);
  v4 = a2[2];
  v42 = *(a2[3] + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = v40 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v40 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = v40 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v40 - v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40[3] = AssociatedTypeWitness;
  v40[1] = AssociatedConformanceWitness;
  sub_184390288();
  v40[2] = v8;
  v40[4] = v3;
  sub_184390228();
  v43 = v4;
  sub_18438FDA8();
  sub_18438FFB8();
  v27 = *(v10 + 8);
  v27(v18, v9);
  v42 = v22;
  v27(v22, v9);
  sub_18438FF88();
  if ((sub_18438FFF8() & 1) == 0)
  {
    v28 = sub_18438FFF8();
    v29 = sub_18438FFE8();
    if (v28)
    {
      if (v29 > 64)
      {
        goto LABEL_12;
      }

      sub_184390288();
      v30 = v42;
      sub_184390228();
      v31 = sub_18438FC78();
      v27(v30, v9);
      v32 = v43;
      if (v31)
      {
        v33 = sub_18438FFD8();
        v27(v14, v9);
        if (!v33)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v27(v14, v9);
      }

LABEL_15:
      sub_18438FF98();
      sub_18438FFA8();
      v27(v30, v9);
      v27(v25, v9);
      v36 = *(v32 - 8);
      v38 = v44;
      (*(v36 + 16))(v44, v45, v32);
      v37 = 0;
      return (*(v36 + 56))(v38, v37, 1, v32);
    }

    if (v29 >= 64)
    {
      goto LABEL_12;
    }

LABEL_10:
    v34 = sub_18438FFD8();
    v27(v14, v9);
    v30 = v42;
    v32 = v43;
    if (!v34)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (sub_18438FFE8() < 64)
  {
    goto LABEL_10;
  }

LABEL_12:
  v46 = 0;
  sub_183FC2958();
  v30 = v42;
  sub_18438FF78();
  v35 = sub_18438FCC8();
  v27(v30, v9);
  v27(v14, v9);
  v32 = v43;
  if ((v35 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v27(v25, v9);
  v36 = *(v32 - 8);
  v37 = 1;
  v38 = v44;
  return (*(v36 + 56))(v38, v37, 1, v32);
}

uint64_t sub_183FC1CEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v45 = a3;
  v43 = *(a2[4] + 8);
  v3 = *(*(v43 + 24) + 16);
  v4 = a2[2];
  v42[5] = *(a2[3] + 8);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = v42 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v42 - v17;
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = v42 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v42 - v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42[3] = AssociatedTypeWitness;
  v42[1] = AssociatedConformanceWitness;
  sub_184390288();
  v42[2] = v8;
  v42[4] = v3;
  sub_184390228();
  v44 = v4;
  sub_18438FDA8();
  sub_18438FFB8();
  v27 = *(v10 + 8);
  v27(v18, v9);
  v28 = v22;
  v29 = v22;
  v30 = v27;
  v27(v29, v9);
  sub_18438FF88();
  if ((sub_18438FFF8() & 1) == 0)
  {
    v31 = sub_18438FFF8();
    v32 = sub_18438FFE8();
    if (v31)
    {
      if (v32 > 64)
      {
        goto LABEL_12;
      }

      sub_184390288();
      sub_184390228();
      v33 = sub_18438FC78();
      v30(v28, v9);
      v34 = v44;
      if (v33)
      {
        v35 = sub_18438FFD8();
        v30(v14, v9);
        if (!v35)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v30(v14, v9);
      }

LABEL_15:
      v30(v25, v9);
      v38 = *(v34 - 8);
      v40 = v45;
      (*(v38 + 16))(v45, v46, v34);
      v39 = 0;
      return (*(v38 + 56))(v40, v39, 1, v34);
    }

    if (v32 >= 64)
    {
      goto LABEL_12;
    }

LABEL_10:
    v36 = sub_18438FFD8();
    v30(v14, v9);
    v34 = v44;
    if (!v36)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (sub_18438FFE8() < 64)
  {
    goto LABEL_10;
  }

LABEL_12:
  v47 = 0;
  sub_183FC2958();
  sub_18438FF78();
  v37 = sub_18438FCC8();
  v30(v28, v9);
  v30(v14, v9);
  v34 = v44;
  if ((v37 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_18438FFC8();
  v30(v25, v9);
  v38 = *(v34 - 8);
  v39 = 1;
  v40 = v45;
  return (*(v38 + 56))(v40, v39, 1, v34);
}

uint64_t sub_183FC2278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = *(a1 + 32);

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t sub_183FC22FC(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_1843903E8();
  v4 = *(*(a2 - 8) + 8);

  return v4(v2, a2);
}

uint64_t sub_183FC23AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  a4(a1, a2, WitnessTable);
  v10 = *(*(a2 - 8) + 8);
  v10(v4, a2);

  return (v10)(a1, a2);
}

uint64_t sub_183FC247C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_183FC11C0(a1, a2, a3);
  (*(*(a3[2] - 8) + 8))(a2);
  return v5 & 1;
}

uint64_t sub_183FC24E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_183FC1CEC(a1, a2, a3);
  v5 = *(*(a2[2] - 8) + 8);

  return v5(a1);
}

uint64_t sub_183FC256C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = *(a2 + 32);

  return MEMORY[0x1EEE6BBC0](a1, a2, WitnessTable, v5);
}

uint64_t sub_183FC25E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  WitnessTable = swift_getWitnessTable();
  a4(a1, a2, WitnessTable, *(a2 + 32));
  v8 = *(*(a2 - 8) + 8);

  return v8(a1, a2);
}

uint64_t sub_183FC2684(uint64_t a1, uint64_t a2)
{
  sub_184390038();
  v4 = *(*(a2 - 8) + 8);

  return v4(v2, a2);
}

uint64_t sub_183FC2710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_183FC1138(a1, a3);
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_183FC2784@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t sub_183FC2804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = *(*(*(*(a3 + 32) + 8) + 16) + 8);

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_183FC2880(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

unint64_t sub_183FC2958()
{
  result = qword_1EA854A60;
  if (!qword_1EA854A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854A60);
  }

  return result;
}

unint64_t sub_183FC29BC()
{
  result = qword_1EA854A68;
  if (!qword_1EA854A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854A68);
  }

  return result;
}

uint64_t sub_183FC2A30(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 16;
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0x64656B636170;
    }

    if (v1 == 1)
    {
      return 0x353535424752;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x353635424752;
      case 3:
        return 0x3130313031424752;
      case 4:
        return 0x3031464943424752;
    }
  }

  sub_184390098();

  v4 = sub_1843901B8();
  MEMORY[0x1865EC630](v4);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 0x7761722874696E69;
}

CGVector __swiftcall CGVector.init(dx:dy:)(Swift::Int dx, Swift::Int dy)
{
  v2 = dx;
  v3 = dy;
  result.dy = v3;
  result.dx = v2;
  return result;
}

uint64_t CGVector.debugDescription.getter()
{
  v0 = sub_18438FDD8();
  MEMORY[0x1865EC630](v0);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v1 = sub_18438FDD8();
  MEMORY[0x1865EC630](v1);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 40;
}

uint64_t CGVector.encode(to:)(void *a1, double a2, double a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903B8();
  v9 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_183F72F08();
  sub_184390208();
  if (!v3)
  {
    v9 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_184390208();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

BOOL CGVector.isNearlyEqual(to:tolerance:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a4 == a1)
  {
    if (a5 == a2)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a4, a1);
    if (a5 == a2)
    {
      if (a4 - a1 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a5, a2);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a4);
  v9 = fabs(a5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a1);
  v11 = fabs(a2);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v10 <= 1.0)
  {
    v10 = 1.0;
  }

  return v6 <= v10 * a3;
}

Swift::Bool __swiftcall CGVectorNearlyEqualToVector(_:_:)(CGVector a1, CGVector a2)
{
  if (qword_1EA853EA8 != -1)
  {
    dy = a2.dy;
    dx = a2.dx;
    v11 = a1.dy;
    v12 = a1.dx;
    swift_once();
    a1.dx = v12;
    a1.dy = v11;
    a2.dx = dx;
    a2.dy = dy;
  }

  if (a1.dx == a2.dx)
  {
    if (a1.dy == a2.dy)
    {
      return 1;
    }

    v3 = 0.0;
  }

  else
  {
    v3 = vabdd_f64(a1.dx, a2.dx);
    if (a1.dy == a2.dy)
    {
      if (a1.dx - a2.dx == 0.0)
      {
        v3 = 0.0;
      }

      goto LABEL_13;
    }
  }

  v4 = vabdd_f64(a1.dy, a2.dy);
  if (v3 <= v4)
  {
    v3 = v4;
  }

LABEL_13:
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = fabs(a1.dx);
  v6 = fabs(a1.dy);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = fabs(a2.dx);
  v8 = fabs(a2.dy);
  if (v7 <= v8)
  {
    v7 = v8;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  if (v5 <= 1.0)
  {
    v5 = 1.0;
  }

  return v3 <= v5 * *&qword_1EA853EB0;
}

BOOL CGVectorNearlyEqualToVectorWithTolerance(_:_:_:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a1, a3);
    if (a2 == a4)
    {
      if (a1 - a3 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a2, a4);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a1);
  v9 = fabs(a2);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a3);
  v11 = fabs(a4);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 <= v10)
  {
    v8 = v10;
  }

  if (v8 <= 1.0)
  {
    v8 = 1.0;
  }

  return v6 <= v8 * a5;
}

unint64_t sub_183FC3038()
{
  result = qword_1EA854A78[0];
  if (!qword_1EA854A78[0])
  {
    type metadata accessor for CGVector(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA854A78);
  }

  return result;
}

unint64_t sub_183FC3090(uint64_t a1)
{
  result = sub_183FC3038();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_183FC30F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v22 = a2;
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a3);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v17);
  v19 = &v21 - v18;
  (*(v12 + 16))(v15, v4, v11);
  sub_18438FD38();
  (*(v7 + 16))(v10, v4 + *(a1 + 52), v6);
  return sub_183FC32F0(v19, v10, v6, v22);
}

uint64_t sub_183FC32F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for ConvertSequence.Iterator();
  return (*(*(a3 - 8) + 32))(a4 + *(v9 + 52), a2, a3);
}

uint64_t sub_183FC33E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_18438FF18();
  v19 = *(v4 - 8);
  v20 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v18 - v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v8, v20);
    v13 = swift_getAssociatedTypeWitness();
    v14 = 1;
    v15 = v21;
  }

  else
  {
    (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
    v16 = v21;
    (*(*(a1 + 40) + 24))(v12, *(a1 + 24), *(a1 + 40));
    (*(v9 + 8))(v12, AssociatedTypeWitness);
    v13 = swift_getAssociatedTypeWitness();
    v14 = 0;
    v15 = v16;
  }

  return (*(*(v13 - 8) + 56))(v15, v14, 1);
}

uint64_t sub_183FC36C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_183FC30F8(a1, a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_183FC3738(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  v7 = &v10[-v6];
  v8 = sub_18438FEE8();
  (*(v4 + 16))(v7);
  v8(v10, 0);
  (*(*(a2 + 40) + 24))(v7, *(a2 + 24));
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

void (*sub_183FC38BC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_183FC394C(v6, a2, a3);
  return sub_183F840C4;
}

void (*sub_183FC394C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_183FC3738(a2, a3);
  return sub_183F84210;
}

uint64_t sub_183FC3A40@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_18438FF18();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_183FC3ADC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  v6 = &v8 - v5;
  (*(v3 + 32))(&v8 - v5, a1, AssociatedTypeWitness);
  sub_183FC3730();
  return (*(v3 + 8))(v6, AssociatedTypeWitness);
}

uint64_t sub_183FC3C2C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183FC3CCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_183FC3F24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

CGSize __swiftcall CGSize.init(width:height:)(Swift::Int width, Swift::Int height)
{
  v2 = width;
  v3 = height;
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize_optional __swiftcall CGSize.init(dictionaryRepresentation:)(CFDictionaryRef dictionaryRepresentation)
{
  v7 = *MEMORY[0x1E69E9840];
  size.width = 0.0;
  size.height = 0.0;
  v2 = CGSizeMakeWithDictionaryRepresentation(dictionaryRepresentation, &size);

  if (v2)
  {
    width_low = LOBYTE(size.width);
  }

  else
  {
    width_low = 0;
  }

  result.value.height = v4;
  result.value.width = v3;
  result.is_nil = width_low;
  return result;
}

uint64_t CGSize.customMirror.getter(double a1, double a2)
{
  v4 = sub_184390378();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v19 - v11;
  *v19 = a1;
  *&v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1843982F0;
  v14 = MEMORY[0x1E69E7DE0];
  *(v13 + 32) = 0x6874646977;
  *(v13 + 40) = 0xE500000000000000;
  *(v13 + 48) = a1;
  *(v13 + 72) = v14;
  *(v13 + 80) = 0x746867696568;
  *(v13 + 88) = 0xE600000000000000;
  *(v13 + 120) = v14;
  *(v13 + 96) = a2;
  v15 = *MEMORY[0x1E69E75B8];
  v16 = sub_184390368();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v12, v15, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E75D8], v4);
  type metadata accessor for CGSize(0);
  return sub_184390398();
}

void CGSize.customPlaygroundQuickLook.getter(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 12;
}

__n128 sub_183FC452C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[2].n128_u8[0] = 12;
  return result;
}

uint64_t CGSize.debugDescription.getter()
{
  v0 = sub_18438FDD8();
  MEMORY[0x1865EC630](v0);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v1 = sub_18438FDD8();
  MEMORY[0x1865EC630](v1);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 40;
}

BOOL CGSize.isNearlyEqual(to:tolerance:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a4 == a1)
  {
    if (a5 == a2)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a4, a1);
    if (a5 == a2)
    {
      if (a4 - a1 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a5, a2);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a4);
  v9 = fabs(a5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a1);
  v11 = fabs(a2);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v10 <= 1.0)
  {
    v10 = 1.0;
  }

  return v6 <= v10 * a3;
}

Swift::Bool __swiftcall CGSizeNearlyEqualToSize(_:_:)(CGSize a1, CGSize a2)
{
  if (qword_1EA853EA8 != -1)
  {
    height = a2.height;
    width = a2.width;
    v11 = a1.height;
    v12 = a1.width;
    swift_once();
    a1.width = v12;
    a1.height = v11;
    a2.width = width;
    a2.height = height;
  }

  if (a1.width == a2.width)
  {
    if (a1.height == a2.height)
    {
      return 1;
    }

    v3 = 0.0;
  }

  else
  {
    v3 = vabdd_f64(a1.width, a2.width);
    if (a1.height == a2.height)
    {
      if (a1.width - a2.width == 0.0)
      {
        v3 = 0.0;
      }

      goto LABEL_13;
    }
  }

  v4 = vabdd_f64(a1.height, a2.height);
  if (v3 <= v4)
  {
    v3 = v4;
  }

LABEL_13:
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = fabs(a1.width);
  v6 = fabs(a1.height);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = fabs(a2.width);
  v8 = fabs(a2.height);
  if (v7 <= v8)
  {
    v7 = v8;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  if (v5 <= 1.0)
  {
    v5 = 1.0;
  }

  return v3 <= v5 * *&qword_1EA853EB0;
}

BOOL CGSizeNearlyEqualToSizeWithTolerance(_:_:_:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a1, a3);
    if (a2 == a4)
    {
      if (a1 - a3 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a2, a4);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a1);
  v9 = fabs(a2);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a3);
  v11 = fabs(a4);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 <= v10)
  {
    v8 = v10;
  }

  if (v8 <= 1.0)
  {
    v8 = 1.0;
  }

  return v6 <= v8 * a5;
}

unint64_t sub_183FC48BC(uint64_t a1)
{
  result = sub_183EF7D58();
  *(a1 + 8) = result;
  return result;
}

uint64_t CGPDFDictionaryRef.debugDescription.getter(const __CFString *a1)
{
  DebugDescription = CGPDFDictionaryCreateDebugDescription(a1);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

uint64_t CGPDFDictionaryRef.subscript.getter(uint64_t a1, uint64_t a2, CGPDFDictionary *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  value = 0;
  v4 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetBoolean(a3, (v4 + 32), &value);

  if (a3)
  {
    return value != 0;
  }

  else
  {
    return 2;
  }
}

{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0.0;
  v4 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetNumber(a3, (v4 + 32), v6);

  if (a3)
  {
    return *&v6[0];
  }

  else
  {
    return 0;
  }
}

void (*CGPDFDictionaryRef.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = *v3;
  *(a1 + 25) = 0;
  v6 = (a1 + 25);
  v7 = sub_18438FD08();
  LODWORD(v5) = CGPDFDictionaryGetBoolean(v5, (v7 + 32), v6);

  v8 = *v6 != 0;
  if (!v5)
  {
    v8 = 2;
  }

  *(a1 + 24) = v8;
  return sub_183FC4AA8;
}

CGPDFInteger CGPDFDictionaryRef.subscript.getter(uint64_t a1, uint64_t a2, CGPDFDictionary *a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetInteger(a3, (v4 + 32), v6);

  if (a3)
  {
    return v6[0];
  }

  else
  {
    return 0;
  }
}

void CGPDFDictionaryRef.subscript.setter()
{
  sub_183FC6148();
}

{
  sub_183FC6260();
}

void (*CGPDFDictionaryRef.subscript.modify(CGPDFInteger **a1, CGPDFInteger a2, CGPDFInteger a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  v7[2] = 0;
  v10 = v7 + 2;
  v11 = sub_18438FD08();
  Integer = CGPDFDictionaryGetInteger(v9, (v11 + 32), v10);

  v13 = *v10;
  if (!Integer)
  {
    v13 = 0;
  }

  *v8 = v13;
  *(v8 + 8) = !Integer;
  return sub_183FC4C8C;
}

void (*CGPDFDictionaryRef.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  v7[2] = 0;
  v10 = (v7 + 2);
  v11 = sub_18438FD08();
  Number = CGPDFDictionaryGetNumber(v9, (v11 + 32), v10);

  v13 = *v10;
  if (!Number)
  {
    v13 = 0.0;
  }

  *v8 = v13;
  *(v8 + 8) = !Number;
  return sub_183FC4E40;
}

void sub_183FC4E58(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[3];
  v7 = **a1;
  v8 = *(*a1 + 8);

  a3(v7, v8, v6, v5);

  free(v4);
}

const char *CGPDFDictionaryRef.subscript.getter(uint64_t a1, uint64_t a2, CGPDFDictionary *a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = sub_18438FD08();
  LODWORD(a3) = CGPDFDictionaryGetName(a3, (v4 + 32), v6);

  result = 0;
  if (a3)
  {
    result = v6[0];
    if (v6[0])
    {
      return sub_18438FD28();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

const char *CGPDFDictionaryRef.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  v7[2] = 0;
  v10 = (v7 + 2);
  v11 = sub_18438FD08();
  Name = CGPDFDictionaryGetName(v9, (v11 + 32), v10);

  v13 = 0;
  v14 = 0;
  if (!Name)
  {
    goto LABEL_7;
  }

  result = *v10;
  if (*v10)
  {
    v13 = sub_18438FD28();
LABEL_7:
    *v8 = v13;
    v8[1] = v14;
    return sub_183FC5084;
  }

  __break(1u);
  return result;
}

void sub_183FC5084(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {

    _sSo18CGPDFDictionaryRefa12CoreGraphicsEySSSgSS_SSmtcis_0(v3, v4);
  }

  else
  {

    _sSo18CGPDFDictionaryRefa12CoreGraphicsEySSSgSS_SSmtcis_0(v3, v4);
  }

  free(v2);
}

uint64_t CGPDFDictionaryRef.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_183FC5618(a1, a2, a3, CGPDFDictionaryGetString);
}

{

  return sub_183FC5618(a1, a2, a3, CGPDFDictionaryGetDictionary);
}

{

  return sub_183FC5618(a1, a2, a3, CGPDFDictionaryGetStream);
}

void CGPDFDictionaryRef.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_183FC6594(a1, a2, a3, &qword_1EA854990, &unk_18439B530, type metadata accessor for CGPDFStringRef, CGPDFObjectCreateWithString);
}

{
  sub_183FC6594(a1, a2, a3, &qword_1EA854988, &unk_18439B528, type metadata accessor for CGPDFDictionaryRef, CGPDFObjectCreateWithDictionary);
}

{
  sub_183FC6594(a1, a2, a3, &qword_1EA854980, &unk_18439B520, type metadata accessor for CGPDFStreamRef, CGPDFObjectCreateWithStream);
}

void (*CGPDFDictionaryRef.subscript.modify(CGPDFStringRef **a1, CGPDFString *a2, CGPDFString *a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  v7[1] = 0;
  v10 = v7 + 1;
  v11 = sub_18438FD08();
  LODWORD(v9) = CGPDFDictionaryGetString(v9, (v11 + 32), v10);

  v12 = *v10;
  if (!v9)
  {
    v12 = 0;
  }

  *v8 = v12;
  return sub_183FC52E0;
}

void (*CGPDFDictionaryRef.subscript.modify(CGPDFDictionaryRef **a1, CGPDFDictionary *a2, CGPDFDictionary *a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  v7[1] = 0;
  v10 = v7 + 1;
  v11 = sub_18438FD08();
  LODWORD(v9) = CGPDFDictionaryGetDictionary(v9, (v11 + 32), v10);

  v12 = *v10;
  if (!v9)
  {
    v12 = 0;
  }

  *v8 = v12;
  return sub_183FC54D8;
}

void sub_183FC5514(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)())
{
  v10 = *a1;
  v11 = (*a1)[3];
  v12 = (*a1)[2];
  v13 = **a1;

  sub_183FC6594(v13, v12, v11, a3, a4, a5, a6);

  free(v10);
}

uint64_t sub_183FC5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v6 = sub_18438FD08();
  LODWORD(a4) = a4(a3, v6 + 32, v8);

  if (a4)
  {
    return v8[0];
  }

  else
  {
    return 0;
  }
}

void (*CGPDFDictionaryRef.subscript.modify(CGPDFStreamRef **a1, CGPDFStream *a2, CGPDFStream *a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  v7[1] = 0;
  v10 = v7 + 1;
  v11 = sub_18438FD08();
  LODWORD(v9) = CGPDFDictionaryGetStream(v9, (v11 + 32), v10);

  v12 = *v10;
  if (!v9)
  {
    v12 = 0;
  }

  *v8 = v12;
  return sub_183FC5800;
}

void CGPDFDictionaryRef.subscript.getter(CGPDFDictionary *a1@<X2>, uint64_t a2@<X8>)
{
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  v4 = sub_18438FD08();
  LODWORD(a1) = CGPDFDictionaryGetObject(a1, (v4 + 32), value);

  if (!a1)
  {
    goto LABEL_34;
  }

  v5 = value[0];
  if (value[0])
  {
    Type = CGPDFObjectGetType(value[0]);
    if (Type <= kCGPDFObjectTypeName)
    {
      if (Type <= kCGPDFObjectTypeInteger)
      {
        if (Type == kCGPDFObjectTypeBoolean)
        {
          LOBYTE(v15) = 0;
          if (CGPDFObjectGetValue(v5, kCGPDFObjectTypeBoolean, &v15))
          {
            v13 = v15 != 0;
            *(a2 + 24) = MEMORY[0x1E69E6370];
            *(a2 + 32) = &protocol witness table for Bool;
            *a2 = v13;
            return;
          }
        }

        else if (Type == kCGPDFObjectTypeInteger)
        {
          v15 = 0;
          if (CGPDFObjectGetValue(v5, kCGPDFObjectTypeInteger, &v15))
          {
            v7 = v15;
            *(a2 + 24) = MEMORY[0x1E69E6530];
            *(a2 + 32) = &protocol witness table for Int;
            *a2 = v7;
            return;
          }
        }

        goto LABEL_34;
      }

      if (Type == kCGPDFObjectTypeReal)
      {
        v15 = 0;
        if (CGPDFObjectGetValue(v5, kCGPDFObjectTypeReal, &v15))
        {
          v14 = v15;
          *(a2 + 24) = MEMORY[0x1E69E63B0];
          *(a2 + 32) = &protocol witness table for Double;
          *a2 = v14;
          return;
        }

        goto LABEL_34;
      }

      v15 = 0;
      if (CGPDFObjectGetValue(v5, kCGPDFObjectTypeName, &v15))
      {
        if (v15)
        {
          v11 = sub_18438FD28();
          *(a2 + 24) = MEMORY[0x1E69E6158];
          *(a2 + 32) = &protocol witness table for String;
          *a2 = v11;
          *(a2 + 8) = v12;
          return;
        }

        goto LABEL_36;
      }

LABEL_34:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    if (Type > kCGPDFObjectTypeArray)
    {
      if (Type == kCGPDFObjectTypeDictionary)
      {
        v15 = 0;
        if (!CGPDFObjectGetValue(v5, kCGPDFObjectTypeDictionary, &v15))
        {
          goto LABEL_34;
        }

        v8 = v15;
        if (!v15)
        {
          goto LABEL_34;
        }

        type metadata accessor for CGPDFDictionaryRef(0);
        v10 = &protocol witness table for CGPDFDictionaryRef;
      }

      else
      {
        if (Type != kCGPDFObjectTypeStream)
        {
          goto LABEL_34;
        }

        v15 = 0;
        if (!CGPDFObjectGetValue(v5, kCGPDFObjectTypeStream, &v15))
        {
          goto LABEL_34;
        }

        v8 = v15;
        if (!v15)
        {
          goto LABEL_34;
        }

        type metadata accessor for CGPDFStreamRef(0);
        v10 = &protocol witness table for CGPDFStreamRef;
      }
    }

    else if (Type == kCGPDFObjectTypeString)
    {
      v15 = 0;
      if (!CGPDFObjectGetValue(v5, kCGPDFObjectTypeString, &v15))
      {
        goto LABEL_34;
      }

      v8 = v15;
      if (!v15)
      {
        goto LABEL_34;
      }

      type metadata accessor for CGPDFStringRef(0);
      v10 = &protocol witness table for CGPDFStringRef;
    }

    else
    {
      v15 = 0;
      if (!CGPDFObjectGetValue(v5, kCGPDFObjectTypeArray, &v15))
      {
        goto LABEL_34;
      }

      v8 = v15;
      if (!v15)
      {
        goto LABEL_34;
      }

      type metadata accessor for CGPDFArrayRef(0);
      v10 = &protocol witness table for CGPDFArrayRef;
    }

    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    *a2 = v8;
    return;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_183FC5B0C(uint64_t a1, uint64_t *a2)
{
  sub_183F903C8(a1, v4);

  sub_183F90068(v4, a2);

  return sub_183F90438(v4);
}

uint64_t CGPDFDictionaryRef.subscript.setter(uint64_t a1)
{
  sub_183F90068(a1, v1);

  return sub_183F90438(a1);
}

void (*CGPDFDictionaryRef.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  CGPDFDictionaryRef.subscript.getter(*v3, v7);
  return sub_183FC5C64;
}

void sub_183FC5C64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  if (a2)
  {
    sub_183F903C8(*a1, v2 + 40);

    sub_183F90068(v2 + 40, v3);

    sub_183F90438(v2 + 40);
  }

  else
  {

    sub_183F90068(v2, v3);
  }

  sub_183F90438(v2);

  free(v2);
}

uint64_t CGPDFDictionaryRef.enumerateObjects(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_183FC66BC;
  *(v7 + 24) = v6;
  v10[4] = sub_183FC670C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_183FC5E6C;
  v10[3] = &block_descriptor_2;
  v8 = _Block_copy(v10);

  CGPDFDictionaryEnumerateKeysAndValues(a3, v8);
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FC5ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_18438FD08();
  a5(a4, v8 + 32, a1);
}

Swift::Bool __swiftcall CGPDFDictionaryRef.replace(_:forKey:)(CGPDFObjectRef _, Swift::String forKey)
{
  v3 = v2;
  v5 = sub_18438FD08();
  LOBYTE(v3) = CGPDFDictionaryReplaceObject(v3, (v5 + 32), _);

  return v3;
}

Swift::Void __swiftcall CGPDFDictionaryRef.remove(forKey:)(Swift::String forKey)
{
  v2 = v1;
  v3 = sub_18438FD08();
  CGPDFDictionaryRemoveObject(v2, (v3 + 32));
}

uint64_t sub_183FC5FE0()
{
  DebugDescription = CGPDFDictionaryCreateDebugDescription(*v0);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

void _sSo18CGPDFDictionaryRefa12CoreGraphicsEySbSgSS_Sbmtcis_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549B0);
  if (swift_dynamicCast())
  {
    v1 = CGPDFObjectCreateWithBoolean(v5);
    if (v1)
    {
      v2 = v1;
      v3 = *v0;
      v4 = sub_18438FD08();

      CGPDFDictionarySetObject(v3, (v4 + 32), v2);

      CGPDFObjectRelease(v2);
    }

    else
    {
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void sub_183FC6148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549A8);
  if (swift_dynamicCast())
  {
    v1 = CGPDFObjectCreateWithInteger(v5);
    if (v1)
    {
      v2 = v1;
      v3 = *v0;
      v4 = sub_18438FD08();

      CGPDFDictionarySetObject(v3, (v4 + 32), v2);

      CGPDFObjectRelease(v2);
    }

    else
    {
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void sub_183FC6260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8549A0);
  if (swift_dynamicCast())
  {
    v1 = CGPDFObjectCreateWithReal(v5);
    if (v1)
    {
      v2 = v1;
      v3 = *v0;
      v4 = sub_18438FD08();

      CGPDFDictionarySetObject(v3, (v4 + 32), v2);

      CGPDFObjectRelease(v2);
    }

    else
    {
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

void _sSo18CGPDFDictionaryRefa12CoreGraphicsEySSSgSS_SSmtcis_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18438FCF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[4] = a1;
  v15[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854998);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v15[0] = v15[2];
  v15[1] = v15[3];
  sub_18438FCE8();
  sub_183F8FF4C();
  v11 = sub_18438FF68();
  (*(v7 + 8))(v10, v6);
  if (!v11)
  {
    __break(1u);
LABEL_8:
    sub_184390118();
    __break(1u);
    return;
  }

  v12 = CGPDFObjectCreateWithName((v11 + 32));

  if (v12)
  {
    v13 = *v3;
    v14 = sub_18438FD08();

    CGPDFDictionarySetObject(v13, (v14 + 32), v12);

    CGPDFObjectRelease(v12);
  }

  else
  {
  }
}

void sub_183FC6594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void), uint64_t (*a7)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  a6(0);
  if (swift_dynamicCast())
  {
    v10 = a7();
    if (v10)
    {
      v11 = v10;
      v12 = *v7;
      v13 = sub_18438FD08();

      CGPDFDictionarySetObject(v12, (v13 + 32), v11);

      CGPDFObjectRelease(v11);
    }

    else
    {
    }
  }

  else
  {
    sub_184390118();
    __break(1u);
  }
}

uint64_t sub_183FC66BC()
{
  v1 = *(v0 + 16);
  v2 = sub_18438FD28();
  v3 = v1(v2);

  return v3 & 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_183FC6750()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_183FC6AE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183FC67D8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_183FC6914(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_183FC6AE4()
{
  result = qword_1ED4DFF18;
  if (!qword_1ED4DFF18)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED4DFF18);
  }

  return result;
}

uint64_t sub_183FC6B50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v10 - v7;
  sub_18438FE08();
  sub_183FC6C5C(v8, a1, a2);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_183FC6C5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a1;
  v98 = a3;
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v8);
  v96 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v94 = v91 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v92 = sub_18438FF08();
  MEMORY[0x1EEE9AC00](v92, v13);
  v93 = v91 - v14;
  v125 = swift_getAssociatedTypeWitness();
  v127 = *(v125 - 8);
  v16 = MEMORY[0x1EEE9AC00](v125, v15);
  v124 = v91 - v17;
  v109 = a2;
  v18 = a2[3];
  v128 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v108 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_18438FF18();
  v21 = *(v132 - 1);
  v23 = MEMORY[0x1EEE9AC00](v132, v22);
  v101 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v107 = v91 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v123 = v91 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = v91 - v33;
  v35 = *(AssociatedTypeWitness - 8);
  v37 = MEMORY[0x1EEE9AC00](v32, v36);
  v122 = v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v42 = v91 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = v91 - v44;
  v126 = v3;
  v133 = v6;
  v46 = v5;
  v47 = v128;
  sub_18438FE48();
  v48 = *(v35 + 16);
  v91[1] = v35 + 16;
  v91[0] = v48;
  v48(v42, v103, AssociatedTypeWitness);
  v49 = *(v47 + 7);
  v131 = v34;
  v134 = v18;
  v106 = v47 + 56;
  v105 = v49;
  v49(v34, 1, 1, v18);
  v50 = *(AssociatedConformanceWitness + 8);
  v129 = v45;
  v121 = v50;
  v51 = sub_18438FCC8();
  v100 = v35;
  v99 = v21;
  v130 = v46;
  if (v51)
  {
    v52 = *(v21 + 16);
    v127 = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v128 = v52;
    goto LABEL_10;
  }

  v53 = (v126 + *(v109 + 13));
  v120 = (v127 + 16);
  v119 = (v127 + 8);
  v54 = v21 + 16;
  v118 = (v47 + 48);
  v117 = (v21 + 8);
  v56 = *v53;
  v55 = v53[1];
  v116 = v56;
  v115 = v55;
  v112 = (v47 + 8);
  v104 = (v47 + 16);
  v111 = (v35 + 8);
  v110 = (v35 + 32);
  v57 = v108;
  v114 = AssociatedTypeWitness;
  v113 = v42;
  while (1)
  {
    v63 = sub_18438FEE8();
    v65 = v124;
    v64 = v125;
    (*v120)(v124);
    v63(v135, 0);
    v116(v65);
    (*v119)(v65, v64);
    v66 = *v54;
    v127 = v54 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v67 = v123;
    v68 = v131;
    v69 = v132;
    (v66)(v123, v131, v132);
    v70 = *v118;
    LODWORD(v63) = (*v118)(v67, 1, v134);
    v71 = *v117;
    (*v117)(v67, v69);
    v128 = v66;
    if (v63 == 1)
    {
      v71(v68, v69);
      v58 = v134;
      (*v104)(v68, v57, v134);
      v105(v68, 0, 1, v58);
      v42 = v113;
      v59 = v112;
      goto LABEL_5;
    }

    v72 = v107;
    (v66)(v107, v68, v69);
    v73 = v134;
    result = v70(v72, 1, v134);
    if (result == 1)
    {
      goto LABEL_13;
    }

    v57 = v108;
    v75 = sub_18438FCC8();
    v59 = v112;
    v76 = *v112;
    (*v112)(v72, v73);
    v42 = v113;
    if ((v75 & 1) == 0)
    {
      break;
    }

LABEL_5:
    v60 = v54;
    v61 = v122;
    sub_18438FE18();
    (*v59)(v57, v134);
    AssociatedTypeWitness = v114;
    (*v111)(v42, v114);
    v62 = v61;
    v54 = v60;
    (*v110)(v42, v62, AssociatedTypeWitness);
    if (sub_18438FCC8())
    {
      goto LABEL_10;
    }
  }

  v76(v57, v134);
  AssociatedTypeWitness = v114;
LABEL_10:
  v77 = v131;
  v78 = v132;
  (v128)(v101, v131, v132);
  v79 = v103;
  v80 = sub_18438FC88();
  (*(v99 + 8))(v77, v78);
  v81 = v100;
  v82 = *(v100 + 8);
  result = v82(v129, AssociatedTypeWitness);
  if (v80)
  {
    v132 = v82;
    v83 = v94;
    (v91[0])(v94, v79, AssociatedTypeWitness);
    v84 = TupleTypeMetadata2;
    v85 = *(v81 + 32);
    v85(&v83[*(TupleTypeMetadata2 + 48)], v42, AssociatedTypeWitness);
    v131 = v85;
    v86 = v95;
    v87 = v96;
    (*(v95 + 16))(v96, v83, v84);
    v88 = AssociatedTypeWitness;
    v129 = *(v84 + 48);
    v89 = v93;
    v85(v93, v87, v88);
    v90 = v132;
    (v132)(&v129[v87], v88);
    (*(v86 + 32))(v87, v83, v84);
    v131((v89 + *(v92 + 36)), &v87[*(v84 + 48)], v88);
    v90(v87, v88);
    return sub_183FC7B4C(v101, v89, v98);
  }

  else
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_183FC775C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = a1[4];
  v4 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v6);
  v39 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v35 = v34 - v10;
  swift_getAssociatedConformanceWitness();
  v38 = sub_18438FF08();
  MEMORY[0x1EEE9AC00](v38, v11);
  v13 = v34 - v12;
  v42 = a1;
  v14 = a1[3];
  v15 = sub_18438FF18();
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = v34 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = v34 - v22;
  v34[2] = v4;
  v40 = v3;
  sub_18438FE48();
  v24 = *(*(v14 - 8) + 56);
  v37 = v19;
  v24(v19, 1, 1, v14);
  result = sub_18438FC88();
  if (result)
  {
    v26 = v20;
    v27 = v35;
    (*(v20 + 16))(v35, v23, AssociatedTypeWitness);
    v28 = TupleTypeMetadata2;
    v29 = *(v26 + 32);
    v29(&v27[*(TupleTypeMetadata2 + 48)], v23, AssociatedTypeWitness);
    v34[0] = v29;
    v34[1] = v14;
    v30 = v41;
    v31 = v39;
    (*(v41 + 16))(v39, v27, v28);
    v32 = *(v28 + 48);
    v29(v13, v31, AssociatedTypeWitness);
    v33 = *(v26 + 8);
    v33(&v31[v32], AssociatedTypeWitness);
    (*(v30 + 32))(v31, v27, v28);
    (v34[0])(&v13[*(v38 + 36)], &v31[*(v28 + 48)], AssociatedTypeWitness);
    v33(v31, AssociatedTypeWitness);
    return sub_183FC7B4C(v37, v13, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FC7B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_18438FF18();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for GroupCollection.Index() + 52);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_18438FF08();
  return (*(*(v8 - 8) + 32))(a3 + v7, a2, v8);
}

uint64_t sub_183FC7C84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 + *(type metadata accessor for GroupCollection.Index() + 52);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_18438FF08();
  return sub_183FC6C5C(v5 + *(v6 + 36), a2, a3);
}

uint64_t sub_183FC7D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = sub_18438FF18();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a3);
  v13 = *(v7 - 8);
  result = (*(v13 + 48))(v11, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(a1, v11, v7);
    v16 = *(a4 + 16);
    v17 = v7;
    v15 = *(a4 + 32);
    v18 = v15;
    type metadata accessor for GroupCollection.Index();
    return sub_18438FED8();
  }

  return result;
}

uint64_t sub_183FC7EF0()
{
  type metadata accessor for GroupCollection.Index();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_18438FEF8() & 1;
}

uint64_t sub_183FC7FB0()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for GroupCollection.Index();
  swift_getAssociatedConformanceWitness();
  return sub_18438FC68() & 1;
}

void (*sub_183FC80A0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_183FC82CC(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v9 - 8) + 16))(v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, AssociatedTypeWitness);
  return sub_183FC8254;
}

void sub_183FC8254(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_183FC82CC(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_183FC7D64(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_183F84210;
}

uint64_t sub_183FC83E4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GroupCollection.Index();
  v2 = sub_18438FF18();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_183FC846C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v11[0] = *(a2 + 16);
  v11[1] = v4;
  v5 = type metadata accessor for GroupCollection.Index();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v11 - v8;
  (*(v6 + 32))(v11 - v8, a1, v5);
  sub_183FC7C84(v9, a2, a1);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_183FC8570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 1);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = sub_184390108();
  sub_183FC6B50(a1, a2 + *(v5 + 36));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t sub_183FC8668(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_183FC86BC(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_183FC87B4();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_183FC87B8()
{
  result = sub_18438FF18();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = sub_18438FF08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183FC88A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = ((*(*(AssociatedTypeWitness - 8) + 64) + v13) & ~v13) + *(*(AssociatedTypeWitness - 8) + 64) + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v8 >= v11)
        {
          v25 = (*(v6 + 48))(a1, v7, v5);
          if (v25 >= 2)
          {
            return v25 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v23 = *(v10 + 48);

          return v23((a1 + v15) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_183FC8B20(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = *(v12 + 80);
  v18 = ((*(v12 + 64) + v17) & ~v17) + *(v12 + 64);
  v19 = v18 + ((v16 + v17) & ~v17);
  if (a3 <= v15)
  {
    goto LABEL_24;
  }

  if (v19 > 3)
  {
    v11 = 1;
    if (v15 >= a2)
    {
      goto LABEL_13;
    }

LABEL_25:
    v22 = ~v15 + a2;
    if (v19 >= 4)
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
      if (v11 > 1)
      {
        goto LABEL_27;
      }

LABEL_73:
      if (v11)
      {
        a1[v19] = v23;
      }

      return;
    }

    v23 = (v22 >> (8 * v19)) + 1;
    if (v19)
    {
      v27 = v22 & ~(-1 << (8 * v19));
      bzero(a1, v19);
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          *a1 = v27;
          if (v11 <= 1)
          {
            goto LABEL_73;
          }
        }

        else
        {
          *a1 = v22;
          if (v11 <= 1)
          {
            goto LABEL_73;
          }
        }

LABEL_27:
        if (v11 == 2)
        {
          *&a1[v19] = v23;
        }

        else
        {
          *&a1[v19] = v23;
        }

        return;
      }

      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    if (v11 <= 1)
    {
      goto LABEL_73;
    }

    goto LABEL_27;
  }

  v20 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v20))
  {
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

LABEL_24:
    if (v15 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v11 = 4;
  if (v15 < a2)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v19] = 0;
  }

  else if (v11)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

LABEL_32:
  if (v10 >= v14)
  {
    if (v10 >= a2)
    {
      v30 = *(v31 + 56);

      v30(a1, (a2 + 1), v9, v7);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v25 = v28 & (~v10 + a2);
        if (v16 <= 3)
        {
          v26 = v16;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v16);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
            goto LABEL_43;
          }

          goto LABEL_59;
        }

        goto LABEL_78;
      }
    }
  }

  else
  {
    a1 = (&a1[v16 + v17] & ~v17);
    if (v14 >= a2)
    {
      v29 = *(v13 + 56);

      v29(a1, a2);
    }

    else
    {
      if (v18 <= 3)
      {
        v24 = ~(-1 << (8 * v18));
      }

      else
      {
        v24 = -1;
      }

      if (v18)
      {
        v25 = v24 & (~v14 + a2);
        if (v18 <= 3)
        {
          v26 = v18;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v18);
        if (v26 <= 2)
        {
          if (v26 != 1)
          {
LABEL_43:
            *a1 = v25;
            return;
          }

LABEL_59:
          *a1 = v25;
          return;
        }

LABEL_78:
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }
    }
  }
}

void Region.cgRegion.getter()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = v0[1];
  v15 = *v0;
  v16 = v4;
  *&v17 = v2;
  *(&v17 + 1) = v1;
  v19 = 0;
  v18 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = &v15;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_183FC91D0;
  *(v6 + 24) = v5;
  *&v12 = sub_183FC91D8;
  *(&v12 + 1) = v6;
  *&v10 = MEMORY[0x1E69E9820];
  *(&v10 + 1) = 1644167168;
  *&v11 = sub_183FC9200;
  *(&v11 + 1) = &block_descriptor_3;
  v7 = _Block_copy(&v10);

  v8 = CGRegionCreateWithBoundsBlock(v7);
  _Block_release(v7);
  if (v8)
  {
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v10 = v15;
    v11 = v16;
    sub_183FC9258(&v10);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_183FC90E4(uint64_t a1)
{
  Region.endIndex.getter(v15);
  if (*(a1 + 64) == *(&v15[0] + 1))
  {
    return 1;
  }

  Region.subscript.getter((a1 + 56));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 48);
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  v15[2] = *(a1 + 32);
  v16 = v11;
  v14 = *(a1 + 56);
  Region.index(after:)(&v14, (a1 + 56));
  v13 = sub_183FC947C(v4);
  sub_183FC947C(v8);
  sub_183FC947C(v6);
  sub_183FC947C(v10);
  return v13 << 32;
}

uint64_t sub_183FC9200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(a1 + 32))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_183FC9258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8546A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 Region.init(cgRegion:)@<Q0>(char *a1@<X0>, int64x2_t *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = vdupq_n_s64(0x7FF8000000000000uLL);
  v18 = v17;
  v13 = v17;
  v4 = MEMORY[0x1E69E7CC0];
  v19.i64[0] = MEMORY[0x1E69E7CC0];
  v19.i64[1] = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v5 = CGRegionEnumeratorCreate(a1);
  v15 = 0;
  v16 = 0;
  if (CGRegionEnumeratorGetNextBounds(v5, &v16 + 1, &v16, &v15 + 1, &v15))
  {
    do
    {
      v8 = SHIDWORD(v16);
      v9 = SHIDWORD(v15);
      if (v8 < v9)
      {
        v6 = v15;
        v7 = v16;
        if (v7 >= v6)
        {
          v8 = NAN;
          v9 = NAN;
          v7 = NAN;
          v6 = NAN;
        }
      }

      else
      {
        v8 = NAN;
        v9 = NAN;
        v7 = NAN;
        v6 = NAN;
      }

      *v14 = v8;
      *&v14[1] = v9;
      *&v14[2] = v7;
      *&v14[3] = v6;
      v14[4] = v4;
      v14[5] = v4;
      v14[6] = v4;
      Region.formUnion(_:)(v14);
    }

    while (CGRegionEnumeratorGetNextBounds(v5, &v16 + 1, &v16, &v15 + 1, &v15));
    v13 = v17;
    v11 = v18;
    v12 = v19;
    v4 = v20;
  }

  else
  {
    v11 = v13;
    v12 = vdupq_n_s64(v4);
  }

  CGRegionEnumeratorRelease(v5);

  result = v12;
  *a2 = v13;
  a2[1] = v11;
  a2[2] = v12;
  a2[3].i64[0] = v4;
  return result;
}

uint64_t sub_183FC947C(double a1)
{
  v1 = round(a1);
  if (v1 <= -2147483650.0)
  {
    return 2147483649;
  }

  if (v1 >= 2147483650.0)
  {
    return 2147483646;
  }

  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v1 > -2147483650.0)
  {
    if (v1 < 2147483650.0)
    {
      return v1;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_183FC9504()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_183FC957C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_183FC96F0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_183FC9950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v7 = *(a1 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a3);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v12);
  v14 = &v17 - v13;
  (*(v8 + 16))(v10, v4, v7);
  sub_18438FD38();
  LOBYTE(v10) = *(v4 + *(a1 + 52));
  (*(*(a1 - 8) + 8))(v4, a1);
  v15 = sub_18438FBE8();
  sub_183FC9B08(0, 0, 1, v14, v10, *v15, a2);
}

uint64_t sub_183FC9B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  v11 = type metadata accessor for SewingMachine.Iterator();
  v12 = v11[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v12, a4, AssociatedTypeWitness);
  *(a7 + v11[14]) = a5;
  *(a7 + v11[15]) = a6;
  return result;
}

unint64_t sub_183FC9BE8(uint64_t *a1, uint64_t a2, double a3, double a4, double a5)
{
  *&v43 = a3;
  *(&v43 + 1) = a4;
  *&v44 = a5;
  BYTE8(v44) = 0;
  v45 = a4;
  v7 = *(a2 + 60);
  result = *(v5 + v7);
  v9 = *(result + 24);
  v10 = *a1;
  if (*a1 == -1)
  {
    if (v9 >= 2)
    {
      v12 = 0;
      v10 = result + 40;
      v11 = 40;
      v17 = *(result + 24);
      do
      {
        v18 = v12 + (v17 >> 1);
        if (__OFADD__(v12, v17 >> 1))
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }

        if (v18 >= v9)
        {
          goto LABEL_81;
        }

        v19 = *(result + 32) + v18;
        v20 = *(result + 16);
        if (v19 < v20)
        {
          v20 = 0;
        }

        if (*(v10 + 40 * (v19 - v20) + 32) < a4)
        {
          v12 += v17 >> 1;
        }

        v17 -= v17 >> 1;
      }

      while (v17 > 1);
      if (v12 >= v9)
      {
        goto LABEL_40;
      }

      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

LABEL_36:
      v21 = *(result + 32) + v12;
      v22 = *(result + 16);
      if (v21 < v22)
      {
        v22 = 0;
      }

      v23 = v21 - v22;
      v11 = 40;
      if (*(result + 40 * v23 + 72) < a4)
      {
        ++v12;
      }

      goto LABEL_40;
    }

LABEL_35:
    v12 = 0;
    if (v9 != 1)
    {
      goto LABEL_58;
    }

    goto LABEL_36;
  }

  v11 = v9 - v10;
  if (v9 < v10)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v10 < 0)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v11 < 2)
  {
LABEL_32:
    v12 = v10;
    if (v10 >= v9)
    {
      goto LABEL_40;
    }

LABEL_33:
    if (v12 >= v10)
    {
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_35;
  }

  v12 = *a1;
  do
  {
    v13 = v12 + (v11 >> 1);
    if (__OFADD__(v12, v11 >> 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v13 < v10 || v13 >= v9)
    {
      goto LABEL_78;
    }

    v15 = *(result + 32) + v13;
    v16 = *(result + 16);
    if (v15 < v16)
    {
      v16 = 0;
    }

    if (*(result + 40 + 40 * (v15 - v16) + 32) < a4)
    {
      v12 += v11 >> 1;
    }

    v11 -= v11 >> 1;
  }

  while (v11 > 1);
  if (v12 < v9)
  {
    goto LABEL_33;
  }

LABEL_40:
  *&v24 = v12 & 0x8000000000000001;
  if ((v12 & 0x8000000000000001) == 1 && v12 < v9)
  {
    v25 = *(result + 32);
    v26 = *(result + 16);
    if (v25 + v12 >= v26)
    {
      v27 = *(result + 16);
    }

    else
    {
      v27 = 0;
    }

    if (*(result + 40 + 40 * (v25 + v12 - v27) + 32) != a4)
    {
      goto LABEL_58;
    }

    v28 = v12 + v25 - 1;
    if (v28 < v26)
    {
      v26 = 0;
    }

    v11 = result + 40 + 40 * (v28 - v26);
    v24 = *v11;
    if (*(v11 + 24))
    {
      if (((LODWORD(v24) ^ *(v5 + *(a2 + 56))) & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  else
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_58;
    }

    __break(1u);
  }

  if (*(v11 + 16) >= v24)
  {
    if (!*(v5 + *(a2 + 56)))
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if ((*(v5 + *(a2 + 56)) & 1) == 0)
  {
LABEL_57:
    ++v12;
  }

LABEL_58:
  if (v9 < v12)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v29 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v5 + v7);
  if (v30[2] >= v29 && (result & 1) != 0)
  {
    v31 = (v30 + 5);
    if (v12)
    {
      goto LABEL_63;
    }
  }

  else
  {
    result = sub_183FCAAA0(result, v29);
    v30 = *(v5 + v7);
    v31 = (v30 + 5);
    if (v12)
    {
LABEL_63:
      if (v12 == v30[3])
      {
        sub_183FCAF70(&v43, v30 + 2, v31);
LABEL_75:

        goto LABEL_76;
      }

      goto LABEL_70;
    }
  }

  v32 = v30[4];
  if (!v32)
  {
    v37 = v30[2];
    v33 = __OFSUB__(v37, 1);
    v34 = v37 - 1;
    if (v33)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    goto LABEL_73;
  }

  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (!v33)
  {
LABEL_73:
    v38 = &v31[40 * v34];
    *(v38 + 4) = v45;
    v39 = v44;
    *v38 = v43;
    *(v38 + 1) = v39;
    v30[4] = v34;
    v40 = v30[3];
    v33 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (!v33)
    {
      v30[3] = v41;
      goto LABEL_75;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_70:

  result = sub_183FCBACC(v31, 1uLL, v12, v30 + 2, &v42);
  v35 = v42;
  if (v42)
  {
    v36 = v44;
    *v42 = v43;
    *(v35 + 1) = v36;
    v35[4] = v45;
LABEL_76:

    *a1 = v12;
    return result;
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_183FC9F7C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v110 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(*(v7 + 32) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v107 = &v100 - v11;
  v111 = v5;
  v12 = type metadata accessor for ClosedSpan();
  v13 = sub_18438FF18();
  v101 = *(v13 - 8);
  v102 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v113 = &v100 - v16;
  v114 = v12;
  result = MEMORY[0x1EEE9AC00](v15, v17);
  v123 = (&v100 - v19);
  v112 = (v20 + 48);
  v105 = (v6 + 16);
  v106 = (v20 + 32);
  v103 = (v20 + 8);
  v104 = (v9 + 8);
  v115 = v4;
  v127 = v3;
  while (1)
  {
    while (*(v3 + 16) == 1)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v21 = v113;
      sub_18438FF58();
      v22 = v114;
      if ((*v112)(v21, 1, v114) == 1)
      {
        (*(v101 + 8))(v21, v102);
        return 0;
      }

      v23 = v123;
      (*v106)(v123, v21, v22);
      *&v128[0] = -1;
      (*v105)(v110, v23 + *(v22 + 40), v111);
      v24 = v107;
      sub_18438FD38();
      v25 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      while (1)
      {
        sub_18438FF58();
        if (BYTE8(v130))
        {
          break;
        }

        v26 = *&v130;
        sub_18438FF58();
        if (BYTE8(v130))
        {
          break;
        }

        v27 = *&v130;
        v29 = *v123;
        v28 = v123[1];
        sub_183FC9BE8(v128, v4, v28, v26, *v123);
        sub_183FC9BE8(v128, v4, v29, v27, v28);
      }

      v97 = *(*(v3 + *(v4 + 60)) + 24);
      (*v104)(v24, v25);
      result = (*v103)(v123, v114);
      if (v97 >= 1)
      {
        *v3 = 0;
        v3[1] = v97;
        *(v3 + 16) = 0;
      }
    }

    v30 = v3[1];
    v122 = *v3;
    if (v122 < v30)
    {
      v31 = v122;
      v121 = v30;
      do
      {
        if (v122 < 0)
        {
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
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v32 = *(v4 + 60);
        v33 = *(v3 + v32);
        v34 = v33[3];
        if (v31 >= v34)
        {
          goto LABEL_75;
        }

        v35 = v33[4];
        v36 = v31 + v35;
        v37 = v33[2];
        if (v31 + v35 >= v37)
        {
          v38 = v33[2];
        }

        else
        {
          v38 = 0;
        }

        v39 = &v33[5 * v31 + 5 + 5 * (v35 - v38)];
        v40 = *(v39 + 32);
        v41 = *(v39 + 16);
        v135[0] = *v39;
        v135[1] = v41;
        v136 = v40;
        v42 = v31 + 1;
        if (v31 + 1 >= v34)
        {
          goto LABEL_76;
        }

        if (v36 + 1 >= v37)
        {
          v43 = v37;
        }

        else
        {
          v43 = 0;
        }

        v44 = &v33[5 * (v36 - v43) + 5];
        v45 = *(v44 + 40);
        v46 = *(v44 + 56);
        v138 = *(v44 + 72);
        v137[0] = v45;
        v137[1] = v46;
        sub_183F813A0(v135, v128);
        sub_183F813A0(v137, v128);
        sub_183FB9B44(v135, v137, v128);
        v132 = v128[2];
        v133 = v128[3];
        v134[0] = v129[0];
        *(v134 + 9) = *(v129 + 9);
        v130 = v128[0];
        v131 = v128[1];
        sub_183F813FC(v135);
        sub_183F813FC(v137);
        result = *&v134[1];
        v120 = BYTE8(v134[1]);
        v47 = v130;
        v48 = BYTE8(v131);
        v49 = BYTE7(v134[0]) >> 6;
        if (v49)
        {
          if (v49 != 1)
          {
            goto LABEL_64;
          }

          v50 = v33[3];
          v51 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_77;
          }

          v125 = v132;
          v126 = v131;
          v124 = *&v134[1];
          v118 = v133;
          v119 = *(&v132 + 1);
          v117 = *(&v133 + 1);
          v116 = LOBYTE(v134[0]);
          v52 = *(&v134[0] + 1);
          v53 = v127;
          result = swift_isUniquelyReferenced_nonNull_native();
          v54 = *(v53 + v32);
          if (v54[2] < v51 || (result & 1) == 0)
          {
            v55 = v127;
            result = sub_183FCAAA0(result, v51);
            v54 = *(v55 + v32);
            v4 = v115;
          }

          v56 = v54[3];
          v57 = v54[4];
          v60 = __OFADD__(v57, v56);
          v58 = v57 + v56;
          if (v60)
          {
            goto LABEL_79;
          }

          if (v56 < 0)
          {
            if (v58 < 0)
            {
              v74 = v54[2];
              v60 = __OFADD__(v58, v74);
              v58 += v74;
              if (v60)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            v59 = v54[2];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            if (v61 < 0 == v60)
            {
              v58 = v61;
              if (v60)
              {
                goto LABEL_87;
              }
            }
          }

          v75 = &v54[5 * v58];
          *(v75 + 5) = v47;
          v76 = v126;
          v75[7] = v126;
          *(v75 + 64) = v48 & 1;
          v75[9] = v125;
          v60 = __OFADD__(v56, 1);
          v77 = v56 + 1;
          if (v60)
          {
            goto LABEL_82;
          }

          v54[3] = v77;
          v78 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_83;
          }

          sub_183F81450(v47, *(&v47 + 1), v76, v48 & 1);
          v79 = v127;
          result = swift_isUniquelyReferenced_nonNull_native();
          v80 = *(v79 + v32);
          if (v80[2] < v78 || (result & 1) == 0)
          {
            result = sub_183FCAAA0(result, v78);
            v80 = *(v79 + v32);
          }

          v81 = v80[3];
          v82 = v80[4];
          v60 = __OFADD__(v82, v81);
          v83 = v82 + v81;
          if (v60)
          {
            goto LABEL_84;
          }

          if (v81 < 0)
          {
            if (v83 < 0)
            {
              v90 = v80[2];
              v60 = __OFADD__(v83, v90);
              v83 += v90;
              if (v60)
              {
                goto LABEL_93;
              }
            }
          }

          else
          {
            v84 = v80[2];
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            if (v86 < 0 == v85)
            {
              v83 = v86;
              if (v85)
              {
                goto LABEL_88;
              }
            }
          }

          v91 = &v80[5 * v83];
          v92 = v118;
          result = v119;
          v91[5] = v119;
          v91[6] = v92;
          v93 = v117;
          v91[7] = v117;
          v94 = v116 & 1;
          *(v91 + 64) = v116 & 1;
          v91[9] = v52;
          v60 = __OFADD__(v81, 1);
          v95 = v81 + 1;
          if (v60)
          {
            goto LABEL_85;
          }

          v80[3] = v95;
          sub_183F81450(result, v92, v93, v94);
        }

        else
        {
          v62 = v33[3];
          v63 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_78;
          }

          v124 = *&v134[1];
          v125 = v132;
          v126 = v131;
          sub_183F81450(v130, *(&v130 + 1), v131, BYTE8(v131) & 1);
          v64 = v127;
          result = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v64 + v32);
          if (v65[2] < v63 || (result & 1) == 0)
          {
            v66 = v127;
            result = sub_183FCAAA0(result, v63);
            v65 = *(v66 + v32);
            v4 = v115;
          }

          v67 = v65[3];
          v68 = v65[4];
          v60 = __OFADD__(v68, v67);
          v69 = v68 + v67;
          if (v60)
          {
            goto LABEL_80;
          }

          if (v67 < 0)
          {
            v73 = v126;
            if (v69 < 0)
            {
              v87 = v65[2];
              v60 = __OFADD__(v69, v87);
              v69 += v87;
              if (v60)
              {
                goto LABEL_92;
              }
            }
          }

          else
          {
            v70 = v65[2];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v126;
            if (v72 < 0 == v71)
            {
              v69 = v72;
              if (v71)
              {
                goto LABEL_86;
              }
            }
          }

          v88 = &v65[5 * v69];
          *(v88 + 5) = v47;
          v88[7] = v73;
          *(v88 + 64) = v48 & 1;
          v88[9] = v125;
          v60 = __OFADD__(v67, 1);
          v89 = v67 + 1;
          if (v60)
          {
            goto LABEL_81;
          }

          v65[3] = v89;
        }

        sub_183F81460(&v130);
        result = v124;
LABEL_64:
        if (result)
        {
          v98 = v127;
          v99 = v121;
          *v127 = v31 + 2;
          v98[1] = v99;
          *(v98 + 16) = 0;
          return result;
        }

        v31 += 2;
        v30 = v121;
        v3 = v127;
      }

      while (v42 + 1 < v121);
    }

    if (v30 < 0)
    {
      goto LABEL_89;
    }

    v96 = *(v4 + 60);
    result = *(v3 + v96);
    if (*(result + 24) < v30)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_183FCAD08();
    }

    result = sub_183FCB45C(0, v30, (*(v3 + v96) + 16), (*(v3 + v96) + 40));
    *v3 = 0;
    v3[1] = 0;
    *(v3 + 16) = 1;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_183FCA8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result = sub_183FC9F7C(a1, a3);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_183FCA8F4(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_183FCADAC(v8 + 16, (v8 + 40), v4, (v3 + 40));
    }
  }

  else
  {
    sub_18438FBF8();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 33;
      }

      *(v8 + 16) = v10 >> 3;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_183FCB010(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 3;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_183FCB278(v8 + 16, (v8 + 40), v4, (v3 + 40));
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_183FCAAA0(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B80);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_183FCAE94(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_18438FBF8();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B80);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 40;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_183FCB138(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B80);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 40;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_183FCB370(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_183FCAC68()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_183FCADAC(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t sub_183FCAD08()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B80);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_183FCAE94(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

void sub_183FCADAC(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[8 * v4], &__src[8 * v4], 8 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_183FCAE94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_183FCAF70(uint64_t result, void *a2, uint64_t a3)
{
  v5 = a2[1];
  v6 = a2[2];
  v8 = __OFADD__(v6, v5);
  v7 = v6 + v5;
  if (!v8)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *a2);
      if (v7 < *a2 || (v7 -= *a2, !v8))
      {
LABEL_9:
        v9 = a3 + 40 * v7;
        v10 = *(result + 16);
        *v9 = *result;
        *(v9 + 16) = v10;
        *(v9 + 32) = *(result + 32);
        v8 = __OFADD__(v5, 1);
        v11 = v5 + 1;
        if (!v8)
        {
          v14 = v3;
          v15 = v4;
          a2[1] = v11;
          v13[0] = *result;
          *(v13 + 9) = *(result + 9);
          return sub_183FCC0D8(v13, &v12);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *a2);
      v7 += *a2;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_183FCB010(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}

void sub_183FCB138(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[40 * v4];
  if (v12 != __dst || &v12[40 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 40 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[40 * v8];
  if (v16 != v11 || v16 >= &v11[40 * v7])
  {

    memmove(v16, v11, 40 * v7);
  }
}

void sub_183FCB278(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[8 * v4], 8 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[8 * v9], v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_183FCB370(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_183FCB45C(unint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_183FBB080(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    swift_arrayDestroy();
  }

  return sub_183FBB6B4(a1, a2, a3, a4);
}

unint64_t sub_183FCB528@<X0>(char *__src@<X3>, unint64_t result@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X2>, uint64_t a5@<X8>)
{
  v9 = a4[1];
  v10 = v9 - a3;
  if (__OFSUB__(v9, a3))
  {
    __break(1u);
    goto LABEL_171;
  }

  v13 = result;
  v14 = a4[2];
  if (v10 <= a3)
  {
    goto LABEL_10;
  }

  v15 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v6 = v14 - result;
  if (__OFADD__(v14, v15))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v15 < 0)
  {
LABEL_25:
    v9 = *a4;
    if (v6 < 0)
    {
      v16 = __OFADD__(v6, v9);
      v6 += v9;
      if (v16)
      {
        goto LABEL_190;
      }
    }

LABEL_27:
    v20 = v14 + a3;
    if (v14 + a3 >= v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    v10 = v20 - v5;
    v21 = v20 - v5 + v15;
    if (!__OFADD__(v20 - v5, v15))
    {
      if (v15 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v9);
      if (v21 < v9 || (v21 -= v9, !v22))
      {
LABEL_49:
        if (v10 <= 0)
        {
          v26 = v9;
        }

        else
        {
          v26 = v10;
        }

        if (v21 <= 0)
        {
          v27 = v9;
        }

        else
        {
          v27 = v21;
        }

        if (v26 >= v14)
        {
          if (v27 >= v6)
          {
            if (a3 > 0)
            {
              result = &__src[8 * v6];
              if (v6 < v14 || result >= &__src[8 * v14 + 8 * a3] || v6 != v14)
              {
                v33 = 8 * a3;
                v32 = &__src[8 * v14];
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          }

          v16 = __OFSUB__(v9, v6);
          v31 = v9 - v6;
          if (v16)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (v31 <= 0)
          {
            goto LABEL_76;
          }

          result = &__src[8 * v6];
          v30 = &__src[8 * v14];
          if (v6 == v14 && result < &v30[8 * v31])
          {
            goto LABEL_76;
          }

          v29 = 8 * v31;
          goto LABEL_75;
        }

        v16 = __OFSUB__(v9, v14);
        v9 -= v14;
        LOBYTE(v5) = v16;
        if (v27 < v6)
        {
          if (v5)
          {
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (v9 > 0)
          {
            result = &__src[8 * v6];
            v28 = &__src[8 * v14];
            if (v6 != v14 || result >= &v28[8 * v9])
            {
              result = memmove(result, v28, 8 * v9);
            }
          }

          if (v13 < 1 || (result = &__src[8 * *a4 + 8 * v15], result == __src) && result < &__src[8 * v13])
          {
LABEL_76:
            if (v21 >= 1)
            {
              v32 = &__src[8 * v13];
              if (v13 > 0 || &v32[8 * v21] <= __src || v13)
              {
                v33 = 8 * v21;
                result = __src;
LABEL_129:
                result = memmove(result, v32, v33);
                goto LABEL_130;
              }
            }

            goto LABEL_130;
          }

          v29 = 8 * v13;
          v30 = __src;
LABEL_75:
          result = memmove(result, v30, v29);
          goto LABEL_76;
        }

LABEL_114:
        if (v5)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v9 > 0)
        {
          result = &__src[8 * v6];
          v39 = &__src[8 * v14];
          if (v6 != v14 || result >= &v39[8 * v9])
          {
            result = memmove(result, v39, 8 * v9);
          }
        }

        if (v10 >= 1)
        {
          result = &__src[8 * *a4 + 8 * v15];
          if (result < __src || result >= &__src[8 * v10] || result != __src)
          {
            v33 = 8 * v10;
            v32 = __src;
            goto LABEL_129;
          }
        }

LABEL_130:
        a4[2] = v6;
        v40 = a4[1];
        v16 = __OFADD__(v40, v13);
        v41 = v40 + v13;
        if (!v16)
        {
          a4[1] = v41;
          v42 = *a4;
          if (v10 <= 0)
          {
            v43 = *a4;
          }

          else
          {
            v43 = v10;
          }

          if (v21 < v43)
          {
            v42 = v43 - v21;
            if (!__OFSUB__(v43, v21))
            {
              goto LABEL_164;
            }

            __break(1u);
          }

          v16 = __OFSUB__(v42, v21);
          v42 -= v21;
          if (!v16)
          {
LABEL_166:
            v50 = v43 == 0;
            if (v43)
            {
              v49 = __src;
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_169;
          }

          __break(1u);
LABEL_141:
          if (v15 > 0)
          {
            result = &__src[8 * v13];
            if (v13 < 0 || v15 <= v13 || v13)
            {
              result = memmove(result, __src, 8 * v15);
            }
          }

          v9 = *a4 - v21;
          if (__OFSUB__(*a4, v21))
          {
            goto LABEL_186;
          }

          goto LABEL_147;
        }

LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v9 = *a4;
  v16 = __OFSUB__(v6, *a4);
  if (v6 < *a4)
  {
    goto LABEL_27;
  }

  v6 -= *a4;
  if (!v16)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v15 = v14 + v9;
  if (__OFADD__(v14, v9))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v17 = __OFSUB__(v15, *a4);
    if (v15 < *a4)
    {
      goto LABEL_18;
    }

    v15 -= *a4;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v15 < 0)
  {
    v16 = __OFADD__(v15, *a4);
    v15 += *a4;
    if (v16)
    {
      goto LABEL_189;
    }
  }

LABEL_18:
  v16 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v16)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v7 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v9 = *a4;
    v19 = __OFSUB__(v7, *a4);
    if (v7 < *a4)
    {
      goto LABEL_38;
    }

    v7 -= *a4;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v9 = *a4;
  if (v7 < 0)
  {
    v16 = __OFADD__(v7, v9);
    v7 += v9;
    if (v16)
    {
      goto LABEL_191;
    }
  }

LABEL_38:
  v23 = v14 + a3;
  if (v23 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v6 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_177;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v6, v9);
    v14 = v6 - v9;
    if (v6 < v9)
    {
      goto LABEL_83;
    }

    v6 -= v9;
    if (!v25)
    {
      goto LABEL_83;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v16 = __OFADD__(v21, v9);
      v21 += v9;
      if (v16)
      {
        goto LABEL_192;
      }
    }

    goto LABEL_49;
  }

  if (v6 < 0)
  {
    v16 = __OFADD__(v6, v9);
    v6 += v9;
    if (v16)
    {
      goto LABEL_193;
    }
  }

LABEL_83:
  if (v15 <= 0)
  {
    v34 = v9;
  }

  else
  {
    v34 = v15;
  }

  if (v7 <= 0)
  {
    v35 = v9;
  }

  else
  {
    v35 = v7;
  }

  if (v34 >= v21)
  {
LABEL_105:
    if (v35 >= v6)
    {
      if (v10 > 0)
      {
        result = &__src[8 * v6];
        v44 = &__src[8 * v21];
        if (v6 < v21 || result >= &v44[8 * v10] || v6 != v21)
        {
          v45 = 8 * v10;
          goto LABEL_157;
        }
      }

LABEL_158:
      v46 = a4[1];
      v16 = __OFADD__(v46, v13);
      v47 = v46 + v13;
      if (!v16)
      {
        a4[1] = v47;
        v48 = *a4;
        if (v6 <= 0)
        {
          v43 = *a4;
        }

        else
        {
          v43 = v6;
        }

        if (v21 >= v43)
        {
          v16 = __OFSUB__(v48, v21);
          v42 = v48 - v21;
          if (!v16)
          {
            goto LABEL_166;
          }

          goto LABEL_181;
        }

        v42 = v43 - v21;
        if (!__OFSUB__(v43, v21))
        {
LABEL_164:
          v49 = 0;
          v43 = 0;
          v50 = 1;
LABEL_169:
          *a5 = &__src[8 * v21];
          *(a5 + 8) = v42;
          *(a5 + 16) = v49;
          *(a5 + 24) = v43;
          *(a5 + 32) = v50;
          return result;
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v14 = -v13;
    if (__OFSUB__(0, v13))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v7 > 0)
    {
      v38 = &__src[8 * v9 + -8 * v13];
      if (v38 != __src || &v38[8 * v7] <= __src)
      {
        result = memmove(__src, v38, 8 * v7);
      }
    }

    v9 = v10 - v7;
    if (!__OFSUB__(v10, v7))
    {
LABEL_147:
      if (v9 >= 1)
      {
        result = &__src[8 * v6];
        v44 = &__src[8 * v21];
        if (v6 < v21 || result >= &v44[8 * v9] || v6 != v21)
        {
          v45 = 8 * v9;
LABEL_157:
          result = memmove(result, v44, v45);
          goto LABEL_158;
        }
      }

      goto LABEL_158;
    }

    __break(1u);
    goto LABEL_114;
  }

  if (v35 >= v6)
  {
    goto LABEL_141;
  }

  if (v15 > 0)
  {
    result = &__src[8 * result];
    if ((v13 & 0x8000000000000000) == 0 && v15 > v13 && !v13)
    {
LABEL_101:
      v37 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v16 = __OFSUB__(v37, v15);
      v9 = v37 - v15;
      if (!v16)
      {
        goto LABEL_147;
      }

      __break(1u);
      goto LABEL_105;
    }

    result = memmove(result, __src, 8 * v15);
  }

  if (!__OFSUB__(0, v13))
  {
    if (v13 >= 1)
    {
      v35 = &__src[8 * *a4];
      v36 = &v35[-8 * v13];
      if (v36 != __src || v35 <= __src)
      {
        result = memmove(__src, v36, 8 * v13);
      }
    }

    goto LABEL_101;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
  return result;
}

unint64_t sub_183FCBACC@<X0>(char *__src@<X3>, unint64_t result@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X2>, uint64_t a5@<X8>)
{
  v9 = a4[1];
  v10 = v9 - a3;
  if (__OFSUB__(v9, a3))
  {
    __break(1u);
    goto LABEL_171;
  }

  v13 = result;
  v14 = a4[2];
  if (v10 <= a3)
  {
    goto LABEL_10;
  }

  v15 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v6 = v14 - result;
  if (__OFADD__(v14, v15))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v15 < 0)
  {
LABEL_25:
    v9 = *a4;
    if (v6 < 0)
    {
      v16 = __OFADD__(v6, v9);
      v6 += v9;
      if (v16)
      {
        goto LABEL_190;
      }
    }

LABEL_27:
    v20 = v14 + a3;
    if (v14 + a3 >= v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    v10 = v20 - v5;
    v21 = v20 - v5 + v15;
    if (!__OFADD__(v20 - v5, v15))
    {
      if (v15 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v9);
      if (v21 < v9 || (v21 -= v9, !v22))
      {
LABEL_49:
        if (v10 <= 0)
        {
          v26 = v9;
        }

        else
        {
          v26 = v10;
        }

        if (v21 <= 0)
        {
          v27 = v9;
        }

        else
        {
          v27 = v21;
        }

        if (v26 >= v14)
        {
          if (v27 >= v6)
          {
            if (a3 > 0)
            {
              result = &__src[40 * v6];
              if (v6 < v14 || result >= &__src[40 * v14 + 40 * a3] || v6 != v14)
              {
                v33 = 40 * a3;
                v32 = &__src[40 * v14];
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          }

          v16 = __OFSUB__(v9, v6);
          v31 = v9 - v6;
          if (v16)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (v31 <= 0)
          {
            goto LABEL_76;
          }

          result = &__src[40 * v6];
          v30 = &__src[40 * v14];
          if (v6 == v14 && result < &v30[40 * v31])
          {
            goto LABEL_76;
          }

          v29 = 40 * v31;
          goto LABEL_75;
        }

        v16 = __OFSUB__(v9, v14);
        v9 -= v14;
        LOBYTE(v5) = v16;
        if (v27 < v6)
        {
          if (v5)
          {
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (v9 > 0)
          {
            result = &__src[40 * v6];
            v28 = &__src[40 * v14];
            if (v6 != v14 || result >= &v28[40 * v9])
            {
              result = memmove(result, v28, 40 * v9);
            }
          }

          if (v13 < 1 || (result = &__src[40 * *a4 + 40 * v15], result == __src) && result < &__src[40 * v13])
          {
LABEL_76:
            if (v21 >= 1)
            {
              v32 = &__src[40 * v13];
              if (v13 > 0 || &v32[40 * v21] <= __src || v13)
              {
                v33 = 40 * v21;
                result = __src;
LABEL_129:
                result = memmove(result, v32, v33);
                goto LABEL_130;
              }
            }

            goto LABEL_130;
          }

          v29 = 40 * v13;
          v30 = __src;
LABEL_75:
          result = memmove(result, v30, v29);
          goto LABEL_76;
        }

LABEL_114:
        if (v5)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v9 > 0)
        {
          result = &__src[40 * v6];
          v39 = &__src[40 * v14];
          if (v6 != v14 || result >= &v39[40 * v9])
          {
            result = memmove(result, v39, 40 * v9);
          }
        }

        if (v10 >= 1)
        {
          result = &__src[40 * *a4 + 40 * v15];
          if (result < __src || result >= &__src[40 * v10] || result != __src)
          {
            v33 = 40 * v10;
            v32 = __src;
            goto LABEL_129;
          }
        }

LABEL_130:
        a4[2] = v6;
        v40 = a4[1];
        v16 = __OFADD__(v40, v13);
        v41 = v40 + v13;
        if (!v16)
        {
          a4[1] = v41;
          v42 = *a4;
          if (v10 <= 0)
          {
            v43 = *a4;
          }

          else
          {
            v43 = v10;
          }

          if (v21 < v43)
          {
            v42 = v43 - v21;
            if (!__OFSUB__(v43, v21))
            {
              goto LABEL_164;
            }

            __break(1u);
          }

          v16 = __OFSUB__(v42, v21);
          v42 -= v21;
          if (!v16)
          {
LABEL_166:
            v50 = v43 == 0;
            if (v43)
            {
              v49 = __src;
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_169;
          }

          __break(1u);
LABEL_141:
          if (v15 > 0)
          {
            result = &__src[40 * v13];
            if (v13 < 0 || v15 <= v13 || v13)
            {
              result = memmove(result, __src, 40 * v15);
            }
          }

          v9 = *a4 - v21;
          if (__OFSUB__(*a4, v21))
          {
            goto LABEL_186;
          }

          goto LABEL_147;
        }

LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v9 = *a4;
  v16 = __OFSUB__(v6, *a4);
  if (v6 < *a4)
  {
    goto LABEL_27;
  }

  v6 -= *a4;
  if (!v16)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v15 = v14 + v9;
  if (__OFADD__(v14, v9))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v17 = __OFSUB__(v15, *a4);
    if (v15 < *a4)
    {
      goto LABEL_18;
    }

    v15 -= *a4;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v15 < 0)
  {
    v16 = __OFADD__(v15, *a4);
    v15 += *a4;
    if (v16)
    {
      goto LABEL_189;
    }
  }

LABEL_18:
  v16 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v16)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v7 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v9 = *a4;
    v19 = __OFSUB__(v7, *a4);
    if (v7 < *a4)
    {
      goto LABEL_38;
    }

    v7 -= *a4;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v9 = *a4;
  if (v7 < 0)
  {
    v16 = __OFADD__(v7, v9);
    v7 += v9;
    if (v16)
    {
      goto LABEL_191;
    }
  }

LABEL_38:
  v23 = v14 + a3;
  if (v23 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v6 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_177;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v6, v9);
    v14 = v6 - v9;
    if (v6 < v9)
    {
      goto LABEL_83;
    }

    v6 -= v9;
    if (!v25)
    {
      goto LABEL_83;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v16 = __OFADD__(v21, v9);
      v21 += v9;
      if (v16)
      {
        goto LABEL_192;
      }
    }

    goto LABEL_49;
  }

  if (v6 < 0)
  {
    v16 = __OFADD__(v6, v9);
    v6 += v9;
    if (v16)
    {
      goto LABEL_193;
    }
  }

LABEL_83:
  if (v15 <= 0)
  {
    v34 = v9;
  }

  else
  {
    v34 = v15;
  }

  if (v7 <= 0)
  {
    v35 = v9;
  }

  else
  {
    v35 = v7;
  }

  if (v34 >= v21)
  {
LABEL_105:
    if (v35 >= v6)
    {
      if (v10 > 0)
      {
        result = &__src[40 * v6];
        v44 = &__src[40 * v21];
        if (v6 < v21 || result >= &v44[40 * v10] || v6 != v21)
        {
          v45 = 5 * v10;
          goto LABEL_157;
        }
      }

LABEL_158:
      v46 = a4[1];
      v16 = __OFADD__(v46, v13);
      v47 = v46 + v13;
      if (!v16)
      {
        a4[1] = v47;
        v48 = *a4;
        if (v6 <= 0)
        {
          v43 = *a4;
        }

        else
        {
          v43 = v6;
        }

        if (v21 >= v43)
        {
          v16 = __OFSUB__(v48, v21);
          v42 = v48 - v21;
          if (!v16)
          {
            goto LABEL_166;
          }

          goto LABEL_181;
        }

        v42 = v43 - v21;
        if (!__OFSUB__(v43, v21))
        {
LABEL_164:
          v49 = 0;
          v43 = 0;
          v50 = 1;
LABEL_169:
          *a5 = &__src[40 * v21];
          *(a5 + 8) = v42;
          *(a5 + 16) = v49;
          *(a5 + 24) = v43;
          *(a5 + 32) = v50;
          return result;
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v14 = -v13;
    if (__OFSUB__(0, v13))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v7 > 0)
    {
      v38 = &__src[40 * v9 + -40 * v13];
      if (v38 != __src || &v38[40 * v7] <= __src)
      {
        result = memmove(__src, v38, 40 * v7);
      }
    }

    v9 = v10 - v7;
    if (!__OFSUB__(v10, v7))
    {
LABEL_147:
      if (v9 >= 1)
      {
        result = &__src[40 * v6];
        v44 = &__src[40 * v21];
        if (v6 < v21 || result >= &v44[40 * v9] || v6 != v21)
        {
          v45 = 5 * v9;
LABEL_157:
          result = memmove(result, v44, 8 * v45);
          goto LABEL_158;
        }
      }

      goto LABEL_158;
    }

    __break(1u);
    goto LABEL_114;
  }

  if (v35 >= v6)
  {
    goto LABEL_141;
  }

  if (v15 > 0)
  {
    result = &__src[40 * result];
    if ((v13 & 0x8000000000000000) == 0 && v15 > v13 && !v13)
    {
LABEL_101:
      v37 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v16 = __OFSUB__(v37, v15);
      v9 = v37 - v15;
      if (!v16)
      {
        goto LABEL_147;
      }

      __break(1u);
      goto LABEL_105;
    }

    result = memmove(result, __src, 40 * v15);
  }

  if (!__OFSUB__(0, v13))
  {
    if (v13 >= 1)
    {
      v35 = 40;
      v36 = &__src[40 * *a4 + -40 * v13];
      if (v36 != __src || &__src[40 * *a4] <= __src)
      {
        result = memmove(__src, v36, 40 * v13);
      }
    }

    goto LABEL_101;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
  return result;
}

void sub_183FCC14C()
{
  type metadata accessor for SewingMachine.Phase();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      sub_183FCC5F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_183FCC22C(int *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v10 = ((((v8 + 17) & ~v8) + v9) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v7 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v17 = v15 - 1;
    if (v11)
    {
      v17 = 0;
      v18 = *a1;
    }

    else
    {
      v18 = 0;
    }

    return v7 + (v18 | v17) + 1;
  }

  if (v14)
  {
    v15 = *(a1 + v10);
    if (v15)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v19 = (a1 + v8 + 17) & ~v8;
  if (v6 < 0x7FFFFFFF)
  {
    v21 = *(((v19 + v9) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v21 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }

  else
  {
    v20 = *(v5 + 48);

    return v20(v19);
  }
}

void sub_183FCC3DC(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = ((((v8 + 17) & ~v8) + v9) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v8 + 17) & ~v8) + v9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = (a1 + v8 + 17) & ~v8;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = (v18 + v9) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = (a2 - 1);
        }

        *(v20 + 8) = v21;
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18, a2);
      }

      return;
    }
  }

  if (((((v8 + 17) & ~v8) + v9) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v8 + 17) & ~v8) + v9) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

void sub_183FCC5F4()
{
  if (!qword_1ED4DFB80)
  {
    v0 = sub_18438FC08();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED4DFB80);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_183FCC658(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FCC678(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_183FCC6A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FCC6C4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void static CGAffineTransform.identity.getter(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

double CGAffineTransform.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_183F4872C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t CGAffineTransform.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903B8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_183F72F08();
  sub_184390208();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_184390208();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

BOOL sub_183FCC9C4(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

uint64_t sub_183FCCA14()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x1865ECC40](*&v6);
}

uint64_t sub_183FCCABC()
{
  sub_184390358();
  sub_183FCCA14();
  return sub_184390338();
}

uint64_t sub_183FCCB48()
{
  sub_1843902E8();
  sub_183FCCA14();
  return sub_184390348();
}

unint64_t sub_183FCCB9C()
{
  result = qword_1EA854B88;
  if (!qword_1EA854B88)
  {
    type metadata accessor for CGAffineTransform(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854B88);
  }

  return result;
}

CGPathRef CGPathRef.copy(dashingWithPhase:lengths:transform:)(uint64_t a1, _OWORD *a2, CGFloat a3)
{
  v4 = a2[1];
  *&v6.a = *a2;
  *&v6.c = v4;
  *&v6.tx = a2[2];
  result = CGPathCreateCopyByDashingPath(v3, &v6, a3, (a1 + 32), *(a1 + 16));
  if (!result)
  {
    __break(1u);
  }

  return result;
}

CGPathRef CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)(CGLineCap lineCap, CGLineJoin lineJoin, _OWORD *a3, CGFloat a4, CGFloat a5)
{
  v6 = a3[1];
  *&v8.a = *a3;
  *&v8.c = v6;
  *&v8.tx = a3[2];
  result = CGPathCreateCopyByStrokingPath(v5, &v8, a4, lineCap, lineJoin, a5);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall CGPathRef.contains(_:using:transform:)(CGPoint _, CoreGraphics::CGPathFillRule using, CGAffineTransform *transform)
{
  v4 = *using;
  v5 = *&transform->c;
  *&v7.a = *&transform->a;
  *&v7.c = v5;
  *&v7.tx = *&transform->tx;
  return CGPathContainsPoint(v3, &v7, _, v4);
}

void CGMutablePathRef.addRoundedRect(in:cornerWidth:cornerHeight:transform:)(_OWORD *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  v8 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v8;
  *&v9.tx = a1[2];
  CGPathAddRoundedRect(v7, &v9, *&a2, a6, a7);
}

Swift::Void __swiftcall CGMutablePathRef.addQuadCurve(to:control:transform:)(CGPoint to, CGPoint control, CGAffineTransform *transform)
{
  y = to.y;
  v5 = *&transform->c;
  *&v6.a = *&transform->a;
  *&v6.c = v5;
  *&v6.tx = *&transform->tx;
  CGPathAddQuadCurveToPoint(v3, &v6, control.x, control.y, to.x, y);
}

Swift::Void __swiftcall CGMutablePathRef.addCurve(to:control1:control2:transform:)(CGPoint to, CGPoint control1, CGPoint control2, CGAffineTransform *transform)
{
  y = to.y;
  v6 = *&transform->c;
  *&v7.a = *&transform->a;
  *&v7.c = v6;
  *&v7.tx = *&transform->tx;
  CGPathAddCurveToPoint(v4, &v7, control1.x, control1.y, control2.x, control2.y, to.x, y);
}

Swift::Void __swiftcall CGMutablePathRef.addRect(_:transform:)(__C::CGRect _, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddRect(v2, &v4, _);
}

Swift::Void __swiftcall CGMutablePathRef.addRects(_:transform:)(Swift::OpaquePointer _, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddRects(v2, &v4, _._rawValue + 1, *(_._rawValue + 2));
}

Swift::Void __swiftcall CGMutablePathRef.addLines(between:transform:)(Swift::OpaquePointer between, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddLines(v2, &v4, between._rawValue + 2, *(between._rawValue + 2));
}

Swift::Void __swiftcall CGMutablePathRef.addEllipse(in:transform:)(__C::CGRect in, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddEllipseInRect(v2, &v4, in);
}

void CGMutablePathRef.addRelativeArc(center:radius:startAngle:delta:transform:)(_OWORD *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = a1[1];
  *&v8.a = *a1;
  *&v8.c = v7;
  *&v8.tx = a1[2];
  CGPathAddRelativeArc(v6, &v8, a2, a3, a4, a5, a6);
}

void CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)(char a1, _OWORD *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v8;
  *&v9.tx = a2[2];
  CGPathAddArc(v7, &v9, a3, a4, a5, a6, a7, a1 & 1);
}

CGPathRef __swiftcall CGPathRef.normalized(using:)(CoreGraphics::CGPathFillRule using)
{
  result = CGPathCreateCopyByNormalizing(v1, *using);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

CGPathRef CGPathRef.flattened(threshold:)(CGFloat a1)
{
  result = CGPathCreateCopyByFlattening(v1, a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t CGPathRef.componentsSeparated(using:)(BOOL *a1)
{
  result = CGPathCreateSeparateComponents(v1, *a1);
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    type metadata accessor for CGPath(0);
    result = sub_18438FDB8();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_183FCD19C(_BYTE *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  if (*a1)
  {
    return a3(v3);
  }

  else
  {
    return a2(v3);
  }
}

void (*CGContextRef.textPosition.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = CGContextGetTextPosition(v1);
  return sub_183FCD268;
}

Swift::Void __swiftcall CGContextRef.showGlyphs(_:at:)(Swift::OpaquePointer _, Swift::OpaquePointer at)
{
  v3 = *(_._rawValue + 2);
  if (v3 == *(at._rawValue + 2))
  {
    CGContextShowGlyphsAtPositions(v2, _._rawValue + 16, at._rawValue + 2, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_183FCD2E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 16))(a2);
  return v4(&v6, 0);
}

uint64_t sub_183FCD3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_183FCD444(v9);
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(v9, 0);
}

void (*sub_183FCD444(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = swift_modifyAtWritableKeyPath();
  return sub_183FCD4C0;
}

void sub_183FCD4C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t _CGContextInit<>.init(width:height:auxiliaryInfo:onResolve:onAllocate:onRelease:onError:)(size_t a1, size_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *a3;
  if (*a3 == 5)
  {
    v34 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854B90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18439C350;
    *(inited + 32) = @"kCGAdaptiveMaximumBitDepth";
    *(inited + 40) = v15;
    v26 = @"kCGAdaptiveMaximumBitDepth";
    sub_183FCE438(inited);
    swift_setDeallocating();
    sub_183FCE528(inited + 32);
    type metadata accessor for CFString(0);
    sub_183FCE950(&qword_1EA8541E0, type metadata accessor for CFString);
    v34 = sub_18438FC18();

    if (a4)
    {
LABEL_3:
      v16 = swift_allocObject();
      *(v16 + 16) = a4;
      *(v16 + 24) = a5;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_183FCE71C;
      *(v17 + 24) = v16;
      v43 = sub_183FCE720;
      v44 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = sub_183FCDA2C;
      v42 = &block_descriptor_30;
      v33 = _Block_copy(&aBlock);

      v37 = a4;
      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v32 = 0;
      v20 = a9;
      v21 = a10;
      if (a8)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v33 = 0;
  v37 = a4;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_183FCE670;
  *(v19 + 24) = v18;
  v43 = sub_183FCE6D8;
  v44 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_183FCDA88;
  v42 = &block_descriptor_21;
  v32 = _Block_copy(&aBlock);

  v20 = a9;
  v21 = a10;
  if (a8)
  {
LABEL_5:
    v22 = swift_allocObject();
    *(v22 + 16) = a8;
    *(v22 + 24) = v20;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_183FCE5B4;
    *(v23 + 24) = v22;
    v43 = sub_183FCE9AC;
    v44 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_183FCE9A8;
    v42 = &block_descriptor_12_0;
    v24 = _Block_copy(&aBlock);

    goto LABEL_10;
  }

LABEL_9:
  v24 = 0;
LABEL_10:
  if (v21)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = a11;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_183FCE590;
    *(v28 + 24) = v27;
    v43 = sub_183FCE598;
    v44 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_183FCE9A8;
    v42 = &block_descriptor_4;
    v29 = _Block_copy(&aBlock);
  }

  else
  {
    v29 = 0;
  }

  Adaptive = CGBitmapContextCreateAdaptive(a1, a2, v34, v33, v32, v24, v29, a8);
  sub_183F742A0(v21);
  sub_183F742A0(a8);
  sub_183F742A0(a6);
  sub_183F742A0(v37);
  _Block_release(v29);
  _Block_release(v24);
  _Block_release(v32);
  _Block_release(v33);

  if (Adaptive)
  {
    return swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183FCDA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_183FCDA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}