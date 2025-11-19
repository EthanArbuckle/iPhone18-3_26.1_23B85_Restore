void sub_1821E5300()
{
  sub_18207E248(319, &qword_1EA83AF58, &unk_1EA83AF60);
  if (v0 <= 0x3F)
  {
    sub_18207E248(319, qword_1ED40FBF0, &unk_1EA8397F0);
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1821E53F0(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = ((v8 + 56) & ~v8) + v9;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if (v6 > 0x7FFFFFFE)
      {
        v17 = *(v5 + 48);

        return v17((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      }

      else
      {
        v16 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v16) = -1;
        }

        if ((v16 + 1) >= 2)
        {
          return v16;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1821E55EC(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 56) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_46:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
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
  if (v7 > 0x7FFFFFFE)
  {
    v17 = *(v6 + 56);

    v17((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t sub_1821E588C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1821E58C8()
{
  result = swift_checkMetadataState();
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

uint64_t sub_1821E5954(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1821E5B30(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
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
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1821E5E30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821C2D38(a1, v1);
}

uint64_t sub_1821E5ED4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_1821C3240(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1821E5FFC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int *a5)
{
  v8 = v5[2];
  v9 = v5[3];
  v11 = v5[4];
  v10 = v5[5];
  v13 = v5[6];
  v12 = v5[7];
  type metadata accessor for Coder.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v14 = *(sub_182AD34D8() - 8);
  return sub_1821DAAF4(a1, a2, a3, a4, a5, v5 + ((*(v14 + 80) + 64) & ~*(v14 + 80)), v8, v9, v11, v10, v13, v12);
}

uint64_t sub_1821E6190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1821B7C00(a1, v4, v5, v7, v6);
}

uint64_t sub_1821E6258(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_181F5EB68;

  return sub_1821C02C8(a1, a2, v7, v6);
}

uint64_t sub_1821E630C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40) | (*(v0 + 44) << 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_181F5EB68;

  return sub_1821C2790(v2, v3, v4, v5);
}

uint64_t sub_1821E6518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1820AAEE4;

  return sub_1821D9100(a1, a2, a3, v3);
}

uint64_t sub_1821E65CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1821D0A74(a1, v4, v5, v6);
}

uint64_t sub_1821E66F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1821B7864(a1, v4, v5, v7, v6);
}

uint64_t sub_1821E67BC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_181F5EB68;

  return sub_1821BF168(a1, a2, v7, v6);
}

uint64_t sub_1821E6870()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40) | (*(v0 + 44) << 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_181F5EB68;

  return sub_1821C2790(v2, v3, v4, v5);
}

uint64_t sub_1821E6AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6) - 8);
  v15 = *a5 | (*(a5 + 4) << 32);
  v16 = v8 + ((*(v14 + 80) + 16) & ~*(v14 + 80));

  return a8(a1, a2, a3, a4, v15, v16);
}

uint64_t sub_1821E6B6C(uint64_t a1, char a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_1821D80C4(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1821E6C30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_1821C9D14(a1, v5, v6, v7, v8, v4);
}

uint64_t sub_1821E6D10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_1821C964C(a1, v5, v6, v7, v8, v9, v4);
}

uint64_t sub_1821E6E6C(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_181F5EB68;

  return sub_1821D73D0(a1, a2, a3, v9, v8);
}

uint64_t sub_1821E6FD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((~a4 & 0xFF00000000) != 0)
  {
    v12 = HIDWORD(a4);
    v13 = a4;
    sub_181F4B3B8();
    v14 = swift_allocError();
    *v15 = v13;
    *(v15 + 4) = v12;
LABEL_7:
    aBlock[0] = v14;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_181F4B3B8();
    v14 = swift_allocError();
    *v16 = 22;
    *(v16 + 4) = 0;
    goto LABEL_7;
  }

  if (a2 >> 60 != 15)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = MEMORY[0x1E69E7CC0];
    context = *(a3 + 16);
    aBlock[4] = a8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F25CD0;
    aBlock[3] = a9;
    v23 = _Block_copy(aBlock);
    swift_retain_n();
    sub_181F49B44(a1, a2);

    nw_content_context_foreach_protocol_metadata(context, v23);

    _Block_release(v23);

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(a6);
    sub_182AD34C8();
  }

  sub_181F4B3B8();
  v10 = swift_allocError();
  *v11 = 22;
  *(v11 + 4) = 0;
  swift_willThrow();
  aBlock[0] = v10;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  return sub_182AD34B8();
}

uint64_t sub_1821E7228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1821B712C(a1, v4, v5, v7, v6);
}

uint64_t sub_1821E72F0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_181F5EB68;

  return sub_1821BCEA8(a1, a2, v7, v6);
}

uint64_t sub_1821E73A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40) | (*(v0 + 44) << 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_181F5EB68;

  return sub_1821C2790(v2, v3, v4, v5);
}

uint64_t sub_1821E7718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1821B74C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1821E77E0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_181F5EB68;

  return sub_1821BE008(a1, a2, v7, v6);
}

uint64_t sub_1821E7894()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40) | (*(v0 + 44) << 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_181F5EB68;

  return sub_1821C2790(v2, v3, v4, v5);
}

uint64_t sub_1821E7AA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F5EB68;

  return sub_1821D19EC(a1, v4, v5);
}

uint64_t objectdestroy_1199Tm()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD34D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1821E7CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v14 = *(sub_182AD34D8() - 8);
  v15 = v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80));

  return a6(a1, a2, a3, a4, a5, v15, v12, v13);
}

void sub_1821E7E04()
{
  if (!qword_1EA83B088)
  {
    v0 = _s15ConnectionEventOMa_0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA83B088);
    }
  }
}

uint64_t sub_1821E7E70(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_181F5EB68;

  return sub_1821CFDC4(a1, a2, v7, v8, v9, v10, v11, v6);
}

uint64_t sub_1821E7F60()
{
  v2 = v0[4];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_181F5EB68;

  return sub_1821D0548(v3, v4, v5, v6, v7, v8, v9, v2);
}

uint64_t sub_1821E8048(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1821CE620(a1, v1 + v4, v5);
}

uint64_t sub_1821E8150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1821B6C74(a1, v4, v5, v7, v6);
}

uint64_t sub_1821E8218(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_181F5EB68;

  return sub_1821BBA14(a1, a2, v7, v6);
}

uint64_t sub_1821E82CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40) | (*(v0 + 44) << 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_181F5EB68;

  return sub_1821C2790(v2, v3, v4, v5);
}

uint64_t sub_1821E84E0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F5EB68;

  return sub_1821CE770(a1, a2, v6, v7, v8);
}

uint64_t sub_1821E85A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_181F5EB68;

  return sub_1821CEEB0(v2, v3, v4, v5, v6);
}

uint64_t sub_1821E8660(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1821CE620(a1, v1 + v4, v5);
}

uint64_t sub_1821E8708(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821C2C3C(a1, v1);
}

uint64_t sub_1821E87DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_1821C32E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1821E893C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821C2A44(a1, v1);
}

uint64_t sub_1821E8A10(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F54964;

  return sub_1821C3240(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_939Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1821E8B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1821B6698(a1, v4, v5, v7, v6);
}

uint64_t sub_1821E8C24(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_181F5EB68;

  return sub_1821BA48C(a1, a2, v7, v6);
}

uint64_t objectdestroy_948Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1821E8D2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40) | (*(v0 + 44) << 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_181F5EB68;

  return sub_1821C2478(v2, v3, v4, v5);
}

uint64_t sub_1821E8FB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821C2B40(a1, v1);
}

uint64_t objectdestroy_1305Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1821E9188(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_1821C32E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1821E9298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_1821C6580(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1821E9374(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1821C6B68(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1821E944C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_18209E954(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1821E9520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_1821C55F4(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1821E95FC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1821C5BFC(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t objectdestroy_1363Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1821E971C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_18209D910(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1821E9864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_1821C4540(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1821E9940(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1821C4B98(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1821E9A18()
{
  v2 = *(type metadata accessor for NWPath(0) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_181F5EB68;

  return sub_18209CA6C(v4, v5, v6, v7, v0 + v3, v8);
}

uint64_t sub_1821E9B48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150);

  return sub_1821C4A40(a1);
}

uint64_t sub_1821E9BC4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_1821B7F9C(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1821E9CA4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_1821C1428(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1821E9D6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56) | (*(v0 + 60) << 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_181F5EB68;

  return sub_1821C2790(v2, v3, v4, v5);
}

uint64_t sub_1821E9E50()
{
  type metadata accessor for NetworkChannel.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();

  return sub_1821BA3A4();
}

uint64_t objectdestroy_1437Tm()
{
  type metadata accessor for NetworkChannel.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1821E9FE8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for NetworkChannel.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = *(sub_182AD36C8() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t sub_1821EA21C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v10 = *(sub_182AD34D8() - 8);
  return sub_1821B1090(a1, a2, a3, a4, a5, v5 + ((*(v10 + 80) + 48) & ~*(v10 + 80)));
}

uint64_t sub_1821EA38C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B8);

  return sub_1821AF814(a1);
}

uint64_t sub_1821EA410(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_181C1F2E4(result, a2);
  }

  return result;
}

uint64_t sub_1821EA4E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int *a5)
{
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  type metadata accessor for JSON.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v11 = *(sub_182AD34D8() - 8);
  return sub_1821AC814(a1, a2, a3, a4, a5, v5 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v8, v9, v10);
}

uint64_t sub_1821EA604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD34D8();
  return sub_1821ABEE4(a1, a2, a3);
}

uint64_t sub_1821EA708(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_181C1F2E4(result, a2);
  }

  return result;
}

uint64_t sub_1821EA760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80) - 8);
  v13 = v6 + ((*(v12 + 80) + 16) & ~*(v12 + 80));

  return a6(a1, a2, a3, a4, a5, v13);
}

uint64_t sub_1821EA838(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v9 = *(sub_182AD34D8() - 8);
  return sub_1821A9B50(a1, a2, a3, a4, a5, v5 + ((*(v9 + 80) + 56) & ~*(v9 + 80)));
}

uint64_t sub_1821EA970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  return v6(v8, a5);
}

uint64_t sub_1821EAA10()
{
  v1 = *(sub_182AD35A8() - 8);
  v2 = *(v0 + 72);
  v3 = v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80));

  return sub_1821A7B78(v2, v3);
}

uint64_t sub_1821EAAA8(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5)
{
  v10 = v5[2];
  v11 = v5[3];
  v12 = v5[4];
  type metadata accessor for Framer.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v13 = *(sub_182AD34D8() - 8);
  return sub_1821A661C(a1, a2, a3, a4, a5, v5 + ((*(v13 + 80) + 48) & ~*(v13 + 80)), v10, v11, v12);
}

uint64_t sub_1821EABC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1821EAC00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1821EAC40(uint64_t a1)
{
  if (*(v1 + 81))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1821A5A6C(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v2 | *(v1 + 80), *(v1 + 88), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1821EAD2C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int *a5)
{
  v6 = v5[2];
  v7 = v5[3];
  v9 = v5[4];
  v8 = v5[5];
  v11 = v5[6];
  v10 = v5[7];
  v12 = v5[8];
  type metadata accessor for Coder.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v13 = *(sub_182AD34D8() - 8);
  return sub_18219E84C(a1, a2, a3, a4, a5, v5 + ((*(v13 + 80) + 80) & ~*(v13 + 80)), v6, v7, v9, v8, v11, v10, v12);
}

uint64_t sub_1821EAE68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_182195F8C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_1765Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1821EB1E8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = *(v3 + 56);
  v6 = v3 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t sub_1821EB2B4(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v10 = *(sub_182AD34D8() - 8);
  return sub_18218C94C(a1, a2, a3, a4, a5, v5 + ((*(v10 + 80) + 48) & ~*(v10 + 80)));
}

uint64_t sub_1821EB434(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_1698Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1821EB52C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_182198104(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1821EB618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_1661Tm(void (*a1)(uint64_t, void, void, void))
{
  a1(255, v1[2], v1[4], v1[5]);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v2 = sub_182AD34D8();
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1821EB850(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(v7 + 2);
  v12 = *(v7 + 3);
  v14 = *(v7 + 4);
  v13 = *(v7 + 5);
  v15 = *(v7 + 6);
  a6(255, v11, v14, v13);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v16 = *(sub_182AD34D8() - 8);
  return a7(a1, a2, a3, a4, a5, &v7[(*(v16 + 80) + 56) & ~*(v16 + 80)], v11, v12, v14, v13, v15);
}

uint64_t sub_1821EB99C(uint64_t a1)
{
  if (*(v1 + 57))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_18219BED0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v2 | *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1821EBA3C(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!*(v1 + 61))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 62))
  {
    v3 = 0;
  }

  return sub_1821A3DF4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), (*(v1 + 58) << 16) | (*(v1 + 60) << 32) | *(v1 + 56) | v2 | v3, *(v1 + 64), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1821EBAF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Coder.init<A>(receiving:sending:using:_:)@<X0>(uint64_t a1@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X7>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return Coder.init<A>(sending:receiving:using:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return Coder.init<A>(sending:receiving:using:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void static DistributedActor<>.discover(_:using:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  NWActorSystem.assignID<A>(_:)(v7);
  v8 = *(a2 + 144);
  v14 = a2;
  v15 = v7;
  v17 = 0;
  v18 = 0;
  v16 = a1;
  v11 = sub_1821EC3A4;
  v12 = &v13;
  os_unfair_lock_lock(v8 + 4);
  sub_182160038(v9);
  os_unfair_lock_unlock(v8 + 4);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v19 = a2;
    sub_182AD22B8();
    sub_1821EC688(v7, type metadata accessor for NWActorID);
  }
}

void static DistributedActor<>.discover(_:connectionParameters:using:invalidationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v21 = a4;
  v8 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  NWActorSystem.assignID<A>(_:)(v14);
  sub_181FE4EE0(a1, v11);
  type metadata accessor for NWActorDiscoveryMechanism.Target(0);
  swift_storeEnumTagMultiPayload();
  *&v11[v9[9]] = a2;
  v15 = v9[7];
  v16 = type metadata accessor for NWBrowser.Descriptor(0);
  (*(*(v16 - 8) + 56))(&v11[v15], 1, 1, v16);
  *&v11[v9[8]] = 0;
  v17 = *(a3 + 144);
  v27 = a3;
  v28 = v14;
  v29 = v11;
  v30 = v21;
  v31 = v22;
  v24 = sub_1821EC6E8;
  v25 = &v26;

  os_unfair_lock_lock(v17 + 4);
  v18 = v23;
  sub_182160DBC(v19);
  os_unfair_lock_unlock(v17 + 4);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v32 = a3;
    sub_182AD22B8();
    sub_1821EC688(v11, type metadata accessor for NWActorDiscoveryMechanism);
    sub_1821EC688(v14, type metadata accessor for NWActorID);
  }
}

uint64_t DistributedActor<>.peer.getter()
{
  if (qword_1EA8371F0 != -1)
  {
    swift_once();
  }

  return sub_182AD46C8();
}

uint64_t sub_1821EC688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _nw_tcp_options_set_maximum_segment_size(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
    }

    else
    {
      *v5 = a2;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_set_connection_timeout(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 4) = a2;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_set_persist_timeout(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8) = a2;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_set_retransmit_connection_drop_time(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 12) = a2;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_set_keepalive_count(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 24) = a2;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_keepalive_count(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + *(*v2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) != 2)
  {
    v5 = *(v3 + 24);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t _nw_tcp_options_set_keepalive_interval(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 20) = a2;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_keepalive_interval(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + *(*v2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) != 2)
  {
    v5 = *(v3 + 20);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t _nw_tcp_options_set_keepalive_idle_time(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 16) = a2;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_keepalive_idle_time(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + *(*v2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) != 2)
  {
    v5 = *(v3 + 16);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t _nw_tcp_options_set_multipath_force_version(uint64_t a1, unsigned int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) != 2)
    {
      if ((a2 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else if (a2 <= 0xFF)
      {
        *(v5 + 40) = a2 != 0;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t _nw_tcp_options_set_enable_l4s(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
    }

    else
    {
      if (a2 == 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      if (!a2)
      {
        v6 = 0;
      }

      *(v5 + 41) = v6;
    }
  }

  return result;
}

uint64_t sub_1821ECF08(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 1) == 0)
      {
        v7 = v6 | 1;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if (v6)
    {
      v7 = v6 & 0xFFFFFFFE;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ECFD0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 4) == 0)
      {
        v7 = v6 | 4;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 4) != 0)
    {
      v7 = v6 & 0xFFFFFFFB;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED098(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 8) == 0)
      {
        v7 = v6 | 8;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 8) != 0)
    {
      v7 = v6 & 0xFFFFFFF7;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED160(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x10) == 0)
      {
        v7 = v6 | 0x10;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x10) != 0)
    {
      v7 = v6 & 0xFFFFFFEF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED228(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x20) == 0)
      {
        v7 = v6 | 0x20;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x20) != 0)
    {
      v7 = v6 & 0xFFFFFFDF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED2F0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x40) == 0)
      {
        v7 = v6 | 0x40;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x40) != 0)
    {
      v7 = v6 & 0xFFFFFFBF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED3B8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x80) == 0)
      {
        v7 = v6 | 0x80;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x80) != 0)
    {
      v7 = v6 & 0xFFFFFF7F;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED480(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x100) == 0)
      {
        v7 = v6 | 0x100;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x100) != 0)
    {
      v7 = v6 & 0xFFFFFEFF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED548(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x200) == 0)
      {
        v7 = v6 | 0x200;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x200) != 0)
    {
      v7 = v6 & 0xFFFFFDFF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED610(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x400) == 0)
      {
        v7 = v6 | 0x400;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x400) != 0)
    {
      v7 = v6 & 0xFFFFFBFF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED6D8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x2000) == 0)
      {
        v7 = v6 | 0x2000;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x2000) != 0)
    {
      v7 = v6 & 0xFFFFDFFF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_no_fast_open_cookie(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 45) & 1;
    }
  }

  return result;
}

uint64_t sub_1821ED83C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x4000) == 0)
      {
        v7 = v6 | 0x4000;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x4000) != 0)
    {
      v7 = v6 & 0xFFFFBFFF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED904(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x8000) == 0)
      {
        v7 = v6 | 0x8000;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x8000) != 0)
    {
      v7 = v6 & 0xFFFF7FFF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821ED9CC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*(v5 + 40) == 2)
    {
      __break(1u);
      return result;
    }

    v6 = HIDWORD(*(v5 + 40));
    if (a2)
    {
      if ((v6 & 0x10000) == 0)
      {
        v7 = v6 | 0x10000;
LABEL_8:
        *(v5 + 44) = v7;
      }
    }

    else if ((v6 & 0x10000) != 0)
    {
      v7 = v6 & 0xFFFEFFFF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821EDAE8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA80);
  v4 = sub_181A93260(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  result = swift_beginAccess();
  if (*(v5 + 64))
  {
    v11 = *(v5 + 96);
    v12 = *(v5 + 112);
    v13 = *(v5 + 128);
    v9 = *(v5 + 64);
    v10 = *(v5 + 80);
    memmove(__dst, (v5 + 64), 0x48uLL);
    v7 = sub_1821EE060(__dst, v15);
    v8 = a2(v7);
    v15[2] = v11;
    v15[3] = v12;
    v16 = v13;
    v15[0] = v9;
    v15[1] = v10;
    sub_1821EE0BC(v15);
    swift_endAccess();

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821EDBE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA80);
  v10 = sub_181A93260(a1);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  result = swift_beginAccess();
  if (*(v11 + 64))
  {
    v13 = *(v11 + 80);
    v23 = *(v11 + 64);
    v24 = v13;
    v14 = *(v11 + 112);
    v25 = *(v11 + 96);
    v26 = v14;
    v15 = *(v11 + 128);
    v27 = v15;
    if (*(&v23 + 1) == 1 || (v15 ? (v16 = *(&v24 + 1) == 0) : (v16 = 1), v16))
    {
      v18 = qword_1EA8371A0;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = sub_182AD2698();
      __swift_project_value_buffer(v19, qword_1EA843348);
      v20 = sub_182AD2678();
      v21 = sub_182AD38B8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_181A37000, v20, v21, "TCPMetadata callbacks not setup for resetKeepalives", v22, 2u);
        MEMORY[0x1865DF520](v22, -1, -1);
      }

      v17 = 0;
    }

    else
    {

      os_unfair_lock_lock((v23 + 16));
      v17 = (*(&v24 + 1))(v15, a2 & 1, a3, a4, a5);
      os_unfair_lock_unlock((v23 + 16));
    }

    sub_181BBC910(&v23);
    swift_endAccess();

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821EDE54(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA80);
  v6 = sub_181A93260(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  result = swift_beginAccess();
  if (*(v7 + 64))
  {
    v12 = *(v7 + 96);
    v13 = *(v7 + 112);
    v14 = *(v7 + 128);
    v10 = *(v7 + 64);
    v11 = *(v7 + 80);
    memmove(__dst, (v7 + 64), 0x48uLL);
    sub_1821EE060(__dst, v16);
    v9 = a3(a2 & 1);
    v16[2] = v12;
    v16[3] = v13;
    v17 = v14;
    v16[0] = v10;
    v16[1] = v11;
    sub_1821EE0BC(v16);
    swift_endAccess();

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821EDF64(uint64_t a1, Swift::UInt64 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA80);
  v4 = sub_181A93260(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  result = swift_beginAccess();
  if (*(v5 + 64))
  {
    v10 = *(v5 + 96);
    v11 = *(v5 + 112);
    v12 = *(v5 + 128);
    v8 = *(v5 + 64);
    v9 = *(v5 + 80);
    memmove(__dst, (v5 + 64), 0x48uLL);
    sub_1821EE060(__dst, v14);
    v7 = TCPProtocol.TCPMetadata.setMaxPacingRate(maxPacingRate:)(a2);
    v14[2] = v10;
    v14[3] = v11;
    v15 = v12;
    v14[0] = v8;
    v14[1] = v9;
    sub_1821EE0BC(v14);
    swift_endAccess();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t SystemUUID.init(uuidString:)@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *v6 = 0uLL;
  v2 = sub_182AD3048();
  v3 = uuid_parse((v2 + 32), v6);

  if (v3)
  {
    v5 = 0uLL;
  }

  else
  {
    v5 = *v6;
  }

  *a1 = v5;
  *(a1 + 16) = v3 != 0;
  return result;
}

uint64_t SystemUUID.init(uuid:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, int a10, int a11)
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

unint64_t SystemUUID.init(insecure:)@<X0>(char a1@<W0>, unint64_t *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = 0uLL;
    nw_uuid_generate_insecure_6(&v5);
    v4 = *(&v5 + 1);
    result = v5;
  }

  else
  {
    result = sub_181ADC1F8();
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t SystemUUID.array.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  *(v1 + 16) = 16;
  *(v1 + 24) = 2 * v2 - 64;
  *(v1 + 32) = *v0;
  return v1;
}

uint64_t SystemUUID.uuid.setter(uint64_t result, char a2, char a3, char a4, char a5, char a6, char a7, char a8, int a9, int a10)
{
  *v10 = result;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  *(v10 + 4) = a5;
  *(v10 + 5) = a6;
  *(v10 + 6) = a7;
  *(v10 + 7) = a8;
  *(v10 + 8) = a9;
  *(v10 + 12) = a10;
  return result;
}

uint64_t SystemUUID.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD44F8();
  return sub_182AD4558();
}

uint64_t sub_1821EE4CC()
{
  sub_182AD44E8();
  SystemUUID.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_1821EE51C()
{
  sub_182AD44E8();
  SystemUUID.hash(into:)();
  return sub_182AD4558();
}

id sub_1821EE5B8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
  type metadata accessor for SystemLock._Storage();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  v6 = &v1[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v1[OBJC_IVAR____TtC7Network17ParametersStorage_bundleIDStorage];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v1[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v1[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1821EE68C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if (v1 < 0)
  {
    v2 = ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    swift_beginAccess();
    v2 = (v1 + 16);
  }

  memcpy(__dst, v2, sizeof(__dst));
  return Parameters.description.getter();
}

BOOL sub_1821EE734(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 240);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(v4 + 24);

    return v5 > 0;
  }

LABEL_7:

  return 0;
}

BOOL sub_1821EE7C0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 240);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = *(v4 + 24);

    return v5 > 0;
  }

LABEL_7:

  return 0;
}

BOOL sub_1821EE84C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 240);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = *(v4 + 24);

    return v5 > 0;
  }

LABEL_7:

  return 0;
}

uint64_t sub_1821EE8D8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE6);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 230);
  }

  return v3 & 1;
}

uint64_t sub_1821EE940(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE6);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 230);
  }

  return (v3 >> 1) & 1;
}

uint64_t sub_1821EE9A8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 5) & 1;
}

uint64_t sub_1821EEA10(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 2) & 1;
}

uint64_t sub_1821EEA78(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 3) & 1;
}

uint64_t sub_1821EEAE0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 1) & 1;
}

uint64_t sub_1821EEB48(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEA);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 234);
  }

  v4 = 0x3Eu >> v3;

  return v4 & 1;
}

uint64_t sub_1821EEBB8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEA);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 234);
  }

  v4 = 0xCu >> v3;

  return v4 & 1;
}

uint64_t sub_1821EEC28(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 8) & 1;
}

uint64_t sub_1821EEC90(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEB);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 235);
  }

  return (v3 >> 2) & 1;
}

uint64_t sub_1821EECF8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 20) & 1;
}

uint64_t sub_1821EED60(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE7);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 231);
  }

  return v3 & 1;
}

uint64_t sub_1821EEDC8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE7);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 231);
  }

  return (v3 >> 1) & 1;
}

uint64_t sub_1821EEE30(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 1) & 1;
}

uint64_t sub_1821EEE98(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 2) & 1;
}

uint64_t sub_1821EEF00(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 4) & 1;
}

uint64_t sub_1821EEF68(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 1) & 1;
}

uint64_t sub_1821EEFD0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEB);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 235);
  }

  return v3 & 1;
}

uint64_t sub_1821EF038(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 3) & 1;
}

uint64_t sub_1821EF0A0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEB);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 235);
  }

  return (v3 >> 1) & 1;
}

uint64_t sub_1821EF108(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return HIWORD(v3) & 1;
}

uint64_t sub_1821EF170(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 6) & 1;
}

uint64_t sub_1821EF1D8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 12) & 1;
}

uint64_t sub_1821EF240(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 9) & 1;
}

uint64_t sub_1821EF2A8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 21) & 1;
}

uint64_t sub_1821EF310(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 13) & 1;
}

uint64_t sub_1821EF378(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 14) & 1;
}

uint64_t sub_1821EF3E0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 15) & 1;
}

uint64_t sub_1821EF448(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 3) & 1;
}

uint64_t sub_1821EF4B0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 11) & 1;
}

uint64_t sub_1821EF518(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEB);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 235);
  }

  return (v3 >> 3) & 1;
}

uint64_t sub_1821EF580(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE6);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 230);
  }

  return (v3 >> 3) & 1;
}

uint64_t sub_1821EF5E8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE6);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 230);
  }

  return (v3 >> 5) & 1;
}

uint64_t sub_1821EF650(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEB);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 235);
  }

  return (v3 >> 4) & 1;
}

BOOL sub_1821EF6B8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));
    if ((__dst[215] & 8) != 0)
    {
      v7 = *(v1 + 160);

      sub_181F481DC(__dst, v9);
      if (SystemUUID.isUUIDNULL.getter())
      {
        goto LABEL_11;
      }

      v9[0] = *&__dst[144];
      v7 = *&__dst[128];
      if (_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(v9, &v7))
      {
        goto LABEL_11;
      }

LABEL_14:

      sub_181F48214(__dst);
      return 1;
    }

LABEL_7:

    return 0;
  }

  v3 = v1 & 0x7FFFFFFFFFFFFFFFLL;
  memcpy(__dst, (v3 + 16), sizeof(__dst));
  if ((__dst[215] & 8) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v3 + 160);

  sub_181F481DC(__dst, v9);
  if (!SystemUUID.isUUIDNULL.getter())
  {
    v9[0] = *&__dst[144];
    v8 = *&__dst[128];
    if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(v9, &v8))
    {
      goto LABEL_14;
    }
  }

LABEL_11:
  v5 = *&__dst[196];
  v6 = getpid();

  sub_181F48214(__dst);
  return v5 >= 1 && v5 != v6;
}

uint64_t sub_1821EF834(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE7);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 231);
  }

  return (v3 >> 4) & 1;
}

uint64_t sub_1821EF89C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE7);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 231);
  }

  return (v3 >> 5) & 1;
}

uint64_t sub_1821EF904(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 7) & 1;
}

uint64_t sub_1821EF96C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 8) & 1;
}

BOOL sub_1821EF9D4(char *a1, int a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v5 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xD4);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v3 + 212);
  }

  return v5 > 0 && v5 != a2;
}

uint64_t sub_1821EFA50(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v3 = memcpy(__dst, (v1 + 16), sizeof(__dst));
    if (__dst[28])
    {
      v4 = *(__dst[28] + 24);
      if (v4)
      {
        v5 = v4[4];
        v6 = v4[3] + v5;
        if (v4[2] < v6)
        {
          v6 = v4[2];
        }

        v17 = v4[4];
        v18 = v6;
        v7 = *(__dst[28] + 24);
        while (1)
        {
          if (v5 == v18)
          {
            v3 = sub_181AC81FC(v3);
            if ((v3 & 1) == 0)
            {
              goto LABEL_23;
            }

            v7 = v4;
            v5 = v17;
          }

          v8 = v7 + v5++;
          v17 = v5;
          if (v8[40] == 2)
          {
            goto LABEL_22;
          }
        }
      }
    }

    goto LABEL_21;
  }

  v9 = memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
  if (!__dst[28] || (v10 = *(__dst[28] + 24)) == 0)
  {
LABEL_21:
    sub_181F481DC(__dst, v21);

    sub_181F48214(__dst);
    return 0;
  }

  v11 = v10[4];
  v12 = v10[3] + v11;
  if (v10[2] < v12)
  {
    v12 = v10[2];
  }

  v19 = v10[4];
  v20 = v12;
  v13 = *(__dst[28] + 24);
  while (v11 != v20)
  {
LABEL_17:
    v14 = v13 + v11++;
    v19 = v11;
    if (v14[40] == 2)
    {
LABEL_22:

      sub_181F481DC(__dst, v21);

      v15 = 1;
      goto LABEL_24;
    }
  }

  v9 = sub_181AC81FC(v9);
  if (v9)
  {
    v13 = v10;
    v11 = v19;
    goto LABEL_17;
  }

LABEL_23:

  sub_181F481DC(__dst, v21);

  v15 = 0;
LABEL_24:
  sub_181F48214(__dst);
  return v15;
}

uint64_t sub_1821EFC4C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 10) & 1;
}

uint64_t sub_1821EFCB4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 8) & 1;
}

uint64_t sub_1821EFD1C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 12) & 1;
}

uint64_t sub_1821EFD84(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 13) & 1;
}

uint64_t sub_1821EFDEC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 14) & 1;
}

uint64_t sub_1821EFE54(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 15) & 1;
}

uint64_t sub_1821EFEBC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 9) & 1;
}

uint64_t sub_1821EFF24(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 17) & 1;
}

uint64_t sub_1821EFF8C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 19) & 1;
}

uint64_t sub_1821EFFF4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return HIWORD(v3) & 1;
}

uint64_t sub_1821F005C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 9) & 1;
}

uint64_t sub_1821F00C4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return HIBYTE(v3) & 1;
}

uint64_t sub_1821F012C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 20) & 1;
}

uint64_t sub_1821F0194(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE0);
    if (v3 <= 2)
    {
      if (*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE0))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_8:
    if (v3 != 3 && v3 != 4)
    {

      return 0;
    }

    goto LABEL_10;
  }

  swift_beginAccess();
  v3 = *(v1 + 224);
  if (v3 > 2)
  {
    goto LABEL_8;
  }

  if (*(v1 + 224))
  {
LABEL_10:
    v4 = 1;
    goto LABEL_11;
  }

LABEL_7:
  v4 = 0;
LABEL_11:

  return v4;
}

uint64_t sub_1821F0240(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE1);
    if (v3 <= 2)
    {
      if (*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE1))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_8:
    if (v3 != 3 && v3 != 4)
    {

      return 0;
    }

    goto LABEL_10;
  }

  swift_beginAccess();
  v3 = *(v1 + 225);
  if (v3 > 2)
  {
    goto LABEL_8;
  }

  if (*(v1 + 225))
  {
LABEL_10:
    v4 = 1;
    goto LABEL_11;
  }

LABEL_7:
  v4 = 0;
LABEL_11:

  return v4;
}

BOOL sub_1821F02EC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 240);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  v4 = *(v3 + 56);
  if (v4 && *(v4 + 24) > 0)
  {

    return 1;
  }

  v6 = *(v3 + 64);
  if (v6)
  {
    v7 = *(v6 + 24);

    return v7 > 0;
  }

LABEL_10:

  return 0;
}

BOOL sub_1821F0398(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x170);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 368);
    if (v3)
    {
LABEL_3:
      v4 = *(v3 + 24);

      return v4 > 0;
    }
  }

  return 0;
}

uint64_t sub_1821F0418(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *))
{
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0)
  {
    v5 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v5 + 16), sizeof(__dst));

  sub_181F481DC(__dst, v9);
  v7 = a3(a2, __dst);

  sub_181F48214(__dst);
  return v7 & 1;
}

uint64_t sub_1821F04DC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return v3 & 1;
}

uint64_t sub_1821F0544(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 2) & 1;
}

uint64_t sub_1821F05AC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return v3 & 1;
}

uint64_t sub_1821F0614(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 4) & 1;
}

uint64_t sub_1821F067C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 6) & 1;
}

uint64_t sub_1821F06E4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 7) & 1;
}

uint64_t sub_1821F074C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 5) & 1;
}

uint64_t sub_1821F07B4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEB);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 235);
  }

  return (v3 >> 5) & 1;
}

uint64_t sub_1821F081C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEB);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 235);
  }

  return (v3 >> 6) & 1;
}

uint64_t sub_1821F0884(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 10) & 1;
}

uint64_t sub_1821F08EC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 11) & 1;
}

uint64_t sub_1821F0954(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 21) & 1;
}

uint64_t sub_1821F09BC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 22) & 1;
}

uint64_t sub_1821F0A24(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE7);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 231);
  }

  return (v3 >> 2) & 1;
}

uint64_t sub_1821F0A8C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 4) & 1;
}

uint64_t sub_1821F0AF4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 5) & 1;
}

uint64_t sub_1821F0B5C(char *a1, unsigned __int8 *a2)
{
  __dst[49] = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
    v5 = LOBYTE(__dst[22]);
    if ((__dst[22] & 1) == 0)
    {
      src[0] = __dst[20];
      src[1] = __dst[21];

      sub_181F481DC(__dst, v10);
      v6 = src;
      goto LABEL_7;
    }
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), 0x188uLL);
    v5 = LOBYTE(__dst[22]);
    if ((__dst[22] & 1) == 0)
    {
      v8[0] = __dst[20];
      v8[1] = __dst[21];

      sub_181F481DC(__dst, v10);
      v6 = v8;
LABEL_7:
      uuid_copy(a2, v6);

      sub_181F48214(__dst);
      return v5 ^ 1u;
    }
  }

  return v5 ^ 1u;
}

uint64_t sub_1821F0D7C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return (v3 >> 11) & 1;
}

uint64_t sub_1821F0DE4(char *a1, void (*a2)(void *__return_ptr, _BYTE *))
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v3 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(v7, (v3 + 16), sizeof(v7));

  sub_181F481DC(__dst, v6);
  a2(v6, v7);

  sub_181F48214(__dst);
  return LOBYTE(v6[0]);
}

uint64_t sub_1821F0EA4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 17) & 1;
}

uint64_t sub_1821F0F0C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 18) & 1;
}

uint64_t sub_1821F0F74(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 140);
  }

  return (v3 >> 19) & 1;
}

uint64_t sub_1821F0FDC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE6);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 230);
  }

  return (v3 >> 2) & 1;
}

uint64_t sub_1821F1044(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 10) & 1;
}

uint64_t sub_1821F10AC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 236);
  }

  return v3 & 1;
}

uint64_t sub_1821F1114(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 7) & 1;
}

uint64_t sub_1821F117C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 6) & 1;
}

uint64_t sub_1821F11E4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 23) & 1;
}

uint64_t sub_1821F124C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x88);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
  }

  return (v3 >> 26) & 1;
}

uint64_t sub_1821F12B4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:

    v5 = 0;
    return v5 & 1;
  }

  swift_beginAccess();
  v3 = *(v1 + 240);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = *(v3 + 152);

  v5 = v4 ^ 1;
  return v5 & 1;
}

void *_nw_parameters_copy_local_endpoint_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x138);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 312);
  }

  v4 = v3;

  return v3;
}

uint64_t _nw_parameters_copy_effective_proxy_config_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x178);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:

    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 376);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(v3 + 32);
  if (v4)
  {
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t _nw_parameters_copy_raced_proxy_config_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x178);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:

    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 376);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(v3 + 40);
  if (v4)
  {
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1821F14B0(char *a1, void (*a2)(void *__return_ptr, _BYTE *))
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v3 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(v7, (v3 + 16), sizeof(v7));

  sub_181F481DC(__dst, v6);
  a2(v6, v7);

  sub_181F48214(__dst);
  return v6[0];
}

void *_nw_parameters_copy_url_endpoint_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x180);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 384);
  }

  v4 = v3;

  return v3;
}

void *_nw_parameters_copy_main_document_url_endpoint_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x188);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 392);
  }

  v4 = v3;

  return v3;
}

uint64_t _nw_parameters_get_required_interface_type_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE0);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 224);
  }

  return dword_182AFE9BC[v3];
}

uint64_t _nw_parameters_get_next_hop_required_interface_type_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE4);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 228);
  }

  return dword_182AFE9BC[v3];
}

uint64_t _nw_parameters_get_service_class_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x83);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 131);
  }

  return v3;
}

uint64_t _nw_parameters_get_multipath_service_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEA);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 234);
  }

  return dword_182AFE9A4[v3];
}

uint64_t _nw_parameters_get_expired_dns_behavior_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x84);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 132);
  }

  return v3;
}

uint64_t _nw_parameters_copy_context_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x128);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 296);
  }

  v4 = *(v3 + 16);
  swift_unknownObjectRetain();

  return v4;
}

uint64_t _nw_parameters_get_data_mode_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x81);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 129);
  }

  return v3;
}

uint64_t _nw_parameters_get_required_interface_subtype_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE1);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 225);
  }

  return dword_182AFE9D4[v3];
}

uint64_t _nw_parameters_get_next_hop_required_interface_subtype_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE5);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 229);
  }

  return dword_182AFE9D4[v3];
}

uint64_t _nw_parameters_get_delegated_unique_pid_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  v3 = v2;
  if (v1 < 0)
  {
    v7 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v8 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xC8);
    v9 = *(v7 + 208);

    if (v9)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v1 + 200);
    v5 = *(v1 + 208);

    if (v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t _nw_parameters_get_expected_workload_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  v3 = v2;
  if (v1 < 0)
  {
    v7 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v8 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x58);
    v9 = *(v7 + 96);

    if (v9)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    swift_beginAccess();
    v4 = *(v1 + 88);
    v5 = *(v1 + 96);

    if (v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t _nw_parameters_get_channel_teardown_delay_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
LABEL_7:
    v5 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x68);
    v7 = *(v5 + 112);

    if (v7)
    {
      result = 0;
    }

    else
    {
      result = v6;
    }

    if (result < 0)
    {
      __break(1u);
    }

    return result;
  }

  swift_beginAccess();
  v3 = *(v1 + 104);
  v1 = *(v1 + 112);

  if (v1)
  {
    result = 0;
  }

  else
  {
    result = v3;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1821F1BDC(char *a1, void (*a2)(uint64_t))
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if ((v3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), 0x188uLL);
    memcpy(v18, (v3 + 16), sizeof(v18));

    sub_181F481DC(__dst, v17);
    v5 = sub_181B5BA58();
    if (v5)
    {
      v6 = v5[4];
      if (v5[2] >= v5[3] + v6)
      {
        v7 = v5[3] + v6;
      }

      else
      {
        v7 = v5[2];
      }

      v18[0] = v5;
      v18[1] = v6;
      v18[2] = v7;

      while (1)
      {
        if (v6 == v7)
        {
          if ((sub_181AC81FC(v8) & 1) == 0)
          {
            goto LABEL_20;
          }

          v6 = v18[1];
          v7 = v18[2];
        }

        v18[1] = v6 + 1;
        v9 = swift_unknownObjectRetain_n();
        a2(v9);
        v8 = swift_unknownObjectRelease_n();
        ++v6;
      }
    }

    goto LABEL_21;
  }

  v10 = v3 & 0x7FFFFFFFFFFFFFFFLL;
  memcpy(__dst, (v10 + 16), 0x188uLL);
  memcpy(v18, (v10 + 16), sizeof(v18));

  sub_181F481DC(__dst, v17);
  v11 = sub_181B5BA58();
  if (!v11)
  {
LABEL_21:

    return sub_181F48214(__dst);
  }

  v12 = v11[4];
  if (v11[2] >= v11[3] + v12)
  {
    v13 = v11[3] + v12;
  }

  else
  {
    v13 = v11[2];
  }

  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v13;

  while (1)
  {
    if (v12 != v13)
    {
      goto LABEL_16;
    }

    if ((sub_181AC81FC(v14) & 1) == 0)
    {
      break;
    }

    v12 = v18[1];
    v13 = v18[2];
LABEL_16:
    v18[1] = v12 + 1;
    v15 = swift_unknownObjectRetain_n();
    a2(v15);
    v14 = swift_unknownObjectRelease_n();
    ++v12;
  }

LABEL_20:

  return sub_181F48214(__dst);
}

uint64_t _nw_parameters_get_proc_uuid_0(char *a1, unsigned __int8 *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v3 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(v7, (v3 + 16), sizeof(v7));

  sub_181F481DC(__dst, v6);
  sub_1821F8B2C(v7, a2);

  return sub_181F48214(__dst);
}

void _nw_parameters_get_parent_id_0(char *a1, unsigned __int8 *a2)
{
  __dst[49] = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
    if ((__dst[2] & 1) == 0)
    {
      src[0] = __dst[0];
      src[1] = __dst[1];

      sub_181F481DC(__dst, v8);
      v5 = src;
      goto LABEL_7;
    }

LABEL_5:

    return;
  }

  swift_beginAccess();
  memcpy(__dst, (v3 + 16), 0x188uLL);
  if (__dst[2])
  {
    goto LABEL_5;
  }

  v6[0] = __dst[0];
  v6[1] = __dst[1];

  sub_181F481DC(__dst, v8);
  v5 = v6;
LABEL_7:
  uuid_copy(a2, v5);

  sub_181F48214(__dst);
}

uint64_t sub_1821F20EC(char *a1, uint64_t (*a2)(__int128 *))
{
  __dst[49] = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
    if ((__dst[2] & 1) == 0)
    {
      v19 = __dst[0];
      v18 = __dst[1];

      sub_181F481DC(__dst, &v35);
      v20 = *sub_182AD2388();
      v35 = v20;
      v21 = v20[3];
      v22 = v21 + 1;
      if (!__OFADD__(v21, 1))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (v20[2] < v22 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_181B8477C(isUniquelyReferenced_nonNull_native, v22);
          v20 = v35;
        }

        sub_181B855B4(v20 + 2, (v20 + 5), v19, v18);
        if (__dst[40])
        {

          sub_181F5FE60(v24);
        }

        v25 = v35;
        v26 = v35[4];
        if (v35[2] >= v35[3] + v26)
        {
          v27 = v35[3] + v26;
        }

        else
        {
          v27 = v35[2];
        }

        v36 = v35[4];
        v37 = v27;

        v29 = v25;
        if (v26 == v27)
        {
LABEL_30:
          if (sub_181AC81FC(v28))
          {
            v29 = v35;
            v26 = v36;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_32:
          while (1)
          {
            v30 = v26 + 1;
            v36 = v26 + 1;
            v34 = *&v29[2 * v26 + 5];
            v33 = v34;
            v28 = a2(&v33);
            if ((v28 & 1) == 0)
            {
              break;
            }

            ++v26;
            if (v30 == v37)
            {
              goto LABEL_30;
            }
          }
        }

        goto LABEL_35;
      }

LABEL_38:
      __break(1u);
    }
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), 0x188uLL);
    if ((__dst[2] & 1) == 0)
    {
      v6 = __dst[0];
      v5 = __dst[1];

      sub_181F481DC(__dst, &v35);
      v7 = *sub_182AD2388();
      v35 = v7;
      v8 = v7[3];
      v9 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {

        v10 = swift_isUniquelyReferenced_nonNull_native();
        if (v7[2] < v9 || (v10 & 1) == 0)
        {
          sub_181B8477C(v10, v9);
          v7 = v35;
        }

        sub_181B855B4(v7 + 2, (v7 + 5), v6, v5);
        if (__dst[40])
        {

          sub_181F5FE60(v11);
        }

        v12 = v35;
        v13 = v35[4];
        if (v35[2] >= v35[3] + v13)
        {
          v14 = v35[3] + v13;
        }

        else
        {
          v14 = v35[2];
        }

        v36 = v35[4];
        v37 = v14;

        v16 = v12;
        if (v13 == v14)
        {
LABEL_13:
          if (sub_181AC81FC(v15))
          {
            v16 = v35;
            v13 = v36;
            goto LABEL_15;
          }
        }

        else
        {
LABEL_15:
          while (1)
          {
            v17 = v13 + 1;
            v36 = v13 + 1;
            v32 = *&v16[2 * v13 + 5];
            v33 = v32;
            v15 = a2(&v32);
            if ((v15 & 1) == 0)
            {
              break;
            }

            ++v13;
            if (v17 == v37)
            {
              goto LABEL_13;
            }
          }
        }

LABEL_35:

        return sub_181F48214(__dst);
      }

      __break(1u);
      goto LABEL_38;
    }
  }

  sub_181F481DC(__dst, &v35);

  return sub_181F48214(__dst);
}

void _nw_parameters_get_listener_uuid_0(char *a1, unsigned __int8 *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    if ((__dst[33] & 1) == 0)
    {
      src = *&__dst[17];
      v17 = __dst[21];
      v18 = __dst[22];
      v19 = __dst[23];
      v20 = __dst[24];
      v21 = *&__dst[25];
      v22 = __dst[29];
      v23 = __dst[30];
      v24 = __dst[31];
      v25 = __dst[32];

      sub_181F481DC(__dst, v26);
      p_src = &src;
      goto LABEL_7;
    }

LABEL_5:

    return;
  }

  swift_beginAccess();
  memcpy(__dst, (v3 + 16), sizeof(__dst));
  if (__dst[33])
  {
    goto LABEL_5;
  }

  v6 = *&__dst[17];
  v7 = __dst[21];
  v8 = __dst[22];
  v9 = __dst[23];
  v10 = __dst[24];
  v11 = *&__dst[25];
  v12 = __dst[29];
  v13 = __dst[30];
  v14 = __dst[31];
  v15 = __dst[32];

  sub_181F481DC(__dst, v26);
  p_src = &v6;
LABEL_7:
  uuid_copy(a2, p_src);

  sub_181F48214(__dst);
}

uint64_t sub_1821F2670(char *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
    v19 = __dst[44];
    if (__dst[44])
    {
      v34 = v4;
      v20 = *(__dst[44] + 32);
      if (*(__dst[44] + 16) >= *(__dst[44] + 24) + v20)
      {
        v21 = *(__dst[44] + 24) + v20;
      }

      else
      {
        v21 = *(__dst[44] + 16);
      }

      v39 = __dst[44];
      v40 = v20;
      v41 = v21;

      sub_181F481DC(__dst, &v42);

      v23 = v19;
      if (v20 == v21)
      {
LABEL_17:
        if (sub_181AC81FC(v22))
        {
          v23 = v39;
          v20 = v40;
          goto LABEL_19;
        }
      }

      else
      {
LABEL_19:
        while (1)
        {
          v24 = v20 + 1;
          v40 = v20 + 1;
          v25 = v23 + 56 * v20;
          v26 = *(v25 + 40);
          v27 = *(v25 + 56);
          v28 = *(v25 + 72);
          v45 = *(v25 + 88);
          v44 = v28;
          v42 = v26;
          v43 = v27;
          type metadata accessor for __NWProtocolTransform();
          v29 = swift_allocObject();
          v30 = *(v25 + 56);
          v31 = *(v25 + 72);
          v32 = *(v25 + 40);
          *(v29 + 64) = *(v25 + 88);
          *(v29 + 32) = v30;
          *(v29 + 48) = v31;
          *(v29 + 16) = v32;
          sub_181B29D44(&v42, v38);
          sub_181B29D44(&v42, v38);
          LOBYTE(v25) = a2(v29);
          sub_181B29DA0(&v42);

          if ((v25 & 1) == 0)
          {
            break;
          }

          v20 = v24;
          if (v24 == v41)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_24;
    }
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), 0x188uLL);
    v5 = __dst[44];
    if (__dst[44])
    {
      v34 = v4;
      v35 = __dst[44];
      v6 = *(__dst[44] + 32);
      if (*(__dst[44] + 16) >= *(__dst[44] + 24) + v6)
      {
        v7 = *(__dst[44] + 24) + v6;
      }

      else
      {
        v7 = *(__dst[44] + 16);
      }

      v36 = *(__dst[44] + 32);
      v37 = v7;

      sub_181F481DC(__dst, &v42);

      v9 = v5;
      if (v6 == v7)
      {
LABEL_7:
        if (sub_181AC81FC(v8))
        {
          v9 = v35;
          v6 = v36;
          goto LABEL_9;
        }
      }

      else
      {
LABEL_9:
        while (1)
        {
          v10 = v6 + 1;
          v36 = v6 + 1;
          v11 = v9 + 56 * v6;
          v12 = *(v11 + 40);
          v13 = *(v11 + 56);
          v14 = *(v11 + 72);
          v45 = *(v11 + 88);
          v44 = v14;
          v42 = v12;
          v43 = v13;
          type metadata accessor for __NWProtocolTransform();
          v15 = swift_allocObject();
          v16 = *(v11 + 56);
          v17 = *(v11 + 72);
          v18 = *(v11 + 40);
          *(v15 + 64) = *(v11 + 88);
          *(v15 + 32) = v16;
          *(v15 + 48) = v17;
          *(v15 + 16) = v18;
          sub_181B29D44(&v42, v38);
          sub_181B29D44(&v42, v38);
          LOBYTE(v11) = a2(v15);
          sub_181B29DA0(&v42);

          if ((v11 & 1) == 0)
          {
            break;
          }

          v6 = v10;
          if (v10 == v37)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_24:

      return sub_181F48214(__dst);
    }
  }

  sub_181F481DC(__dst, &v42);

  return sub_181F48214(__dst);
}

void _nw_parameters_get_migration_controller_session_uuid_0(char *a1, unsigned __int8 *a2)
{
  __dst[49] = *MEMORY[0x1E69E9840];
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
    if (__dst[28] && (*(__dst[28] + 152) & 1) == 0)
    {
      v8 = *(__dst[28] + 136);
      v9 = *(__dst[28] + 144);
      src[0] = v8;
      src[1] = v9;

      sub_181F481DC(__dst, v12);
      v7 = src;
      goto LABEL_9;
    }

LABEL_7:

    return;
  }

  swift_beginAccess();
  memcpy(__dst, (v3 + 16), 0x188uLL);
  if (!__dst[28] || (*(__dst[28] + 152) & 1) != 0)
  {
    goto LABEL_7;
  }

  v5 = *(__dst[28] + 136);
  v6 = *(__dst[28] + 144);
  v10[0] = v5;
  v10[1] = v6;

  sub_181F481DC(__dst, v12);
  v7 = v10;
LABEL_9:
  uuid_copy(a2, v7);

  sub_181F48214(__dst);
}

uint64_t _nw_parameters_copy_metadata_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x190);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 400);
  }

  swift_unknownObjectRetain();

  return v3;
}

uint64_t _nw_parameters_get_companion_preference_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE2);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 226);
  }

  return v3;
}

uint64_t _nw_parameters_get_ecn_mode_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x82);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 130);
  }

  if (v3 == 2)
  {
    return 0;
  }

  if (v3)
  {
    return 1;
  }

  return 2;
}

uint64_t _nw_parameters_get_companion_link_upgrade_preference_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE3);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 227);
  }

  return v3;
}

id sub_1821F2D80()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = type metadata accessor for ParametersStorage();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
  type metadata accessor for SystemLock._Storage();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v2[v3] = v4;
  v5 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_bundleIDStorage];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  type metadata accessor for MutableParametersStorage();
  v9 = swift_allocObject();
  memcpy((v9 + 16), __dst, 0x188uLL);
  *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage] = v9;
  sub_181F481DC(__dst, v12);
  v11.receiver = v2;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1821F2E98()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = type metadata accessor for ParametersStorage();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
  type metadata accessor for SystemLock._Storage();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v2[v3] = v4;
  v5 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_bundleIDStorage];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  type metadata accessor for ImmutableParametersStorage();
  v9 = swift_allocObject();
  memcpy((v9 + 16), __dst, 0x188uLL);
  *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage] = v9 | 0x8000000000000000;
  sub_181F481DC(__dst, v12);
  v11.receiver = v2;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1821F3074@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if (v3 < 0)
  {
    v21 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    v22 = *(v21 + 256);
    v23 = *(v21 + 288);
    v94 = *(v21 + 272);
    v95 = v23;
    v24 = *(v21 + 288);
    v96 = *(v21 + 304);
    v25 = *(v21 + 192);
    v26 = *(v21 + 224);
    v90 = *(v21 + 208);
    v91 = v26;
    v27 = *(v21 + 256);
    v28 = *(v21 + 224);
    v92 = *(v21 + 240);
    v93 = v27;
    v29 = *(v21 + 160);
    v86 = *(v21 + 144);
    v87 = v29;
    v30 = *(v21 + 192);
    v88 = *(v21 + 176);
    v89 = v30;
    v68 = v92;
    v69 = v22;
    v70 = v94;
    v71 = v24;
    v64 = v88;
    v65 = v25;
    v66 = v90;
    v67 = v28;
    v62 = v86;
    v63 = v29;
    v13 = *(&v96 + 1);
    v14 = v96;

    sub_181A41E20(&v86, v73);
    ProtocolStack.transport.getter(v75);
    v31 = v75[1];
    v32 = v75[0];
    if ((~v75[1] & 0xF000000000000007) != 0)
    {
      sub_181AACFF4(v75[0], v75[1]);
      sub_181A53008(v32, v31);
      *&v74 = v32;
      *(&v74 + 1) = v31;
      sub_181B48EF4(v73);
      sub_181AAD03C(v74, *(&v74 + 1));
      v33 = *v73;
      v34 = v96;
      if (v96)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v59 = *v75;
      sub_181A53008(v75[0], v75[1]);
      v33 = v59;
      v34 = v96;
      if (v96)
      {
LABEL_7:
        v35 = v34[2];
        v36 = v34[3];
LABEL_18:
        *(v34 + 1) = v33;
        sub_181A53008(v35, v36);
        v50 = *(v21 + 360);
        swift_beginAccess();
        v52 = *(v50 + 48);
        v51 = *(v50 + 56);
        if ((~v51 & 0xF000000000000007) == 0)
        {
          goto LABEL_22;
        }

        if (!(v51 >> 62))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
          swift_allocObject();
          sub_181B2C3E0(v52, v51);
          v57 = sub_181C0799C(v52);
          sub_181A52FE0(v52, v51);

          v51 = 0;
          v52 = v57;
          goto LABEL_23;
        }

        if (v51 >> 62 == 1)
        {
          ObjectType = swift_getObjectType();
          v75[0] = v52;
          (*(*((v51 & 0x3FFFFFFFFFFFFFFFLL) + 8) + 32))(&v74, ObjectType);
          v52 = v74;

          v51 = v51 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
        }

        else
        {
LABEL_22:
        }

LABEL_23:
        v54 = v34[4];
        v55 = v34[5];
        v34[4] = v52;
        v34[5] = v51;
        result = sub_181A52FE0(v54, v55);
        *(a1 + 96) = v68;
        *(a1 + 112) = v69;
        *(a1 + 128) = v70;
        *(a1 + 144) = v71;
        *(a1 + 32) = v64;
        *(a1 + 48) = v65;
        *(a1 + 64) = v66;
        *(a1 + 80) = v67;
        v48 = v62;
        v49 = v63;
        goto LABEL_24;
      }
    }

    v61 = v33;
    type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
    v34 = swift_allocObject();
    v35 = 0;
    *(v34 + 1) = xmmword_182AE3CC0;
    *(v34 + 2) = xmmword_182AE3CC0;
    v33 = v61;
    v34[7] = 0;
    v34[8] = 0;
    v34[6] = 1;
    v36 = 0xF000000000000007;
    v14 = v34;
    goto LABEL_18;
  }

  swift_beginAccess();
  v4 = *(v3 + 256);
  v5 = *(v3 + 288);
  v94 = *(v3 + 272);
  v95 = v5;
  v6 = *(v3 + 288);
  v96 = *(v3 + 304);
  v7 = *(v3 + 192);
  v8 = *(v3 + 224);
  v90 = *(v3 + 208);
  v91 = v8;
  v9 = *(v3 + 256);
  v10 = *(v3 + 224);
  v92 = *(v3 + 240);
  v93 = v9;
  v11 = *(v3 + 160);
  v86 = *(v3 + 144);
  v87 = v11;
  v12 = *(v3 + 192);
  v88 = *(v3 + 176);
  v89 = v12;
  v82 = v92;
  v83 = v4;
  v84 = v94;
  v85 = v6;
  v78 = v88;
  v79 = v7;
  v80 = v90;
  v81 = v10;
  v76 = v86;
  v77 = v11;
  v13 = *(&v96 + 1);
  v14 = v96;

  sub_181A41E20(&v86, v73);
  ProtocolStack.transport.getter(&v74);

  v15 = *(&v74 + 1);
  v16 = v74;
  if ((~*(&v74 + 1) & 0xF000000000000007) != 0)
  {
    sub_181AACFF4(v74, *(&v74 + 1));
    sub_181A53008(v16, v15);
    v72[0] = v16;
    v72[1] = v15;
    sub_181B48EF4(v73);
    sub_181AAD03C(v16, v15);
    v17 = *v73;
    v18 = v96;
    if (v96)
    {
      goto LABEL_4;
    }

LABEL_9:
    v60 = v17;
    type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
    v18 = swift_allocObject();
    v19 = 0;
    *(v18 + 16) = xmmword_182AE3CC0;
    *(v18 + 32) = xmmword_182AE3CC0;
    v17 = v60;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    *(v18 + 48) = 1;
    v20 = 0xF000000000000007;
    v14 = v18;
    goto LABEL_10;
  }

  v58 = v74;
  sub_181A53008(v74, *(&v74 + 1));
  v17 = v58;
  v18 = v96;
  if (!v96)
  {
    goto LABEL_9;
  }

LABEL_4:
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
LABEL_10:
  *(v18 + 16) = v17;
  sub_181A53008(v19, v20);
  v37 = *(v3 + 360);
  swift_beginAccess();
  v39 = *(v37 + 48);
  v38 = *(v37 + 56);
  if ((~v38 & 0xF000000000000007) == 0)
  {
    goto LABEL_14;
  }

  if (!(v38 >> 62))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
    swift_allocObject();
    sub_181B2C3E0(v39, v38);
    v56 = sub_181C0799C(v39);
    sub_181A52FE0(v39, v38);

    v38 = 0;
    v39 = v56;
    goto LABEL_15;
  }

  if (v38 >> 62 == 1)
  {
    v40 = swift_getObjectType();
    *&v74 = v39;
    (*(*((v38 & 0x3FFFFFFFFFFFFFFFLL) + 8) + 32))(v72, v40);
    v39 = v72[0];

    v38 = v38 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v41 = *(v18 + 32);
  v42 = *(v18 + 40);
  *(v18 + 32) = v39;
  *(v18 + 40) = v38;
  result = sub_181A52FE0(v41, v42);
  v44 = v83;
  *(a1 + 96) = v82;
  *(a1 + 112) = v44;
  v45 = v85;
  *(a1 + 128) = v84;
  *(a1 + 144) = v45;
  v46 = v79;
  *(a1 + 32) = v78;
  *(a1 + 48) = v46;
  v47 = v81;
  *(a1 + 64) = v80;
  *(a1 + 80) = v47;
  v48 = v76;
  v49 = v77;
LABEL_24:
  *a1 = v48;
  *(a1 + 16) = v49;
  *(a1 + 160) = v14;
  *(a1 + 168) = v13;
  return result;
}

uint64_t sub_1821F35CC(char *a1, char *a2, unsigned int a3)
{
  v5 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 144];
  v31 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 128];
  v32 = v5;
  v33 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 160];
  v6 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 80];
  v27 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 64];
  v28 = v6;
  v7 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 112];
  v29 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 96];
  v30 = v7;
  v8 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 16];
  v23 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters];
  v24 = v8;
  v9 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 48];
  v25 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 32];
  v26 = v9;
  v10 = a1;
  sub_181A41E20(&v23, &v34);

  v11 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 144];
  v42 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 128];
  v43 = v11;
  v44 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 160];
  v12 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 80];
  v38 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 64];
  v39 = v12;
  v13 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 112];
  v40 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 96];
  v41 = v13;
  v14 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 16];
  v34 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters];
  v35 = v14;
  v15 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 48];
  v36 = *&a2[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 32];
  v37 = v15;
  v16 = a2;
  sub_181A41E20(&v34, v22);

  v22[7] = v30;
  v22[8] = v31;
  v22[9] = v32;
  v22[10] = v33;
  v22[3] = v26;
  v22[4] = v27;
  v22[5] = v28;
  v22[6] = v29;
  v22[1] = v24;
  v22[2] = v25;
  v21[8] = v42;
  v21[9] = v43;
  v21[10] = v44;
  v22[0] = v23;
  v21[4] = v38;
  v21[5] = v39;
  v21[6] = v40;
  v21[7] = v41;
  v21[0] = v34;
  v21[1] = v35;
  v21[2] = v36;
  v21[3] = v37;
  if (a3 >= 5)
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  v20 = v17;
  v18 = sub_181B02888(v21, &v20);
  sub_181A41E7C(&v34);
  sub_181A41E7C(&v23);
  return v18 & 1;
}

uint64_t _nw_path_parameters_get_hash(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 144];
  v19 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 128];
  v20 = v1;
  v21 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 160];
  v2 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 80];
  v15 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 64];
  v16 = v2;
  v3 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 112];
  v17 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 96];
  v18 = v3;
  v4 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 16];
  v11 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters];
  v12 = v4;
  v5 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 48];
  v13 = *&a1[OBJC_IVAR____TtC7Network18__NWPathParameters_parameters + 32];
  v14 = v5;
  v6 = a1;
  sub_181A41E20(&v11, v10);

  v10[8] = v19;
  v10[9] = v20;
  v10[10] = v21;
  v10[4] = v15;
  v10[5] = v16;
  v10[6] = v17;
  v10[7] = v18;
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  sub_182AD44E8();
  sub_18226C71C(v9);
  v7 = sub_182AD4558();
  sub_181A41E7C(&v11);
  return v7;
}

id _nw_parameters_create_custom_ip(char a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_181AACB1C;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1821F38B4(a1, v3, v4);
  sub_181A554F4(v3);
  return v5;
}

id sub_1821F38B4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;

    v7 = sub_181AA9508;
  }

  else
  {
    v7 = 0;
  }

  sub_181AA39C0(a2);
  sub_181F423F0(a1, v7, v10);
  v8 = sub_1821F2D80();
  sub_181A554F4(v7);
  memcpy(__dst, v10, sizeof(__dst));
  sub_181F48214(__dst);
  return v8;
}

id _nw_parameters_create_quic(const void *a1)
{
  v1 = _Block_copy(a1);
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = sub_181AACB1C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_181AA39C0(v4);

  sub_181F416D0(sub_1821FB9A0, v8);
  v6 = sub_1821F2D80();
  sub_181A554F4(v4);

  memcpy(__dst, v8, sizeof(__dst));
  sub_181F48214(__dst);
  return v6;
}

uint64_t sub_1821F3A94(uint64_t result, void (*a2)(uint64_t))
{
  if (a2)
  {
    v3 = result;

    a2(v3);

    return sub_181A554F4(a2);
  }

  return result;
}

id _nw_parameters_create_quic_connection(const void *a1)
{
  v1 = _Block_copy(a1);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v1 = sub_181AACB1C;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1821F3B80(v1, v2);
  sub_181A554F4(v1);
  return v3;
}

id sub_1821F3B80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    v5 = sub_181AA9530;
  }

  else
  {
    v5 = 0;
  }

  sub_181AA39C0(a1);
  sub_181F40E9C(v5, v8);
  v6 = sub_1821F2D80();
  sub_181A554F4(v5);
  memcpy(__dst, v8, sizeof(__dst));
  sub_181F48214(__dst);
  return v6;
}

id _nw_parameters_create_quic_stream(const void *a1, const void *a2)
{
  v3 = _Block_copy(a1);
  v4 = _Block_copy(a2);
  v5 = v4;
  if (!v3)
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v3 = sub_181AACB1C;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v5 = sub_181AACB1C;
LABEL_6:
  v8 = sub_1821F3D40(v3, v6, v5, v7);
  sub_181A554F4(v5);
  sub_181A554F4(v3);
  return v8;
}

id sub_1821F3D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_181AA9530;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  v11 = sub_181AA9530;
LABEL_6:
  sub_181AA39C0(a1);
  sub_181AA39C0(a3);
  sub_181F411E4(v9, v11, v14);
  v12 = sub_1821F2D80();
  sub_181A554F4(v9);
  sub_181A554F4(v11);
  memcpy(__dst, v14, sizeof(__dst));
  sub_181F48214(__dst);
  return v12;
}

id _nw_parameters_create_quic_stream_with_tls_fallback(const void *a1, const void *a2, const void *a3, void *a4, const void *a5)
{
  v9 = _Block_copy(a1);
  v10 = _Block_copy(a2);
  v11 = _Block_copy(a3);
  v12 = _Block_copy(a5);
  if (v9)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v9 = sub_181AACB1C;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (v10)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      v10 = sub_181AACB1C;
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_8:
      v15 = 0;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_9:
      v16 = 0;
      goto LABEL_10;
    }
  }

  v14 = 0;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_4:
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v11 = sub_181AACB1C;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v12 = sub_181AACB1C;
LABEL_10:
  v17 = sub_1821F405C(v9, v13, v10, v14, v11, v15, a4, v12, v16);
  sub_181A554F4(v12);
  sub_181A554F4(v11);
  sub_181A554F4(v10);
  sub_181A554F4(v9);
  return v17;
}

id sub_1821F405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  if (a7)
  {
    v17 = a7;
  }

  if (a1)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;

    v30 = sub_181AA9530;
    if (a3)
    {
LABEL_5:
      v19 = swift_allocObject();
      *(v19 + 16) = a3;
      *(v19 + 24) = a4;

      v28 = sub_181AA9530;
      goto LABEL_8;
    }
  }

  else
  {
    v30 = 0;
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v28 = 0;
LABEL_8:
  v29 = a1;
  v31 = a5;
  if (a5)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v21 = sub_181AA9530;
  }

  else
  {
    v21 = 0;
  }

  v22 = a7;
  v23 = a8;
  if (a8)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a9;

    v25 = sub_181AA9530;
  }

  else
  {
    v25 = 0;
  }

  sub_181AA39C0(v29);
  sub_181AA39C0(a3);
  sub_181AA39C0(v31);
  sub_181AA39C0(v23);
  sub_181F419F0(v30, v28, v21, v22, v25, __src);
  v26 = sub_1821F2D80();
  sub_181A554F4(v30);
  sub_181A554F4(v28);
  sub_181A554F4(v21);
  sub_181A554F4(v25);

  memcpy(__dst, __src, 0x188uLL);
  sub_181F48214(__dst);
  return v26;
}

id _nw_parameters_create_legacy_tcp_socket(const void *a1)
{
  v1 = _Block_copy(a1);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v1 = sub_181AACB1C;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1821F4344(v1, v2);
  sub_181A554F4(v1);
  return v3;
}

id sub_1821F4344(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    v5 = sub_181AA9530;
  }

  else
  {
    v5 = 0;
  }

  sub_181AA39C0(a1);
  sub_181F42834(v5, v8);
  v6 = sub_1821F2D80();
  sub_181A554F4(v5);
  memcpy(__dst, v8, sizeof(__dst));
  sub_181F48214(__dst);
  return v6;
}

id _nw_parameters_copy_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v3 + 16), sizeof(__dst));
    memcpy(v8, (v3 + 16), sizeof(v8));
    sub_181F481DC(__dst, __src);

    sub_181F481DC(__dst, __src);
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));
    memcpy(v8, (v1 + 16), sizeof(v8));
    sub_181F481DC(__dst, __src);
    sub_181F481DC(__dst, __src);
  }

  Parameters.init(from:shallowCopy:)(v8, 0, __src);
  v4 = sub_1821F2D80();

  sub_181F48214(__dst);
  memcpy(v8, __src, sizeof(v8));
  sub_181F48214(v8);
  return v4;
}

char *sub_1821F4544(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  result = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = result;
    swift_beginAccess();
    memcpy(v5, (v1 + 16), sizeof(v5));
    v4 = sub_1821F2E98();

    return v4;
  }

  return result;
}

uint64_t sub_1821F45D8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  memcpy(v7, (v1 + 16), sizeof(v7));
  sub_182AD44E8();

  sub_181F481DC(__dst, v5);
  Parameters.hash(into:)(v6);
  v3 = sub_182AD4558();

  sub_181F48214(__dst);
  return v3;
}

BOOL sub_1821F46A8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = *(v5 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if (v10 < 0)
  {
    v12 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v13 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
    if (v13 < 0)
    {
      v13 &= ~0x8000000000000000;
      memcpy(__dst, (v12 + 16), sizeof(__dst));
      memcpy(__src, (v12 + 16), sizeof(__src));
    }

    else
    {
      memcpy(__dst, (v12 + 16), sizeof(__dst));
      memcpy(__src, (v12 + 16), sizeof(__src));
      swift_beginAccess();
    }

    memcpy(v20, (v13 + 16), sizeof(v20));
    v14 = (v13 + 16);
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
    if (v11 < 0)
    {
      v11 &= ~0x8000000000000000;
      swift_beginAccess();
      memcpy(__dst, (v10 + 16), sizeof(__dst));
      memcpy(__src, (v10 + 16), sizeof(__src));
    }

    else
    {
      swift_beginAccess();
      memcpy(__dst, (v10 + 16), sizeof(__dst));
      memcpy(__src, (v10 + 16), sizeof(__src));
      swift_beginAccess();
    }

    memcpy(v20, (v11 + 16), sizeof(v20));
    v14 = (v11 + 16);
  }

  memcpy(v17, v14, sizeof(v17));
  sub_181F481DC(__dst, v22);
  sub_181F481DC(v20, v22);
  v15 = sub_181D739D0(v17, a2, a3 & 1, a4, a5 & 1);
  memcpy(v21, v17, sizeof(v21));
  sub_181F48214(v21);
  memcpy(v22, __src, sizeof(v22));
  sub_181F48214(v22);
  return v15;
}

uint64_t sub_1821F48A0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 224);
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    v5 = type metadata accessor for __NWInterface();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
    swift_retain_n();
    v8 = swift_slowAlloc();
    *&v6[v7] = v8;
    *&v6[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v6[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v4;
    *v8 = 0;
    v10.receiver = v6;
    v10.super_class = v5;
    v9 = objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1821F49A8(uint64_t a1, int a2)
{
  if ((*(a1 + 220) & 0x1000) != 0)
  {
LABEL_31:
    v26 = *(a1 + 224);
    if (v26)
    {
      v27 = *(v26 + 24);
      if (v27)
      {

        v28 = *sub_182AD2388();
        v29 = v27[4];
        v30 = v27[3] + v29;
        if (v27[2] < v30)
        {
          v30 = v27[2];
        }

        v43 = v27;
        v45 = v27[4];
        v47 = v30;
        v48 = v28;

        while (1)
        {
          if (v29 == v47)
          {
            result = sub_181AC81FC(result);
            if ((result & 1) == 0)
            {

              goto LABEL_57;
            }

            v27 = v43;
            v29 = v45;
          }

          v31 = v27 + v29++;
          v45 = v29;
          v32 = v31[40];
          if (v32 != a2)
          {
            v33 = v28[3];
            v34 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_64;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (v28[2] < v34 || (result & 1) == 0)
            {
              result = sub_181EBDCF0(result, v34, 0);
              v28 = v48;
            }

            v35 = v28[3];
            v36 = v28[4];
            v21 = __OFADD__(v36, v35);
            v37 = v36 + v35;
            if (v21)
            {
              goto LABEL_65;
            }

            if (v35 < 0)
            {
              if (v37 < 0)
              {
                v41 = v28[2];
                v21 = __OFADD__(v37, v41);
                v37 += v41;
                if (v21)
                {
                  goto LABEL_69;
                }
              }
            }

            else
            {
              v38 = v28[2];
              v39 = __OFSUB__(v37, v38);
              v40 = v37 - v38;
              if (v40 < 0 == v39)
              {
                v37 = v40;
                if (v39)
                {
                  goto LABEL_68;
                }
              }
            }

            *(v28 + v37 + 40) = v32;
            v21 = __OFADD__(v35, 1);
            v42 = v35 + 1;
            if (v21)
            {
              goto LABEL_66;
            }

            v28[3] = v42;
          }
        }
      }

      v28 = 0;
    }

    else
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v26 = swift_allocObject();
      sub_18226B448(v26 + 16);
      v28 = 0;
      *(a1 + 224) = v26;
    }

LABEL_57:
    *(v26 + 24) = v28;
  }

  v4 = 0;
  *(a1 + 220) |= 0x1000u;
  while (2)
  {
    v5 = byte_1EEF96D88[v4 + 32];
    v6 = *(a1 + 224);
    if (!v6 || (v7 = *(v6 + 24)) == 0)
    {
      v7 = *sub_182AD2388();
    }

    v8 = v5;
    ++v4;
    v9 = swift_retain_n();
    v10 = v7[4];
    v11 = v7[3] + v10;
    if (v7[2] < v11)
    {
      v11 = v7[2];
    }

    v44 = v7[4];
    v46 = v11;
    v12 = v7;
    while (v10 != v46)
    {
LABEL_11:
      v13 = v12 + v10++;
      v44 = v10;
      if (qword_182AFE9F0[v13[40]] == qword_182AFE9F0[v5])
      {

        goto LABEL_4;
      }
    }

    v9 = sub_181AC81FC(v9);
    if (v9)
    {
      v12 = v7;
      v10 = v44;
      goto LABEL_11;
    }

    v15 = v7[3];
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (v7[2] < v16 || (result & 1) == 0)
    {
      result = sub_181EBDCF0(result, v16, 0);
    }

    v17 = v7[3];
    v18 = v7[4];
    v21 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (v21)
    {
      goto LABEL_61;
    }

    if (v17 < 0)
    {
      if (v19 < 0)
      {
        v23 = v7[2];
        v21 = __OFADD__(v19, v23);
        v19 += v23;
        if (v21)
        {
          goto LABEL_67;
        }
      }

LABEL_27:
      *(v7 + v19 + 40) = v8;
      v21 = __OFADD__(v17, 1);
      v24 = v17 + 1;
      if (!v21)
      {
        v7[3] = v24;
        if (v6)
        {
          *(v6 + 24) = v7;
        }

        else
        {
          type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
          v25 = swift_allocObject();
          *(v25 + 16) = 0u;
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0;
          *(v25 + 152) = 1;
          *(v25 + 160) = 0;
          *(a1 + 224) = v25;
          *(v25 + 24) = v7;
        }

LABEL_4:

        if (v4 == 5)
        {
          goto LABEL_31;
        }

        continue;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    break;
  }

  v20 = v7[2];
  v21 = __OFSUB__(v19, v20);
  v22 = v19 - v20;
  if (v22 < 0 != v21)
  {
    goto LABEL_27;
  }

  v19 = v22;
  if (!v21)
  {
    goto LABEL_27;
  }

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
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1821F4D70(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  v3 = v2;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v4 = *(v1 + 240);
    if (v4)
    {
      v5 = *(v1 + 236);
      v6 = *(v4 + 24);

      if (!v6)
      {
        goto LABEL_34;
      }

      goto LABEL_7;
    }

LABEL_33:

    goto LABEL_34;
  }

  v7 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
  if (!v7)
  {
    goto LABEL_33;
  }

  v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  v8 = *(v7 + 24);

  if (!v8)
  {
LABEL_34:
    v10 = 1;
    return v10 & 1;
  }

LABEL_7:
  if ((v5 & 0x1000) == 0)
  {
    goto LABEL_34;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = byte_1EEF97608[v9 + 32];
    v12 = *&v3[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
    v13 = v3;
    if (v12 < 0)
    {
      v20 = memcpy(__dst, ((v12 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      if (__dst[28])
      {
        v21 = *(__dst[28] + 24);
        if (v21)
        {
          v22 = v21[4];
          v23 = v21[3] + v22;
          if (v21[2] < v23)
          {
            v23 = v21[2];
          }

          v28 = *(__dst[28] + 24);
          v29 = v22;
          v30 = v23;
          v24 = v21;
          while (1)
          {
            if (v22 == v30)
            {
              v20 = sub_181AC81FC(v20);
              if ((v20 & 1) == 0)
              {
LABEL_32:

                sub_181F481DC(__dst, v27);

                sub_181F48214(__dst);
                goto LABEL_31;
              }

              v24 = v28;
              v22 = v29;
            }

            v25 = v24 + v22++;
            v29 = v22;
            if (v25[40] == v11)
            {
LABEL_9:

              sub_181F481DC(__dst, v27);

              sub_181F48214(__dst);
              goto LABEL_10;
            }
          }
        }
      }
    }

    else
    {
      swift_beginAccess();
      v14 = memcpy(__dst, (v12 + 16), sizeof(__dst));
      if (__dst[28])
      {
        v15 = *(__dst[28] + 24);
        if (v15)
        {
          v16 = v15[4];
          v17 = v15[3] + v16;
          if (v15[2] < v17)
          {
            v17 = v15[2];
          }

          v28 = *(__dst[28] + 24);
          v29 = v16;
          v30 = v17;
          v18 = v15;
          while (1)
          {
            if (v16 == v30)
            {
              v14 = sub_181AC81FC(v14);
              if ((v14 & 1) == 0)
              {
                goto LABEL_32;
              }

              v18 = v28;
              v16 = v29;
            }

            v19 = v18 + v16++;
            v29 = v16;
            if (v19[40] == v11)
            {
              goto LABEL_9;
            }
          }
        }
      }
    }

LABEL_31:
    v10 = 1;
LABEL_10:
    ++v9;
  }

  while (v9 != 5);
  return v10 & 1;
}

uint64_t _nw_parameters_set_interface_option_details_enumerator(char *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1821FC804(a1, sub_181AACB1C, v4);
}

uint64_t sub_1821F5064@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 120);
  v4 = *(result + 209);
  v5 = *(result + 220);
  v6 = *(result + 224);
  if (v6)
  {
    v7 = *(v6 + 32);
    if (v7)
    {
      if (v7[3] > 0)
      {
        v8 = 1;
        goto LABEL_27;
      }

      if ((*(result + 220) & 0x2000) != 0)
      {
        v9 = v7[4];
        v10 = v7[3] + v9;
        if (v7[2] < v10)
        {
          v10 = v7[2];
        }

        v15 = *(v6 + 32);
        v16 = v7[4];
        v17 = v10;
        v11 = v15;
        do
        {
          if (v9 == v17)
          {
            result = sub_181AC81FC(result);
            if ((result & 1) == 0)
            {

              goto LABEL_26;
            }

            v11 = v15;
            v9 = v16;
          }

          v12 = v11 + v9++;
          v16 = v9;
        }

        while (*(v12 + 40) != 2);
      }
    }

    v13 = *(v6 + 16);
    if (v13)
    {
      if (*(v13 + 185) != 2)
      {

        v14 = sub_182AD31E8();

        v8 = 0;
        if ((v14 & 1) != 0 || (v5 & 2) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

LABEL_26:
      v8 = 0;
      goto LABEL_27;
    }
  }

  if ((v5 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  v8 = (v3 & 0x200) == 0;
  if (v4 == 2)
  {
    v8 = 0;
  }

  if ((v5 & 4) != 0)
  {
    v8 = 0;
  }

LABEL_27:
  *a2 = v8;
  return result;
}

uint64_t sub_1821F5204(uint64_t a1, int a2)
{
  if ((*(a1 + 220) & 0x2000) != 0)
  {
LABEL_31:
    v26 = *(a1 + 224);
    if (v26)
    {
      v27 = *(v26 + 32);
      if (v27)
      {

        v28 = *sub_182AD2388();
        v29 = v27[4];
        v30 = v27[3] + v29;
        if (v27[2] < v30)
        {
          v30 = v27[2];
        }

        v43 = v27;
        v45 = v27[4];
        v47 = v30;
        v48 = v28;

        while (1)
        {
          if (v29 == v47)
          {
            result = sub_181AC81FC(result);
            if ((result & 1) == 0)
            {

              goto LABEL_57;
            }

            v27 = v43;
            v29 = v45;
          }

          v31 = v27 + v29++;
          v45 = v29;
          v32 = v31[40];
          if (dword_182AFEA40[v32] != a2)
          {
            v33 = v28[3];
            v34 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_64;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (v28[2] < v34 || (result & 1) == 0)
            {
              result = sub_181F4601C(result, v34, 0);
              v28 = v48;
            }

            v35 = v28[3];
            v36 = v28[4];
            v21 = __OFADD__(v36, v35);
            v37 = v36 + v35;
            if (v21)
            {
              goto LABEL_65;
            }

            if (v35 < 0)
            {
              if (v37 < 0)
              {
                v41 = v28[2];
                v21 = __OFADD__(v37, v41);
                v37 += v41;
                if (v21)
                {
                  goto LABEL_69;
                }
              }
            }

            else
            {
              v38 = v28[2];
              v39 = __OFSUB__(v37, v38);
              v40 = v37 - v38;
              if (v40 < 0 == v39)
              {
                v37 = v40;
                if (v39)
                {
                  goto LABEL_68;
                }
              }
            }

            *(v28 + v37 + 40) = v32;
            v21 = __OFADD__(v35, 1);
            v42 = v35 + 1;
            if (v21)
            {
              goto LABEL_66;
            }

            v28[3] = v42;
          }
        }
      }

      v28 = 0;
    }

    else
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v26 = swift_allocObject();
      sub_18226B448(v26 + 16);
      v28 = 0;
      *(a1 + 224) = v26;
    }

LABEL_57:
    *(v26 + 32) = v28;
  }

  v4 = 0;
  *(a1 + 220) |= 0x2000u;
  while (2)
  {
    v5 = byte_1EEF96DD8[v4 + 32];
    v6 = *(a1 + 224);
    if (!v6 || (v7 = *(v6 + 32)) == 0)
    {
      v7 = *sub_182AD2388();
    }

    v8 = v5;
    ++v4;
    v9 = swift_retain_n();
    v10 = v7[4];
    v11 = v7[3] + v10;
    if (v7[2] < v11)
    {
      v11 = v7[2];
    }

    v44 = v7[4];
    v46 = v11;
    v12 = v7;
    while (v10 != v46)
    {
LABEL_11:
      v13 = v12 + v10++;
      v44 = v10;
      if (qword_182AFEA18[v13[40]] == qword_182AFEA18[v5])
      {

        goto LABEL_4;
      }
    }

    v9 = sub_181AC81FC(v9);
    if (v9)
    {
      v12 = v7;
      v10 = v44;
      goto LABEL_11;
    }

    v15 = v7[3];
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (v7[2] < v16 || (result & 1) == 0)
    {
      result = sub_181F4601C(result, v16, 0);
    }

    v17 = v7[3];
    v18 = v7[4];
    v21 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (v21)
    {
      goto LABEL_61;
    }

    if (v17 < 0)
    {
      if (v19 < 0)
      {
        v23 = v7[2];
        v21 = __OFADD__(v19, v23);
        v19 += v23;
        if (v21)
        {
          goto LABEL_67;
        }
      }

LABEL_27:
      *(v7 + v19 + 40) = v8;
      v21 = __OFADD__(v17, 1);
      v24 = v17 + 1;
      if (!v21)
      {
        v7[3] = v24;
        if (v6)
        {
          *(v6 + 32) = v7;
        }

        else
        {
          type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
          v25 = swift_allocObject();
          *(v25 + 16) = 0u;
          *(v25 + 32) = 0u;
          *(v25 + 48) = 0u;
          *(v25 + 64) = 0u;
          *(v25 + 80) = 0u;
          *(v25 + 96) = 0u;
          *(v25 + 112) = 0u;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0;
          *(v25 + 152) = 1;
          *(v25 + 160) = 0;
          *(a1 + 224) = v25;
          *(v25 + 32) = v7;
        }

LABEL_4:

        if (v4 == 5)
        {
          goto LABEL_31;
        }

        continue;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    break;
  }

  v20 = v7[2];
  v21 = __OFSUB__(v19, v20);
  v22 = v19 - v20;
  if (v22 < 0 != v21)
  {
    goto LABEL_27;
  }

  v19 = v22;
  if (!v21)
  {
    goto LABEL_27;
  }

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
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1821F55DC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  v3 = v2;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v4 = *(v1 + 240);
    if (v4)
    {
      v5 = *(v1 + 236);
      v6 = *(v4 + 32);

      if (!v6)
      {
        goto LABEL_34;
      }

      goto LABEL_7;
    }

LABEL_33:

    goto LABEL_34;
  }

  v7 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
  if (!v7)
  {
    goto LABEL_33;
  }

  v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xEC);
  v8 = *(v7 + 32);

  if (!v8)
  {
LABEL_34:
    v10 = 1;
    return v10 & 1;
  }

LABEL_7:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_34;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = dword_182AFEA40[byte_1EEF97658[v9 + 32]];
    v12 = *&v3[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
    v13 = v3;
    if (v12 < 0)
    {
      v20 = memcpy(__dst, ((v12 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
      if (__dst[28])
      {
        v21 = *(__dst[28] + 32);
        if (v21)
        {
          v22 = v21[4];
          v23 = v21[3] + v22;
          if (v21[2] < v23)
          {
            v23 = v21[2];
          }

          v28 = *(__dst[28] + 32);
          v29 = v22;
          v30 = v23;
          v24 = v21;
          while (1)
          {
            if (v22 == v30)
            {
              v20 = sub_181AC81FC(v20);
              if ((v20 & 1) == 0)
              {
LABEL_32:

                sub_181F481DC(__dst, v27);

                sub_181F48214(__dst);
                goto LABEL_31;
              }

              v24 = v28;
              v22 = v29;
            }

            v25 = v24 + v22++;
            v29 = v22;
            if (dword_182AFEA40[v25[40]] == v11)
            {
LABEL_9:

              sub_181F481DC(__dst, v27);

              sub_181F48214(__dst);
              goto LABEL_10;
            }
          }
        }
      }
    }

    else
    {
      swift_beginAccess();
      v14 = memcpy(__dst, (v12 + 16), 0x188uLL);
      if (__dst[28])
      {
        v15 = *(__dst[28] + 32);
        if (v15)
        {
          v16 = v15[4];
          v17 = v15[3] + v16;
          if (v15[2] < v17)
          {
            v17 = v15[2];
          }

          v28 = *(__dst[28] + 32);
          v29 = v16;
          v30 = v17;
          v18 = v15;
          while (1)
          {
            if (v16 == v30)
            {
              v14 = sub_181AC81FC(v14);
              if ((v14 & 1) == 0)
              {
                goto LABEL_32;
              }

              v18 = v28;
              v16 = v29;
            }

            v19 = v18 + v16++;
            v29 = v16;
            if (dword_182AFEA40[v19[40]] == v11)
            {
              goto LABEL_9;
            }
          }
        }
      }
    }

LABEL_31:
    v10 = 1;
LABEL_10:
    ++v9;
  }

  while (v9 != 5);
  return v10 & 1;
}

uint64_t _nw_parameters_copy_default_protocol_stack_0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if (v1 < 0)
  {
    v2 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x168);
  }

  else
  {
    swift_beginAccess();
    v2 = *(v1 + 360);
  }

  return v2;
}

uint64_t sub_1821F5944(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  sub_182AD1C98();
  swift_allocObject();

  sub_181F481DC(__dst, v8);
  sub_182AD1C88();
  memcpy(v8, __dst, sizeof(v8));
  sub_18220D87C();
  v3 = sub_182AD1C68();
  v5 = v4;

  v6 = sub_182AD2138();
  sub_181C1F2E4(v3, v5);

  sub_181F48214(__dst);
  return v6;
}

_BYTE *sub_1821F5AC8(_BYTE *result, int a2)
{
  if (a2 > 4000)
  {
    if (a2 == 4001)
    {
      v2 = 3;
      if ((result[214] & 0x10) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a2 != 5001)
      {
        goto LABEL_12;
      }

      if ((result[214] & 0x10) == 0)
      {
        if ((result[215] & 0x20) == 0)
        {
          result[215] |= 0x20u;
        }

        v2 = 5;
        goto LABEL_20;
      }

      v2 = 4;
    }

    goto LABEL_22;
  }

  if (a2 == 1001)
  {
    v2 = 1;
    if ((result[214] & 0x10) == 0)
    {
LABEL_18:
      if ((result[215] & 0x20) != 0)
      {
        result[215] &= ~0x20u;
      }

LABEL_20:
      result[209] = v2;
      return result;
    }

LABEL_22:
    result[213] = v2;
    return result;
  }

  if (a2 == 1002)
  {
    v2 = 2;
    if ((result[214] & 0x10) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_12:
  v3 = 209;
  if ((result[214] & 0x10) != 0)
  {
    v3 = 213;
  }

  result[v3] = 5;
  return result;
}

unint64_t sub_1821F5BB0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v3 = *(v1 + 120);
    v1 = *(v1 + 128);

    if (v1)
    {
      result = 0;
    }

    else
    {
      result = v3;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (!HIDWORD(result))
    {
      return result;
    }

    __break(1u);
  }

  v5 = v1 & 0x7FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x78);
  v7 = *(v5 + 128);

  if (v7)
  {
    result = 0;
  }

  else
  {
    result = v6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (HIDWORD(result))
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1821F5C84(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();

    LOBYTE(v3) = sub_181AC7EB8();
    swift_endAccess();

    return v3 & 1;
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, &v8);
  ProtocolStack.transport.getter(&v9);
  v4 = v10;
  if ((~v10 & 0xF000000000000007) == 0)
  {
LABEL_8:

    sub_181F48214(__dst);
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v5 = v9;
  if (v10 >> 61 != 1)
  {
    sub_181A53008(v9, v10);
    goto LABEL_8;
  }

  v6 = v9 + *(*v9 + 128);
  result = swift_beginAccess();
  if (*(v6 + 40) != 2)
  {
    v3 = (*(v6 + 40) >> 43) & 1;
    sub_181A53008(v5, v4);

    sub_181F48214(__dst);
    return v3 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821F5E3C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v13);
    ProtocolStack.transport.getter(&v9);
    v3 = v10;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v4 = v9;
      if (v10 >> 61 == 1)
      {
        v5 = v9 + *(*v9 + 128);
        result = swift_beginAccess();
        if (*(v5 + 40) != 2)
        {
          v7 = (*(v5 + 40) >> 45) & 1;
          sub_181A53008(v4, v3);

          sub_181F48214(__dst);
          return v7;
        }

        __break(1u);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_11:

    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v13);
  ProtocolStack.transport.getter(&v11);
  v3 = v12;
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v11;
  if (v12 >> 61 != 1)
  {
LABEL_10:
    sub_181A53008(v4, v3);
    goto LABEL_11;
  }

  v8 = v11 + *(*v11 + 128);
  result = swift_beginAccess();
  if (*(v8 + 40) != 2)
  {
    v7 = (*(v8 + 40) >> 45) & 1;
    sub_181A53008(v4, v3);

    sub_181F48214(__dst);
    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1821F6080(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v13);
    ProtocolStack.transport.getter(&v9);
    v3 = v10;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v4 = v9;
      if (v10 >> 61 == 1)
      {
        v5 = v9 + *(*v9 + 128);
        result = swift_beginAccess();
        if (*(v5 + 40) != 2)
        {
          v7 = (*(v5 + 40) >> 46) & 1;
          sub_181A53008(v4, v3);

          sub_181F48214(__dst);
          return v7;
        }

        __break(1u);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_11:

    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v13);
  ProtocolStack.transport.getter(&v11);
  v3 = v12;
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v11;
  if (v12 >> 61 != 1)
  {
LABEL_10:
    sub_181A53008(v4, v3);
    goto LABEL_11;
  }

  v8 = v11 + *(*v11 + 128);
  result = swift_beginAccess();
  if (*(v8 + 40) != 2)
  {
    v7 = (*(v8 + 40) >> 46) & 1;
    sub_181A53008(v4, v3);

    sub_181F48214(__dst);
    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1821F62C4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v13);
    ProtocolStack.transport.getter(&v9);
    v3 = v10;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v4 = v9;
      if (v10 >> 61 == 1)
      {
        v5 = v9 + *(*v9 + 128);
        result = swift_beginAccess();
        if (*(v5 + 40) != 2)
        {
          v7 = HIDWORD(*(v5 + 40)) & 1;
          sub_181A53008(v4, v3);

          sub_181F48214(__dst);
          return v7;
        }

        __break(1u);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_11:

    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v13);
  ProtocolStack.transport.getter(&v11);
  v3 = v12;
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v11;
  if (v12 >> 61 != 1)
  {
LABEL_10:
    sub_181A53008(v4, v3);
    goto LABEL_11;
  }

  v8 = v11 + *(*v11 + 128);
  result = swift_beginAccess();
  if (*(v8 + 40) != 2)
  {
    v7 = HIDWORD(*(v8 + 40)) & 1;
    sub_181A53008(v4, v3);

    sub_181F48214(__dst);
    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1821F64EC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v13);
    ProtocolStack.transport.getter(&v9);
    v3 = v10;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v4 = v9;
      if (v10 >> 61 == 1)
      {
        v5 = v9 + *(*v9 + 128);
        result = swift_beginAccess();
        if (*(v5 + 40) != 2)
        {
          v7 = (*(v5 + 40) >> 33) & 1;
          sub_181A53008(v4, v3);

          sub_181F48214(__dst);
          return v7;
        }

        __break(1u);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_11:

    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v13);
  ProtocolStack.transport.getter(&v11);
  v3 = v12;
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v11;
  if (v12 >> 61 != 1)
  {
LABEL_10:
    sub_181A53008(v4, v3);
    goto LABEL_11;
  }

  v8 = v11 + *(*v11 + 128);
  result = swift_beginAccess();
  if (*(v8 + 40) != 2)
  {
    v7 = (*(v8 + 40) >> 33) & 1;
    sub_181A53008(v4, v3);

    sub_181F48214(__dst);
    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1821F6730(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v13);
    ProtocolStack.transport.getter(&v9);
    v3 = v10;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v4 = v9;
      if (v10 >> 61 == 1)
      {
        v5 = v9 + *(*v9 + 128);
        result = swift_beginAccess();
        if (*(v5 + 40) != 2)
        {
          v7 = (*(v5 + 40) >> 37) & 1;
          sub_181A53008(v4, v3);

          sub_181F48214(__dst);
          return v7;
        }

        __break(1u);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_11:

    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v13);
  ProtocolStack.transport.getter(&v11);
  v3 = v12;
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v11;
  if (v12 >> 61 != 1)
  {
LABEL_10:
    sub_181A53008(v4, v3);
    goto LABEL_11;
  }

  v8 = v11 + *(*v11 + 128);
  result = swift_beginAccess();
  if (*(v8 + 40) != 2)
  {
    v7 = (*(v8 + 40) >> 37) & 1;
    sub_181A53008(v4, v3);

    sub_181F48214(__dst);
    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1821F6974(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v13);
    ProtocolStack.transport.getter(&v9);
    v3 = v10;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v4 = v9;
      if (v10 >> 61 == 1)
      {
        v5 = v9 + *(*v9 + 128);
        result = swift_beginAccess();
        if (*(v5 + 40) != 2)
        {
          v7 = (*(v5 + 40) >> 38) & 1;
          sub_181A53008(v4, v3);

          sub_181F48214(__dst);
          return v7;
        }

        __break(1u);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_11:

    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v13);
  ProtocolStack.transport.getter(&v11);
  v3 = v12;
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v11;
  if (v12 >> 61 != 1)
  {
LABEL_10:
    sub_181A53008(v4, v3);
    goto LABEL_11;
  }

  v8 = v11 + *(*v11 + 128);
  result = swift_beginAccess();
  if (*(v8 + 40) != 2)
  {
    v7 = (*(v8 + 40) >> 38) & 1;
    sub_181A53008(v4, v3);

    sub_181F48214(__dst);
    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1821F6BB4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v12);
    ProtocolStack.transport.getter(&v8);
    v3 = v9;
    if ((~v9 & 0xF000000000000007) == 0)
    {
LABEL_11:

      sub_181F48214(__dst);
      return 0;
    }

    v4 = v8;
    if (v9 >> 61 != 1)
    {
LABEL_10:
      sub_181A53008(v4, v3);
      goto LABEL_11;
    }

    v5 = v8 + *(*v8 + 128);
    swift_beginAccess();
    if (*(v5 + 40) != 2)
    {
LABEL_9:
      v7 = *(v5 + 16);
      sub_181A53008(v4, v3);

      sub_181F48214(__dst);
      return v7;
    }

    __break(1u);
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v12);
  ProtocolStack.transport.getter(&v10);
  v3 = v11;
  if ((~v11 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v10;
  if (v11 >> 61 != 1)
  {
    goto LABEL_10;
  }

  v5 = v10 + *(*v10 + 128);
  result = swift_beginAccess();
  if (*(v5 + 40) != 2)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821F6DC4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v12);
    ProtocolStack.transport.getter(&v8);
    v3 = v9;
    if ((~v9 & 0xF000000000000007) == 0)
    {
LABEL_11:

      sub_181F48214(__dst);
      return 0;
    }

    v4 = v8;
    if (v9 >> 61 != 1)
    {
LABEL_10:
      sub_181A53008(v4, v3);
      goto LABEL_11;
    }

    v5 = v8 + *(*v8 + 128);
    swift_beginAccess();
    if (*(v5 + 40) != 2)
    {
LABEL_9:
      v7 = *(v5 + 20);
      sub_181A53008(v4, v3);

      sub_181F48214(__dst);
      return v7;
    }

    __break(1u);
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v12);
  ProtocolStack.transport.getter(&v10);
  v3 = v11;
  if ((~v11 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v10;
  if (v11 >> 61 != 1)
  {
    goto LABEL_10;
  }

  v5 = v10 + *(*v10 + 128);
  result = swift_beginAccess();
  if (*(v5 + 40) != 2)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821F6FD8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));

    sub_181F481DC(__dst, v13);
    ProtocolStack.transport.getter(&v9);
    v3 = v10;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v4 = v9;
      if (v10 >> 61 == 1)
      {
        v5 = v9 + *(*v9 + 128);
        result = swift_beginAccess();
        if (*(v5 + 40) != 2)
        {
          v7 = (*(v5 + 40) >> 41) & 1;
          sub_181A53008(v4, v3);

          sub_181F48214(__dst);
          return v7;
        }

        __break(1u);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_11:

    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

  sub_181F481DC(__dst, v13);
  ProtocolStack.transport.getter(&v11);
  v3 = v12;
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v4 = v11;
  if (v12 >> 61 != 1)
  {
LABEL_10:
    sub_181A53008(v4, v3);
    goto LABEL_11;
  }

  v8 = v11 + *(*v11 + 128);
  result = swift_beginAccess();
  if (*(v8 + 40) != 2)
  {
    v7 = (*(v8 + 40) >> 41) & 1;
    sub_181A53008(v4, v3);

    sub_181F48214(__dst);
    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1821F7260(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));

  sub_181F481DC(__dst, v5);
  v3 = os_variant_allows_internal_security_policies();

  sub_181F48214(__dst);
  if (v3)
  {
    return (__dst[30] >> 25) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1821F731C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if (v1 < 0)
  {
    v2 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v3 = *(v2 + 160);
    v7[0] = *(v2 + 144);
    __dst[0] = v3;
    v9 = *(v2 + 160);

    if (SystemUUID.isUUIDNULL.getter())
    {
      goto LABEL_5;
    }

    v8 = v7[0];
    v9 = __dst[0];
    v5 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v9, &v8);
LABEL_8:

    return !v5;
  }

  swift_beginAccess();
  memcpy(__dst, (v1 + 16), 0x188uLL);
  v8 = *(v1 + 160);

  sub_181F481DC(__dst, v7);
  if (!SystemUUID.isUUIDNULL.getter())
  {
    v7[0] = __dst[9];
    v8 = __dst[8];
    v5 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(v7, &v8);
    sub_181F48214(__dst);
    goto LABEL_8;
  }

  sub_181F48214(__dst);
LABEL_5:

  return 0;
}

void sub_1821F7444(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v3 = *(v1 + 240);
    if (!v3)
    {
      goto LABEL_12;
    }

    v4 = *(v3 + 16);
    if (!v4)
    {
      goto LABEL_12;
    }

    v1 = *(v4 + 16);

    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (!HIDWORD(v1))
    {
      return;
    }

    __break(1u);
  }

  v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = *(v6 + 16);

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (!HIDWORD(v7))
  {
    return;
  }

  __break(1u);
LABEL_12:
}

uint64_t sub_1821F74FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 360);
  if (v4 && (v5 = *(v4 + 24)) != 0)
  {
    v10 = *(v4 + 24);
    swift_unknownObjectRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    v5 = *sub_182AD2388();
    v10 = v5;
  }

  v7 = *(v5 + 24);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v5 + 16) < v8 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181CA4444(isUniquelyReferenced_nonNull_native, v8);
      v5 = v10;
    }

    sub_181AB467C((v5 + 16), v5 + 40, a2);
    if (!v4)
    {
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v4 = swift_allocObject();
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *(a1 + 360) = v4;
    }

    *(v4 + 24) = v5;
    swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_1821F7618()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  v2 = *(__dst[35] + 16);

  sub_181F481DC(__dst, v6);
  if (nw_context_has_proxies(v2))
  {
    sub_181F48214(__dst);

    return 1;
  }

  else
  {
    memcpy(v6, __dst, sizeof(v6));
    v4 = sub_181B5BA58();
    if (v4)
    {
      v5 = *(v4 + 24);
      sub_181F48214(__dst);

      return v5 != 0;
    }

    else
    {

      sub_181F48214(__dst);
      return 0;
    }
  }
}

uint64_t sub_1821F774C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_181AA847C(a2);
    v5 = v4;
    v6 = *(a1 + 288);
    if (v6)
    {
      v7 = *(v6 + 48);
    }

    else
    {
      type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_182AE3CC0;
      *(v6 + 32) = xmmword_182AE3CC0;
      v7 = 1;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 1;
      *(a1 + 288) = v6;
    }

    *(v6 + 48) = v3;
    *(v6 + 56) = v5;
    swift_unknownObjectRetain();
    sub_181B03DAC(v7);
    if (*(a1 + 16))
    {
      v10 = 0;
    }

    else
    {
      v11 = *(a1 + 320);
      v13 = *a1;
      v12 = *(a1 + 8);
      result = sub_182AD2388();
      v15 = *result;
      v20 = *result;
      v16 = *(*result + 24);
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (*(v15 + 16) < v17 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v17);
        v15 = v20;
      }

      sub_181B855B4((v15 + 16), v15 + 40, v13, v12);
      if (v11)
      {

        sub_181F5FE60(v19);
      }

      v10 = v20;
    }

    sub_182270CAC(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(a1 + 288);
    if (v8)
    {
      v9 = *(v8 + 48);
    }

    else
    {
      type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_182AE3CC0;
      *(v8 + 32) = xmmword_182AE3CC0;
      v9 = 1;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = 1;
      *(a1 + 288) = v8;
    }

    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    sub_181B03DAC(v9);
    return sub_182270CAC(0);
  }
}

uint64_t sub_1821F7930(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  if (__dst[36] && (v3 = *(__dst[36] + 48), v3 >= 2))
  {
    v5 = *(__dst[36] + 56);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 336);

    sub_181F481DC(__dst, v9);
    sub_181AB78DC(v3);
    v8 = v7(ObjectType, v5);
    sub_181B03DAC(v3);

    sub_181F48214(__dst);
    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1821F7A44(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  if (!__dst[45])
  {
    goto LABEL_9;
  }

  if (*(__dst[45] + 40))
  {

    return 1;
  }

  v4 = *(__dst[45] + 32);
  if (v4)
  {

    sub_181F481DC(__dst, v6);
    v5 = nw_proxy_config_use_fast_fallback(v4);

    sub_181F48214(__dst);
    return v5;
  }

  else
  {
LABEL_9:

    return 0;
  }
}

uint64_t sub_1821F7B78()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v2 = *(v1 + 140);

    if (os_variant_allows_internal_security_policies())
    {
      v3 = (v2 & 0x400000) != 0 || networkd_settings_get_BOOL(nw_setting_tcpconn_disable_tls_experiment_sampling);
    }

    else
    {
      v3 = 0;
    }

    swift_endAccess();
LABEL_12:

    return v3;
  }

  v4 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x8C);

  if (os_variant_allows_internal_security_policies())
  {
    if ((v4 & 0x400000) != 0)
    {

      return 1;
    }

    v3 = networkd_settings_get_BOOL(nw_setting_tcpconn_disable_tls_experiment_sampling);
    goto LABEL_12;
  }

  return 0;
}

BOOL sub_1821F7C78()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if (v1 < 0)
  {
    v2 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x128);
  }

  else
  {
    swift_beginAccess();
    v2 = *(v1 + 296);
  }

  return nw_context_get_privacy_level(*(v2 + 16)) == 4;
}

uint64_t _nw_parameters_set_initial_data_payload(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  if (a2)
  {
    sub_182AD2818();
    v7 = sub_182AD2868();
    v8 = (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v9 = sub_182AD2868();
    v8 = (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  MEMORY[0x1EEE9AC00](v8);
  *(&v11 - 2) = v6;
  sub_18220C4F4(a1, sub_18220D8D8);
  return sub_181F49A88(v6, &unk_1EA8394B0);
}

uint64_t sub_1821F7E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD2868();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_181AB5D28(a2, &v21 - v15, &unk_1EA8394B0);
  sub_181AB5D28(v16, v13, &unk_1EA8394B0);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_181F49A88(v16, &unk_1EA8394B0);
    v17 = 0;
    v18 = 0xF000000000000000;
    v16 = v13;
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v7, v10, v4);
    v17 = sub_181F76674(v7);
    v18 = v19;
    (*(v5 + 8))(v10, v4);
  }

  sub_181F49A88(v16, &unk_1EA8394B0);
  result = sub_181D9D680(*(a1 + 328), *(a1 + 336));
  *(a1 + 328) = v17;
  *(a1 + 336) = v18;
  return result;
}

void sub_1821F80CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_182AD2868();
  MEMORY[0x1EEE9AC00](v4);
  v5 = 0;
  v6 = *(a1 + 336);
  if (v6 >> 60 != 15)
  {
    v7 = *(a1 + 328);
    v8 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v8 != 2)
      {
        v11 = 0;
        goto LABEL_16;
      }

      v9 = *(v7 + 16);
      v10 = *(v7 + 24);

      if (sub_182AD1D58() && __OFSUB__(v9, sub_182AD1D88()))
      {
        goto LABEL_19;
      }

      if (!__OFSUB__(v10, v9))
      {
LABEL_14:
        sub_182AD1D78();
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v11 = *(a1 + 328);
LABEL_16:
      sub_182AD2828();
      sub_181D9D680(v7, v6);
      sub_18220D8E0();
      swift_dynamicCast();
      v5 = v11;
      goto LABEL_17;
    }

    if (v7 >> 32 >= v7)
    {

      if (!sub_182AD1D58() || !__OFSUB__(v7, sub_182AD1D88()))
      {
        goto LABEL_14;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_17:
  *a2 = v5;
}