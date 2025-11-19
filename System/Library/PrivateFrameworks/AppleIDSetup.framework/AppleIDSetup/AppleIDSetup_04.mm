void sub_2405D7B20()
{
  if (!qword_27E4B7700[0])
  {
    v0 = sub_240759924();
    if (!v1)
    {
      atomic_store(v0, qword_27E4B7700);
    }
  }
}

uint64_t sub_2405D7B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2405D7BF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_2405D7D58(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_2405D7F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2405D7FE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_2405D8160(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t dispatch thunk of _Coordinated.Coerced.wrappedValue.getter(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return v8(a1);
}

uint64_t dispatch thunk of _Coordinated.Coerced.submit(_:)(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4D8;

  return v8(a1);
}

uint64_t dispatch thunk of _Coordinated.Coerced.updateWithoutCoordination(to:)(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return v8(a1);
}

uint64_t dispatch thunk of _Coordinated.Coerced.updatingWithoutCoordination(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 224);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of _Coordinated.Coerced.updateWithCoordination<A>(to:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 232);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2405DA4B0;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of _Coordinated.Coerced.updatingWithCoordination<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 240);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2405DA4B0;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of _Coordinated.Coerced.tapping(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 248);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 264);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of _AnyCoordinated.wrappedValue.getter(uint64_t a1)
{
  v4 = *(*v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return v8(a1);
}

uint64_t dispatch thunk of _AnyCoordinated.submit(_:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4D8;

  return v8(a1);
}

uint64_t dispatch thunk of _AnyCoordinated.updateWithoutCoordination(to:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return v8(a1);
}

uint64_t dispatch thunk of _AnyCoordinated.updatingWithoutCoordination(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of _AnyCoordinated.updateWithCoordination<A>(to:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 152);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2405DA4B0;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of _AnyCoordinated.updatingWithCoordination<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 160);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2405DA4B0;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of _AnyCoordinated.tapping(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 176);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

uint64_t sub_2405D9C40(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2405DA4B0;

  return sub_2405D3550(a1, a2, v9, v10, v6);
}

uint64_t sub_2405D9D14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2405DA4B0;

  return sub_2405D2BA8(a1, a2, v9, v10, v6);
}

uint64_t sub_2405D9DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_2405D264C(a1, a2, *(v2 + 40), *(v2 + 48), *(v2 + 16));
}

uint64_t sub_2405D9DF8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_2405D1CB0(a1, *(v1 + 48), *(v1 + 56), *(v1 + 16));
}

uint64_t sub_2405D9E08(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405D1EA8(a1, a2, v11, v10, v6);
}

uint64_t sub_2405D9EE4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405D116C(a1, a2, v11, v10, v6);
}

uint64_t sub_2405D9FC0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_2405D076C(a1, *(v1 + 40), *(v1 + 48), *(v1 + 16));
}

uint64_t sub_2405D9FD0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_2405D9FF8(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

uint64_t sub_2405DA024(uint64_t a1)
{
  v4 = *(sub_2407597B4() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2405C791C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2405DA11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A88, &qword_240763428);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2405DA19C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405CE5D8;

  return sub_2405C3FF8(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_2405DA260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_2405C5420(a1, v4, v5, v6);
}

uint64_t sub_2405DA314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2405C1D50(a1, v4, v5, v7, v8, v6);
}

uint64_t sub_2405DA3DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2405DA4B0;

  return sub_2405C1B48(a1, a2, v7);
}

uint64_t sub_2405DA504(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IdMSAccount();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - v11;
  MEMORY[0x245CC6BE0](*v1);
  v13 = *(v1 + 8);
  sub_24075AE94();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v15 = v1 + *(v14 + 32);
  sub_2405E1930(v15, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    sub_2405E1A54(v12, v8, type metadata accessor for IdMSAccount);
    sub_24075AE94();
    IdMSAccount.hash(into:)(a1);
    sub_2405E19A0(v8, type metadata accessor for IdMSAccount);
  }

  v16 = type metadata accessor for AgeMigrationModel(0);
  v17 = v15 + v16[5];
  v18 = *(v17 + 16);
  v19 = *v17;
  v21 = *(v17 + 24);
  v17 += 24;
  v20 = v21;
  LOWORD(v21) = *(v17 + 4);
  LOBYTE(v17) = *(v17 + 6);
  v24[0] = v19;
  *&v24[1] = v18;
  BYTE14(v24[1]) = v17;
  WORD6(v24[1]) = v21;
  DWORD2(v24[1]) = v20;
  RemoteRole.hash(into:)();
  memcpy(v24, (v15 + v16[6]), 0x131uLL);
  DiscoveryModel.hash(into:)(a1);
  v22 = v15 + v16[7];
  AgeMigrationModel.State.hash(into:)();
  *&v24[0] = *(v2 + *(v14 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  sub_2405E6D2C();
  return sub_24075A004();
}

uint64_t sub_2405DA794(__int128 *a1)
{
  v2 = v1;
  MEMORY[0x245CC6BE0](*v1);
  v4 = *(v1 + 8);
  sub_24075AE94();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v6 = (v1 + *(v5 + 32));
  v7 = *v6;
  v8 = v6[1];
  sub_24075A114();
  v9 = type metadata accessor for RepairModel();
  v10 = v6 + *(v9 + 20);
  v11.n128_f64[0] = SetupModel.hash(into:)(a1);
  v12 = v6 + *(v9 + 24);
  v13 = v12[40];
  if (v13 <= 0xFC)
  {
    if (v13 == 251)
    {
      v14 = 5;
      goto LABEL_12;
    }

    if (v13 == 252)
    {
      v14 = 3;
      goto LABEL_12;
    }

LABEL_14:
    v16 = *(v12 + 4);
    v17 = *(v12 + 1);
    v18 = *v12;
    MEMORY[0x245CC6BA0](4);
    RepairError.hash(into:)(a1);
    goto LABEL_13;
  }

  if (v13 == 253)
  {
    v14 = 2;
    goto LABEL_12;
  }

  if (v13 == 254)
  {
    v14 = 1;
    goto LABEL_12;
  }

  if (v13 != 255)
  {
    goto LABEL_14;
  }

  v14 = 0;
LABEL_12:
  MEMORY[0x245CC6BA0](v14, v11);
LABEL_13:
  v19 = *(v2 + *(v5 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  sub_2405E6D2C();
  return sub_24075A004();
}

uint64_t sub_2405DA908(__int128 *a1)
{
  v3 = type metadata accessor for IdMSAccount();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v21 - v10;
  MEMORY[0x245CC6BE0](*v1);
  MEMORY[0x245CC6BE0](v1[1]);
  v12 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0) + 32);
  sub_2405E1930(v12, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    sub_2405E1A54(v11, v7, type metadata accessor for IdMSAccount);
    sub_24075AE94();
    IdMSAccount.hash(into:)(a1);
    sub_2405E19A0(v7, type metadata accessor for IdMSAccount);
  }

  v13 = type metadata accessor for AgeMigrationModel(0);
  v14 = v12 + v13[5];
  v15 = *(v14 + 16);
  v16 = *v14;
  v18 = *(v14 + 24);
  v14 += 24;
  v17 = v18;
  LOWORD(v18) = *(v14 + 4);
  LOBYTE(v14) = *(v14 + 6);
  v21[0] = v16;
  *&v21[1] = v15;
  BYTE14(v21[1]) = v14;
  WORD6(v21[1]) = v18;
  DWORD2(v21[1]) = v17;
  RemoteRole.hash(into:)();
  memcpy(v21, (v12 + v13[6]), 0x131uLL);
  DiscoveryModel.hash(into:)(a1);
  v19 = v12 + v13[7];
  return AgeMigrationModel.State.hash(into:)();
}

unint64_t MachAgeMigrationMessage.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AgeMigrationModel(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MachAgeMigrationMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2405DAF80(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_2405E19A0(v9, type metadata accessor for MachAgeMigrationMessage);
        v12 = 0xEF74736575716552;
        v13 = 0x6574746573696E61;
      }

      else
      {
        sub_2405E1A54(v9, v5, type metadata accessor for AgeMigrationModel);
        *&v29 = 0x286574617267696DLL;
        *(&v29 + 1) = 0xE800000000000000;
        v11 = AgeMigrationModel.description.getter();
        MEMORY[0x245CC5E60](v11);

        MEMORY[0x245CC5E60](41, 0xE100000000000000);
        v12 = *(&v29 + 1);
        v13 = v29;
        sub_2405E19A0(v5, type metadata accessor for AgeMigrationModel);
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v12 = 0x80000002407865D0;
      sub_2405E19A0(v9, type metadata accessor for MachAgeMigrationMessage);
      v13 = 0xD000000000000010;
      goto LABEL_17;
    }

    v22 = *(v9 + 1);
    v29 = *v9;
    v30 = v22;
    v31 = *(v9 + 4);
    v27 = 0x2874726F706572;
    v28 = 0xE700000000000000;
    v23 = AgeMigrationReport.description.getter();
    v25 = v24;
    sub_2405DB080(&v29);
    MEMORY[0x245CC5E60](v23, v25);

LABEL_15:
    v13 = v27;
    v12 = v28;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v12 = 0xE700000000000000;
      v13 = 0x74706965636572;
      goto LABEL_17;
    }

    v14 = *v9;
    v15 = *(v9 + 1);
    v16 = *(v9 + 2);
    v17 = *(v9 + 3);
    v18 = *(v9 + 4);
    v27 = 0x286572756C696166;
    v28 = 0xE800000000000000;
    *&v29 = v14;
    *(&v29 + 1) = v15;
    *&v30 = v16;
    *(&v30 + 1) = v17;
    v31 = v18;
    sub_2405DAFE4();
    v19 = sub_24075AE04();
    v21 = v20;
    sub_2405DB038(v14, v15);
    MEMORY[0x245CC5E60](v19, v21);

    MEMORY[0x245CC5E60](41, 0xE100000000000000);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v12 = 0x80000002407865B0;
    sub_2405E19A0(v9, type metadata accessor for MachAgeMigrationMessage);
    v13 = 0xD000000000000016;
  }

  else
  {
    v12 = 0x8000000240786590;
    sub_2405E19A0(v9, type metadata accessor for MachAgeMigrationMessage);
    v13 = 0xD000000000000018;
  }

LABEL_17:
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_24075A864();

  v27 = 0xD000000000000018;
  v28 = 0x8000000240786570;
  MEMORY[0x245CC5E60](v13, v12);

  return v27;
}

uint64_t type metadata accessor for MachAgeMigrationMessage()
{
  result = qword_27E4B7DA0;
  if (!qword_27E4B7DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2405DAF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MachAgeMigrationMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2405DAFE4()
{
  result = qword_27E4B7AB0;
  if (!qword_27E4B7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7AB0);
  }

  return result;
}

uint64_t sub_2405DB038(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x14)
  {
  }

  return result;
}

uint64_t sub_2405DB0E0(uint64_t a1)
{
  v2 = sub_2405E1770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB11C(uint64_t a1)
{
  v2 = sub_2405E1770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB158(uint64_t a1)
{
  v2 = sub_2405E171C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB194(uint64_t a1)
{
  v2 = sub_2405E171C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2405DB1D0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x74706965636572;
    if (v1 != 6)
    {
      v5 = 0x6572756C696166;
    }

    v6 = 0xD000000000000018;
    if (v1 == 4)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6574617267696DLL;
    v3 = 0xD000000000000010;
    if (v1 != 2)
    {
      v3 = 0x74726F706572;
    }

    if (*v0)
    {
      v2 = 0x6574746573696E61;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_2405DB2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405E2338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405DB308(uint64_t a1)
{
  v2 = sub_2405E1368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB344(uint64_t a1)
{
  v2 = sub_2405E1368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB380(uint64_t a1)
{
  v2 = sub_2405E14B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB3BC(uint64_t a1)
{
  v2 = sub_2405E14B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB3F8(uint64_t a1)
{
  v2 = sub_2405E1574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB434(uint64_t a1)
{
  v2 = sub_2405E1574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB470(uint64_t a1)
{
  v2 = sub_2405E13BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB4AC(uint64_t a1)
{
  v2 = sub_2405E13BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB4E8(uint64_t a1)
{
  v2 = sub_2405E18AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB524(uint64_t a1)
{
  v2 = sub_2405E18AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB560(uint64_t a1)
{
  v2 = sub_2405E1464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB59C(uint64_t a1)
{
  v2 = sub_2405E1464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DB5D8(uint64_t a1)
{
  v2 = sub_2405E1664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DB614(uint64_t a1)
{
  v2 = sub_2405E1664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MachAgeMigrationMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AB8, &qword_240763490);
  v115 = *(v2 - 8);
  v116 = v2;
  v3 = *(v115 + 64);
  MEMORY[0x28223BE20](v2);
  v114 = &v87 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AC0, &qword_240763498);
  v108 = *(v110 - 8);
  v5 = *(v108 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AC8, &unk_2407634A0);
  v112 = *(v7 - 8);
  v113 = v7;
  v8 = *(v112 + 64);
  MEMORY[0x28223BE20](v7);
  v111 = &v87 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v10 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v109 = &v87 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD8, &qword_2407634B0);
  v104 = *(v106 - 8);
  v12 = *(v104 + 64);
  MEMORY[0x28223BE20](v106);
  v103 = &v87 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v14 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v87 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE8, &qword_2407634C0);
  v99 = *(v100 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v87 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AF0, &qword_2407634C8);
  v96 = *(v97 - 8);
  v18 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v87 - v19;
  v93 = type metadata accessor for AnisetteCommand.Response();
  v20 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AF8, &qword_2407634D0);
  v91 = *(v92 - 8);
  v22 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v87 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7B00, &qword_2407634D8);
  v88 = *(v89 - 8);
  v24 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v26 = &v87 - v25;
  v27 = type metadata accessor for AgeMigrationModel(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MachAgeMigrationMessage();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7B08, &unk_2407634E0);
  v36 = *(v35 - 8);
  v119 = v35;
  v120 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v87 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405E1368();
  v118 = v39;
  sub_24075AF74();
  sub_2405DAF80(v117, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v65 = *(v34 + 1);
        v117 = *v34;
        v66 = v117;
        v67 = *(v34 + 2);
        v68 = *(v34 + 3);
        v69 = v34[32];
        LOBYTE(v121) = 1;
        sub_2405E1770();
        v70 = v90;
        v72 = v118;
        v71 = v119;
        sub_24075AB54();
        v121 = v66;
        v122 = v65;
        v123 = v67;
        v124 = v68;
        LOBYTE(v125) = v69;
        sub_2405E17C4();
        v73 = v92;
        sub_24075ABE4();
        (*(v91 + 8))(v70, v73);
        (*(v120 + 8))(v72, v71);
        return sub_2405E1818(v117, v65, v67, v68, v69);
      }

      else
      {
        sub_2405E1A54(v34, v30, type metadata accessor for AgeMigrationModel);
        LOBYTE(v121) = 0;
        sub_2405E18AC();
        v43 = v118;
        v42 = v119;
        sub_24075AB54();
        sub_2405E4C80(&qword_27E4B7B40, type metadata accessor for AgeMigrationModel);
        v44 = v89;
        sub_24075ABE4();
        (*(v88 + 8))(v26, v44);
        sub_2405E19A0(v30, type metadata accessor for AgeMigrationModel);
        return (*(v120 + 8))(v43, v42);
      }
    }

    if (EnumCaseMultiPayload != 2)
    {
      v77 = *v34;
      v76 = *(v34 + 1);
      v78 = *(v34 + 2);
      v79 = *(v34 + 3);
      v80 = *(v34 + 4);
      LOBYTE(v121) = 3;
      sub_2405E1664();
      v81 = v98;
      v83 = v118;
      v82 = v119;
      sub_24075AB54();
      v117 = v77;
      v121 = v77;
      v122 = v76;
      v123 = v78;
      v124 = v79;
      v125 = v80;
      sub_2405E16B8();
      v84 = v100;
      sub_24075ABE4();
      (*(v99 + 8))(v81, v84);
      (*(v120 + 8))(v83, v82);
      return sub_2405E170C(v117, v76);
    }

    v53 = v94;
    sub_2405E1A54(v34, v94, type metadata accessor for AnisetteCommand.Response);
    LOBYTE(v121) = 2;
    sub_2405E171C();
    v54 = v95;
    v49 = v118;
    v46 = v119;
    sub_24075AB54();
    sub_2405E4C80(&qword_27E4B7B70, type metadata accessor for AnisetteCommand.Response);
    v55 = v97;
    sub_24075ABE4();
    (*(v96 + 8))(v54, v55);
    sub_2405E19A0(v53, type metadata accessor for AnisetteCommand.Response);
    return (*(v120 + 8))(v49, v46);
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v46 = v119;
    if (EnumCaseMultiPayload == 4)
    {
      v47 = v102;
      sub_2405E150C(v34, v102, &qword_27E4B7AE0, &qword_2407634B8);
      LOBYTE(v121) = 4;
      sub_2405E1574();
      v48 = v103;
      v49 = v118;
      sub_24075AB54();
      sub_2405E15C8(&qword_27E4B7B50, &qword_27E4B7B40);
      v50 = v106;
      sub_24075ABE4();
      (*(v104 + 8))(v48, v50);
      v51 = &qword_27E4B7AE0;
      v52 = &qword_2407634B8;
    }

    else
    {
      v47 = v109;
      sub_2405E150C(v34, v109, &qword_27E4B7AD0, &unk_24076CCE0);
      LOBYTE(v121) = 5;
      sub_2405E14B8();
      v74 = v111;
      v49 = v118;
      sub_24075AB54();
      sub_2405E1ABC(&qword_27E4B7B38, &qword_27E4B7B40);
      v75 = v113;
      sub_24075ABE4();
      (*(v112 + 8))(v74, v75);
      v51 = &qword_27E4B7AD0;
      v52 = &unk_24076CCE0;
    }

    sub_2405B8A50(v47, v51, v52);
    return (*(v120 + 8))(v49, v46);
  }

  v56 = v119;
  if (EnumCaseMultiPayload == 6)
  {
    v58 = *v34;
    v57 = *(v34 + 1);
    v59 = *(v34 + 2);
    v60 = *(v34 + 3);
    v61 = *(v34 + 4);
    LOBYTE(v121) = 7;
    sub_2405E13BC();
    v62 = v114;
    v63 = v118;
    sub_24075AB54();
    v117 = v58;
    v121 = v58;
    v122 = v57;
    v123 = v59;
    v124 = v60;
    v125 = v61;
    sub_2405E1410();
    v64 = v116;
    sub_24075ABE4();
    (*(v115 + 8))(v62, v64);
    (*(v120 + 8))(v63, v56);
    return sub_2405DB038(v117, v57);
  }

  else
  {
    LOBYTE(v121) = 6;
    sub_2405E1464();
    v85 = v107;
    v86 = v118;
    sub_24075AB54();
    (*(v108 + 8))(v85, v110);
    return (*(v120 + 8))(v86, v56);
  }
}

uint64_t MachAgeMigrationMessage.hash(into:)(__int128 *a1)
{
  v60 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v57 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v57 - v7;
  v9 = type metadata accessor for AnisetteCommand.Response();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IdMSAccount();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v57 - v19;
  v58 = type metadata accessor for AgeMigrationModel(0);
  v21 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MachAgeMigrationMessage();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2405DAF80(v59, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2405E1A54(v27, v12, type metadata accessor for AnisetteCommand.Response);
        v34 = v60;
        MEMORY[0x245CC6BA0](2);
        AnisetteCommand.Response.hash(into:)(v34);
        return sub_2405E19A0(v12, type metadata accessor for AnisetteCommand.Response);
      }

      v44 = *v27;
      v45 = v27[1];
      v46 = v27[2];
      v47 = v27[3];
      v48 = v27[4];
      MEMORY[0x245CC6BA0](3);
      if (v45 != 20)
      {
        *&v61[0] = v44;
        *(&v61[0] + 1) = v45;
        *&v61[1] = v46;
        *(&v61[1] + 1) = v47;
        *&v61[2] = v48;
        MEMORY[0x245CC6BA0](1);
        _AgeMigrationError.hash(into:)();
        return sub_2405E170C(v44, v45);
      }

      v49 = 0;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_2405E1A54(v27, v23, type metadata accessor for AgeMigrationModel);
        v29 = v60;
        MEMORY[0x245CC6BA0](0);
        sub_2405E1930(v23, v20);
        if ((*(v57 + 48))(v20, 1, v13) == 1)
        {
          sub_24075AE94();
        }

        else
        {
          sub_2405E1A54(v20, v16, type metadata accessor for IdMSAccount);
          sub_24075AE94();
          IdMSAccount.hash(into:)(v29);
          sub_2405E19A0(v16, type metadata accessor for IdMSAccount);
        }

        v50 = v58;
        v51 = &v23[*(v58 + 20)];
        v52 = *(v51 + 2);
        v53 = *v51;
        v55 = *(v51 + 6);
        v51 += 24;
        v54 = v55;
        LOWORD(v55) = *(v51 + 2);
        LOBYTE(v51) = v51[6];
        v61[0] = v53;
        *&v61[1] = v52;
        BYTE14(v61[1]) = v51;
        WORD6(v61[1]) = v55;
        DWORD2(v61[1]) = v54;
        RemoteRole.hash(into:)();
        memcpy(v61, &v23[*(v50 + 24)], 0x131uLL);
        DiscoveryModel.hash(into:)(v29);
        v56 = &v23[*(v50 + 28)];
        AgeMigrationModel.State.hash(into:)();
        return sub_2405E19A0(v23, type metadata accessor for AgeMigrationModel);
      }

      v37 = *v27;
      v38 = v27[1];
      v40 = v27[2];
      v39 = v27[3];
      v41 = *(v27 + 32);
      MEMORY[0x245CC6BA0](1);
      if (v41)
      {
        v42 = 4;
      }

      else
      {
        v42 = 0;
      }

      v43 = (v39 >> 60) & 3 | v42;
      if (v43 <= 1)
      {
        if (v43)
        {
          MEMORY[0x245CC6BA0](3);
          return sub_24075AE94();
        }

        MEMORY[0x245CC6BA0](1);
        goto LABEL_31;
      }

      if (v43 == 2)
      {
        MEMORY[0x245CC6BA0](4);
        sub_24075A114();
        return sub_2405E1818(v37, v38, v40, v39, v41);
      }

      if (v43 == 3)
      {
        MEMORY[0x245CC6BA0](5);
        sub_24075A114();
LABEL_31:
        sub_2407596D4();
        return sub_2405E1818(v37, v38, v40, v39, v41);
      }

      if (v40 | v38 | v37 | v39)
      {
        v49 = 2;
      }

      else
      {
        v49 = 0;
      }
    }

    return MEMORY[0x245CC6BA0](v49);
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v36 = *(v27 + 1);
      v61[0] = *v27;
      v61[1] = v36;
      *&v61[2] = v27[4];
      MEMORY[0x245CC6BA0](7);
      _AgeMigrationError.hash(into:)();
      return sub_2405E1900(v61);
    }

    v49 = 6;
    return MEMORY[0x245CC6BA0](v49);
  }

  v30 = v60;
  if (EnumCaseMultiPayload == 4)
  {
    v31 = &qword_27E4B7AE0;
    v32 = &qword_2407634B8;
    sub_2405E150C(v27, v8, &qword_27E4B7AE0, &qword_2407634B8);
    MEMORY[0x245CC6BA0](4);
    sub_2405DA504(v30);
    v33 = v8;
  }

  else
  {
    v31 = &qword_27E4B7AD0;
    v32 = &unk_24076CCE0;
    sub_2405E150C(v27, v4, &qword_27E4B7AD0, &unk_24076CCE0);
    MEMORY[0x245CC6BA0](5);
    sub_2405DA908(v30);
    v33 = v4;
  }

  return sub_2405B8A50(v33, v31, v32);
}

uint64_t MachAgeMigrationMessage.hashValue.getter()
{
  sub_24075AE64();
  MachAgeMigrationMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t MachAgeMigrationMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7B90, &qword_2407634F0);
  v123 = *(v122 - 8);
  v3 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  v133 = &v100 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7B98, &qword_2407634F8);
  v117 = *(v119 - 8);
  v5 = *(v117 + 64);
  MEMORY[0x28223BE20](v119);
  v127 = &v100 - v6;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BA0, &qword_240763500);
  v120 = *(v121 - 8);
  v7 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v132 = &v100 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BA8, &qword_240763508);
  v116 = *(v118 - 8);
  v9 = *(v116 + 64);
  MEMORY[0x28223BE20](v118);
  v126 = &v100 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BB0, &qword_240763510);
  v115 = *(v110 - 8);
  v11 = *(v115 + 64);
  MEMORY[0x28223BE20](v110);
  v125 = &v100 - v12;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BB8, &qword_240763518);
  v113 = *(v114 - 8);
  v13 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v131 = &v100 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BC0, &qword_240763520);
  v111 = *(v112 - 8);
  v15 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v130 = &v100 - v16;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BC8, &qword_240763528);
  v108 = *(v109 - 8);
  v17 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v124 = &v100 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7BD0, &unk_240763530);
  v134 = *(v129 - 8);
  v19 = *(v134 + 64);
  MEMORY[0x28223BE20](v129);
  v21 = &v100 - v20;
  v128 = type metadata accessor for MachAgeMigrationMessage();
  v22 = *(*(v128 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v128);
  v105 = (&v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v107 = &v100 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v106 = &v100 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v100 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v100 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v100 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v100 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v100 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v145 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_2405E1368();
  v136 = v21;
  v45 = v137;
  sub_24075AF34();
  if (!v45)
  {
    v100 = v37;
    v102 = v40;
    v103 = v34;
    v101 = v31;
    v46 = v130;
    v47 = v131;
    v137 = 0;
    v49 = v132;
    v48 = v133;
    v104 = v42;
    v51 = v135;
    v50 = v136;
    v52 = v129;
    v53 = sub_24075AB34();
    v54 = (2 * *(v53 + 16)) | 1;
    v141 = v53;
    v142 = v53 + 32;
    v143 = 0;
    v144 = v54;
    v55 = sub_2405B8AEC();
    if (v55 == 8 || v143 != v144 >> 1)
    {
      v58 = v50;
      v59 = sub_24075A8C4();
      swift_allocError();
      v61 = v60;
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v61 = v128;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
      swift_willThrow();
      (*(v134 + 8))(v58, v52);
      goto LABEL_10;
    }

    if (v55 <= 3u)
    {
      v56 = v137;
      if (v55 <= 1u)
      {
        if (!v55)
        {
          LOBYTE(v138) = 0;
          sub_2405E18AC();
          v57 = v124;
          sub_24075AA54();
          if (v56)
          {
LABEL_8:
            (*(v134 + 8))(v50, v52);
LABEL_10:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v145);
          }

          type metadata accessor for AgeMigrationModel(0);
          sub_2405E4C80(&qword_27E4B7BE8, type metadata accessor for AgeMigrationModel);
          v86 = v102;
          v87 = v109;
          sub_24075AAF4();
          (*(v108 + 8))(v57, v87);
          (*(v134 + 8))(v50, v52);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v88 = v86;
          goto LABEL_37;
        }

        LOBYTE(v138) = 1;
        sub_2405E1770();
        v79 = v50;
        sub_24075AA54();
        if (v56)
        {
          goto LABEL_8;
        }

        sub_2405E1BAC();
        v89 = v112;
        sub_24075AAF4();
        v90 = v134;
        (*(v111 + 8))(v46, v89);
        (*(v90 + 8))(v79, v52);
        swift_unknownObjectRelease();
        v96 = v140;
        v97 = v139;
        v68 = v100;
        *v100 = v138;
        v68[1] = v97;
        *(v68 + 32) = v96;
LABEL_36:
        swift_storeEnumTagMultiPayload();
        v88 = v68;
LABEL_37:
        v78 = v104;
        sub_2405E1A54(v88, v104, type metadata accessor for MachAgeMigrationMessage);
        goto LABEL_40;
      }

      v64 = v134;
      if (v55 == 2)
      {
        LOBYTE(v138) = 2;
        sub_2405E171C();
        v70 = v47;
        v71 = v50;
        sub_24075AA54();
        if (!v56)
        {
          type metadata accessor for AnisetteCommand.Response();
          sub_2405E4C80(&qword_27E4B7C00, type metadata accessor for AnisetteCommand.Response);
          v72 = v103;
          v73 = v114;
          sub_24075AAF4();
          (*(v113 + 8))(v70, v73);
          (*(v64 + 8))(v136, v52);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v92 = v72;
LABEL_39:
          v78 = v104;
          sub_2405E1A54(v92, v104, type metadata accessor for MachAgeMigrationMessage);
          v51 = v135;
          goto LABEL_40;
        }

        goto LABEL_29;
      }

      LOBYTE(v138) = 3;
      sub_2405E1664();
      v83 = v125;
      v71 = v50;
      sub_24075AA54();
      if (v56)
      {
        goto LABEL_29;
      }

      sub_2405E1B58();
      v84 = v110;
      sub_24075AAF4();
      (*(v115 + 8))(v83, v84);
      (*(v64 + 8))(v50, v52);
      swift_unknownObjectRelease();
      v93 = v140;
      v94 = v139;
      v95 = v101;
      *v101 = v138;
      v95[1] = v94;
      *(v95 + 4) = v93;
LABEL_38:
      swift_storeEnumTagMultiPayload();
      v92 = v95;
      goto LABEL_39;
    }

    if (v55 <= 5u)
    {
      v64 = v134;
      if (v55 == 4)
      {
        LOBYTE(v138) = 4;
        sub_2405E1574();
        v65 = v126;
        v66 = v50;
        v67 = v137;
        sub_24075AA54();
        if (v67)
        {
          (*(v64 + 8))(v50, v52);
          goto LABEL_10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
        sub_2405E15C8(&qword_27E4B7BF0, &qword_27E4B7BE8);
        v68 = v106;
        v69 = v118;
        sub_24075AAF4();
        (*(v116 + 8))(v65, v69);
        (*(v64 + 8))(v66, v52);
        swift_unknownObjectRelease();
        goto LABEL_36;
      }

      LOBYTE(v138) = 5;
      sub_2405E14B8();
      v71 = v50;
      v80 = v137;
      sub_24075AA54();
      if (!v80)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
        sub_2405E1ABC(&qword_27E4B7BE0, &qword_27E4B7BE8);
        v81 = v107;
        v82 = v121;
        sub_24075AAF4();
        (*(v120 + 8))(v49, v82);
        (*(v64 + 8))(v136, v52);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v92 = v81;
        goto LABEL_39;
      }

LABEL_29:
      (*(v64 + 8))(v71, v52);
      goto LABEL_10;
    }

    v74 = v50;
    v75 = v134;
    if (v55 == 6)
    {
      LOBYTE(v138) = 6;
      sub_2405E1464();
      v76 = v127;
      v77 = v137;
      sub_24075AA54();
      if (!v77)
      {
        (*(v117 + 8))(v76, v119);
        (*(v75 + 8))(v74, v52);
        swift_unknownObjectRelease();
        v78 = v104;
        swift_storeEnumTagMultiPayload();
LABEL_40:
        sub_2405E1A54(v78, v51, type metadata accessor for MachAgeMigrationMessage);
        return __swift_destroy_boxed_opaque_existential_1(v145);
      }
    }

    else
    {
      LOBYTE(v138) = 7;
      sub_2405E13BC();
      v85 = v137;
      sub_24075AA54();
      if (!v85)
      {
        sub_2405E1A00();
        v91 = v122;
        sub_24075AAF4();
        (*(v123 + 8))(v48, v91);
        (*(v75 + 8))(v74, v52);
        swift_unknownObjectRelease();
        v98 = v140;
        v99 = v139;
        v95 = v105;
        *v105 = v138;
        v95[1] = v99;
        *(v95 + 4) = v98;
        goto LABEL_38;
      }
    }

    (*(v75 + 8))(v74, v52);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v145);
}

uint64_t sub_2405DDDF0()
{
  sub_24075AE64();
  MachAgeMigrationMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405DDE34()
{
  sub_24075AE64();
  MachAgeMigrationMessage.hash(into:)(v1);
  return sub_24075AED4();
}

void static _AgeMigrationError.genericError(from:)(uint64_t *a1@<X8>)
{
  v2 = sub_2407595C4();
  v3 = [v2 domain];
  v4 = sub_24075A0B4();
  v6 = v5;

  v7 = [v2 code];
  v8 = [v2 localizedDescription];
  v9 = sub_24075A0B4();
  v11 = v10;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
}

void static _AgeMigrationError.genericError(fromNSError:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_24075A0B4();
  v7 = v6;

  v8 = [a1 code];
  v9 = [a1 localizedDescription];
  v10 = sub_24075A0B4();
  v12 = v11;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
}

unint64_t _AgeMigrationError.description.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x6E776F6E6B6E75;
  switch(v0[1])
  {
    case 0:
      break;
    case 1:
      v1 = 0xED000064656C6C65;
      v2 = 0x636E614372657375;
      break;
    case 2:
      v1 = 0xEF6449746E756F63;
      v2 = 0x6341534D64496F6ELL;
      break;
    case 3:
      v4 = "noPrimaryChildAccount";
      goto LABEL_12;
    case 4:
      v1 = 0x8000000240786770;
      v2 = 0xD000000000000019;
      break;
    case 5:
      v1 = 0x8000000240786750;
      v2 = 0xD00000000000001CLL;
      break;
    case 6:
      v3 = "noPendingDateOfBirth";
      goto LABEL_19;
    case 7:
      v1 = 0xEF746E756F636341;
      goto LABEL_21;
    case 8:
      v1 = 0x8000000240786710;
      v2 = 0xD00000000000001ALL;
      break;
    case 9:
      v4 = "connectionInvalidated";
      goto LABEL_12;
    case 0xALL:
      v5 = "noConnectToFamilyToken";
      goto LABEL_23;
    case 0xBLL:
      v1 = 0x80000002407866B0;
      v2 = 0xD000000000000018;
      break;
    case 0xCLL:
      v4 = "noDSIDForFamilyRepair";
LABEL_12:
      v1 = (v4 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000015;
      break;
    case 0xDLL:
      v1 = 0xEE00617461446574;
      v2 = 0x746573696E416F6ELL;
      break;
    case 0xELL:
      v3 = "noChildIdentityToken";
      goto LABEL_19;
    case 0xFLL:
      v1 = 0x8000000240786650;
      v2 = 0xD00000000000001ELL;
      break;
    case 0x10:
      v3 = "noIdMSAccountOnModel";
LABEL_19:
      v1 = (v3 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000014;
      break;
    case 0x11:
      v5 = "noChildAccountUsername";
LABEL_23:
      v1 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000016;
      break;
    case 0x12:
      v1 = 0xEF44495344746C41;
LABEL_21:
      v2 = 0x746E657261506F6ELL;
      break;
    case 0x13:
      v1 = 0xEC00000065746174;
      v2 = 0x5364696C61766E69;
      break;
    default:
      v2 = v0[3];
      v1 = v0[4];

      break;
  }

  sub_24075A864();

  MEMORY[0x245CC5E60](v2, v1);

  return 0xD000000000000013;
}

unint64_t sub_2405DE270(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x636E614372657375;
      break;
    case 2:
      result = 0x6341534D64496F6ELL;
      break;
    case 3:
    case 9:
    case 12:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 18:
      result = 0x746E657261506F6ELL;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 10:
    case 17:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0x746573696E416F6ELL;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD00000000000001ELL;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x5364696C61766E69;
      break;
    case 20:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2405DE4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405E25D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405DE50C(uint64_t a1)
{
  v2 = sub_2405E1C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE548(uint64_t a1)
{
  v2 = sub_2405E1C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE584(uint64_t a1)
{
  v2 = sub_2405E1FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE5C0(uint64_t a1)
{
  v2 = sub_2405E1FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE5FC()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_2405DE650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405E2C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405DE678(uint64_t a1)
{
  v2 = sub_2405E1C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE6B4(uint64_t a1)
{
  v2 = sub_2405E1C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE6F0(uint64_t a1)
{
  v2 = sub_2405E1CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE72C(uint64_t a1)
{
  v2 = sub_2405E1CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE768(uint64_t a1)
{
  v2 = sub_2405E1F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE7A4(uint64_t a1)
{
  v2 = sub_2405E1F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE7E0(uint64_t a1)
{
  v2 = sub_2405E1EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE81C(uint64_t a1)
{
  v2 = sub_2405E1EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE858(uint64_t a1)
{
  v2 = sub_2405E1D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE894(uint64_t a1)
{
  v2 = sub_2405E1D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE8D0(uint64_t a1)
{
  v2 = sub_2405E1E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE90C(uint64_t a1)
{
  v2 = sub_2405E1E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE948(uint64_t a1)
{
  v2 = sub_2405E1F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE984(uint64_t a1)
{
  v2 = sub_2405E1F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DE9C0(uint64_t a1)
{
  v2 = sub_2405E1EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DE9FC(uint64_t a1)
{
  v2 = sub_2405E1EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEA38(uint64_t a1)
{
  v2 = sub_2405E223C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEA74(uint64_t a1)
{
  v2 = sub_2405E223C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEAB0(uint64_t a1)
{
  v2 = sub_2405E1DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEAEC(uint64_t a1)
{
  v2 = sub_2405E1DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEB28(uint64_t a1)
{
  v2 = sub_2405E1DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEB64(uint64_t a1)
{
  v2 = sub_2405E1DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEBA0(uint64_t a1)
{
  v2 = sub_2405E2098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEBDC(uint64_t a1)
{
  v2 = sub_2405E2098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEC18(uint64_t a1)
{
  v2 = sub_2405E1CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEC54(uint64_t a1)
{
  v2 = sub_2405E1CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEC90(uint64_t a1)
{
  v2 = sub_2405E20EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DECCC(uint64_t a1)
{
  v2 = sub_2405E20EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DED08(uint64_t a1)
{
  v2 = sub_2405E2140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DED44(uint64_t a1)
{
  v2 = sub_2405E2140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DED80(uint64_t a1)
{
  v2 = sub_2405E21E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEDBC(uint64_t a1)
{
  v2 = sub_2405E21E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEDF8(uint64_t a1)
{
  v2 = sub_2405E2194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEE34(uint64_t a1)
{
  v2 = sub_2405E2194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEE70(uint64_t a1)
{
  v2 = sub_2405E2044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEEAC(uint64_t a1)
{
  v2 = sub_2405E2044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEEE8(uint64_t a1)
{
  v2 = sub_2405E22E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEF24(uint64_t a1)
{
  v2 = sub_2405E22E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405DEF60(uint64_t a1)
{
  v2 = sub_2405E2290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405DEF9C(uint64_t a1)
{
  v2 = sub_2405E2290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _AgeMigrationError.encode(to:)(void *a1)
{
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C10, &qword_240763540);
  v143 = *(v147 - 8);
  v2 = *(v143 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v90 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C18, &qword_240763548);
  v144 = *(v4 - 8);
  v145 = v4;
  v5 = *(v144 + 64);
  MEMORY[0x28223BE20](v4);
  v142 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C20, &qword_240763550);
  v140 = *(v7 - 8);
  v141 = v7;
  v8 = *(v140 + 64);
  MEMORY[0x28223BE20](v7);
  v139 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C28, &qword_240763558);
  v137 = *(v10 - 8);
  v138 = v10;
  v11 = *(v137 + 64);
  MEMORY[0x28223BE20](v10);
  v136 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C30, &qword_240763560);
  v134 = *(v13 - 8);
  v135 = v13;
  v14 = *(v134 + 64);
  MEMORY[0x28223BE20](v13);
  v133 = &v90 - v15;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C38, &qword_240763568);
  v131 = *(v132 - 8);
  v16 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = &v90 - v17;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C40, &qword_240763570);
  v128 = *(v129 - 8);
  v18 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v127 = &v90 - v19;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C48, &qword_240763578);
  v125 = *(v126 - 8);
  v20 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v90 - v21;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C50, &qword_240763580);
  v122 = *(v123 - 8);
  v22 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v90 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C58, &qword_240763588);
  v119 = *(v120 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v90 - v25;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C60, &qword_240763590);
  v116 = *(v117 - 8);
  v26 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = &v90 - v27;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C68, &qword_240763598);
  v113 = *(v114 - 8);
  v28 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v112 = &v90 - v29;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C70, &qword_2407635A0);
  v110 = *(v111 - 8);
  v30 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v90 - v31;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C78, &qword_2407635A8);
  v107 = *(v108 - 8);
  v32 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v90 - v33;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C80, &qword_2407635B0);
  v104 = *(v105 - 8);
  v34 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v90 - v35;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C88, &qword_2407635B8);
  v101 = *(v102 - 8);
  v36 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v90 - v37;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C90, &qword_2407635C0);
  v98 = *(v99 - 8);
  v38 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v90 - v39;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7C98, &qword_2407635C8);
  v95 = *(v96 - 8);
  v40 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v90 - v41;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7CA0, &qword_2407635D0);
  v92 = *(v93 - 8);
  v42 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v44 = &v90 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7CA8, &qword_2407635D8);
  v91 = *(v45 - 8);
  v46 = *(v91 + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v90 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7CB0, &qword_2407635E0);
  v90 = *(v49 - 8);
  v50 = *(v90 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v90 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7CB8, &qword_2407635E8);
  v54 = *(v53 - 8);
  v150 = v53;
  v151 = v54;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v90 - v56;
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405E1C00();
  v149 = v57;
  sub_24075AF74();
  switch(v148[1])
  {
    case 0:
      v154 = 0;
      sub_2405E22E4();
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      (*(v90 + 8))(v52, v49);
      goto LABEL_29;
    case 1:
      v154 = 1;
      sub_2405E2290();
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      (*(v91 + 8))(v48, v45);
      goto LABEL_29;
    case 2:
      v154 = 2;
      sub_2405E223C();
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v92 + 8);
      v66 = v44;
      v67 = &v125;
      goto LABEL_25;
    case 3:
      v154 = 3;
      sub_2405E21E8();
      v73 = v94;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v95 + 8);
      v66 = v73;
      v67 = &v128;
      goto LABEL_25;
    case 4:
      v154 = 4;
      sub_2405E2194();
      v69 = v97;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v98 + 8);
      v66 = v69;
      v67 = &v131;
      goto LABEL_25;
    case 5:
      v154 = 5;
      sub_2405E2140();
      v85 = v100;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v101 + 8);
      v66 = v85;
      v67 = &v134;
      goto LABEL_25;
    case 6:
      v154 = 6;
      sub_2405E20EC();
      v87 = v103;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v104 + 8);
      v66 = v87;
      v67 = &v137;
      goto LABEL_25;
    case 7:
      v154 = 7;
      sub_2405E2098();
      v74 = v106;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v107 + 8);
      v66 = v74;
      v67 = &v140;
      goto LABEL_25;
    case 8:
      v154 = 8;
      sub_2405E2044();
      v89 = v109;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v110 + 8);
      v66 = v89;
      v67 = &v143;
      goto LABEL_25;
    case 9:
      v154 = 9;
      sub_2405E1FF0();
      v71 = v112;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v113 + 8);
      v66 = v71;
      v67 = &v146;
      goto LABEL_25;
    case 10:
      v154 = 10;
      sub_2405E1F9C();
      v88 = v115;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v116 + 8);
      v66 = v88;
      v67 = &v149;
      goto LABEL_25;
    case 11:
      v154 = 11;
      sub_2405E1F48();
      v68 = v118;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v119 + 8);
      v66 = v68;
      v67 = &v152;
      goto LABEL_25;
    case 12:
      v154 = 12;
      sub_2405E1EF4();
      v70 = v121;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v122 + 8);
      v66 = v70;
      v67 = &v153;
      goto LABEL_25;
    case 13:
      v154 = 13;
      sub_2405E1EA0();
      v86 = v124;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v125 + 8);
      v66 = v86;
      v67 = &v155;
      goto LABEL_25;
    case 14:
      v154 = 14;
      sub_2405E1E4C();
      v64 = v127;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v65 = *(v128 + 8);
      v66 = v64;
      v67 = &v156;
LABEL_25:
      v62 = *(v67 - 32);
      goto LABEL_28;
    case 15:
      v154 = 15;
      sub_2405E1DF8();
      v72 = v130;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      (*(v131 + 8))(v72, v132);
      goto LABEL_29;
    case 16:
      v154 = 16;
      sub_2405E1DA4();
      v61 = v133;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v63 = v134;
      v62 = v135;
      goto LABEL_27;
    case 17:
      v154 = 17;
      sub_2405E1D50();
      v61 = v136;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v63 = v137;
      v62 = v138;
      goto LABEL_27;
    case 18:
      v154 = 18;
      sub_2405E1CFC();
      v61 = v139;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v63 = v140;
      v62 = v141;
      goto LABEL_27;
    case 19:
      v154 = 19;
      sub_2405E1CA8();
      v61 = v142;
      v60 = v149;
      v59 = v150;
      sub_24075AB54();
      v63 = v144;
      v62 = v145;
LABEL_27:
      v65 = *(v63 + 8);
      v66 = v61;
LABEL_28:
      v65(v66, v62);
LABEL_29:
      result = (*(v151 + 8))(v60, v59);
      break;
    default:
      v75 = v143;
      v76 = v148[3];
      v145 = v148[2];
      v77 = v148[4];
      v78 = *v148;
      v154 = 20;
      sub_2405E1C54();
      v79 = v146;
      v81 = v149;
      v80 = v150;
      sub_24075AB54();
      v154 = 0;
      v82 = v147;
      v83 = v152;
      sub_24075ABB4();
      if (v83)
      {
        (*(v75 + 8))(v79, v82);
      }

      else
      {
        v154 = 1;
        sub_24075ABD4();
        v154 = 2;
        sub_24075ABB4();
        (*(v75 + 8))(v79, v82);
      }

      result = (*(v151 + 8))(v81, v80);
      break;
  }

  return result;
}

uint64_t _AgeMigrationError.hash(into:)()
{
  switch(v0[1])
  {
    case 0:
      v1 = 0;
      goto LABEL_25;
    case 1:
      v1 = 1;
      goto LABEL_25;
    case 2:
      v1 = 2;
      goto LABEL_25;
    case 3:
      v1 = 3;
      goto LABEL_25;
    case 4:
      v1 = 4;
      goto LABEL_25;
    case 5:
      v1 = 5;
      goto LABEL_25;
    case 6:
      v1 = 6;
      goto LABEL_25;
    case 7:
      v1 = 7;
      goto LABEL_25;
    case 8:
      v1 = 8;
      goto LABEL_25;
    case 9:
      v1 = 9;
      goto LABEL_25;
    case 10:
      v1 = 10;
      goto LABEL_25;
    case 11:
      v1 = 11;
      goto LABEL_25;
    case 12:
      v1 = 12;
      goto LABEL_25;
    case 13:
      v1 = 13;
      goto LABEL_25;
    case 14:
      v1 = 14;
      goto LABEL_25;
    case 15:
      v1 = 15;
      goto LABEL_25;
    case 16:
      v1 = 16;
      goto LABEL_25;
    case 17:
      v1 = 17;
      goto LABEL_25;
    case 18:
      v1 = 18;
      goto LABEL_25;
    case 19:
      v1 = 19;
LABEL_25:
      result = MEMORY[0x245CC6BA0](v1);
      break;
    default:
      v3 = v0[3];
      v2 = v0[4];
      v4 = v0[2];
      v5 = *v0;
      MEMORY[0x245CC6BA0](20);
      sub_24075A114();
      MEMORY[0x245CC6BA0](v4);

      result = sub_24075A114();
      break;
  }

  return result;
}

uint64_t _AgeMigrationError.hashValue.getter()
{
  sub_24075AE64();
  _AgeMigrationError.hash(into:)();
  return sub_24075AED4();
}

double _AgeMigrationError.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2405E2D88(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_2405E0574@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2405E2D88(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_2405E05D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_2405E0620()
{
  sub_24075AE64();
  _AgeMigrationError.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2405E0664()
{
  sub_24075AE64();
  _AgeMigrationError.hash(into:)();
  return sub_24075AED4();
}

void _AgeMigrationError.into()(uint64_t a1@<X8>)
{
  sub_2405DAFE4();
  v3 = swift_allocError();
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  *v6 = *v1;
  *(v6 + 16) = v5;
  *(v6 + 32) = v4;
  sub_2405E4B54(v1, v13);
  v7 = sub_2407595C4();

  v8 = [v7 domain];
  v9 = sub_24075A0B4();
  v11 = v10;

  v12 = [v7 code];
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = 0;
}

uint64_t _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  switch(v2)
  {
    case 0:
      return !a2[1];
    case 1:
      return a2[1] == 1;
    case 2:
      return a2[1] == 2;
    case 3:
      return a2[1] == 3;
    case 4:
      return a2[1] == 4;
    case 5:
      return a2[1] == 5;
    case 6:
      return a2[1] == 6;
    case 7:
      return a2[1] == 7;
    case 8:
      return a2[1] == 8;
    case 9:
      return a2[1] == 9;
    case 10:
      return a2[1] == 10;
    case 11:
      return a2[1] == 11;
    case 12:
      return a2[1] == 12;
    case 13:
      return a2[1] == 13;
    case 14:
      return a2[1] == 14;
    case 15:
      return a2[1] == 15;
    case 16:
      return a2[1] == 16;
    case 17:
      return a2[1] == 17;
    case 18:
      return a2[1] == 18;
    case 19:
      return a2[1] == 19;
    default:
      v3 = a2[1];
      if (v3 < 0x14)
      {
        return 0;
      }

      v5 = a1[2];
      v4 = a1[3];
      v6 = a1[4];
      v8 = a2[2];
      v7 = a2[3];
      v9 = a2[4];
      if (*a1 == *a2 && v2 == v3)
      {
        if (v5 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_24075ACF4();
        result = 0;
        if ((v11 & 1) == 0 || v5 != v8)
        {
          return result;
        }
      }

      if (v4 == v7 && v6 == v9)
      {
        return 1;
      }

      return sub_24075ACF4();
  }
}

uint64_t _s12AppleIDSetup23MachAgeMigrationMessageO2eeoiySbAC_ACtFZ_0(unint64_t a1, uint64_t a2)
{
  v89 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v3 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v86 = (&v82 - v4);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v5 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v87 = &v82 - v6;
  v7 = type metadata accessor for AnisetteCommand.Response();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AgeMigrationModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v84 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MachAgeMigrationMessage();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v82 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v88 = &v82 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v82 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v82 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v82 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v82 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80B8, &qword_240765558);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v82 - v37;
  v39 = &v82 + *(v36 + 56) - v37;
  sub_2405DAF80(v89, &v82 - v37);
  sub_2405DAF80(a2, v39);
  v40 = v38;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v42 = v38;
      if (EnumCaseMultiPayload == 6)
      {
        sub_2405DAF80(v38, v17);
        v52 = *(v17 + 1);
        v90 = *v17;
        v91 = v52;
        v92 = *(v17 + 4);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          sub_2405E1900(&v90);
          goto LABEL_40;
        }

        v53 = *(v39 + 1);
        v93 = *v39;
        v94 = v53;
        v95 = *(v39 + 4);
        v49 = _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(&v90, &v93);
        sub_2405E1900(&v90);
        sub_2405E1900(&v93);
        goto LABEL_44;
      }

      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    v42 = v38;
    if (EnumCaseMultiPayload == 4)
    {
      v43 = v88;
      sub_2405DAF80(v38, v88);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_2405B8A50(v43, &qword_27E4B7AE0, &qword_2407634B8);
        goto LABEL_40;
      }

      v44 = v87;
      sub_2405E150C(v39, v87, &qword_27E4B7AE0, &qword_2407634B8);
      if (*v43 == *v44 && *(v43 + 8) == *(v44 + 8) && (_s12AppleIDSetup17AgeMigrationModelV2eeoiySbAC_ACtFZ_0(v43 + *(v83 + 32), v44 + *(v83 + 32)) & 1) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
        v45 = *(v83 + 36);
        v46 = *(v43 + v45);
        v47 = *(v44 + v45);
        if (sub_240759914())
        {
          sub_2405B8A50(v44, &qword_27E4B7AE0, &qword_2407634B8);
          sub_2405B8A50(v43, &qword_27E4B7AE0, &qword_2407634B8);
          goto LABEL_33;
        }
      }

      sub_2405B8A50(v44, &qword_27E4B7AE0, &qword_2407634B8);
      sub_2405B8A50(v43, &qword_27E4B7AE0, &qword_2407634B8);
    }

    else
    {
      sub_2405DAF80(v38, v20);
      v64 = swift_getEnumCaseMultiPayload();
      if (v64 != 5)
      {
        sub_2405B8A50(v20, &qword_27E4B7AD0, &unk_24076CCE0);
        goto LABEL_40;
      }

      v65 = v86;
      sub_2405E150C(v39, v86, &qword_27E4B7AD0, &unk_24076CCE0);
      if (*v20 == *v65 && v20[1] == v65[1])
      {
        v66 = _s12AppleIDSetup17AgeMigrationModelV2eeoiySbAC_ACtFZ_0(v20 + *(v82 + 32), v65 + *(v82 + 32));
        sub_2405B8A50(v65, &qword_27E4B7AD0, &unk_24076CCE0);
        if (v66)
        {
          sub_2405B8A50(v20, &qword_27E4B7AD0, &unk_24076CCE0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_2405B8A50(v65, &qword_27E4B7AD0, &unk_24076CCE0);
      }

      sub_2405B8A50(v20, &qword_27E4B7AD0, &unk_24076CCE0);
    }

LABEL_50:
    sub_2405E19A0(v42, type metadata accessor for MachAgeMigrationMessage);
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v42 = v38;
    if (EnumCaseMultiPayload == 2)
    {
      sub_2405DAF80(v38, v28);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_2405E19A0(v28, type metadata accessor for AnisetteCommand.Response);
        goto LABEL_40;
      }

      v48 = v85;
      sub_2405E1A54(v39, v85, type metadata accessor for AnisetteCommand.Response);
      v49 = _s12AppleIDSetup15AnisetteCommandV8ResponseO2eeoiySbAE_AEtFZ_0(v28, v48);
      sub_2405E19A0(v48, type metadata accessor for AnisetteCommand.Response);
      v50 = v28;
      v51 = type metadata accessor for AnisetteCommand.Response;
LABEL_43:
      sub_2405E19A0(v50, v51);
LABEL_44:
      sub_2405E19A0(v42, type metadata accessor for MachAgeMigrationMessage);
      return v49 & 1;
    }

    sub_2405DAF80(v38, v25);
    v68 = *v25;
    v67 = v25[1];
    v70 = v25[2];
    v69 = v25[3];
    v71 = v25[4];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_2405E170C(v68, v67);
      goto LABEL_40;
    }

    v73 = *v39;
    v72 = *(v39 + 1);
    v74 = *(v39 + 2);
    v75 = *(v39 + 3);
    v76 = *(v39 + 4);
    if (v67 == 20)
    {
      if (v72 != 20)
      {
        v77 = *v39;
        v78 = *(v39 + 3);
LABEL_49:
        sub_2405E170C(v77, v72);
        goto LABEL_50;
      }
    }

    else
    {
      *&v90 = v68;
      *(&v90 + 1) = v67;
      *&v91 = v70;
      *(&v91 + 1) = v69;
      v92 = v71;
      if (v72 == 20)
      {
        v77 = v68;
        v72 = v67;
        goto LABEL_49;
      }

      *&v93 = v73;
      *(&v93 + 1) = v72;
      *&v94 = v74;
      *(&v94 + 1) = v75;
      v95 = v76;
      v81 = v72;
      v88 = v76;
      LODWORD(v89) = _s12AppleIDSetup18_AgeMigrationErrorO2eeoiySbAC_ACtFZ_0(&v90, &v93);
      v42 = v40;
      sub_2405E170C(v73, v81);
      sub_2405E170C(v68, v67);
      if ((v89 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

LABEL_33:
    sub_2405E19A0(v42, type metadata accessor for MachAgeMigrationMessage);
    v49 = 1;
    return v49 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    v42 = v38;
    sub_2405DAF80(v38, v33);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2405E19A0(v33, type metadata accessor for AgeMigrationModel);
LABEL_40:
      sub_2405B8A50(v42, &qword_27E4B80B8, &qword_240765558);
LABEL_51:
      v49 = 0;
      return v49 & 1;
    }

    v79 = v84;
    sub_2405E1A54(v39, v84, type metadata accessor for AgeMigrationModel);
    v49 = _s12AppleIDSetup17AgeMigrationModelV2eeoiySbAC_ACtFZ_0(v33, v79);
    sub_2405E19A0(v79, type metadata accessor for AgeMigrationModel);
    v50 = v33;
    v51 = type metadata accessor for AgeMigrationModel;
    goto LABEL_43;
  }

  v54 = v38;
  sub_2405DAF80(v38, v31);
  v56 = *v31;
  v55 = *(v31 + 1);
  v58 = *(v31 + 2);
  v57 = *(v31 + 3);
  v59 = v31[32];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2405E1818(v56, v55, v58, v57, v59);
    v42 = v54;
    goto LABEL_40;
  }

  v61 = *v39;
  v60 = *(v39 + 1);
  v62 = *(v39 + 2);
  v88 = *(v39 + 3);
  v89 = v60;
  v63 = v39[32];
  *&v93 = v56;
  *(&v93 + 1) = v55;
  *&v94 = v58;
  *(&v94 + 1) = v57;
  LOBYTE(v95) = v59;
  *&v90 = v61;
  *(&v90 + 1) = v60;
  *&v91 = v62;
  *(&v91 + 1) = v88;
  LOBYTE(v92) = v63;
  v49 = _s12AppleIDSetup15AnisetteCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v93, &v90);
  sub_2405E1818(v61, v89, v62, v88, v63);
  sub_2405E1818(v56, v55, v58, v57, v59);
  sub_2405E19A0(v54, type metadata accessor for MachAgeMigrationMessage);
  return v49 & 1;
}

unint64_t sub_2405E1368()
{
  result = qword_27E4B7B10;
  if (!qword_27E4B7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B10);
  }

  return result;
}

unint64_t sub_2405E13BC()
{
  result = qword_27E4B7B18;
  if (!qword_27E4B7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B18);
  }

  return result;
}

unint64_t sub_2405E1410()
{
  result = qword_27E4B7B20;
  if (!qword_27E4B7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B20);
  }

  return result;
}

unint64_t sub_2405E1464()
{
  result = qword_27E4B7B28;
  if (!qword_27E4B7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B28);
  }

  return result;
}

unint64_t sub_2405E14B8()
{
  result = qword_27E4B7B30;
  if (!qword_27E4B7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B30);
  }

  return result;
}

uint64_t sub_2405E150C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2405E1574()
{
  result = qword_27E4B7B48;
  if (!qword_27E4B7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B48);
  }

  return result;
}

uint64_t sub_2405E15C8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7AE0, &qword_2407634B8);
    sub_2405E4C80(a2, type metadata accessor for AgeMigrationModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2405E1664()
{
  result = qword_27E4B7B58;
  if (!qword_27E4B7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B58);
  }

  return result;
}

unint64_t sub_2405E16B8()
{
  result = qword_27E4B7B60;
  if (!qword_27E4B7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B60);
  }

  return result;
}

uint64_t sub_2405E170C(uint64_t a1, unint64_t a2)
{
  if (a2 != 20)
  {
    return sub_2405DB038(a1, a2);
  }

  return a1;
}

unint64_t sub_2405E171C()
{
  result = qword_27E4B7B68;
  if (!qword_27E4B7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B68);
  }

  return result;
}

unint64_t sub_2405E1770()
{
  result = qword_27E4B7B78;
  if (!qword_27E4B7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B78);
  }

  return result;
}

unint64_t sub_2405E17C4()
{
  result = qword_27E4B7B80;
  if (!qword_27E4B7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B80);
  }

  return result;
}

uint64_t sub_2405E1818(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 >> 60) & 3 | v6;
  if (v7 == 3)
  {

    a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    result = a3;

    return sub_2405BCD98(result, a2);
  }

  if (v7 != 2)
  {
    if (v7)
    {
      return result;
    }

    return sub_2405BCD98(result, a2);
  }
}

unint64_t sub_2405E18AC()
{
  result = qword_27E4B7B88;
  if (!qword_27E4B7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7B88);
  }

  return result;
}

uint64_t sub_2405E1930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2405E19A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2405E1A00()
{
  result = qword_27E4B7BD8;
  if (!qword_27E4B7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7BD8);
  }

  return result;
}

uint64_t sub_2405E1A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2405E1ABC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7AD0, &unk_24076CCE0);
    sub_2405E4C80(a2, type metadata accessor for AgeMigrationModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2405E1B58()
{
  result = qword_27E4B7BF8;
  if (!qword_27E4B7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7BF8);
  }

  return result;
}

unint64_t sub_2405E1BAC()
{
  result = qword_27E4B7C08;
  if (!qword_27E4B7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7C08);
  }

  return result;
}

unint64_t sub_2405E1C00()
{
  result = qword_27E4B7CC0;
  if (!qword_27E4B7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CC0);
  }

  return result;
}

unint64_t sub_2405E1C54()
{
  result = qword_27E4B7CC8;
  if (!qword_27E4B7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CC8);
  }

  return result;
}

unint64_t sub_2405E1CA8()
{
  result = qword_27E4B7CD0;
  if (!qword_27E4B7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CD0);
  }

  return result;
}

unint64_t sub_2405E1CFC()
{
  result = qword_27E4B7CD8;
  if (!qword_27E4B7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CD8);
  }

  return result;
}

unint64_t sub_2405E1D50()
{
  result = qword_27E4B7CE0;
  if (!qword_27E4B7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CE0);
  }

  return result;
}

unint64_t sub_2405E1DA4()
{
  result = qword_27E4B7CE8;
  if (!qword_27E4B7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CE8);
  }

  return result;
}

unint64_t sub_2405E1DF8()
{
  result = qword_27E4B7CF0;
  if (!qword_27E4B7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CF0);
  }

  return result;
}

unint64_t sub_2405E1E4C()
{
  result = qword_27E4B7CF8;
  if (!qword_27E4B7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7CF8);
  }

  return result;
}

unint64_t sub_2405E1EA0()
{
  result = qword_27E4B7D00;
  if (!qword_27E4B7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D00);
  }

  return result;
}

unint64_t sub_2405E1EF4()
{
  result = qword_27E4B7D08;
  if (!qword_27E4B7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D08);
  }

  return result;
}

unint64_t sub_2405E1F48()
{
  result = qword_27E4B7D10;
  if (!qword_27E4B7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D10);
  }

  return result;
}

unint64_t sub_2405E1F9C()
{
  result = qword_27E4B7D18;
  if (!qword_27E4B7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D18);
  }

  return result;
}

unint64_t sub_2405E1FF0()
{
  result = qword_27E4B7D20;
  if (!qword_27E4B7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D20);
  }

  return result;
}

unint64_t sub_2405E2044()
{
  result = qword_27E4B7D28;
  if (!qword_27E4B7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D28);
  }

  return result;
}

unint64_t sub_2405E2098()
{
  result = qword_27E4B7D30;
  if (!qword_27E4B7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D30);
  }

  return result;
}

unint64_t sub_2405E20EC()
{
  result = qword_27E4B7D38;
  if (!qword_27E4B7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D38);
  }

  return result;
}

unint64_t sub_2405E2140()
{
  result = qword_27E4B7D40;
  if (!qword_27E4B7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D40);
  }

  return result;
}

unint64_t sub_2405E2194()
{
  result = qword_27E4B7D48;
  if (!qword_27E4B7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D48);
  }

  return result;
}

unint64_t sub_2405E21E8()
{
  result = qword_27E4B7D50;
  if (!qword_27E4B7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D50);
  }

  return result;
}

unint64_t sub_2405E223C()
{
  result = qword_27E4B7D58;
  if (!qword_27E4B7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D58);
  }

  return result;
}

unint64_t sub_2405E2290()
{
  result = qword_27E4B7D60;
  if (!qword_27E4B7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D60);
  }

  return result;
}

unint64_t sub_2405E22E4()
{
  result = qword_27E4B7D68;
  if (!qword_27E4B7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D68);
  }

  return result;
}

uint64_t sub_2405E2338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617267696DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574746573696E61 && a2 == 0xEF74736575716552 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002407865D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74726F706572 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407865B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000240786590 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74706965636572 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2405E25D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E614372657375 && a2 == 0xED000064656C6C65 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341534D64496F6ELL && a2 == 0xEF6449746E756F63 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240786790 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000240786770 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000240786750 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240786730 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E657261506F6ELL && a2 == 0xEF746E756F636341 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000240786710 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002407866F0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407866D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002407866B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240786690 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746573696E416F6ELL && a2 == 0xEE00617461446574 || (sub_24075ACF4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240786670 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000240786650 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240786630 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000240786610 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x746E657261506F6ELL && a2 == 0xEF44495344746C41 || (sub_24075ACF4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x5364696C61766E69 && a2 == 0xEC00000065746174 || (sub_24075ACF4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
  {

    return 20;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_2405E2C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002407867B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2405E2D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v185 = a2;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8008, &qword_2407654A8);
  v164 = *(v184 - 8);
  v3 = *(v164 + 64);
  MEMORY[0x28223BE20](v184);
  v180 = &v121 - v4;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8010, &qword_2407654B0);
  v162 = *(v163 - 8);
  v5 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v179 = &v121 - v6;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8018, &qword_2407654B8);
  v160 = *(v161 - 8);
  v7 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v178 = &v121 - v8;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8020, &qword_2407654C0);
  v158 = *(v159 - 8);
  v9 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v177 = &v121 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8028, &qword_2407654C8);
  v156 = *(v157 - 8);
  v11 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v176 = &v121 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8030, &qword_2407654D0);
  v154 = *(v155 - 8);
  v13 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v175 = &v121 - v14;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8038, &qword_2407654D8);
  v152 = *(v153 - 8);
  v15 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v174 = &v121 - v16;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8040, &qword_2407654E0);
  v150 = *(v151 - 8);
  v17 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v173 = &v121 - v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8048, &qword_2407654E8);
  v148 = *(v149 - 8);
  v19 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v172 = &v121 - v20;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8050, &qword_2407654F0);
  v146 = *(v147 - 8);
  v21 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v171 = &v121 - v22;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8058, &qword_2407654F8);
  v144 = *(v145 - 8);
  v23 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v170 = &v121 - v24;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8060, &qword_240765500);
  v142 = *(v143 - 8);
  v25 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v169 = &v121 - v26;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8068, &qword_240765508);
  v140 = *(v141 - 8);
  v27 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v168 = &v121 - v28;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8070, &qword_240765510);
  v139 = *(v138 - 8);
  v29 = *(v139 + 64);
  MEMORY[0x28223BE20](v138);
  v183 = &v121 - v30;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8078, &qword_240765518);
  v137 = *(v136 - 8);
  v31 = *(v137 + 64);
  MEMORY[0x28223BE20](v136);
  v182 = &v121 - v32;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8080, &qword_240765520);
  v135 = *(v134 - 8);
  v33 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  v167 = &v121 - v34;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8088, &qword_240765528);
  v133 = *(v130 - 8);
  v35 = *(v133 + 64);
  MEMORY[0x28223BE20](v130);
  v166 = &v121 - v36;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8090, &qword_240765530);
  v131 = *(v132 - 8);
  v37 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v181 = &v121 - v38;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8098, &qword_240765538);
  v128 = *(v129 - 8);
  v39 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v165 = &v121 - v40;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80A0, &qword_240765540);
  v126 = *(v127 - 8);
  v41 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v43 = &v121 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80A8, &qword_240765548);
  v125 = *(v44 - 8);
  v45 = *(v125 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v121 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80B0, &qword_240765550);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v121 - v51;
  v53 = a1[3];
  v54 = a1[4];
  v186 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_2405E1C00();
  v55 = v187;
  sub_24075AF34();
  v56 = v55;
  if (v55)
  {
    return __swift_destroy_boxed_opaque_existential_1(v186);
  }

  v122 = v47;
  v121 = v44;
  v123 = v43;
  v58 = v181;
  v57 = v182;
  v59 = v183;
  v60 = v184;
  v124 = v49;
  v61 = v185;
  v187 = v52;
  v62 = sub_24075AB34();
  v63 = (2 * *(v62 + 16)) | 1;
  v188 = v62;
  v189 = v62 + 32;
  v190 = 0;
  v191 = v63;
  v64 = sub_240598D78();
  if (v190 != v191 >> 1)
  {
LABEL_5:
    v72 = sub_24075A8C4();
    swift_allocError();
    v74 = v73;
    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v74 = &type metadata for _AgeMigrationError;
    v76 = v187;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x277D84160], v72);
    swift_willThrow();
    (*(v124 + 8))(v76, v48);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v186);
  }

  switch(v64)
  {
    case 0:
      v65 = v61;
      v192 = 0;
      sub_2405E22E4();
      v66 = v122;
      v67 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v125 + 8))(v66, v121);
      (*(v124 + 8))(v67, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      goto LABEL_27;
    case 1:
      v65 = v61;
      v192 = 1;
      sub_2405E2290();
      v96 = v123;
      v97 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v126 + 8))(v96, v127);
      (*(v124 + 8))(v97, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 1;
      goto LABEL_27;
    case 2:
      v65 = v61;
      v192 = 2;
      sub_2405E223C();
      v90 = v165;
      v91 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v128 + 8))(v90, v129);
      (*(v124 + 8))(v91, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 2;
      goto LABEL_27;
    case 3:
      v65 = v61;
      v192 = 3;
      sub_2405E21E8();
      v94 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v131 + 8))(v58, v132);
      (*(v124 + 8))(v94, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 3;
      goto LABEL_27;
    case 4:
      v65 = v61;
      v192 = 4;
      sub_2405E2194();
      v84 = v166;
      v85 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v133 + 8))(v84, v130);
      (*(v124 + 8))(v85, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 4;
      goto LABEL_27;
    case 5:
      v65 = v61;
      v192 = 5;
      sub_2405E2140();
      v100 = v167;
      v101 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v135 + 8))(v100, v134);
      (*(v124 + 8))(v101, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 5;
      goto LABEL_27;
    case 6:
      v65 = v61;
      v192 = 6;
      sub_2405E20EC();
      v104 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v137 + 8))(v57, v136);
      (*(v124 + 8))(v104, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 6;
      goto LABEL_27;
    case 7:
      v65 = v61;
      v192 = 7;
      sub_2405E2098();
      v95 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v139 + 8))(v59, v138);
      (*(v124 + 8))(v95, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 7;
      goto LABEL_27;
    case 8:
      v65 = v61;
      v192 = 8;
      sub_2405E2044();
      v109 = v168;
      v110 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v140 + 8))(v109, v141);
      (*(v124 + 8))(v110, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 8;
      goto LABEL_27;
    case 9:
      v65 = v61;
      v192 = 9;
      sub_2405E1FF0();
      v88 = v169;
      v89 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v142 + 8))(v88, v143);
      (*(v124 + 8))(v89, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 9;
      goto LABEL_27;
    case 10:
      v65 = v61;
      v192 = 10;
      sub_2405E1F9C();
      v107 = v170;
      v108 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v144 + 8))(v107, v145);
      (*(v124 + 8))(v108, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 10;
      goto LABEL_27;
    case 11:
      v65 = v61;
      v192 = 11;
      sub_2405E1F48();
      v82 = v171;
      v83 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v146 + 8))(v82, v147);
      (*(v124 + 8))(v83, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 11;
      goto LABEL_27;
    case 12:
      v65 = v61;
      v192 = 12;
      sub_2405E1EF4();
      v86 = v172;
      v87 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v148 + 8))(v86, v149);
      (*(v124 + 8))(v87, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 12;
      goto LABEL_27;
    case 13:
      v65 = v61;
      v192 = 13;
      sub_2405E1EA0();
      v102 = v173;
      v103 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v150 + 8))(v102, v151);
      (*(v124 + 8))(v103, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 13;
      goto LABEL_27;
    case 14:
      v65 = v61;
      v192 = 14;
      sub_2405E1E4C();
      v80 = v174;
      v81 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v152 + 8))(v80, v153);
      (*(v124 + 8))(v81, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 14;
      goto LABEL_27;
    case 15:
      v65 = v61;
      v192 = 15;
      sub_2405E1DF8();
      v92 = v175;
      v93 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v154 + 8))(v92, v155);
      (*(v124 + 8))(v93, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 15;
      goto LABEL_27;
    case 16:
      v65 = v61;
      v192 = 16;
      sub_2405E1DA4();
      v78 = v176;
      v79 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v156 + 8))(v78, v157);
      (*(v124 + 8))(v79, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 16;
      goto LABEL_27;
    case 17:
      v65 = v61;
      v192 = 17;
      sub_2405E1D50();
      v98 = v177;
      v99 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v158 + 8))(v98, v159);
      (*(v124 + 8))(v99, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 17;
      goto LABEL_27;
    case 18:
      v65 = v61;
      v192 = 18;
      sub_2405E1CFC();
      v105 = v178;
      v106 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v160 + 8))(v105, v161);
      (*(v124 + 8))(v106, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 18;
      goto LABEL_27;
    case 19:
      v65 = v61;
      v192 = 19;
      sub_2405E1CA8();
      v111 = v179;
      v112 = v187;
      sub_24075AA54();
      v164 = 0;
      (*(v162 + 8))(v111, v163);
      (*(v124 + 8))(v112, v48);
      swift_unknownObjectRelease();
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 19;
LABEL_27:
      v120 = v186;
      break;
    case 20:
      v192 = 20;
      sub_2405E1C54();
      sub_24075AA54();
      v192 = 0;
      v113 = sub_24075AAC4();
      v114 = v60;
      v115 = v124;
      v68 = v113;
      v69 = v116;
      v192 = 1;
      v70 = sub_24075AAE4();
      v183 = v48;
      v192 = 2;
      v117 = sub_24075AAC4();
      v118 = (v164 + 8);
      v164 = 0;
      v71 = v117;
      v56 = v119;
      (*v118)(v180, v114);
      (*(v115 + 8))(v187, v183);
      swift_unknownObjectRelease();
      v120 = v186;
      v65 = v61;
      break;
    default:
      goto LABEL_5;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v120);
  *v65 = v68;
  v65[1] = v69;
  v65[2] = v70;
  v65[3] = v71;
  v65[4] = v56;
  return result;
}

uint64_t sub_2405E4B8C(void *a1)
{
  a1[1] = sub_2405E4C80(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage);
  a1[2] = sub_2405E4C80(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage);
  result = sub_2405E4C80(&qword_27E4B7D80, type metadata accessor for MachAgeMigrationMessage);
  a1[3] = result;
  return result;
}

uint64_t sub_2405E4C80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2405E4CC8(void *a1)
{
  a1[1] = sub_2405E1A00();
  a1[2] = sub_2405E1410();
  result = sub_2405E4D00();
  a1[3] = result;
  return result;
}

unint64_t sub_2405E4D00()
{
  result = qword_27E4B7D90;
  if (!qword_27E4B7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D90);
  }

  return result;
}

unint64_t sub_2405E4D58()
{
  result = qword_27E4B7D98;
  if (!qword_27E4B7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7D98);
  }

  return result;
}

void sub_2405E4DAC()
{
  type metadata accessor for AgeMigrationModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AnisetteCommand.Response();
    if (v1 <= 0x3F)
    {
      sub_2405E4E98(319, &qword_27E4B7DB0, type metadata accessor for _Coordinated.ValueUpdate);
      if (v2 <= 0x3F)
      {
        sub_2405E4E98(319, &qword_27E4B7DB8, type metadata accessor for _Coordinated.ValueUpdate.Response);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2405E4E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AgeMigrationModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup18_AgeMigrationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2405E4F10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEB && *(a1 + 40))
  {
    return (*a1 + 2147483628);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 19;
  if (v4 >= 0x15)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2405E4F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483628;
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 19;
    }
  }

  return result;
}

double sub_2405E4FC0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AgeMigrationError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _AgeMigrationError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AISDeviceClass(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AISDeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2405E5470()
{
  result = qword_27E4B7DC0;
  if (!qword_27E4B7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DC0);
  }

  return result;
}

unint64_t sub_2405E54C8()
{
  result = qword_27E4B7DC8;
  if (!qword_27E4B7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DC8);
  }

  return result;
}

unint64_t sub_2405E5520()
{
  result = qword_27E4B7DD0;
  if (!qword_27E4B7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DD0);
  }

  return result;
}

unint64_t sub_2405E5578()
{
  result = qword_27E4B7DD8;
  if (!qword_27E4B7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DD8);
  }

  return result;
}

unint64_t sub_2405E55D0()
{
  result = qword_27E4B7DE0;
  if (!qword_27E4B7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DE0);
  }

  return result;
}

unint64_t sub_2405E5628()
{
  result = qword_27E4B7DE8;
  if (!qword_27E4B7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DE8);
  }

  return result;
}

unint64_t sub_2405E5680()
{
  result = qword_27E4B7DF0;
  if (!qword_27E4B7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DF0);
  }

  return result;
}

unint64_t sub_2405E56D8()
{
  result = qword_27E4B7DF8;
  if (!qword_27E4B7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7DF8);
  }

  return result;
}

unint64_t sub_2405E5730()
{
  result = qword_27E4B7E00;
  if (!qword_27E4B7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E00);
  }

  return result;
}

unint64_t sub_2405E5788()
{
  result = qword_27E4B7E08;
  if (!qword_27E4B7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E08);
  }

  return result;
}

unint64_t sub_2405E57E0()
{
  result = qword_27E4B7E10;
  if (!qword_27E4B7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E10);
  }

  return result;
}

unint64_t sub_2405E5838()
{
  result = qword_27E4B7E18;
  if (!qword_27E4B7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E18);
  }

  return result;
}

unint64_t sub_2405E5890()
{
  result = qword_27E4B7E20;
  if (!qword_27E4B7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E20);
  }

  return result;
}

unint64_t sub_2405E58E8()
{
  result = qword_27E4B7E28;
  if (!qword_27E4B7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E28);
  }

  return result;
}

unint64_t sub_2405E5940()
{
  result = qword_27E4B7E30;
  if (!qword_27E4B7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E30);
  }

  return result;
}

unint64_t sub_2405E5998()
{
  result = qword_27E4B7E38;
  if (!qword_27E4B7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E38);
  }

  return result;
}

unint64_t sub_2405E59F0()
{
  result = qword_27E4B7E40;
  if (!qword_27E4B7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E40);
  }

  return result;
}

unint64_t sub_2405E5A48()
{
  result = qword_27E4B7E48;
  if (!qword_27E4B7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E48);
  }

  return result;
}

unint64_t sub_2405E5AA0()
{
  result = qword_27E4B7E50;
  if (!qword_27E4B7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E50);
  }

  return result;
}

unint64_t sub_2405E5AF8()
{
  result = qword_27E4B7E58;
  if (!qword_27E4B7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E58);
  }

  return result;
}

unint64_t sub_2405E5B50()
{
  result = qword_27E4B7E60;
  if (!qword_27E4B7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E60);
  }

  return result;
}

unint64_t sub_2405E5BA8()
{
  result = qword_27E4B7E68;
  if (!qword_27E4B7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E68);
  }

  return result;
}

unint64_t sub_2405E5C00()
{
  result = qword_27E4B7E70;
  if (!qword_27E4B7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E70);
  }

  return result;
}

unint64_t sub_2405E5C58()
{
  result = qword_27E4B7E78;
  if (!qword_27E4B7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E78);
  }

  return result;
}

unint64_t sub_2405E5CB0()
{
  result = qword_27E4B7E80;
  if (!qword_27E4B7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E80);
  }

  return result;
}

unint64_t sub_2405E5D08()
{
  result = qword_27E4B7E88;
  if (!qword_27E4B7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E88);
  }

  return result;
}

unint64_t sub_2405E5D60()
{
  result = qword_27E4B7E90;
  if (!qword_27E4B7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E90);
  }

  return result;
}

unint64_t sub_2405E5DB8()
{
  result = qword_27E4B7E98;
  if (!qword_27E4B7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7E98);
  }

  return result;
}

unint64_t sub_2405E5E10()
{
  result = qword_27E4B7EA0;
  if (!qword_27E4B7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EA0);
  }

  return result;
}

unint64_t sub_2405E5E68()
{
  result = qword_27E4B7EA8;
  if (!qword_27E4B7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EA8);
  }

  return result;
}

unint64_t sub_2405E5EC0()
{
  result = qword_27E4B7EB0;
  if (!qword_27E4B7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EB0);
  }

  return result;
}

unint64_t sub_2405E5F18()
{
  result = qword_27E4B7EB8;
  if (!qword_27E4B7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EB8);
  }

  return result;
}

unint64_t sub_2405E5F70()
{
  result = qword_27E4B7EC0;
  if (!qword_27E4B7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EC0);
  }

  return result;
}

unint64_t sub_2405E5FC8()
{
  result = qword_27E4B7EC8;
  if (!qword_27E4B7EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EC8);
  }

  return result;
}

unint64_t sub_2405E6020()
{
  result = qword_27E4B7ED0;
  if (!qword_27E4B7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7ED0);
  }

  return result;
}

unint64_t sub_2405E6078()
{
  result = qword_27E4B7ED8;
  if (!qword_27E4B7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7ED8);
  }

  return result;
}

unint64_t sub_2405E60D0()
{
  result = qword_27E4B7EE0;
  if (!qword_27E4B7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EE0);
  }

  return result;
}

unint64_t sub_2405E6128()
{
  result = qword_27E4B7EE8;
  if (!qword_27E4B7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EE8);
  }

  return result;
}

unint64_t sub_2405E6180()
{
  result = qword_27E4B7EF0;
  if (!qword_27E4B7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EF0);
  }

  return result;
}

unint64_t sub_2405E61D8()
{
  result = qword_27E4B7EF8;
  if (!qword_27E4B7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7EF8);
  }

  return result;
}

unint64_t sub_2405E6230()
{
  result = qword_27E4B7F00;
  if (!qword_27E4B7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F00);
  }

  return result;
}

unint64_t sub_2405E6288()
{
  result = qword_27E4B7F08;
  if (!qword_27E4B7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F08);
  }

  return result;
}

unint64_t sub_2405E62E0()
{
  result = qword_27E4B7F10;
  if (!qword_27E4B7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F10);
  }

  return result;
}

unint64_t sub_2405E6338()
{
  result = qword_27E4B7F18;
  if (!qword_27E4B7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F18);
  }

  return result;
}

unint64_t sub_2405E6390()
{
  result = qword_27E4B7F20;
  if (!qword_27E4B7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F20);
  }

  return result;
}

unint64_t sub_2405E63E8()
{
  result = qword_27E4B7F28;
  if (!qword_27E4B7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F28);
  }

  return result;
}

unint64_t sub_2405E6440()
{
  result = qword_27E4B7F30;
  if (!qword_27E4B7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F30);
  }

  return result;
}

unint64_t sub_2405E6498()
{
  result = qword_27E4B7F38;
  if (!qword_27E4B7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F38);
  }

  return result;
}

unint64_t sub_2405E64F0()
{
  result = qword_27E4B7F40;
  if (!qword_27E4B7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F40);
  }

  return result;
}

unint64_t sub_2405E6548()
{
  result = qword_27E4B7F48;
  if (!qword_27E4B7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F48);
  }

  return result;
}

unint64_t sub_2405E65A0()
{
  result = qword_27E4B7F50;
  if (!qword_27E4B7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F50);
  }

  return result;
}

unint64_t sub_2405E65F8()
{
  result = qword_27E4B7F58;
  if (!qword_27E4B7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F58);
  }

  return result;
}

unint64_t sub_2405E6650()
{
  result = qword_27E4B7F60;
  if (!qword_27E4B7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F60);
  }

  return result;
}

unint64_t sub_2405E66A8()
{
  result = qword_27E4B7F68;
  if (!qword_27E4B7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F68);
  }

  return result;
}

unint64_t sub_2405E6700()
{
  result = qword_27E4B7F70;
  if (!qword_27E4B7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F70);
  }

  return result;
}

unint64_t sub_2405E6758()
{
  result = qword_27E4B7F78;
  if (!qword_27E4B7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F78);
  }

  return result;
}

unint64_t sub_2405E67B0()
{
  result = qword_27E4B7F80;
  if (!qword_27E4B7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F80);
  }

  return result;
}

unint64_t sub_2405E6808()
{
  result = qword_27E4B7F88;
  if (!qword_27E4B7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F88);
  }

  return result;
}

unint64_t sub_2405E6860()
{
  result = qword_27E4B7F90;
  if (!qword_27E4B7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F90);
  }

  return result;
}

unint64_t sub_2405E68B8()
{
  result = qword_27E4B7F98;
  if (!qword_27E4B7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7F98);
  }

  return result;
}

unint64_t sub_2405E6910()
{
  result = qword_27E4B7FA0;
  if (!qword_27E4B7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FA0);
  }

  return result;
}

unint64_t sub_2405E6968()
{
  result = qword_27E4B7FA8;
  if (!qword_27E4B7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FA8);
  }

  return result;
}

unint64_t sub_2405E69C0()
{
  result = qword_27E4B7FB0;
  if (!qword_27E4B7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FB0);
  }

  return result;
}

unint64_t sub_2405E6A18()
{
  result = qword_27E4B7FB8;
  if (!qword_27E4B7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FB8);
  }

  return result;
}

unint64_t sub_2405E6A70()
{
  result = qword_27E4B7FC0;
  if (!qword_27E4B7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FC0);
  }

  return result;
}

unint64_t sub_2405E6AC8()
{
  result = qword_27E4B7FC8;
  if (!qword_27E4B7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FC8);
  }

  return result;
}

unint64_t sub_2405E6B20()
{
  result = qword_27E4B7FD0;
  if (!qword_27E4B7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FD0);
  }

  return result;
}

unint64_t sub_2405E6B78()
{
  result = qword_27E4B7FD8;
  if (!qword_27E4B7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FD8);
  }

  return result;
}

unint64_t sub_2405E6BD0()
{
  result = qword_27E4B7FE0;
  if (!qword_27E4B7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FE0);
  }

  return result;
}

unint64_t sub_2405E6C28()
{
  result = qword_27E4B7FE8;
  if (!qword_27E4B7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FE8);
  }

  return result;
}

unint64_t sub_2405E6C80()
{
  result = qword_27E4B7FF0;
  if (!qword_27E4B7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FF0);
  }

  return result;
}

unint64_t sub_2405E6CD8()
{
  result = qword_27E4B7FF8;
  if (!qword_27E4B7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7FF8);
  }

  return result;
}

unint64_t sub_2405E6D2C()
{
  result = qword_27E4B7478[0];
  if (!qword_27E4B7478[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7460, &qword_240762770);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E4B7478);
  }

  return result;
}

unint64_t sub_2405E6E0C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x74706965636572;
    if (v1 != 6)
    {
      v5 = 0x6572756C696166;
    }

    if (v1 == 4)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x726961706572;
    v3 = 0xD000000000000015;
    if (v1 != 2)
    {
      v3 = 0x526D6F74706D7973;
    }

    if (*v0)
    {
      v2 = 0x6552726961706572;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_2405E6F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405F09E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405E6F48(uint64_t a1)
{
  v2 = sub_2405EE584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E6F84(uint64_t a1)
{
  v2 = sub_2405EE584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E6FC0(uint64_t a1)
{
  v2 = sub_2405EE764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E6FFC(uint64_t a1)
{
  v2 = sub_2405EE764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7038(uint64_t a1)
{
  v2 = sub_2405EE86C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E7074(uint64_t a1)
{
  v2 = sub_2405EE86C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E70B0(uint64_t a1)
{
  v2 = sub_2405EE5D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E70EC(uint64_t a1)
{
  v2 = sub_2405EE5D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7128(uint64_t a1)
{
  v2 = sub_2405EEA1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E7164(uint64_t a1)
{
  v2 = sub_2405EEA1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E71A0(uint64_t a1)
{
  v2 = sub_2405EE710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E71DC(uint64_t a1)
{
  v2 = sub_2405EE710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7218(uint64_t a1)
{
  v2 = sub_2405EEB6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E7254(uint64_t a1)
{
  v2 = sub_2405EEB6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7290(uint64_t a1)
{
  v2 = sub_2405EEA70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E72CC(uint64_t a1)
{
  v2 = sub_2405EEA70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E7308(uint64_t a1)
{
  v2 = sub_2405EE974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E7344(uint64_t a1)
{
  v2 = sub_2405EE974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MachRepairMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80D0, &qword_240765580);
  v113 = *(v2 - 8);
  v114 = v2;
  v3 = *(v113 + 64);
  MEMORY[0x28223BE20](v2);
  v112 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80D8, &qword_240765588);
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = *(v108 + 64);
  MEMORY[0x28223BE20](v5);
  v105 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E0, &qword_240765590);
  v110 = *(v8 - 8);
  v111 = v8;
  v9 = *(v110 + 64);
  MEMORY[0x28223BE20](v8);
  v107 = &v85 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  v11 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v85 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80F0, &unk_2407655A0);
  v102 = *(v104 - 8);
  v13 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v85 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v15 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v100 = &v85 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80F8, &qword_2407655B0);
  v97 = *(v99 - 8);
  v17 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v96 = &v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8100, &qword_2407655B8);
  v94 = *(v19 - 8);
  v95 = v19;
  v20 = *(v94 + 64);
  MEMORY[0x28223BE20](v19);
  v91 = &v85 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8108, &qword_2407655C0);
  v92 = *(v22 - 8);
  v93 = v22;
  v23 = *(v92 + 64);
  MEMORY[0x28223BE20](v22);
  v90 = &v85 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8110, &qword_2407655C8);
  v88 = *(v25 - 8);
  v89 = v25;
  v26 = *(v88 + 64);
  MEMORY[0x28223BE20](v25);
  v87 = &v85 - v27;
  v115 = type metadata accessor for RepairModel();
  v28 = *(*(v115 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v115);
  v86 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v85 - v31;
  v33 = type metadata accessor for MachRepairMessage();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8118, &qword_2407655D0);
  v118 = *(v37 - 8);
  v38 = *(v118 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v85 - v39;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405EE584();
  v117 = v40;
  sub_24075AF74();
  sub_2405F0F98(v116, v36, type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v46 = v100;
        sub_2405E150C(v36, v100, &qword_27E4B8000, &unk_240776AD0);
        LOBYTE(v127) = 4;
        sub_2405EE86C();
        v47 = v101;
        v44 = v117;
        sub_24075AB54();
        sub_2405EE8C0();
        v48 = v104;
        sub_24075ABE4();
        (*(v102 + 8))(v47, v48);
        v49 = &qword_27E4B8000;
        v50 = &unk_240776AD0;
      }

      else
      {
        v46 = v106;
        sub_2405E150C(v36, v106, &qword_27E4B80E8, &qword_240765598);
        LOBYTE(v127) = 5;
        sub_2405EE764();
        v74 = v107;
        v44 = v117;
        sub_24075AB54();
        sub_2405EE7B8();
        v75 = v111;
        sub_24075ABE4();
        (*(v110 + 8))(v74, v75);
        v49 = &qword_27E4B80E8;
        v50 = &qword_240765598;
      }

      sub_2405B8A50(v46, v49, v50);
      return (*(v118 + 8))(v44, v37);
    }

    v58 = v37;
    if (EnumCaseMultiPayload == 6)
    {
      v59 = *v36;
      v60 = *(v36 + 1);
      v61 = *(v36 + 3);
      v109 = *(v36 + 2);
      v116 = v61;
      v62 = *(v36 + 4);
      v63 = v36[40];
      LOBYTE(v127) = 7;
      sub_2405EE5D8();
      v64 = v112;
      v65 = v117;
      sub_24075AB54();
      v115 = v59;
      *&v127 = v59;
      *(&v127 + 1) = v60;
      v110 = v62;
      v111 = v60;
      v66 = v109;
      *&v128 = v109;
      *(&v128 + 1) = v116;
      *&v129 = v62;
      BYTE8(v129) = v63;
      sub_2405EE62C();
      v67 = v114;
      sub_24075ABE4();
      (*(v113 + 8))(v64, v67);
      (*(v118 + 8))(v65, v58);
      return sub_2405EE680(v115, v111, v66, v116, v110, v63);
    }

    else
    {
      LOBYTE(v127) = 6;
      sub_2405EE710();
      v83 = v105;
      v84 = v117;
      sub_24075AB54();
      (*(v108 + 8))(v83, v109);
      return (*(v118 + 8))(v84, v58);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v68 = *(v36 + 5);
        v131 = *(v36 + 4);
        v132 = v68;
        v133 = *(v36 + 6);
        v134 = *(v36 + 14);
        v69 = *(v36 + 1);
        v127 = *v36;
        v128 = v69;
        v70 = *(v36 + 3);
        v129 = *(v36 + 2);
        v130 = v70;
        LOBYTE(v119) = 1;
        sub_2405EEA70();
        v71 = v90;
        v72 = v117;
        sub_24075AB54();
        v123 = v131;
        v124 = v132;
        v125 = v133;
        v126 = v134;
        v119 = v127;
        v120 = v128;
        v121 = v129;
        v122 = v130;
        sub_2405EEAC4();
        v73 = v93;
        sub_24075ABE4();
        (*(v92 + 8))(v71, v73);
        (*(v118 + 8))(v72, v37);
        return sub_2405EEB18(&v127);
      }

      sub_2405EEC14(v36, v32, type metadata accessor for RepairModel);
      LOBYTE(v127) = 0;
      sub_2405EEB6C();
      v43 = v87;
      v44 = v117;
      sub_24075AB54();
      sub_2405F1000(&qword_27E4B8150, type metadata accessor for RepairModel);
      v45 = v89;
      sub_24075ABE4();
      (*(v88 + 8))(v43, v45);
      sub_2405F10F8(v32, type metadata accessor for RepairModel);
      return (*(v118 + 8))(v44, v37);
    }

    v51 = v37;
    if (EnumCaseMultiPayload == 2)
    {
      v52 = v36;
      v53 = v86;
      sub_2405EEC14(v52, v86, type metadata accessor for RepairModel);
      LOBYTE(v127) = 2;
      sub_2405EEA1C();
      v54 = v91;
      v55 = v117;
      sub_24075AB54();
      sub_2405F1000(&qword_27E4B8150, type metadata accessor for RepairModel);
      v56 = v95;
      sub_24075ABE4();
      (*(v94 + 8))(v54, v56);
      sub_2405F10F8(v53, type metadata accessor for RepairModel);
      return (*(v118 + 8))(v55, v51);
    }

    else
    {
      v77 = *v36;
      v76 = *(v36 + 1);
      v78 = *(v36 + 2);
      v79 = *(v36 + 3);
      LOBYTE(v127) = 3;
      sub_2405EE974();
      v80 = v96;
      v81 = v117;
      sub_24075AB54();
      *&v127 = v77;
      *(&v127 + 1) = v76;
      *&v128 = v78;
      *(&v128 + 1) = v79;
      sub_2405EE9C8();
      v82 = v99;
      sub_24075ABE4();
      (*(v97 + 8))(v80, v82);
      (*(v118 + 8))(v81, v51);
    }
  }
}

uint64_t MachRepairMessage.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v124 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v122 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v122 - v9;
  v11 = type metadata accessor for RepairModel();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v122 - v16);
  v18 = type metadata accessor for MachRepairMessage();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2405F0F98(v2, v21, type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return MEMORY[0x245CC6BA0](6);
      }

      v51 = *v21;
      v52 = *(v21 + 1);
      v53 = *(v21 + 2);
      v54 = *(v21 + 3);
      v55 = *(v21 + 4);
      v56 = v21[40];
      v57 = v124;
      MEMORY[0x245CC6BA0](7);
      *&v125[0] = v51;
      *(&v125[0] + 1) = v52;
      *&v125[1] = v53;
      *(&v125[1] + 1) = v54;
      *&v125[2] = v55;
      BYTE8(v125[2]) = v56;
      RepairError.hash(into:)(v57);
      return sub_2405EE680(v51, v52, v53, v54, v55, v56);
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2405E150C(v21, v10, &qword_27E4B8000, &unk_240776AD0);
      v35 = v124;
      MEMORY[0x245CC6BA0](4);
      sub_2405DA794(v35);
      v36 = v10;
      v37 = &qword_27E4B8000;
      v38 = &unk_240776AD0;
      return sub_2405B8A50(v36, v37, v38);
    }

    v66 = v6;
    sub_2405E150C(v21, v6, &qword_27E4B80E8, &qword_240765598);
    v67 = v124;
    MEMORY[0x245CC6BA0](5);
    MEMORY[0x245CC6BE0](*v6);
    MEMORY[0x245CC6BE0](v6[1]);
    v68 = (v6 + *(v3 + 32));
    v69 = *v68;
    v70 = v68[1];
    sub_24075A114();
    v71 = v11;
    v72 = v67;
    v73 = v68 + *(v71 + 20);
    MEMORY[0x245CC6BA0](*v73);
    v74 = *(v73 + 3);
    v75 = *(v73 + 8);
    v76 = *(v73 + 18);
    v77 = v73[38];
    v125[0] = *(v73 + 8);
    *&v125[1] = v74;
    BYTE14(v125[1]) = v77;
    WORD6(v125[1]) = v76;
    DWORD2(v125[1]) = v75;
    RemoteRole.hash(into:)();
    v78 = v73[39];
    sub_24075AE94();
    v79 = v73[88];
    if (v79 > 0xFC)
    {
      if (v79 == 253)
      {
        v80 = 2;
      }

      else
      {
        v80 = v79 == 254;
      }
    }

    else
    {
      switch(v79)
      {
        case 0xFAu:
          v80 = 6;
          break;
        case 0xFBu:
          v80 = 4;
          break;
        case 0xFCu:
          v80 = 3;
          break;
        default:
          v93 = *(v73 + 9);
          v92 = *(v73 + 10);
          v94 = *(v73 + 40);
          v122 = *(v73 + 56);
          v123 = v94;
          MEMORY[0x245CC6BA0](5);
          v125[0] = v123;
          v125[1] = v122;
          *&v125[2] = v93;
          *(&v125[2] + 1) = v92;
          LOBYTE(v125[3]) = v79;
          SetupError.hash(into:)(v67);
          goto LABEL_73;
      }
    }

    MEMORY[0x245CC6BA0](v80);
LABEL_73:
    memcpy(v125, v73 + 96, 0x131uLL);
    DiscoveryModel.hash(into:)(v67);
    v113 = type metadata accessor for SetupModel();
    v114 = &v73[*(v113 + 36)];
    AuthenticationModel.hash(into:)(v72);
    v115 = &v73[*(v113 + 40)];
    v116 = SignInModel.hash(into:)(v72);
    v117 = v68 + *(v71 + 24);
    v118 = v117[40];
    if (v118 <= 0xFC)
    {
      if (v118 == 251)
      {
        v119 = 5;
      }

      else
      {
        if (v118 != 252)
        {
          v120 = *(v117 + 4);
          v121 = *v117;
          v122 = *(v117 + 1);
          v123 = v121;
          MEMORY[0x245CC6BA0](4);
          v125[0] = v123;
          v125[1] = v122;
          *&v125[2] = v120;
          BYTE8(v125[2]) = v118;
          RepairError.hash(into:)(v72);
          goto LABEL_82;
        }

        v119 = 3;
      }
    }

    else if (v118 == 253)
    {
      v119 = 2;
    }

    else
    {
      v119 = v118 == 254;
    }

    MEMORY[0x245CC6BA0](v119, v116);
LABEL_82:
    v37 = &qword_27E4B80E8;
    v38 = &qword_240765598;
    v36 = v66;
    return sub_2405B8A50(v36, v37, v38);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v81 = *v21;
      v82 = *(v21 + 1);
      v83 = *(v21 + 2);
      v84 = *(v21 + 3);
      v85 = v124;
      MEMORY[0x245CC6BA0](3);
      sub_24075A114();
      sub_2405ED470(v85, v84);
    }

    v39 = v11;
    sub_2405EEC14(v21, v15, type metadata accessor for RepairModel);
    v40 = v124;
    MEMORY[0x245CC6BA0](2);
    v41 = *v15;
    v42 = v15[1];
    sub_24075A114();
    v43 = v15 + *(v39 + 20);
    MEMORY[0x245CC6BA0](*v43);
    v44 = *(v43 + 3);
    v45 = *(v43 + 8);
    v46 = *(v43 + 18);
    v47 = v43[38];
    v125[0] = *(v43 + 8);
    *&v125[1] = v44;
    BYTE14(v125[1]) = v47;
    WORD6(v125[1]) = v46;
    DWORD2(v125[1]) = v45;
    RemoteRole.hash(into:)();
    v48 = v43[39];
    sub_24075AE94();
    v49 = v43[88];
    if (v49 > 0xFC)
    {
      if (v49 == 253)
      {
        v50 = 2;
      }

      else
      {
        v50 = v49 == 254;
      }
    }

    else
    {
      switch(v49)
      {
        case 0xFAu:
          v50 = 6;
          break;
        case 0xFBu:
          v50 = 4;
          break;
        case 0xFCu:
          v50 = 3;
          break;
        default:
          v90 = *(v43 + 9);
          v89 = *(v43 + 10);
          v91 = *(v43 + 40);
          v122 = *(v43 + 56);
          v123 = v91;
          MEMORY[0x245CC6BA0](5);
          v125[0] = v123;
          v125[1] = v122;
          *&v125[2] = v90;
          *(&v125[2] + 1) = v89;
          LOBYTE(v125[3]) = v49;
          SetupError.hash(into:)(v40);
          goto LABEL_61;
      }
    }

    MEMORY[0x245CC6BA0](v50);
LABEL_61:
    memcpy(v125, v43 + 96, 0x131uLL);
    DiscoveryModel.hash(into:)(v40);
    v104 = type metadata accessor for SetupModel();
    v105 = &v43[*(v104 + 36)];
    AuthenticationModel.hash(into:)(v40);
    v106 = &v43[*(v104 + 40)];
    v107 = SignInModel.hash(into:)(v40);
    v108 = v15 + *(v39 + 24);
    v109 = v108[40];
    if (v109 <= 0xFC)
    {
      if (v109 == 251)
      {
        v110 = 5;
      }

      else
      {
        if (v109 != 252)
        {
          v111 = *(v108 + 4);
          v112 = *v108;
          v122 = *(v108 + 1);
          v123 = v112;
          MEMORY[0x245CC6BA0](4);
          v125[0] = v123;
          v125[1] = v122;
          *&v125[2] = v111;
          BYTE8(v125[2]) = v109;
          RepairError.hash(into:)(v40);
          return sub_2405F10F8(v15, type metadata accessor for RepairModel);
        }

        v110 = 3;
      }
    }

    else if (v109 == 253)
    {
      v110 = 2;
    }

    else
    {
      v110 = v109 == 254;
    }

    MEMORY[0x245CC6BA0](v110, v107);
    return sub_2405F10F8(v15, type metadata accessor for RepairModel);
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = v11;
    sub_2405EEC14(v21, v17, type metadata accessor for RepairModel);
    v24 = v124;
    MEMORY[0x245CC6BA0](0);
    v25 = *v17;
    v26 = v17[1];
    sub_24075A114();
    v27 = v17 + *(v23 + 20);
    MEMORY[0x245CC6BA0](*v27);
    v28 = *(v27 + 3);
    v29 = *(v27 + 8);
    v30 = *(v27 + 18);
    v31 = v27[38];
    v125[0] = *(v27 + 8);
    *&v125[1] = v28;
    BYTE14(v125[1]) = v31;
    WORD6(v125[1]) = v30;
    DWORD2(v125[1]) = v29;
    RemoteRole.hash(into:)();
    v32 = v27[39];
    sub_24075AE94();
    v33 = v27[88];
    if (v33 > 0xFC)
    {
      if (v33 == 253)
      {
        v34 = 2;
      }

      else
      {
        v34 = v33 == 254;
      }
    }

    else
    {
      switch(v33)
      {
        case 0xFAu:
          v34 = 6;
          break;
        case 0xFBu:
          v34 = 4;
          break;
        case 0xFCu:
          v34 = 3;
          break;
        default:
          v87 = *(v27 + 9);
          v86 = *(v27 + 10);
          v88 = *(v27 + 40);
          v122 = *(v27 + 56);
          v123 = v88;
          MEMORY[0x245CC6BA0](5);
          v125[0] = v123;
          v125[1] = v122;
          *&v125[2] = v87;
          *(&v125[2] + 1) = v86;
          LOBYTE(v125[3]) = v33;
          SetupError.hash(into:)(v24);
          goto LABEL_49;
      }
    }

    MEMORY[0x245CC6BA0](v34);
LABEL_49:
    memcpy(v125, v27 + 96, 0x131uLL);
    DiscoveryModel.hash(into:)(v24);
    v95 = type metadata accessor for SetupModel();
    v96 = &v27[*(v95 + 36)];
    AuthenticationModel.hash(into:)(v24);
    v97 = &v27[*(v95 + 40)];
    v98 = SignInModel.hash(into:)(v24);
    v99 = v17 + *(v23 + 24);
    v100 = v99[40];
    if (v100 <= 0xFC)
    {
      if (v100 == 251)
      {
        v101 = 5;
      }

      else
      {
        if (v100 != 252)
        {
          v102 = *(v99 + 4);
          v103 = *v99;
          v122 = *(v99 + 1);
          v123 = v103;
          MEMORY[0x245CC6BA0](4);
          v125[0] = v123;
          v125[1] = v122;
          *&v125[2] = v102;
          BYTE8(v125[2]) = v100;
          RepairError.hash(into:)(v24);
          return sub_2405F10F8(v17, type metadata accessor for RepairModel);
        }

        v101 = 3;
      }
    }

    else if (v100 == 253)
    {
      v101 = 2;
    }

    else
    {
      v101 = v100 == 254;
    }

    MEMORY[0x245CC6BA0](v101, v98);
    return sub_2405F10F8(v17, type metadata accessor for RepairModel);
  }

  v59 = *(v21 + 5);
  v125[4] = *(v21 + 4);
  v125[5] = v59;
  v125[6] = *(v21 + 6);
  *&v125[7] = *(v21 + 14);
  v60 = *(v21 + 1);
  v125[0] = *v21;
  v125[1] = v60;
  v61 = *(v21 + 3);
  v125[2] = *(v21 + 2);
  v125[3] = v61;
  v62 = v124;
  MEMORY[0x245CC6BA0](1);
  v63 = *&v125[5];
  v64 = *&v125[6];
  v65 = *&v125[7];
  sub_24075A114();
  sub_2405ECD74(v62, v63);
  sub_24075AE94();
  if (v64)
  {
    sub_24075A114();
    sub_2405ED470(v62, v65);
  }

  return sub_2405EEB18(v125);
}

uint64_t MachRepairMessage.hashValue.getter()
{
  sub_24075AE64();
  MachRepairMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t MachRepairMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8198, &qword_2407655D8);
  v121 = *(v120 - 8);
  v3 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  v132 = &v99 - v4;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81A0, &qword_2407655E0);
  v117 = *(v131 - 8);
  v5 = *(v117 + 64);
  MEMORY[0x28223BE20](v131);
  v125 = &v99 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81A8, &qword_2407655E8);
  v118 = *(v119 - 8);
  v7 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v126 = &v99 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81B0, &qword_2407655F0);
  v115 = *(v116 - 8);
  v9 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v124 = &v99 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81B8, &qword_2407655F8);
  v114 = *(v111 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v111);
  v123 = &v99 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81C0, &qword_240765600);
  v112 = *(v113 - 8);
  v13 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v130 = &v99 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81C8, &qword_240765608);
  v109 = *(v110 - 8);
  v15 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v129 = &v99 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81D0, &qword_240765610);
  v107 = *(v108 - 8);
  v17 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v122 = &v99 - v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B81D8, &unk_240765618);
  v134 = *(v135 - 8);
  v19 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v21 = &v99 - v20;
  v127 = type metadata accessor for MachRepairMessage();
  v22 = *(*(v127 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v127);
  v104 = (&v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v106 = &v99 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v99 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v99 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v99 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v99 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v99 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v99 - v41;
  v43 = a1[3];
  v44 = a1[4];
  v149 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_2405EE584();
  v128 = v21;
  v45 = v136;
  sub_24075AF34();
  if (!v45)
  {
    v101 = v40;
    v99 = v37;
    v100 = v31;
    v102 = v34;
    v46 = v129;
    v47 = v130;
    v136 = 0;
    v48 = v131;
    v49 = v132;
    v103 = v42;
    v50 = v133;
    v51 = v128;
    v52 = sub_24075AB34();
    v53 = (2 * *(v52 + 16)) | 1;
    v145 = v52;
    v146 = v52 + 32;
    v147 = 0;
    v148 = v53;
    v54 = sub_2405B8AEC();
    if (v54 == 8 || v147 != v148 >> 1)
    {
      v61 = sub_24075A8C4();
      swift_allocError();
      v63 = v62;
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v63 = v127;
      v65 = v135;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
      swift_willThrow();
      (*(v134 + 8))(v51, v65);
      goto LABEL_10;
    }

    if (v54 <= 3u)
    {
      v55 = v136;
      if (v54 > 1u)
      {
        if (v54 == 2)
        {
          LOBYTE(v137) = 2;
          sub_2405EEA1C();
          v57 = v135;
          sub_24075AA54();
          if (!v55)
          {
            type metadata accessor for RepairModel();
            sub_2405F1000(&qword_27E4B81F0, type metadata accessor for RepairModel);
            v71 = v102;
            v72 = v113;
            sub_24075AAF4();
            (*(v112 + 8))(v47, v72);
            (*(v134 + 8))(v51, v57);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v60 = v71;
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        LOBYTE(v137) = 3;
        sub_2405EE974();
        v83 = v123;
        v77 = v135;
        sub_24075AA54();
        if (!v55)
        {
          sub_2405EEDE4();
          v84 = v111;
          sub_24075AAF4();
          (*(v114 + 8))(v83, v84);
          (*(v134 + 8))(v51, v77);
          swift_unknownObjectRelease();
          v92 = v138;
          v89 = v100;
          *v100 = v137;
          v89[1] = v92;
          goto LABEL_35;
        }
      }

      else
      {
        if (!v54)
        {
          LOBYTE(v137) = 0;
          sub_2405EEB6C();
          v56 = v122;
          v57 = v135;
          sub_24075AA54();
          if (!v55)
          {
            type metadata accessor for RepairModel();
            sub_2405F1000(&qword_27E4B81F0, type metadata accessor for RepairModel);
            v58 = v101;
            v59 = v108;
            sub_24075AAF4();
            (*(v107 + 8))(v56, v59);
            (*(v134 + 8))(v51, v57);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v60 = v58;
LABEL_36:
            v98 = v103;
            sub_2405EEC14(v60, v103, type metadata accessor for MachRepairMessage);
            v73 = v50;
            goto LABEL_37;
          }

          goto LABEL_32;
        }

        LOBYTE(v137) = 1;
        sub_2405EEA70();
        v77 = v135;
        sub_24075AA54();
        if (!v55)
        {
          sub_2405EEE38();
          v78 = v110;
          sub_24075AAF4();
          v79 = (v134 + 8);
          (*(v109 + 8))(v46, v78);
          (*v79)(v51, v135);
          swift_unknownObjectRelease();
          v88 = v142;
          v89 = v99;
          *(v99 + 4) = v141;
          v89[5] = v88;
          v89[6] = v143;
          *(v89 + 14) = v144;
          v90 = v138;
          *v89 = v137;
          v89[1] = v90;
          v91 = v140;
          v89[2] = v139;
          v89[3] = v91;
LABEL_35:
          swift_storeEnumTagMultiPayload();
          v60 = v89;
          goto LABEL_36;
        }
      }

      (*(v134 + 8))(v51, v77);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v149);
    }

    v57 = v135;
    if (v54 <= 5u)
    {
      if (v54 == 4)
      {
        LOBYTE(v137) = 4;
        sub_2405EE86C();
        v67 = v124;
        v68 = v136;
        sub_24075AA54();
        if (!v68)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
          sub_2405EED30();
          v69 = v105;
          v70 = v116;
          sub_24075AAF4();
          (*(v115 + 8))(v67, v70);
          (*(v134 + 8))(v51, v57);
          swift_unknownObjectRelease();
LABEL_34:
          swift_storeEnumTagMultiPayload();
          v60 = v69;
          goto LABEL_36;
        }
      }

      else
      {
        LOBYTE(v137) = 5;
        sub_2405EE764();
        v80 = v126;
        v81 = v136;
        sub_24075AA54();
        if (!v81)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
          sub_2405EEC7C();
          v69 = v106;
          v82 = v119;
          sub_24075AAF4();
          (*(v118 + 8))(v80, v82);
          (*(v134 + 8))(v51, v57);
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

LABEL_32:
      (*(v134 + 8))(v51, v57);
      goto LABEL_10;
    }

    v73 = v50;
    if (v54 == 6)
    {
      LOBYTE(v137) = 6;
      sub_2405EE710();
      v74 = v125;
      v75 = v136;
      sub_24075AA54();
      v76 = v134;
      if (v75)
      {
        (*(v134 + 8))(v51, v57);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v149);
      }

      (*(v117 + 8))(v74, v48);
      (*(v76 + 8))(v51, v57);
      swift_unknownObjectRelease();
      v98 = v103;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      LOBYTE(v137) = 7;
      sub_2405EE5D8();
      v85 = v136;
      sub_24075AA54();
      v86 = v134;
      if (v85)
      {
        goto LABEL_32;
      }

      sub_2405EEBC0();
      v87 = v120;
      sub_24075AAF4();
      (*(v121 + 8))(v49, v87);
      (*(v86 + 8))(v51, v57);
      swift_unknownObjectRelease();
      v93 = v139;
      v94 = BYTE8(v139);
      v95 = v138;
      v96 = v104;
      *v104 = v137;
      v96[1] = v95;
      *(v96 + 4) = v93;
      *(v96 + 40) = v94;
      swift_storeEnumTagMultiPayload();
      v97 = v96;
      v98 = v103;
      sub_2405EEC14(v97, v103, type metadata accessor for MachRepairMessage);
    }

LABEL_37:
    sub_2405EEC14(v98, v73, type metadata accessor for MachRepairMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(v149);
}

uint64_t sub_2405E9E6C()
{
  sub_24075AE64();
  MachRepairMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405E9EB0()
{
  sub_24075AE64();
  MachRepairMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2405E9EEC(uint64_t a1)
{
  v2 = sub_2405EEF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E9F28(uint64_t a1)
{
  v2 = sub_2405EEF34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405E9F64(uint64_t a1)
{
  v2 = sub_2405EF138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405E9FA0(uint64_t a1)
{
  v2 = sub_2405EF138();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2405E9FDC()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x64657473656ELL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0xD000000000000017;
  if (v1 == 4)
  {
    v4 = 0x636972656E6567;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x656C6C65636E6163;
  if (v1 != 2)
  {
    v5 = 0x636E614372657375;
  }

  if (*v0)
  {
    v2 = 0x4364696C61766E69;
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
    return v4;
  }
}

uint64_t sub_2405EA0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405F0C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405EA11C(uint64_t a1)
{
  v2 = sub_2405EEE8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA158(uint64_t a1)
{
  v2 = sub_2405EEE8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA194(uint64_t a1)
{
  v2 = sub_2405EF090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA1D0(uint64_t a1)
{
  v2 = sub_2405EF090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA20C(uint64_t a1)
{
  v2 = sub_2405EF18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA248(uint64_t a1)
{
  v2 = sub_2405EF18C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA284(uint64_t a1)
{
  v2 = sub_2405EEF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA2C0(uint64_t a1)
{
  v2 = sub_2405EEF88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA2FC(uint64_t a1)
{
  v2 = sub_2405EEEE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA338(uint64_t a1)
{
  v2 = sub_2405EEEE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA374(uint64_t a1)
{
  v2 = sub_2405EF1E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA3B0(uint64_t a1)
{
  v2 = sub_2405EF1E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405EA3EC(uint64_t a1)
{
  v2 = sub_2405EF0E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405EA428(uint64_t a1)
{
  v2 = sub_2405EF0E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RepairError.encode(to:)(void *a1)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8210, &qword_240765628);
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v64 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8218, &qword_240765630);
  v69 = *(v70 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v64 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8220, &qword_240765638);
  v77 = *(v78 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v64 - v8;
  *&v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8228, &qword_240765640);
  *&v87 = *(v88 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  *&v86 = &v64 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8230, &qword_240765648);
  v66 = *(v67 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8238, &qword_240765650);
  v72 = *(v73 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8240, &qword_240765658);
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v64 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8248, &qword_240765660);
  v74 = *(v75 - 8);
  v19 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8250, &qword_240765668);
  v23 = *(v22 - 8);
  v90 = v22;
  v91 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v64 - v25;
  v27 = *v1;
  *&v89 = v1[1];
  v28 = v1[3];
  v84 = v1[2];
  v82 = v28;
  v83 = v1[4];
  v29 = *(v1 + 40);
  v30 = a1;
  v32 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(v30, v32);
  sub_2405EEE8C();
  v93 = v26;
  sub_24075AF74();
  if (v29 <= 1)
  {
    v48 = v85;
    v47 = v86;
    v49 = v15;
    v50 = v87;
    v51 = v88;
    if (v29)
    {
      LOBYTE(v94) = 4;
      sub_2405EF090();
      v33 = v90;
      v60 = v93;
      sub_24075AB54();
      LOBYTE(v94) = 0;
      v61 = v92;
      sub_24075ABB4();
      if (v61)
      {
        (*(v50 + 8))(v47, v51);
      }

      else
      {
        LOBYTE(v94) = 1;
        sub_24075ABD4();
        LOBYTE(v94) = 2;
        sub_24075ABB4();
        (*(v50 + 8))(v47, v51);
      }

      v45 = *(v91 + 8);
      v46 = v60;
      return v45(v46, v33);
    }

    LOBYTE(v94) = 1;
    sub_2405EF18C();
    v52 = v90;
    v53 = v93;
    sub_24075AB54();
    sub_24075ABB4();
    (*(v48 + 8))(v18, v49);
    return (*(v91 + 8))(v53, v52);
  }

  if (v29 == 2)
  {
    LOBYTE(v94) = 5;
    sub_2405EEF88();
    v54 = v76;
    v52 = v90;
    v53 = v93;
    sub_24075AB54();
    *&v94 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    sub_2405EEFDC();
    v55 = v78;
    sub_24075ABE4();
    (*(v77 + 8))(v54, v55);
    return (*(v91 + 8))(v53, v52);
  }

  v33 = v90;
  if (v29 == 3)
  {
    v34 = *(v27 + 48);
    v35 = *(v27 + 56);
    v36 = *(v27 + 64);
    v37 = *(v27 + 72);
    v86 = *(v27 + 88);
    v87 = v37;
    v38 = *(v27 + 112);
    v85 = *(v27 + 104);
    v39 = *(v27 + 120);
    LOBYTE(v94) = 7;
    sub_2405EEEE0();
    v40 = *(v27 + 16);
    v88 = *(v27 + 32);
    v89 = v40;
    v41 = v79;
    v42 = v93;
    sub_24075AB54();
    v94 = v89;
    v95 = v88;
    v96 = v34;
    v97 = v35;
    v98 = v36;
    v99 = 0;
    sub_2405B0D90();
    v43 = v81;
    v44 = v92;
    sub_24075ABE4();
    if (v44)
    {
      (*(v80 + 8))(v41, v43);
      v45 = *(v91 + 8);
      v46 = v42;
    }

    else
    {
      v94 = v87;
      v95 = v86;
      v96 = v85;
      v97 = v38;
      v98 = v39;
      v99 = 1;
      sub_24075ABE4();
      (*(v80 + 8))(v41, v43);
      v45 = *(v91 + 8);
      v46 = v93;
    }

    return v45(v46, v33);
  }

  if (v84 | v89 | v27 | v82 | v83)
  {
    v57 = v84 | v89 | v82 | v83;
    if (v27 != 1 || v57)
    {
      if (v27 != 2 || v57)
      {
        LOBYTE(v94) = 6;
        sub_2405EEF34();
        v63 = v68;
        v59 = v93;
        sub_24075AB54();
        (*(v69 + 8))(v63, v70);
      }

      else
      {
        LOBYTE(v94) = 3;
        sub_2405EF0E4();
        v62 = v65;
        v59 = v93;
        sub_24075AB54();
        (*(v66 + 8))(v62, v67);
      }
    }

    else
    {
      LOBYTE(v94) = 2;
      sub_2405EF138();
      v58 = v71;
      v59 = v93;
      sub_24075AB54();
      (*(v72 + 8))(v58, v73);
    }
  }

  else
  {
    LOBYTE(v94) = 0;
    sub_2405EF1E0();
    v59 = v93;
    sub_24075AB54();
    (*(v74 + 8))(v21, v75);
  }

  return (*(v91 + 8))(v59, v33);
}

void RepairError.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  if (v8 <= 1)
  {
    if (*(v1 + 40))
    {
      MEMORY[0x245CC6BA0](4);
      sub_24075A114();
      MEMORY[0x245CC6BA0](v6);
    }

    else
    {
      MEMORY[0x245CC6BA0](1);
    }

    sub_24075A114();
  }

  else if (v8 == 2)
  {
    MEMORY[0x245CC6BA0](5);
    sub_2405ECF84(a1, v3);
  }

  else if (v8 == 3)
  {
    v9 = *(v3 + 48);
    v10 = *(v3 + 56);
    v11 = *(v3 + 64);
    v12 = *(v3 + 104);
    v13 = *(v3 + 112);
    v14 = *(v3 + 120);
    v18 = *(v3 + 32);
    v19 = *(v3 + 16);
    v15 = *(v3 + 88);
    v20 = *(v3 + 72);
    MEMORY[0x245CC6BA0](7);
    SetupError.hash(into:)(a1);
    SetupError.hash(into:)(a1);
  }

  else
  {
    if (v6 | v4 | v3 | v5 | v7)
    {
      v16 = v6 | v4 | v5 | v7;
      if (v3 != 1 || v16)
      {
        if (v3 != 2 || v16)
        {
          v17 = 6;
        }

        else
        {
          v17 = 3;
        }
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x245CC6BA0](v17);
  }
}

uint64_t RepairError.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *&v5[9] = *v0;
  *&v5[11] = v3;
  v5[13] = v1;
  v6 = v2;
  sub_24075AE64();
  RepairError.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t RepairError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82B0, &qword_240765678);
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v109 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82B8, &qword_240765680);
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v6);
  v108 = &v83 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82C0, &qword_240765688);
  v98 = *(v100 - 8);
  v9 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v103 = &v83 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82C8, &qword_240765690);
  v99 = *(v95 - 8);
  v11 = *(v99 + 64);
  MEMORY[0x28223BE20](v95);
  v107 = &v83 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82D0, &qword_240765698);
  v93 = *(v94 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v106 = &v83 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82D8, &qword_2407656A0);
  v90 = *(v92 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v105 = &v83 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82E0, &qword_2407656A8);
  v89 = *(v91 - 8);
  v17 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v19 = &v83 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82E8, &qword_2407656B0);
  v88 = *(v20 - 8);
  v21 = *(v88 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B82F0, &qword_2407656B8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v83 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2405EEE8C();
  v31 = v110;
  sub_24075AF34();
  if (!v31)
  {
    v84 = v23;
    v83 = v20;
    v85 = v19;
    v32 = v105;
    v33 = v106;
    v34 = v107;
    v35 = v108;
    v86 = 0;
    v36 = v109;
    v110 = v25;
    v87 = v24;
    v37 = sub_24075AB34();
    v38 = (2 * *(v37 + 16)) | 1;
    v112 = v37;
    v113 = v37 + 32;
    v114 = 0;
    v115 = v38;
    v39 = sub_2405B8AEC();
    if (v39 == 8 || v114 != v115 >> 1)
    {
      v43 = sub_24075A8C4();
      swift_allocError();
      v44 = v28;
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v46 = &type metadata for RepairError;
      v48 = v87;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v110 + 8))(v44, v48);
      goto LABEL_10;
    }

    if (v39 <= 3u)
    {
      v40 = v86;
      if (v39 > 1u)
      {
        if (v39 == 2)
        {
          LOBYTE(v116) = 2;
          sub_2405EF138();
          v58 = v32;
          v59 = v28;
          v60 = v87;
          sub_24075AA54();
          v61 = v104;
          v62 = v110;
          if (v40)
          {
            (*(v110 + 8))(v59, v60);
            goto LABEL_10;
          }

          (*(v90 + 8))(v58, v92);
          (*(v62 + 8))(v59, v60);
          swift_unknownObjectRelease();
          v56 = 0;
          v81 = 0;
          v77 = 0;
          v79 = 0;
          v80 = 4;
          v82 = 1;
        }

        else
        {
          LOBYTE(v116) = 3;
          sub_2405EF0E4();
          v42 = v87;
          sub_24075AA54();
          v61 = v104;
          v70 = v110;
          if (v40)
          {
LABEL_29:
            (*(v110 + 8))(v28, v42);
            goto LABEL_10;
          }

          (*(v93 + 8))(v33, v94);
          (*(v70 + 8))(v28, v42);
          swift_unknownObjectRelease();
          v56 = 0;
          v81 = 0;
          v77 = 0;
          v79 = 0;
          v80 = 4;
          v82 = 2;
        }

LABEL_37:
        *v61 = v82;
        *(v61 + 8) = v56;
        *(v61 + 16) = v81;
        *(v61 + 24) = v77;
        *(v61 + 32) = v79;
        *(v61 + 40) = v80;
        return __swift_destroy_boxed_opaque_existential_1(v111);
      }

      if (!v39)
      {
        LOBYTE(v116) = 0;
        sub_2405EF1E0();
        v41 = v84;
        v42 = v87;
        sub_24075AA54();
        if (v40)
        {
          goto LABEL_29;
        }

        (*(v88 + 8))(v41, v83);
        (*(v110 + 8))(v28, v42);
        swift_unknownObjectRelease();
        v82 = 0;
        v56 = 0;
        v81 = 0;
        v77 = 0;
        v79 = 0;
        v80 = 4;
        goto LABEL_36;
      }

      LOBYTE(v116) = 1;
      sub_2405EF18C();
      v64 = v85;
      v65 = v87;
      sub_24075AA54();
      if (!v40)
      {
        v66 = v91;
        v82 = sub_24075AAC4();
        v56 = v75;
        (*(v89 + 8))(v64, v66);
        (*(v110 + 8))(v28, v65);
        swift_unknownObjectRelease();
        v81 = 0;
        v77 = 0;
        v79 = 0;
        v80 = 0;
        goto LABEL_36;
      }

      (*(v110 + 8))(v28, v65);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v111);
    }

    v50 = v87;
    v51 = v110;
    if (v39 > 5u)
    {
      if (v39 != 6)
      {
        LOBYTE(v116) = 7;
        sub_2405EEEE0();
        v71 = v86;
        sub_24075AA54();
        if (v71)
        {
          (*(v51 + 8))(v28, v50);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v111);
        }

        v72 = v50;
        v73 = swift_allocObject();
        LOBYTE(v116) = 0;
        sub_2405B0DE4();
        v74 = v102;
        sub_24075AAF4();
        LOBYTE(v116) = 1;
        sub_24075AAF4();
        (*(v101 + 8))(v36, v74);
        (*(v51 + 8))(v28, v72);
        swift_unknownObjectRelease();
        v56 = 0;
        v81 = 0;
        v77 = 0;
        v79 = 0;
        v80 = 3;
        v82 = v73;
        goto LABEL_36;
      }

      LOBYTE(v116) = 6;
      sub_2405EEF34();
      v63 = v86;
      sub_24075AA54();
      if (!v63)
      {
        (*(v96 + 8))(v35, v97);
        (*(v51 + 8))(v28, v50);
        swift_unknownObjectRelease();
        v56 = 0;
        v81 = 0;
        v77 = 0;
        v79 = 0;
        v80 = 4;
        v82 = 3;
        goto LABEL_36;
      }
    }

    else if (v39 == 4)
    {
      LOBYTE(v116) = 4;
      sub_2405EF090();
      v52 = v86;
      sub_24075AA54();
      if (!v52)
      {
        LOBYTE(v116) = 0;
        v53 = v95;
        v54 = sub_24075AAC4();
        v56 = v55;
        v109 = v54;
        LOBYTE(v116) = 1;
        v57 = sub_24075AAE4();
        v108 = v28;
        v106 = v57;
        LOBYTE(v116) = 2;
        v76 = sub_24075AAC4();
        v86 = 0;
        v77 = v76;
        v79 = v78;
        (*(v99 + 8))(v34, v53);
        (*(v51 + 8))(v108, v50);
        swift_unknownObjectRelease();
        v80 = 1;
        v81 = v106;
        v82 = v109;
LABEL_36:
        v61 = v104;
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v116) = 5;
      sub_2405EEF88();
      v67 = v103;
      v68 = v86;
      sub_24075AA54();
      if (!v68)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
        sub_2405EF234();
        v69 = v100;
        sub_24075AAF4();
        (*(v98 + 8))(v67, v69);
        (*(v51 + 8))(v28, v50);
        swift_unknownObjectRelease();
        v56 = 0;
        v81 = 0;
        v77 = 0;
        v79 = 0;
        v82 = v116;
        v80 = 2;
        goto LABEL_36;
      }
    }

    (*(v51 + 8))(v28, v50);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_2405EC114(uint64_t a1)
{
  v2 = sub_2405F0F44();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2405EC150(uint64_t a1)
{
  v2 = sub_2405F0F44();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2405EC1C0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *&v5[9] = *v0;
  *&v5[11] = v3;
  v5[13] = v1;
  v6 = v2;
  sub_24075AE64();
  RepairError.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t sub_2405EC220()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *&v5[9] = *v0;
  *&v5[11] = v3;
  v5[13] = v1;
  v6 = v2;
  sub_24075AE64();
  RepairError.hash(into:)(v5);
  return sub_24075AED4();
}

uint64_t static RepairError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27E4B80C0;

  return v0;
}

uint64_t static RepairError.errorDomain.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27E4B80C0 = a1;
  off_27E4B80C8 = a2;
}

uint64_t RepairError.errorCode.getter()
{
  v1 = *(v0 + 40);
  if (v1 <= 1)
  {
    if (*(v0 + 40))
    {
      return 2004;
    }

    else
    {
      return 2001;
    }
  }

  else if (v1 == 2)
  {
    return 2005;
  }

  else if (v1 == 3)
  {
    return 2007;
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = v0[2];
    v6 = v0[3] | v0[4];
    if (v6 | *v0 | v5 | v4)
    {
      v7 = v6 | v5 | v4;
      if (v3 != 1 || v7)
      {
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v3 == 2;
        }

        if (v8)
        {
          return 2003;
        }

        else
        {
          return 2006;
        }
      }

      else
      {
        return 2002;
      }
    }

    else
    {
      return 2000;
    }
  }
}

unint64_t RepairError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8950, &unk_2407656C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  v8 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_24075A0B4();
  *(inited + 40) = v9;
  sub_2405EF2E8(v1, v2, v3, v4, v5, v6);
  v10 = RepairError.description.getter();
  v12 = v11;
  sub_2405EE680(v1, v2, v3, v4, v5, v6);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_2405BD228(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4BB680, &qword_240762680);
  return v13;
}

uint64_t RepairError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  if (v6 <= 1)
  {
    if (*(v0 + 40))
    {
      sub_24075A864();
      MEMORY[0x245CC5E60](0xD00000000000001CLL, 0x80000002407868F0);
      MEMORY[0x245CC5E60](v1, v2);
      MEMORY[0x245CC5E60](0x203A65646F63202CLL, 0xE800000000000000);
      v17 = sub_24075AC34();
      MEMORY[0x245CC5E60](v17);

      MEMORY[0x245CC5E60](0xD000000000000018, 0x8000000240786910);
      MEMORY[0x245CC5E60](v3, v5);
      return 0;
    }

    else
    {
      return 0xD000000000000034;
    }
  }

  else if (v6 == 2)
  {
    return 0xD00000000000002ALL;
  }

  else if (v6 == 3)
  {
    v7 = *(v1 + 48);
    v8 = *(v1 + 56);
    v9 = *(v1 + 64);
    v10 = *(v1 + 104);
    v11 = *(v1 + 112);
    v12 = *(v1 + 120);
    v18 = *(v1 + 32);
    v19 = *(v1 + 16);
    v20 = *(v1 + 88);
    v21 = *(v1 + 72);
    sub_24075A864();

    sub_2405B8998();
    v13 = sub_24075AE04();
    MEMORY[0x245CC5E60](v13);

    MEMORY[0x245CC5E60](8236, 0xE200000000000000);
    v14 = sub_24075AE04();
    MEMORY[0x245CC5E60](v14);

    return 0x652064657473654ELL;
  }

  else if (v4 | v2 | v1 | v3 | v5)
  {
    result = 0xD000000000000015;
    v16 = v4 | v2 | v3 | v5;
    if (v1 != 1 || v16)
    {
      if (v1 != 2 || v16)
      {
        return 0xD000000000000035;
      }

      else
      {
        return 0xD000000000000030;
      }
    }
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }

  return result;
}

uint64_t sub_2405EC854()
{
  swift_beginAccess();
  v0 = qword_27E4B80C0;

  return v0;
}

uint64_t sub_2405EC8A8()
{
  v1 = *(v0 + 40);
  if (v1 <= 1)
  {
    if (*(v0 + 40))
    {
      return 2004;
    }

    else
    {
      return 2001;
    }
  }

  else if (v1 == 2)
  {
    return 2005;
  }

  else if (v1 == 3)
  {
    return 2007;
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = v0[2];
    v6 = v0[3] | v0[4];
    if (v6 | *v0 | v5 | v4)
    {
      v7 = v6 | v5 | v4;
      if (v3 != 1 || v7)
      {
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v3 == 2;
        }

        if (v8)
        {
          return 2003;
        }

        else
        {
          return 2006;
        }
      }

      else
      {
        return 2002;
      }
    }

    else
    {
      return 2000;
    }
  }
}

unint64_t sub_2405EC944()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8950, &unk_2407656C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  v8 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_24075A0B4();
  *(inited + 40) = v9;
  sub_2405EF2E8(v1, v2, v3, v4, v5, v6);
  v10 = RepairError.description.getter();
  v12 = v11;
  sub_2405EE680(v1, v2, v3, v4, v5, v6);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_2405BD228(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4BB680, &qword_240762680);
  return v13;
}

void Error.into()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = *(v5 + 16);
  v13(&v29 - v14, v2, a1);
  if (!swift_dynamicCast() || (sub_240747724(v36), sub_2405AEA70(v29, v30, v31, v32, v33, v34, v35), v15 = v37, v37 == 255))
  {
    v13(v12, v2, a1);
    if (swift_dynamicCast())
    {
      v17 = v30;
      v16 = v29;
      v19 = v32;
      v18 = v31;
      v20 = v33;
      v15 = v34;
    }

    else
    {
      v13(v9, v2, a1);
      v21 = sub_24075ACB4();
      if (v21)
      {
        v22 = v21;
        (*(v5 + 8))(v9, a1);
      }

      else
      {
        v22 = swift_allocError();
        (*(v5 + 32))(v23, v9, a1);
      }

      v24 = sub_2407595C4();

      v25 = [v24 domain];
      v16 = sub_24075A0B4();
      v17 = v26;

      v18 = [v24 code];
      v27 = [v24 localizedDescription];
      v19 = sub_24075A0B4();
      v20 = v28;

      v15 = 1;
    }
  }

  else
  {
    v16 = v36[0];
    v17 = v36[1];
    v18 = v36[2];
    v19 = v36[3];
    v20 = v36[4];
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v15;
}

{
  v3 = v2;
  v6 = sub_24075ACB4();
  if (v6)
  {
    v7 = v6;
    (*(*(a1 - 8) + 8))(v3, a1);
  }

  else
  {
    v7 = swift_allocError();
    (*(*(a1 - 8) + 32))(v8, v3, a1);
  }

  v9 = sub_2407595C4();

  v10 = [v9 domain];
  v11 = sub_24075A0B4();
  v13 = v12;

  v14 = [v9 code];
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = 0;
}

{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = *(v6 + 16);
  v11(v28 - v12, v3, a1);
  if (swift_dynamicCast())
  {
    v13 = v28[1];
    v14 = v28[2];
    v15 = v28[3];
    v16 = v28[4];
    v18 = v28[5];
    v17 = v28[6];
    v19 = v29;
  }

  else
  {
    v11(v10, v3, a1);
    v20 = sub_24075ACB4();
    if (v20)
    {
      v21 = v20;
      (*(v6 + 8))(v10, a1);
    }

    else
    {
      v21 = swift_allocError();
      (*(v6 + 32))(v22, v10, a1);
    }

    v23 = sub_2407595C4();

    v24 = [v23 domain];
    v13 = sub_24075A0B4();
    v14 = v25;

    v15 = [v23 code];
    v26 = [v23 localizedDescription];
    v16 = sub_24075A0B4();
    v18 = v27;

    v17 = 0;
    v19 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19;
}

uint64_t sub_2405ECD74(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v27 = a1[2];
  v28 = v3;
  v29 = *(a1 + 8);
  v4 = a1[1];
  v25 = *a1;
  v26 = v4;
  sub_24075AED4();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v20)
  {
LABEL_8:
    v13 = (*(a2 + 48) + 96 * (__clz(__rbit64(v7)) | (i << 6)));
    v14 = v13[1];
    v23[0] = *v13;
    v23[1] = v14;
    v16 = v13[3];
    v15 = v13[4];
    v17 = v13[2];
    *&v24[9] = *(v13 + 73);
    v23[3] = v16;
    *v24 = v15;
    v23[2] = v17;
    sub_24075AE64();
    v18 = *&v24[16];
    sub_2405F1048(v23, v21);
    sub_24075A114();
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v18 != 1)
        {
LABEL_22:
          MEMORY[0x245CC6BA0](4);
          sub_2405ECF84(v22, v18);
          goto LABEL_20;
        }

        v19 = 1;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      switch(v18)
      {
        case 2:
          v19 = 2;
          break;
        case 3:
          v19 = 3;
          break;
        case 4:
          v19 = 5;
          break;
        default:
          goto LABEL_22;
      }
    }

    MEMORY[0x245CC6BA0](v19);
LABEL_20:
    v7 &= v7 - 1;
    sub_24075AE94();
    v20 = sub_24075AED4();
    result = sub_2405F10A4(v23);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x245CC6BA0](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_2405ECF84(__int128 *a1, uint64_t a2)
{
  v16 = a1[2];
  v17 = a1[3];
  v18 = *(a1 + 8);
  v14 = *a1;
  v15 = a1[1];
  sub_24075AED4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_24075A0B4();
    sub_24075AE64();
    v12 = v11;
    sub_24075A114();
    v13 = sub_24075AED4();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x245CC6BA0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2405ED0F0(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount();
  v39 = *(v4 - 1);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[3];
  *&v52[13] = a1[2];
  *&v52[15] = v8;
  v52[17] = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v38[1] = a1;
  *&v52[9] = v10;
  *&v52[11] = v9;
  v38[2] = sub_24075AED4();
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v40 = a2;

  v17 = 0;
  v18 = 0;
  while (v14)
  {
    v41 = v17;
LABEL_12:
    sub_2405F0F98(*(v40 + 48) + *(v39 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v7, type metadata accessor for IdMSAccount);
    sub_24075AE64();
    v22 = *v7;
    v23 = v7[1];
    sub_24075A114();
    v24 = v4[5];
    sub_2407595A4();
    sub_2405F1000(&qword_27E4B84E8, MEMORY[0x277CC8E50]);
    sub_24075A004();
    v25 = (v7 + v4[6]);
    v26 = v25[7];
    v48 = v25[6];
    v49 = v26;
    v27 = v25[9];
    v50 = v25[8];
    v51 = v27;
    v28 = v25[3];
    v44 = v25[2];
    v45 = v28;
    v29 = v25[5];
    v46 = v25[4];
    v47 = v29;
    v30 = v25[1];
    v42 = *v25;
    v43 = v30;
    IdMSAccount.Credential.hash(into:)();
    sub_2405ECF84(v52, *(v7 + v4[7]));
    v31 = v7 + v4[8];
    v32 = *v31;
    if (*v31 == 1)
    {
      sub_24075AE94();
      v33 = v41;
    }

    else
    {
      v34 = *(v31 + 1);
      sub_24075AE94();
      sub_24075AE94();
      if (v32)
      {
        v35 = v32;
        sub_24075A6E4();
      }

      v33 = v41;
      sub_24075AE94();
      if (v34)
      {
        v36 = v34;
        sub_24075A6E4();
      }
    }

    v37 = v7 + v4[9];
    if (v37[8])
    {
      sub_24075AE94();
    }

    else
    {
      v19 = *v37;
      sub_24075AE94();
      MEMORY[0x245CC6BA0](v19);
    }

    v14 &= v14 - 1;
    v20 = sub_24075AED4();
    result = sub_2405F10F8(v7, type metadata accessor for IdMSAccount);
    v17 = v20 ^ v33;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return MEMORY[0x245CC6BA0](v17);
    }

    v14 = *(v11 + 8 * v21);
    ++v18;
    if (v14)
    {
      v41 = v17;
      v18 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2405ED470(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x245CC6BA0](v4);
  if (v4)
  {
    v6 = (a2 + 120);
    do
    {
      v8 = *(v6 - 11);
      v9 = *(v6 - 10);
      v10 = *(v6 - 1);
      v11 = *v6;
      sub_24075A114();
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
LABEL_16:
            MEMORY[0x245CC6BA0](4);
            sub_2405ECF84(a1, v10);
            goto LABEL_5;
          }

          v7 = 1;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        switch(v10)
        {
          case 2:
            v7 = 2;
            break;
          case 3:
            v7 = 3;
            break;
          case 4:
            v7 = 5;
            break;
          default:
            goto LABEL_16;
        }
      }

      MEMORY[0x245CC6BA0](v7);
LABEL_5:
      v6 += 96;
      result = sub_24075AE94();
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _s12AppleIDSetup11RepairErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v65[0] = v3;
  v65[1] = v4;
  v65[2] = v6;
  v65[3] = v5;
  v65[4] = v7;
  v66 = v8;
  v67 = v9;
  v68 = v10;
  v69 = v11;
  v70 = v12;
  v71 = v13;
  v72 = v14;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v14 == 2)
      {
        v24 = v9;
        sub_2405EF2E8(v9, v10, v11, v12, v13, 2u);
        sub_2405EF2E8(v3, v4, v6, v5, v7, 2u);
        v25 = sub_240753B98(v3, v24);
        sub_2405B8A50(v65, &qword_27E4B84F0, &qword_240766D20);
        return v25 & 1;
      }

      goto LABEL_43;
    }

    if (v8 == 3)
    {
      if (v14 == 3)
      {
        v55 = *(v3 + 72);
        v54 = *(v3 + 88);
        v53 = *(v3 + 104);
        v15 = *(v3 + 120);
        v16 = *(v3 + 64);
        v17 = *(v9 + 64);
        v51 = *(v9 + 88);
        v52 = *(v9 + 72);
        v18 = *(v9 + 104);
        v19 = *(v9 + 112);
        v20 = *(v9 + 120);
        v21 = *(v3 + 32);
        v61 = *(v3 + 16);
        v62 = v21;
        v63 = *(v3 + 48);
        v64 = v16;
        v22 = *(v9 + 32);
        v57 = *(v9 + 16);
        v58 = v22;
        v59 = *(v9 + 48);
        v60 = v17;
        sub_2405EF2E8(v9, v10, v11, v12, v13, 3u);
        sub_2405EF2E8(v3, v4, v6, v5, v7, 3u);
        if (static SetupError.== infix(_:_:)(&v61, &v57))
        {
          v61 = v55;
          v62 = v54;
          v63 = v53;
          v64 = v15;
          v57 = v52;
          v58 = v51;
          *&v59 = v18;
          *(&v59 + 1) = v19;
          v60 = v20;
          v23 = static SetupError.== infix(_:_:)(&v61, &v57);
LABEL_28:
          sub_2405B8A50(v65, &qword_27E4B84F0, &qword_240766D20);
          return v23 & 1;
        }

LABEL_45:
        sub_2405B8A50(v65, &qword_27E4B84F0, &qword_240766D20);
        v23 = 0;
        return v23 & 1;
      }

      goto LABEL_43;
    }

    if (!(v6 | v4 | v3 | v5 | v7))
    {
      if (v14 != 4 || v11 | v10 | v9 | v12 | v13)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v27 = v6 | v4 | v5 | v7;
    if (v3 != 1 || v27)
    {
      if (v3 != 2 || v27)
      {
        if (v14 != 4 || v9 != 3)
        {
          goto LABEL_43;
        }
      }

      else if (v14 != 4 || v9 != 2)
      {
        goto LABEL_43;
      }
    }

    else if (v14 != 4 || v9 != 1)
    {
      goto LABEL_43;
    }

    if (!(v11 | v10 | v12 | v13))
    {
LABEL_42:
      sub_2405B8A50(v65, &qword_27E4B84F0, &qword_240766D20);
      v23 = 1;
      return v23 & 1;
    }

LABEL_43:
    sub_2405EF2E8(v9, v10, v11, v12, v13, v14);
    v35 = v3;
    v36 = v4;
    v37 = v6;
    v38 = v5;
    v39 = v7;
    v40 = v8;
    goto LABEL_44;
  }

  if (!v8)
  {
    if (!v14)
    {
      if (v3 != v9 || v4 != v10)
      {
        v41 = v9;
        v42 = v10;
        v43 = v11;
        v44 = v12;
        v45 = v13;
        v56 = sub_24075ACF4();
        sub_2405EF2E8(v41, v42, v43, v44, v45, 0);
        sub_2405EF2E8(v3, v4, v6, v5, v7, 0);
        sub_2405B8A50(v65, &qword_27E4B84F0, &qword_240766D20);
        return v56 & 1;
      }

      sub_2405EF2E8(v3, v4, v11, v12, v13, 0);
      sub_2405EF2E8(v3, v4, v6, v5, v7, 0);
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (v14 != 1)
  {
    goto LABEL_43;
  }

  if (v3 != v9 || v4 != v10)
  {
    v28 = v9;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = sub_24075ACF4();
    v11 = v30;
    v10 = v29;
    v12 = v31;
    v13 = v32;
    v34 = v33;
    v9 = v28;
    if ((v34 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v11)
  {
LABEL_37:
    sub_2405EF2E8(v9, v10, v11, v12, v13, 1u);
    v35 = v3;
    v36 = v4;
    v37 = v6;
    v38 = v5;
    v39 = v7;
    v40 = 1;
LABEL_44:
    sub_2405EF2E8(v35, v36, v37, v38, v39, v40);
    goto LABEL_45;
  }

  if (v5 == v12 && v7 == v13)
  {
    v23 = 1;
    sub_2405EF2E8(v9, v10, v6, v5, v7, 1u);
    sub_2405EF2E8(v3, v4, v6, v5, v7, 1u);
    goto LABEL_28;
  }

  v46 = v9;
  v47 = v10;
  v48 = v12;
  v49 = v13;
  v50 = sub_24075ACF4();
  sub_2405EF2E8(v46, v47, v6, v48, v49, 1u);
  sub_2405EF2E8(v3, v4, v6, v5, v7, 1u);
  sub_2405B8A50(v65, &qword_27E4B84F0, &qword_240766D20);
  return v50 & 1;
}

uint64_t _s12AppleIDSetup17MachRepairMessageO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v98 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  v2 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v93 = &v89 - v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v4 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v94 = &v89 - v5;
  v6 = type metadata accessor for RepairModel();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v92 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v89 - v10;
  v11 = type metadata accessor for MachRepairMessage();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v95 = &v89 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v96 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v89 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v89 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v89 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B84F8, &qword_240766D28);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v89 - v34;
  v36 = &v89 + *(v33 + 56) - v34;
  sub_2405F0F98(v97, &v89 - v34, type metadata accessor for MachRepairMessage);
  sub_2405F0F98(v98, v36, type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_2405F0F98(v35, v15, type metadata accessor for MachRepairMessage);
        v47 = *v15;
        v46 = *(v15 + 1);
        v49 = *(v15 + 2);
        v48 = *(v15 + 3);
        v98 = v35;
        v50 = *(v15 + 4);
        v51 = v15[40];
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          sub_2405EE680(v47, v46, v49, v48, v50, v51);
          v35 = v98;
          goto LABEL_43;
        }

        v52 = *v36;
        v53 = *(v36 + 1);
        v54 = *(v36 + 2);
        v96 = *(v36 + 3);
        v97 = v54;
        v95 = *(v36 + 4);
        LODWORD(v94) = v36[40];
        *&v111 = v47;
        *(&v111 + 1) = v46;
        *&v112 = v49;
        *(&v112 + 1) = v48;
        *&v113 = v50;
        BYTE8(v113) = v51;
        *&v103 = v52;
        *(&v103 + 1) = v53;
        *&v104 = v54;
        *(&v104 + 1) = v96;
        *&v105 = v95;
        BYTE8(v105) = v94;
        v44 = _s12AppleIDSetup11RepairErrorO2eeoiySbAC_ACtFZ_0(&v111, &v103);
        sub_2405EE680(v52, v53, v97, v96, v95, v94);
        sub_2405EE680(v47, v46, v49, v48, v50, v51);
        v55 = v98;
LABEL_49:
        sub_2405F10F8(v55, type metadata accessor for MachRepairMessage);
        return v44 & 1;
      }

      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v38 = v96;
      sub_2405F0F98(v35, v96, type metadata accessor for MachRepairMessage);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v39 = v94;
        sub_2405E150C(v36, v94, &qword_27E4B8000, &unk_240776AD0);
        if (*v38 == *v39 && *(v38 + 8) == *(v39 + 8) && (_s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0((v38 + *(v90 + 32)), (v39 + *(v90 + 32))) & 1) != 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
          v40 = *(v90 + 36);
          v41 = *(v38 + v40);
          v42 = *(v39 + v40);
          if (sub_240759914())
          {
            sub_2405B8A50(v39, &qword_27E4B8000, &unk_240776AD0);
            sub_2405B8A50(v38, &qword_27E4B8000, &unk_240776AD0);
LABEL_34:
            v81 = v35;
            goto LABEL_35;
          }
        }

        sub_2405B8A50(v39, &qword_27E4B8000, &unk_240776AD0);
        v84 = v38;
        v85 = &qword_27E4B8000;
        v86 = &unk_240776AD0;
        goto LABEL_53;
      }

      v82 = &qword_27E4B8000;
      v83 = &unk_240776AD0;
    }

    else
    {
      v38 = v95;
      sub_2405F0F98(v35, v95, type metadata accessor for MachRepairMessage);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v69 = v93;
        sub_2405E150C(v36, v93, &qword_27E4B80E8, &qword_240765598);
        if (*v38 == *v69 && *(v38 + 8) == *(v69 + 1))
        {
          v70 = _s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0((v38 + *(v89 + 32)), &v69[*(v89 + 32)]);
          sub_2405B8A50(v69, &qword_27E4B80E8, &qword_240765598);
          if (v70)
          {
            sub_2405B8A50(v38, &qword_27E4B80E8, &qword_240765598);
            goto LABEL_34;
          }
        }

        else
        {
          sub_2405B8A50(v69, &qword_27E4B80E8, &qword_240765598);
        }

        v85 = &qword_27E4B80E8;
        v86 = &qword_240765598;
        v84 = v38;
LABEL_53:
        sub_2405B8A50(v84, v85, v86);
        sub_2405F10F8(v35, type metadata accessor for MachRepairMessage);
        goto LABEL_44;
      }

      v82 = &qword_27E4B80E8;
      v83 = &qword_240765598;
    }

    sub_2405B8A50(v38, v82, v83);
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2405F0F98(v35, v28, type metadata accessor for MachRepairMessage);
      v56 = *(v28 + 5);
      v115 = *(v28 + 4);
      v116 = v56;
      v117 = *(v28 + 6);
      v118 = *(v28 + 14);
      v57 = *(v28 + 1);
      v111 = *v28;
      v112 = v57;
      v58 = *(v28 + 3);
      v113 = *(v28 + 2);
      v114 = v58;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_2405EEB18(&v111);
        goto LABEL_43;
      }

      v59 = *(v36 + 5);
      v60 = *(v36 + 3);
      v107 = *(v36 + 4);
      v108 = v59;
      v61 = *(v36 + 5);
      v109 = *(v36 + 6);
      v62 = *(v36 + 1);
      v103 = *v36;
      v104 = v62;
      v63 = *(v36 + 3);
      v65 = *v36;
      v64 = *(v36 + 1);
      v105 = *(v36 + 2);
      v106 = v63;
      v66 = *(v28 + 5);
      v101[4] = *(v28 + 4);
      v101[5] = v66;
      v101[6] = *(v28 + 6);
      v67 = *(v28 + 1);
      v101[0] = *v28;
      v101[1] = v67;
      v68 = *(v28 + 3);
      v101[2] = *(v28 + 2);
      v101[3] = v68;
      v99[4] = v107;
      v99[5] = v61;
      v99[6] = *(v36 + 6);
      v99[0] = v65;
      v99[1] = v64;
      v110 = *(v36 + 14);
      v102 = *(v28 + 14);
      v100 = *(v36 + 14);
      v99[2] = v105;
      v99[3] = v60;
      v44 = _s12AppleIDSetup12RepairReportV2eeoiySbAC_ACtFZ_0(v101, v99);
      sub_2405EEB18(&v103);
      sub_2405EEB18(&v111);
      goto LABEL_48;
    }

    sub_2405F0F98(v35, v30, type metadata accessor for MachRepairMessage);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2405F10F8(v30, type metadata accessor for RepairModel);
LABEL_43:
      sub_2405B8A50(v35, &qword_27E4B84F8, &qword_240766D28);
LABEL_44:
      v44 = 0;
      return v44 & 1;
    }

    v87 = v91;
    sub_2405EEC14(v36, v91, type metadata accessor for RepairModel);
    v44 = _s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0(v30, v87);
    sub_2405F10F8(v87, type metadata accessor for RepairModel);
    v45 = v30;
LABEL_47:
    sub_2405F10F8(v45, type metadata accessor for RepairModel);
LABEL_48:
    v55 = v35;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2405F0F98(v35, v25, type metadata accessor for MachRepairMessage);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_2405F10F8(v25, type metadata accessor for RepairModel);
      goto LABEL_43;
    }

    v43 = v92;
    sub_2405EEC14(v36, v92, type metadata accessor for RepairModel);
    v44 = _s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0(v25, v43);
    sub_2405F10F8(v43, type metadata accessor for RepairModel);
    v45 = v25;
    goto LABEL_47;
  }

  v71 = v35;
  sub_2405F0F98(v35, v22, type metadata accessor for MachRepairMessage);
  v73 = *v22;
  v72 = v22[1];
  v74 = v22[2];
  v75 = v22[3];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    v35 = v71;
    goto LABEL_43;
  }

  v76 = *v36;
  v77 = *(v36 + 1);
  v79 = *(v36 + 2);
  v78 = *(v36 + 3);
  if ((v73 != v76 || v72 != v77) && (sub_24075ACF4() & 1) == 0)
  {

    goto LABEL_55;
  }

  v80 = sub_2406B7F50(v75, v78);

  if ((v80 & 1) == 0)
  {
LABEL_55:
    sub_2405F10F8(v71, type metadata accessor for MachRepairMessage);
    goto LABEL_44;
  }

  v81 = v71;
LABEL_35:
  sub_2405F10F8(v81, type metadata accessor for MachRepairMessage);
  v44 = 1;
  return v44 & 1;
}