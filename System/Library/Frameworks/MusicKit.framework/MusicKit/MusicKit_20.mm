uint64_t CloudEnhancedResourceIdentifier<A>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  CloudEnhancedResourceIdentifier<A>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_21738E394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  CloudEnhancedResourceIdentifier<A>.hash(into:)(v6, a2);
  return sub_217753238();
}

uint64_t sub_21738E430(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_2177528F8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21738E4B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 56) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 56) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(a1 + 1);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_21738E664(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 56) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v24 = (&a1[v12 + 56] & ~v12);
            if (v10 >= a2)
            {
              v28 = a2 + 1;
              v29 = &a1[v12 + 56] & ~v12;

              __swift_storeEnumTagSinglePayload(v29, v28, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v25 = ~(-1 << (8 * v14));
              }

              else
              {
                v25 = -1;
              }

              if (v14)
              {
                v26 = v25 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v27 = v14;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v14);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 40) = 0u;
            *(a1 + 24) = 0u;
            *(a1 + 8) = 0u;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_21738E96C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_21738EAE0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Track;
  a1[4] = &protocol witness table for Track;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_217275710(v1, v3 + 16);
}

uint64_t sub_21738EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a1;
  a4[4] = a2;
  v6 = swift_allocObject();
  *a4 = v6;

  return a3(v4, v6 + 16);
}

uint64_t _s8MusicKit0A14LibraryAddablePAAE9itemToAddAA0A4Item_pSgvg_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  a3[3] = a1;
  a3[4] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v8 = *(*(a1 - 8) + 16);

  return v8(boxed_opaque_existential_0, v3, a1);
}

uint64_t sub_21738ECC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    type metadata accessor for PartialMusicAsyncProperty();
    v2 = sub_217752418();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_21738ED8C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 9) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 9) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21738EED8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 9) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 9] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 9) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 9) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21738F0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *(a5 - 8);
  (*(v11 + 16))(a6);
  v12 = type metadata accessor for MusicAsyncPropertyRequest();
  *(a6 + v12[13]) = v9;
  *(a6 + v12[14]) = v10;
  type metadata accessor for PartialMusicAsyncProperty();
  OUTLINED_FUNCTION_25_6();
  v26 = sub_217752338();
  OUTLINED_FUNCTION_25_6();
  v25 = sub_217752338();
  OUTLINED_FUNCTION_25_6();
  v24 = sub_217752338();
  sub_217751DE8();
  v13 = sub_2177522A8();

  v23 = v13;
  OUTLINED_FUNCTION_60_11();
  if (v13 != sub_217752388())
  {
    do
    {
      OUTLINED_FUNCTION_60_11();
      v15 = sub_217752358();
      sub_2177522D8();
      if (v15)
      {
        v16 = *(a2 + 32 + 8 * v13);
      }

      else
      {
        OUTLINED_FUNCTION_1_5();
        v16 = sub_217752AC8();
      }

      sub_2177523E8();
      v17 = *(v16 + 96);
      v18 = *(v17 + 16);
      v19 = (v17 + 32);
      if (v9)
      {
        while (v18)
        {
          v20 = *v19++;
          --v18;
          if (v20 == 1)
          {
            goto LABEL_14;
          }
        }

        if (*(v16 + 64) >= 2u)
        {
          *(v16 + 48);
          *(v16 + 56);
        }
      }

      else
      {
        do
        {
          if (!v18)
          {
            break;
          }

          v21 = *v19++;
          --v18;
        }

        while ((v21 & 1) != 0);
      }

LABEL_14:
      OUTLINED_FUNCTION_25_6();
      sub_217752418();
      sub_2177523C8();
      OUTLINED_FUNCTION_60_11();
      v13 = v23;
    }

    while (v23 != sub_217752388());
  }

  result = (*(v11 + 8))(a1, a5);
  *(a6 + v12[15]) = v26;
  *(a6 + v12[16]) = v25;
  *(a6 + v12[17]) = v24;
  return result;
}

uint64_t sub_21738F380()
{
  OUTLINED_FUNCTION_10();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = *(v2 + 16);
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = sub_2177528F8();
  v1[13] = v7;
  v8 = *(v7 - 8);
  v1[14] = v8;
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_21738F884()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21738FC24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21738FF4C()
{
  v4 = *(v1 + 216);
  v5 = OUTLINED_FUNCTION_32_12();
  v3(v5);
  (v3)(v0, v2);

  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_217390034()
{
  v4 = *(v1 + 248);
  v5 = OUTLINED_FUNCTION_32_12();
  v3(v5);
  (v3)(v0, v2);

  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_21739011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[381] = v4;
  v5[380] = a4;
  v5[379] = a3;
  v5[378] = a2;
  v5[377] = a1;
  v6 = *(a4 + 16);
  v5[382] = v6;
  v7 = sub_2177528F8();
  v5[383] = v7;
  v8 = *(v7 - 8);
  v5[384] = v8;
  v9 = *(v8 + 64) + 15;
  v5[385] = swift_task_alloc();
  v5[386] = swift_task_alloc();
  v5[387] = swift_task_alloc();
  v5[388] = swift_task_alloc();
  v5[389] = swift_task_alloc();
  v5[390] = swift_task_alloc();
  v5[391] = swift_task_alloc();
  v5[392] = swift_task_alloc();
  v10 = *(v6 - 8);
  v5[393] = v10;
  v11 = *(v10 + 64) + 15;
  v5[394] = swift_task_alloc();
  v5[395] = swift_task_alloc();
  v5[396] = swift_task_alloc();
  v5[397] = swift_task_alloc();
  v5[398] = swift_task_alloc();
  v5[399] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2173902D8, 0, 0);
}

uint64_t sub_2173902D8()
{
  v162 = v0;
  v3 = *(v0 + 3192);
  v4 = *(v0 + 3144);
  v5 = *(v0 + 3056);
  v6 = *(v0 + 3048);
  v7 = *(v4 + 16);
  *(v0 + 3200) = v7;
  *(v0 + 3208) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB279B0, &unk_21776B580);
  OUTLINED_FUNCTION_17_13();
  if (swift_dynamicCast())
  {
    sub_2171F3F0C((v0 + 2944), v0 + 2904);
    OUTLINED_FUNCTION_65_9();
    v8 = *(v5 + 8);
    v9 = OUTLINED_FUNCTION_20_6();
    v10(v9);
    v11 = __dst[0];
    OUTLINED_FUNCTION_65_9();
    v12 = *(v5 + 16);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = v14(v13);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2904));
  }

  else
  {
    *(v0 + 2976) = 0;
    *(v0 + 2944) = 0u;
    *(v0 + 2960) = 0u;
    sub_2173919B4(v0 + 2944);
    v15 = 0;
    v11 = 0;
  }

  *(v0 + 369) = v11;
  v16 = *(v0 + 3128);
  v17 = *(v0 + 3056);
  v18 = *(v0 + 3024);
  __swift_storeEnumTagSinglePayload(*(v0 + 3136), 1, 1, v17);
  v19 = OUTLINED_FUNCTION_181();
  __swift_storeEnumTagSinglePayload(v19, v20, 1, v17);
  *(v0 + 2984) = v18;
  v21 = type metadata accessor for PartialMusicAsyncProperty();
  OUTLINED_FUNCTION_25_6();
  *(v0 + 3216) = sub_217752418();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  *(v0 + 3224) = WitnessTable;
  if ((sub_217752738() & 1) == 0 || (*(v0 + 3008) = *(v0 + 3032), v23 = (v0 + 3008), (sub_217752738() & 1) == 0))
  {
    v2 = (v0 + 2992);
    v24 = *(v0 + 3040);
    *(v0 + 2992) = *(v0 + 3024);
    v25 = *(v0 + 3056);
    v23 = *(v0 + 3048);
    switch(v11)
    {
      case 1:
        v27 = *(v24 + 24);
        sub_217751DE8();
        v42 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v42, v43, v44);
        v1 = *(v0 + 1856);
        WitnessTable = *(v0 + 1864);
        sub_217751DE8();
        sub_217269F50(v0 + 1816);
        if (WitnessTable)
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      case 2:
        v27 = *(v24 + 24);
        sub_217751DE8();
        v35 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v35, v36, v37);
        v1 = *(v0 + 1472);
        WitnessTable = *(v0 + 1480);
        sub_217751DE8();
        v34 = v0 + 1456;
        goto LABEL_15;
      case 3:
        v27 = *(v24 + 24);
        sub_217751DE8();
        v38 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v38, v39, v40);
        v1 = *(v0 + 1112);
        WitnessTable = *(v0 + 1120);
        sub_217751DE8();
        v34 = v0 + 1096;
        goto LABEL_15;
      case 4:
        v27 = *(v24 + 24);
        sub_217751DE8();
        v31 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v31, v32, v33);
        v1 = *(v0 + 32);
        WitnessTable = *(v0 + 40);
        sub_217751DE8();
        v34 = v0 + 16;
LABEL_15:
        sub_217269F50(v34);
        if (WitnessTable)
        {
          goto LABEL_18;
        }

        v41 = *(v0 + 3024);
        goto LABEL_25;
      default:
        v26 = *(v0 + 3032);
        v27 = *(v24 + 24);
        sub_217751DE8();
        v28 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v28, v29, v30);
        v23 = *(v0 + 2192);
        WitnessTable = *(v0 + 2200);
        sub_217751DE8();
        sub_217269F50(v0 + 2176);
        if (WitnessTable)
        {
          v1 = v23;
        }

        else
        {
          v1 = 0;
        }

        sub_217752368();
        if (WitnessTable)
        {
LABEL_18:
          *(v0 + 3232) = WitnessTable;
          v45 = *(v0 + 3056);
          v46 = *(v0 + 3048);
          v47 = *(v0 + 3040);
          MusicItem.identifierSet.getter(v45, v27, v0 + 736);
          memcpy(__dst, (v0 + 736), sizeof(__dst));
          LODWORD(v46) = MusicIdentifierSet.isLibraryResource.getter();
          sub_217269F50(v0 + 736);
          v48 = 25705;
          if ((v46 & v15 & (v11 == 0)) != 0)
          {
            v48 = 0x656C617669757165;
            v49 = 0xEB0000000073746ELL;
          }

          else
          {
            v49 = 0xE200000000000000;
          }

          *__dst = v48;
          *&__dst[8] = v49;
          v161[0] = v11;
          v50 = *(v47 + 40);
          sub_217751DE8();
          sub_217751DE8();
          sub_2172B8588(__dst, v1, WitnessTable, v161, 1, v45, v27, v50, v0 + 2720);
          v51 = *(v0 + 2992);
          v52 = *(v0 + 2736);

          *(v0 + 2736) = v51;
          v53 = swift_task_alloc();
          *(v0 + 3240) = v53;
          OUTLINED_FUNCTION_25_6();
          *(v0 + 3248) = type metadata accessor for MusicCatalogResourceRequest();
          *v53 = v0;
          v53[1] = sub_217390A68;
          v54 = *(v0 + 3120);
          OUTLINED_FUNCTION_46_2();

          return sub_2172C0954();
        }

LABEL_24:
        v57 = *v2;
LABEL_25:

        break;
    }
  }

  if (!*(v0 + 369))
  {
    goto LABEL_29;
  }

  if (OUTLINED_FUNCTION_58_8())
  {
    goto LABEL_29;
  }

  v23 = *(v0 + 3136);
  v58 = *(v0 + 3056);
  v59 = OUTLINED_FUNCTION_181();
  if (__swift_getEnumTagSinglePayload(v59, v60, v58))
  {
    goto LABEL_29;
  }

  v115 = OUTLINED_FUNCTION_40_12();
  v117 = v116(v115);
  OUTLINED_FUNCTION_59_4(v117, v118, v119, v120, v121, v122, v123, v124, v141, v143, v145);
  v126 = *(v1 + 8);
  v125 = v1 + 8;
  v127 = OUTLINED_FUNCTION_89_4();
  v128(v127);
  memcpy((v0 + 376), __dst, 0x161uLL);
  v23 = *(v0 + 392);
  v129 = *(v0 + 400);
  sub_217751DE8();
  v130 = sub_217269F50(v0 + 376);
  if (!v129)
  {
LABEL_29:
    v61 = OUTLINED_FUNCTION_14_19();
    v21(v61);
    OUTLINED_FUNCTION_0_36();
    if (!v65)
    {
      v62 = OUTLINED_FUNCTION_5_28();
      v63(v62);
      v64 = OUTLINED_FUNCTION_7_23();
      v21(v64);
      OUTLINED_FUNCTION_2_36();
      if (!v65)
      {
        v79 = OUTLINED_FUNCTION_3_35();
        v81 = v80(v79);
        OUTLINED_FUNCTION_30_16(v81, v82, v83, v84, v85, v86, v87, v88, v141, v143, v145, v147, v149, v151, v153, v155);
        v89 = OUTLINED_FUNCTION_54_9();
        v23(v89);
        v90 = (v23)(v15, v21);
        v98 = OUTLINED_FUNCTION_53_10(v90, v91, v92, v93, v94, v95, v96, v97, v142, v144, v146, v148, v150, v152, v154, v156, v157, v158);
        v99(v98);
        goto LABEL_44;
      }

      v66 = OUTLINED_FUNCTION_23_20();
      v67(v66);
    }

    v68 = OUTLINED_FUNCTION_8_26();
    (v2)(v68);
    v69 = OUTLINED_FUNCTION_7_23();
    v21(v69);
    OUTLINED_FUNCTION_2_36();
    if (v65)
    {
      v70 = OUTLINED_FUNCTION_13_17();
      v71(v70);
      OUTLINED_FUNCTION_0_36();
      if (v65)
      {
        v72 = OUTLINED_FUNCTION_12_16();
        v73(v72);
        OUTLINED_FUNCTION_0_36();
        if (!v65)
        {
          v74 = *(v0 + 3080);
          OUTLINED_FUNCTION_16_20();
          v2();
        }
      }

      else
      {
        v100 = OUTLINED_FUNCTION_28_14();
        v101(v100);
      }

      v102 = *(v0 + 3088);
      v103 = *(v0 + 3056);
      v104 = OUTLINED_FUNCTION_181();
      if (__swift_getEnumTagSinglePayload(v104, v105, v106) != 1)
      {
        OUTLINED_FUNCTION_16_20();
        (v2)(v102);
      }
    }

    else
    {
      v75 = OUTLINED_FUNCTION_11_25();
      (v2)(v75);
      v76 = *(WitnessTable + 32);
      v77 = OUTLINED_FUNCTION_17_13();
      v78(v77);
    }

    v107 = OUTLINED_FUNCTION_9_21();
    v108(v107);
LABEL_44:
    v109 = OUTLINED_FUNCTION_1_32();
    v110(v109);
    v111 = OUTLINED_FUNCTION_34_12();
    v112(v111);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_29_15(v130, v131, v132, v133, v134, v135, v136, v137, v141, v143, v145, v147, v149, v151, v153, v155, v157, v158, v159, *__dst, *&__dst[8]);
  v138 = *(v0 + 2552);
  sub_217751DE8();

  *(v0 + 2552) = v125;
  v139 = swift_task_alloc();
  *(v0 + 3272) = OUTLINED_FUNCTION_55_7(v139);
  *v129 = v0;
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_46_2();

  return sub_2172C045C();
}

uint64_t sub_217390A68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 3240);
  v6 = *(v4 + 3232);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v9 + 3256) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_217390B7C()
{
  v112 = v1;
  v6 = *(v1 + 3248);
  (*(*(v1 + 3072) + 40))(*(v1 + 3136), *(v1 + 3120), *(v1 + 3064));
  OUTLINED_FUNCTION_58();
  (*(v7 + 8))(v1 + 2720, v6);
  if (!*(v1 + 369))
  {
    goto LABEL_4;
  }

  if (OUTLINED_FUNCTION_58_8())
  {
    goto LABEL_4;
  }

  v6 = *(v1 + 3136);
  v8 = *(v1 + 3056);
  v9 = OUTLINED_FUNCTION_181();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8))
  {
    goto LABEL_4;
  }

  v65 = OUTLINED_FUNCTION_40_12();
  v67 = v66(v65);
  OUTLINED_FUNCTION_59_4(v67, v68, v69, v70, v71, v72, v73, v74, v92, v94, v96);
  v76 = *(v3 + 8);
  v75 = v3 + 8;
  v77 = OUTLINED_FUNCTION_89_4();
  v78(v77);
  memcpy((v1 + 376), __src, 0x161uLL);
  v6 = *(v1 + 392);
  v79 = *(v1 + 400);
  sub_217751DE8();
  v80 = sub_217269F50(v1 + 376);
  if (!v79)
  {
LABEL_4:
    v11 = OUTLINED_FUNCTION_14_19();
    v4(v11);
    OUTLINED_FUNCTION_0_36();
    if (!v15)
    {
      v12 = OUTLINED_FUNCTION_5_28();
      v13(v12);
      v14 = OUTLINED_FUNCTION_7_23();
      v4(v14);
      OUTLINED_FUNCTION_2_36();
      if (!v15)
      {
        v29 = OUTLINED_FUNCTION_3_35();
        v31 = v30(v29);
        OUTLINED_FUNCTION_30_16(v31, v32, v33, v34, v35, v36, v37, v38, v92, v94, v96, v98, v100, v102, v104, v106);
        v39 = OUTLINED_FUNCTION_54_9();
        v6(v39);
        v40 = (v6)(v0, v4);
        v48 = OUTLINED_FUNCTION_53_10(v40, v41, v42, v43, v44, v45, v46, v47, v93, v95, v97, v99, v101, v103, v105, v107, v108, v109);
        v49(v48);
        goto LABEL_19;
      }

      v16 = OUTLINED_FUNCTION_23_20();
      v17(v16);
    }

    v18 = OUTLINED_FUNCTION_8_26();
    (v5)(v18);
    v19 = OUTLINED_FUNCTION_7_23();
    v4(v19);
    OUTLINED_FUNCTION_2_36();
    if (v15)
    {
      v20 = OUTLINED_FUNCTION_13_17();
      v21(v20);
      OUTLINED_FUNCTION_0_36();
      if (v15)
      {
        v22 = OUTLINED_FUNCTION_12_16();
        v23(v22);
        OUTLINED_FUNCTION_0_36();
        if (!v15)
        {
          v24 = *(v1 + 3080);
          OUTLINED_FUNCTION_16_20();
          v5();
        }
      }

      else
      {
        v50 = OUTLINED_FUNCTION_28_14();
        v51(v50);
      }

      v52 = *(v1 + 3088);
      v53 = *(v1 + 3056);
      v54 = OUTLINED_FUNCTION_181();
      if (__swift_getEnumTagSinglePayload(v54, v55, v56) != 1)
      {
        OUTLINED_FUNCTION_16_20();
        (v5)(v52);
      }
    }

    else
    {
      v25 = OUTLINED_FUNCTION_11_25();
      (v5)(v25);
      v26 = *(v2 + 32);
      v27 = OUTLINED_FUNCTION_17_13();
      v28(v27);
    }

    v57 = OUTLINED_FUNCTION_9_21();
    v58(v57);
LABEL_19:
    v59 = OUTLINED_FUNCTION_1_32();
    v60(v59);
    v61 = OUTLINED_FUNCTION_34_12();
    v62(v61);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_29_15(v80, v81, v82, v83, v84, v85, v86, v87, v92, v94, v96, v98, v100, v102, v104, v106, v108, v109, v110, __src[0], __src[1]);
  v88 = *(v1 + 2552);
  sub_217751DE8();

  *(v1 + 2552) = v75;
  v89 = swift_task_alloc();
  *(v1 + 3272) = OUTLINED_FUNCTION_55_7(v89);
  *v79 = v1;
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_46_2();

  return sub_2172C045C();
}

uint64_t sub_217390F20()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 3264);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 3280) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217391018()
{
  v2 = v0[409];
  v3 = v0[391];
  v4 = v0[389];
  v5 = v0[384];
  v6 = v0[383];
  v7 = v0[382];
  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_145_0();
  v10(v9);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  v12 = *(v5 + 32);
  v11 = (v5 + 32);
  v13 = OUTLINED_FUNCTION_20_6();
  v14(v13);
  OUTLINED_FUNCTION_58();
  (*(v15 + 8))(v0 + 317, v2);
  v16 = OUTLINED_FUNCTION_14_19();
  v11(v16);
  OUTLINED_FUNCTION_0_36();
  if (!v20)
  {
    v17 = OUTLINED_FUNCTION_5_28();
    v18(v17);
    v19 = OUTLINED_FUNCTION_7_23();
    v11(v19);
    OUTLINED_FUNCTION_2_36();
    if (!v20)
    {
      v34 = OUTLINED_FUNCTION_3_35();
      v36 = v35(v34);
      OUTLINED_FUNCTION_30_16(v36, v37, v38, v39, v40, v41, v42, v43, v70, v72, v74, v76, v78, v80, v82, v84);
      v44 = OUTLINED_FUNCTION_54_9();
      v2(v44);
      v45 = (v2)(v3, v11);
      v53 = OUTLINED_FUNCTION_53_10(v45, v46, v47, v48, v49, v50, v51, v52, v71, v73, v75, v77, v79, v81, v83, v85, v86, v87);
      v54(v53);
      goto LABEL_16;
    }

    v21 = OUTLINED_FUNCTION_23_20();
    v22(v21);
  }

  v23 = OUTLINED_FUNCTION_8_26();
  (v1)(v23);
  v24 = OUTLINED_FUNCTION_7_23();
  v11(v24);
  OUTLINED_FUNCTION_2_36();
  if (v20)
  {
    v25 = OUTLINED_FUNCTION_13_17();
    v26(v25);
    OUTLINED_FUNCTION_0_36();
    if (v20)
    {
      v27 = OUTLINED_FUNCTION_12_16();
      v28(v27);
      OUTLINED_FUNCTION_0_36();
      if (!v20)
      {
        v29 = v0[385];
        OUTLINED_FUNCTION_16_20();
        v1();
      }
    }

    else
    {
      v55 = OUTLINED_FUNCTION_28_14();
      v56(v55);
    }

    v57 = v0[386];
    v58 = v0[382];
    v59 = OUTLINED_FUNCTION_181();
    if (__swift_getEnumTagSinglePayload(v59, v60, v61) != 1)
    {
      OUTLINED_FUNCTION_16_20();
      (v1)(v57);
    }
  }

  else
  {
    v30 = OUTLINED_FUNCTION_11_25();
    (v1)(v30);
    v31 = *(v6 + 32);
    v32 = OUTLINED_FUNCTION_17_13();
    v33(v32);
  }

  v62 = OUTLINED_FUNCTION_9_21();
  v63(v62);
LABEL_16:
  v64 = OUTLINED_FUNCTION_1_32();
  v65(v64);
  v66 = OUTLINED_FUNCTION_34_12();
  v67(v66);

  OUTLINED_FUNCTION_0_2();

  return v68();
}

uint64_t sub_217391318()
{
  v2 = *(v0 + 3248);
  v3 = OUTLINED_FUNCTION_63_10();
  v1(v3);
  OUTLINED_FUNCTION_58();
  (*(v4 + 8))(v0 + 2720, v2);
  v5 = *(v0 + 3256);
  v6 = OUTLINED_FUNCTION_18_18();
  v1(v6);

  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_217391450()
{
  v2 = *(v0 + 3272);
  v3 = OUTLINED_FUNCTION_63_10();
  v1(v3);
  OUTLINED_FUNCTION_58();
  (*(v4 + 8))(v0 + 2536, v2);
  v5 = *(v0 + 3280);
  v6 = OUTLINED_FUNCTION_18_18();
  v1(v6);

  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_217391588(uint64_t a1, uint64_t a2, void *a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = a3[2];
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = a3[3];
  v4[10] = a3[4];
  v9 = type metadata accessor for MusicLibraryResourceRequest();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2173916C0, 0, 0);
}

uint64_t sub_2173916C0()
{
  v19 = v0;
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = *(v0[7] + 16);
  v10 = OUTLINED_FUNCTION_60_11();
  v11(v10);
  v18 = *(v6 + *(v8 + 56));
  sub_217751DE8();
  sub_2176C892C(v4, v7, &v18, v5, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[14] = v12;
  *v12 = v13;
  v12[1] = sub_2173917D8;
  v14 = v0[13];
  v15 = v0[11];
  v16 = v0[2];

  return sub_2176C8C40(v16, v15);
}

uint64_t sub_2173917D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173918D0()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_56_8();
  v1(v0);

  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_217391940()
{
  OUTLINED_FUNCTION_10();
  v1 = OUTLINED_FUNCTION_56_8();
  v2(v1);

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 120);

  return v3();
}

uint64_t sub_2173919B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A00, &unk_217765430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_25()
{
  v1 = v0[394];
  v2 = v0[393];
  result = v0[391];
  v4 = v0[386];
  v5 = v0[383];
  v6 = v0[382];
  v7 = v0[384] + 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_19()
{
  v1 = v0[392];
  v2 = v0[383];
  v3 = v0[382];
  v4 = *(v0[384] + 16);
  return v0[388];
}

uint64_t OUTLINED_FUNCTION_18_18()
{
  v1 = v0[399];
  v2 = v0[398];
  v3 = v0[397];
  v4 = v0[396];
  v5 = v0[395];
  v6 = v0[394];
  v10 = v0[391];
  v11 = v0[390];
  v12 = v0[389];
  v13 = v0[388];
  v7 = v0[387];
  v14 = v0[386];
  v15 = v0[385];
  v8 = v0[383];
  return v0[392];
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *(v17 + 24);

  return sub_21763F724(a14, v14, v16, v15);
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1)
{
  *(a1 + 8) = sub_21738FC24;
  result = v1[17];
  v3 = v1[6];
  v4 = v1[7];
  return result;
}

double OUTLINED_FUNCTION_29_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v27 = *(v24 + 369);
  v28 = *(v24 + 3056);
  v29 = *(v24 + 3040);
  v30 = *(v24 + 3032);
  a20 = 25705;
  a21 = 0xE200000000000000;
  *(v25 - 81) = v27;
  v31 = *(v29 + 40);

  return sub_2172B8588(&a20, v22, v23, (v25 - 81), 1, v28, v21, v31, v24 + 2536);
}

uint64_t OUTLINED_FUNCTION_40_12()
{
  v1 = v0[401];
  v2 = v0[400];
  v3 = v0[393];
  v4 = v0[380];
  return v0[398];
}

uint64_t OUTLINED_FUNCTION_49_9()
{
  v2 = v1[13];
  v3 = v1[8];
  v4 = *(v1[14] + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_52_11()
{
  result = v0[16];
  v2 = v0[13];
  v3 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_7(uint64_t a1)
{
  *(v1 + 3264) = a1;

  return type metadata accessor for MusicCatalogResourceRequest();
}

uint64_t OUTLINED_FUNCTION_56_8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v0[12] + 8);
  return v0[13];
}

uint64_t OUTLINED_FUNCTION_58_8()
{
  v2 = v0[403];
  v3 = v0[402];
  v0[375] = v0[379];

  return sub_217752738();
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = *(v11 + 24);

  return MusicItem.identifierSet.getter(v12, v14, va);
}

uint64_t OUTLINED_FUNCTION_63_10()
{
  result = v0[391];
  v2 = v0[383];
  v3 = *(v0[384] + 8);
  return result;
}

void *OUTLINED_FUNCTION_65_9()
{
  v2 = v0[367];
  v3 = v0[366];

  return __swift_project_boxed_opaque_existential_1(v0 + 363, v3);
}

uint64_t sub_217391D18(uint64_t a1)
{
  result = sub_217391E58(&qword_280BE2248, type metadata accessor for MusicKit_SoftLinking_MPModelSongVariants);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217391D70(uint64_t a1)
{
  result = sub_217391E58(&unk_280BE2290, type metadata accessor for MusicKit_SoftLinking_MPModelSongOptions);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217391E58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217391EA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643B0;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A20, &qword_217765678);
  swift_allocObject();
  *(v0 + 32) = sub_2173836F4(KeyPath);
  v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A28, &qword_2177656A8);
  swift_allocObject();
  *(v0 + 40) = sub_2173836F4(v2);
  v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A30, &qword_2177656D8);
  swift_allocObject();
  *(v0 + 48) = sub_2173836F4(v3);
  v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A38, &qword_217765708);
  swift_allocObject();
  *(v0 + 56) = sub_217383700(v4);
  v5 = swift_getKeyPath();
  v6 = sub_217382930(v5, 33, 25);

  *(v0 + 64) = v6;
  v7 = swift_getKeyPath();
  v8 = sub_217382E24(v7, 33, 29, 11);

  *(v0 + 72) = v8;
  v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26730, &unk_217764718);
  swift_allocObject();
  *(v0 + 80) = sub_21738340C(v9, &unk_28295B908);
  swift_getKeyPath();
  v10 = sub_217382754();

  *(v0 + 88) = v10;
  qword_280C01FA8 = v0;
  return result;
}

uint64_t sub_2173920DC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_217392134(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_21739218C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_2173921E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21739223C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_217392294@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2173922EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_217392344@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_21739239C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217765440;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A18, &qword_2177654E0);
  swift_allocObject();
  *(v0 + 32) = sub_2173836F8(KeyPath, 33, 25);
  v2 = swift_getKeyPath();
  swift_allocObject();
  *(v0 + 40) = sub_2173836FC(v2, 33, 29, 11);
  v3 = swift_getKeyPath();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &unk_28295B978;
  v4[4] = 0;
  v4[5] = 0;
  *(v0 + 48) = v4;
  v5 = swift_getKeyPath();
  swift_allocObject();
  *(v0 + 56) = sub_217383704(v5, 6);
  v6 = swift_getKeyPath();
  swift_allocObject();
  *(v0 + 64) = sub_217383704(v6, 7);
  v7 = swift_getKeyPath();
  swift_allocObject();
  *(v0 + 72) = sub_217383704(v7, 23);
  v8 = swift_getKeyPath();
  swift_allocObject();
  *(v0 + 80) = sub_217383704(v8, 24);
  v9 = swift_getKeyPath();
  swift_allocObject();
  *(v0 + 88) = sub_217383704(v9, 25);
  v10 = swift_getKeyPath();
  swift_allocObject();
  *(v0 + 96) = sub_217383704(v10, 28);
  v11 = swift_getKeyPath();
  swift_allocObject();
  result = sub_217383704(v11, 29);
  *(v0 + 104) = result;
  qword_27CB8A290 = v0;
  return result;
}

uint64_t sub_217392644@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21739269C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2173926F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21739274C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2173927AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21739280C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_217392864(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_2173928BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21739291C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 72))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_217392974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 80))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

id sub_2173929D4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MusicKit_SoftLinking_MPModelSongKind);

  return [v3 initWithVariants:1 options:a2];
}

uint64_t sub_217392A20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, &unk_217775A50);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    v2 = qword_280BE9918;

    if (v2 != -1)
    {
      swift_once();
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280C02960, v1))
    {
      goto LABEL_8;
    }

    v3 = qword_280BE9880;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9888, v1);

    if (v4)
    {
      goto LABEL_8;
    }

    v7 = qword_280BE9738;

    if (v7 != -1)
    {
      OUTLINED_FUNCTION_1_33();
    }

    v8 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9740, v1);

    if (v8)
    {
      goto LABEL_8;
    }

    v9 = qword_280BE9710;

    if (v9 != -1)
    {
      OUTLINED_FUNCTION_0_37();
    }

    v10 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9718, v1);

    if (v10)
    {
      goto LABEL_8;
    }

    v11 = qword_280BE9720;

    if (v11 != -1)
    {
      OUTLINED_FUNCTION_4_39();
    }

    v12 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9728, v1);

    if (v12)
    {
LABEL_8:
      v5 = Song.LegacyModelSongPropertyKey.rawValue.getter();
    }

    else
    {

      return 0;
    }

    return v5;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177AC4B0);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = OUTLINED_FUNCTION_5_29();
    __break(1u);
  }

  return result;
}

uint64_t sub_217392CE4@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, &unk_217775A50);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = qword_280BE9738;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_1_33();
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280BE9740, v3))
    {

      v6 = 0;
    }

    else
    {
      v7 = qword_280BE9710;

      if (v7 != -1)
      {
        OUTLINED_FUNCTION_0_37();
      }

      v8 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9718, v3);

      if (v8)
      {

        v6 = 34;
      }

      else
      {
        if (qword_280BE9720 != -1)
        {
          OUTLINED_FUNCTION_4_39();
        }

        v9 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9728, v3);

        if (v9)
        {
          v6 = 8;
        }

        else
        {
          v6 = 34;
        }
      }
    }

    *a1 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    v10 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v10, 0xE900000000000020);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000018, 0x80000002177AC460);
    result = OUTLINED_FUNCTION_5_29();
    __break(1u);
  }

  return result;
}

uint64_t sub_217392EDC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 2216) = v3;
  *(v4 + 2208) = a2;
  *(v4 + 2200) = a1;
  *(v4 + 369) = *a3;
  return MEMORY[0x2822009F8](sub_217392F0C, 0, 0);
}

uint64_t sub_217392F0C()
{
  v1 = *(v0 + 2208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, &unk_217775A50);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    v15 = (v0 + 2168);
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 2168) = v25;
    v16 = (v0 + 2176);
    *(v0 + 2176) = v26;
    v17 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v17, 0xE900000000000020);
    *(v0 + 2192) = v1;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000018, 0x80000002177AC460);
LABEL_12:
    v19 = *v15;
    v20 = *v16;
    return OUTLINED_FUNCTION_5_29();
  }

  v3 = v2;
  v4 = qword_280BE9710;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  if ((static AnyMusicProperty.== infix(_:_:)(qword_280BE9718, v3) & 1) == 0)
  {
    v15 = (v0 + 2152);
    v18 = *(v0 + 2208);
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 2152) = v25;
    v16 = (v0 + 2160);
    *(v0 + 2160) = v26;
    MEMORY[0x21CEA23B0](0xD000000000000027, 0x80000002177AC480);
    *(v0 + 2184) = v18;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    goto LABEL_12;
  }

  *(v0 + 1040) = 0;
  *(v0 + 1008) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 2224) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_217759C00;
  if (qword_280BE9738 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v6 = *(v0 + 369);
  v7 = *(v0 + 2216);
  v8 = qword_280BE9740;
  *(v0 + 2232) = qword_280BE9740;
  *(v5 + 32) = v8;

  sub_217283AFC(v7, v0 + 1656);
  sub_217444C10(v0 + 1656, v5, 1, v6, v9, v10, v11, v12, v21, v22, v23, v24, v25);
  v13 = swift_task_alloc();
  *(v0 + 2240) = v13;
  *v13 = v0;
  v13[1] = sub_217393224;

  return sub_217446AEC(v0 + 1712);
}

uint64_t sub_217393224()
{
  OUTLINED_FUNCTION_10();
  v2 = *(*v1 + 2240);
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *(v5 + 2248) = v0;

  if (v0)
  {
    v6 = sub_2173938BC;
  }

  else
  {
    v6 = sub_21739332C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21739332C()
{
  v44 = v0;
  v1 = (v0 + 1488);
  v2 = *(v0 + 2232);
  sub_2171F06D8(v0 + 1344, &qword_27CB26A08, &qword_21776B250);
  sub_2176CA544(v2, v3, v4, v5, v6, v7, v8, v9, v39, v41, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19]);
  sub_217283B58(v0 + 1712);
  sub_217202078(v0 + 1048, v0 + 736, &qword_27CB25318, &qword_2177657C0);
  if (*(v0 + 824))
  {
    sub_2172CE9F8();
    sub_2171F06D8(v0 + 736, &qword_27CB25388, &unk_21775D410);
    if (*(v0 + 1496))
    {
      v10 = *(v0 + 2224);
      v11 = *(v0 + 1504);
      *(v0 + 1544) = *v1;
      *(v0 + 1560) = v11;
      *(v0 + 1576) = *(v0 + 1520);
      *(v0 + 1592) = *(v0 + 1536);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_217759C00;
      if (qword_280BE9430 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 369);
      v14 = qword_280BE9438;
      *(v0 + 2256) = qword_280BE9438;
      *(v12 + 32) = v14;

      sub_21725CF0C(v0 + 1544, v0 + 1824);
      sub_217444C50(v0 + 1824, v12, 1, v13, v15, v16, v17, v18, v40, v42, __src[0], __src[1], __src[2]);
      v19 = swift_task_alloc();
      *(v0 + 2264) = v19;
      *v19 = v0;
      v19[1] = sub_21739394C;

      return sub_2174473A4(v0 + 1768);
    }
  }

  else
  {
    sub_2171F06D8(v0 + 736, &qword_27CB25318, &qword_2177657C0);
    *v1 = 0u;
    *(v0 + 1504) = 0u;
    *(v0 + 1520) = 0u;
    *(v0 + 1536) = 0;
  }

  v21 = v0 + 1152;
  sub_2171F06D8(v0 + 1488, &unk_27CB275E0, &qword_2177589D0);
  if (qword_280BE8358 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v22 = *(v0 + 2216);
  v23 = sub_217751AF8();
  __swift_project_value_buffer(v23, qword_280C02570);
  sub_217283AFC(v22, v0 + 1600);
  sub_217283AFC(v22, v0 + 1432);
  v24 = sub_217751AD8();
  v25 = sub_217752808();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    __src[45] = swift_slowAlloc();
    *v26 = 136446466;
    Song.description.getter();
    OUTLINED_FUNCTION_12_17();
    sub_217283B58(v0 + 1600);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_23();

    *(v26 + 4) = v0 + 1600;
    *(v26 + 12) = 2082;
    *(v0 + 2016) = &type metadata for Song;
    *(v0 + 2024) = &protocol witness table for Song;
    v27 = swift_allocObject();
    *(v0 + 1992) = v27;
    sub_217283AFC(v0 + 1432, v27 + 16);
    v28 = __swift_project_boxed_opaque_existential_1((v0 + 1992), &type metadata for Song);
    sub_21729C5E8((v28 + 2), v0 + 2032);
    v29 = *(v0 + 2064);
    __swift_project_boxed_opaque_existential_1((v0 + 2032), *(v0 + 2056));
    v30 = *(v29 + 24);
    v31 = OUTLINED_FUNCTION_6_23();
    v32(v31, v29);
    sub_21729C644(v0 + 2032);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1992));
    memcpy((v0 + 16), __src, 0x161uLL);
    sub_217751FA8();
    OUTLINED_FUNCTION_12_17();
    sub_217283B58(v0 + 1432);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_23();

    *(v26 + 14) = &type metadata for Song;
    OUTLINED_FUNCTION_13_18(&dword_2171EE000, v33, v34, "Unable to resolve <Song, Artist> relationship because no albums were found for %{public}s [%{public}s]");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  else
  {

    sub_217283B58(v0 + 1432);
    sub_217283B58(v0 + 1600);
  }

  v35 = *(v0 + 2200);
  sub_217202078(v0 + 944, v0 + 1152, &qword_27CB25310, &unk_21775D3D0);
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
  v35[4] = &protocol witness table for MusicItemCollection<A>;
  v36 = swift_allocObject();
  *v35 = v36;
  v37 = *(v0 + 2208);
  if (*(v0 + 1240))
  {
    memcpy((v36 + 16), (v0 + 1152), 0x68uLL);

    sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
    v21 = v0 + 944;
LABEL_17:
    sub_2171F06D8(v21, &qword_27CB25310, &unk_21775D3D0);
    goto LABEL_18;
  }

  sub_2174AA180();

  sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  if (*(v0 + 1240))
  {
    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_0();

  return v38();
}

uint64_t sub_2173938BC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2208);
  sub_2171F06D8(v0 + 1344, &qword_27CB26A08, &qword_21776B250);

  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  v2 = *(v0 + 2248);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21739394C()
{
  OUTLINED_FUNCTION_10();
  v2 = *(*v1 + 2264);
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *(v5 + 2272) = v0;

  if (v0)
  {
    v6 = sub_217393E68;
  }

  else
  {
    v6 = sub_217393A54;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_217393A54()
{
  v28 = v0;
  v1 = (v0 + 144);
  v2 = v0[282];
  sub_2171F06D8((v0 + 157), &qword_27CB26A10, &qword_21776B000);
  sub_2176CA7B4(v2, v3, v4, v5, v6, v7, v8, v9, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21]);
  sub_21725CE44((v0 + 221));
  if (v0[116])
  {
    sub_21725CE44((v0 + 193));
    sub_2171F06D8((v0 + 118), &qword_27CB25310, &unk_21775D3D0);
    memcpy(v0 + 118, v0 + 105, 0x68uLL);
  }

  else
  {
    sub_2171F06D8((v0 + 105), &qword_27CB25310, &unk_21775D3D0);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v10 = sub_217751AF8();
    __swift_project_value_buffer(v10, qword_280C02570);
    sub_21725CF0C((v0 + 193), (v0 + 235));
    sub_21725CF0C((v0 + 193), (v0 + 242));
    v11 = sub_217751AD8();
    v12 = sub_217752808();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27[45] = swift_slowAlloc();
      *v13 = 136446466;
      Album.description.getter();
      OUTLINED_FUNCTION_12_17();
      sub_21725CE44((v0 + 235));
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_23();

      *(v13 + 4) = v0 + 235;
      *(v13 + 12) = 2082;
      v0[262] = &type metadata for Album;
      v0[263] = &protocol witness table for Album;
      v14 = swift_allocObject();
      v0[259] = v14;
      sub_21725CF0C((v0 + 242), v14 + 16);
      v15 = __swift_project_boxed_opaque_existential_1(v0 + 259, &type metadata for Album);
      sub_21729C5E8((v15 + 2), (v0 + 264));
      v16 = v0[268];
      __swift_project_boxed_opaque_existential_1(v0 + 264, v0[267]);
      v17 = *(v16 + 24);
      v18 = OUTLINED_FUNCTION_6_23();
      v19(v18, v16);
      sub_21729C644((v0 + 264));
      __swift_destroy_boxed_opaque_existential_1(v0 + 259);
      memcpy(v0 + 47, v27, 0x161uLL);
      sub_217751FA8();
      OUTLINED_FUNCTION_12_17();
      sub_21725CE44((v0 + 242));
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_23();

      *(v13 + 14) = &type metadata for Album;
      OUTLINED_FUNCTION_13_18(&dword_2171EE000, v20, v21, "Unable to resolve <Song, Artist> relationship because no artists were found for %{public}s [%{public}s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_28_4();
    }

    else
    {

      sub_21725CE44((v0 + 242));
      sub_21725CE44((v0 + 235));
    }

    sub_21725CE44((v0 + 193));
  }

  v22 = v0[275];
  sub_217202078((v0 + 118), (v0 + 144), &qword_27CB25310, &unk_21775D3D0);
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
  v22[4] = &protocol witness table for MusicItemCollection<A>;
  v23 = swift_allocObject();
  *v22 = v23;
  v24 = v0[276];
  if (v0[155])
  {
    memcpy((v23 + 16), v0 + 144, 0x68uLL);

    sub_2171F06D8((v0 + 131), &qword_27CB25318, &qword_2177657C0);
    v1 = (v0 + 118);
  }

  else
  {
    sub_2174AA180();

    sub_2171F06D8((v0 + 131), &qword_27CB25318, &qword_2177657C0);
    sub_2171F06D8((v0 + 118), &qword_27CB25310, &unk_21775D3D0);
    if (!v0[155])
    {
      goto LABEL_13;
    }
  }

  sub_2171F06D8(v1, &qword_27CB25310, &unk_21775D3D0);
LABEL_13:
  OUTLINED_FUNCTION_20_0();

  return v25();
}

uint64_t sub_217393E68()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2208);
  sub_2171F06D8(v0 + 1256, &qword_27CB26A10, &qword_21776B000);

  sub_21725CE44(v0 + 1544);
  sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  v2 = *(v0 + 2272);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_217393F70(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21725B86C;

  return sub_217392EDC(a1, a2, a3);
}

void *sub_217394020(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

void MusicVideoPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v55 = v0;
  v56 = v1;
  v53 = v2;
  v54 = v3;
  v51 = v4;
  v52 = v5;
  v7 = v6;
  v9 = v8;
  memcpy(__dst, v10, sizeof(__dst));
  v11 = *v7;
  v12 = v7[1];
  v13 = *(v7 + 16);
  sub_2172A497C(__src);
  memcpy(v9, __src, 0x221uLL);
  sub_21733B708(v59);
  memcpy((v9 + 552), v59, 0x161uLL);
  *(v9 + 912) = 0;
  *(v9 + 920) = 0u;
  *(v9 + 936) = 1;
  v14 = type metadata accessor for MusicVideoPropertyProvider();
  *(v9 + 944) = 0u;
  v15 = v14[9];
  v16 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(v9 + v15, 1, 1, v16);
  v17 = v9 + v14[10];
  *(v17 + 4) = 0;
  *v17 = 512;
  *(v9 + v14[11]) = 2;
  OUTLINED_FUNCTION_44_9(v14[12]);
  *(v9 + v14[13]) = 0;
  v18 = (v9 + v14[14]);
  *v18 = xmmword_2177586D0;
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = 0u;
  *(v9 + v14[15]) = 0;
  *(v9 + v14[16]) = 0;
  *(v9 + v14[17]) = 2;
  *(v9 + v14[18]) = 2;
  *(v9 + v14[19]) = 2;
  v19 = OUTLINED_FUNCTION_55_8(v14[20]);
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
  *(v9 + v14[21]) = 2;
  OUTLINED_FUNCTION_182_3(v14[22]);
  OUTLINED_FUNCTION_182_3(v14[23]);
  *(v22 + 16) = 0;
  OUTLINED_FUNCTION_182_3(v14[24]);
  *(v23 + 16) = 1;
  memcpy((v9 + v14[25]), __src, 0x221uLL);
  *(v9 + v14[26]) = 0;
  v24 = v9 + v14[27];
  *(v24 + 112) = 0;
  *(v24 + 80) = 0u;
  *(v24 + 96) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *v24 = 0u;
  *(v9 + v14[28]) = 0;
  v25 = v14[29];
  v26 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(v9 + v25, 1, 1, v26);
  OUTLINED_FUNCTION_44_9(v14[30]);
  OUTLINED_FUNCTION_182_3(v14[31]);
  OUTLINED_FUNCTION_44_9(v14[32]);
  v27 = OUTLINED_FUNCTION_55_8(v14[33]);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v16);
  OUTLINED_FUNCTION_182_3(v14[34]);
  v30 = OUTLINED_FUNCTION_55_8(v14[35]);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  *(v9 + v14[36]) = 3;
  *(v9 + v14[37]) = 2;
  *(v9 + v14[38]) = 2;
  *(v9 + v14[39]) = 2;
  *(v9 + v14[40]) = 5;
  *(v9 + v14[41]) = 7;
  OUTLINED_FUNCTION_44_9(v14[42]);
  v33 = OUTLINED_FUNCTION_55_8(v14[43]);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v26);
  v36 = OUTLINED_FUNCTION_55_8(v14[44]);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v26);
  OUTLINED_FUNCTION_44_9(v14[45]);
  *(v9 + v14[46]) = 2;
  *(v9 + v14[47]) = 10;
  OUTLINED_FUNCTION_44_9(v14[48]);
  v39 = v9 + v14[49];
  *(v39 + 96) = 0;
  *(v39 + 64) = 0u;
  *(v39 + 80) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  OUTLINED_FUNCTION_2_3(v14[50], 0);
  OUTLINED_FUNCTION_2_3(v14[51], v40);
  OUTLINED_FUNCTION_2_3(v14[52], v41);
  OUTLINED_FUNCTION_2_3(v14[53], v42);
  OUTLINED_FUNCTION_2_3(v14[54], v43);
  OUTLINED_FUNCTION_2_3(v14[55], v44);
  OUTLINED_FUNCTION_2_3(v14[56], v45);
  *(v9 + v14[57]) = 0;
  v46 = v9 + v14[58];
  *v46 = 0;
  *(v46 + 8) = 1;
  *(v9 + v14[59]) = 0;
  if (qword_280BE5E60 != -1)
  {
    swift_once();
  }

  v47 = qword_280C01FE0;
  if (qword_280C01FE0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    OUTLINED_FUNCTION_148_3();
    v50 = sub_217752D28();

    v47 = v50;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v9 + v14[60]) = v47;
  v48 = (v9 + v14[63]);
  memcpy((v9 + v14[61]), __dst, 0x161uLL);
  v49 = v9 + v14[62];
  *v49 = v11;
  *(v49 + 8) = v12;
  *(v49 + 16) = v13;
  *v48 = v51;
  v48[1] = v52;
  *(v9 + v14[64]) = v53;
  *(v9 + v14[65]) = v54;
  *(v9 + v14[66]) = v55;
  *(v9 + v14[67]) = v56;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for MusicVideoPropertyProvider()
{
  result = qword_280BE7F68;
  if (!qword_280BE7F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicVideoPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *MusicVideoPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

uint64_t MusicVideoPropertyProvider.albumIdentifierSet.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_192_4(v5);
  memcpy(a1, (v1 + 552), 0x161uLL);
  return sub_21726A630(v5, v4, &qword_27CB25468, &qword_21775CD00);
}

void *MusicVideoPropertyProvider.albumIdentifierSet.setter(const void *a1)
{
  OUTLINED_FUNCTION_192_4(v4);
  sub_2171F0738(v4, &qword_27CB25468, &qword_21775CD00);
  return memcpy((v1 + 552), a1, 0x161uLL);
}

uint64_t MusicVideoPropertyProvider.albumTitle.getter()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 920);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicVideoPropertyProvider.albumTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 920);

  *(v2 + 912) = a1;
  *(v2 + 920) = a2;
  return result;
}

uint64_t MusicVideoPropertyProvider.albumTrackCount.getter()
{
  result = *(v0 + 928);
  v2 = *(v0 + 936);
  return result;
}

uint64_t MusicVideoPropertyProvider.albumTrackCount.setter(uint64_t result, char a2)
{
  *(v2 + 928) = result;
  *(v2 + 936) = a2 & 1;
  return result;
}

uint64_t MusicVideoPropertyProvider.artistName.getter()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 952);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicVideoPropertyProvider.artistName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 952);

  *(v2 + 944) = a1;
  *(v2 + 952) = a2;
  return result;
}

uint64_t MusicVideoPropertyProvider.catalogAsset.getter()
{
  result = OUTLINED_FUNCTION_130_6();
  v3 = (v1 + *(result + 40));
  v4 = *v3;
  *(v0 + 4) = *(v3 + 4);
  *v0 = v4;
  return result;
}

uint64_t MusicVideoPropertyProvider.catalogAsset.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for MusicVideoPropertyProvider();
  v5 = v1 + *(result + 40);
  *(v5 + 4) = v3;
  *v5 = v2;
  return result;
}

uint64_t MusicVideoPropertyProvider.contentRating.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_173_5(a1);
  *(v2 + *(result + 44)) = v1;
  return result;
}

void MusicVideoPropertyProvider.duration.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 48));
}

uint64_t MusicVideoPropertyProvider.editorialArtworks.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 52));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.editorialArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.editorialNotes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_130_6() + 56));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v9 = v2[2];
  v5 = v9;
  v10 = v4;
  *v0 = v8[0];
  v0[1] = v3;
  v0[2] = v5;
  v0[3] = v4;
  return sub_21726A630(v8, &v7, &qword_27CB24B70, &unk_217759460);
}

__n128 MusicVideoPropertyProvider.editorialNotes.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_118_7() + 56));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v8[2] = v2[2];
  v8[3] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

uint64_t MusicVideoPropertyProvider.editorialVideoArtworks.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 60));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.editorialVideoArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 60);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.genreNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 64));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.genreNames.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 64);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.has4K.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 68)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.hasHDR.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 72)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.homeSharingAsset.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_173_5(a1);
  *(v2 + *(result + 76)) = v1;
  return result;
}

uint64_t MusicVideoPropertyProvider.isPreview.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.isrc.getter()
{
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 88));
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicVideoPropertyProvider.isrc.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for MusicVideoPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 88));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t MusicVideoPropertyProvider.localFileAsset.getter()
{
  v0 = OUTLINED_FUNCTION_130_6();
  OUTLINED_FUNCTION_160_0(*(v0 + 92));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.localFileAsset.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = type metadata accessor for MusicVideoPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 92));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t MusicVideoPropertyProvider.lyrics.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_130_6() + 96));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;

  return sub_21739AF10(v3, v4, v5);
}

__n128 MusicVideoPropertyProvider.lyrics.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for MusicVideoPropertyProvider() + 96));
  sub_21733B290(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t MusicVideoPropertyProvider.mainUberArtwork.getter()
{
  v2 = *(OUTLINED_FUNCTION_130_6() + 100);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  memcpy(v0, (v1 + v2), 0x221uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB24400, &unk_21775E9A0);
}

void *MusicVideoPropertyProvider.mainUberArtwork.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 100);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  sub_2171F0738(__dst, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + v2), v0, 0x221uLL);
}

uint64_t MusicVideoPropertyProvider.offers.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 104));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.offers.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 104);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.playParameters.getter()
{
  v2 = *(OUTLINED_FUNCTION_130_6() + 108);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x78uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB244D0, &unk_21775D620);
}

void *MusicVideoPropertyProvider.playParameters.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 108);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_2171F0738(__dst, &qword_27CB244D0, &unk_21775D620);
  return memcpy((v1 + v2), v0, 0x78uLL);
}

uint64_t MusicVideoPropertyProvider.previewAssets.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 112));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.previewAssets.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 112);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void MusicVideoPropertyProvider.releaseYear.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 120));
}

uint64_t MusicVideoPropertyProvider.title.getter()
{
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 124));
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicVideoPropertyProvider.title.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for MusicVideoPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 124));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

void MusicVideoPropertyProvider.trackNumber.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 128));
}

uint64_t MusicVideoPropertyProvider.workName.getter()
{
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 136));
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicVideoPropertyProvider.workName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for MusicVideoPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 136));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t MusicVideoPropertyProvider.favoriteStatus.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_173_5(a1);
  *(v2 + *(result + 144)) = v1;
  return result;
}

uint64_t MusicVideoPropertyProvider.isLibraryAdded.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 148)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.isLibraryAddEligible.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 152)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.isPinned.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 156)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.keepLocalEnabledStatus.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_173_5(a1);
  *(v2 + *(result + 160)) = v1;
  return result;
}

uint64_t MusicVideoPropertyProvider.keepLocalManagedStatus.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_173_5(a1);
  *(v2 + *(result + 164)) = v1;
  return result;
}

uint64_t MusicVideoPropertyProvider.keepLocalManagedStatusReasons.getter()
{
  result = OUTLINED_FUNCTION_130_6();
  v3 = (v1 + *(result + 168));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t MusicVideoPropertyProvider.keepLocalManagedStatusReasons.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MusicVideoPropertyProvider();
  v5 = v1 + *(result + 168);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void MusicVideoPropertyProvider.playCount.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 180));
}

uint64_t MusicVideoPropertyProvider.hasCloudSyncSource.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 184)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.cloudStatus.setter(unsigned __int8 *a1)
{
  result = OUTLINED_FUNCTION_173_5(a1);
  *(v2 + *(result + 188)) = v1;
  return result;
}

void MusicVideoPropertyProvider.userRating.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 192));
}

uint64_t MusicVideoPropertyProvider.contributorSocialProfileIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 228));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.contributorSocialProfileIDs.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 228);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void MusicVideoPropertyProvider.popularity.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 232));
}

uint64_t MusicVideoPropertyProvider.searchContextSnippets.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 236));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 236);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void MusicVideoPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v252 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_31();
  v251 = v10;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_99();
  v250 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_99();
  v249 = v16;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v247 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v247 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v247 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v247 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A40, &qword_2177657C8);
  if (!swift_dynamicCastClass())
  {
    *&v257[0] = sub_21770B54C(45);
    *(&v257[0] + 1) = v179;
    MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177AC510);
    v256[0] = v2;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_184_3();
    v180 = 94;
    goto LABEL_198;
  }

  v36 = qword_280BE6B50;
  v253 = v2;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_82_7();
  }

  if (OUTLINED_FUNCTION_168(qword_280C02258))
  {
    v37 = v252;
    OUTLINED_FUNCTION_225_3(v256);
    OUTLINED_FUNCTION_225_3(v257);
    OUTLINED_FUNCTION_104(v257);
    if (!v196)
    {
      swift_allocObject();
      v38 = OUTLINED_FUNCTION_154_4();
      memcpy(v38, v39, 0x221uLL);
      sub_217284028(v255, v254);

      memcpy((v37 + 16), v257, 0x221uLL);
      v40 = &type metadata for Artwork;
LABEL_19:
      *v4 = v37;
      v4[1] = 0;
LABEL_20:
      v4[2] = 0;
      v4[3] = v40;
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v41 = qword_27CB23DE8;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_81_8();
  }

  OUTLINED_FUNCTION_168(qword_27CB8A300);
  OUTLINED_FUNCTION_195_4();
  if (v41)
  {
    v37 = v252;
    OUTLINED_FUNCTION_192_4(v256);
    OUTLINED_FUNCTION_192_4(v257);
    OUTLINED_FUNCTION_104(v257);
    if (!v196)
    {
      swift_allocObject();
      v47 = OUTLINED_FUNCTION_154_4();
      memcpy(v47, v48, 0x161uLL);
      sub_217269EF4(v255, v254);

      memcpy((v37 + 16), v257, 0x161uLL);
      v40 = &type metadata for MusicIdentifierSet;
      goto LABEL_19;
    }

LABEL_12:

    v40 = 0;
    v37 = 0;
    goto LABEL_19;
  }

  v42 = qword_280BE6DA8;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_79_9();
  }

  OUTLINED_FUNCTION_168(qword_280C02390);
  OUTLINED_FUNCTION_195_4();
  if (v42)
  {
    v43 = v4;
    v44 = *(v252 + 920);
    if (v44)
    {
      v45 = *(v252 + 912);
LABEL_18:
      sub_217751DE8();
      v46 = MEMORY[0x277D837D0];
LABEL_33:

      *v43 = v45;
      v43[1] = v44;
      v43[2] = 0;
      v43[3] = v46;
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  v49 = qword_27CB23DE0;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_78_5();
  }

  OUTLINED_FUNCTION_168(qword_27CB8A2F8);
  OUTLINED_FUNCTION_195_4();
  if (v49)
  {
    if (*(v252 + 936))
    {
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v51 = *(v252 + 928);
      v50 = MEMORY[0x277D83B88];
    }

LABEL_35:

    *v4 = v51;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v50;
    goto LABEL_21;
  }

  v52 = qword_280BE6DA0;

  if (v52 != -1)
  {
    OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_168(qword_280C02388);
  OUTLINED_FUNCTION_195_4();
  if (v52)
  {
    v43 = v4;
    v44 = *(v252 + 952);
    if (v44)
    {
      v45 = *(v252 + 944);
      goto LABEL_18;
    }

LABEL_32:
    v46 = 0;
    v45 = 0;
    goto LABEL_33;
  }

  v248 = v4;
  v2 = v255;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  OUTLINED_FUNCTION_31_11();
  v53 = OUTLINED_FUNCTION_53_11();
  v54 = OUTLINED_FUNCTION_168(v53);

  if (v54)
  {
    v55 = type metadata accessor for MusicVideoPropertyProvider();
    v56 = OUTLINED_FUNCTION_67_8(*(v55 + 36));
    sub_21726A630(v56, v35, v57, v58);
    sub_2177516D8();
    OUTLINED_FUNCTION_73(v35);
    v59 = v248;
    if (v196)
    {

      sub_2171F0738(v35, &unk_27CB277C0, &qword_217758DC0);
      memset(v257, 0, 32);
    }

    else
    {
      OUTLINED_FUNCTION_167_5();
      OUTLINED_FUNCTION_58();
      (*(v68 + 32))();
    }

    v69 = v257[1];
    *v59 = v257[0];
    *(v59 + 1) = v69;
    goto LABEL_21;
  }

  v60 = qword_280BE6D38;

  v4 = v248;
  if (v60 != -1)
  {
    OUTLINED_FUNCTION_76_7();
  }

  OUTLINED_FUNCTION_168(qword_280C02348);
  OUTLINED_FUNCTION_155_6();
  if (v60)
  {
    v61 = type metadata accessor for MusicVideoPropertyProvider();
    OUTLINED_FUNCTION_68_8(*(v61 + 40));
    v63 = *(v62 + 4);
    v64 = *v62;
    v65 = v64 | (v63 << 32);
    v66 = v64 & 0xFF00;

    v67 = v65 & 0x1010101FFLL;
    if (v66 == 512)
    {
      v67 = 0;
    }

    *v4 = v67;
    v4[1] = 0;
    if (v66 == 512)
    {
      v40 = 0;
    }

    else
    {
      v40 = &type metadata for CatalogAsset;
    }

    goto LABEL_20;
  }

  v70 = qword_280BE6D00;

  if (v70 != -1)
  {
    OUTLINED_FUNCTION_75_6();
  }

  OUTLINED_FUNCTION_168(qword_280C02330);
  OUTLINED_FUNCTION_155_6();
  if (v70)
  {
    v71 = *(v252 + *(type metadata accessor for MusicVideoPropertyProvider() + 44));

    v72 = &type metadata for ContentRating;
    if (v71 == 2)
    {
      v72 = 0;
    }

    *v4 = v71 & 1;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v72;
    goto LABEL_21;
  }

  v73 = qword_280BE6B38;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_74_7();
  }

  OUTLINED_FUNCTION_168(qword_280C02250);
  OUTLINED_FUNCTION_155_6();
  if (v73)
  {
    v74 = type metadata accessor for MusicVideoPropertyProvider();
    v50 = 0;
    v51 = 0;
    OUTLINED_FUNCTION_68_8(*(v74 + 48));
    if ((*(v75 + 8) & 1) == 0)
    {
      v51 = *v75;
      v50 = MEMORY[0x277D839F8];
    }

    goto LABEL_35;
  }

  v76 = qword_280BE6C60;

  if (v76 != -1)
  {
    OUTLINED_FUNCTION_12_18();
  }

  OUTLINED_FUNCTION_168(qword_280C022C8);
  OUTLINED_FUNCTION_155_6();
  if (v76)
  {
    v77 = type metadata accessor for MusicVideoPropertyProvider();
    OUTLINED_FUNCTION_135_4(*(v77 + 52));
    if (v76)
    {
      v78 = &unk_27CB24BE8;
      v79 = &unk_2177595F0;
LABEL_66:
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
      sub_217751DE8();
LABEL_78:

      *v4 = v76;
      v4[1] = 0;
      v4[2] = 0;
      v4[3] = v80;
      goto LABEL_21;
    }

    goto LABEL_77;
  }

  v81 = qword_280BE6CD8;

  if (v81 != -1)
  {
    OUTLINED_FUNCTION_73_1();
  }

  OUTLINED_FUNCTION_168(qword_280C02318);
  OUTLINED_FUNCTION_155_6();
  if (v81)
  {
    v82 = (v252 + *(type metadata accessor for MusicVideoPropertyProvider() + 56));
    v84 = *v82;
    v83 = v82[1];
    v85 = *(v82 + 2);
    v255[0] = *(v82 + 1);
    v255[1] = v85;
    v255[2] = *(v82 + 3);
    if (v83 != 1)
    {
      v87 = swift_allocObject();
      *&v257[0] = v84;
      *(&v257[0] + 1) = v83;
      v89 = *(v82 + 2);
      v257[1] = *(v82 + 1);
      v257[2] = v89;
      v257[3] = *(v82 + 3);
      sub_217350F74(v257, v256);

      *(v87 + 16) = v84;
      *(v87 + 24) = v83;
      v90 = v255[1];
      *(v87 + 32) = v255[0];
      *(v87 + 48) = v90;
      *(v87 + 64) = v255[2];
      v86 = &type metadata for EditorialNotes;
      goto LABEL_80;
    }

LABEL_71:

    v86 = 0;
    v87 = 0;
LABEL_80:
    v91 = v248;
    *v248 = v87;
    v91[1] = 0;
    v91[2] = 0;
    v91[3] = v86;
    goto LABEL_21;
  }

  v76 = qword_280BE6DC0;

  if (v76 != -1)
  {
    OUTLINED_FUNCTION_11_26();
  }

  OUTLINED_FUNCTION_168(qword_280C023A0);
  OUTLINED_FUNCTION_155_6();
  if (v76)
  {
    v88 = type metadata accessor for MusicVideoPropertyProvider();
    OUTLINED_FUNCTION_135_4(*(v88 + 60));
    if (v76)
    {
      v78 = &unk_27CB24BE0;
      v79 = &unk_2177657E0;
      goto LABEL_66;
    }

LABEL_77:
    v80 = 0;
    goto LABEL_78;
  }

  v92 = qword_280BE6D98;

  if (v92 != -1)
  {
    OUTLINED_FUNCTION_72_8();
  }

  OUTLINED_FUNCTION_168(qword_280C02380);
  OUTLINED_FUNCTION_155_6();
  if (v92)
  {
    v93 = type metadata accessor for MusicVideoPropertyProvider();
    OUTLINED_FUNCTION_135_4(*(v93 + 64));
    if (v92)
    {
      v94 = &unk_27CB24C58;
      v95 = &unk_2177677B0;
LABEL_86:
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(v94, v95);
      sub_217751DE8();
LABEL_333:

      v187 = v248;
      *v248 = v92;
      v187[1] = 0;
LABEL_334:
      v187[2] = 0;
      v187[3] = v96;
      goto LABEL_21;
    }

    goto LABEL_332;
  }

  v97 = qword_280BE6BF0;

  if (v97 != -1)
  {
    OUTLINED_FUNCTION_117_9();
  }

  OUTLINED_FUNCTION_168(qword_280C02280);
  OUTLINED_FUNCTION_155_6();
  if ((v97 & 1) == 0)
  {
    v99 = qword_280BE6C90;

    if (v99 != -1)
    {
      OUTLINED_FUNCTION_116_9();
    }

    OUTLINED_FUNCTION_168(qword_280C022E8);
    OUTLINED_FUNCTION_128_7();
    if (v99)
    {
      v100 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_68_8(*(v100 + 96));
      if (v101[2] == 1)
      {
      }

      else
      {
        v107 = *v101;
        v108 = *v101 & 0xFF0000;

        if (v108 != 0x20000)
        {
          v109 = (v107 >> 16) & 1;
          v110 = MEMORY[0x277D839B0];
          goto LABEL_112;
        }
      }

      v109 = 0;
      v110 = 0;
LABEL_112:
      v112 = v248;
      *v248 = v109;
      v112[1] = 0;
      v112[2] = 0;
      v112[3] = v110;
      goto LABEL_21;
    }

    v102 = qword_280BE6B88;

    if (v102 != -1)
    {
      OUTLINED_FUNCTION_115_5();
    }

    OUTLINED_FUNCTION_168(qword_280C02270);
    OUTLINED_FUNCTION_128_7();
    if (v102)
    {
      v103 = *(type metadata accessor for MusicVideoPropertyProvider() + 72);
LABEL_100:
      v98 = *(v252 + v103);
      goto LABEL_101;
    }

    v111 = qword_280BE6C80;

    if (v111 != -1)
    {
      OUTLINED_FUNCTION_114_4();
    }

    OUTLINED_FUNCTION_168(qword_280C022D8);
    OUTLINED_FUNCTION_128_7();
    if (v111)
    {
      v98 = *(v252 + *(type metadata accessor for MusicVideoPropertyProvider() + 76));

      v104 = v98 & 1;
      v105 = &type metadata for HomeSharingAsset;
      goto LABEL_102;
    }

    v113 = qword_280BE6D08;

    if (v113 != -1)
    {
      OUTLINED_FUNCTION_21_16();
    }

    OUTLINED_FUNCTION_168(qword_280C02338);
    OUTLINED_FUNCTION_128_7();
    if (v113)
    {
      v114 = type metadata accessor for MusicVideoPropertyProvider();
      v115 = OUTLINED_FUNCTION_67_8(*(v114 + 80));
      sub_21726A630(v115, v31, v116, v117);
      sub_2177516D8();
      OUTLINED_FUNCTION_73(v31);
      if (!v196)
      {
        goto LABEL_253;
      }

      v118 = &unk_27CB277C0;
      v119 = &qword_217758DC0;
      v120 = v31;
LABEL_119:
      sub_2171F0738(v120, v118, v119);
      memset(v257, 0, 32);
LABEL_124:
      v122 = v2[70];
      v123 = v248;
      *v248 = v2[69];
      *(v123 + 1) = v122;
      goto LABEL_21;
    }

    v121 = qword_280BE6B20;

    if (v121 != -1)
    {
      OUTLINED_FUNCTION_113_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02240);
    OUTLINED_FUNCTION_128_7();
    if (v121)
    {
      v103 = *(type metadata accessor for MusicVideoPropertyProvider() + 84);
      goto LABEL_100;
    }

    v124 = qword_280BE6BF8;

    if (v124 != -1)
    {
      OUTLINED_FUNCTION_112_8();
    }

    OUTLINED_FUNCTION_168(qword_280C02288);
    OUTLINED_FUNCTION_128_7();
    if (v124)
    {
      v125 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_68_8(*(v125 + 88));
      v127 = v126[1];
      if (!v127)
      {
        v129 = 0;
        v128 = 0;
        goto LABEL_141;
      }

LABEL_129:
      v128 = *v126;
      sub_217751DE8();
      v129 = MEMORY[0x277D837D0];
LABEL_141:

      v147 = v248;
      *v248 = v128;
      v147[1] = v127;
      v147[2] = 0;
      v147[3] = v129;
      goto LABEL_21;
    }

    v130 = qword_280BE6CB0;

    if (v130 != -1)
    {
      OUTLINED_FUNCTION_111_8();
    }

    OUTLINED_FUNCTION_168(qword_280C02300);
    OUTLINED_FUNCTION_128_7();
    if (v130)
    {
      v131 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_68_8(*(v131 + 92));
      v133 = v132[1];
      if (v133)
      {
        v134 = *(v132 + 16);
        v135 = *v132;
        v136 = v132[1];
        sub_217751DE8();

        v137 = v134 & 1;
        v138 = v135 & 0xFF01;
        v139 = &type metadata for FileAsset;
      }

      else
      {

        v137 = 0;
        v139 = 0;
        v138 = 0;
      }

      v149 = v248;
      *v248 = v138;
      v149[1] = v133;
      v149[2] = v137;
      v149[3] = v139;
      goto LABEL_21;
    }

    v140 = qword_280BE6B78;

    if (v140 != -1)
    {
      OUTLINED_FUNCTION_20_1();
    }

    OUTLINED_FUNCTION_168(qword_280C02268);
    OUTLINED_FUNCTION_128_7();
    if (v140)
    {
      v141 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_68_8(*(v141 + 96));
      v143 = v142[2];
      if (v143 == 1)
      {

        v144 = 0;
        v143 = 0;
        v145 = 0;
        v146 = 0;
      }

      else
      {
        v150 = *v142;
        v145 = v142[1];
        v151 = v142[2];
        sub_217751DE8();

        v146 = v150 & 0xFFFFFF;
        v144 = &type metadata for MusicLyrics;
      }

      v152 = v248;
      *v248 = v146;
      v152[1] = v145;
      v152[2] = v143;
      v152[3] = v144;
      goto LABEL_21;
    }

    v148 = qword_280BE6C88;

    if (v148 != -1)
    {
      OUTLINED_FUNCTION_109_6();
    }

    OUTLINED_FUNCTION_168(qword_280C022E0);
    OUTLINED_FUNCTION_128_7();
    if (v148)
    {
      v87 = *(type metadata accessor for MusicVideoPropertyProvider() + 100);
      memcpy(v256, (v252 + v87), 0x221uLL);
      memcpy(v257, (v252 + v87), 0x221uLL);
      OUTLINED_FUNCTION_104(v257);
      if (!v196)
      {
        swift_allocObject();
        v154 = OUTLINED_FUNCTION_154_4();
        memcpy(v154, v155, 0x221uLL);
        sub_217284028(v255, v254);

        memcpy((v87 + 16), v257, 0x221uLL);
        v86 = &type metadata for Artwork;
        goto LABEL_80;
      }

      goto LABEL_71;
    }

    v92 = qword_280BE6B70;

    if (v92 != -1)
    {
      OUTLINED_FUNCTION_19_11();
    }

    OUTLINED_FUNCTION_168(qword_280C02260);
    OUTLINED_FUNCTION_128_7();
    if (v92)
    {
      v153 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_135_4(*(v153 + 104));
      if (v92)
      {
        v94 = &unk_27CB24C50;
        v95 = &unk_217759650;
        goto LABEL_86;
      }

LABEL_332:
      v96 = 0;
      goto LABEL_333;
    }

    v156 = qword_280BE6CA8;

    if (v156 != -1)
    {
      OUTLINED_FUNCTION_108_7();
    }

    OUTLINED_FUNCTION_168(qword_280C022F8);
    OUTLINED_FUNCTION_128_7();
    if (v156)
    {
      v157 = (v252 + *(type metadata accessor for MusicVideoPropertyProvider() + 108));
      v159 = *v157;
      v158 = v157[1];
      OUTLINED_FUNCTION_196_4(v255);
      if (v158)
      {
        v87 = swift_allocObject();
        *&v257[0] = v159;
        *(&v257[0] + 1) = v158;
        OUTLINED_FUNCTION_196_4(&v257[1]);
        sub_2172DF5A4(v257, v256);

        *(v87 + 16) = v159;
        *(v87 + 24) = v158;
        memcpy((v87 + 32), v255, 0x68uLL);
        v86 = &type metadata for PlayParameters;
        goto LABEL_80;
      }

      goto LABEL_71;
    }

    v92 = qword_280BE6CF0;

    if (v92 != -1)
    {
      OUTLINED_FUNCTION_107_6();
    }

    OUTLINED_FUNCTION_168(qword_280C02328);
    OUTLINED_FUNCTION_128_7();
    if (v92)
    {
      v160 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_135_4(*(v160 + 112));
      if (v92)
      {
        v94 = &unk_27CB24C48;
        v95 = &unk_217759648;
        goto LABEL_86;
      }

      goto LABEL_332;
    }

    v161 = qword_280BE6D58;

    if (v161 != -1)
    {
      OUTLINED_FUNCTION_106_5();
    }

    OUTLINED_FUNCTION_168(qword_280C02360);
    OUTLINED_FUNCTION_128_7();
    if (v161)
    {
      v162 = type metadata accessor for MusicVideoPropertyProvider();
      v163 = OUTLINED_FUNCTION_67_8(*(v162 + 116));
      sub_21726A630(v163, v20, v164, v165);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v20);
      if (!v196)
      {
        goto LABEL_253;
      }

      v118 = &qword_27CB241C0;
      v119 = &qword_217759480;
      v120 = v20;
      goto LABEL_119;
    }

    v166 = qword_280BE6BC8;

    if (v166 != -1)
    {
      OUTLINED_FUNCTION_105_1();
    }

    OUTLINED_FUNCTION_168(qword_280C02278);
    OUTLINED_FUNCTION_128_7();
    if (v166)
    {
      v167 = *(type metadata accessor for MusicVideoPropertyProvider() + 124);
      goto LABEL_177;
    }

    v168 = qword_280BE6D50;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_104_5();
    }

    OUTLINED_FUNCTION_168(qword_280C02358);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_134_5();
      v170 = *(v169 + 128);
      goto LABEL_183;
    }

    v173 = qword_280BE6C08;

    if (v173 != -1)
    {
      OUTLINED_FUNCTION_103_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02290);
    OUTLINED_FUNCTION_128_7();
    if (v173)
    {
      v174 = type metadata accessor for MusicVideoPropertyProvider();
      v175 = OUTLINED_FUNCTION_67_8(*(v174 + 132));
      sub_21726A630(v175, v27, v176, v177);
      sub_2177516D8();
      OUTLINED_FUNCTION_73(v27);
      if (!v196)
      {
        goto LABEL_253;
      }

      v118 = &unk_27CB277C0;
      v119 = &qword_217758DC0;
      v120 = v27;
      goto LABEL_119;
    }

    v178 = qword_280BE6B30;

    if (v178 != -1)
    {
      OUTLINED_FUNCTION_102_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02248);
    OUTLINED_FUNCTION_128_7();
    if (v178)
    {
      v167 = *(type metadata accessor for MusicVideoPropertyProvider() + 136);
LABEL_177:
      OUTLINED_FUNCTION_68_8(v167);
      v127 = v126[1];
      if (!v127)
      {
        v128 = 0;
        v129 = 0;
        goto LABEL_141;
      }

      goto LABEL_129;
    }

    v181 = qword_280BE6D18;

    if (v181 != -1)
    {
      OUTLINED_FUNCTION_18_19();
    }

    OUTLINED_FUNCTION_168(qword_280C02340);
    OUTLINED_FUNCTION_128_7();
    if (v181)
    {
      v182 = type metadata accessor for MusicVideoPropertyProvider();
      v183 = 0;
      v184 = 0;
      v96 = 0;
      OUTLINED_FUNCTION_68_8(*(v182 + 96));
      if (*(v185 + 16) >= 2uLL)
      {
        v183 = *(v185 + 8);
        v186 = sub_217751DE8();
        v96 = MEMORY[0x277D837D0];
        v184 = v186;
      }

      v187 = v248;
      *v248 = v183;
      v187[1] = v184;
      goto LABEL_334;
    }

    v188 = qword_280BE6CE8;

    if (v188 != -1)
    {
      OUTLINED_FUNCTION_100_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02320);
    OUTLINED_FUNCTION_128_7();
    if (v188)
    {
      v189 = type metadata accessor for MusicVideoPropertyProvider();
      v190 = OUTLINED_FUNCTION_67_8(*(v189 + 140));
      v191 = v249;
      sub_21726A630(v190, v249, v192, v193);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v191);
      if (!v196)
      {
        goto LABEL_253;
      }

      v118 = &qword_27CB241C0;
      v119 = &qword_217759480;
      v120 = v249;
      goto LABEL_119;
    }

    v194 = qword_280BE6CA0;

    if (v194 != -1)
    {
      OUTLINED_FUNCTION_99_7();
    }

    OUTLINED_FUNCTION_168(qword_280C022F0);
    OUTLINED_FUNCTION_128_7();
    if (v194)
    {
      v195 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_193_4(*(v195 + 144));
      v110 = &type metadata for LegacyModelFavoriteStatus;
      v196 = v194 == 3;
      goto LABEL_215;
    }

    v197 = qword_280BE6CC8;

    if (v197 != -1)
    {
      OUTLINED_FUNCTION_97_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02310);
    OUTLINED_FUNCTION_128_7();
    if (v197)
    {
      v103 = *(type metadata accessor for MusicVideoPropertyProvider() + 148);
      goto LABEL_100;
    }

    v198 = qword_280BE6C40;

    if (v198 != -1)
    {
      OUTLINED_FUNCTION_96_7();
    }

    OUTLINED_FUNCTION_168(qword_280C022B8);
    OUTLINED_FUNCTION_128_7();
    if (v198)
    {
      v103 = *(type metadata accessor for MusicVideoPropertyProvider() + 152);
      goto LABEL_100;
    }

    v199 = qword_27CB23DD8;

    if (v199 != -1)
    {
      OUTLINED_FUNCTION_95_8();
    }

    OUTLINED_FUNCTION_168(qword_27CB8A2F0);
    OUTLINED_FUNCTION_128_7();
    if (v199)
    {
      v103 = *(type metadata accessor for MusicVideoPropertyProvider() + 156);
      goto LABEL_100;
    }

    v194 = qword_280BE6C38;

    if (v194 != -1)
    {
      OUTLINED_FUNCTION_94_5();
    }

    OUTLINED_FUNCTION_168(qword_280C022B0);
    OUTLINED_FUNCTION_128_7();
    if (v194)
    {
      v200 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_193_4(*(v200 + 160));
      v110 = &type metadata for LegacyModelKeepLocalEnabledStatus;
      v196 = v194 == 5;
      goto LABEL_215;
    }

    v194 = qword_280BE6C30;

    if (v194 != -1)
    {
      OUTLINED_FUNCTION_93_8();
    }

    OUTLINED_FUNCTION_168(qword_280C022A8);
    OUTLINED_FUNCTION_128_7();
    if (v194)
    {
      v201 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_193_4(*(v201 + 164));
      v110 = &type metadata for LegacyModelKeepLocalManagedStatus;
      v196 = v194 == 7;
      goto LABEL_215;
    }

    v168 = qword_280BE6C18;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_92_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02298);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_68_8(*(v202 + 168));
      if ((v203[1] & 1) == 0)
      {
        v27 = *v203;
        v168 = &type metadata for LegacyModelKeepLocalManagedStatusReasons;
      }

      goto LABEL_185;
    }

    v204 = qword_280BE6CB8;

    if (v204 != -1)
    {
      OUTLINED_FUNCTION_91_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02308);
    OUTLINED_FUNCTION_128_7();
    if (v204)
    {
      v205 = type metadata accessor for MusicVideoPropertyProvider();
      v206 = OUTLINED_FUNCTION_67_8(*(v205 + 172));
      v207 = v250;
      sub_21726A630(v206, v250, v208, v209);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v207);
      if (!v196)
      {
        goto LABEL_253;
      }

      v118 = &qword_27CB241C0;
      v119 = &qword_217759480;
      v120 = v250;
      goto LABEL_119;
    }

    v210 = qword_280BE6C70;

    if (v210 != -1)
    {
      OUTLINED_FUNCTION_90_8();
    }

    OUTLINED_FUNCTION_168(qword_280C022D0);
    OUTLINED_FUNCTION_128_7();
    if (v210)
    {
      v211 = type metadata accessor for MusicVideoPropertyProvider();
      v212 = v251;
      sub_21726A630(v252 + *(v211 + 176), v251, &qword_27CB241C0, &qword_217759480);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v212);
      if (v196)
      {

        v118 = &qword_27CB241C0;
        v119 = &qword_217759480;
        v120 = v251;
        goto LABEL_119;
      }

LABEL_253:
      OUTLINED_FUNCTION_167_5();
      OUTLINED_FUNCTION_58();
      (*(v214 + 32))();

      goto LABEL_124;
    }

    v168 = qword_280BE6B18;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_89_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02238);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_134_5();
      v170 = *(v213 + 180);
      goto LABEL_183;
    }

    v215 = qword_280BE6C50;

    if (v215 != -1)
    {
      OUTLINED_FUNCTION_88_7();
    }

    OUTLINED_FUNCTION_168(qword_280C022C0);
    OUTLINED_FUNCTION_128_7();
    if (v215)
    {
      v103 = *(type metadata accessor for MusicVideoPropertyProvider() + 184);
      goto LABEL_100;
    }

    v194 = qword_280BE6D78;

    if (v194 != -1)
    {
      OUTLINED_FUNCTION_86_5();
    }

    OUTLINED_FUNCTION_168(qword_280C02368);
    OUTLINED_FUNCTION_128_7();
    if (v194)
    {
      v216 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_193_4(*(v216 + 188));
      v110 = &type metadata for CloudStatus;
      v196 = v194 == 10;
LABEL_215:
      if (v196)
      {
        v110 = 0;
        v109 = 0;
      }

      else
      {
        v109 = v194;
      }

      goto LABEL_112;
    }

    v168 = qword_280BE6D80;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_85_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02370);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_134_5();
      v218 = *(v217 + 192);
      goto LABEL_271;
    }

    v168 = qword_280BE6D40;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_84_7();
    }

    OUTLINED_FUNCTION_168(qword_280C02350);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_134_5();
      v170 = *(v220 + 120);
LABEL_183:
      OUTLINED_FUNCTION_68_8(v170);
      if ((v171[1] & 1) == 0)
      {
        v27 = *v171;
        v168 = MEMORY[0x277D83B88];
      }

      goto LABEL_185;
    }

    v168 = qword_280BE6BB0;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_17_0();
    }

    OUTLINED_FUNCTION_168(qword_280BE6BB8);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      v221 = type metadata accessor for MusicVideoPropertyProvider();
      v222 = OUTLINED_FUNCTION_67_8(*(v221 + 196));
      sub_21726A630(v222, v257, v223, v224);
      if (*(&v257[5] + 1))
      {
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
LABEL_299:
        v27 = swift_allocObject();
        memcpy(v27 + 16, v257, 0x68uLL);
LABEL_185:

LABEL_186:
        v172 = v248;
        *v248 = v27;
        v172[1] = 0;
        v172[2] = 0;
        v172[3] = v168;
        goto LABEL_21;
      }

      v233 = &unk_27CB25318;
      v234 = &unk_2177657C0;
      goto LABEL_317;
    }

    v168 = qword_280BE6DB0;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_16_21();
    }

    OUTLINED_FUNCTION_168(qword_280C02398);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      v225 = *(type metadata accessor for MusicVideoPropertyProvider() + 200);
LABEL_286:
      v226 = OUTLINED_FUNCTION_67_8(v225);
      sub_21726A630(v226, v257, v227, v228);
      if (*(&v257[5] + 1))
      {
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25380, &unk_21775DAA0);
        goto LABEL_299;
      }

      v233 = &unk_27CB25338;
      v234 = &unk_21775D3E0;
LABEL_317:
      sub_2171F0738(v257, v233, v234);
      OUTLINED_FUNCTION_134_5();
      goto LABEL_186;
    }

    v168 = qword_280BE6B58;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_15_7();
    }

    OUTLINED_FUNCTION_168(qword_280BE6B60);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      v229 = type metadata accessor for MusicVideoPropertyProvider();
      v230 = OUTLINED_FUNCTION_67_8(*(v229 + 204));
      sub_21726A630(v230, v257, v231, v232);
      if (*(&v257[5] + 1))
      {
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
        goto LABEL_299;
      }

      v233 = &qword_27CB25310;
      v234 = &unk_21775D3D0;
      goto LABEL_317;
    }

    v168 = qword_280BE6B98;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_14_4();
    }

    OUTLINED_FUNCTION_168(qword_280BE6BA0);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      v235 = type metadata accessor for MusicVideoPropertyProvider();
      v236 = OUTLINED_FUNCTION_67_8(*(v235 + 208));
      sub_21726A630(v236, v257, v237, v238);
      if (*(&v257[5] + 1))
      {
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C80, &unk_21775D420);
        goto LABEL_299;
      }

      v233 = &unk_27CB25320;
      v234 = &unk_21776E020;
      goto LABEL_317;
    }

    v168 = qword_280BE6B40;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_13_19();
    }

    OUTLINED_FUNCTION_168(qword_280BE6B48);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      v225 = *(type metadata accessor for MusicVideoPropertyProvider() + 212);
      goto LABEL_286;
    }

    v168 = qword_280BE6BD8;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_6_24();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280BE6BE0);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      v239 = type metadata accessor for MusicVideoPropertyProvider();
      v240 = OUTLINED_FUNCTION_67_8(*(v239 + 216));
      sub_21726A630(v240, v257, v241, v242);
      if (*(&v257[5] + 1))
      {
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27820, &qword_21775DAB0);
        goto LABEL_299;
      }

      v233 = &unk_27CB255A8;
      v234 = &unk_21775D450;
      goto LABEL_317;
    }

    v168 = qword_280BE6D20;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_5_30();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280BE6D28);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      v225 = *(type metadata accessor for MusicVideoPropertyProvider() + 220);
      goto LABEL_286;
    }

    v168 = qword_280BE6D68;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_4_40();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280BE6D70);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      v225 = *(type metadata accessor for MusicVideoPropertyProvider() + 224);
      goto LABEL_286;
    }

    v92 = qword_280BE6C20;

    if (v92 != -1)
    {
      OUTLINED_FUNCTION_3_36();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280C022A0);
    OUTLINED_FUNCTION_128_7();
    if (v92)
    {
      v243 = type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_135_4(*(v243 + 228));
      if (v92)
      {
        v94 = &unk_27CB24C40;
        v95 = &unk_217759640;
        goto LABEL_86;
      }

      goto LABEL_332;
    }

    v168 = qword_280BE6D90;

    if (v168 != -1)
    {
      OUTLINED_FUNCTION_2_37();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280C02378);
    OUTLINED_FUNCTION_128_7();
    if (v168)
    {
      type metadata accessor for MusicVideoPropertyProvider();
      OUTLINED_FUNCTION_134_5();
      v218 = *(v244 + 232);
LABEL_271:
      OUTLINED_FUNCTION_68_8(v218);
      if ((v219[1] & 1) == 0)
      {
        v27 = *v219;
        v168 = MEMORY[0x277D839F8];
      }

      goto LABEL_185;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
    OUTLINED_FUNCTION_31_11();
    v245 = OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_168(v245);
    OUTLINED_FUNCTION_5_4();

    *&v257[0] = sub_21770B54C(24);
    *(&v257[0] + 1) = v246;
    MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
    v256[0] = v253;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_184_3();
    v180 = 220;
LABEL_198:
    v247 = v180;
    OUTLINED_FUNCTION_142_7();
    __break(1u);
    goto LABEL_253;
  }

  v98 = *(v252 + *(type metadata accessor for MusicVideoPropertyProvider() + 68));
LABEL_101:

  v104 = v98 & 1;
  v105 = MEMORY[0x277D839B0];
LABEL_102:
  if (v98 == 2)
  {
    v105 = 0;
  }

  v106 = v248;
  *v248 = v104;
  v106[1] = 0;
  v106[2] = 0;
  v106[3] = v105;
LABEL_21:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21739898C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_21726A630(a1, v5, &qword_27CB2AD40, &qword_2177583F0);

  return MusicVideoPropertyProvider.subscript.setter(v5);
}

uint64_t MusicVideoPropertyProvider.subscript.setter(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A40, &qword_2177657C8);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177AC510);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    goto LABEL_70;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  swift_initStackObject();
  v4 = OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_139_7(v4);
  OUTLINED_FUNCTION_5_4();
  swift_retain_n();

  if (v1)
  {
    goto LABEL_3;
  }

  v6 = qword_280BE6D18;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_18_19();
  }

  OUTLINED_FUNCTION_139_7(qword_280C02340);
  OUTLINED_FUNCTION_5_4();

  if ((v6 & 1) == 0)
  {
    v7 = qword_280BE6C60;

    if (v7 != -1)
    {
      OUTLINED_FUNCTION_12_18();
    }

    OUTLINED_FUNCTION_139_7(qword_280C022C8);
    OUTLINED_FUNCTION_5_4();

    if (v7)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_79_1();
      sub_217351C74();
      goto LABEL_4;
    }

    v9 = qword_280BE6DC0;

    if (v9 != -1)
    {
      OUTLINED_FUNCTION_11_26();
    }

    OUTLINED_FUNCTION_139_7(qword_280C023A0);
    OUTLINED_FUNCTION_5_4();

    if (v9)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_79_1();
      sub_217351C78();
      goto LABEL_4;
    }

    v10 = qword_280BE6D08;

    if (v10 != -1)
    {
      OUTLINED_FUNCTION_21_16();
    }

    OUTLINED_FUNCTION_139_7(qword_280C02338);
    OUTLINED_FUNCTION_5_4();

    if ((v10 & 1) == 0)
    {
      v11 = qword_280BE6B78;

      if (v11 != -1)
      {
        OUTLINED_FUNCTION_20_1();
      }

      OUTLINED_FUNCTION_139_7(qword_280C02268);
      OUTLINED_FUNCTION_5_4();

      if (v11)
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_79_1();
        sub_217351C7C();
      }

      else
      {
        v12 = qword_280BE6B70;

        if (v12 != -1)
        {
          OUTLINED_FUNCTION_19_11();
        }

        OUTLINED_FUNCTION_139_7(qword_280C02260);
        OUTLINED_FUNCTION_5_4();

        if (v12)
        {
          swift_getKeyPath();
          OUTLINED_FUNCTION_79_1();
          sub_217351C80();
        }

        else
        {
          v13 = qword_280BE6BB0;

          if (v13 != -1)
          {
            OUTLINED_FUNCTION_17_0();
          }

          OUTLINED_FUNCTION_139_7(qword_280BE6BB8);
          OUTLINED_FUNCTION_5_4();

          if (v13)
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_79_1();
            sub_217351CA0();
          }

          else
          {
            v14 = qword_280BE6B58;

            if (v14 != -1)
            {
              OUTLINED_FUNCTION_15_7();
            }

            OUTLINED_FUNCTION_139_7(qword_280BE6B60);
            OUTLINED_FUNCTION_5_4();

            if (v14)
            {
              swift_getKeyPath();
              OUTLINED_FUNCTION_79_1();
              sub_217351CA8();
            }

            else
            {
              v15 = qword_280BE6DB0;

              if (v15 != -1)
              {
                OUTLINED_FUNCTION_16_21();
              }

              OUTLINED_FUNCTION_139_7(qword_280C02398);
              OUTLINED_FUNCTION_5_4();

              if ((v15 & 1) == 0)
              {
                v16 = qword_280BE6B98;

                if (v16 != -1)
                {
                  OUTLINED_FUNCTION_14_4();
                }

                OUTLINED_FUNCTION_139_7(qword_280BE6BA0);
                OUTLINED_FUNCTION_5_4();

                if (v16)
                {
                  swift_getKeyPath();
                  OUTLINED_FUNCTION_79_1();
                  sub_217351CA4();
                  goto LABEL_4;
                }

                v17 = qword_280BE6B40;

                if (v17 != -1)
                {
                  OUTLINED_FUNCTION_13_19();
                }

                OUTLINED_FUNCTION_139_7(qword_280BE6B48);
                OUTLINED_FUNCTION_5_4();

                if ((v17 & 1) == 0)
                {
                  v18 = qword_280BE6BD8;

                  if (v18 != -1)
                  {
                    OUTLINED_FUNCTION_6_24();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_139_7(qword_280BE6BE0);
                  OUTLINED_FUNCTION_5_4();

                  if (v18)
                  {
                    swift_getKeyPath();
                    OUTLINED_FUNCTION_79_1();
                    sub_217351CAC();
                    goto LABEL_4;
                  }

                  v19 = qword_280BE6D20;

                  if (v19 != -1)
                  {
                    OUTLINED_FUNCTION_5_30();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_139_7(qword_280BE6D28);
                  OUTLINED_FUNCTION_5_4();

                  if ((v19 & 1) == 0)
                  {
                    v20 = qword_280BE6D68;

                    if (v20 != -1)
                    {
                      OUTLINED_FUNCTION_4_40();
                      swift_once();
                    }

                    OUTLINED_FUNCTION_139_7(qword_280BE6D70);
                    OUTLINED_FUNCTION_5_4();

                    if ((v20 & 1) == 0)
                    {
                      v21 = qword_280BE6C20;

                      if (v21 != -1)
                      {
                        OUTLINED_FUNCTION_3_36();
                        swift_once();
                      }

                      OUTLINED_FUNCTION_139_7(qword_280C022A0);
                      OUTLINED_FUNCTION_5_4();

                      if (v21)
                      {
                        swift_getKeyPath();
                        OUTLINED_FUNCTION_79_1();
                        sub_217351C84();
                      }

                      else
                      {
                        v22 = qword_280BE6D90;

                        if (v22 != -1)
                        {
                          OUTLINED_FUNCTION_2_37();
                          swift_once();
                        }

                        OUTLINED_FUNCTION_139_7(qword_280C02378);
                        OUTLINED_FUNCTION_5_4();

                        if ((v22 & 1) == 0)
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
                          swift_initStackObject();
                          v23 = OUTLINED_FUNCTION_54_0();
                          OUTLINED_FUNCTION_139_7(v23);
                          OUTLINED_FUNCTION_5_4();

                          while (1)
                          {
                            sub_217752AA8();
                            MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
                            type metadata accessor for AnyMusicProperty();
                            sub_217752C78();
                            OUTLINED_FUNCTION_217_0();
LABEL_70:
                            OUTLINED_FUNCTION_142_7();
                            __break(1u);
                          }
                        }

                        swift_getKeyPath();
                        OUTLINED_FUNCTION_79_1();
                        sub_217351C88();
                      }

                      goto LABEL_4;
                    }
                  }
                }
              }

              swift_getKeyPath();
              OUTLINED_FUNCTION_79_1();
              sub_217351CB0();
            }
          }
        }
      }

LABEL_4:

LABEL_5:

      return sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
    }

LABEL_3:
    swift_getKeyPath();
    OUTLINED_FUNCTION_79_1();
    sub_217351C70();
    goto LABEL_4;
  }

  if (*(v2 + *(type metadata accessor for MusicVideoPropertyProvider() + 96) + 16) != 1)
  {
    KeyPath = swift_getKeyPath();
    sub_217399204(KeyPath, a1);

    goto LABEL_5;
  }

  sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
}

uint64_t sub_217399204(uint64_t a1, uint64_t a2)
{
  sub_21726A630(a2, v3, &qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  swift_dynamicCast();
  return swift_setAtWritableKeyPath();
}

void (*MusicVideoPropertyProvider.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  MusicVideoPropertyProvider.subscript.getter();
  return sub_217399308;
}

void sub_217399308(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    MusicVideoPropertyProvider.subscript.setter(v2 + 32);
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    MusicVideoPropertyProvider.subscript.setter(v2);
  }

  free(v2);
}

void MusicVideoPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v90 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v91[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v91[-1] - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A48, &qword_217765A38);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v91[-1] - v23;
  v25 = type metadata accessor for MusicVideoPropertyProvider();
  v26 = OUTLINED_FUNCTION_43(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v91[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, &unk_217765A40);
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    OUTLINED_FUNCTION_152_6();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177AC560);
    v91[0] = v5;
    v86 = *(v6 + 216);
    type metadata accessor for PartialMusicAsyncProperty();
    sub_217753018();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_153_4();
    v87 = 278;
    goto LABEL_124;
  }

  v1 = v32;
  sub_2171FF30C(v3, v93);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    v88 = OUTLINED_FUNCTION_181();
    __swift_storeEnumTagSinglePayload(v88, v89, 1, v25);
    sub_2171F0738(v24, &qword_27CB26A48, &qword_217765A38);
    OUTLINED_FUNCTION_152_6();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AC5A0);
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_153_4();
    v87 = 281;
    goto LABEL_124;
  }

  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  sub_21739EF44(v24, v31);
  v33 = qword_280BE6D18;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_18_19();
  }

  OUTLINED_FUNCTION_168(qword_280C02340);
  OUTLINED_FUNCTION_140_7();
  if (v33)
  {
    v34 = v25[24];
    OUTLINED_FUNCTION_188_4();
    if (*(v36 + v35 + 16) == 1)
    {
      sub_21739EFA8(v31);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      sub_21739A2C4(KeyPath, *&v31[v25[24]], *&v31[v25[24] + 8], *&v31[v25[24] + 16]);

      sub_21739EFA8(v31);
    }

    goto LABEL_20;
  }

  v37 = qword_280BE6C60;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_12_18();
  }

  OUTLINED_FUNCTION_168(qword_280C022C8);
  OUTLINED_FUNCTION_140_7();
  if (v37)
  {

    OUTLINED_FUNCTION_179_2(v25[13]);
    sub_21739EFA8(v31);
    v38 = v25[13];
LABEL_17:
    v40 = v90;
    v41 = *(v90 + v38);
    if (!v37)
    {
      v37 = sub_217751DE8();
    }

    *(v40 + v38) = v37;
    goto LABEL_20;
  }

  v37 = qword_280BE6DC0;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_11_26();
  }

  OUTLINED_FUNCTION_168(qword_280C023A0);
  OUTLINED_FUNCTION_140_7();
  if (v37)
  {

    OUTLINED_FUNCTION_179_2(v25[15]);
    sub_21739EFA8(v31);
    v38 = v25[15];
    goto LABEL_17;
  }

  v42 = qword_280BE6D08;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_21_16();
  }

  OUTLINED_FUNCTION_168(qword_280C02338);
  OUTLINED_FUNCTION_140_7();
  if (v42)
  {

    sub_21726A630(&v31[v25[20]], v13, &unk_27CB277C0, &qword_217758DC0);
    sub_21739EFA8(v31);
    v43 = sub_2177516D8();
    OUTLINED_FUNCTION_133(v13, 1, v43);
    if (v44)
    {
      v56 = v90;
      sub_21726A630(v90 + v25[20], v17, &unk_27CB277C0, &qword_217758DC0);
      OUTLINED_FUNCTION_133(v13, 1, v43);
      if (!v44)
      {
        sub_2171F0738(v13, &unk_27CB277C0, &qword_217758DC0);
      }
    }

    else
    {
      (*(*(v43 - 8) + 32))(v17, v13, v43);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v43);
      v56 = v90;
    }

    v57 = &unk_27CB277C0;
    v58 = &qword_217758DC0;
    v59 = v56 + v25[20];
    v60 = v17;
    goto LABEL_34;
  }

  v45 = qword_280BE6B78;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  OUTLINED_FUNCTION_168(qword_280C02268);
  OUTLINED_FUNCTION_140_7();
  if (v45)
  {

    v46 = &v31[v25[24]];
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[2];
    v50 = OUTLINED_FUNCTION_93();
    sub_21739AF10(v50, v51, v49);
    sub_21739EFA8(v31);
    v52 = v90;
    if (v49 == 1)
    {
      v53 = (v90 + v25[24]);
      v47 = *v53;
      v48 = v53[1];
      v49 = v53[2];
      v54 = OUTLINED_FUNCTION_93();
      sub_21739AF10(v54, v55, v49);
    }

    v61 = (v52 + v25[24]);
    sub_21733B290(*v61, v61[1], v61[2]);
    *v61 = v47;
    v61[1] = v48;
    v61[2] = v49;
    goto LABEL_20;
  }

  v37 = qword_280BE6B70;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_19_11();
  }

  OUTLINED_FUNCTION_168(qword_280C02260);
  OUTLINED_FUNCTION_140_7();
  if (v37)
  {

    OUTLINED_FUNCTION_179_2(v25[26]);
    sub_21739EFA8(v31);
    v38 = v25[26];
    goto LABEL_17;
  }

  v62 = qword_280BE6BB0;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_17_0();
  }

  OUTLINED_FUNCTION_168(qword_280BE6BB8);
  OUTLINED_FUNCTION_140_7();
  if (v62)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25318, &qword_2177657C0, v25[49]);
    sub_21739EFA8(v31);
    if (v92)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25318, &qword_2177657C0, v25[49]);
      if (v92)
      {
        sub_2171F0738(v91, &qword_27CB25318, &qword_2177657C0);
      }
    }

    v63 = v25[49];
    v57 = &qword_27CB25318;
    v58 = &qword_2177657C0;
    goto LABEL_83;
  }

  v62 = qword_280BE6DB0;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_16_21();
  }

  OUTLINED_FUNCTION_168(qword_280C02398);
  OUTLINED_FUNCTION_140_7();
  if (v62)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25338, &unk_21775D3E0, v25[50]);
    sub_21739EFA8(v31);
    if (v92)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25338, &unk_21775D3E0, v25[50]);
      if (v92)
      {
        sub_2171F0738(v91, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    v63 = v25[50];
LABEL_66:
    v57 = &qword_27CB25338;
    v58 = &unk_21775D3E0;
LABEL_83:
    v60 = v93;
    v59 = v62 + v63;
LABEL_34:
    sub_21733BBDC(v60, v59, v57, v58);
    goto LABEL_20;
  }

  v62 = qword_280BE6B58;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_15_7();
  }

  OUTLINED_FUNCTION_168(qword_280BE6B60);
  OUTLINED_FUNCTION_140_7();
  if (v62)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25310, &unk_21775D3D0, v25[51]);
    sub_21739EFA8(v31);
    if (v92)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25310, &unk_21775D3D0, v25[51]);
      if (v92)
      {
        sub_2171F0738(v91, &qword_27CB25310, &unk_21775D3D0);
      }
    }

    v63 = v25[51];
    v57 = &qword_27CB25310;
    v58 = &unk_21775D3D0;
    goto LABEL_83;
  }

  v62 = qword_280BE6B98;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_14_4();
  }

  OUTLINED_FUNCTION_168(qword_280BE6BA0);
  OUTLINED_FUNCTION_140_7();
  if (v62)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25320, &unk_21776E020, v25[52]);
    sub_21739EFA8(v31);
    if (v92)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25320, &unk_21776E020, v25[52]);
      if (v92)
      {
        sub_2171F0738(v91, &qword_27CB25320, &unk_21776E020);
      }
    }

    v63 = v25[52];
    v57 = &qword_27CB25320;
    v58 = &unk_21776E020;
    goto LABEL_83;
  }

  v62 = qword_280BE6B40;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_13_19();
  }

  OUTLINED_FUNCTION_168(qword_280BE6B48);
  OUTLINED_FUNCTION_140_7();
  if (v62)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25338, &unk_21775D3E0, v25[53]);
    sub_21739EFA8(v31);
    if (v92)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25338, &unk_21775D3E0, v25[53]);
      if (v92)
      {
        sub_2171F0738(v91, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    v63 = v25[53];
    goto LABEL_66;
  }

  v62 = qword_280BE6BD8;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_6_24();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE6BE0);
  OUTLINED_FUNCTION_140_7();
  if (v62)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB255A8, &unk_21775D450, v25[54]);
    sub_21739EFA8(v31);
    if (v92)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB255A8, &unk_21775D450, v25[54]);
      if (v92)
      {
        sub_2171F0738(v91, &qword_27CB255A8, &unk_21775D450);
      }
    }

    v63 = v25[54];
    v57 = &qword_27CB255A8;
    v58 = &unk_21775D450;
    goto LABEL_83;
  }

  v62 = qword_280BE6D20;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_5_30();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE6D28);
  OUTLINED_FUNCTION_140_7();
  if (v62)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25338, &unk_21775D3E0, v25[55]);
    sub_21739EFA8(v31);
    if (v92)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25338, &unk_21775D3E0, v25[55]);
      if (v92)
      {
        sub_2171F0738(v91, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    v63 = v25[55];
    goto LABEL_66;
  }

  v64 = qword_280BE6D68;

  if (v64 != -1)
  {
    OUTLINED_FUNCTION_4_40();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE6D70);
  OUTLINED_FUNCTION_140_7();
  if (v64)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25338, &unk_21775D3E0, v25[56]);
    sub_21739EFA8(v31);
    if (v92)
    {
      OUTLINED_FUNCTION_63_11();
    }

    else
    {
      v75 = v25[56];
      OUTLINED_FUNCTION_188_4();
      sub_21726A630(v77 + v76, v93, v78, v79);
      if (v92)
      {
        sub_2171F0738(v91, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    v80 = v25[56];
    OUTLINED_FUNCTION_188_4();
    v59 = v82 + v81;
    goto LABEL_34;
  }

  v65 = qword_280BE6C20;

  if (v65 != -1)
  {
    OUTLINED_FUNCTION_3_36();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280C022A0);
  OUTLINED_FUNCTION_140_7();
  if (v65)
  {

    OUTLINED_FUNCTION_179_2(v25[57]);
    sub_21739EFA8(v31);
    v66 = v25[57];
  }

  else
  {
    v67 = qword_280BE6D90;

    if (v67 != -1)
    {
      OUTLINED_FUNCTION_2_37();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280C02378);
    OUTLINED_FUNCTION_140_7();
    if (v67)
    {

      v68 = &v31[v25[58]];
      v69 = *v68;
      v70 = v68[8];
      sub_21739EFA8(v31);
      v71 = v25[58];
      if (v70 == 1)
      {
        OUTLINED_FUNCTION_188_4();
        v73 = (v72 + v71);
        v69 = *v73;
        v74 = *(v73 + 8);
      }

      else
      {
        v74 = 0;
      }

      v85 = v90 + v71;
      *v85 = v69;
      *(v85 + 8) = v74;
      goto LABEL_20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
    OUTLINED_FUNCTION_31_11();
    v65 = OUTLINED_FUNCTION_54_0();
    v83 = OUTLINED_FUNCTION_168(v65);

    if ((v83 & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_152_6();
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000027, 0x80000002177AC5E0);
        v91[0] = v1;
        sub_217752C78();
        OUTLINED_FUNCTION_217_0();
        OUTLINED_FUNCTION_153_4();
        v87 = 324;
LABEL_124:
        v90 = v87;
        OUTLINED_FUNCTION_142_7();
        __break(1u);
      }
    }

    OUTLINED_FUNCTION_179_2(v25[59]);
    sub_21739EFA8(v31);
    v66 = v25[59];
  }

  v84 = *(v90 + v66);
  if (!v65)
  {
    v65 = sub_217751DE8();
  }

  *(v90 + v66) = v65;
LABEL_20:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21739A2C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_readAtKeyPath();
  v10 = *v8;
  v9 = v8[1];
  sub_217751DE8();
  v7(&v14, 0);
  if (a4 != 1)
  {
    LOWORD(v14) = a2;
    BYTE2(v14) = BYTE2(a2);
    v15 = a3;
    v16 = a4;
    sub_217751DE8();
    swift_getAtKeyPath();

    if (v13)
    {
      v10 = v12;

      v9 = v13;
    }
  }

  v14 = v10;
  v15 = v9;
  sub_217751DE8();
  swift_setAtWritableKeyPath();
}

uint64_t sub_21739A3CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177657B0;
  if (qword_280BE6B50 != -1)
  {
    OUTLINED_FUNCTION_82_7();
  }

  *(v0 + 32) = qword_280C02258;
  v1 = qword_27CB23DE8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_81_8();
  }

  *(v0 + 40) = qword_27CB8A300;
  v2 = qword_280BE6DA8;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_79_9();
  }

  *(v0 + 48) = qword_280C02390;
  v3 = qword_27CB23DE0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_78_5();
  }

  *(v0 + 56) = qword_27CB8A2F8;
  v4 = qword_280BE6DA0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_77();
  }

  *(v0 + 64) = qword_280C02388;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  OUTLINED_FUNCTION_31_11();
  *(v0 + 72) = OUTLINED_FUNCTION_53_11();
  v5 = qword_280BE6D38;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_76_7();
  }

  *(v0 + 80) = qword_280C02348;
  v6 = qword_280BE6D00;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_75_6();
  }

  *(v0 + 88) = qword_280C02330;
  v7 = qword_280BE6B38;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_74_7();
  }

  *(v0 + 96) = qword_280C02250;
  v8 = qword_280BE6C60;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_12_18();
  }

  *(v0 + 104) = qword_280C022C8;
  v9 = qword_280BE6CD8;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_73_1();
  }

  *(v0 + 112) = qword_280C02318;
  v10 = qword_280BE6DC0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_11_26();
  }

  *(v0 + 120) = qword_280C023A0;
  v11 = qword_280BE6D98;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_72_8();
  }

  *(v0 + 128) = qword_280C02380;
  v12 = qword_280BE6BF0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_117_9();
  }

  *(v0 + 136) = qword_280C02280;
  v13 = qword_280BE6C90;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_116_9();
  }

  *(v0 + 144) = qword_280C022E8;
  v14 = qword_280BE6B88;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_115_5();
  }

  *(v0 + 152) = qword_280C02270;
  v15 = qword_280BE6C80;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_114_4();
  }

  *(v0 + 160) = qword_280C022D8;
  v16 = qword_280BE6D08;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_21_16();
  }

  *(v0 + 168) = qword_280C02338;
  v17 = qword_280BE6B20;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_113_7();
  }

  *(v0 + 176) = qword_280C02240;
  v18 = qword_280BE6BF8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_112_8();
  }

  *(v0 + 184) = qword_280C02288;
  v19 = qword_280BE6CB0;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_111_8();
  }

  *(v0 + 192) = qword_280C02300;
  v20 = qword_280BE6B78;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  *(v0 + 200) = qword_280C02268;
  v21 = qword_280BE6C88;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_109_6();
  }

  *(v0 + 208) = qword_280C022E0;
  v22 = qword_280BE6B70;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_19_11();
  }

  *(v0 + 216) = qword_280C02260;
  v23 = qword_280BE6CA8;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_108_7();
  }

  *(v0 + 224) = qword_280C022F8;
  v24 = qword_280BE6CF0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_107_6();
  }

  *(v0 + 232) = qword_280C02328;
  v25 = qword_280BE6D58;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_106_5();
  }

  *(v0 + 240) = qword_280C02360;
  v26 = qword_280BE6BC8;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_105_1();
  }

  *(v0 + 248) = qword_280C02278;
  v27 = qword_280BE6D50;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_104_5();
  }

  *(v0 + 256) = qword_280C02358;
  v28 = qword_280BE6C08;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_103_7();
  }

  *(v0 + 264) = qword_280C02290;
  v29 = qword_280BE6B30;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_102_7();
  }

  *(v0 + 272) = qword_280C02248;
  v30 = qword_280BE6D18;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_18_19();
  }

  *(v0 + 280) = qword_280C02340;
  v31 = qword_280BE6CE8;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_100_7();
  }

  *(v0 + 288) = qword_280C02320;
  v32 = qword_280BE6CA0;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_99_7();
  }

  *(v0 + 296) = qword_280C022F0;
  v33 = qword_280BE6CC8;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_97_7();
  }

  *(v0 + 304) = qword_280C02310;
  v34 = qword_280BE6C40;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_96_7();
  }

  *(v0 + 312) = qword_280C022B8;
  v35 = qword_27CB23DD8;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  *(v0 + 320) = qword_27CB8A2F0;
  v36 = qword_280BE6C38;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_94_5();
  }

  *(v0 + 328) = qword_280C022B0;
  v37 = qword_280BE6C30;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_93_8();
  }

  *(v0 + 336) = qword_280C022A8;
  v38 = qword_280BE6C18;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_92_7();
  }

  *(v0 + 344) = qword_280C02298;
  v39 = qword_280BE6CB8;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_91_7();
  }

  *(v0 + 352) = qword_280C02308;
  v40 = qword_280BE6C70;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_90_8();
  }

  *(v0 + 360) = qword_280C022D0;
  v41 = qword_280BE6B18;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_89_7();
  }

  *(v0 + 368) = qword_280C02238;
  v42 = qword_280BE6C50;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_88_7();
  }

  *(v0 + 376) = qword_280C022C0;
  v43 = qword_280BE6D78;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_86_5();
  }

  *(v0 + 384) = qword_280C02368;
  v44 = qword_280BE6D80;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_85_7();
  }

  *(v0 + 392) = qword_280C02370;
  v45 = qword_280BE6D40;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_84_7();
  }

  *(v0 + 400) = qword_280C02350;
  v46 = qword_280BE6BB0;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_17_0();
  }

  *(v0 + 408) = qword_280BE6BB8;
  v47 = qword_280BE6DB0;

  if (v47 != -1)
  {
    OUTLINED_FUNCTION_16_21();
  }

  *(v0 + 416) = qword_280C02398;
  v48 = qword_280BE6B58;

  if (v48 != -1)
  {
    OUTLINED_FUNCTION_15_7();
  }

  *(v0 + 424) = qword_280BE6B60;
  v49 = qword_280BE6B98;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_14_4();
  }

  *(v0 + 432) = qword_280BE6BA0;
  v50 = qword_280BE6B40;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_13_19();
  }

  *(v0 + 440) = qword_280BE6B48;
  v51 = qword_280BE6BD8;

  if (v51 != -1)
  {
    OUTLINED_FUNCTION_6_24();
    swift_once();
  }

  *(v0 + 448) = qword_280BE6BE0;
  v52 = qword_280BE6D20;

  if (v52 != -1)
  {
    OUTLINED_FUNCTION_5_30();
    swift_once();
  }

  *(v0 + 456) = qword_280BE6D28;
  v53 = qword_280BE6D68;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_4_40();
    swift_once();
  }

  *(v0 + 464) = qword_280BE6D70;
  v54 = qword_280BE6C20;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_3_36();
    swift_once();
  }

  *(v0 + 472) = qword_280C022A0;
  v55 = qword_280BE6D90;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_2_37();
    swift_once();
  }

  *(v0 + 480) = qword_280C02378;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
  OUTLINED_FUNCTION_31_11();
  *(v0 + 488) = OUTLINED_FUNCTION_54_0();
  qword_280C01FE0 = v0;
}

uint64_t sub_21739AF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t MusicVideoPropertyProvider.knownProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 240));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_130_6() + 244);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *MusicVideoPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 244);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t MusicVideoPropertyProvider.type.getter()
{
  v0 = OUTLINED_FUNCTION_130_6();
  OUTLINED_FUNCTION_160_0(*(v0 + 248));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = type metadata accessor for MusicVideoPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 248));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t MusicVideoPropertyProvider.href.getter()
{
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 252));
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicVideoPropertyProvider.href.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for MusicVideoPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 252));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t MusicVideoPropertyProvider.rawAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 256));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.rawRelationships.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 260));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.rawAssociations.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 264));

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.rawMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 268));

  return sub_217751DE8();
}

void static MusicVideoPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_165_4();
  v7 = sub_2177517D8();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_81();
  v776 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_31();
  v775 = v20;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_99();
  v772 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_99();
  v770 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27, v28);
  v766 = &v760 - v29;
  v773 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  v30 = OUTLINED_FUNCTION_43(v773);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  OUTLINED_FUNCTION_31();
  v774 = v34;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_99();
  v771 = v37;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_99();
  v769 = v40;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v41, v42);
  v765 = &v760 - v43;
  v780 = sub_2177516D8();
  v44 = OUTLINED_FUNCTION_0_0(v780);
  v778 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44, v48);
  OUTLINED_FUNCTION_81();
  v777 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v51 = OUTLINED_FUNCTION_45_0(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51, v54);
  OUTLINED_FUNCTION_31();
  v768 = v55;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v760 - v58;
  MEMORY[0x28223BE20](v60, v61);
  v63 = &v760 - v62;
  v779 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  v64 = OUTLINED_FUNCTION_43(v779);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64, v67);
  OUTLINED_FUNCTION_31();
  v767 = v68;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v69, v70);
  v72 = &v760 - v71;
  MEMORY[0x28223BE20](v73, v74);
  v76 = &v760 - v75;
  v77 = OUTLINED_FUNCTION_163_3();
  memcpy(v77, v6, 0x221uLL);
  v78 = OUTLINED_FUNCTION_162_4();
  memcpy(v78, v4, 0x221uLL);
  v79 = OUTLINED_FUNCTION_40_13();
  memcpy(v79, v6, 0x221uLL);
  memcpy((v0 + 552), v4, 0x221uLL);
  memcpy(v819, v6, 0x221uLL);
  OUTLINED_FUNCTION_104(v819);
  if (v97)
  {
    v80 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_223_2(v80);
    v81 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_104(v81);
    if (!v97)
    {
      OUTLINED_FUNCTION_163_3();
      OUTLINED_FUNCTION_159_5();
      OUTLINED_FUNCTION_157(v110, v111);
      OUTLINED_FUNCTION_162_4();
      OUTLINED_FUNCTION_159_5();
LABEL_10:
      OUTLINED_FUNCTION_157(v112, v113);
      goto LABEL_11;
    }

    v763 = v10;
    v764 = v7;
    OUTLINED_FUNCTION_58_9();
    OUTLINED_FUNCTION_42_9();
    memcpy(v82, v83, 0x221uLL);
    OUTLINED_FUNCTION_163_3();
    OUTLINED_FUNCTION_32_13();
    sub_21726A630(v84, v85, v86, &unk_21775E9A0);
    OUTLINED_FUNCTION_162_4();
    OUTLINED_FUNCTION_32_13();
    sub_21726A630(v87, v88, v89, &unk_21775E9A0);
    v90 = OUTLINED_FUNCTION_58_9();
    sub_2171F0738(v90, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    OUTLINED_FUNCTION_58_9();
    OUTLINED_FUNCTION_42_9();
    memcpy(v91, v92, 0x221uLL);
    OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_42_9();
    memcpy(v93, v94, 0x221uLL);
    v95 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_223_2(v95);
    v96 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_104(v96);
    if (v97)
    {
      OUTLINED_FUNCTION_42_9();
      memcpy(v98, v99, 0x221uLL);
      OUTLINED_FUNCTION_163_3();
      OUTLINED_FUNCTION_59_5();
      sub_21726A630(v100, v101, v102, &unk_21775E9A0);
      OUTLINED_FUNCTION_162_4();
      OUTLINED_FUNCTION_59_5();
      sub_21726A630(v103, v104, v105, &unk_21775E9A0);
      v106 = OUTLINED_FUNCTION_49_10();
      sub_21726A630(v106, v107, v108, &unk_21775E9A0);
      v109 = v788;
LABEL_9:
      sub_217284084(v109);
LABEL_11:
      OUTLINED_FUNCTION_37_12();
      OUTLINED_FUNCTION_42_9();
      memcpy(v114, v115, 0x449uLL);
LABEL_22:
      v168 = OUTLINED_FUNCTION_37_12();
LABEL_23:
      sub_2171F0738(v168, v169, v170);
      goto LABEL_24;
    }

    v763 = v10;
    v764 = v7;
    OUTLINED_FUNCTION_223_2(v788);
    OUTLINED_FUNCTION_163_3();
    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v116, v117, v118, &unk_21775E9A0);
    OUTLINED_FUNCTION_162_4();
    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v119, v120, v121, &unk_21775E9A0);
    v122 = OUTLINED_FUNCTION_49_10();
    sub_21726A630(v122, v123, v124, &unk_21775E9A0);
    v125 = OUTLINED_FUNCTION_71_10();
    v126 = static Artwork.== infix(_:_:)(v125, v788);
    memcpy(v786, v788, 0x221uLL);
    sub_217284084(v786);
    OUTLINED_FUNCTION_64_11();
    memcpy(v127, v128, 0x221uLL);
    sub_217284084(v787);
    OUTLINED_FUNCTION_42_9();
    memcpy(v129, v130, 0x221uLL);
    sub_2171F0738(v788, &qword_27CB24400, &unk_21775E9A0);
    if ((v126 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_178_4(&v797);
  v131 = OUTLINED_FUNCTION_161_4();
  memcpy(v131, (v4 + 552), 0x161uLL);
  OUTLINED_FUNCTION_165_4();
  v132 = OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_178_4(v132);
  memcpy(&qword_27CB24568, (v4 + 552), 0x161uLL);
  OUTLINED_FUNCTION_178_4(v798);
  OUTLINED_FUNCTION_104(v798);
  if (v97)
  {
    v133 = OUTLINED_FUNCTION_37_12();
    memcpy(v133, &qword_27CB24568, 0x161uLL);
    v134 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_104(v134);
    if (v97)
    {
      OUTLINED_FUNCTION_58_9();
      OUTLINED_FUNCTION_42_9();
      memcpy(v135, v136, 0x161uLL);
      OUTLINED_FUNCTION_32_13();
      sub_21726A630(v137, v138, v139, &qword_21775CD00);
      OUTLINED_FUNCTION_161_4();
      OUTLINED_FUNCTION_32_13();
      sub_21726A630(v140, v141, v142, &qword_21775CD00);
      v143 = OUTLINED_FUNCTION_58_9();
      sub_2171F0738(v143, &qword_27CB25468, &qword_21775CD00);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_159_5();
    OUTLINED_FUNCTION_157(v162, v163);
    OUTLINED_FUNCTION_161_4();
    OUTLINED_FUNCTION_159_5();
    OUTLINED_FUNCTION_157(v164, v165);
LABEL_21:
    OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_42_9();
    memcpy(v166, v167, 0x2C9uLL);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_42_9();
  memcpy(v144, v145, 0x161uLL);
  OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_42_9();
  memcpy(v146, v147, 0x161uLL);
  v148 = OUTLINED_FUNCTION_37_12();
  memcpy(v148, &qword_27CB24568, 0x161uLL);
  v149 = OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_104(v149);
  if (v150)
  {
    OUTLINED_FUNCTION_42_9();
    memcpy(v151, v152, 0x161uLL);
    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v153, v154, v155, &qword_21775CD00);
    OUTLINED_FUNCTION_161_4();
    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v156, v157, v158, &qword_21775CD00);
    v159 = OUTLINED_FUNCTION_49_10();
    sub_21726A630(v159, v160, v161, &qword_21775CD00);
    sub_217269F50(v788);
    goto LABEL_21;
  }

  memcpy(v788, &qword_27CB24568, 0x161uLL);
  OUTLINED_FUNCTION_59_5();
  sub_21726A630(v171, v172, v173, &qword_21775CD00);
  OUTLINED_FUNCTION_161_4();
  OUTLINED_FUNCTION_59_5();
  sub_21726A630(v174, v175, v176, &qword_21775CD00);
  v177 = OUTLINED_FUNCTION_49_10();
  sub_21726A630(v177, v178, v179, &qword_21775CD00);
  OUTLINED_FUNCTION_71_10();
  static MusicIdentifierSet.== infix(_:_:)();
  v181 = v180;
  memcpy(v786, v788, 0x161uLL);
  sub_217269F50(v786);
  OUTLINED_FUNCTION_64_11();
  memcpy(v182, v183, 0x161uLL);
  sub_217269F50(v787);
  OUTLINED_FUNCTION_42_9();
  memcpy(v184, v185, 0x161uLL);
  sub_2171F0738(v788, &qword_27CB25468, &qword_21775CD00);
  if ((v181 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v186 = *(v6 + 920);
  v187 = *(v4 + 920);
  if (v186)
  {
    if (!v187)
    {
      goto LABEL_24;
    }

    v188 = *(v6 + 912) == *(v4 + 912) && v186 == v187;
    if (!v188 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v187)
  {
    goto LABEL_24;
  }

  v189 = *(v4 + 936);
  if (*(v6 + 936))
  {
    if (!*(v4 + 936))
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(v6 + 928) != *(v4 + 928))
    {
      v189 = 1;
    }

    if (v189)
    {
      goto LABEL_24;
    }
  }

  v190 = *(v6 + 952);
  v191 = *(v4 + 952);
  if (v190)
  {
    if (!v191)
    {
      goto LABEL_24;
    }

    v192 = *(v6 + 944) == *(v4 + 944) && v190 == v191;
    if (!v192 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v191)
  {
    goto LABEL_24;
  }

  v762 = type metadata accessor for MusicVideoPropertyProvider();
  v193 = v762[9];
  v194 = *(v779 + 48);
  sub_21726A630(v6 + v193, v76, &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(v4 + v193, &v76[v194], &unk_27CB277C0, &qword_217758DC0);
  v195 = v780;
  OUTLINED_FUNCTION_133(v76, 1, v780);
  if (v97)
  {
    OUTLINED_FUNCTION_133(&v76[v194], 1, v195);
    if (v97)
    {
      sub_2171F0738(v76, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_60;
    }

LABEL_58:
    v169 = &qword_27CB24840;
    v170 = &unk_217758DD0;
    v168 = v76;
    goto LABEL_23;
  }

  sub_21726A630(v76, v63, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(&v76[v194], 1, v195);
  if (v196)
  {
    (*(v778 + 8))(v63, v195);
    goto LABEL_58;
  }

  v197 = v778;
  (*(v778 + 32))(v777, &v76[v194], v195);
  OUTLINED_FUNCTION_1_34();
  sub_21739F04C(v198, v199);
  OUTLINED_FUNCTION_148_3();
  v194 = v195;
  HIDWORD(v761) = sub_217751F08();
  v200 = *(v197 + 8);
  v200(v777, v195);
  v201 = OUTLINED_FUNCTION_148_3();
  (v200)(v201);
  sub_2171F0738(v76, &unk_27CB277C0, &qword_217758DC0);
  if ((v761 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_60:
  v202 = v762;
  v203 = v762[10];
  v204 = *(v6 + v203 + 4);
  v205 = *(v6 + v203);
  v206 = (v4 + v203);
  v207 = *(v206 + 4);
  v208 = *v206;
  OUTLINED_FUNCTION_165_4();
  *(v194 + 4) = v211;
  LODWORD(v810) = v212;
  *(v194 + 9) = v213;
  *(v194 + 5) = v214;
  if ((v209 & 0xFF00) == 0x200)
  {
    if ((v210 & 0xFF00) != 0x200)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LODWORD(v802) = v209;
    BYTE4(v802) = BYTE4(v209);
    if ((v210 & 0xFF00) == 0x200)
    {
      goto LABEL_24;
    }

    v215 = OUTLINED_FUNCTION_37_12();
    if (!static CatalogAsset.== infix(_:_:)(v215, (v217 | v216)))
    {
      goto LABEL_24;
    }
  }

  v218 = v202[11];
  v219 = *(v6 + v218);
  v220 = *(v4 + v218);
  *v194 = v219;
  *(v194 + 1) = v220;
  if (v219 == 2)
  {
    if (v220 != 2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v802) = v219;
    if (v220 == 2)
    {
      goto LABEL_24;
    }

    v221 = OUTLINED_FUNCTION_9_22();
    if (!static ContentRating.== infix(_:_:)(v221, v222))
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_144_3(v202[12]);
  if (v224)
  {
    if (!v223)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_2();
    if (v225)
    {
      goto LABEL_24;
    }
  }

  v226 = v202[13];
  v227 = *(v4 + v226);
  if (*(v6 + v226))
  {
    if (!v227)
    {
      goto LABEL_24;
    }

    v228 = *(v4 + v226);
    sub_217751DE8();
    OUTLINED_FUNCTION_148_3();
    sub_217262A00();
    v230 = v229;

    if ((v230 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v227)
  {
    goto LABEL_24;
  }

  v231 = (v6 + v202[14]);
  v232 = v231[2];
  v792 = v231[3];
  v233 = v231[1];
  v789 = *v231;
  v790 = v233;
  v234 = v231[1];
  v791 = v231[2];
  v235 = (v4 + v202[14]);
  v236 = v235[2];
  v796 = v235[3];
  v237 = v235[1];
  v793 = *v235;
  v794 = v237;
  v238 = v235[1];
  v795 = v235[2];
  v787[0] = v234;
  v787[1] = v232;
  v787[2] = v231[3];
  v239 = v789;
  v240 = v793;
  v786[0] = v238;
  v786[1] = v236;
  v786[2] = v235[3];
  if (*(&v789 + 1) == 1)
  {
    if (*(&v793 + 1) == 1)
    {
      *&v810 = v789;
      *(&v810 + 1) = 1;
      v241 = v231[2];
      v811 = v231[1];
      v812 = v241;
      v242 = v231[3];
      OUTLINED_FUNCTION_182_4();
      *(v243 + 255) = v244;
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_194_4(v245, v246);
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_194_4(v247, v248);
      v249 = OUTLINED_FUNCTION_40_13();
      sub_2171F0738(v249, &qword_27CB24B70, &unk_217759460);
      goto LABEL_88;
    }

    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_176_5(v267, v268);
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_176_5(v269, v270);
LABEL_85:
    v810 = v239;
    v811 = v787[0];
    v812 = v787[1];
    OUTLINED_FUNCTION_182_4();
    *(v271 + 255) = v272;
    v813 = v240;
    v814 = v786[0];
    v815 = v786[1];
    v816 = v786[2];
    goto LABEL_86;
  }

  v810 = v789;
  v250 = v231[2];
  v811 = v231[1];
  v812 = v250;
  v251 = v231[3];
  OUTLINED_FUNCTION_182_4();
  *(v253 + 255) = v254;
  v802 = v810;
  v803 = v255;
  v804 = v256;
  v805 = v254;
  if (*(&v240 + 1) == 1)
  {
    v806 = v810;
    v807 = v811;
    OUTLINED_FUNCTION_182_4();
    v258 = *(v257 + 255);
    v808 = v259;
    v809 = v258;
    OUTLINED_FUNCTION_64_11();
    OUTLINED_FUNCTION_176_5(v260, v261);
    OUTLINED_FUNCTION_64_11();
    OUTLINED_FUNCTION_176_5(v262, v263);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_64_11();
    OUTLINED_FUNCTION_176_5(v264, v265);
    v266 = OUTLINED_FUNCTION_58_9();
    sub_217351248(v266);
    goto LABEL_85;
  }

  v273 = v252[2];
  v807 = v252[1];
  v808 = v273;
  v809 = v252[3];
  v806 = v240;
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_159_5();
  HIDWORD(v761) = static EditorialNotes.== infix(_:_:)(v274, v275);
  v788[0] = v806;
  v788[1] = v807;
  v788[2] = v808;
  v788[3] = v809;
  OUTLINED_FUNCTION_32_13();
  sub_21726A630(v276, v277, v278, &unk_217759460);
  OUTLINED_FUNCTION_32_13();
  sub_21726A630(v279, v280, v281, &unk_217759460);
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_32_13();
  sub_21726A630(v282, v283, v284, &unk_217759460);
  sub_217351248(v788);
  *&v798[360] = v802;
  v799 = v803;
  v800 = v804;
  v801 = v805;
  v285 = OUTLINED_FUNCTION_71_10();
  sub_217351248(v285);
  v806 = v239;
  v807 = v787[0];
  v808 = v787[1];
  v809 = v787[2];
  v286 = OUTLINED_FUNCTION_58_9();
  sub_2171F0738(v286, &qword_27CB24B70, &unk_217759460);
  if ((v761 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_88:
  v287 = v762[15];
  v288 = *(v4 + v287);
  if (*(v6 + v287))
  {
    if (!v288)
    {
      goto LABEL_24;
    }

    v289 = *(v4 + v287);
    sub_217751DE8();
    OUTLINED_FUNCTION_148_3();
    sub_217262CB4();
    v291 = v290;

    if ((v291 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v288)
  {
    goto LABEL_24;
  }

  v292 = OUTLINED_FUNCTION_136(v762[16]);
  if (v292)
  {
    if (!v293 || (sub_217270790(v292, v293) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v293)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_13(v762[17]);
  if (v97)
  {
    if (v294 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v294 == 2 || ((v294 ^ v295) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_13(v762[18]);
  if (v97)
  {
    if (v296 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v296 == 2 || ((v296 ^ v297) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_10_19(v762[19]);
  if (v299 == 2)
  {
    if (v298 != 2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v802) = v299;
    if (v298 == 2)
    {
      goto LABEL_24;
    }

    v300 = OUTLINED_FUNCTION_9_22();
    if (!static HomeSharingAsset.== infix(_:_:)(v300, v301))
    {
      goto LABEL_24;
    }
  }

  v302 = v762[20];
  v303 = *(v779 + 48);
  OUTLINED_FUNCTION_194_4(v6 + v302, v72);
  OUTLINED_FUNCTION_194_4(v4 + v302, &v72[v303]);
  OUTLINED_FUNCTION_133(v72, 1, v780);
  if (v97)
  {
    OUTLINED_FUNCTION_133(&v72[v303], 1, v780);
    if (v97)
    {
      sub_2171F0738(v72, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_125;
    }

LABEL_123:
    v169 = &qword_27CB24840;
    v170 = &unk_217758DD0;
    v168 = v72;
    goto LABEL_23;
  }

  sub_21726A630(v72, v59, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(&v72[v303], 1, v780);
  if (v304)
  {
    (*(v778 + 8))(v59, v780);
    goto LABEL_123;
  }

  v305 = v778;
  v306 = v780;
  (*(v778 + 32))(v777, &v72[v303], v780);
  OUTLINED_FUNCTION_1_34();
  sub_21739F04C(v307, v308);
  OUTLINED_FUNCTION_211();
  v309 = sub_217751F08();
  v310 = *(v305 + 8);
  v310(v777, v306);
  v310(v59, v306);
  sub_2171F0738(v72, &unk_27CB277C0, &qword_217758DC0);
  if ((v309 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_125:
  OUTLINED_FUNCTION_31_13(v762[21]);
  if (v97)
  {
    if (v311 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v311 == 2 || ((v311 ^ v312) & 1) != 0)
  {
    goto LABEL_24;
  }

  v313 = v762[22];
  OUTLINED_FUNCTION_24_3();
  if (v316)
  {
    if (!v314)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_59_0(v315);
    v319 = v97 && v317 == v318;
    if (!v319 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v314)
  {
    goto LABEL_24;
  }

  v320 = v762[23];
  v321 = v6 + v320;
  v322 = *(v6 + v320 + 8);
  v323 = (v4 + v320);
  v324 = v323[1];
  if (!v322)
  {
    if (!v324)
    {

      goto LABEL_149;
    }

    v331 = v323[1];
    sub_217751DE8();
LABEL_147:

    goto LABEL_24;
  }

  v325 = *v323;
  v326 = *(v323 + 16);
  v327 = *(v321 + 16);
  *&v810 = *v321;
  *(&v810 + 1) = v322;
  LOBYTE(v811) = v327;
  if (!v324)
  {
    sub_217751DE8();
    goto LABEL_147;
  }

  LOWORD(v802) = v325 & 0xFF01;
  *(&v802 + 1) = v324;
  LOBYTE(v803) = v326 & 1;
  v328 = OUTLINED_FUNCTION_8_27();
  v330 = static FileAsset.== infix(_:_:)(v328, v329);
  swift_bridgeObjectRetain_n();
  sub_217751DE8();

  if ((v330 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_149:
  v332 = v762[24];
  v334 = *(v6 + v332);
  v333 = *(v6 + v332 + 8);
  v335 = *(v6 + v332 + 16);
  v336 = (v4 + v332);
  v338 = *v336;
  v337 = v336[1];
  v339 = v336[2];
  if (v335 == 1)
  {
    v340 = OUTLINED_FUNCTION_211();
    sub_21739AF10(v340, v341, 1);
    if (v339 == 1)
    {
      v342 = OUTLINED_FUNCTION_172_2();
      sub_21739AF10(v342, v343, 1);
      v344 = OUTLINED_FUNCTION_211();
      sub_21733B290(v344, v345, 1);
      goto LABEL_157;
    }

    v354 = OUTLINED_FUNCTION_172_2();
    sub_21739AF10(v354, v355, v339);
LABEL_155:
    v356 = OUTLINED_FUNCTION_46_13();
    sub_21733B290(v356, v357, v358);
    v359 = OUTLINED_FUNCTION_172_2();
    sub_21733B290(v359, v360, v339);
    goto LABEL_24;
  }

  *&v810 = v334;
  *(&v810 + 1) = v333;
  *&v811 = v335;
  if (v339 == 1)
  {
    v346 = OUTLINED_FUNCTION_46_13();
    sub_21739AF10(v346, v347, v348);
    v349 = OUTLINED_FUNCTION_172_2();
    sub_21739AF10(v349, v350, 1);
    v351 = OUTLINED_FUNCTION_46_13();
    sub_21739AF10(v351, v352, v353);

    goto LABEL_155;
  }

  LOWORD(v802) = v338;
  BYTE2(v802) = BYTE2(v338);
  *(&v802 + 1) = v337;
  *&v803 = v339;
  v361 = OUTLINED_FUNCTION_8_27();
  HIDWORD(v761) = static MusicLyrics.== infix(_:_:)(v361, v362);
  v760 = v803;
  v363 = OUTLINED_FUNCTION_46_13();
  sub_21739AF10(v363, v364, v365);
  v366 = OUTLINED_FUNCTION_172_2();
  sub_21739AF10(v366, v367, v339);
  v368 = OUTLINED_FUNCTION_46_13();
  sub_21739AF10(v368, v369, v370);

  v371 = OUTLINED_FUNCTION_46_13();
  sub_21733B290(v371, v372, v373);
  if ((v761 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_157:
  v374 = v762;
  v375 = v762[25];
  memcpy(v788, (v6 + v375), 0x221uLL);
  v376 = v762[25];
  v377 = OUTLINED_FUNCTION_71_10();
  memcpy(v377, (v4 + v376), 0x221uLL);
  OUTLINED_FUNCTION_165_4();
  v378 = OUTLINED_FUNCTION_40_13();
  memcpy(v378, (v6 + v375), 0x221uLL);
  memcpy(v374 + 138, (v4 + v376), 0x221uLL);
  v379 = OUTLINED_FUNCTION_58_9();
  memcpy(v379, (v6 + v375), 0x221uLL);
  v380 = OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_104(v380);
  if (v97)
  {
    v381 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_223_2(v381);
    v382 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_104(v382);
    if (v97)
    {
      OUTLINED_FUNCTION_42_9();
      memcpy(v383, v384, 0x221uLL);
      OUTLINED_FUNCTION_123_7();
      sub_21726A630(v385, v386, v387, &unk_21775E9A0);
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_123_7();
      sub_21726A630(v388, v389, v390, &unk_21775E9A0);
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v391, v392, v393);
      goto LABEL_166;
    }

    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v404, v405, v406, &unk_21775E9A0);
    v112 = OUTLINED_FUNCTION_71_10();
    v113 = v787;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_42_9();
  memcpy(v394, v395, 0x221uLL);
  OUTLINED_FUNCTION_42_9();
  memcpy(v396, v397, 0x221uLL);
  v398 = OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_223_2(v398);
  v399 = OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_104(v399);
  if (v400)
  {
    OUTLINED_FUNCTION_42_9();
    memcpy(v401, v402, 0x221uLL);
    OUTLINED_FUNCTION_157(v788, v782);
    v403 = OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_157(v403, v782);
    OUTLINED_FUNCTION_157(v787, v782);
    v109 = v783;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_223_2(v783);
  OUTLINED_FUNCTION_195_3(v788, v782);
  v407 = OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_195_3(v407, v782);
  OUTLINED_FUNCTION_195_3(v787, v782);
  v408 = static Artwork.== infix(_:_:)(v786, v783);
  memcpy(v781, v783, 0x221uLL);
  sub_217284084(v781);
  memcpy(v782, v786, 0x221uLL);
  sub_217284084(v782);
  OUTLINED_FUNCTION_42_9();
  memcpy(v409, v410, 0x221uLL);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v411, v412, v413);
  if ((v408 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_166:
  v414 = v762[26];
  v415 = *(v4 + v414);
  if (*(v6 + v414))
  {
    if (!v415)
    {
      goto LABEL_24;
    }

    v416 = *(v4 + v414);
    sub_217751DE8();
    v417 = OUTLINED_FUNCTION_211();
    v419 = sub_2172711A8(v417, v418);

    if ((v419 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v415)
  {
    goto LABEL_24;
  }

  v420 = v6 + v762[27];
  memcpy(v784, v420, sizeof(v784));
  memcpy(v785, (v4 + v762[27]), sizeof(v785));
  v421 = v784[0];
  v422 = v784[1];
  memcpy(v782, (v420 + 16), 0x68uLL);
  v423 = v785[0];
  v424 = v785[1];
  OUTLINED_FUNCTION_196_4(v781);
  if (!v422)
  {
    if (!v424)
    {
      v810 = v421;
      OUTLINED_FUNCTION_171_4();
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_195_3(v460, v461);
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_195_3(v462, v463);
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v464, v465, v466);
      goto LABEL_180;
    }

    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_157(v445, v446);
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_157(v447, v448);
LABEL_178:
    *&v810 = v421;
    *(&v810 + 1) = v422;
    OUTLINED_FUNCTION_165_4();
    memcpy(&qword_27CB244E0, v782, 0x68uLL);
    *(&v816 + 1) = v423;
    v817 = v424;
    memcpy(&unk_27CB24558, v781, 0x68uLL);
    goto LABEL_86;
  }

  *&v810 = v421;
  *(&v810 + 1) = v422;
  OUTLINED_FUNCTION_171_4();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_42_9();
  memcpy(v425, v426, 0x78uLL);
  if (!v424)
  {
    OUTLINED_FUNCTION_42_9();
    memcpy(v449, v450, 0x78uLL);
    OUTLINED_FUNCTION_123_7();
    sub_21726A630(v451, v452, v453, &unk_21775D620);
    OUTLINED_FUNCTION_123_7();
    sub_21726A630(v454, v455, v456, &unk_21775D620);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_123_7();
    sub_21726A630(v457, v458, v459, &unk_21775D620);
    sub_2172848C0(v787);
    goto LABEL_178;
  }

  OUTLINED_FUNCTION_196_4(&v787[1]);
  *&v787[0] = v423;
  *(&v787[0] + 1) = v424;
  OUTLINED_FUNCTION_123_7();
  sub_21726A630(v427, v428, v429, &unk_21775D620);
  OUTLINED_FUNCTION_123_7();
  sub_21726A630(v430, v431, v432, &unk_21775D620);
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_123_7();
  sub_21726A630(v433, v434, v435, &unk_21775D620);
  v436 = OUTLINED_FUNCTION_29_16();
  static PlayParameters.== infix(_:_:)(v436, v437);
  v439 = v438;
  memcpy(v783, v787, 0x78uLL);
  sub_2172848C0(v783);
  OUTLINED_FUNCTION_57_9();
  memcpy(v440, v441, 0x78uLL);
  sub_2172848C0(v786);
  *&v787[0] = v421;
  *(&v787[0] + 1) = v422;
  memcpy(&v787[1], v782, 0x68uLL);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v442, v443, v444);
  if ((v439 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_180:
  v467 = v762[28];
  v468 = *(v4 + v467);
  if (*(v6 + v467))
  {
    if (!v468)
    {
      goto LABEL_24;
    }

    v469 = *(v4 + v467);
    sub_217751DE8();
    OUTLINED_FUNCTION_211();
    sub_2172714AC();
    v471 = v470;

    if ((v471 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v468)
  {
    goto LABEL_24;
  }

  v472 = *(v773 + 48);
  v473 = v765;
  OUTLINED_FUNCTION_195_3(v6 + v762[29], v765);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_23_21(v473);
  if (v97)
  {
    OUTLINED_FUNCTION_133(v472 + v765, 1, v764);
    if (v97)
    {
      sub_2171F0738(v765, &qword_27CB241C0, &qword_217759480);
      goto LABEL_195;
    }

LABEL_193:
    v169 = &qword_27CB25C10;
    v170 = &unk_217765A50;
    v168 = v765;
    goto LABEL_23;
  }

  v474 = v765;
  sub_21726A630(v765, v766, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_23_21(v472 + v474);
  if (v475)
  {
    OUTLINED_FUNCTION_181_4();
    v476(v766);
    goto LABEL_193;
  }

  OUTLINED_FUNCTION_151_3();
  v477 = OUTLINED_FUNCTION_80_7();
  v478(v477);
  OUTLINED_FUNCTION_0_38();
  sub_21739F04C(v479, v480);
  OUTLINED_FUNCTION_141_6();
  v481 = OUTLINED_FUNCTION_98_10();
  v472(v481);
  v482 = OUTLINED_FUNCTION_172_2();
  v472(v482);
  sub_2171F0738(v765, &qword_27CB241C0, &qword_217759480);
  if ((v474 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_195:
  OUTLINED_FUNCTION_144_3(v762[30]);
  if (v484)
  {
    if (!v483)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v485)
    {
      goto LABEL_24;
    }
  }

  v486 = v762[31];
  OUTLINED_FUNCTION_24_3();
  if (v489)
  {
    if (!v487)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_59_0(v488);
    v492 = v97 && v490 == v491;
    if (!v492 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v487)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_144_3(v762[32]);
  if (v494)
  {
    if (!v493)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v495)
    {
      goto LABEL_24;
    }
  }

  v496 = *(v779 + 48);
  v497 = v767;
  OUTLINED_FUNCTION_195_3(v6 + v762[33], v767);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_133(v497, 1, v780);
  if (v97)
  {
    OUTLINED_FUNCTION_133(v767 + v496, 1, v780);
    if (v97)
    {
      sub_2171F0738(v767, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_222;
    }

LABEL_220:
    v169 = &qword_27CB24840;
    v170 = &unk_217758DD0;
    v168 = v767;
    goto LABEL_23;
  }

  v498 = v767;
  sub_21726A630(v767, v768, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v498 + v496, 1, v780);
  if (v499)
  {
    (*(v778 + 8))(v768, v780);
    goto LABEL_220;
  }

  v500 = v777;
  OUTLINED_FUNCTION_180_5();
  v501 = v767 + v496;
  v502 = v780;
  v503(v500, v501, v780);
  OUTLINED_FUNCTION_1_34();
  sub_21739F04C(v504, v505);
  v506 = v768;
  OUTLINED_FUNCTION_190_5();
  v507 = OUTLINED_FUNCTION_183_4();
  (qword_217758DC0)(v507);
  (qword_217758DC0)(v506, v502);
  sub_2171F0738(v767, &unk_27CB277C0, &qword_217758DC0);
  if ((v498 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_222:
  v508 = v762[34];
  OUTLINED_FUNCTION_24_3();
  if (v511)
  {
    if (!v509)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_59_0(v510);
    v514 = v97 && v512 == v513;
    if (!v514 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v509)
  {
    goto LABEL_24;
  }

  v515 = *(v773 + 48);
  v516 = v769;
  OUTLINED_FUNCTION_195_3(v6 + v762[35], v769);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_23_21(v516);
  if (v97)
  {
    OUTLINED_FUNCTION_23_21(v515 + v769);
    if (v97)
    {
      sub_2171F0738(v769, &qword_27CB241C0, &qword_217759480);
      goto LABEL_241;
    }

LABEL_239:
    v169 = &qword_27CB25C10;
    v170 = &unk_217765A50;
    v168 = v769;
    goto LABEL_23;
  }

  v517 = v769;
  sub_21726A630(v769, v770, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_23_21(v515 + v517);
  if (v518)
  {
    OUTLINED_FUNCTION_181_4();
    v519(v770);
    goto LABEL_239;
  }

  OUTLINED_FUNCTION_151_3();
  v520 = OUTLINED_FUNCTION_80_7();
  v521(v520);
  OUTLINED_FUNCTION_0_38();
  sub_21739F04C(v522, v523);
  OUTLINED_FUNCTION_141_6();
  v524 = OUTLINED_FUNCTION_98_10();
  v515(v524);
  v525 = OUTLINED_FUNCTION_172_2();
  v515(v525);
  sub_2171F0738(v769, &qword_27CB241C0, &qword_217759480);
  if ((v517 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_241:
  OUTLINED_FUNCTION_10_19(v762[36]);
  if (v527 == 3)
  {
    if (v526 != 3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v802) = v527;
    if (v526 == 3)
    {
      goto LABEL_24;
    }

    v528 = OUTLINED_FUNCTION_9_22();
    if (!static LegacyModelFavoriteStatus.== infix(_:_:)(v528, v529))
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_31_13(v762[37]);
  if (v97)
  {
    if (v530 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v530 == 2 || ((v530 ^ v531) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_13(v762[38]);
  if (v97)
  {
    if (v532 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v532 == 2 || ((v532 ^ v533) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_13(v762[39]);
  if (v97)
  {
    if (v534 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v534 == 2 || ((v534 ^ v535) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_10_19(v762[40]);
  if (v537 == 5)
  {
    if (v536 != 5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v802) = v537;
    if (v536 == 5)
    {
      goto LABEL_24;
    }

    v538 = OUTLINED_FUNCTION_9_22();
    if (!static LegacyModelKeepLocalEnabledStatus.== infix(_:_:)(v538, v539))
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_10_19(v762[41]);
  if (v541 == 7)
  {
    if (v540 != 7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v802) = v541;
    if (v540 == 7)
    {
      goto LABEL_24;
    }

    v542 = OUTLINED_FUNCTION_9_22();
    if (!static LegacyModelKeepLocalManagedStatus.== infix(_:_:)(v542, v543))
    {
      goto LABEL_24;
    }
  }

  v544 = v762[42];
  v545 = (v6 + v544);
  v546 = *(v6 + v544 + 8);
  v547 = v4 + v544;
  v548 = *(v547 + 8);
  if (v546)
  {
    if ((*(v547 + 8) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((*(v547 + 8) & 1) != 0 || !sub_21770C140(*v545, *v547))
  {
    goto LABEL_24;
  }

  v549 = *(v773 + 48);
  v550 = v771;
  OUTLINED_FUNCTION_195_3(v6 + v762[43], v771);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_23_21(v550);
  if (v97)
  {
    OUTLINED_FUNCTION_23_21(v549 + v771);
    if (v97)
    {
      sub_2171F0738(v771, &qword_27CB241C0, &qword_217759480);
      goto LABEL_289;
    }

LABEL_287:
    v169 = &qword_27CB25C10;
    v170 = &unk_217765A50;
    v168 = v771;
    goto LABEL_23;
  }

  v551 = v771;
  sub_21726A630(v771, v772, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_23_21(v549 + v551);
  if (v552)
  {
    OUTLINED_FUNCTION_181_4();
    v553(v772);
    goto LABEL_287;
  }

  OUTLINED_FUNCTION_151_3();
  v554 = OUTLINED_FUNCTION_80_7();
  v555(v554);
  OUTLINED_FUNCTION_0_38();
  sub_21739F04C(v556, v557);
  OUTLINED_FUNCTION_141_6();
  v558 = OUTLINED_FUNCTION_98_10();
  v549(v558);
  v559 = OUTLINED_FUNCTION_172_2();
  v549(v559);
  sub_2171F0738(v771, &qword_27CB241C0, &qword_217759480);
  if ((v551 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_289:
  v560 = v774;
  v561 = *(v773 + 48);
  OUTLINED_FUNCTION_195_3(v6 + v762[44], v774);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_23_21(v560);
  if (v97)
  {
    OUTLINED_FUNCTION_23_21(v774 + v561);
    if (v97)
    {
      sub_2171F0738(v774, &qword_27CB241C0, &qword_217759480);
      goto LABEL_299;
    }

LABEL_297:
    v169 = &qword_27CB25C10;
    v170 = &unk_217765A50;
    v168 = v774;
    goto LABEL_23;
  }

  v562 = v774;
  sub_21726A630(v774, v775, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_23_21(v562 + v561);
  if (v563)
  {
    OUTLINED_FUNCTION_181_4();
    v564(v775);
    goto LABEL_297;
  }

  OUTLINED_FUNCTION_180_5();
  v565 = OUTLINED_FUNCTION_80_7();
  v566 = v764;
  v567(v565);
  OUTLINED_FUNCTION_0_38();
  sub_21739F04C(v568, v569);
  v570 = v775;
  OUTLINED_FUNCTION_190_5();
  v571 = OUTLINED_FUNCTION_183_4();
  (qword_217759480)(v571);
  (qword_217759480)(v570, v566);
  sub_2171F0738(v774, &qword_27CB241C0, &qword_217759480);
  if ((v562 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_299:
  OUTLINED_FUNCTION_144_3(v762[45]);
  if (v573)
  {
    if (!v572)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v574)
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_31_13(v762[46]);
  if (v97)
  {
    if (v575 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v575 == 2 || ((v575 ^ v576) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_10_19(v762[47]);
  if (v578 == 10)
  {
    if (v577 != 10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v802) = v578;
    if (v577 == 10)
    {
      goto LABEL_24;
    }

    v579 = OUTLINED_FUNCTION_9_22();
    if (!static CloudStatus.== infix(_:_:)(v579, v580))
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_144_3(v762[48]);
  if (v582)
  {
    if (!v581)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_2();
    if (v583)
    {
      goto LABEL_24;
    }
  }

  v584 = v762[49];
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v814 + 1))
  {
    v585 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v585, v586, v587, v588);
    if (!v818)
    {
      v609 = OUTLINED_FUNCTION_37_12();
      sub_2171F0738(v609, v610, v611);
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_4();
    v589 = OUTLINED_FUNCTION_29_16();
    v591 = sub_21733E33C(v589, v590);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v592 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v592, v593, v594);
    if ((v591 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v818)
    {
      goto LABEL_86;
    }

    v595 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v595, v596, v597);
  }

  v598 = v762[50];
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v814 + 1))
  {
    v599 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v599, v600, v601, v602);
    if (!v818)
    {
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_61_4();
    v603 = OUTLINED_FUNCTION_29_16();
    v605 = sub_21733E8C8(v603, v604);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v606 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v606, v607, v608);
    if ((v605 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v818)
    {
      goto LABEL_86;
    }

    v612 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v612, v613, v614);
  }

  v615 = v762[51];
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v814 + 1))
  {
    v616 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v616, v617, v618, v619);
    if (!v818)
    {
      v640 = OUTLINED_FUNCTION_37_12();
      sub_2171F0738(v640, v641, v642);
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_4();
    v620 = OUTLINED_FUNCTION_29_16();
    v622 = sub_21733E820(v620, v621);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v623 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v623, v624, v625);
    if ((v622 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v818)
    {
      goto LABEL_86;
    }

    v626 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v626, v627, v628);
  }

  v629 = v762[52];
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v814 + 1))
  {
    v630 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v630, v631, v632, v633);
    if (!v818)
    {
      v657 = OUTLINED_FUNCTION_37_12();
      sub_2171F0738(v657, v658, v659);
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_4();
    v634 = OUTLINED_FUNCTION_29_16();
    v636 = sub_21733E874(v634, v635);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v637 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v637, v638, v639);
    if ((v636 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v818)
    {
      goto LABEL_86;
    }

    v643 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v643, v644, v645);
  }

  v646 = v762[53];
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v814 + 1))
  {
    v647 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v647, v648, v649, v650);
    if (!v818)
    {
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_61_4();
    v651 = OUTLINED_FUNCTION_29_16();
    v653 = sub_21733E8C8(v651, v652);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v654 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v654, v655, v656);
    if ((v653 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v818)
    {
      goto LABEL_86;
    }

    v660 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v660, v661, v662);
  }

  v663 = v762[54];
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v814 + 1))
  {
    v664 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v664, v665, v666, v667);
    if (!v818)
    {
      v688 = OUTLINED_FUNCTION_37_12();
      sub_2171F0738(v688, v689, v690);
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_4();
    v668 = OUTLINED_FUNCTION_29_16();
    v670 = sub_21733E970(v668, v669);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v671 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v671, v672, v673);
    if ((v670 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v818)
    {
      goto LABEL_86;
    }

    v674 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v674, v675, v676);
  }

  v677 = v762[55];
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v814 + 1))
  {
    v678 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v678, v679, v680, v681);
    if (v818)
    {
      OUTLINED_FUNCTION_61_4();
      v682 = OUTLINED_FUNCTION_29_16();
      v684 = sub_21733E8C8(v682, v683);
      OUTLINED_FUNCTION_62_10();
      OUTLINED_FUNCTION_35_11();
      v685 = OUTLINED_FUNCTION_40_13();
      sub_2171F0738(v685, v686, v687);
      if ((v684 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_368;
    }

LABEL_378:
    v709 = OUTLINED_FUNCTION_37_12();
    sub_2171F0738(v709, v710, v711);
    goto LABEL_86;
  }

  if (v818)
  {
    goto LABEL_86;
  }

  v691 = OUTLINED_FUNCTION_40_13();
  sub_2171F0738(v691, v692, v693);
LABEL_368:
  v694 = v762[56];
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v814 + 1))
  {
    v695 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v695, v696, v697, v698);
    if (v818)
    {
      OUTLINED_FUNCTION_61_4();
      v699 = OUTLINED_FUNCTION_29_16();
      v701 = sub_21733E8C8(v699, v700);
      OUTLINED_FUNCTION_62_10();
      OUTLINED_FUNCTION_35_11();
      v702 = OUTLINED_FUNCTION_40_13();
      sub_2171F0738(v702, v703, v704);
      if ((v701 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_374;
    }

    goto LABEL_378;
  }

  if (v818)
  {
LABEL_86:
    v168 = OUTLINED_FUNCTION_40_13();
    goto LABEL_23;
  }

  v705 = OUTLINED_FUNCTION_40_13();
  sub_2171F0738(v705, v706, v707);
LABEL_374:
  if (OUTLINED_FUNCTION_136(v762[57]))
  {
    if (!v708 || (sub_2172849CC() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v708)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_144_3(v762[58]);
  if (v713)
  {
    if (!v712)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_2();
    if (v714)
    {
      goto LABEL_24;
    }
  }

  v715 = v762[59];
  v716 = *(v4 + v715);
  if (*(v6 + v715))
  {
    if (!v716)
    {
      goto LABEL_24;
    }

    v717 = *(v4 + v715);
    sub_217751DE8();
    OUTLINED_FUNCTION_211();
    sub_21726F358();
    v719 = v718;

    if ((v719 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v716)
  {
    goto LABEL_24;
  }

  v720 = OUTLINED_FUNCTION_136(v762[60]);
  sub_217270140(v720, v721, v722, v723, v724, v725, v726, v727, v760, v761, v762, v763);
  if ((v728 & 1) == 0)
  {
    goto LABEL_24;
  }

  v729 = v762[61];
  memcpy(v786, (v6 + v729), 0x161uLL);
  memcpy(v783, (v6 + v729), 0x161uLL);
  v730 = v762[61];
  memcpy(v787, (v4 + v730), 0x161uLL);
  memcpy(v782, (v4 + v730), 0x161uLL);
  sub_217269EF4(v786, v781);
  sub_217269EF4(v787, v781);
  static MusicIdentifierSet.== infix(_:_:)();
  LOBYTE(v730) = v731;
  v732 = OUTLINED_FUNCTION_37_12();
  memcpy(v732, v782, 0x161uLL);
  v733 = OUTLINED_FUNCTION_37_12();
  sub_217269F50(v733);
  v734 = OUTLINED_FUNCTION_40_13();
  memcpy(v734, v783, 0x161uLL);
  v735 = OUTLINED_FUNCTION_40_13();
  sub_217269F50(v735);
  if ((v730 & 1) == 0)
  {
    goto LABEL_24;
  }

  v736 = v762[62];
  v737 = *(v6 + v736);
  v738 = *(v6 + v736 + 8);
  v739 = *(v6 + v736 + 16);
  v740 = v4 + v736;
  v741 = *(v740 + 16);
  if ((sub_2177060AC(v737, v738, v739, *v740, *(v740 + 8)) & 1) == 0)
  {
    goto LABEL_24;
  }

  v742 = v762[63];
  OUTLINED_FUNCTION_24_3();
  if (!v745)
  {
    if (v743)
    {
      goto LABEL_24;
    }

    goto LABEL_402;
  }

  if (v743)
  {
    OUTLINED_FUNCTION_59_0(v744);
    v748 = v97 && v746 == v747;
    if (v748 || (sub_217753058() & 1) != 0)
    {
LABEL_402:
      v749 = OUTLINED_FUNCTION_136(v762[64]);
      sub_217261FB0(v749, v750);
      if (v751)
      {
        v752 = OUTLINED_FUNCTION_136(v762[65]);
        sub_217261FB0(v752, v753);
        if (v754)
        {
          v755 = OUTLINED_FUNCTION_136(v762[66]);
          sub_217261FB0(v755, v756);
          if (v757)
          {
            v758 = OUTLINED_FUNCTION_136(v762[67]);
            sub_217261FB0(v758, v759);
          }
        }
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_13();
}

void MusicVideoPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2, v3);
  v4 = v0;
  OUTLINED_FUNCTION_168_0();
  v5 = sub_2177517D8();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v177 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  OUTLINED_FUNCTION_81();
  v181 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_31();
  v176 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_99();
  v175 = v20;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_99();
  v174 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24, v25);
  v172 = &v172 - v26;
  v27 = sub_2177516D8();
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v180 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28, v32);
  OUTLINED_FUNCTION_81();
  v179 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v35 = OUTLINED_FUNCTION_45_0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  OUTLINED_FUNCTION_31();
  v173 = v39;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v172 - v42;
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v172 - v46;
  OUTLINED_FUNCTION_225_3(v194);
  OUTLINED_FUNCTION_225_3(v195);
  OUTLINED_FUNCTION_104(v195);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v187, v194, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v188, v194, 0x221uLL);
    sub_217284028(v188, v189);
    Artwork.hash(into:)(v1);
    memcpy(v189, v187, 0x221uLL);
    sub_217284084(v189);
  }

  OUTLINED_FUNCTION_178_4(v185);
  OUTLINED_FUNCTION_178_4(v186);
  OUTLINED_FUNCTION_104(v186);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v187, v185, 0x161uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v188, v185, 0x161uLL);
    sub_217269EF4(v188, v189);
    MusicIdentifierSet.hash(into:)(v1);
    memcpy(v189, v187, 0x161uLL);
    sub_217269F50(v189);
  }

  if (*(v0 + 920))
  {
    v49 = *(v0 + 912);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 936) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v50 = *(v0 + 928);
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v50);
  }

  if (*(v0 + 952))
  {
    v51 = *(v0 + 944);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v52 = type metadata accessor for MusicVideoPropertyProvider();
  sub_21726A630(v0 + v52[9], v47, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v47, 1, v27);
  v178 = v5;
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v53 = v179;
    v54 = v180;
    (*(v180 + 32))(v179, v47, v27);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_34();
    sub_21739F04C(v55, v56);
    OUTLINED_FUNCTION_143_5();
    (*(v54 + 8))(v53, v27);
  }

  v57 = (v0 + v52[10]);
  *(v57 + 4);
  v58 = *v57;
  if ((*v57 & 0xFF00) != 0x200)
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v58);
    sub_217753208();
    sub_217753208();
    sub_217753208();
  }

  sub_217753208();
  v59 = *(v0 + v52[11]);
  if (v59 == 2)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v59 & 1);
  }

  OUTLINED_FUNCTION_189_0(v52[12]);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v61 = *v60;
    OUTLINED_FUNCTION_119();
    if ((v61 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    MEMORY[0x21CEA3580](v62);
  }

  if (*(v0 + v52[13]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v63 = (v0 + v52[14]);
  v64 = v63[1];
  v190 = *v63;
  v191 = v64;
  v65 = v63[3];
  v192 = v63[2];
  v193 = v65;
  sub_217265238();
  if (*(v0 + v52[15]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v66 = *(v0 + v52[16]);
  if (v66)
  {
    OUTLINED_FUNCTION_119();
    v67 = OUTLINED_FUNCTION_95_6();
    sub_217281100(v67, v68);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_152_2(v52[17]);
  if (!v48)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2(v52[18]);
  if (!v48)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2(v52[19]);
  if (!v48)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  sub_21726A630(v0 + v52[20], v43, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v43, 1, v27);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v69 = v179;
    v66 = v180;
    OUTLINED_FUNCTION_180_5();
    v70(v69, v43, v27);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_34();
    sub_21739F04C(v71, v72);
    OUTLINED_FUNCTION_143_5();
    (*(v66 + 8))(v69, v27);
  }

  v73 = v178;
  OUTLINED_FUNCTION_152_2(v52[21]);
  if (!v48)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_187_4(v52[22]);
  if (v66)
  {
    v75 = *v74;
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_187_4(v52[23]);
  if (v66)
  {
    v77 = *(v76 + 16);
    v78 = *v76;
    OUTLINED_FUNCTION_119();
    sub_217753208();
    MEMORY[0x21CEA3550](BYTE1(v78));
    v79 = OUTLINED_FUNCTION_95_6();
    sub_2172849DC(v79, v80);
  }

  v81 = v177;
  sub_217753208();
  sub_217265574(v1, *(v0 + v52[24]), *(v0 + v52[24] + 8), *(v0 + v52[24] + 16));
  v82 = v52[25];
  memcpy(v188, (v4 + v82), 0x221uLL);
  memcpy(v189, (v4 + v82), 0x221uLL);
  OUTLINED_FUNCTION_104(v189);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v183, v188, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v184, v188, 0x221uLL);
    sub_217284028(v184, v187);
    Artwork.hash(into:)(v1);
    memcpy(v187, v183, 0x221uLL);
    sub_217284084(v187);
  }

  if (*(v4 + v52[26]))
  {
    OUTLINED_FUNCTION_119();
    v83 = OUTLINED_FUNCTION_95_6();
    sub_217280F7C(v83, v84);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v85 = (v4 + v52[27]);
  v86 = *v85;
  v87 = v85[1];
  memcpy(v182, v85 + 2, sizeof(v182));
  if (v87)
  {
    memcpy(&v183[2], v85 + 2, 0x68uLL);
    v183[0] = v86;
    v183[1] = v87;
    OUTLINED_FUNCTION_119();
    v184[0] = v86;
    v184[1] = v87;
    memcpy(&v184[2], v182, 0x68uLL);
    sub_2172DF5A4(v184, v187);
    PlayParameters.hash(into:)(v1);
    memcpy(v187, v183, 0x78uLL);
    sub_2172848C0(v187);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v88 = *(v4 + v52[28]);
  if (v88)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217281CE8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v4 + v52[29], v172, &qword_27CB241C0, &qword_217759480);
  v89 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v89, v90, v73);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v91 = OUTLINED_FUNCTION_27_18();
    v92(v91);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_38();
    sub_21739F04C(v93, v94);
    OUTLINED_FUNCTION_81_5();
    v95 = OUTLINED_FUNCTION_64_8();
    v96(v95);
  }

  OUTLINED_FUNCTION_189_0(v52[30]);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v88 = *v97;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v88);
  }

  OUTLINED_FUNCTION_187_4(v52[31]);
  if (v88)
  {
    v99 = *v98;
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0(v52[32]);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v88 = *v100;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v88);
  }

  sub_21726A630(v4 + v52[33], v173, &unk_27CB277C0, &qword_217758DC0);
  v101 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v101, v102, v27);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v103 = v179;
    v104 = v180;
    OUTLINED_FUNCTION_180_5();
    v105 = OUTLINED_FUNCTION_148_3();
    v106(v105);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_34();
    sub_21739F04C(v107, v108);
    OUTLINED_FUNCTION_143_5();
    v109 = *(v104 + 8);
    v88 = v104 + 8;
    v110 = v103;
    v73 = v178;
    v109(v110, v27);
  }

  OUTLINED_FUNCTION_187_4(v52[34]);
  if (v88)
  {
    v112 = *v111;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v4 + v52[35], v174, &qword_27CB241C0, &qword_217759480);
  v113 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v113, v114, v73);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v115 = OUTLINED_FUNCTION_27_18();
    v116(v115);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_38();
    sub_21739F04C(v117, v118);
    OUTLINED_FUNCTION_81_5();
    v119 = OUTLINED_FUNCTION_64_8();
    v120(v119);
  }

  v121 = *(v4 + v52[36]);
  if (v121 == 3)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v121);
  }

  OUTLINED_FUNCTION_152_2(v52[37]);
  if (!v48)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2(v52[38]);
  if (!v48)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2(v52[39]);
  if (!v48)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v122 = *(v4 + v52[40]);
  if (v122 == 5)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v122);
  }

  v123 = *(v4 + v52[41]);
  if (v123 == 7)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v123);
  }

  OUTLINED_FUNCTION_189_0(v52[42]);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v123 = *v124;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v123);
  }

  sub_21726A630(v4 + v52[43], v175, &qword_27CB241C0, &qword_217759480);
  v125 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v125, v126, v73);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v127 = OUTLINED_FUNCTION_27_18();
    v128(v127);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_38();
    sub_21739F04C(v129, v130);
    OUTLINED_FUNCTION_81_5();
    v131 = OUTLINED_FUNCTION_64_8();
    v132(v131);
  }

  sub_21726A630(v4 + v52[44], v176, &qword_27CB241C0, &qword_217759480);
  v133 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v133, v134, v73);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v135 = OUTLINED_FUNCTION_27_18();
    v136(v135);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_38();
    sub_21739F04C(v137, v138);
    OUTLINED_FUNCTION_81_5();
    (*(v81 + 8))(v123, v73);
  }

  OUTLINED_FUNCTION_189_0(v52[45]);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v140 = *v139;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v140);
  }

  if (*(v4 + v52[46]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v141 = *(v4 + v52[47]);
  if (v141 == 10)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v141);
  }

  OUTLINED_FUNCTION_189_0(v52[48]);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v143 = *v142;
    OUTLINED_FUNCTION_119();
    if ((v143 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v144 = v143;
    }

    else
    {
      v144 = 0;
    }

    MEMORY[0x21CEA3580](v144);
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25318, &qword_2177657C0, v52[49]);
  if (v187[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    v145 = OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v145);
    sub_2171F0738(v184, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25338, &unk_21775D3E0, v52[50]);
  if (v187[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    v146 = OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v146);
    sub_2171F0738(v184, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25310, &unk_21775D3D0, v52[51]);
  if (v187[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    v147 = OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v147);
    sub_2171F0738(v184, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25320, &unk_21776E020, v52[52]);
  if (v187[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    v148 = OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v148);
    sub_2171F0738(v184, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25338, &unk_21775D3E0, v52[53]);
  if (v187[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    v149 = OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v149);
    sub_2171F0738(v184, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB255A8, &unk_21775D450, v52[54]);
  if (v187[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    v150 = OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v150);
    sub_2171F0738(v184, &qword_27CB27820, &qword_21775DAB0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25338, &unk_21775D3E0, v52[55]);
  if (v187[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    v151 = OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v151);
    sub_2171F0738(v184, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25338, &unk_21775D3E0, v52[56]);
  if (v187[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    v152 = OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v152);
    sub_2171F0738(v184, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v153 = *(v4 + v52[57]);
  if (v153)
  {
    OUTLINED_FUNCTION_119();
    sub_2172849D8(v1, v153);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0(v52[58]);
  if (v48)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v155 = *v154;
    OUTLINED_FUNCTION_119();
    if ((v155 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v156 = v155;
    }

    else
    {
      v156 = 0;
    }

    MEMORY[0x21CEA3580](v156);
  }

  if (*(v4 + v52[59]))
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v157 = OUTLINED_FUNCTION_201(v52[60]);
  sub_217281970(v157, v158);
  memcpy(v187, (v4 + v52[61]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v1);
  v159 = (v4 + v52[62]);
  v160 = *v159;
  v161 = v159[1];
  sub_217751FF8();
  v162 = (v4 + v52[63]);
  if (v162[1])
  {
    v163 = *v162;
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v164 = OUTLINED_FUNCTION_201(v52[64]);
  sub_217265A08(v164, v165);
  v166 = OUTLINED_FUNCTION_201(v52[65]);
  sub_217265A08(v166, v167);
  v168 = OUTLINED_FUNCTION_201(v52[66]);
  sub_217265A08(v168, v169);
  v170 = OUTLINED_FUNCTION_201(v52[67]);
  sub_217265A08(v170, v171);
  OUTLINED_FUNCTION_13();
}

uint64_t MusicVideoPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  MusicVideoPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_21739EE44(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  MusicVideoPropertyProvider.subscript.getter();
  return sub_217399308;
}

uint64_t sub_21739EEC0()
{
  sub_2177531E8();
  MusicVideoPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t (*sub_21739EF08(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 244);
  return result;
}

uint64_t sub_21739EF44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicVideoPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21739EFA8(uint64_t a1)
{
  v2 = type metadata accessor for MusicVideoPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21739F04C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21739F0BC()
{
  sub_2172E2E58(319, &qword_280BE7698);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE8010);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7598);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_2172E2E58(319, &qword_280BE7528);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_21739F80C(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v10 > 0x3F)
    {
      return v9;
    }

    sub_2172E2E58(319, qword_280BE7E70);
    if (v11 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7E08);
    if (v12 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7538);
    if (v14 > 0x3F)
    {
      return v13;
    }

    sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
    if (v15 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7DE8);
    if (v16 > 0x3F)
    {
      return v3;
    }

    sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
    if (v17 > 0x3F)
    {
      return v3;
    }

    sub_217351B44(319, &qword_280BE7548, &qword_27CB24C58, &unk_2177677B0);
    if (v18 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7540);
    if (v19 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7CB0);
    if (v20 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7618);
    if (v21 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE7F18);
    if (v22 > 0x3F)
    {
      return v3;
    }

    sub_217351B44(319, &qword_280BE7558, &qword_27CB24C50, &unk_217759650);
    v1 = v23;
    if (v24 > 0x3F)
    {
      return v1;
    }

    sub_2172E2E58(319, &qword_280BE7DD0);
    v1 = v25;
    if (v26 > 0x3F)
    {
      return v1;
    }

    sub_217351B44(319, &qword_280BE7568, &qword_27CB24C48, &qword_217759648);
    v1 = v27;
    if (v28 > 0x3F)
    {
      return v1;
    }

    sub_21739F80C(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v1 = v29;
    if (v30 > 0x3F)
    {
      return v1;
    }

    sub_2172E2E58(319, qword_280BE7948);
    if (v31 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE77E0);
    if (v32 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE77D8);
    if (v33 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_280BE77C0);
    if (v34 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &unk_280BE7EF8);
    v1 = v35;
    if (v36 > 0x3F)
    {
      return v1;
    }

    sub_217351B44(319, &qword_280BE7FB8, &qword_27CB25388, &unk_21775D410);
    v1 = v37;
    if (v38 > 0x3F)
    {
      return v1;
    }

    sub_217351B44(319, &qword_280BE7FD0, &qword_27CB25380, &unk_21775DAA0);
    v1 = v39;
    if (v40 > 0x3F)
    {
      return v1;
    }

    sub_217351B44(319, &qword_280BE7FA0, &qword_27CB25398, &unk_21776C4F0);
    if (v41 > 0x3F)
    {
      return v3;
    }

    sub_217351B44(319, &qword_280BE7FB0, &qword_27CB27C80, &unk_21775D420);
    if (v42 > 0x3F)
    {
      return v3;
    }

    sub_217351B44(319, &qword_280BE7FC0, &qword_27CB27820, &qword_21775DAB0);
    if (v43 > 0x3F)
    {
      return v3;
    }

    sub_217351B44(319, &qword_280BE7578, &qword_27CB24C40, &qword_217759640);
    v1 = v44;
    if (v45 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
      v1 = v46;
      if (v47 <= 0x3F)
      {
        sub_21739F80C(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
        v1 = v48;
        if (v49 <= 0x3F)
        {
          sub_217351BFC();
          v1 = v50;
          if (v51 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}