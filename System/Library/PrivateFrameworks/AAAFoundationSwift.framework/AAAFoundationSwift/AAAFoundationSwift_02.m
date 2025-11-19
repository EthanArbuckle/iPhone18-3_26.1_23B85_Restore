BOOL sub_1B99D4A0C(_BYTE *a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_1B99F3F94();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_1B99F3F84();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v6 < -8 || v6 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -8)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 8)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOBYTE(v13) = 0;
LABEL_24:
          v7 = 0;
          LOBYTE(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOBYTE(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOBYTE(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

BOOL sub_1B99D4B80(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_1B99F3F94();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_1B99F3F84();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v6 < -16 || v6 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOWORD(v13) = 0;
LABEL_24:
          v7 = 0;
          LOWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_1B99D4CF4(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LODWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_1B99F3F94();
      if (v9 > 31)
      {
        LODWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_1B99F3F84();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v6 < -32 || v6 > 32)
          {
LABEL_9:
            LODWORD(v6) = 0;
            v13 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          v13 = 0;
LABEL_24:
          v7 = 0;
          LODWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_1B99D4E64(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v5)
  {
    result = 0;
    v5 = 0;
    v7 = 1;
    if (v3 != 2047 && a2 > -1.0)
    {
      v8 = sub_1B99F3F94();
      if (v8 <= 63)
      {
        v9 = v8;
        v10 = sub_1B99F3F84();
        v11 = v10 + __clz(__rbit64(v4));
        v12 = v9 - v11;
        if (__OFSUB__(v9, v11))
        {
          __break(1u);
        }

        else
        {
          if (v11 > 63)
          {
            if (v12 < -64 || v12 > 64)
            {
              goto LABEL_12;
            }
          }

          else if (v12 < -64 || v12 > 64)
          {
            goto LABEL_12;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            if (v12 != 64)
            {
              v13 = v4 << v12;
              if (v9 < 0)
              {
LABEL_17:
                v14 = 0;
                goto LABEL_24;
              }

LABEL_23:
              v14 = 1 << v9;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }

        if (v12 != -64)
        {
          v13 = v4 >> (v11 - v9);
          if (v9 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }

LABEL_12:
        v13 = 0;
        v14 = 0;
        if (v9 < 0)
        {
LABEL_24:
          v7 = 0;
          result = v9 >= v10;
          v5 = v13 | v14;
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v5 = 0;
      result = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_25:
  *a1 = v5;
  *(a1 + 8) = v7;
  return result;
}

BOOL sub_1B99D4FA4()
{
  sub_1B99D5A10(v0 + 72, v5);
  if (v5[3])
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1B99A18A4(v5, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  v2 = sub_1B99CE7B4((v0 + 72));
  if (v3)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E6370], v0 + 72);
    swift_willThrow();
  }

  else
  {
    return v2 != 0;
  }

  return v1;
}

uint64_t sub_1B99D529C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99D52EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AAAFoundationSwift17DictionaryDecoderC20DateDecodingStrategyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B99D536C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B99D53B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B99D53F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1B99D5420(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99D5474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B99D54E0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B99D55C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1B99D5620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B99D5690()
{
  result = qword_1EBBDCE20;
  if (!qword_1EBBDCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCE20);
  }

  return result;
}

unint64_t sub_1B99D56E4()
{
  result = qword_1EBBDCE30;
  if (!qword_1EBBDCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCE30);
  }

  return result;
}

uint64_t sub_1B99D5750()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B99D57A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B99D57F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B99D5868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1B99D58B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B99D5958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1B99D59A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B99D5A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B99D5A80()
{
  result = qword_1EBBDCE78;
  if (!qword_1EBBDCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCE78);
  }

  return result;
}

unint64_t sub_1B99D5AD4()
{
  result = qword_1EBBDCE98;
  if (!qword_1EBBDCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCE98);
  }

  return result;
}

unint64_t sub_1B99D5B28()
{
  result = qword_1EBBDCEC0;
  if (!qword_1EBBDCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCEC0);
  }

  return result;
}

unint64_t sub_1B99D5B7C()
{
  result = qword_1EBBDCED8;
  if (!qword_1EBBDCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCED8);
  }

  return result;
}

unint64_t sub_1B99D5BD0()
{
  result = qword_1EBBDCEF0;
  if (!qword_1EBBDCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCEF0);
  }

  return result;
}

unint64_t sub_1B99D5C24()
{
  result = qword_1EBBDCF08;
  if (!qword_1EBBDCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF08);
  }

  return result;
}

unint64_t sub_1B99D5C78()
{
  result = qword_1EBBDCF20;
  if (!qword_1EBBDCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF20);
  }

  return result;
}

unint64_t sub_1B99D5CCC()
{
  result = qword_1EBBDCF38;
  if (!qword_1EBBDCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF38);
  }

  return result;
}

unint64_t sub_1B99D5D20()
{
  result = qword_1EBBDCF50;
  if (!qword_1EBBDCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF50);
  }

  return result;
}

unint64_t sub_1B99D5D74()
{
  result = qword_1EBBDCF68;
  if (!qword_1EBBDCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF68);
  }

  return result;
}

unint64_t sub_1B99D5DC8()
{
  result = qword_1EBBDCF80;
  if (!qword_1EBBDCF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF80);
  }

  return result;
}

unint64_t sub_1B99D5E1C()
{
  result = qword_1EBBDCF98;
  if (!qword_1EBBDCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCF98);
  }

  return result;
}

unint64_t sub_1B99D5E70()
{
  result = qword_1EBBDCFB0;
  if (!qword_1EBBDCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCFB0);
  }

  return result;
}

void sub_1B99D5EF4()
{
  v2 = v0[10];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v0;
  v4 = v0[9];
  if (v2 >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = *v0;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v14 = v3[5];
  v10 = *(v3 + 48);
  v13 = v2;
  v11 = v3[7];
  v12 = v3[8];
  sub_1B99D5A10(v4 + 32 * v2 + 32, &v19);
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;

  sub_1B99CA6A4(v7);
  sub_1B99CA884(v9, v14, v10);
  sub_1B99CAA28(v11);
  sub_1B99D4FA4();
  sub_1B99D5EC4(v15);
  if (!v1)
  {
    v3[10] = v13 + 1;
  }
}

void sub_1B99D6018()
{
  v1 = v0[10];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v0[9];
  if (v1 >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = *v0;
  v12 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = *(v0 + 48);
  v11 = v0[10];
  v10 = v0[7];
  v9 = v0[8];
  sub_1B99D5A10(v2 + 32 * v1 + 32, v19);
  v15[0] = v3;
  v15[1] = v12;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v7;
  v15[5] = v6;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v19[6] = v9;
  sub_1B99D5A10(v19, v13);
  if (v14)
  {

    sub_1B99CA6A4(v4);
    sub_1B99CA884(v7, v6, v8);
    sub_1B99CAA28(v10);
    if (swift_dynamicCast())
    {
      sub_1B99D5EC4(v15);
      v0[10] = v11 + 1;
      return;
    }
  }

  else
  {

    sub_1B99CA6A4(v4);
    sub_1B99CA884(v7, v6, v8);
    sub_1B99CAA28(v10);
    sub_1B99A18A4(v13, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  sub_1B99D1CA8(MEMORY[0x1E69E6158], v19);
  swift_willThrow();
  sub_1B99D5EC4(v15);
}

void sub_1B99D61E4()
{
  v1 = v0[10];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v0;
  v3 = v0[9];
  if (v1 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *v0;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v21 = v2[4];
  v9 = v21;
  v15 = v8;
  v10 = *(v2 + 48);
  v14 = v1;
  v11 = v2[7];
  v12 = v2[8];
  sub_1B99D5A10(v3 + 32 * v1 + 32, v20);
  v16[0] = v4;
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v9;
  v16[5] = v15;
  v17 = v10;
  v18 = v11;
  v19 = v12;

  sub_1B99CA6A4(v6);
  sub_1B99CA884(v21, v15, v10);
  sub_1B99CAA28(v11);
  sub_1B99D1F50(v20);
  if (v13)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E63B0], v20);
    swift_willThrow();
    sub_1B99D5EC4(v16);
  }

  else
  {
    sub_1B99D5EC4(v16);
    v2[10] = v14 + 1;
  }
}

void sub_1B99D6338()
{
  v1 = v0[10];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v0;
  v3 = v0[9];
  if (v1 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *v0;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v20 = v2[4];
  v9 = v20;
  v14 = v8;
  v10 = *(v2 + 48);
  v13 = v1;
  v11 = v2[7];
  v12 = v2[8];
  sub_1B99D5A10(v3 + 32 * v1 + 32, v19);
  v15[0] = v4;
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v9;
  v15[5] = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;

  sub_1B99CA6A4(v6);
  sub_1B99CA884(v20, v14, v10);
  sub_1B99CAA28(v11);
  if ((sub_1B99D27B4(v19) & 0x100000000) != 0)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E6448], v19);
    swift_willThrow();
    sub_1B99D5EC4(v15);
  }

  else
  {
    sub_1B99D5EC4(v15);
    v2[10] = v13 + 1;
  }
}

uint64_t (*sub_1B99D648C(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v3 = v2[10];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v2[9];
  if (v3 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v18 = *(v4 + 48);
  v16 = v3;
  v12 = v4[7];
  v13 = v4[8];
  v24 = result;
  sub_1B99D5A10(v5 + 32 * v3 + 32, v23);
  v19[0] = v6;
  v19[1] = v7;
  v19[2] = v8;
  v19[3] = v9;
  v19[4] = v11;
  v19[5] = v10;
  v20 = v18;
  v21 = v12;
  v22 = v13;

  sub_1B99CA6A4(v8);
  sub_1B99CA884(v11, v10, v18);
  sub_1B99CAA28(v12);
  v14 = v24(v23);
  if (v15)
  {
    sub_1B99D1CA8(a2, v23);
    swift_willThrow();
    sub_1B99D5EC4(v19);
  }

  else
  {
    sub_1B99D5EC4(v19);
    v4[10] = v16 + 1;
  }

  return v14;
}

uint64_t (*sub_1B99D65E8(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v3 = v2[10];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v2[9];
  if (v3 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v17 = *(v4 + 48);
  v15 = v3;
  v12 = v4[7];
  v13 = v4[8];
  v23 = result;
  sub_1B99D5A10(v5 + 32 * v3 + 32, v22);
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v11;
  v18[5] = v10;
  v19 = v17;
  v20 = v12;
  v21 = v13;

  sub_1B99CA6A4(v8);
  sub_1B99CA884(v11, v10, v17);
  sub_1B99CAA28(v12);
  v14 = v23(v22);
  if ((v14 & 0x100) != 0)
  {
    sub_1B99D1CA8(a2, v22);
    swift_willThrow();
    sub_1B99D5EC4(v18);
  }

  else
  {
    sub_1B99D5EC4(v18);
    v4[10] = v15 + 1;
  }

  return v14;
}

uint64_t (*sub_1B99D6744(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v3 = v2[10];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v2[9];
  if (v3 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v17 = *(v4 + 48);
  v15 = v3;
  v12 = v4[7];
  v13 = v4[8];
  v23 = result;
  sub_1B99D5A10(v5 + 32 * v3 + 32, v22);
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v11;
  v18[5] = v10;
  v19 = v17;
  v20 = v12;
  v21 = v13;

  sub_1B99CA6A4(v8);
  sub_1B99CA884(v11, v10, v17);
  sub_1B99CAA28(v12);
  v14 = v23(v22);
  if ((v14 & 0x10000) != 0)
  {
    sub_1B99D1CA8(a2, v22);
    swift_willThrow();
    sub_1B99D5EC4(v18);
  }

  else
  {
    sub_1B99D5EC4(v18);
    v4[10] = v15 + 1;
  }

  return v14;
}

uint64_t (*sub_1B99D68A0(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v3 = v2[10];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v2[9];
  if (v3 >= *(v5 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = *v2;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v11 = v4[4];
  v10 = v4[5];
  v17 = *(v4 + 48);
  v15 = v3;
  v12 = v4[7];
  v13 = v4[8];
  v23 = result;
  sub_1B99D5A10(v5 + 32 * v3 + 32, v22);
  v18[0] = v6;
  v18[1] = v7;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v11;
  v18[5] = v10;
  v19 = v17;
  v20 = v12;
  v21 = v13;

  sub_1B99CA6A4(v8);
  sub_1B99CA884(v11, v10, v17);
  sub_1B99CAA28(v12);
  v14 = v23(v22);
  if ((v14 & 0x100000000) != 0)
  {
    sub_1B99D1CA8(a2, v22);
    swift_willThrow();
    sub_1B99D5EC4(v18);
  }

  else
  {
    sub_1B99D5EC4(v18);
    v4[10] = v15 + 1;
  }

  return v14;
}

uint64_t sub_1B99D69FC(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  v6 = a1[1];

  return sub_1B99F4AC4();
}

uint64_t sub_1B99D6A60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B99D6ABC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDCFE0, &qword_1B99F8018);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B99F4AF4();
  qword_1EBBDCFD8 = result;
  return result;
}

uint64_t static AAFTestableSettings.$allowSwiftUITestableOverrides.getter()
{
  if (qword_1EBBDC2B8 != -1)
  {
    swift_once();
  }
}

uint64_t static AAFTestableSettings.allowSwiftUITestableOverrides.getter()
{
  if (qword_1EBBDC2B8 != -1)
  {
    swift_once();
  }

  sub_1B99F4B04();
  return v1;
}

uint64_t sub_1B99D6C70@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = static StandardUnarchiver.unarchivedObject(from:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B99D6CB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B99D72D4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CustomCodableBox.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F4A64();
  if (!v5)
  {
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_1B99D74FC();
    sub_1B99F4764();
    v13 = v20;
    v12 = v21;
    (*(a4 + 16))(&v20, v20, v21, a3, a4);
    v14 = v20;
    if (v20)
    {
      sub_1B99A92F0(v13, v12);
      *a5 = v14;
    }

    else
    {
      v16 = sub_1B99F42A4();
      swift_allocError();
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD000, &qword_1B99F7F20) + 48);
      *v18 = a2;
      sub_1B99F4294();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
      swift_willThrow();
      sub_1B99A92F0(v13, v12);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CustomCodableBox.encode(to:)(void *a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v13[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v13];
  v5 = v13[0];
  if (v4)
  {
    v6 = sub_1B99F3814();
    v8 = v7;

    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B99F4A94();
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_1B99D75A0();
    sub_1B99F4794();
    sub_1B99A92F0(v6, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = v5;
    sub_1B99F36E4();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static CustomCodableBox<>.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  return sub_1B99F3BA4() & 1;
}

uint64_t sub_1B99D70CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static CustomCodableBox<>.< infix(_:_:)(a1, a2);
}

uint64_t sub_1B99D7100(uint64_t a1, SEL *a2)
{
  v3 = [*v2 *a2];
  v4 = sub_1B99F3C24();

  return v4;
}

uint64_t static CustomCodableBox.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
  return sub_1B99F4184() & 1;
}

uint64_t CustomCodableBox.hashValue.getter()
{
  v1 = *v0;
  sub_1B99F4A04();
  sub_1B99F4194();
  return sub_1B99F4A24();
}

uint64_t sub_1B99D7220()
{
  sub_1B99F4A04();
  CustomCodableBox.hash(into:)();
  return sub_1B99F4A24();
}

uint64_t sub_1B99D725C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD170, &qword_1B99F7840);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EBBDD178;
    v3 = "*_";
  }

  else
  {
    v2 = &unk_1EBBDD180;
    v3 = &qword_1B99F6228;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_1B99D72D4()
{
  sub_1B99D725C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F8020;
  *(inited + 32) = sub_1B99BE9A8(0, &qword_1EBBDD118, 0x1E695DF20);
  *(inited + 40) = sub_1B99BE9A8(0, &qword_1EBBDD120, 0x1E696AEC0);
  *(inited + 48) = sub_1B99BE9A8(0, &qword_1EBBDD128, 0x1E696AD98);
  *(inited + 56) = sub_1B99BE9A8(0, &qword_1EBBDD130, 0x1E695DEC8);
  *(inited + 64) = sub_1B99BE9A8(0, &qword_1EBBDD138, 0x1E695DF00);
  *(inited + 72) = sub_1B99BE9A8(0, &qword_1EBBDD140, 0x1E695DEF0);
  *(inited + 80) = sub_1B99BE9A8(0, &qword_1EBBDD148, 0x1E695DFD8);
  *(inited + 88) = sub_1B99BE9A8(0, &qword_1EBBDD150, 0x1E695DFB8);
  *(inited + 96) = sub_1B99BE9A8(0, &qword_1EBBDD158, 0x1E695DFB0);
  *(inited + 104) = sub_1B99BE9A8(0, &unk_1EBBDD160, 0x1E695DFF8);
  sub_1B99BE9A8(0, &qword_1EBBDCFF0, 0x1E696ACD0);
  sub_1B99CB34C(inited);

  sub_1B99F40F4();

  if (!v0)
  {
    if (v3[3])
    {
      if (swift_dynamicCast())
      {
        return v3[19];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B99AC2C8(v3);
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B99D74FC()
{
  result = qword_1EBBDCFF8;
  if (!qword_1EBBDCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCFF8);
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

unint64_t sub_1B99D75A0()
{
  result = qword_1EBBDD008;
  if (!qword_1EBBDD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD008);
  }

  return result;
}

uint64_t sub_1B99D761C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B99D76D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B99D83F0(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_1B99D7700@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  return sub_1B99D8280(a2, a3, a4);
}

uint64_t sub_1B99D7760()
{
  v0 = sub_1B99F4424();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99D77B4(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1B99D77E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99D7854(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B99D78C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99D7930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99D79A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B99D7760();
  *a2 = result;
  return result;
}

uint64_t sub_1B99D79D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B99D77B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B99D7A04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B99D7760();
  *a1 = result;
  return result;
}

uint64_t sub_1B99D7A2C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1B99AD078();
  *a2 = result;
  return result;
}

uint64_t sub_1B99D7A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B99D7AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TypedCodingEnvelope<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v5 = a1;
  v41 = a4;
  v40 = *(a2 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TypedCodingEnvelope.CodingKeys();
  swift_getWitnessTable();
  v45 = sub_1B99F4484();
  v42 = *(v45 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45, v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for TypedCodingEnvelope();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v36 - v15;
  v17 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v18 = v46;
  sub_1B99F4A74();
  if (v18)
  {
    goto LABEL_9;
  }

  v37 = v16;
  v38 = v12;
  v46 = v5;
  v19 = v43;
  v20 = v42;
  v49 = 0;
  v21 = sub_1B99F4464();
  v23 = v22;
  v36 = v11;
  v24 = a2;
  v47 = a2;
  swift_getMetatypeMetadata();
  v25 = sub_1B99F3C54();
  v27 = v26;
  if (v21 != v25 || v23 != v26)
  {
    v29 = v25;
    if ((sub_1B99F4704() & 1) == 0)
    {
      sub_1B99D7F04();
      swift_allocError();
      *v34 = v29;
      v34[1] = v27;
      v34[2] = v21;
      v34[3] = v23;
      swift_willThrow();
      (*(v20 + 8))(v36, v45);
      v5 = v46;
LABEL_9:
      v33 = v5;
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  v48 = 1;
  v30 = v45;
  v31 = v36;
  sub_1B99F4474();
  (*(v20 + 8))(v31, v30);
  v32 = v37;
  (*(v40 + 32))(v37, v19, v24);
  (*(v39 + 32))(v41, v32, v38);
  v33 = v46;
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

unint64_t sub_1B99D7F04()
{
  result = qword_1EBBDD1F0[0];
  if (!qword_1EBBDD1F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBBDD1F0);
  }

  return result;
}

uint64_t TypedCodingEnvelope<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TypedCodingEnvelope.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_1B99F44C4();
  v23 = *(v21 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21, v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v22;
  sub_1B99F4AA4();
  (*(v5 + 16))(v8, v14, v4);
  DynamicType = swift_getDynamicType();
  (*(v5 + 8))(v8, v4);
  v27 = DynamicType;
  v16 = v21;
  swift_getMetatypeMetadata();
  sub_1B99F3C54();
  v26 = 0;
  v17 = v24;
  sub_1B99F44A4();
  if (v17)
  {
    (*(v23 + 8))(v12, v16);
  }

  else
  {
    v19 = v23;

    v25 = 1;
    sub_1B99F44B4();
    return (*(v19 + 8))(v12, v16);
  }
}

uint64_t sub_1B99D8280@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v16 = a3;
  v6 = type metadata accessor for TypedCodingEnvelope();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - v9;
  v11 = sub_1B99F3684();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1B99F3674();
  v17 = a2;
  swift_getWitnessTable();
  sub_1B99F3664();

  if (!v3)
  {
    return (*(*(a1 - 8) + 32))(v16, v10, a1);
  }

  return result;
}

uint64_t sub_1B99D83F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TypedCodingEnvelope();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v21 - v14;
  v16 = sub_1B99F36C4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B99F36B4();
  sub_1B99F3694();
  (*(v6 + 16))(v9, a1, a2);
  (*(v6 + 32))(v15, v9, a2);
  v21[3] = a3;
  swift_getWitnessTable();
  v19 = sub_1B99F36A4();
  (*(v11 + 8))(v15, v10);

  return v19;
}

uint64_t sub_1B99D876C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B99D8800(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F4A34();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v12 = a1[3];
  v18 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = *(*v3 + 96);
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v7;
  v14[4] = a2;
  v14[5] = a3;
  v15 = *(v7 + 40);

  v15(v17, sub_1B99D9130, v14, v12, v18, v8, v7);
}

uint64_t sub_1B99D8A60(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v45 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v4 = *(v48 + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v50 = &v43 - v9;
  v10 = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v11 = sub_1B99F4A34();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v43 - v19;
  v21 = *(v10 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18, v23);
  v25 = &v43 - v24;
  swift_getAssociatedConformanceWitness();
  v26 = sub_1B99F4A34();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v43 - v29;
  (*(v31 + 16))(&v43 - v29, v45, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v11;
    v32 = v47;
    v33 = v48;
    v34 = *(v48 + 32);
    v35 = v50;
    v34(v50, v30, AssociatedTypeWitness);
    v36 = v44;
    (*(v33 + 16))(v44, v35, AssociatedTypeWitness);
    v37 = sub_1B99F46D4();
    if (v37)
    {
      v38 = v37;
      v39 = v48;
      (*(v48 + 8))(v36, AssociatedTypeWitness);
    }

    else
    {
      v38 = swift_allocError();
      v34(v41, v36, AssociatedTypeWitness);
      v39 = v48;
    }

    *v16 = v38;
    v42 = v45;
    swift_storeEnumTagMultiPayload();
    v32(v16);
    (*(v49 + 8))(v16, v42);
    return (*(v39 + 8))(v50, AssociatedTypeWitness);
  }

  else
  {
    (*(v21 + 32))(v25, v30, v10);
    (*(v21 + 16))(v20, v25, v10);
    swift_storeEnumTagMultiPayload();
    v47(v20);
    (*(v49 + 8))(v20, v11);
    return (*(v21 + 8))(v25, v10);
  }
}

char *sub_1B99D8F3C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[10];
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v11 - v6;
  v8 = v2[12];
  (*(v4 + 16))(&v11 - v6, &v1[v8], v3);
  (*(v2[11] + 48))(0xD000000000000023, 0x80000001B99FAA50, v3);
  v9 = *(v4 + 8);
  v9(v7, v3);
  v9(&v1[v8], v3);
  return v1;
}

uint64_t sub_1B99D909C()
{
  sub_1B99D8F3C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B99D9130(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B99D8A60(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1B99D913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v9, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B99F4A34();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v26 - v21;
  (*(v23 + 16))(&v26 - v21, a1, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v22, a4);
    return sub_1B99DA2D8(v17, v27, a3, a4);
  }

  else
  {
    v25 = *(v7 + 32);
    v25(v11, v22, a3);
    v25(*(*(v27 + 64) + 40), v11, a3);
    return swift_continuation_throwingResume();
  }
}

uint64_t MessageSender.__allocating_init<A, B, C>(encoder:decoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1B99DA36C(a1, a2, a3, a4, a5, a6);
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v12;
}

uint64_t MessageSender.init<A, B, C>(encoder:decoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1B99DA36C(a1, a2, a3, a4, a5, a6);
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v12;
}

uint64_t *sub_1B99D95DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1B99D99E0(a1, a2, a3);
}

uint64_t sub_1B99D9630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v11);
  return (*(v12 + 8))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t sub_1B99D96BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99D96E4);
}

uint64_t sub_1B99D96E4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_1B99B4C34;
  v6 = *(v0 + 16);

  return sub_1B99B1B48(v6, 0, 0, sub_1B99DA5B8, v3);
}

uint64_t sub_1B99D9804(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v12 + 8))(a3, sub_1B99DA8DC, v10, a4, a5, v11, v12);
}

uint64_t sub_1B99D98D8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);

  return sub_1B99D913C(a1, a2, AssociatedTypeWitness, v5);
}

uint64_t MessageSender.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t *sub_1B99D99E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  (*(*(*(*v3 + 96) - 8) + 32))(v3 + *(*v3 + 128), a3);
  (*(*(*(v6 + 80) - 8) + 32))(v3 + *(*v3 + 136), a1);
  (*(*(*(v6 + 88) - 8) + 32))(v3 + *(*v3 + 144), a2);
  return v3;
}

uint64_t sub_1B99D9B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v30 = *v5;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F4A34();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v12 = v30[13];
  v13 = v30[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  v15 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v18 = &v28 - v17;
  v19 = v30[17];
  v20 = *(v12 + 16);
  v31 = a5;
  v20(v32, a4, *(a5 + 16), v13, v12);
  v21 = *(*v5 + 128);
  v22 = swift_allocObject();
  v23 = v31;
  v22[2] = a4;
  v22[3] = v23;
  v22[4] = v33;
  v22[5] = v34;
  v22[6] = v6;
  v24 = v30[15];
  v25 = *(v24 + 24);
  v26 = v30[12];

  v25(v18, sub_1B99DA8AC, v22, v26, v24);

  return (*(v28 + 8))(v18, v29);
}

uint64_t sub_1B99D9E68(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21[2] = a3;
  v22 = a2;
  v21[1] = a1;
  v9 = *a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v11 = sub_1B99F4A34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v21 - v15;
  v24 = a5;
  v25 = a6;
  v26 = a4;
  v17 = *(v9 + 112);
  v18 = *(v9 + 88);
  swift_getAssociatedTypeWitness();
  v19 = sub_1B99F4A34();
  Result<>.foundation_tryMap<A>(_:)(sub_1B99DA8BC, v23, v19, AssociatedTypeWitness, v16);
  v22(v16);
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_1B99DA038(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(v2 + 112);
  v6 = *(v5 + 16);
  v7 = *(v2 + 88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return v6(AssociatedTypeWitness, a1, AssociatedTypeWitness, AssociatedConformanceWitness, v7, v5);
}

uint64_t *sub_1B99DA140()
{
  v1 = *v0;
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 128));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_1B99DA260()
{
  v0 = sub_1B99DA140();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B99DA2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B99DA36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a3;
  v39 = a1;
  v40 = a2;
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v18, v24);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v33 = type metadata accessor for InternalMessageSender();
  (*(v22 + 16))(v26, v39, a4);
  (*(v15 + 16))(v20, v40, a5);
  (*(v9 + 16))(v13, v42, a6);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_1B99D99E0(v26, v20, v13);
  v37 = v41;
  *(v41 + 40) = v33;
  *(v37 + 48) = &off_1F37B2FC8;
  *(v37 + 16) = v36;
  return v37;
}

uint64_t dispatch thunk of MessageSender.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 104);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B99A3EB8;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1B99DA784(void *a1)
{
  v2 = a1[12];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v5 = a1[10];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v7 = a1[11];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1B99DA8BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B99DA038(a1, *(v1 + 32));
}

uint64_t sub_1B99DA8DC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1B99D98D8(a1, v1[4]);
}

id ExponentialRetryScheduler.__allocating_init(maxRetries:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithMaxRetries:a1 power:2.0];
}

id ExponentialRetryScheduler.__allocating_init(maxRetries:power:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = objc_allocWithZone(v2);
  v7 = ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)(a1, v9, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id ExponentialRetryScheduler.init(maxRetries:power:)(uint64_t a1, double a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = objc_allocWithZone(swift_getObjectType());
  v5 = ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)(a1, v7, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1B99DAAF8()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B99DAB60()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1B99DB0F4;
  }

  else
  {
    v3 = sub_1B99DAC74;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99DAC74()
{
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_1B99F3974();
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_1ED99EC18);
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = *&v6[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v6[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v4, v5, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v7, 0xEu);
    MEMORY[0x1BFAE1C50](v7, -1, -1);
  }

  else
  {

    v4 = *(v0 + 184);
  }

  v8 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  *(v0 + 256) = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  *(v0 + 264) = v8;
  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  v9 = *(v0 + 224);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 272) = v9;
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    v10 = *(v0 + 184);
    v11 = *&v10[*(v0 + 256)];
    v12 = *&v10[*(v0 + 264)];
    *(v0 + 280) = v12;
    if (v11 < v12)
    {
      v13 = *(v0 + 248);
      v14 = v10;
      v15 = sub_1B99F3954();
      v16 = sub_1B99F40D4();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 184);
      if (v17)
      {
        v19 = swift_slowAlloc();
        *v19 = 134218240;
        *(v19 + 4) = v11;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v12;

        _os_log_impl(&dword_1B99A0000, v15, v16, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v19, 0x16u);
        MEMORY[0x1BFAE1C50](v19, -1, -1);
      }

      else
      {
      }

      v31 = *(v0 + 200);

      v32 = swift_task_alloc();
      *(v0 + 288) = v32;
      *v32 = v0;
      v32[1] = sub_1B99DB564;
      v33 = *(v0 + 192);
      v34 = *(v0 + 200);
      v35 = *(v0 + 184);

      return sub_1B99DE050(v0 + 112, v35, v33, v34);
    }

    v9 = *(v0 + 272);
  }

  else
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    v20 = *(v0 + 248);
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v21 = sub_1B99F40C4();
    v22 = sub_1B99F3954();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B99A0000, v22, v21, "All retry failed", v23, 2u);
      MEMORY[0x1BFAE1C50](v23, -1, -1);
    }

    v24 = *(v0 + 224);
    v25 = *(v0 + 200);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v26 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 224);
    v28 = *(v0 + 200);
    v29 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v36 = *(v0 + 96);
    *v29 = *(v0 + 80);
    v29[1] = v36;

    v26 = *(v0 + 8);
  }

  return v26();
}

uint64_t sub_1B99DB0F4()
{
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = sub_1B99F3974();
  __swift_project_value_buffer(v2, qword_1ED99EC18);
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B99A0000, v4, v5, "errorHandler returned error: %@, retry will NOT continue.", v8, 0xCu);
    sub_1B99A18A4(v9, &qword_1EBBDD2A0, &qword_1B99F8738);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
    MEMORY[0x1BFAE1C50](v8, -1, -1);
  }

  else
  {
  }

  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 184);
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_1ED99EC18);
  v13 = v12;
  v14 = sub_1B99F3954();
  v15 = sub_1B99F40D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 184);
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 8) = 1024;
    *(v17 + 10) = *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v14, v15, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v17, 0xEu);
    MEMORY[0x1BFAE1C50](v17, -1, -1);
  }

  else
  {

    v14 = *(v0 + 184);
  }

  v18 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  *(v0 + 256) = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  *(v0 + 264) = v18;
  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  v19 = *(v0 + 224);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 272) = v19;
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    v19 = *(v0 + 272);
  }

  else
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    v20 = *(v0 + 248);
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v21 = sub_1B99F40C4();
    v22 = sub_1B99F3954();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B99A0000, v22, v21, "All retry failed", v23, 2u);
      MEMORY[0x1BFAE1C50](v23, -1, -1);
    }

    v24 = *(v0 + 224);
    v25 = *(v0 + 200);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v26 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 224);
    v28 = *(v0 + 200);
    v29 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v31 = *(v0 + 96);
    *v29 = *(v0 + 80);
    v29[1] = v31;

    v26 = *(v0 + 8);
  }

  return v26();
}

uint64_t sub_1B99DB564()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1B99DBAA8;
  }

  else
  {
    v3 = sub_1B99DB678;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99DB678()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);
  sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);
  v3 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v3;
  v4 = v2;
  v5 = sub_1B99F3954();
  v6 = sub_1B99F40D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 256);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = *&v9[v8];
    *(v10 + 12) = 2048;
    *(v10 + 14) = v7;

    _os_log_impl(&dword_1B99A0000, v5, v6, "Retry succeeded at index: %ld, maxRetry: %ld", v10, 0x16u);
    MEMORY[0x1BFAE1C50](v10, -1, -1);
  }

  else
  {
  }

  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 72) == 1)
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    v11 = *(v0 + 184);
    v12 = *&v11[*(v0 + 256)];
    v13 = *&v11[*(v0 + 264)];
    *(v0 + 280) = v13;
    if (v12 < v13)
    {
      v14 = *(v0 + 248);
      v15 = v11;
      v16 = sub_1B99F3954();
      v17 = sub_1B99F40D4();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 184);
      if (v18)
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        *(v20 + 4) = v12;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v13;

        _os_log_impl(&dword_1B99A0000, v16, v17, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v20, 0x16u);
        MEMORY[0x1BFAE1C50](v20, -1, -1);
      }

      else
      {
      }

      v33 = *(v0 + 200);

      v34 = swift_task_alloc();
      *(v0 + 288) = v34;
      *v34 = v0;
      v34[1] = sub_1B99DB564;
      v35 = *(v0 + 192);
      v36 = *(v0 + 200);
      v37 = *(v0 + 184);

      return sub_1B99DE050(v0 + 112, v37, v35, v36);
    }

    v21 = *(v0 + 272);
  }

  else
  {
    v21 = *(v0 + 272);
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    v22 = *(v0 + 248);
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v23 = sub_1B99F40C4();
    v24 = sub_1B99F3954();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B99A0000, v24, v23, "All retry failed", v25, 2u);
      MEMORY[0x1BFAE1C50](v25, -1, -1);
    }

    v26 = *(v0 + 224);
    v27 = *(v0 + 200);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v28 = *(v0 + 8);
  }

  else
  {
    v29 = *(v0 + 224);
    v30 = *(v0 + 200);
    v31 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v38 = *(v0 + 96);
    *v31 = *(v0 + 80);
    v31[1] = v38;

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1B99DBAA8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);
  v3 = sub_1B99F40C4();
  v4 = v2;
  v5 = sub_1B99F3954();
  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *&v8[v7];
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;

    _os_log_impl(&dword_1B99A0000, v5, v3, "Error occurred during retry at index: %ld, maxRetry: %ld", v9, 0x16u);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 152);
  if (v10)
  {
    v11 = *(v0 + 160);
    v12 = v10(*(v0 + 296));
  }

  else
  {
    v12 = 1;
  }

  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  v13 = *(v0 + 296);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 272) = v13;
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    if (v12)
    {
      v14 = *(v0 + 184);
      v15 = *&v14[*(v0 + 256)];
      v16 = *&v14[*(v0 + 264)];
      *(v0 + 280) = v16;
      if (v15 < v16)
      {
        v17 = *(v0 + 248);
        v18 = v14;
        v19 = sub_1B99F3954();
        v20 = sub_1B99F40D4();
        v21 = os_log_type_enabled(v19, v20);
        v22 = *(v0 + 184);
        if (v21)
        {
          v23 = swift_slowAlloc();
          *v23 = 134218240;
          *(v23 + 4) = v15;
          *(v23 + 12) = 2048;
          *(v23 + 14) = v16;

          _os_log_impl(&dword_1B99A0000, v19, v20, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v23, 0x16u);
          MEMORY[0x1BFAE1C50](v23, -1, -1);
        }

        else
        {
        }

        v35 = *(v0 + 200);

        v36 = swift_task_alloc();
        *(v0 + 288) = v36;
        *v36 = v0;
        v36[1] = sub_1B99DB564;
        v37 = *(v0 + 192);
        v38 = *(v0 + 200);
        v39 = *(v0 + 184);

        return sub_1B99DE050(v0 + 112, v39, v37, v38);
      }
    }

    v13 = *(v0 + 272);
  }

  else
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    v24 = *(v0 + 248);
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v25 = sub_1B99F40C4();
    v26 = sub_1B99F3954();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B99A0000, v26, v25, "All retry failed", v27, 2u);
      MEMORY[0x1BFAE1C50](v27, -1, -1);
    }

    v28 = *(v0 + 224);
    v29 = *(v0 + 200);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 224);
    v32 = *(v0 + 200);
    v33 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v40 = *(v0 + 96);
    *v33 = *(v0 + 80);
    v33[1] = v40;

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t ExponentialRetryScheduler.schedule<A>(_:shouldRetry:willRetry:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v9;
  v11[9] = a8;
  v11[10] = v8;
  v11[7] = a6;
  v11[8] = a7;
  v11[5] = a4;
  v11[6] = a5;
  v11[3] = a2;
  v11[4] = a3;
  v11[2] = a1;
  v13 = *(a8 - 8);
  v11[11] = v13;
  v14 = *(v13 + 64) + 15;
  v11[12] = swift_task_alloc();
  v15 = sub_1B99F41C4();
  v11[13] = v15;
  v16 = *(v15 - 8);
  v11[14] = v16;
  v17 = *(v16 + 64) + 15;
  v11[15] = swift_task_alloc();
  v11[16] = swift_task_alloc();
  v11[17] = swift_task_alloc();
  v11[18] = swift_task_alloc();
  v21 = (a2 + *a2);
  v18 = a2[1];
  v19 = swift_task_alloc();
  v11[19] = v19;
  *v19 = v11;
  v19[1] = sub_1B99DC0E8;

  return v21(a1);
}

uint64_t sub_1B99DC0E8()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99DC25C);
  }

  else
  {
    v5 = v3[17];
    v4 = v3[18];
    v7 = v3[15];
    v6 = v3[16];
    v8 = v3[12];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1B99DC25C()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = *(v2 + 56);
  v0[21] = v5;
  v0[22] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = v0[20];
  if (v4)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v6;
    if ((v8(v6) & 1) == 0)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v6;
  }

  v12 = v0[7];
  if (v12)
  {
    v13 = v0[8];
    v14 = v0[7];
    v86 = (v12 + *v12);
    v15 = v12[1];
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_1B99DC914;
    v17 = v0[20];

    return v86(v17);
  }

  v10 = 1;
LABEL_10:
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v19 = v0[10];
  v20 = sub_1B99F3974();
  v0[25] = __swift_project_value_buffer(v20, qword_1ED99EC18);
  v21 = v19;
  v22 = sub_1B99F3954();
  v23 = sub_1B99F40D4();
  v87 = v10;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[10];
    v25 = swift_slowAlloc();
    *v25 = 67109376;
    *(v25 + 4) = v10;
    *(v25 + 8) = 1024;
    *(v25 + 10) = *&v24[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v24[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v22, v23, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v25, 0xEu);
    MEMORY[0x1BFAE1C50](v25, -1, -1);
  }

  else
  {

    v22 = v0[10];
  }

  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[13];
  v29 = v0[14];
  v30 = v0[11];
  v31 = v0[9];

  v32 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  v0[26] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[27] = v32;
  v33 = *(v29 + 16);
  v0[28] = v33;
  v33(v27, v26, v28);
  v34 = *(v30 + 48);
  v0[29] = v34;
  v35 = v34(v27, 1, v31);
  v36 = *(v29 + 8);
  v0[30] = v36;
  if (v35 == 1)
  {
    v37 = v0[17];
    v38 = v0[13];
    v39 = (v0[14] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v0[31] = v0[20];
    v0[32] = v39;
    v36(v37, v38);
    if (v87)
    {
      v40 = v0[10];
      v41 = *&v40[v0[26]];
      v42 = *&v40[v0[27]];
      v0[33] = v42;
      if (v41 < v42)
      {
        v43 = v0[25];
        v44 = v40;
        v45 = sub_1B99F3954();
        v46 = sub_1B99F40D4();
        v47 = os_log_type_enabled(v45, v46);
        v48 = v0[10];
        if (v47)
        {
          v49 = swift_slowAlloc();
          *v49 = 134218240;
          *(v49 + 4) = v41;
          *(v49 + 12) = 2048;
          *(v49 + 14) = v42;

          _os_log_impl(&dword_1B99A0000, v45, v46, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v49, 0x16u);
          MEMORY[0x1BFAE1C50](v49, -1, -1);
        }

        else
        {
        }

        v78 = swift_task_alloc();
        v0[34] = v78;
        *v78 = v0;
        v78[1] = sub_1B99DCF8C;
        v79 = v0[16];
        v80 = v0[9];
        v81 = v0[10];
        v82 = v0[3];
        v83 = v0[4];

        return sub_1B99DE784(v79, v82, v83);
      }
    }

    v50 = v0[31];
  }

  else
  {
    v50 = v0[20];
    v51 = v0[14] + 8;
    v36(v0[17], v0[13]);
  }

  v52 = v0[29];
  v53 = v0[15];
  v54 = v0[9];
  (v0[28])(v53, v0[18], v0[13]);
  if (v52(v53, 1, v54) == 1)
  {
    v55 = v0[25];
    (v0[30])(v0[15], v0[13]);
    v56 = sub_1B99F40C4();
    v57 = sub_1B99F3954();
    if (os_log_type_enabled(v57, v56))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1B99A0000, v57, v56, "All retry failed", v58, 2u);
      MEMORY[0x1BFAE1C50](v58, -1, -1);
    }

    v59 = v0[30];
    v60 = v0[20];
    v62 = v0[17];
    v61 = v0[18];
    v63 = v0[16];
    v64 = v0[13];
    v84 = v0[15];
    v85 = v0[12];

    swift_willThrow();
    v59(v61, v64);

    v65 = v0[1];
  }

  else
  {
    v66 = v0[20];
    v67 = v0[15];
    v68 = v0[12];
    v69 = v0[11];
    v70 = v0[9];
    v71 = v0[2];
    (v0[30])(v0[18], v0[13]);

    v72 = *(v69 + 32);
    v72(v68, v67, v70);
    v72(v71, v68, v70);
    v74 = v0[17];
    v73 = v0[18];
    v76 = v0[15];
    v75 = v0[16];
    v77 = v0[12];

    v65 = v0[1];
  }

  return v65();
}

uint64_t sub_1B99DC914()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1B99DD5D8;
  }

  else
  {
    v3 = sub_1B99DCA28;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99DCA28()
{
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1B99F3974();
  v0[25] = __swift_project_value_buffer(v2, qword_1ED99EC18);
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = *&v6[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v6[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v4, v5, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v7, 0xEu);
    MEMORY[0x1BFAE1C50](v7, -1, -1);
  }

  else
  {

    v4 = v0[10];
  }

  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[9];

  v14 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  v0[26] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[27] = v14;
  v15 = *(v11 + 16);
  v0[28] = v15;
  v15(v9, v8, v10);
  v16 = *(v12 + 48);
  v0[29] = v16;
  v17 = v16(v9, 1, v13);
  v18 = *(v11 + 8);
  v0[30] = v18;
  if (v17 == 1)
  {
    v19 = v0[17];
    v20 = v0[13];
    v21 = (v0[14] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v0[31] = v0[20];
    v0[32] = v21;
    v18(v19, v20);
    v22 = v0[10];
    v23 = *&v22[v0[26]];
    v24 = *&v22[v0[27]];
    v0[33] = v24;
    if (v23 < v24)
    {
      v25 = v0[25];
      v26 = v22;
      v27 = sub_1B99F3954();
      v28 = sub_1B99F40D4();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[10];
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = v23;
        *(v31 + 12) = 2048;
        *(v31 + 14) = v24;

        _os_log_impl(&dword_1B99A0000, v27, v28, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v31, 0x16u);
        MEMORY[0x1BFAE1C50](v31, -1, -1);
      }

      else
      {
      }

      v61 = swift_task_alloc();
      v0[34] = v61;
      *v61 = v0;
      v61[1] = sub_1B99DCF8C;
      v62 = v0[16];
      v63 = v0[9];
      v64 = v0[10];
      v65 = v0[3];
      v66 = v0[4];

      return sub_1B99DE784(v62, v65, v66);
    }

    v32 = v0[31];
  }

  else
  {
    v32 = v0[20];
    v33 = v0[14] + 8;
    v18(v0[17], v0[13]);
  }

  v34 = v0[29];
  v35 = v0[15];
  v36 = v0[9];
  (v0[28])(v35, v0[18], v0[13]);
  if (v34(v35, 1, v36) == 1)
  {
    v37 = v0[25];
    (v0[30])(v0[15], v0[13]);
    v38 = sub_1B99F40C4();
    v39 = sub_1B99F3954();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1B99A0000, v39, v38, "All retry failed", v40, 2u);
      MEMORY[0x1BFAE1C50](v40, -1, -1);
    }

    v41 = v0[30];
    v42 = v0[20];
    v44 = v0[17];
    v43 = v0[18];
    v45 = v0[16];
    v46 = v0[13];
    v67 = v0[15];
    v68 = v0[12];

    swift_willThrow();
    v41(v43, v46);

    v47 = v0[1];
  }

  else
  {
    v48 = v0[20];
    v49 = v0[15];
    v50 = v0[12];
    v51 = v0[11];
    v52 = v0[9];
    v53 = v0[2];
    (v0[30])(v0[18], v0[13]);

    v54 = *(v51 + 32);
    v54(v50, v49, v52);
    v54(v53, v50, v52);
    v56 = v0[17];
    v55 = v0[18];
    v58 = v0[15];
    v57 = v0[16];
    v59 = v0[12];

    v47 = v0[1];
  }

  return v47();
}

uint64_t sub_1B99DCF8C()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1B99DDB34;
  }

  else
  {
    v3 = sub_1B99DD0A0;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99DD0A0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  (*(v0 + 240))(v5, v7);
  v4(v6, 0, 1, v9);
  (*(v8 + 32))(v5, v6, v7);
  v11 = v10;
  v12 = sub_1B99F3954();
  v13 = sub_1B99F40D4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 264);
    v15 = *(v0 + 208);
    v16 = *(v0 + 80);
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = *&v16[v15];
    *(v17 + 12) = 2048;
    *(v17 + 14) = v14;

    _os_log_impl(&dword_1B99A0000, v12, v13, "Retry succeeded at index: %ld, maxRetry: %ld", v17, 0x16u);
    MEMORY[0x1BFAE1C50](v17, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 136);
  v20 = *(v0 + 72);
  v21 = *(v0 + 88) + 48;
  v22 = *(v0 + 112) + 16;
  (*(v0 + 224))(v19, *(v0 + 144), *(v0 + 104));
  if (v18(v19, 1, v20) == 1)
  {
    v23 = *(v0 + 240);
    v24 = *(v0 + 136);
    v25 = *(v0 + 104);
    *(v0 + 256) = (*(v0 + 112) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v24, v25);
    v26 = *(v0 + 80);
    v27 = *&v26[*(v0 + 208)];
    v28 = *&v26[*(v0 + 216)];
    *(v0 + 264) = v28;
    if (v27 < v28)
    {
      v29 = *(v0 + 200);
      v30 = v26;
      v31 = sub_1B99F3954();
      v32 = sub_1B99F40D4();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 80);
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 134218240;
        *(v35 + 4) = v27;
        *(v35 + 12) = 2048;
        *(v35 + 14) = v28;

        _os_log_impl(&dword_1B99A0000, v31, v32, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v35, 0x16u);
        MEMORY[0x1BFAE1C50](v35, -1, -1);
      }

      else
      {
      }

      v65 = swift_task_alloc();
      *(v0 + 272) = v65;
      *v65 = v0;
      v65[1] = sub_1B99DCF8C;
      v66 = *(v0 + 128);
      v67 = *(v0 + 72);
      v68 = *(v0 + 80);
      v69 = *(v0 + 24);
      v70 = *(v0 + 32);

      return sub_1B99DE784(v66, v69, v70);
    }

    v36 = *(v0 + 248);
  }

  else
  {
    v36 = *(v0 + 248);
    v37 = *(v0 + 112) + 8;
    (*(v0 + 240))(*(v0 + 136), *(v0 + 104));
  }

  v38 = *(v0 + 232);
  v39 = *(v0 + 120);
  v40 = *(v0 + 72);
  (*(v0 + 224))(v39, *(v0 + 144), *(v0 + 104));
  if (v38(v39, 1, v40) == 1)
  {
    v41 = *(v0 + 200);
    (*(v0 + 240))(*(v0 + 120), *(v0 + 104));
    v42 = sub_1B99F40C4();
    v43 = sub_1B99F3954();
    if (os_log_type_enabled(v43, v42))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1B99A0000, v43, v42, "All retry failed", v44, 2u);
      MEMORY[0x1BFAE1C50](v44, -1, -1);
    }

    v45 = *(v0 + 240);
    v46 = *(v0 + 160);
    v48 = *(v0 + 136);
    v47 = *(v0 + 144);
    v49 = *(v0 + 128);
    v50 = *(v0 + 104);
    v71 = *(v0 + 120);
    v72 = *(v0 + 96);

    swift_willThrow();
    v45(v47, v50);

    v51 = *(v0 + 8);
  }

  else
  {
    v52 = *(v0 + 160);
    v53 = *(v0 + 120);
    v54 = *(v0 + 96);
    v55 = *(v0 + 88);
    v56 = *(v0 + 72);
    v57 = *(v0 + 16);
    (*(v0 + 240))(*(v0 + 144), *(v0 + 104));

    v58 = *(v55 + 32);
    v58(v54, v53, v56);
    v58(v57, v54, v56);
    v60 = *(v0 + 136);
    v59 = *(v0 + 144);
    v62 = *(v0 + 120);
    v61 = *(v0 + 128);
    v63 = *(v0 + 96);

    v51 = *(v0 + 8);
  }

  return v51();
}

uint64_t sub_1B99DD5D8()
{
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1B99F3974();
  __swift_project_value_buffer(v2, qword_1ED99EC18);
  v3 = v1;
  v4 = sub_1B99F3954();
  v5 = sub_1B99F40D4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B99A0000, v4, v5, "errorHandler returned error: %@, retry will NOT continue.", v8, 0xCu);
    sub_1B99A18A4(v9, &qword_1EBBDD2A0, &qword_1B99F8738);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
    MEMORY[0x1BFAE1C50](v8, -1, -1);
  }

  else
  {
  }

  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v12 = v0[10];
  v0[25] = __swift_project_value_buffer(v2, qword_1ED99EC18);
  v13 = v12;
  v14 = sub_1B99F3954();
  v15 = sub_1B99F40D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[10];
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 8) = 1024;
    *(v17 + 10) = *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v14, v15, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v17, 0xEu);
    MEMORY[0x1BFAE1C50](v17, -1, -1);
  }

  else
  {

    v14 = v0[10];
  }

  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[11];
  v23 = v0[9];

  v24 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  v0[26] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[27] = v24;
  v25 = *(v21 + 16);
  v0[28] = v25;
  v25(v19, v18, v20);
  v26 = *(v22 + 48);
  v0[29] = v26;
  v27 = v26(v19, 1, v23);
  v28 = *(v21 + 8);
  v0[30] = v28;
  if (v27 == 1)
  {
    v29 = v0[17];
    v30 = v0[13];
    v31 = (v0[14] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v0[31] = v0[20];
    v0[32] = v31;
    v28(v29, v30);
    v32 = v0[31];
  }

  else
  {
    v32 = v0[20];
    v33 = v0[14] + 8;
    v28(v0[17], v0[13]);
  }

  v34 = v0[29];
  v35 = v0[15];
  v36 = v0[9];
  (v0[28])(v35, v0[18], v0[13]);
  if (v34(v35, 1, v36) == 1)
  {
    v37 = v0[25];
    (v0[30])(v0[15], v0[13]);
    v38 = sub_1B99F40C4();
    v39 = sub_1B99F3954();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1B99A0000, v39, v38, "All retry failed", v40, 2u);
      MEMORY[0x1BFAE1C50](v40, -1, -1);
    }

    v41 = v0[30];
    v42 = v0[20];
    v44 = v0[17];
    v43 = v0[18];
    v45 = v0[16];
    v46 = v0[13];
    v61 = v0[15];
    v62 = v0[12];

    swift_willThrow();
    v41(v43, v46);

    v47 = v0[1];
  }

  else
  {
    v48 = v0[20];
    v49 = v0[15];
    v50 = v0[12];
    v51 = v0[11];
    v52 = v0[9];
    v53 = v0[2];
    (v0[30])(v0[18], v0[13]);

    v54 = *(v51 + 32);
    v54(v50, v49, v52);
    v54(v53, v50, v52);
    v56 = v0[17];
    v55 = v0[18];
    v58 = v0[15];
    v57 = v0[16];
    v59 = v0[12];

    v47 = v0[1];
  }

  return v47();
}

uint64_t sub_1B99DDB34()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 80);
  v3 = sub_1B99F40C4();
  v4 = v2;
  v5 = sub_1B99F3954();
  if (os_log_type_enabled(v5, v3))
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 208);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *&v8[v7];
    *(v9 + 12) = 2048;
    *(v9 + 14) = v6;

    _os_log_impl(&dword_1B99A0000, v5, v3, "Error occurred during retry at index: %ld, maxRetry: %ld", v9, 0x16u);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 40);
  if (v10)
  {
    v11 = *(v0 + 48);
    v12 = v10(*(v0 + 280));
  }

  else
  {
    v12 = 1;
  }

  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 104);
  v18 = *(v0 + 72);
  v19 = *(v0 + 88) + 48;
  v20 = *(v0 + 112) + 16;

  v14(v16, v15, v17);
  v21 = v13(v16, 1, v18);
  v22 = *(v0 + 280);
  if (v21 == 1)
  {
    v23 = *(v0 + 240);
    v24 = *(v0 + 136);
    v25 = *(v0 + 104);
    v26 = (*(v0 + 112) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    *(v0 + 248) = v22;
    *(v0 + 256) = v26;
    v23(v24, v25);
    if (v12)
    {
      v27 = *(v0 + 80);
      v28 = *&v27[*(v0 + 208)];
      v29 = *&v27[*(v0 + 216)];
      *(v0 + 264) = v29;
      if (v28 < v29)
      {
        v30 = *(v0 + 200);
        v31 = v27;
        v32 = sub_1B99F3954();
        v33 = sub_1B99F40D4();
        v34 = os_log_type_enabled(v32, v33);
        v35 = *(v0 + 80);
        if (v34)
        {
          v36 = swift_slowAlloc();
          *v36 = 134218240;
          *(v36 + 4) = v28;
          *(v36 + 12) = 2048;
          *(v36 + 14) = v29;

          _os_log_impl(&dword_1B99A0000, v32, v33, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v36, 0x16u);
          MEMORY[0x1BFAE1C50](v36, -1, -1);
        }

        else
        {
        }

        v65 = swift_task_alloc();
        *(v0 + 272) = v65;
        *v65 = v0;
        v65[1] = sub_1B99DCF8C;
        v66 = *(v0 + 128);
        v67 = *(v0 + 72);
        v68 = *(v0 + 80);
        v69 = *(v0 + 24);
        v70 = *(v0 + 32);

        return sub_1B99DE784(v66, v69, v70);
      }
    }

    v22 = *(v0 + 248);
  }

  else
  {
    v37 = *(v0 + 112) + 8;
    (*(v0 + 240))(*(v0 + 136), *(v0 + 104));
  }

  v38 = *(v0 + 232);
  v39 = *(v0 + 120);
  v40 = *(v0 + 72);
  (*(v0 + 224))(v39, *(v0 + 144), *(v0 + 104));
  if (v38(v39, 1, v40) == 1)
  {
    v41 = *(v0 + 200);
    (*(v0 + 240))(*(v0 + 120), *(v0 + 104));
    v42 = sub_1B99F40C4();
    v43 = sub_1B99F3954();
    if (os_log_type_enabled(v43, v42))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1B99A0000, v43, v42, "All retry failed", v44, 2u);
      MEMORY[0x1BFAE1C50](v44, -1, -1);
    }

    v45 = *(v0 + 240);
    v46 = *(v0 + 160);
    v48 = *(v0 + 136);
    v47 = *(v0 + 144);
    v49 = *(v0 + 128);
    v50 = *(v0 + 104);
    v71 = *(v0 + 120);
    v72 = *(v0 + 96);

    swift_willThrow();
    v45(v47, v50);

    v51 = *(v0 + 8);
  }

  else
  {
    v52 = *(v0 + 160);
    v53 = *(v0 + 120);
    v54 = *(v0 + 96);
    v55 = *(v0 + 88);
    v56 = *(v0 + 72);
    v57 = *(v0 + 16);
    (*(v0 + 240))(*(v0 + 144), *(v0 + 104));

    v58 = *(v55 + 32);
    v58(v54, v53, v56);
    v58(v57, v54, v56);
    v60 = *(v0 + 136);
    v59 = *(v0 + 144);
    v62 = *(v0 + 120);
    v61 = *(v0 + 128);
    v63 = *(v0 + 96);

    v51 = *(v0 + 8);
  }

  return v51();
}

uint64_t sub_1B99DE050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99DE074);
}

uint64_t sub_1B99DE074()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR___AAFExponentialRetryScheduler_power);
  v3 = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[6] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v4 = pow(v2, *(v1 + v3));
  v5 = v4 * 1000000000.0;
  if (COERCE__INT64(fabs(v4 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < 1.84467441e19)
  {
    if (qword_1ED99EB40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  swift_once();
LABEL_5:
  v6 = sub_1B99F3974();
  __swift_project_value_buffer(v6, qword_1ED99EC18);
  v7 = sub_1B99F3954();
  v8 = sub_1B99F40D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v4;
    _os_log_impl(&dword_1B99A0000, v7, v8, "Scheduled after %f second(s)", v9, 0xCu);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  v10 = v0[3];

  v11 = (v10 + OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay);
  v12 = *(v10 + OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay + 24);
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(v13 + 8);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_1B99DE2F4;

  return v18(v5, v12, v13);
}

uint64_t sub_1B99DE2F4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1B99DE720;
  }

  else
  {
    v3 = sub_1B99DE408;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99DE408(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  v10 = *(v8 + 24);
  v11 = *(v10 + v9);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = swift_task_alloc();
    v14 = *(v8 + 32);
    *(v10 + v9) = v12;
    *(v8 + 72) = v13;
    *(v13 + 16) = v14;
    v15 = *(MEMORY[0x1E69E8920] + 4);
    v16 = swift_task_alloc();
    *(v8 + 80) = v16;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    *v16 = v8;
    v16[1] = sub_1B99DE534;
    a1 = *(v8 + 16);
    a6 = sub_1B99DF708;
    a5 = 0x80000001B99FABB0;
    a2 = 0;
    a3 = 0;
    a4 = 0xD00000000000001CLL;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B99DE534()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1B99DE6B4;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1B99DE650;
  }

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1B99DE650()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B99DE6B4()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B99DE720()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B99DE784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99DE7A8);
}

uint64_t sub_1B99DE7A8()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR___AAFExponentialRetryScheduler_power);
  v3 = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v0[6] = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  v4 = pow(v2, *(v1 + v3));
  v5 = v4 * 1000000000.0;
  if (COERCE__INT64(fabs(v4 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < 1.84467441e19)
  {
    if (qword_1ED99EB40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  swift_once();
LABEL_5:
  v6 = sub_1B99F3974();
  __swift_project_value_buffer(v6, qword_1ED99EC18);
  v7 = sub_1B99F3954();
  v8 = sub_1B99F40D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v4;
    _os_log_impl(&dword_1B99A0000, v7, v8, "Scheduled after %f second(s)", v9, 0xCu);
    MEMORY[0x1BFAE1C50](v9, -1, -1);
  }

  v10 = v0[5];

  v11 = (v10 + OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay);
  v12 = *(v10 + OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay + 24);
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(v13 + 8);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_1B99DEA28;

  return v18(v5, v12, v13);
}

uint64_t sub_1B99DEA28()
{
  v2 = *(*v1 + 56);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99DEB58);
  }
}

void sub_1B99DEB58()
{
  v3 = v0[5];
  v2 = v0[6];
  v4 = *(v3 + v2);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v0[3];
    *(v3 + v2) = v5;
    v11 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_1B99DEC64;
    v9 = v0[4];
    v10 = v0[2];

    v11(v10);
  }
}

uint64_t sub_1B99DEC64()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ExponentialRetryScheduler.schedule(task:shouldRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99DED80);
}

uint64_t sub_1B99DED80()
{
  v1 = v0[4];

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1B99DEC64;
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_1B99A2EE4(v7, v5, v3, 0, 0, v4, v8, v6);
}

uint64_t sub_1B99DEE44()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);

  sub_1B99A3EA8(v1);

  v4 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v4;
  v5 = *(v0 + 72);
  if (v5)
  {
    v6 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    v7 = *(v5 - 8);
    v8 = *(v7 + 64) + 15;
    v9 = swift_task_alloc();
    (*(v7 + 16))(v9, v6, v5);
    v10 = sub_1B99F46F4();
    (*(v7 + 8))(v9, v5);

    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 88);
  v11[2](v11, v10, 0);
  _Block_release(v11);
  swift_unknownObjectRelease();
  v12 = *(v0 + 8);

  return v12();
}

id ExponentialRetryScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExponentialRetryScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B99DF090(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *v8;
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_1B99A3FAC;

  return ExponentialRetryScheduler.schedule<A>(_:shouldRetry:willRetry:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B99DF188(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E86C8] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B99A3EB8;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B99DF220(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1B99DF280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v26 - v12;
  sub_1B99A183C(a3, v26 - v12, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v14 = sub_1B99F3EC4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B99A18A4(v13, &qword_1EBBDC4F0, &qword_1B99F5B20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B99F3EB4();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_1B99F3E44();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_1B99F3C64() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_1B99A18A4(a3, &qword_1EBBDC4F0, &qword_1B99F5B20);

    return v24;
  }

LABEL_8:
  sub_1B99A18A4(a3, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_1B99DF57C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1B99DF650(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B99A3EB8;

  return sub_1B99A1BCC(a1, v5);
}

uint64_t OptionalDependency.init(dependencyId:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  v9 = sub_1B99F41C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v21 - v17;
  v19 = *(*(a4 - 8) + 56);
  v19(a5, 1, 1, a4);
  v19(v18, 1, 1, a4);
  type metadata accessor for DependencyRegistry();
  if (a2)
  {
    static DependencyRegistry.locateService<A>(by:config:)(v22, a2, a3, a4, v15);
  }

  else
  {
    static DependencyRegistry.locateService<A>(by:config:)(v22, 0, a3, a4, v15);
  }

  (*(v10 + 8))(v18, v9);
  (*(v10 + 32))(v18, v15, v9);
  return (*(v10 + 40))(a5, v18, v9);
}

uint64_t OptionalDependency.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B99F41C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_1B99DF974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_1B99F41C4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = type metadata accessor for OptionalDependency();
  return OptionalDependency.wrappedValue.setter(v10, v12);
}

uint64_t OptionalDependency.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1B99F41C4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

void (*OptionalDependency.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = *(a2 + 16);
  v8 = sub_1B99F41C4();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_1B99DFBF8;
}

void sub_1B99DFBF8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    v9 = sub_1B99F41C4();
    (*(*(v9 - 8) + 40))(v8, v3, v9);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = *v2;
    v10 = v2[1];
    v12 = sub_1B99F41C4();
    (*(*(v12 - 8) + 40))(v11, v4, v12);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B99DFD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for OptionalDependency();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v6);
  return OptionalDependency.projectedValue.setter(v10, v6);
}

uint64_t OptionalDependency.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*OptionalDependency.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
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
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return sub_1B99C94E0;
}

uint64_t keypath_getTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a2 + a3 - 8);
  v6 = type metadata accessor for OptionalDependency();
  return a4(v6);
}

uint64_t sub_1B99E0050(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1B99F41C4();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B99E00C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1B99E0240(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
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
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t SyncMessageSender.__allocating_init<A, B, C>(encoder:decoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1B99E0B7C(a1, a2, a3, a4, a5, a6);
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v12;
}

uint64_t SyncMessageSender.init<A, B, C>(encoder:decoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1B99E0B7C(a1, a2, a3, a4, a5, a6);
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(*(a5 - 8) + 8))(a2, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v12;
}

uint64_t sub_1B99E06B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t SyncMessageSender.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B99E07C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v37 = a1;
  v29[1] = a4;
  v8 = *v4;
  v34 = v8;
  v9 = v8[11];
  v33 = v8[14];
  v30 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v36 = v29 - v13;
  v14 = v8[13];
  v15 = v8[10];
  v16 = swift_getAssociatedTypeWitness();
  v35 = *(v16 - 8);
  v17 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v29 - v19;
  v21 = v5 + v8[17];
  v22 = v38;
  result = (*(v14 + 16))(v37, a2, *(a3 + 16), v15, v14);
  if (!v22)
  {
    v38 = v16;
    v24 = v33;
    v25 = v5 + *(*v5 + 128);
    (*(v34[15] + 16))(v20, v34[12]);
    v37 = *(*v5 + 144);
    v26 = swift_getAssociatedTypeWitness();
    v27 = *(v24 + 16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27(v26, v36, v26, AssociatedConformanceWitness, v30, v24);
    (*(v31 + 8))(v36, v32);
    return (*(v35 + 8))(v20, v38);
  }

  return result;
}

uint64_t sub_1B99E0B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a3;
  v39 = a1;
  v40 = a2;
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v18, v24);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v33 = type metadata accessor for InternalSyncMessageSender();
  (*(v22 + 16))(v26, v39, a4);
  (*(v15 + 16))(v20, v40, a5);
  (*(v9 + 16))(v13, v42, a6);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_1B99D99E0(v26, v20, v13);
  v37 = v41;
  *(v41 + 40) = v33;
  *(v37 + 48) = &off_1F37B2ED0;
  *(v37 + 16) = v36;
  return v37;
}

void *BroadcastDispatcher.__allocating_init<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1B99E24B0(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void *BroadcastDispatcher.init<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B99E24B0(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_1B99E0F64(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1B99E1250(a1);
}

uint64_t sub_1B99E0FA0(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD3B8, &unk_1B99F89A0);
  return v5(a1, v6, v3, v4);
}

uint64_t sub_1B99E101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v6[5];
  v14 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v13);
  return (*(v14 + 16))(a1, a2, a3, a4, a5, a6, v13, v14);
}

uint64_t sub_1B99E10B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD3B8, &unk_1B99F89A0);
  return v9(a1, a2, v10, a3, v7, v8);
}

uint64_t sub_1B99E114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = v7[5];
  v16 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v15);
  return (*(v16 + 32))(a1, a2, a3, a4, a5, a6, a7, v15, v16);
}

uint64_t BroadcastDispatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B99E1250(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  *(v1 + v3) = sub_1B99F3DE4();
  v6 = *(*v1 + 112);
  swift_getFunctionTypeMetadata2();
  *(v1 + v6) = sub_1B99F3DE4();
  (*(*(v5 - 8) + 32))(v1 + *(*v1 + 96), a1, v5);
  return v1;
}

uint64_t sub_1B99E13A8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v13 = &v24 - v12;
  v29 = a2;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  v27 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 104);
  swift_beginAccess();
  v19 = *(v2 + v18);
  swift_getFunctionTypeMetadata1();

  if (!sub_1B99F3E14())
  {
  }

  v25 = (v14 + 16);
  v26 = (v8 + 8);
  v20 = v27;
  v21 = sub_1B99F3DF4();
  sub_1B99F3DD4();
  if (v21)
  {
    v30 = 1;
    v22 = *(v19 + 40);
    v31 = *(v19 + 32);
    (*v25)(v20, v28, v29);

    swift_dynamicCast();
    v31(v13);

    return (*v26)(v13, AssociatedTypeWitness);
  }

  else
  {
    result = sub_1B99F4274();
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99E16D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a2;
  v24 = a3;
  v9 = *v6;
  v10 = *(*v6 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v22 - v13;
  (*(v11 + 16))(&v22 - v13, v6 + *(v9 + 96), v10);
  v15 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v10;
  *(v17 + 3) = a4;
  *(v17 + 4) = *(v9 + 88);
  *(v17 + 5) = a5;
  *(v17 + 6) = v22;
  (*(v11 + 32))(&v17[v15], v14, v10);
  v18 = &v17[v16];
  v19 = v24;
  *v18 = v23;
  *(v18 + 1) = v19;
  v25 = sub_1B99E2874;
  v26 = v17;
  v20 = *(*v6 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  sub_1B99F3E24();

  sub_1B99F3E04();
  return swift_endAccess();
}

uint64_t sub_1B99E1904(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v13 + 16))(v14);
  if (!v6)
  {
    a3(v12);
    return (*(v9 + 8))(v12, a6);
  }

  return result;
}

uint64_t sub_1B99E1A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v33 = a1;
  v34 = a2;
  v6 = *v4;
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v32 = &v28 - v14;
  v35 = a3;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13, v17);
  v31 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 112);
  swift_beginAccess();
  v20 = *(v4 + v19);
  swift_getFunctionTypeMetadata2();

  if (!sub_1B99F3E14())
  {
  }

  v28 = v36 - 8;
  v29 = (v15 + 16);
  v30 = (v10 + 8);
  v21 = v32;
  v22 = sub_1B99F3DF4();
  sub_1B99F3DD4();
  if (v22)
  {
    v37 = 1;
    v23 = *(v20 + 40);
    v38 = *(v20 + 32);
    v24 = AssociatedTypeWitness;
    (*v29)(v31, v33, v35);

    swift_dynamicCast();
    v25 = v36;
    v39[3] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v34, v25);
    v38(v21, v39);

    __swift_destroy_boxed_opaque_existential_1(v39);
    return (*v30)(v21, v24);
  }

  else
  {
    result = sub_1B99F4274();
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99E1DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v28 = a2;
  v29 = a3;
  v10 = *v7;
  v11 = *(*v7 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v25 - v14;
  (*(v12 + 16))(&v25 - v14, v7 + *(v10 + 96), v11);
  v16 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v11;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  v20 = v26;
  v19 = v27;
  *(v18 + 5) = *(v10 + 88);
  *(v18 + 6) = v20;
  *(v18 + 7) = v19;
  (*(v12 + 32))(&v18[v16], v15, v11);
  v21 = &v18[v17];
  v22 = v29;
  *v21 = v28;
  *(v21 + 1) = v22;
  v30 = sub_1B99E2784;
  v31 = v18;
  v23 = *(*v7 + 112);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata2();
  sub_1B99F3E24();

  sub_1B99F3E04();
  return swift_endAccess();
}

uint64_t sub_1B99E1FF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a3;
  v45 = a6;
  v38 = a5;
  v39 = a4;
  v42 = a2;
  v13 = sub_1B99F41C4();
  v40 = *(v13 - 8);
  v14 = *(v40 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v41 = &v38 - v17;
  v43 = *(a8 - 8);
  v18 = *(v43 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a7 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20, v25);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v47;
  result = (*(a9 + 16))(a7, a1, a7, a10, v45, a9);
  if (!v28)
  {
    v47 = v22;
    v30 = v40;
    v31 = v42;
    sub_1B99B3944(v42, v46);
    v32 = v41;
    v33 = swift_dynamicCast();
    v34 = *(v43 + 56);
    if (v33)
    {
      v34(v32, 0, 1, a8);
      v35 = v43;
      v36 = v47;
      (*(v43 + 32))(v47, v32, a8);
      v39(v27, v36);
      (*(v35 + 8))(v36, a8);
    }

    else
    {
      v34(v32, 1, 1, a8);
      (*(v30 + 8))(v32, v13);
      sub_1B99E2820();
      swift_allocError();
      sub_1B99B3944(v31, v37);
      swift_willThrow();
    }

    return (*(v23 + 8))(v27, a7);
  }

  return result;
}

uint64_t sub_1B99E2324()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_1B99E23CC()
{
  v0 = sub_1B99E2324();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B99E24B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InternalBroadcastDispatcher();
  (*(v6 + 16))(v9, a1, a2);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1B99E1250(v9);
  v3[5] = v10;
  v3[6] = &off_1F37B2EA8;
  v3[2] = v13;
  return v3;
}

uint64_t sub_1B99E26C8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B99E2784(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(v2[2] - 8) + 80) + 64) & ~*(*(v2[2] - 8) + 80);
  v4 = v2 + ((*(*(v2[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v2[7];
  return sub_1B99E1FF4(a1, a2, v2 + v3, *v4, *(v4 + 1), v2[2], v2[3], v2[4], v2[5], v2[6]);
}

unint64_t sub_1B99E2820()
{
  result = qword_1EBBDD3C0;
  if (!qword_1EBBDD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD3C0);
  }

  return result;
}

uint64_t sub_1B99E2874(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = (*(*(v1[2] - 8) + 80) + 56) & ~*(*(v1[2] - 8) + 80);
  v5 = v1 + ((*(*(v1[2] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v1[6];
  return sub_1B99E1904(a1, v1 + v4, *v5, *(v5 + 1), v1[2], v1[3]);
}

uint64_t sub_1B99E2908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B99E2950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static NSBundle.current(dsoHandle:)()
{
  v0 = sub_1B99F37C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  if (dyld_image_path_containing_address())
  {
    sub_1B99F3CC4();
    sub_1B99F3784();
    sub_1B99F37A4();
    v10 = *(v1 + 8);
    v10(v6, v0);
    v11 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    v12 = sub_1B99F3794();
    v13 = [v11 initWithURL_];

    if (v13)
    {
      v10(v9, v0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t dispatch thunk of AsyncMessageTransport.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B99A3EB8;

  return v13(a1, a2, a3, a4);
}

id NSSecureCodingEnvelope.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1B99E3A24(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v5;
}

id NSSecureCodingEnvelope.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1B99E3A24(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1B99E2E00(void *a1, uint64_t a2)
{
  v27 = a1;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v26 - v8;
  v10 = type metadata accessor for TypedCodingEnvelope();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v26 - v14;
  v16 = sub_1B99F3614();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B99F3604();
  (*(v6 + 16))(v9, &v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x68)], v5);
  TypedCodingEnvelope.init(value:)(v9, v5, v15);
  v28 = *((v4 & v3) + 0x60);
  swift_getWitnessTable();
  v19 = sub_1B99F35F4();
  v20 = v15;
  v22 = v21;
  (*(v11 + 8))(v20, v10);

  v23 = sub_1B99F37E4();
  v24 = sub_1B99F3C04();
  [v27 encodeObject:v23 forKey:v24];

  return sub_1B99A92F0(v19, v22);
}

void sub_1B99E30D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1B99E2E00(v4, v5);
}

id NSSecureCodingEnvelope.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*MEMORY[0x1E69E7D40] & *v1);
  v6 = v5[10];
  v7 = type metadata accessor for TypedCodingEnvelope();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - v10;
  sub_1B99E3B04();
  v12 = sub_1B99F4174();
  if (v12 && (v29 = xmmword_1B99F8BA0, v13 = v12, sub_1B99F3804(), v13, v14 = *(&v29 + 1), *(&v29 + 1) >> 60 != 15))
  {
    v15 = v29;
    v16 = sub_1B99F35E4();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1B99F35D4();
    v28 = v5[11];
    swift_getWitnessTable();
    sub_1B99F35C4();
    sub_1B99A92DC(v15, v14);

    (*(*(v6 - 8) + 32))(&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x68)], v11, v6);
    v24 = v5[12];
    v25 = type metadata accessor for NSSecureCodingEnvelope();
    v27.receiver = v2;
    v27.super_class = v25;
    v26 = objc_msgSendSuper2(&v27, sel_init);

    return v26;
  }

  else
  {

    v19 = v5[11];
    v20 = v5[12];
    type metadata accessor for NSSecureCodingEnvelope();
    v21 = *((*v4 & *v2) + 0x30);
    v22 = *((*v4 & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1B99E348C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  type metadata accessor for NSSecureCodingEnvelope();
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD3C8, &qword_1B99F8BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1B99A18A4(v15, &unk_1EBBDD3D0, qword_1B99F8BB8);
LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  sub_1B99A1904(v15, v17);
  sub_1B99D5A10(a1, v11);
  if (!v11[3])
  {
    sub_1B99A18A4(v11, &qword_1EBBDC658, &qword_1B99F5F40);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    goto LABEL_9;
  }

  if (!*(&v13 + 1))
  {
LABEL_9:
    sub_1B99A18A4(&v12, &unk_1EBBDD3D0, qword_1B99F8BB8);
    __swift_destroy_boxed_opaque_existential_1(v17);
    goto LABEL_10;
  }

  sub_1B99A1904(&v12, v15);
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = (*(v8 + 8))(v15, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v9 & 1;
}

uint64_t sub_1B99E3678(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1B99F4214();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1B99E348C(v8);

  sub_1B99A18A4(v8, &qword_1EBBDC658, &qword_1B99F5F40);
  return v6 & 1;
}

id NSSecureCodingEnvelope.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void NSSecureCodingEnvelope.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  sub_1B99E3B68();
}

void sub_1B99E3784(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  sub_1B99E3B68();
}

id NSSecureCodingEnvelope.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NSSecureCodingEnvelope();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1B99E38C0(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  sub_1B99B6424(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD3C8, &qword_1B99F8BB0);
  v5 = *((v4 & v2) + 0x50);
  v6 = *((v4 & v2) + 0x58);
  v7 = *((v4 & v2) + 0x60);
  type metadata accessor for NSSecureCodingEnvelope();
  if (swift_dynamicCast())
  {
    v8 = *((*v3 & *v1) + 0x68);
    v9 = *((*v12 & *v3) + 0x68);
    v10 = sub_1B99F3BF4();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1B99E39F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  return sub_1B99E38C0(a1) & 1;
}

id sub_1B99E3A24(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v5 = *((v3 & v2) + 0x60);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NSSecureCodingEnvelope();
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t sub_1B99E3B04()
{
  result = qword_1EBBDD140;
  if (!qword_1EBBDD140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBDD140);
  }

  return result;
}

uint64_t sub_1B99E3B98(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B99E3D44(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v22 = (v27 + 16);
  swift_beginAccess();
  v4 = *(v2 + 32);
  v28 = *(v2 + 24);
  swift_beginAccess();
  v26 = *(v2 + 40);
  v29 = *(v2 + 48);
  v5 = *(v2 + 56);
  swift_beginAccess();
  v7 = *(v2 + 64);
  v6 = *(v2 + 72);
  swift_beginAccess();
  v8 = *(v2 + 16);
  v9 = type metadata accessor for DictionaryEncoderImplementation();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v8;
  *&v11 = v28;
  *(&v11 + 1) = v4;
  *&v12 = v26;
  *(&v12 + 1) = v29;
  *(v10 + 32) = v11;
  *(v10 + 48) = v12;
  *(v10 + 64) = v5;
  *(v10 + 72) = v7;
  *(v10 + 80) = v6;
  *(v10 + 88) = sub_1B99E426C;
  *(v10 + 96) = v3;
  *(v10 + 104) = sub_1B99E42C4;
  *(v10 + 112) = v3;
  *(v10 + 120) = sub_1B99E4368;
  *(v10 + 128) = v27;
  v31 = v9;
  v13 = v26;
  v32 = sub_1B99E4394();
  v30[0] = v10;
  swift_retain_n();
  sub_1B99CA6A4(v28);
  sub_1B99CA884(v26, v29, v5);
  sub_1B99CAA28(v7);

  sub_1B99CA6A4(v28);
  sub_1B99CA884(v26, v29, v5);
  sub_1B99CAA28(v7);

  sub_1B99F3B54();
  if (v23)
  {
    sub_1B99A3EA8(v28);
    sub_1B99CA900(v26, v29, v5);
    sub_1B99CAA8C(v7);

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    swift_beginAccess();
    v14 = *v22;
    if (*v22)
    {
      v15 = *v22;
      swift_willThrow();
      v16 = v14;

      sub_1B99A3EA8(v28);
      sub_1B99CA900(v26, v29, v5);
      sub_1B99CAA8C(v7);

      return v13;
    }

    swift_beginAccess();
    sub_1B99A183C(v3 + 16, v30, &qword_1EBBDC658, &qword_1B99F5F40);
    if (v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE38, &qword_1B99F8D80);
      if (swift_dynamicCast())
      {

        sub_1B99A3EA8(v28);
        sub_1B99CA900(v26, v29, v5);
        sub_1B99CAA8C(v7);
        v13 = v33;

        return v13;
      }
    }

    else
    {
      sub_1B99AC2C8(v30);
    }

    v13 = sub_1B99F42C4();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950) + 48);
    v19[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
    sub_1B99F4294();
    (*(*(v13 - 8) + 104))(v19, *MEMORY[0x1E69E6B30], v13);
    swift_willThrow();

    sub_1B99A3EA8(v28);
    sub_1B99CA900(v26, v29, v5);
    sub_1B99CAA8C(v7);
  }

  return v13;
}

id sub_1B99E4314(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

unint64_t sub_1B99E4394()
{
  result = qword_1EBBDD540;
  if (!qword_1EBBDD540)
  {
    type metadata accessor for DictionaryEncoderImplementation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD540);
  }

  return result;
}

uint64_t DictionaryEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1B99C1E80(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t DictionaryEncoder.init()()
{
  *(v0 + 16) = sub_1B99C1E80(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t DictionaryEncoder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  sub_1B99A3EA8(*(v0 + 24));
  sub_1B99CA900(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 72);
  sub_1B99CAA8C(*(v0 + 64));
  return v0;
}

uint64_t DictionaryEncoder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  sub_1B99A3EA8(*(v0 + 24));
  sub_1B99CA900(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 72);
  sub_1B99CAA8C(*(v0 + 64));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B99E4518()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v3 = v0[3];
  v18 = v2;
  v19 = v0[2];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v1[9];
  v9 = v1[10];
  v10 = *(v1 + 64);
  *&v21 = v5;
  *(&v21 + 1) = v4;
  *&v22 = v7;
  *(&v22 + 1) = v6;
  LOBYTE(v23) = v10;
  *(&v23 + 1) = v8;
  *&v24 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v2;
  v12 = v1[15];
  v13 = v1[16];
  *&v29 = sub_1B99EC5E0;
  *(&v29 + 1) = v11;
  v30 = sub_1B99EC60C;
  v31 = v1;
  v32 = v12;
  v33 = v13;
  swift_retain_n();

  sub_1B99CA6A4(v5);
  sub_1B99CA884(v7, v6, v10);
  sub_1B99CAA28(v8);
  v14 = v18;

  sub_1B99E49D8(v19, v3, &v21, &v29, v34);
  v26 = v34[5];
  v27 = v34[6];
  v21 = v34[0];
  v22 = v34[1];
  v23 = v34[2];
  v28 = v35;
  v24 = v34[3];
  v25 = v34[4];
  v15 = _s18AAAFoundationSwift14KeyedContainerVMa_0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v20, v34, v15);
  swift_getWitnessTable();
  sub_1B99F44D4();

  return (*(v16 + 8))(v34, v15);
}

uint64_t sub_1B99E4758(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 96);
  (*(a2 + 88))(v19);
  if (!v19[3])
  {
    goto LABEL_5;
  }

  sub_1B99A183C(v19, v17, &qword_1EBBDC658, &qword_1B99F5F40);
  if (!v18)
  {
    sub_1B99AC2C8(v17);
LABEL_7:
    v8 = sub_1B99F42C4();
    swift_allocError();
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950) + 48);
    v10[3] = sub_1B99BE9A8(0, qword_1EBBDD5E8, 0x1E695DF90);
    *v10 = v3;
    v12 = *(a2 + 16);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    v13 = v3;

    sub_1B99F4264();
    MEMORY[0x1BFAE0580](0xD00000000000003CLL, 0x80000001B99FAE30);
    sub_1B99A183C(v19, v17, &qword_1EBBDC658, &qword_1B99F5F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    v14 = sub_1B99F3C44();
    MEMORY[0x1BFAE0580](v14);

    sub_1B99F4294();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B30], v8);
    swift_willThrow();
    return sub_1B99AC2C8(v19);
  }

  sub_1B99BE9A8(0, qword_1EBBDD5E8, 0x1E695DF90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v16 != v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = *(a2 + 104);
  v5 = *(a2 + 112);
  v18 = sub_1B99BE9A8(0, qword_1EBBDD5E8, 0x1E695DF90);
  v17[0] = v3;
  v7 = v3;
  v6(v17);
  sub_1B99AC2C8(v17);
  return sub_1B99AC2C8(v19);
}

uint64_t sub_1B99E49D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  *(a5 + 48) = v5;
  *(a5 + 56) = *(a3 + 40);
  v8 = *a4;
  v7 = *(a4 + 1);
  v10 = *(a4 + 2);
  v9 = *(a4 + 3);
  v12 = *(a4 + 4);
  v11 = *(a4 + 5);
  v13 = *a4;
  v14 = a4[1];
  *(a5 + 104) = a4[2];
  *(a5 + 88) = v14;
  *(a5 + 72) = v13;

  v8(&v19, v15);
  v16 = v19;
  v18 = v19;
  v10(&v18);
}

void sub_1B99E4B1C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v4 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = *(v1 + 32);
  v17 = *(v1 + 40);
  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v9 = *(v1 + 72);
  v8 = *(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  v11 = v2[16];
  v24 = v2[15];
  v20 = v2[12];
  v21 = v2[11];
  swift_retain_n();
  v12 = v3;
  swift_retain_n();
  v23 = v12;

  sub_1B99CA6A4(v19);
  v22 = v6;
  sub_1B99CA884(v6, v5, v7);
  v25 = v8;
  v26 = v9;
  sub_1B99CAA28(v9);

  v21(v29, v13);
  if (!v29[3])
  {
    sub_1B99AC2C8(v29);
    goto LABEL_5;
  }

  sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v15 = v23;
    v14 = v23;
    goto LABEL_6;
  }

  v14 = v28;
  v15 = v23;
LABEL_6:
  v29[0] = v14;
  sub_1B99E4EBC(v29, v2);

  a1[3] = &_s18AAAFoundationSwift16UnkeyedContainerVN_0;
  a1[4] = sub_1B99EC54C();
  v16 = swift_allocObject();
  *a1 = v16;

  *(v16 + 16) = v4;
  *(v16 + 24) = v18;
  *(v16 + 32) = v19;
  *(v16 + 40) = v17;
  *(v16 + 48) = v22;
  *(v16 + 56) = v5;
  *(v16 + 64) = v7;
  *(v16 + 72) = v26;
  *(v16 + 80) = v25;
  *(v16 + 88) = sub_1B99EC504;
  *(v16 + 96) = v10;
  *(v16 + 104) = sub_1B99EC530;
  *(v16 + 112) = v2;
  *(v16 + 120) = v24;
  *(v16 + 128) = v11;
}

uint64_t sub_1B99E4DF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v8 = *(a1 + 96);
  (*(a1 + 88))(v12);
  if (v12[3])
  {
    sub_1B99BE9A8(0, a3, a4);
    result = swift_dynamicCast();
    if (result)
    {
      *a5 = v11;
      return result;
    }
  }

  else
  {
    sub_1B99AC2C8(v12);
  }

  *a5 = a2;

  return a2;
}

uint64_t sub_1B99E4EBC(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 96);
  (*(a2 + 88))(v19);
  if (!v19[3])
  {
    goto LABEL_5;
  }

  sub_1B99A183C(v19, v17, &qword_1EBBDC658, &qword_1B99F5F40);
  if (!v18)
  {
    sub_1B99AC2C8(v17);
LABEL_7:
    v8 = sub_1B99F42C4();
    swift_allocError();
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950) + 48);
    v10[3] = sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
    *v10 = v3;
    v12 = *(a2 + 16);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    v13 = v3;

    sub_1B99F4264();
    MEMORY[0x1BFAE0580](0xD000000000000037, 0x80000001B99FADF0);
    sub_1B99A183C(v19, v17, &qword_1EBBDC658, &qword_1B99F5F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    v14 = sub_1B99F3C44();
    MEMORY[0x1BFAE0580](v14);

    sub_1B99F4294();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B30], v8);
    swift_willThrow();
    return sub_1B99AC2C8(v19);
  }

  sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v16 != v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = *(a2 + 104);
  v5 = *(a2 + 112);
  v18 = sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
  v17[0] = v3;
  v7 = v3;
  v6(v17);
  sub_1B99AC2C8(v17);
  return sub_1B99AC2C8(v19);
}

uint64_t sub_1B99E513C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v2[9];
  v15 = v2[15];
  v16 = v2[10];
  v14 = v2[16];
  a1[3] = &_s18AAAFoundationSwift20SingleValueContainerVN_0;
  v11 = *(v2 + 64);
  a1[4] = sub_1B99EC470();
  v12 = swift_allocObject();
  *a1 = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *(v12 + 48) = v9;
  *(v12 + 56) = v8;
  *(v12 + 64) = v11;
  *(v12 + 72) = v10;
  *(v12 + 80) = v16;
  *(v12 + 88) = sub_1B99EC42C;
  *(v12 + 96) = v2;
  *(v12 + 104) = sub_1B99EC454;
  *(v12 + 112) = v2;
  *(v12 + 120) = v15;
  *(v12 + 128) = v14;
  swift_retain_n();

  sub_1B99CA6A4(v6);
  sub_1B99CA884(v9, v8, v11);
  sub_1B99CAA28(v10);
}

uint64_t sub_1B99E5274(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  (*(a2 + 88))(v19);
  sub_1B99A183C(v19, v17, &qword_1EBBDC658, &qword_1B99F5F40);
  if (v18)
  {
    sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
    if (swift_dynamicCast())
    {
      v5 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B99AC2C8(v17);
  }

  v5 = 0;
LABEL_6:
  sub_1B99A183C(a1, v17, &qword_1EBBDC658, &qword_1B99F5F40);
  if (!v18)
  {
    sub_1B99AC2C8(v17);
LABEL_12:
    v6 = 0;
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v6 = v16;
  if (!v5)
  {
LABEL_9:
    if (!v6)
    {
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
LABEL_16:
    v7 = 0;
    if (v20)
    {
      goto LABEL_17;
    }

LABEL_19:
    v14 = *(a2 + 112);
    (*(a2 + 104))(a1);
    return sub_1B99AC2C8(v19);
  }

LABEL_13:
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  v7 = v5 == v6;
  if (!v20)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v7)
  {
    goto LABEL_19;
  }

  v8 = sub_1B99F42C4();
  swift_allocError();
  v10 = v9;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950) + 48);
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v11 = swift_allocObject();
  *v10 = v11;
  sub_1B99A183C(a1, v11 + 16, &qword_1EBBDC658, &qword_1B99F5F40);
  v12 = *(a2 + 16);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;

  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0xD000000000000037, 0x80000001B99FADF0);
  sub_1B99A183C(v19, v17, &qword_1EBBDC658, &qword_1B99F5F40);
  v13 = sub_1B99F3C44();
  MEMORY[0x1BFAE0580](v13);

  sub_1B99F4294();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B30], v8);
  swift_willThrow();
  return sub_1B99AC2C8(v19);
}

uint64_t sub_1B99E5594()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  sub_1B99A3EA8(*(v0 + 32));
  sub_1B99CA900(v4, v5, v8);
  sub_1B99CAA8C(v6);
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  v11 = *(v0 + 128);

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

void (*sub_1B99E56A8(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = v2[4];
  v9 = v2[6];
  v29 = v2[5];
  v30 = v9;
  v10 = v2[1];
  v24 = *v2;
  v11 = v2[2];
  v12 = v2[3];
  v25 = v10;
  v26 = v11;
  v31 = *(v2 + 14);
  v27 = v12;
  v28 = v8;
  (*(v5 + 16))(v7);
  v13 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = v29;
  v16 = v30;
  v17 = v27;
  *(v14 + 96) = v28;
  *(v14 + 112) = v15;
  *(v14 + 128) = v16;
  v18 = v25;
  v19 = v26;
  *(v14 + 32) = v24;
  *(v14 + 48) = v18;
  v20 = *(a2 + 24);
  *(v14 + 16) = v4;
  *(v14 + 24) = v20;
  *(v14 + 144) = v31;
  *(v14 + 64) = v19;
  *(v14 + 80) = v17;
  (*(v5 + 32))(v14 + v13, v7, v4);
  (*(*(a2 - 8) + 16))(v23, &v24, a2);
  return sub_1B99ECB84;
}

void sub_1B99E5860(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a2 + 9);
  v7 = *(a2 + 10);
  v8 = *(a2 + 11);
  v33 = *(a2 + 12);
  v6(&v25);
  v9 = v25;
  v10 = a2[5];
  v29 = a2[4];
  v30 = v10;
  v31 = a2[6];
  v32 = *(a2 + 14);
  v11 = a2[1];
  v25 = *a2;
  v26 = v11;
  v12 = a2[3];
  v27 = a2[2];
  v28 = v12;
  v13 = _s18AAAFoundationSwift14KeyedContainerVMa_0();
  v14 = sub_1B99CB88C(a3, v13);
  v16 = v15;
  sub_1B99A183C(a1, &v25, &qword_1EBBDC658, &qword_1B99F5F40);
  v17 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    v18 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    v24[1] = v24;
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18, v18);
    v22 = v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_1B99F46F4();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v23 = 0;
  }

  *&v25 = v14;
  *(&v25 + 1) = v16;
  [v9 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v25 = v9;
  v8(&v25);
}

uint64_t sub_1B99E5AA0(uint64_t a1, uint64_t a2)
{
  v4 = v2[5];
  v5 = v2[3];
  v27 = v2[4];
  v28 = v4;
  v6 = v2[5];
  v29 = v2[6];
  v7 = v2[1];
  v24[0] = *v2;
  v24[1] = v7;
  v8 = v2[3];
  v10 = *v2;
  v9 = v2[1];
  v25 = v2[2];
  v26 = v8;
  v11 = v2[6];
  v21 = v6;
  v22 = v11;
  v16 = v10;
  v17 = v9;
  v18 = v25;
  v30 = *(v2 + 14);
  v23 = *(v2 + 14);
  v19 = v5;
  v20 = v27;
  v12 = sub_1B99E56A8(a1, a2);
  v31[4] = v27;
  v31[5] = v21;
  v31[6] = v22;
  v31[0] = v16;
  v31[1] = v17;
  v32 = v23;
  v31[2] = v25;
  v31[3] = v19;
  v13 = *(a2 - 8);
  (*(v13 + 16))(v15, v24, a2);
  (*(v13 + 8))(v31, a2);
  v17 = 0u;
  v16 = 0u;
  v12(&v16);
  sub_1B99AC2C8(&v16);
}

uint64_t sub_1B99E5C04(char a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[5];
  v7 = v3[3];
  v29 = v3[4];
  v30 = v6;
  v8 = v3[5];
  v31 = v3[6];
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v27 = v3[2];
  v28 = v10;
  v13 = v3[6];
  v23 = v8;
  v24 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v27;
  v32 = *(v3 + 14);
  v25 = *(v3 + 14);
  v21 = v7;
  v22 = v29;
  v14 = sub_1B99E56A8(a2, a3);
  v33[4] = v29;
  v33[5] = v23;
  v33[6] = v24;
  v33[0] = v18;
  v33[1] = v19;
  v34 = v25;
  v33[2] = v27;
  v33[3] = v21;
  v15 = *(a3 - 8);
  (*(v15 + 16))(v17, v26, a3);
  (*(v15 + 8))(v33, a3);
  *(&v19 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v18) = a1;
  v14(&v18);

  return sub_1B99AC2C8(&v18);
}

uint64_t sub_1B99E5D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a3, a4);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a4 - 8);
  (*(v17 + 16))(v19, v28, a4);
  (*(v17 + 8))(v35, a4);
  *(&v21 + 1) = MEMORY[0x1E69E6158];
  *&v20 = a1;
  *(&v20 + 1) = a2;

  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E5EF8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = v3[5];
  v7 = v3[3];
  v29 = v3[4];
  v30 = v6;
  v8 = v3[5];
  v31 = v3[6];
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v27 = v3[2];
  v28 = v10;
  v13 = v3[6];
  v23 = v8;
  v24 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v27;
  v32 = *(v3 + 14);
  v25 = *(v3 + 14);
  v21 = v7;
  v22 = v29;
  v14 = sub_1B99E56A8(a1, a2);
  v33[4] = v29;
  v33[5] = v23;
  v33[6] = v24;
  v33[0] = v18;
  v33[1] = v19;
  v34 = v25;
  v33[2] = v27;
  v33[3] = v21;
  v15 = *(a2 - 8);
  (*(v15 + 16))(v17, v26, a2);
  (*(v15 + 8))(v33, a2);
  *(&v19 + 1) = MEMORY[0x1E69E63B0];
  *&v18 = a3;
  v14(&v18);

  return sub_1B99AC2C8(&v18);
}

uint64_t sub_1B99E6064(uint64_t a1, uint64_t a2, float a3)
{
  v6 = v3[5];
  v7 = v3[3];
  v29 = v3[4];
  v30 = v6;
  v8 = v3[5];
  v31 = v3[6];
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v27 = v3[2];
  v28 = v10;
  v13 = v3[6];
  v23 = v8;
  v24 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v27;
  v32 = *(v3 + 14);
  v25 = *(v3 + 14);
  v21 = v7;
  v22 = v29;
  v14 = sub_1B99E56A8(a1, a2);
  v33[4] = v29;
  v33[5] = v23;
  v33[6] = v24;
  v33[0] = v18;
  v33[1] = v19;
  v34 = v25;
  v33[2] = v27;
  v33[3] = v21;
  v15 = *(a2 - 8);
  (*(v15 + 16))(v17, v26, a2);
  (*(v15 + 8))(v33, a2);
  *(&v19 + 1) = MEMORY[0x1E69E6448];
  *&v18 = a3;
  v14(&v18);

  return sub_1B99AC2C8(&v18);
}

uint64_t sub_1B99E61D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a2, a3);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v19, v28, a3);
  (*(v17 + 8))(v35, a3);
  *(&v21 + 1) = a4;
  LOBYTE(v20) = a1;
  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E6340(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a2, a3);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v19, v28, a3);
  (*(v17 + 8))(v35, a3);
  *(&v21 + 1) = a4;
  LOWORD(v20) = a1;
  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E64B0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a2, a3);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v19, v28, a3);
  (*(v17 + 8))(v35, a3);
  *(&v21 + 1) = a4;
  LODWORD(v20) = a1;
  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E6620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[5];
  v9 = v4[3];
  v31 = v4[4];
  v32 = v8;
  v10 = v4[5];
  v33 = v4[6];
  v11 = v4[1];
  v28[0] = *v4;
  v28[1] = v11;
  v12 = v4[3];
  v14 = *v4;
  v13 = v4[1];
  v29 = v4[2];
  v30 = v12;
  v15 = v4[6];
  v25 = v10;
  v26 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v29;
  v34 = *(v4 + 14);
  v27 = *(v4 + 14);
  v23 = v9;
  v24 = v31;
  v16 = sub_1B99E56A8(a2, a3);
  v35[4] = v31;
  v35[5] = v25;
  v35[6] = v26;
  v35[0] = v20;
  v35[1] = v21;
  v36 = v27;
  v35[2] = v29;
  v35[3] = v23;
  v17 = *(a3 - 8);
  (*(v17 + 16))(v19, v28, a3);
  (*(v17 + 8))(v35, a3);
  *(&v21 + 1) = a4;
  *&v20 = a1;
  v16(&v20);

  return sub_1B99AC2C8(&v20);
}

uint64_t sub_1B99E6790(uint64_t a1, void (*a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v88 = a2;
  v7 = *(v5 + 80);
  v8 = *(v5 + 48);
  v73 = *(v5 + 64);
  v74 = v7;
  v9 = *(v5 + 80);
  v75 = *(v5 + 96);
  v10 = *(v5 + 16);
  v70[0] = *v5;
  v70[1] = v10;
  v11 = *(v5 + 48);
  v13 = *v5;
  v12 = *(v5 + 16);
  v71 = *(v5 + 32);
  v72 = v11;
  v66 = v73;
  v67 = v9;
  v68 = *(v5 + 96);
  v62 = v13;
  v63 = v12;
  v76 = *(v5 + 112);
  v14 = v76;
  v52 = *&v70[0];
  v15 = *(&v73 + 1);
  v69 = *(v5 + 112);
  v64 = v71;
  v65 = v8;
  v16 = *(a3 - 8);
  v36 = v74;
  v50 = v75;
  v45 = *(v16 + 16);
  v46 = *(&v70[0] + 1);
  v45(&v54, v70);

  v18 = sub_1B99CB88C(v88, a3);
  v38 = v19;
  v77[4] = v66;
  v77[5] = v67;
  v77[6] = v68;
  v78 = v69;
  v77[0] = v62;
  v77[1] = v63;
  v77[2] = v64;
  v77[3] = v65;
  v44 = *(v16 + 8);
  v44(v77, a3);
  v51 = *(v6 + 16);
  v20 = *(v6 + 32);
  v40 = *(v6 + 24);
  v41 = *(v6 + 40);
  v42 = *(v6 + 64);
  v43 = *(v6 + 56);
  v21 = *(v6 + 48);
  v22 = swift_allocObject();
  *(v22 + 24) = v36;
  *(v22 + 40) = v50;
  v23 = *(v6 + 80);
  v25 = *(v6 + 48);
  v82 = *(v6 + 64);
  v24 = v82;
  v83 = v23;
  v26 = *(v6 + 80);
  v84 = *(v6 + 96);
  v27 = *(v6 + 16);
  v79[0] = *v6;
  v79[1] = v27;
  v28 = *(v6 + 48);
  v30 = *v6;
  v29 = *(v6 + 16);
  v80 = *(v6 + 32);
  v81 = v28;
  v31 = *(v6 + 96);
  v59 = v26;
  v60 = v31;
  v54 = v30;
  v55 = v29;
  v56 = v80;
  v37 = v22;
  *(v22 + 16) = v15;
  *(v22 + 56) = v14;
  *(v22 + 64) = v18;
  *(v22 + 72) = v38;
  v85 = *(v6 + 112);
  *&v50 = *(&v84 + 1);
  v32 = v85;
  v61 = *(v6 + 112);
  v57 = v25;
  v58 = v24;
  v88 = sub_1B99E56A8(v88, a3);
  v39 = v33;
  v86[4] = v58;
  v86[5] = v59;
  v86[6] = v60;
  v86[0] = v54;
  v86[1] = v55;
  v87 = v61;
  v86[2] = v56;
  v86[3] = v57;

  sub_1B99CA6A4(v51);
  sub_1B99CA884(v20, v41, v21);
  sub_1B99CAA28(v43);
  (v45)(v53, v79, a3);

  v44(v86, a3);
  v34 = swift_allocObject();
  *(v34 + 16) = v88;
  *(v34 + 24) = v39;
  v62 = __PAIR128__(v46, v52);
  *&v63 = v51;
  *(&v63 + 1) = v40;
  *&v64 = v20;
  *(&v64 + 1) = v41;
  LOBYTE(v65) = v21;
  *(&v65 + 1) = v43;
  *&v66 = v42;
  *(&v66 + 1) = sub_1B99ECC24;
  *&v67 = v37;
  *(&v67 + 1) = sub_1B99ECB5C;
  *&v68 = v34;
  *(&v68 + 1) = v50;
  v69 = v32;
  sub_1B99E6B5C(a1, a4, a5);
  v59 = v67;
  v60 = v68;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v61 = v69;
  v57 = v65;
  v58 = v66;
  return sub_1B99EC9BC(&v54);
}

uint64_t sub_1B99E6B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = a3;
  v67 = sub_1B99F38A4();
  v63 = *(v67 - 8);
  v7 = *(v63 + 64);
  v9 = MEMORY[0x1EEE9AC00](v67, v8);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v66 = &v62 - v12;
  v13 = sub_1B99F37C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v62 - v22;
  v24 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21, v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v28;
  v29 = *(v28 + 16);
  v64 = a1;
  v29(v27, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v14 + 32))(v19, v23, v13);
    v30 = sub_1B99F3774();
    v31 = *(v4 + 88);
    v32 = *(v4 + 96);
    v71 = MEMORY[0x1E69E6158];
    v69 = v30;
    v70 = v33;
    v31(&v69);
    (*(v14 + 8))(v19, v13);
    sub_1B99AC2C8(&v69);
  }

  else if (swift_dynamicCast())
  {
    v34 = v69;
    v35 = v70;
    sub_1B99EB174(v69, v70);
    sub_1B99A92F0(v34, v35);
  }

  else
  {
    v36 = v66;
    v37 = v67;
    if (swift_dynamicCast())
    {
      v39 = v62;
      v38 = v63;
      (*(v63 + 32))(v62, v36, v37);
      sub_1B99EB5CC(v39);
      (*(v38 + 8))(v39, v37);
    }

    else
    {
      v66 = v27;
      v40 = *(v4 + 80);
      v41 = *(v4 + 96);
      v42 = *(v4 + 48);
      v76 = *(v4 + 64);
      v77 = v40;
      v78 = v41;
      v43 = *(v4 + 16);
      v73[0] = *v4;
      v73[1] = v43;
      v44 = *(v4 + 48);
      v45 = *(v4 + 16);
      v74 = *(v4 + 32);
      v75 = v44;
      v80[1] = v74;
      v80[2] = v42;
      v79 = *(v4 + 112);
      v67 = a2;
      v63 = *(&v73[0] + 1);
      v47 = v73[0];
      v82 = v47 >> 64;
      v46 = v47;
      v83 = *&v73[0];
      v81 = *(v4 + 64);
      v80[0] = v45;
      v48 = swift_allocObject();
      v49 = *(v4 + 80);
      *(v48 + 80) = *(v4 + 64);
      *(v48 + 96) = v49;
      *(v48 + 112) = *(v4 + 96);
      *(v48 + 128) = *(v4 + 112);
      v50 = *(v4 + 16);
      *(v48 + 16) = *v4;
      *(v48 + 32) = v50;
      v51 = *(v4 + 48);
      *(v48 + 48) = *(v4 + 32);
      *(v48 + 64) = v51;
      v52 = swift_allocObject();
      v53 = *(v4 + 80);
      *(v52 + 80) = *(v4 + 64);
      *(v52 + 96) = v53;
      *(v52 + 112) = *(v4 + 96);
      *(v52 + 128) = *(v4 + 112);
      v54 = *(v4 + 16);
      *(v52 + 16) = *v4;
      *(v52 + 32) = v54;
      v55 = *(v4 + 48);
      *(v52 + 48) = *(v4 + 32);
      *(v52 + 64) = v55;
      v56 = *(&v78 + 1);
      v57 = v79;
      v58 = type metadata accessor for DictionaryEncoderImplementation();
      v59 = swift_allocObject();
      *(v59 + 16) = v46;
      a2 = v67;
      *(v59 + 24) = v63;
      v60 = *(v4 + 32);
      *(v59 + 32) = *(v4 + 16);
      *(v59 + 48) = v60;
      *(v59 + 64) = *(v4 + 48);
      *(v59 + 80) = *(v4 + 64);
      *(v59 + 88) = sub_1B99EC42C;
      *(v59 + 96) = v48;
      *(v59 + 104) = sub_1B99EC7DC;
      *(v59 + 112) = v52;
      *(v59 + 120) = v56;
      *(v59 + 128) = v57;
      v72[3] = v58;
      v72[4] = sub_1B99E4394();
      v72[0] = v59;
      sub_1B99EC7F8(v73, &v69);
      sub_1B99EC7F8(v73, &v69);
      sub_1B99A183C(&v83, &v69, &qword_1EBBDD670, &qword_1B99F97E0);
      sub_1B99A183C(&v82, &v69, &qword_1EBBDD678, &qword_1B99F97E8);
      sub_1B99EC830(v80, &v69);

      sub_1B99F3B54();
      __swift_destroy_boxed_opaque_existential_1(v72);
      v27 = v66;
    }
  }

  return (*(v68 + 8))(v27, a2);
}

uint64_t sub_1B99E70D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v3[5];
  v8 = v3[3];
  v61 = v3[4];
  v62 = v7;
  v9 = v3[5];
  v63 = v3[6];
  v10 = v3[1];
  v58[0] = *v3;
  v58[1] = v10;
  v11 = v3[3];
  v13 = *v3;
  v12 = v3[1];
  v59 = v3[2];
  v60 = v11;
  v71 = v61;
  v72 = v9;
  v73 = v3[6];
  v67 = v13;
  v68 = v12;
  v64 = *(v3 + 14);
  v14 = *&v58[0];
  v41 = *(&v61 + 1);
  v42 = *(&v58[0] + 1);
  v40 = *(&v62 + 1);
  v36 = v64;
  v37 = v63;
  v38 = v62;
  v39 = *(&v63 + 1);
  v74 = *(v3 + 14);
  v69 = v59;
  v70 = v8;
  v15 = *(a3 - 8);
  (*(v15 + 16))(v65, v58);

  v16 = sub_1B99CB88C(a2, a3);
  v35 = v17;
  v65[4] = v71;
  v65[5] = v72;
  v65[6] = v73;
  v66 = v74;
  v65[0] = v67;
  v65[1] = v68;
  v65[2] = v69;
  v65[3] = v70;
  (*(v15 + 8))(v65, a3);
  v43 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8E0, &qword_1B99F6480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F5C20;
  v19 = *(a3 + 16);
  *(inited + 56) = v19;
  *(inited + 64) = *(a3 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, a2, v19);
  *&v67 = v14;

  sub_1B99EBF94(inited);
  v27 = *(v4 + 3);
  v30 = *(v4 + 5);
  v31 = *(v4 + 4);
  v33 = *(v4 + 7);
  v34 = v67;
  v32 = *(v4 + 8);
  v29 = *(v4 + 48);
  *&v45 = *(v4 + 2);
  v28 = v45;
  *(&v45 + 1) = v27;
  *&v46 = v31;
  *(&v46 + 1) = v30;
  LOBYTE(v47) = v29;
  *(&v47 + 1) = v33;
  *&v48 = v32;
  v21 = swift_allocObject();
  v21[2] = v41;
  v21[3] = v38;
  v21[4] = v40;
  v21[5] = v37;
  v21[6] = v39;
  v21[7] = v36;
  v21[8] = v16;
  v21[9] = v35;
  v21[10] = v43;
  v22 = swift_allocObject();
  v22[2] = v41;
  v22[3] = v38;
  v22[4] = v40;
  v22[5] = v37;
  v22[6] = v39;
  v22[7] = v36;
  v22[8] = v16;
  v22[9] = v35;
  *&v53 = sub_1B99ECAD8;
  *(&v53 + 1) = v21;
  v54 = sub_1B99ECBF0;
  v55 = v22;
  v56 = v39;
  v57 = v36;
  swift_retain_n();

  sub_1B99CA6A4(v28);
  sub_1B99CA884(v31, v30, v29);
  sub_1B99CAA28(v33);

  v23 = v43;
  sub_1B99E49D8(v34, v42, &v45, &v53, &v67);
  v50 = v72;
  v51 = v73;
  v45 = v67;
  v46 = v68;
  v47 = v69;
  v52 = v74;
  v48 = v70;
  v49 = v71;
  v24 = _s18AAAFoundationSwift14KeyedContainerVMa_0();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v44, &v67, v24);
  swift_getWitnessTable();
  sub_1B99F44D4();

  return (*(v25 + 8))(&v67, v24);
}

void sub_1B99E7524(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = v3[5];
  v8 = v3[3];
  *v62 = v3[4];
  *&v62[16] = v7;
  v9 = v3[5];
  *&v62[32] = v3[6];
  v10 = v3[1];
  v59[0] = *v3;
  v59[1] = v10;
  v11 = v3[3];
  v13 = *v3;
  v12 = v3[1];
  v60 = v3[2];
  v61 = v11;
  v14 = v3[6];
  v53 = v9;
  v54 = v14;
  v48 = v13;
  v49 = v12;
  v50 = v60;
  v15 = *(v3 + 14);
  v63 = v15;
  v16 = v59[0];
  v36 = *&v62[8];
  v56 = *&v62[8];
  v57 = *&v62[24];
  v39 = *&v62[24];
  v40 = *&v62[40];
  *&v58 = *&v62[40];
  *(&v58 + 1) = v15;
  v55 = *(v3 + 14);
  v51 = v8;
  v52 = *v62;
  v17 = *(a2 - 8);
  (*(v17 + 16))(v64, v59, a2);

  v18 = sub_1B99CB88C(a1, a2);
  v34 = v19;
  v35 = v18;
  v64[4] = v52;
  v64[5] = v53;
  v64[6] = v54;
  v65 = v55;
  v64[0] = v48;
  v64[1] = v49;
  v64[2] = v50;
  v64[3] = v51;
  (*(v17 + 8))(v64, a2);
  v20 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8E0, &qword_1B99F6480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F5C20;
  v22 = *(a2 + 16);
  *(inited + 56) = v22;
  *(inited + 64) = *(a2 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, a1, v22);
  *&v48 = v16;

  sub_1B99EBF94(inited);
  v24 = *(v4 + 3);
  v45 = *(v4 + 4);
  v46 = *(v4 + 2);
  LOBYTE(v17) = *(v4 + 48);
  v43 = *(v4 + 7);
  v44 = *(v4 + 5);
  v42 = *(v4 + 8);
  v25 = swift_allocObject();
  v26 = v57;
  *(v25 + 16) = v56;
  *(v25 + 32) = v26;
  *(v25 + 48) = v58;
  *(v25 + 64) = v35;
  *(v25 + 72) = v34;
  *(v25 + 80) = v20;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 16) = v56;
  *(v27 + 32) = v28;
  *(v27 + 48) = v58;
  *(v27 + 64) = v35;
  *(v27 + 72) = v34;

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v29 = v20;
  v38 = v24;
  sub_1B99CA6A4(v46);
  v37 = v17;
  sub_1B99CA884(v45, v44, v17);
  sub_1B99CAA28(v43);

  v30 = sub_1B99E7A8C(&v56, v35, v34, v29, &qword_1EBBDD5E0, 0x1E695DF70, &v47);
  v31 = v47;
  v36(&v48, v30);
  v32 = v48;
  *&v48 = v35;
  *(&v48 + 1) = v34;

  [v32 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  *&v48 = v32;
  v39(&v48);

  a3[3] = &_s18AAAFoundationSwift16UnkeyedContainerVN_0;
  a3[4] = sub_1B99EC54C();
  v33 = swift_allocObject();
  *a3 = v33;

  *(v33 + 16) = v16;
  *(v33 + 32) = v46;
  *(v33 + 40) = v38;
  *(v33 + 48) = v45;
  *(v33 + 56) = v44;
  *(v33 + 64) = v37;
  *(v33 + 72) = v43;
  *(v33 + 80) = v42;
  *(v33 + 88) = sub_1B99ECA2C;
  *(v33 + 96) = v25;
  *(v33 + 104) = sub_1B99ECA60;
  *(v33 + 112) = v27;
  *(v33 + 120) = v40;
  *(v33 + 128) = v15;
}

uint64_t sub_1B99E7A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v12 = *(a1 + 8);
  (*a1)(&v20);
  v13 = v20;
  *&v18 = a2;
  *(&v18 + 1) = a3;

  v14 = [v13 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_1B99F4214();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v21[0] = v18;
  v21[1] = v19;
  if (*(&v19 + 1))
  {
    sub_1B99BE9A8(0, a5, a6);
    result = swift_dynamicCast();
    if (result)
    {
      *a7 = v17;
      return result;
    }
  }

  else
  {
    sub_1B99AC2C8(v21);
  }

  *a7 = a4;

  return a4;
}

void sub_1B99E7BEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a2 + 8);
  (*a2)(v12);
  v9 = v12[0];
  v12[0] = a3;
  v12[1] = a4;

  [v9 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12[0] = v9;
  v10(v12);
}

unint64_t sub_1B99E7CB4@<X0>(uint64_t *a1@<X8>)
{
  v13 = *v1;
  v14 = v1[1];
  v18 = v1[3];
  v19 = v1[2];
  v15 = v1[5];
  v16 = v1[4];
  v22 = v1[7];
  v20 = v1[8];
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[11];
  v4 = v1[12];
  v7 = v1[13];
  v6 = v1[14];
  v21 = *(v1 + 48);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v7;
  v8[7] = v6;
  v8[8] = 0x7265707573;
  v8[9] = 0xE500000000000000;
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v7;
  v9[7] = v6;
  v9[8] = 0x7265707573;
  v9[9] = 0xE500000000000000;
  v10 = type metadata accessor for DictionaryEncoderImplementation();
  v11 = swift_allocObject();
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  *(v11 + 32) = v19;
  *(v11 + 40) = v18;
  *(v11 + 48) = v16;
  *(v11 + 56) = v15;
  *(v11 + 64) = v21;
  *(v11 + 72) = v22;
  *(v11 + 80) = v20;
  *(v11 + 88) = sub_1B99ECC24;
  *(v11 + 96) = v8;
  *(v11 + 104) = sub_1B99ECBD8;
  *(v11 + 112) = v9;
  *(v11 + 120) = v7;
  *(v11 + 128) = v6;
  a1[3] = v10;
  a1[4] = sub_1B99E4394();
  *a1 = v11;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1B99CA6A4(v19);
  sub_1B99CA884(v16, v15, v21);

  return sub_1B99CAA28(v22);
}

uint64_t sub_1B99E7E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[5];
  v7 = v3[3];
  v54 = v3[4];
  v55 = v6;
  v8 = v3[5];
  v56 = v3[6];
  v9 = v3[1];
  v51[0] = *v3;
  v51[1] = v9;
  v10 = v3[3];
  v12 = *v3;
  v11 = v3[1];
  v52 = v3[2];
  v53 = v10;
  v47 = v54;
  v48 = v8;
  v49 = v3[6];
  v43 = v12;
  v44 = v11;
  v57 = *(v3 + 14);
  v38 = v57;
  v35 = *(&v51[0] + 1);
  v36 = *&v51[0];
  v14 = *(&v54 + 1);
  v13 = v55;
  v15 = v56;
  v34 = *(&v55 + 1);
  v41 = *(&v56 + 1);
  v50 = *(v3 + 14);
  v45 = v52;
  v46 = v7;
  v16 = *(a2 - 8);
  (*(v16 + 16))(v58, v51, a2);

  v17 = v13;

  v18 = v15;

  v19 = sub_1B99CB88C(a1, a2);
  v40 = v20;
  v58[4] = v47;
  v58[5] = v48;
  v58[6] = v49;
  v59 = v50;
  v58[0] = v43;
  v58[1] = v44;
  v58[2] = v45;
  v58[3] = v46;
  (*(v16 + 8))(v58, a2);
  v39 = *(v3 + 3);
  v30 = *(v3 + 2);
  v31 = *(v3 + 5);
  v32 = *(v3 + 4);
  v33 = *(v3 + 7);
  v42 = *(v3 + 8);
  v29 = *(v3 + 48);
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = v17;
  v22 = v17;
  v21[4] = v34;
  v21[5] = v18;
  v23 = v18;
  v21[6] = v41;
  v21[7] = v38;
  v21[8] = v19;
  v21[9] = v40;
  v24 = v19;
  v25 = swift_allocObject();
  v25[2] = v14;
  v25[3] = v22;
  v25[4] = v34;
  v25[5] = v23;
  v25[6] = v41;
  v25[7] = v38;
  v25[8] = v24;
  v25[9] = v40;
  v26 = type metadata accessor for DictionaryEncoderImplementation();
  v27 = swift_allocObject();
  *(v27 + 16) = v36;
  *(v27 + 24) = v35;
  *(v27 + 32) = v30;
  *(v27 + 40) = v39;
  *(v27 + 48) = v32;
  *(v27 + 56) = v31;
  *(v27 + 64) = v29;
  *(v27 + 72) = v33;
  *(v27 + 80) = v42;
  *(v27 + 88) = sub_1B99EC9EC;
  *(v27 + 96) = v21;
  *(v27 + 104) = sub_1B99ECA0C;
  *(v27 + 112) = v25;
  *(v27 + 120) = v41;
  *(v27 + 128) = v38;
  a3[3] = v26;
  a3[4] = sub_1B99E4394();
  *a3 = v27;
  swift_retain_n();

  sub_1B99CA6A4(v30);
  sub_1B99CA884(v32, v31, v29);
  sub_1B99CAA28(v33);
}

double sub_1B99E8184@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  (*a1)(&v7);
  v4 = v7;

  v5 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_1B99F4214();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1B99E8248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  (*a2)(v19);
  v9 = v19[0];
  sub_1B99A183C(a1, v19, &qword_1EBBDC658, &qword_1B99F5F40);
  v10 = v20;
  if (v20)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v21 = v19;
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11, v11);
    v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_1B99F46F4();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v16 = 0;
  }

  v19[0] = a3;
  v19[1] = a4;

  [v9 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19[0] = v9;
  v17(v19);
}

void sub_1B99E895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 80);
  v6 = *(a2 + 88);
  v5 = *(a2 + 96);
  (*(a2 + 72))(&v8);
  v7 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v7 setObject:sub_1B99F41B4() atIndexedSubscript:a3];
  swift_unknownObjectRelease();
  v8 = v7;
  v6(&v8);
}

uint64_t sub_1B99E8A18()
{
  v26 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v27 = *v0;
  v28 = *(v0 + 1);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v6 = *(v0 + 7);
  v5 = *(v0 + 8);
  v7 = *(v0 + 48);
  *&v45 = *(v0 + 2);
  v1 = v45;
  *(&v45 + 1) = v2;
  *&v46 = v4;
  *(&v46 + 1) = v3;
  LOBYTE(v47) = v7;
  *(&v47 + 1) = v6;
  *&v48 = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v26;
  v9 = *(v0 + 13);
  v10 = *(v0 + 14);
  *&v38 = sub_1B99EC984;
  *(&v38 + 1) = v8;
  v39 = nullsub_1;
  v40 = 0;
  v41 = v9;
  v42 = v10;

  sub_1B99CA6A4(v1);
  sub_1B99CA884(v4, v3, v7);
  sub_1B99CAA28(v6);
  v11 = v26;

  v12 = sub_1B99E49D8(v27, v28, &v45, &v38, v43);
  v13 = v0[5];
  v49 = v0[4];
  v50 = v13;
  v51 = v0[6];
  v52 = *(v0 + 14);
  v14 = v0[1];
  v45 = *v0;
  v46 = v14;
  v15 = v0[3];
  v47 = v0[2];
  v48 = v15;
  v16 = *(&v49 + 1);
  v17 = *(&v50 + 1);
  (*(&v49 + 1))(v30, v12);
  v18 = v30[0];
  v19 = [v30[0] count];

  v29[3] = sub_1B99BE9A8(0, qword_1EBBDD5E8, 0x1E695DF90);
  v29[0] = v11;
  v20 = v11;
  v21 = sub_1B99EC91C(&v45, v30);
  v16(v30, v21);
  v22 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v22 setObject:sub_1B99F41B4() atIndexedSubscript:v19];
  swift_unknownObjectRelease();
  v30[0] = v22;
  v17(v30);
  sub_1B99EC954(&v45);

  sub_1B99AC2C8(v29);
  v34 = v43[4];
  v35 = v43[5];
  v36 = v43[6];
  v37 = v44;
  *v30 = v43[0];
  v31 = v43[1];
  v32 = v43[2];
  v33 = v43[3];
  v23 = _s18AAAFoundationSwift14KeyedContainerVMa_0();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v29, v43, v23);
  swift_getWitnessTable();
  sub_1B99F44D4();

  return (*(v24 + 8))(v43, v23);
}

void sub_1B99E8F64(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[5];
  v31 = v1[4];
  v7 = *(v1 + 48);
  v8 = v1[8];
  v23 = v1[3];
  v24 = v1[7];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = v1[14];
  v26 = v9;
  v27 = v1[13];
  v11 = *(v1 + 5);
  v35 = *(v1 + 4);
  v36 = v11;
  v37 = *(v1 + 6);
  v38 = v10;
  v12 = *(v1 + 1);
  v34[0] = *v1;
  v34[1] = v12;
  v13 = *(v1 + 3);
  v34[2] = *(v1 + 2);
  v34[3] = v13;
  v14 = *(&v35 + 1);
  v25 = *(&v36 + 1);
  v30 = v3;

  v29 = v4;

  sub_1B99CA6A4(v5);
  sub_1B99CA884(v31, v6, v7);
  sub_1B99CAA28(v24);
  v15 = v2;

  (*(&v35 + 1))(&v32, v16);
  v17 = v32;
  v18 = [v32 count];

  v33[3] = sub_1B99BE9A8(0, &qword_1EBBDD5E0, 0x1E695DF70);
  v33[0] = v15;
  v19 = v15;
  v20 = sub_1B99EC91C(v34, &v32);
  v14(&v32, v20);
  v21 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v21 setObject:sub_1B99F41B4() atIndexedSubscript:v18];
  swift_unknownObjectRelease();
  v32 = v21;
  v25(&v32);
  sub_1B99EC954(v34);

  sub_1B99AC2C8(v33);
  a1[3] = &_s18AAAFoundationSwift16UnkeyedContainerVN_0;
  a1[4] = sub_1B99EC54C();
  v22 = swift_allocObject();
  *a1 = v22;

  *(v22 + 16) = v30;
  *(v22 + 24) = v29;
  *(v22 + 32) = v5;
  *(v22 + 40) = v23;
  *(v22 + 48) = v31;
  *(v22 + 56) = v6;
  *(v22 + 64) = v7;
  *(v22 + 72) = v24;
  *(v22 + 80) = v8;
  *(v22 + 88) = sub_1B99ECC28;
  *(v22 + 96) = v26;
  *(v22 + 104) = nullsub_1;
  *(v22 + 112) = 0;
  *(v22 + 120) = v27;
  *(v22 + 128) = v10;
}

uint64_t sub_1B99E942C@<X0>(uint64_t *a1@<X8>)
{
  v29 = v1[1];
  v30 = *v1;
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = v1[8];
  v8 = *(v1 + 4);
  v9 = *(v1 + 6);
  v40 = *(v1 + 5);
  v41 = v9;
  v42 = v1[14];
  v10 = *(v1 + 1);
  v35 = *v1;
  v11 = *(v1 + 2);
  v36 = v10;
  v37 = v11;
  v38 = *(v1 + 3);
  v39 = v8;
  v12 = *(v1 + 48);
  v28 = *(&v8 + 1);
  v31 = v42;
  v32 = *(&v41 + 1);

  sub_1B99CA6A4(v2);
  v13 = v12;
  sub_1B99CA884(v4, v5, v12);
  v14 = sub_1B99CAA28(v6);
  v28(v34, v14);
  v15 = v34[0];
  v16 = [v34[0] count];

  v17 = swift_allocObject();
  v18 = v40;
  v19 = v41;
  v20 = v38;
  *(v17 + 80) = v39;
  *(v17 + 96) = v18;
  *(v17 + 112) = v19;
  v21 = v36;
  v22 = v37;
  *(v17 + 16) = v35;
  *(v17 + 32) = v21;
  v23 = v42;
  *(v17 + 48) = v22;
  *(v17 + 64) = v20;
  *(v17 + 128) = v23;
  *(v17 + 136) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1B99EC8FC;
  *(v24 + 24) = v17;
  v25 = type metadata accessor for DictionaryEncoderImplementation();
  v26 = swift_allocObject();
  *(v26 + 16) = v30;
  *(v26 + 24) = v29;
  *(v26 + 32) = v2;
  *(v26 + 40) = v3;
  *(v26 + 48) = v4;
  *(v26 + 56) = v5;
  *(v26 + 64) = v13;
  *(v26 + 72) = v6;
  *(v26 + 80) = v7;
  *(v26 + 88) = sub_1B99E9628;
  *(v26 + 96) = 0;
  *(v26 + 104) = sub_1B99ECC08;
  *(v26 + 112) = v24;
  *(v26 + 120) = v32;
  *(v26 + 128) = v31;
  a1[3] = v25;
  a1[4] = sub_1B99E4394();
  *a1 = v26;
  sub_1B99EC91C(&v35, v34);
}

double sub_1B99E9628@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1B99E9634()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[7];
  v15 = *v0;
  v12 = v0[5];
  v4 = v0[9];
  v10 = v0[1];
  v11 = v0[10];
  v16 = v0[11];
  v13 = v0[12];
  v5 = v0[14];
  v6 = *(v0 + 48);
  v4(v17);
  v7 = v17[0];
  v14 = [v17[0] count];

  *v17 = 0u;
  v18 = 0u;

  sub_1B99CA6A4(v1);
  sub_1B99CA884(v2, v12, v6);
  sub_1B99CAA28(v3);

  (v4)(&v19, v8);
  v9 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v9 setObject:sub_1B99F41B4() atIndexedSubscript:v14];
  swift_unknownObjectRelease();
  v19 = v9;
  v16(&v19);

  sub_1B99A3EA8(v1);
  sub_1B99CA900(v2, v12, v6);
  sub_1B99CAA8C(v3);

  sub_1B99AC2C8(v17);
}

uint64_t sub_1B99E9820(void *a1, void *a2)
{
  v16 = v2[1];
  v4 = v2[2];
  v17 = v4;
  v18 = *v2;
  v5 = v2[4];
  v20 = v2[5];
  v21 = v2[8];
  v22 = v2[7];
  v14 = v2[9];
  v13 = v2[10];
  v6 = v2[12];
  v19 = v2[11];
  v23 = v2[14];
  v7 = *(v2 + 48);
  v14(v24);
  v8 = v24[0];
  v15 = [v24[0] count];

  v24[3] = MEMORY[0x1E69E6158];
  v24[0] = a1;
  v24[1] = a2;

  sub_1B99CA6A4(v4);
  sub_1B99CA884(v5, v20, v7);
  sub_1B99CAA28(v22);

  (v14)(&v25, v9);
  v10 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v10 setObject:sub_1B99F41B4() atIndexedSubscript:v15];
  swift_unknownObjectRelease();
  v25 = v10;
  v19(&v25);

  sub_1B99A3EA8(v17);
  sub_1B99CA900(v5, v20, v7);
  sub_1B99CAA8C(v22);

  return sub_1B99AC2C8(v24);
}

uint64_t sub_1B99E9A14(double a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 56);
  v15 = *(v1 + 40);
  v16 = *(v1 + 64);
  v7 = *(v1 + 72);
  v14 = *(v1 + 80);
  v19 = *(v1 + 88);
  v17 = *(v1 + 96);
  v8 = *(v1 + 112);
  v13 = *(v1 + 48);
  v7(v21);
  v9 = v21[0];
  v18 = [v21[0] count];

  v21[3] = MEMORY[0x1E69E63B0];
  v21[0] = *&a1;

  sub_1B99CA6A4(v4);
  sub_1B99CA884(v5, v15, v13);
  sub_1B99CAA28(v6);

  (v7)(&v20, v10);
  v11 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v18];
  swift_unknownObjectRelease();
  v20 = v11;
  v19(&v20);

  sub_1B99A3EA8(v4);
  sub_1B99CA900(v5, v15, v13);
  sub_1B99CAA8C(v6);

  return sub_1B99AC2C8(v21);
}

uint64_t sub_1B99E9C18(float a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 56);
  v15 = *(v1 + 40);
  v16 = *(v1 + 64);
  v7 = *(v1 + 72);
  v14 = *(v1 + 80);
  v19 = *(v1 + 88);
  v17 = *(v1 + 96);
  v8 = *(v1 + 112);
  v13 = *(v1 + 48);
  v7(v21);
  v9 = v21[0];
  v18 = [v21[0] count];

  v21[3] = MEMORY[0x1E69E6448];
  *v21 = a1;

  sub_1B99CA6A4(v4);
  sub_1B99CA884(v5, v15, v13);
  sub_1B99CAA28(v6);

  (v7)(&v20, v10);
  v11 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v18];
  swift_unknownObjectRelease();
  v20 = v11;
  v19(&v20);

  sub_1B99A3EA8(v4);
  sub_1B99CA900(v5, v15, v13);
  sub_1B99CAA8C(v6);

  return sub_1B99AC2C8(v21);
}

uint64_t sub_1B99E9E1C(char a1, void *a2)
{
  v18 = v2[1];
  v3 = v2[2];
  v19 = v3;
  v20 = *v2;
  v5 = v2[4];
  v4 = v2[5];
  v6 = v2[7];
  v7 = v2[9];
  v15 = v2[10];
  v21 = v2[11];
  v16 = v2[12];
  v23 = v2[8];
  v24 = v2[14];
  v8 = *(v2 + 48);
  v7(v25);
  v9 = v25[0];
  v17 = [v25[0] count];

  v25[3] = a2;
  LOBYTE(v25[0]) = a1;

  sub_1B99CA6A4(v3);
  sub_1B99CA884(v5, v4, v8);
  sub_1B99CAA28(v22);

  (v7)(&v26, v10);
  v11 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v17];
  swift_unknownObjectRelease();
  v26 = v11;
  v21(&v26);

  sub_1B99A3EA8(v19);
  sub_1B99CA900(v5, v4, v8);
  sub_1B99CAA8C(v22);

  return sub_1B99AC2C8(v25);
}

uint64_t sub_1B99EA000(__int16 a1, void *a2)
{
  v18 = v2[1];
  v3 = v2[2];
  v19 = v3;
  v20 = *v2;
  v5 = v2[4];
  v4 = v2[5];
  v6 = v2[7];
  v7 = v2[9];
  v15 = v2[10];
  v21 = v2[11];
  v16 = v2[12];
  v23 = v2[8];
  v24 = v2[14];
  v8 = *(v2 + 48);
  v7(v25);
  v9 = v25[0];
  v17 = [v25[0] count];

  v25[3] = a2;
  LOWORD(v25[0]) = a1;

  sub_1B99CA6A4(v3);
  sub_1B99CA884(v5, v4, v8);
  sub_1B99CAA28(v22);

  (v7)(&v26, v10);
  v11 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v17];
  swift_unknownObjectRelease();
  v26 = v11;
  v21(&v26);

  sub_1B99A3EA8(v19);
  sub_1B99CA900(v5, v4, v8);
  sub_1B99CAA8C(v22);

  return sub_1B99AC2C8(v25);
}

uint64_t sub_1B99EA1E4(int a1, void *a2)
{
  v18 = v2[1];
  v3 = v2[2];
  v19 = v3;
  v20 = *v2;
  v5 = v2[4];
  v4 = v2[5];
  v6 = v2[7];
  v7 = v2[9];
  v15 = v2[10];
  v21 = v2[11];
  v16 = v2[12];
  v23 = v2[8];
  v24 = v2[14];
  v8 = *(v2 + 48);
  v7(v25);
  v9 = v25[0];
  v17 = [v25[0] count];

  v25[3] = a2;
  LODWORD(v25[0]) = a1;

  sub_1B99CA6A4(v3);
  sub_1B99CA884(v5, v4, v8);
  sub_1B99CAA28(v22);

  (v7)(&v26, v10);
  v11 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v17];
  swift_unknownObjectRelease();
  v26 = v11;
  v21(&v26);

  sub_1B99A3EA8(v19);
  sub_1B99CA900(v5, v4, v8);
  sub_1B99CAA8C(v22);

  return sub_1B99AC2C8(v25);
}

uint64_t sub_1B99EA3C8(void *a1, void *a2)
{
  v18 = v2[1];
  v3 = v2[2];
  v19 = v3;
  v20 = *v2;
  v5 = v2[4];
  v4 = v2[5];
  v6 = v2[7];
  v7 = v2[9];
  v21 = v2[11];
  v15 = v2[10];
  v16 = v2[12];
  v23 = v2[8];
  v24 = v2[14];
  v8 = *(v2 + 48);
  v7(v25);
  v9 = v25[0];
  v17 = [v25[0] count];

  v25[3] = a2;
  v25[0] = a1;

  sub_1B99CA6A4(v3);
  sub_1B99CA884(v5, v4, v8);
  sub_1B99CAA28(v22);

  (v7)(&v26, v10);
  v11 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v17];
  swift_unknownObjectRelease();
  v26 = v11;
  v21(&v26);

  sub_1B99A3EA8(v19);
  sub_1B99CA900(v5, v4, v8);
  sub_1B99CAA8C(v22);

  return sub_1B99AC2C8(v25);
}

uint64_t sub_1B99EA5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = *(v3 + 72);
  (v20)(&v26);
  v5 = v26;
  v6 = [v26 count];

  v17 = *v3;
  v7 = *(v3 + 3);
  v34 = *(v4 + 2);
  v9 = *(v4 + 4);
  v8 = *(v4 + 5);
  v18 = *(v4 + 8);
  v19 = *(v4 + 7);
  v10 = *(v4 + 13);
  v11 = *(v4 + 14);
  v12 = *(v4 + 48);
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  v14 = swift_allocObject();
  v15 = *(v4 + 88);
  *(v13 + 24) = v20;
  *(v13 + 40) = v15;
  *(v14 + 16) = v20;
  *(v14 + 32) = v15;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  *(v14 + 64) = v6;
  v26 = v17;
  *&v27 = v34;
  *(&v27 + 1) = v7;
  *&v28 = v9;
  *(&v28 + 1) = v8;
  LOBYTE(v29) = v12;
  *(&v29 + 1) = v19;
  *&v30 = v18;
  *(&v30 + 1) = sub_1B99EC990;
  *&v31 = v13;
  *(&v31 + 1) = sub_1B99EC99C;
  *&v32 = v14;
  *(&v32 + 1) = v10;
  v33 = v11;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1B99CA6A4(v34);
  sub_1B99CA884(v9, v8, v12);
  sub_1B99CAA28(v19);
  sub_1B99E6B5C(a1, a2, a3);
  v24[4] = v30;
  v24[5] = v31;
  v24[6] = v32;
  v24[0] = v26;
  v24[1] = v27;
  v25 = v33;
  v24[2] = v28;
  v24[3] = v29;
  return sub_1B99EC9BC(v24);
}

double sub_1B99EA7A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  (*a2)(&v11);
  v7 = v11;
  v8 = [v11 count];

  if (v8 <= a1)
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    v6(&v11);
    v9 = v11;
    [v11 objectAtIndexedSubscript_];

    sub_1B99F4214();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B99EA888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  (*a2)(&v9);
  v6 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v6 setObject:sub_1B99F41B4() atIndexedSubscript:a3];
  swift_unknownObjectRelease();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v6;
  v7(&v9);
}

uint64_t sub_1B99EA944(char a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v21 = *v1;
  v5 = v1[7];
  v16 = v1[5];
  v17 = v1[8];
  v6 = v1[9];
  v14 = v1[3];
  v15 = v1[10];
  v7 = v1[11];
  v18 = v1[12];
  v20 = v1[14];
  v8 = *(v1 + 48);
  v6(v23);
  v9 = v23[0];
  v19 = [v23[0] count];

  v23[3] = MEMORY[0x1E69E6370];
  LOBYTE(v23[0]) = a1;

  sub_1B99CA6A4(v3);
  sub_1B99CA884(v4, v16, v8);
  sub_1B99CAA28(v5);

  (v6)(&v24, v10);
  v11 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  [v11 setObject:sub_1B99F41B4() atIndexedSubscript:v19];
  swift_unknownObjectRelease();
  v24 = v11;
  v22(&v24);

  sub_1B99A3EA8(v3);
  sub_1B99CA900(v4, v16, v8);
  sub_1B99CAA8C(v5);

  return sub_1B99AC2C8(v23);
}

id sub_1B99EAB48()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v1(&v6);
  v3 = v6;
  v4 = [v6 count];

  return v4;
}

uint64_t sub_1B99EB0C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v3 = *(a2 + 96);
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v6[0] = swift_allocObject();
  sub_1B99A183C(a1, v6[0] + 16, &qword_1EBBDC658, &qword_1B99F5F40);
  v4(v6);
  return sub_1B99AC2C8(v6);
}

uint64_t sub_1B99EB174(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_1B99F37F4();
      v5 = *(v2 + 88);
      v6 = *(v2 + 96);
      v54[3] = MEMORY[0x1E69E6158];
      v54[0] = v4;
      v54[1] = v7;
      v5(v54);
      return sub_1B99AC2C8(v54);
    }

    v29 = *(v2 + 80);
    v30 = *(v2 + 96);
    v61 = *(v2 + 64);
    v62 = v29;
    v63 = v30;
    v31 = *(v2 + 16);
    v58[0] = *v2;
    v58[1] = v31;
    v32 = *(v2 + 48);
    v33 = *(v2 + 16);
    v59 = *(v2 + 32);
    v60 = v32;
    v34 = *(v2 + 48);
    v76[1] = v59;
    v76[2] = v34;
    v35 = *(v2 + 64);
    v64 = *(v2 + 112);
    v36 = *(&v58[0] + 1);
    v37 = v58[0];
    v78 = v37 >> 64;
    v51 = v37;
    v79 = *&v58[0];
    v77 = *(v2 + 64);
    v76[0] = v33;
    v38 = swift_allocObject();
    v39 = *(v2 + 80);
    *(v38 + 80) = *(v2 + 64);
    *(v38 + 96) = v39;
    *(v38 + 112) = *(v2 + 96);
    *(v38 + 128) = *(v2 + 112);
    v40 = *(v2 + 16);
    *(v38 + 16) = *v2;
    *(v38 + 32) = v40;
    v41 = *(v2 + 48);
    *(v38 + 48) = *(v2 + 32);
    *(v38 + 64) = v41;
    v42 = swift_allocObject();
    v43 = *(v2 + 80);
    *(v42 + 80) = *(v2 + 64);
    *(v42 + 96) = v43;
    *(v42 + 112) = *(v2 + 96);
    *(v42 + 128) = *(v2 + 112);
    v44 = *(v2 + 16);
    *(v42 + 16) = *v2;
    *(v42 + 32) = v44;
    v45 = *(v2 + 48);
    *(v42 + 48) = *(v2 + 32);
    *(v42 + 64) = v45;
    v47 = *(&v63 + 1);
    v46 = v64;
    v48 = type metadata accessor for DictionaryEncoderImplementation();
    v49 = swift_allocObject();
    *(v49 + 16) = __PAIR128__(v36, v51);
    v50 = *(v2 + 32);
    *(v49 + 32) = *(v2 + 16);
    *(v49 + 48) = v50;
    *(v49 + 64) = *(v2 + 48);
    *(v49 + 80) = *(v2 + 64);
    *(v49 + 88) = sub_1B99ECC2C;
    *(v49 + 96) = v38;
    *(v49 + 104) = sub_1B99ECC30;
    *(v49 + 112) = v42;
    *(v49 + 120) = v47;
    *(v49 + 128) = v46;
    v56 = v48;
    v57 = sub_1B99E4394();
    v55[0] = v49;
    sub_1B99EC7F8(v58, v54);
    sub_1B99EC7F8(v58, v54);
    sub_1B99CAA28(v3);
    sub_1B99A183C(&v79, v54, &qword_1EBBDD670, &qword_1B99F97E0);
    sub_1B99A183C(&v78, v54, &qword_1EBBDD678, &qword_1B99F97E8);
    sub_1B99EC830(v76, v54);

    v3(a1, a2, v55);
    sub_1B99CAA8C(v3);
  }

  else
  {
    v9 = *(v2 + 80);
    v10 = *(v2 + 96);
    v11 = *(v2 + 48);
    v68 = *(v2 + 64);
    v69 = v9;
    v70 = v10;
    v12 = *(v2 + 16);
    v65[0] = *v2;
    v65[1] = v12;
    v13 = *(v2 + 48);
    v14 = *(v2 + 16);
    v66 = *(v2 + 32);
    v67 = v13;
    v72[1] = v66;
    v72[2] = v11;
    v71 = *(v2 + 112);
    v15 = v65[0];
    v74 = *(&v65[0] + 1);
    v75 = *&v65[0];
    v73 = *(v2 + 64);
    v72[0] = v14;
    v16 = swift_allocObject();
    v17 = *(v2 + 80);
    *(v16 + 80) = *(v2 + 64);
    *(v16 + 96) = v17;
    *(v16 + 112) = *(v2 + 96);
    *(v16 + 128) = *(v2 + 112);
    v18 = *(v2 + 16);
    *(v16 + 16) = *v2;
    *(v16 + 32) = v18;
    v19 = *(v2 + 48);
    *(v16 + 48) = *(v2 + 32);
    *(v16 + 64) = v19;
    v20 = swift_allocObject();
    v21 = *(v2 + 80);
    *(v20 + 80) = *(v2 + 64);
    *(v20 + 96) = v21;
    *(v20 + 112) = *(v2 + 96);
    *(v20 + 128) = *(v2 + 112);
    v22 = *(v2 + 16);
    *(v20 + 16) = *v2;
    *(v20 + 32) = v22;
    v23 = *(v2 + 48);
    *(v20 + 48) = *(v2 + 32);
    *(v20 + 64) = v23;
    v24 = *(&v70 + 1);
    v25 = v71;
    v26 = type metadata accessor for DictionaryEncoderImplementation();
    v27 = swift_allocObject();
    *(v27 + 16) = v15;
    v28 = *(v2 + 32);
    *(v27 + 32) = *(v2 + 16);
    *(v27 + 48) = v28;
    *(v27 + 64) = *(v2 + 48);
    *(v27 + 80) = *(v2 + 64);
    *(v27 + 88) = sub_1B99ECC2C;
    *(v27 + 96) = v16;
    *(v27 + 104) = sub_1B99ECC30;
    *(v27 + 112) = v20;
    *(v27 + 120) = v24;
    *(v27 + 128) = v25;
    v56 = v26;
    v57 = sub_1B99E4394();
    v55[0] = v27;
    sub_1B99EC7F8(v65, v54);
    sub_1B99EC7F8(v65, v54);
    sub_1B99A183C(&v75, v54, &qword_1EBBDD670, &qword_1B99F97E0);
    sub_1B99A183C(&v74, v54, &qword_1EBBDD678, &qword_1B99F97E8);
    sub_1B99EC830(v72, v54);

    sub_1B99F3834();
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1B99EB5CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v5 = *(v1 + 80);
      v6 = *(v1 + 96);
      v7 = *(v1 + 48);
      v69 = *(v1 + 64);
      v70 = v5;
      v71 = v6;
      v8 = *(v1 + 16);
      v66[0] = *v1;
      v66[1] = v8;
      v9 = *(v1 + 48);
      v10 = *(v1 + 16);
      v67 = *(v1 + 32);
      v68 = v9;
      v84[1] = v67;
      v84[2] = v7;
      v72 = *(v1 + 112);
      v58 = *(&v66[0] + 1);
      v11 = v66[0];
      v86 = v11 >> 64;
      v59 = v11;
      v87 = *&v66[0];
      v85 = *(v1 + 64);
      v84[0] = v10;
      v12 = swift_allocObject();
      v13 = *(v1 + 80);
      *(v12 + 80) = *(v1 + 64);
      *(v12 + 96) = v13;
      *(v12 + 112) = *(v1 + 96);
      *(v12 + 128) = *(v1 + 112);
      v14 = *(v1 + 16);
      *(v12 + 16) = *v1;
      *(v12 + 32) = v14;
      v15 = *(v1 + 48);
      *(v12 + 48) = *(v1 + 32);
      *(v12 + 64) = v15;
      v16 = swift_allocObject();
      v17 = *(v1 + 80);
      *(v16 + 80) = *(v1 + 64);
      *(v16 + 96) = v17;
      *(v16 + 112) = *(v1 + 96);
      *(v16 + 128) = *(v1 + 112);
      v18 = *(v1 + 16);
      *(v16 + 16) = *v1;
      *(v16 + 32) = v18;
      v19 = *(v1 + 48);
      *(v16 + 48) = *(v1 + 32);
      *(v16 + 64) = v19;
      v20 = v3;
      v21 = *(&v71 + 1);
      v22 = v72;
      v23 = type metadata accessor for DictionaryEncoderImplementation();
      v24 = swift_allocObject();
      *(v24 + 16) = __PAIR128__(v58, v59);
      v25 = *(v2 + 32);
      *(v24 + 32) = *(v2 + 16);
      *(v24 + 48) = v25;
      *(v24 + 64) = *(v2 + 48);
      *(v24 + 80) = *(v2 + 64);
      *(v24 + 88) = sub_1B99ECC2C;
      *(v24 + 96) = v12;
      *(v24 + 104) = sub_1B99ECC30;
      *(v24 + 112) = v16;
      *(v24 + 120) = v21;
      *(v24 + 128) = v22;
      v64 = v23;
      v65 = sub_1B99E4394();
      v63[0] = v24;
      sub_1B99EC7F8(v66, v61);
      sub_1B99CA884(v4, v20, 1);
      sub_1B99EC7F8(v66, v61);
      sub_1B99A183C(&v87, v61, &qword_1EBBDD670, &qword_1B99F97E0);
      sub_1B99A183C(&v86, v61, &qword_1EBBDD678, &qword_1B99F97E8);
      sub_1B99EC830(v84, v61);

      (v4)(a1, v63);
      sub_1B99CA900(v4, v20, 1);
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    if (!(v4 | v3))
    {
      v35 = *(v1 + 80);
      v36 = *(v1 + 96);
      v37 = *(v1 + 48);
      v76 = *(v1 + 64);
      v77 = v35;
      v78 = v36;
      v38 = *(v1 + 16);
      v73[0] = *v1;
      v73[1] = v38;
      v39 = *(v1 + 48);
      v40 = *(v1 + 16);
      v74 = *(v1 + 32);
      v75 = v39;
      v80[1] = v74;
      v80[2] = v37;
      v79 = *(v1 + 112);
      v41 = v73[0];
      v82 = *(&v73[0] + 1);
      v83 = *&v73[0];
      v81 = *(v1 + 64);
      v80[0] = v40;
      v42 = swift_allocObject();
      v43 = *(v1 + 80);
      *(v42 + 80) = *(v1 + 64);
      *(v42 + 96) = v43;
      *(v42 + 112) = *(v1 + 96);
      *(v42 + 128) = *(v1 + 112);
      v44 = *(v1 + 16);
      *(v42 + 16) = *v1;
      *(v42 + 32) = v44;
      v45 = *(v1 + 48);
      *(v42 + 48) = *(v1 + 32);
      *(v42 + 64) = v45;
      v46 = swift_allocObject();
      v47 = *(v1 + 80);
      *(v46 + 80) = *(v1 + 64);
      *(v46 + 96) = v47;
      *(v46 + 112) = *(v1 + 96);
      *(v46 + 128) = *(v1 + 112);
      v48 = *(v1 + 16);
      *(v46 + 16) = *v1;
      *(v46 + 32) = v48;
      v49 = *(v1 + 48);
      *(v46 + 48) = *(v1 + 32);
      *(v46 + 64) = v49;
      v50 = *(&v78 + 1);
      v51 = v79;
      v52 = type metadata accessor for DictionaryEncoderImplementation();
      v53 = swift_allocObject();
      *(v53 + 16) = v41;
      v54 = *(v2 + 32);
      *(v53 + 32) = *(v2 + 16);
      *(v53 + 48) = v54;
      *(v53 + 64) = *(v2 + 48);
      *(v53 + 80) = *(v2 + 64);
      *(v53 + 88) = sub_1B99ECC2C;
      *(v53 + 96) = v42;
      *(v53 + 104) = sub_1B99ECC30;
      *(v53 + 112) = v46;
      *(v53 + 120) = v50;
      *(v53 + 128) = v51;
      v64 = v52;
      v65 = sub_1B99E4394();
      v63[0] = v53;
      sub_1B99EC7F8(v73, v61);
      sub_1B99EC7F8(v73, v61);
      sub_1B99A183C(&v83, v61, &qword_1EBBDD670, &qword_1B99F97E0);
      sub_1B99A183C(&v82, v61, &qword_1EBBDD678, &qword_1B99F97E8);
      sub_1B99EC830(v80, v61);

      sub_1B99F3894();
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    sub_1B99F3864();
    if (v4 ^ 1 | v3)
    {
      v34 = v34 * 1000.0;
    }

    v56 = *(v1 + 88);
    v57 = *(v1 + 96);
    v62 = MEMORY[0x1E69E63B0];
    *v61 = v34;
    v56(v61);
  }

  else
  {
    v26 = v4;
    v27 = sub_1B99F3844();
    v28 = [v26 stringFromDate_];

    v29 = sub_1B99F3C24();
    v31 = v30;

    v32 = *(v2 + 88);
    v33 = *(v2 + 96);
    v62 = MEMORY[0x1E69E6158];
    v61[0] = v29;
    v61[1] = v31;
    v32(v61);
    sub_1B99CA900(v4, v3, 0);
  }

  return sub_1B99AC2C8(v61);
}

uint64_t sub_1B99EBAC8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  memset(v5, 0, sizeof(v5));
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v4[0] = swift_allocObject();
  sub_1B99A183C(v5, v4[0] + 16, &qword_1EBBDC658, &qword_1B99F5F40);
  v2(v4);
  sub_1B99AC2C8(v5);
  return sub_1B99AC2C8(v4);
}

uint64_t sub_1B99EBB84(char a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v6 = MEMORY[0x1E69E6370];
  v5[0] = a1;
  v2(v5);
  return sub_1B99AC2C8(v5);
}

uint64_t sub_1B99EBBD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  v6[3] = MEMORY[0x1E69E6158];
  v6[0] = a1;
  v6[1] = a2;

  v3(v6);
  return sub_1B99AC2C8(v6);
}

uint64_t sub_1B99EBC34(double a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v5[3] = MEMORY[0x1E69E63B0];
  *v5 = a1;
  v2(v5);
  return sub_1B99AC2C8(v5);
}

uint64_t sub_1B99EBC88(float a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v6 = MEMORY[0x1E69E6448];
  *v5 = a1;
  v2(v5);
  return sub_1B99AC2C8(v5);
}

uint64_t sub_1B99EBDD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  v9 = a4;
  v8[0] = a1;
  v5(v8);
  return sub_1B99AC2C8(v8);
}

uint64_t sub_1B99EBE40(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  v9 = a4;
  v8[0] = a1;
  v5(v8);
  return sub_1B99AC2C8(v8);
}

uint64_t sub_1B99EBEAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  v9 = a4;
  v8[0] = a1;
  v5(v8);
  return sub_1B99AC2C8(v8);
}

uint64_t sub_1B99EBF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  v8[3] = a4;
  v8[0] = a1;
  v5(v8);
  return sub_1B99AC2C8(v8);
}

void *sub_1B99EBF94(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B99B2B78(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC8E8, &qword_1B99F6488);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_18AAAFoundationSwift17DictionaryEncoderC20DateEncodingStrategyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B99EC320()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1B99EC370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B99EC3B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B99EC42C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return v1();
}

unint64_t sub_1B99EC470()
{
  result = qword_1EBBDD5D0;
  if (!qword_1EBBDD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD5D0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1B99EC54C()
{
  result = qword_1EBBDD5D8;
  if (!qword_1EBBDD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD5D8);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}