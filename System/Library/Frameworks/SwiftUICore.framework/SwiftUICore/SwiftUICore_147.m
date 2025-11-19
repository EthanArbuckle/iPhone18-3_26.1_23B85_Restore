uint64_t getEnumTagSinglePayload for AnimatableAttribute(_DWORD *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = v10 + 7;
  if (v8 < a2 && *(a1 + ((v9 + 8) & ~v11) + ((((v12 + ((v9 + 12) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v8 + *a1 + 1;
  }

  v14 = (v9 + ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11) + 11) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v9;
  if (v7 < 0x7FFFFFFE)
  {
    v16 = *((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    if (v16 >= 0xFFFFFFFF)
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

  else
  {
    v15 = (*(v5 + 48))(v14);
    if (v15 >= 2)
    {
      return v15 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for AnimatableAttribute(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  v9 = *(v6 + 80);
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v8;
  }

  v11 = (v9 + 8) & ~(v9 | 7);
  v12 = (v9 + 12) & ~v9;
  if (v7)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = (v11 + ((((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)) | 4;
  if (v10 >= a2)
  {
    if (v10 < a3)
    {
      *(a1 + v14) = 0;
    }

    if (a2)
    {
      v15 = ((v9 + ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v9 | 7) + 4) & ~(v9 | 7)) + 11) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v9);
      if (v8 < 0x7FFFFFFE)
      {
        v19 = (&v15[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else if (v8 >= a2)
      {
        v20 = *(v6 + 56);

        v20(v15, a2 + 1);
      }

      else
      {
        if (v13 <= 3)
        {
          v16 = ~(-1 << (8 * v13));
        }

        else
        {
          v16 = -1;
        }

        if (v13)
        {
          v17 = v16 & (~v8 + a2);
          if (v13 <= 3)
          {
            v18 = v13;
          }

          else
          {
            v18 = 4;
          }

          bzero(v15, v13);
          if (v18 > 2)
          {
            if (v18 == 3)
            {
              *v15 = v17;
              v15[2] = BYTE2(v17);
            }

            else
            {
              *v15 = v17;
            }
          }

          else if (v18 == 1)
          {
            *v15 = v17;
          }

          else
          {
            *v15 = v17;
          }
        }
      }
    }
  }

  else
  {
    bzero(a1, (v11 + ((((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)) | 4);
    *a1 = ~v10 + a2;
    if (v10 < a3)
    {
      *(a1 + v14) = 1;
    }
  }
}

uint64_t assignWithCopy for AnimatableFrameAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  return a1;
}

__n128 __swift_memcpy85_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for AnimatableFrameAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatableFrameAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 85))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for AnimatableFrameAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 85) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 85) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for AnimatableFrameAttributeVFD(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v6;
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for AnimatableFrameAttributeVFD(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatableFrameAttributeVFD(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 146))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for AnimatableFrameAttributeVFD(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatableAttributeHelper(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v8 + 7;
  v10 = v6 & 0x100000;
  if (v7 > 7 || v10 != 0 || ((((v8 + 7 + ((v7 + 12) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = AssociatedTypeWitness;
    *a1 = *a2;
    v15 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v15 = *v16;
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v18;
    v19 = ((v17 + v7 + 4) & ~v7);
    v20 = ((v18 + v7 + 4) & ~v7);
    if ((*(v5 + 48))((v18 + v7 + 4) & ~v7, 1, AssociatedTypeWitness))
    {
      memcpy(v19, v20, v8);
    }

    else
    {
      (*(v5 + 16))(v19, v20, v14);
      (*(v5 + 56))(v19, 0, 1, v14);
    }

    v21 = ((v19 + v9) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + v9) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    *((v21 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

_DWORD *assignWithCopy for AnimatableAttributeHelper(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 4) & ~v9);
  v11 = ((v6 + v9 + 4) & ~v9);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, AssociatedTypeWitness);
  v14 = v12(v11, 1, AssociatedTypeWitness);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
      (*(v8 + 56))(v10, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 24))(v10, v11, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, AssociatedTypeWitness);
    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v10, v11, v17);
LABEL_12:
  if (*(v8 + 84))
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v19 = v10 + v18 + 7;
  v20 = v11 + v18 + 7;
  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v19 & 0xFFFFFFFFFFFFFFF8) = *(v20 & 0xFFFFFFFFFFFFFFF8);
  v22 = (v19 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v22 & 0xFFFFFFFFFFFFFFF8) = *(v21 & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for AnimatableAttributeHelper(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 4) & ~v9);
  v11 = ((v6 + v9 + 4) & ~v9);
  if ((*(v8 + 48))(v11, 1, AssociatedTypeWitness))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v10, v11, v14);
  }

  else
  {
    (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10, 0, 1, AssociatedTypeWitness);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  v18 = ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for AnimatableAttributeHelper(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 4) & ~v9);
  v11 = ((v6 + v9 + 4) & ~v9);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, AssociatedTypeWitness);
  v14 = v12(v11, 1, AssociatedTypeWitness);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
      (*(v8 + 56))(v10, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 40))(v10, v11, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, AssociatedTypeWitness);
    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v10, v11, v17);
LABEL_12:
  if (*(v8 + 84))
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v19 = v10 + v18 + 7;
  v20 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v19 & 0xFFFFFFFFFFFFFFF8) = *v20;
  v21 = (v19 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v21 & 0xFFFFFFFFFFFFFFF8) = *((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatableAttributeHelper(_DWORD *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 < a2 && *(a1 + ((((v11 + ((v9 + 12) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v8 + *a1 + 1;
  }

  v13 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;
  if (v7 < 0x7FFFFFFE)
  {
    v15 = *((v11 + v13) & 0xFFFFFFFFFFFFFFF8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if ((v15 + 1) >= 2)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = (*(v5 + 48))(v13);
    if (v14 >= 2)
    {
      return v14 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for AnimatableAttributeHelper(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  v9 = *(v6 + 80);
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v8;
  }

  v11 = (v9 + 12) & ~v9;
  if (v7)
  {
    v12 = *(v6 + 64);
  }

  else
  {
    v12 = *(v6 + 64) + 1;
  }

  v13 = (((v12 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v10 >= a2)
  {
    if (v10 < a3)
    {
      *(a1 + v13) = 0;
    }

    if (a2)
    {
      v14 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9);
      if (v8 < 0x7FFFFFFE)
      {
        v18 = (&v14[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v18 = a2;
        }
      }

      else if (v8 >= a2)
      {
        v19 = *(v6 + 56);

        v19(v14, a2 + 1);
      }

      else
      {
        if (v12 <= 3)
        {
          v15 = ~(-1 << (8 * v12));
        }

        else
        {
          v15 = -1;
        }

        if (v12)
        {
          v16 = v15 & (~v8 + a2);
          if (v12 <= 3)
          {
            v17 = v12;
          }

          else
          {
            v17 = 4;
          }

          bzero(v14, v12);
          if (v17 > 2)
          {
            if (v17 == 3)
            {
              *v14 = v16;
              v14[2] = BYTE2(v16);
            }

            else
            {
              *v14 = v16;
            }
          }

          else if (v17 == 1)
          {
            *v14 = v16;
          }

          else
          {
            *v14 = v16;
          }
        }
      }
    }
  }

  else
  {
    bzero(a1, (((v12 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4);
    *a1 = ~v10 + a2;
    if (v10 < a3)
    {
      *(a1 + v13) = 1;
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatorState.Fork(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((v7 + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v12;
    v14 = *(v5 + 16);

    v14(v13 + 1, v12 + 1, v4);
    v15 = ((v13 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v12 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for AnimatorState.Fork(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));
}

void *initializeWithCopy for AnimatorState.Fork(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v6 + v10 + 8) & ~v10;
  v12 = (v10 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8)) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *assignWithCopy for AnimatorState.Fork(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = v5 & 0xFFFFFFFFFFFFFFF8;
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 8) & ~v10;
  v12 = (v10 + 8 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 24))(v11, (v10 + 8 + v7) & ~v10);
  v13 = *(v9 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *initializeWithTake for AnimatorState.Fork(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = (v5 + v8 + 8) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for AnimatorState.Fork(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 &= 0xFFFFFFFFFFFFFFF8;
  *v6 = *v5;

  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v11 = (v9 + 8 + v5) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = ((v12 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatorState.Fork(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

void *storeEnumTagSinglePayload for AnimatorState.Fork(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t type metadata accessor for VariableBlurStyle.Type()
{
  result = lazy cache variable for type metadata for VariableBlurStyle.Type;
  if (!lazy cache variable for type metadata for VariableBlurStyle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for VariableBlurStyle.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>?()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>?)
  {
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(255, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimationFinishingDefinitionKey);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>?);
    }
  }
}

void type metadata accessor for AnimationFinishingDefinitionKey<Double>?()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>?)
  {
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(255, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>?);
    }
  }
}

uint64_t outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t type metadata accessor for ScalePulseEffect.Type()
{
  result = lazy cache variable for type metadata for ScalePulseEffect.Type;
  if (!lazy cache variable for type metadata for ScalePulseEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScalePulseEffect.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

uint64_t _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t type metadata accessor for MaterialEffect.Fill.Type()
{
  result = lazy cache variable for type metadata for MaterialEffect.Fill.Type;
  if (!lazy cache variable for type metadata for MaterialEffect.Fill.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MaterialEffect.Fill.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(255, a3, a4, a5, type metadata accessor for AnimationFinishingDefinitionKey);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimatorState.Fork);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for GlassAppearanceScaleEffect.Type()
{
  result = lazy cache variable for type metadata for GlassAppearanceScaleEffect.Type;
  if (!lazy cache variable for type metadata for GlassAppearanceScaleEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GlassAppearanceScaleEffect.Type);
  }

  return result;
}

uint64_t type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>);
    }
  }
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>);
    }
  }
}

void type metadata accessor for (CGFloat, AnimatablePair<CGFloat, CGFloat>)()
{
  if (!lazy cache variable for type metadata for (CGFloat, AnimatablePair<CGFloat, CGFloat>))
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CGFloat, AnimatablePair<CGFloat, CGFloat>));
    }
  }
}

unint64_t type metadata accessor for _HueRotationEffect.Type()
{
  result = lazy cache variable for type metadata for _HueRotationEffect.Type;
  if (!lazy cache variable for type metadata for _HueRotationEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _HueRotationEffect.Type);
  }

  return result;
}

unint64_t type metadata accessor for Edge.Corner.Style.Type()
{
  result = lazy cache variable for type metadata for Edge.Corner.Style.Type;
  if (!lazy cache variable for type metadata for Edge.Corner.Style.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Edge.Corner.Style.Type);
  }

  return result;
}

uint64_t outlined init with copy of AnimatorState<Edge.Corner.Style.AnimatableData>.Fork(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimatorState.Fork);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for RectangleCornerRadii.Type()
{
  result = lazy cache variable for type metadata for RectangleCornerRadii.Type;
  if (!lazy cache variable for type metadata for RectangleCornerRadii.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RectangleCornerRadii.Type);
  }

  return result;
}

unint64_t type metadata accessor for _ScaleEffect.Type()
{
  result = lazy cache variable for type metadata for _ScaleEffect.Type;
  if (!lazy cache variable for type metadata for _ScaleEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ScaleEffect.Type);
  }

  return result;
}

void type metadata accessor for AnimatableAttributeHelper<CGRect>()
{
  if (!lazy cache variable for type metadata for AnimatableAttributeHelper<CGRect>)
  {
    type metadata accessor for CGRect(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v0 = type metadata accessor for AnimatableAttributeHelper();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableAttributeHelper<CGRect>);
    }
  }
}

unint64_t type metadata accessor for _ColorMultiplyEffect._Resolved.Type()
{
  result = lazy cache variable for type metadata for _ColorMultiplyEffect._Resolved.Type;
  if (!lazy cache variable for type metadata for _ColorMultiplyEffect._Resolved.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ColorMultiplyEffect._Resolved.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    }
  }
}

unint64_t type metadata accessor for Angle.Type()
{
  result = lazy cache variable for type metadata for Angle.Type;
  if (!lazy cache variable for type metadata for Angle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Angle.Type);
  }

  return result;
}

unint64_t type metadata accessor for _SaturationEffect.Type()
{
  result = lazy cache variable for type metadata for _SaturationEffect.Type;
  if (!lazy cache variable for type metadata for _SaturationEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _SaturationEffect.Type);
  }

  return result;
}

uint64_t outlined copy of AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t type metadata accessor for MeshGradient._Paint.Type()
{
  result = lazy cache variable for type metadata for MeshGradient._Paint.Type;
  if (!lazy cache variable for type metadata for MeshGradient._Paint.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MeshGradient._Paint.Type);
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>)
  {
    type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
    }
  }
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>)
  {
    type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>)
  {
    type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
    }
  }
}

uint64_t outlined init with copy of AnimatableArray<Float>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimatableArray<Float>, MEMORY[0x1E69E6448], &protocol witness table for Float, type metadata accessor for AnimatableArray);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for CGFloat.Type()
{
  result = lazy cache variable for type metadata for CGFloat.Type;
  if (!lazy cache variable for type metadata for CGFloat.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CGFloat.Type);
  }

  return result;
}

unint64_t type metadata accessor for Double.Type()
{
  result = lazy cache variable for type metadata for Double.Type;
  if (!lazy cache variable for type metadata for Double.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Double.Type);
  }

  return result;
}

unint64_t type metadata accessor for CornerMaskingConfiguration.Type()
{
  result = lazy cache variable for type metadata for CornerMaskingConfiguration.Type;
  if (!lazy cache variable for type metadata for CornerMaskingConfiguration.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CornerMaskingConfiguration.Type);
  }

  return result;
}

void type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    }
  }
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    }
  }
}

void type metadata accessor for (CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat)()
{
  if (!lazy cache variable for type metadata for (CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat))
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat));
    }
  }
}

unint64_t type metadata accessor for CornerMaskingConfiguration.CornerStyle.Type()
{
  result = lazy cache variable for type metadata for CornerMaskingConfiguration.CornerStyle.Type;
  if (!lazy cache variable for type metadata for CornerMaskingConfiguration.CornerStyle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CornerMaskingConfiguration.CornerStyle.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>)
  {
    type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
    }
  }
}

void type metadata accessor for (CGFloat, CGFloat, CGFloat)()
{
  if (!lazy cache variable for type metadata for (CGFloat, CGFloat, CGFloat))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (CGFloat, CGFloat, CGFloat));
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
    }
  }
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
    }
  }
}

uint64_t _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOg(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t type metadata accessor for RoundedRectangularShapeCorners.Type()
{
  result = lazy cache variable for type metadata for RoundedRectangularShapeCorners.Type;
  if (!lazy cache variable for type metadata for RoundedRectangularShapeCorners.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RoundedRectangularShapeCorners.Type);
  }

  return result;
}

uint64_t _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOg(uint64_t a1)
{
  if (*(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t type metadata accessor for EdgeInsets.Type()
{
  result = lazy cache variable for type metadata for EdgeInsets.Type;
  if (!lazy cache variable for type metadata for EdgeInsets.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EdgeInsets.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
    }
  }
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
    }
  }
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
    }
  }
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

unint64_t type metadata accessor for UnitPoint.Type()
{
  result = lazy cache variable for type metadata for UnitPoint.Type;
  if (!lazy cache variable for type metadata for UnitPoint.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UnitPoint.Type);
  }

  return result;
}

unint64_t type metadata accessor for StrokeStyle.Type()
{
  result = lazy cache variable for type metadata for StrokeStyle.Type;
  if (!lazy cache variable for type metadata for StrokeStyle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for StrokeStyle.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

unint64_t type metadata accessor for ResolvedShadowStyle.Type()
{
  result = lazy cache variable for type metadata for ResolvedShadowStyle.Type;
  if (!lazy cache variable for type metadata for ResolvedShadowStyle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ResolvedShadowStyle.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
    }
  }
}

unint64_t type metadata accessor for AnyLayout.Type()
{
  result = lazy cache variable for type metadata for AnyLayout.Type;
  if (!lazy cache variable for type metadata for AnyLayout.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnyLayout.Type);
  }

  return result;
}

unint64_t type metadata accessor for Color.ResolvedHDR.Type()
{
  result = lazy cache variable for type metadata for Color.ResolvedHDR.Type;
  if (!lazy cache variable for type metadata for Color.ResolvedHDR.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Color.ResolvedHDR.Type);
  }

  return result;
}

unint64_t type metadata accessor for BlurStyle.Type()
{
  result = lazy cache variable for type metadata for BlurStyle.Type;
  if (!lazy cache variable for type metadata for BlurStyle.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BlurStyle.Type);
  }

  return result;
}

unint64_t type metadata accessor for _ShapeStyle_Pack.Effect.Kind.Type()
{
  result = lazy cache variable for type metadata for _ShapeStyle_Pack.Effect.Kind.Type;
  if (!lazy cache variable for type metadata for _ShapeStyle_Pack.Effect.Kind.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ShapeStyle_Pack.Effect.Kind.Type);
  }

  return result;
}

unint64_t type metadata accessor for _ShapeStyle_Pack.Effect.Type()
{
  result = lazy cache variable for type metadata for _ShapeStyle_Pack.Effect.Type;
  if (!lazy cache variable for type metadata for _ShapeStyle_Pack.Effect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ShapeStyle_Pack.Effect.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>)
  {
    type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>)
  {
    type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>)
  {
    type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
    }
  }
}

unint64_t type metadata accessor for _ShapeStyle_Pack.Fill.Type()
{
  result = lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.Type;
  if (!lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.Type);
  }

  return result;
}

unint64_t type metadata accessor for _ShapeStyle_Pack.Style.Type()
{
  result = lazy cache variable for type metadata for _ShapeStyle_Pack.Style.Type;
  if (!lazy cache variable for type metadata for _ShapeStyle_Pack.Style.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>)
  {
    type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>)
  {
    type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>)
  {
    type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    }
  }
}

unint64_t type metadata accessor for UnitRect.Type()
{
  result = lazy cache variable for type metadata for UnitRect.Type;
  if (!lazy cache variable for type metadata for UnitRect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UnitRect.Type);
  }

  return result;
}

unint64_t type metadata accessor for _AlphaThresholdEffect._Resolved.Type()
{
  result = lazy cache variable for type metadata for _AlphaThresholdEffect._Resolved.Type;
  if (!lazy cache variable for type metadata for _AlphaThresholdEffect._Resolved.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _AlphaThresholdEffect._Resolved.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    }
  }
}

unint64_t type metadata accessor for _BrightnessEffect.Type()
{
  result = lazy cache variable for type metadata for _BrightnessEffect.Type;
  if (!lazy cache variable for type metadata for _BrightnessEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _BrightnessEffect.Type);
  }

  return result;
}

unint64_t type metadata accessor for _ShadowEffect._Resolved.Type()
{
  result = lazy cache variable for type metadata for _ShadowEffect._Resolved.Type;
  if (!lazy cache variable for type metadata for _ShadowEffect._Resolved.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ShadowEffect._Resolved.Type);
  }

  return result;
}

unint64_t type metadata accessor for _Rotation3DEffect.Type()
{
  result = lazy cache variable for type metadata for _Rotation3DEffect.Type;
  if (!lazy cache variable for type metadata for _Rotation3DEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _Rotation3DEffect.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    }
  }
}

unint64_t type metadata accessor for _GrayscaleEffect.Type()
{
  result = lazy cache variable for type metadata for _GrayscaleEffect.Type;
  if (!lazy cache variable for type metadata for _GrayscaleEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _GrayscaleEffect.Type);
  }

  return result;
}

unint64_t type metadata accessor for _BlurEffect.Type()
{
  result = lazy cache variable for type metadata for _BlurEffect.Type;
  if (!lazy cache variable for type metadata for _BlurEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _BlurEffect.Type);
  }

  return result;
}

void type metadata accessor for AnimatableAttributeHelper<CGSize>()
{
  if (!lazy cache variable for type metadata for AnimatableAttributeHelper<CGSize>)
  {
    type metadata accessor for CGSize(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
    v0 = type metadata accessor for AnimatableAttributeHelper();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableAttributeHelper<CGSize>);
    }
  }
}

unint64_t type metadata accessor for _ContrastEffect.Type()
{
  result = lazy cache variable for type metadata for _ContrastEffect.Type;
  if (!lazy cache variable for type metadata for _ContrastEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ContrastEffect.Type);
  }

  return result;
}

unint64_t type metadata accessor for Color.ResolvedDuotone.Type()
{
  result = lazy cache variable for type metadata for Color.ResolvedDuotone.Type;
  if (!lazy cache variable for type metadata for Color.ResolvedDuotone.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Color.ResolvedDuotone.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
    }
  }
}

unint64_t type metadata accessor for Color.Resolved.Type()
{
  result = lazy cache variable for type metadata for Color.Resolved.Type;
  if (!lazy cache variable for type metadata for Color.Resolved.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Color.Resolved.Type);
  }

  return result;
}

unint64_t type metadata accessor for ResolvedGradient.Type()
{
  result = lazy cache variable for type metadata for ResolvedGradient.Type;
  if (!lazy cache variable for type metadata for ResolvedGradient.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ResolvedGradient.Type);
  }

  return result;
}

unint64_t type metadata accessor for _RotationEffect.Type()
{
  result = lazy cache variable for type metadata for _RotationEffect.Type;
  if (!lazy cache variable for type metadata for _RotationEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _RotationEffect.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

unint64_t type metadata accessor for ViewGeometry.Type()
{
  result = lazy cache variable for type metadata for ViewGeometry.Type;
  if (!lazy cache variable for type metadata for ViewGeometry.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGeometry.Type);
  }

  return result;
}

unint64_t type metadata accessor for ViewSize.Type()
{
  result = lazy cache variable for type metadata for ViewSize.Type;
  if (!lazy cache variable for type metadata for ViewSize.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewSize.Type);
  }

  return result;
}

unint64_t type metadata accessor for _ColorMonochromeEffect._Resolved.Type()
{
  result = lazy cache variable for type metadata for _ColorMonochromeEffect._Resolved.Type;
  if (!lazy cache variable for type metadata for _ColorMonochromeEffect._Resolved.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ColorMonochromeEffect._Resolved.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
    }
  }
}

unint64_t type metadata accessor for _OffsetEffect.Type()
{
  result = lazy cache variable for type metadata for _OffsetEffect.Type;
  if (!lazy cache variable for type metadata for _OffsetEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _OffsetEffect.Type);
  }

  return result;
}

unint64_t type metadata accessor for AngularGradient._Paint.Type()
{
  result = lazy cache variable for type metadata for AngularGradient._Paint.Type;
  if (!lazy cache variable for type metadata for AngularGradient._Paint.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AngularGradient._Paint.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
    }
  }
}

unint64_t type metadata accessor for EllipticalGradient._Paint.Type()
{
  result = lazy cache variable for type metadata for EllipticalGradient._Paint.Type;
  if (!lazy cache variable for type metadata for EllipticalGradient._Paint.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EllipticalGradient._Paint.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

unint64_t type metadata accessor for RadialGradient._Paint.Type()
{
  result = lazy cache variable for type metadata for RadialGradient._Paint.Type;
  if (!lazy cache variable for type metadata for RadialGradient._Paint.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RadialGradient._Paint.Type);
  }

  return result;
}

unint64_t type metadata accessor for LinearGradient.AbsolutePaint.Type()
{
  result = lazy cache variable for type metadata for LinearGradient.AbsolutePaint.Type;
  if (!lazy cache variable for type metadata for LinearGradient.AbsolutePaint.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LinearGradient.AbsolutePaint.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
    }
  }
}

unint64_t type metadata accessor for LinearGradient._Paint.Type()
{
  result = lazy cache variable for type metadata for LinearGradient._Paint.Type;
  if (!lazy cache variable for type metadata for LinearGradient._Paint.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LinearGradient._Paint.Type);
  }

  return result;
}

void type metadata accessor for AnimatableAttributeHelper<CGPoint>()
{
  if (!lazy cache variable for type metadata for AnimatableAttributeHelper<CGPoint>)
  {
    type metadata accessor for CGPoint(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
    v0 = type metadata accessor for AnimatableAttributeHelper();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableAttributeHelper<CGPoint>);
    }
  }
}

uint64_t type metadata accessor for CGRect.Type(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t type metadata accessor for ColorView.Type()
{
  result = lazy cache variable for type metadata for ColorView.Type;
  if (!lazy cache variable for type metadata for ColorView.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ColorView.Type);
  }

  return result;
}

unint64_t type metadata accessor for ViewFrame.Type()
{
  result = lazy cache variable for type metadata for ViewFrame.Type;
  if (!lazy cache variable for type metadata for ViewFrame.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewFrame.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<Double>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t type metadata accessor for _ShapeStyle_Pack.Type()
{
  result = lazy cache variable for type metadata for _ShapeStyle_Pack.Type;
  if (!lazy cache variable for type metadata for _ShapeStyle_Pack.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ShapeStyle_Pack.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>)
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>)
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    }
  }
}

void type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>)
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    }
  }
}

unint64_t type metadata accessor for OpacityRendererEffect.Type()
{
  result = lazy cache variable for type metadata for OpacityRendererEffect.Type;
  if (!lazy cache variable for type metadata for OpacityRendererEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OpacityRendererEffect.Type);
  }

  return result;
}

unint64_t type metadata accessor for _OpacityEffect.Type()
{
  result = lazy cache variable for type metadata for _OpacityEffect.Type;
  if (!lazy cache variable for type metadata for _OpacityEffect.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _OpacityEffect.Type);
  }

  return result;
}

unint64_t type metadata accessor for _ShapeSet.Wrapper.Type()
{
  result = lazy cache variable for type metadata for _ShapeSet.Wrapper.Type;
  if (!lazy cache variable for type metadata for _ShapeSet.Wrapper.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _ShapeSet.Wrapper.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);
    v0 = type metadata accessor for AnimationFinishingDefinitionKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    }
  }
}

void type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);
    v0 = type metadata accessor for CombinedAnimationState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    }
  }
}

void type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    }
  }
}

unint64_t type metadata accessor for Shader.ResolvedShader.Type()
{
  result = lazy cache variable for type metadata for Shader.ResolvedShader.Type;
  if (!lazy cache variable for type metadata for Shader.ResolvedShader.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Shader.ResolvedShader.Type);
  }

  return result;
}

uint64_t type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t type metadata accessor for GlassContainerCache.UnwrappedMaterial.Type()
{
  result = lazy cache variable for type metadata for GlassContainerCache.UnwrappedMaterial.Type;
  if (!lazy cache variable for type metadata for GlassContainerCache.UnwrappedMaterial.Type)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GlassContainerCache.UnwrappedMaterial.Type);
  }

  return result;
}

void type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t _AnimationModifier.animation.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _AnimationModifier.init(animation:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for _AnimationModifier();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t static _AnimationModifier.makeArchivedView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  v9 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v9;
  v16[4] = *(a1 + 64);
  v17 = *(a1 + 80);
  v10 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v10;
  if (dynamic_cast_existential_2_conditional(a4))
  {
    return project #1 <A><A1>(type:) in static _AnimationModifier.makeArchivedView(modifier:inputs:body:)(v16, a2, a3, a5);
  }

  v12 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v12;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v13 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v13;
  return (a2)(0, v14);
}

uint64_t static _AnimationModifier.makeArchivedViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  outlined init with copy of _ViewListInputs(a2, v13);
  if ((v14 & 0x40) != 0)
  {
    v9 = dynamic_cast_existential_2_conditional(a5);
    if (v9)
    {
      specialized project #1 <A><A1>(type:) in static _AnimationModifier.makeArchivedViewList(modifier:inputs:body:)(v9, v13);
    }
  }

  v10 = type metadata accessor for _AnimationModifier();
  v12 = v8;
  swift_beginAccess();
  static ViewModifier.makeMultiViewList(modifier:inputs:body:)(&v12, v13, a3, a4, v10, &protocol witness table for _AnimationModifier<A>);
  swift_endAccess();
  return outlined destroy of _ViewListInputs(v13);
}

uint64_t project #1 <A><A1>(type:) in static _AnimationModifier.makeArchivedView(modifier:inputs:body:)@<X0>(uint64_t a1@<X2>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a3@<X4>, void (*a4)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  type metadata accessor for _AnimationModifier();
  type metadata accessor for _AnimationModifier();
  v6 = Attribute.unsafeBitCast<A>(to:)();
  v7 = *a1;
  v8 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v8;
  v34 = *(a1 + 64);
  v35 = *(a1 + 80);
  v9 = *(a1 + 16);
  v30 = *a1;
  v31 = v9;
  BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
  v10 = v24;
  outlined init with copy of _ViewInputs(a1, &v24);
  v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v7, v10);
  if (v11)
  {
    v12 = *(v11 + 72) | 1;
  }

  else
  {
    v12 = 1;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA07DisplayD0V7OptionsV_Tt2B5(&v30, v12);
  v13 = type metadata accessor for ArchivedAnimationModifier.Effect();
  LODWORD(v24) = v6;
  v14 = type metadata accessor for ArchivedAnimationModifier();
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(&v24, v13, v14, WitnessTable, &v19);
  v20[2] = v32;
  v20[3] = v33;
  v20[4] = v34;
  v21 = v35;
  v20[0] = v30;
  v20[1] = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  outlined init with copy of _ViewInputs(v20, v22);
  static _RendererEffect._makeRendererEffect(effect:inputs:body:)(&v19, &v24, a2, a3, v13, &protocol witness table for ArchivedAnimationModifier<A>.Effect, a4);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  outlined destroy of _ViewInputs(v22);
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  return outlined destroy of _ViewInputs(&v24);
}

uint64_t specialized project #1 <A><A1>(type:) in static _AnimationModifier.makeArchivedViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  type metadata accessor for _AnimationModifier();
  type metadata accessor for _AnimationModifier();
  v3 = Attribute.unsafeBitCast<A>(to:)();
  swift_beginAccess();
  v4 = *(a2 + 64);
  v16[0] = v3;
  v16[1] = v4;
  v14 = type metadata accessor for ArchivedAnimationTrait();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, &type metadata for ViewTraitCollection, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16, v13, v14, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  swift_beginAccess();
  *(a2 + 64) = v11;
  if (*(a2 + 72))
  {
    v7 = *(a2 + 80);
    v11 = *(a2 + 72);
    v12 = v7 & 1;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    specialized Set._Variant.insert(_:)(&v10, &type metadata for ArchivedAnimationTraitKey);
    v8 = v12;
    *(a2 + 72) = v11;
    *(a2 + 80) = v8;
  }

  return swift_endAccess();
}

uint64_t ArchivedAnimationModifier.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _AnimationModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

double ArchivedAnimationModifier.value.getter@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v23 = a3;
  v25 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _AnimationModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v24 = a1;
  ArchivedAnimationModifier.modifier.getter(&v22 - v16);
  (*(v7 + 16))(v10, &v17[*(v11 + 36)], a2);
  v18 = *(v12 + 8);
  v18(v17, v11);
  StrongHash.init<A>(encodable:)(v10, a2, &v26);
  v22 = v26;
  LODWORD(v10) = v27;
  ArchivedAnimationModifier.modifier.getter(v14);
  v19 = *v14;

  v18(v14, v11);
  v20 = v25;
  *v25 = v19;
  result = *&v22;
  *(v20 + 1) = v22;
  *(v20 + 6) = v10;
  return result;
}

uint64_t ArchivedAnimationModifier.Effect.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 36) = 0;
  *(v7 + 40) = v3;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 12) = 19;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ArchivedAnimationModifier<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t ArchivedAnimationTrait.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _AnimationModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v24 = a1;
  ArchivedAnimationModifier.modifier.getter(&v23 - v16);
  (*(v7 + 16))(v10, &v17[*(v11 + 36)], a2);
  v18 = *(v12 + 8);
  v18(v17, v11);
  StrongHash.init<A>(encodable:)(v10, a2, &v26);
  LODWORD(v23) = v27;
  v19 = v26;
  _TagTraitWritingModifier.AddTrait.traits.getter(v24, v28);
  v20 = v28[0];
  if (!v28[0])
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  *&v26 = v20;
  ArchivedAnimationModifier.modifier.getter(v14);
  v21 = *v14;

  v18(v14, v11);
  result = _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA017ArchivedAnimationdG0V_Tt0B5(v21, v19, *(&v19 + 1), v23);
  *v25 = v26;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ArchivedAnimationTrait<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t _AnimationView.animation.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
  return result;
}

uint64_t _AnimationView.init(content:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for _AnimationView() + 44);
  result = (*(*(a3 - 8) + 32))(a4, a1, a3);
  *(a4 + v8) = a2;
  return result;
}

uint64_t static _AnimationView._makeInputs(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v27 = a2;
  v28 = a6;
  v37 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25[-v11];
  v13 = type metadata accessor for ValueTransactionSeed();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25[-v15];
  v26 = *a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = v26;
  type metadata accessor for _AnimationView();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _AnimationView._makeInputs(view:inputs:), a3, v29);
  LODWORD(a1) = v29[0];
  v17 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v18 = *(v17 + 68);

  (*(*(a3 - 8) + 56))(v12, 1, 1, a3);
  ValueTransactionSeed.init(value:transactionSeed:oldValue:)(a1, v18, v12, v16);
  v31 = v13;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Attribute<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_12, v30, v13, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  (*(v14 + 8))(v16, v13);
  LODWORD(v17) = v29[0];
  AGGraphSetFlags();
  closure #2 in static _AnimationView._makeInputs(view:inputs:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v22 = v27;
  v23 = *(v27 + 28);
  v29[0] = v17;
  v29[1] = OffsetAttribute2;
  v29[2] = v23;
  v29[3] = v18;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v22 + 28) = result;
  *v28 = a1;
  return result;
}

uint64_t closure #1 in static _AnimationView._makeInputs(view:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _AnimationView();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #2 in static _AnimationView._makeInputs(view:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for _AnimationView();
  v3 = *(v2 + 44);
  v9[2] = v2;
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Animation?, &type metadata for Animation, MEMORY[0x1E69E6720]);
  v5 = v4;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_8, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t static _AnimationView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v45 = *(a2 + 32);
  v46 = v10;
  v12 = *(a2 + 48);
  v47 = *(a2 + 64);
  v13 = *(a2 + 16);
  v44[0] = *a2;
  v44[1] = v13;
  v40 = v45;
  v41 = v12;
  v42 = *(a2 + 64);
  v14 = *a1;
  v48 = *(a2 + 80);
  v43 = *(a2 + 80);
  v38 = v44[0];
  v39 = v11;
  LODWORD(v36[0]) = v14;
  outlined init with copy of _ViewInputs(v44, &v49);
  static _AnimationView._makeInputs(view:inputs:)(v36, &v38, a3, a4, a5, &v49);
  v15 = v49;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v49 = v38;
  v50 = v39;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v30 = v51;
  v31 = v52;
  v32 = v53;
  v33 = v54;
  v28 = v49;
  v29 = v50;
  v17 = v51;
  LODWORD(v30) = 0;
  LODWORD(v20[0]) = v15;
  v34[0] = v49;
  v34[1] = v50;
  v35 = v54;
  v34[3] = v52;
  v34[4] = v53;
  v34[2] = v30;
  v24 = v30;
  v25 = v52;
  v26 = v53;
  v27 = v54;
  v22 = v49;
  v23 = v50;
  v18 = *(a5 + 24);
  outlined init with copy of _ViewInputs(&v49, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  v18(v20, &v22, a3, a5);
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  outlined destroy of _ViewInputs(v36);
  LODWORD(v30) = v17;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a6, &v28);
    AGSubgraphEndTreeElement();
  }

  v20[2] = v40;
  v20[3] = v41;
  v20[4] = v42;
  v21 = v43;
  v20[0] = v38;
  v20[1] = v39;
  outlined destroy of _ViewInputs(v20);
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t static _AnimationView._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  outlined init with copy of _ViewListInputs(a2, v13);
  v11 = v8;
  static _AnimationView._makeInputs(view:inputs:)(&v11, v13, a3, a4, a5, &v12);
  v9 = v12;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v12 = v9;
  (*(a5 + 32))(&v12, v13, a3, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v9, a3, a5);
  return outlined destroy of _ViewListInputs(v13);
}

uint64_t static _AnimationView._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(a4 + 40))(v7);
}

uint64_t View<>.animation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  v11 = *(type metadata accessor for _AnimationView() + 44);
  (*(v7 + 32))(a3, v10, a2);
  *(a3 + v11) = a1;
}

_DWORD *protocol witness for Rule.value.getter in conformance ChildTransaction@<X0>(void *a1@<X8>)
{
  result = ChildTransaction.value.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _AnimationModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for _AnimationModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
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

  else if (v13)
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
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 8] & ~v9;

    v19(v20);
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

void *initializeBufferWithCopyOfBuffer for ValueTransactionSeed(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 <= 7 && v10 == 0 && ((-9 - v8) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = v14 + v8 + 4;
    v17 = v15 + v8 + 4;
    if ((*(v5 + 48))(v17 & ~v8, 1, v4))
    {
      memcpy((v16 & ~v8), (v17 & ~v8), v9);
    }

    else
    {
      (*(v6 + 16))(v16 & ~v8, v17 & ~v8, v4);
      (*(v6 + 56))(v16 & ~v8, 0, 1, v4);
    }
  }

  else
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  return v3;
}

_DWORD *assignWithCopy for ValueTransactionSeed(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  v11 = *(v7 + 48);
  v12 = v11(v9 & ~v8, 1, v6);
  v13 = v11(v10 & ~v8, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9 & ~v8, v10 & ~v8, v6);
      (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
      return a1;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9 & ~v8, v10 & ~v8, v6);
      return a1;
    }

    v17 = *(v7 + 8);
    v16 = v7 + 8;
    v17(v9 & ~v8, v6);
    v14 = *(v16 + 76);
    v15 = *(v16 + 56);
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  memcpy((v9 & ~v8), (v10 & ~v8), v18);
  return a1;
}

_DWORD *initializeWithTake for ValueTransactionSeed(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  if ((*(v7 + 48))(v10 & ~v8, 1, v6))
  {
    if (*(v7 + 84))
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = *(v7 + 64) + 1;
    }

    memcpy((v9 & ~v8), (v10 & ~v8), v11);
  }

  else
  {
    (*(v7 + 32))(v9 & ~v8, v10 & ~v8, v6);
    (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
  }

  return a1;
}

_DWORD *assignWithTake for ValueTransactionSeed(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  v11 = *(v7 + 48);
  v12 = v11(v9 & ~v8, 1, v6);
  v13 = v11(v10 & ~v8, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9 & ~v8, v10 & ~v8, v6);
      (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
      return a1;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9 & ~v8, v10 & ~v8, v6);
      return a1;
    }

    v17 = *(v7 + 8);
    v16 = v7 + 8;
    v17(v9 & ~v8, v6);
    v14 = *(v16 + 76);
    v15 = *(v16 + 56);
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  memcpy((v9 & ~v8), (v10 & ~v8), v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for ValueTransactionSeed(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 8) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
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

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ValueTransactionSeed(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 8) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for ArchivedAnimationModifier.Effect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for ArchivedAnimationModifier.Effect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *type metadata accessor for ChildTransaction()
{
  return &unk_1F009CBF8;
}

{
  return &unk_1F00B8740;
}

unint64_t instantiation function for generic protocol witness table for ChildTransaction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ArchivedAnimationTrait<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ArchivedAnimationModifier<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 RoundedRectangularShapeCorners.subscript.getter@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + 64;
  if (*a1 != 2)
  {
    v3 = v2 + 192;
  }

  v4 = v2 + 128;
  if (!*a1)
  {
    v4 = v2;
  }

  if (*a1 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v7 = *(v5 + 32);
  result = *(v5 + 48);
  v8 = *(v5 + 16);
  *a2 = *v5;
  *(a2 + 16) = v8;
  *(a2 + 32) = v7;
  *(a2 + 48) = result;
  return result;
}

double Capsule.corners(in:)@<D0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3)
  {
    *&v22 = 0x7FF0000000000000;
    BYTE8(v22) = 0;
    *&v25 = 0;
    *&v24 = 0;
    v23 = 0x7FF0000000000000uLL;
    BYTE8(v24) = 0;
    Edge.Corner.Style.init(_:)(&v22, &v18);
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v22 = v18;
    v23 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = a1;
    if (a1 >= a2)
    {
      v8 = a2;
    }

    *&v22 = v8 * 0.5;
    BYTE8(v22) = 0;
    v23 = COERCE_UNSIGNED_INT64(v8 * 0.5);
    *&v25 = 0;
    *&v24 = 0;
    BYTE8(v24) = 0;
    Edge.Corner.Style.init(_:)(&v22, &v18);
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v22 = v18;
    v23 = v19;
    v6 = v20;
    v7 = v21;
  }

  v24 = v6;
  v25 = v7;
  _ViewInputs.base.modify(&v22, v5);
  v9 = v35;
  a4[12] = v34;
  a4[13] = v9;
  v10 = v37;
  a4[14] = v36;
  a4[15] = v10;
  v11 = v31;
  a4[8] = v30;
  a4[9] = v11;
  v12 = v33;
  a4[10] = v32;
  a4[11] = v12;
  v13 = v27;
  a4[4] = v26;
  a4[5] = v13;
  v14 = v29;
  a4[6] = v28;
  a4[7] = v14;
  v15 = v23;
  *a4 = v22;
  a4[1] = v15;
  result = *&v24;
  v17 = v25;
  a4[2] = v24;
  a4[3] = v17;
  return result;
}

double ConcentricRectangle.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_18DDAB500;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_18DDAB500;
  *(a1 + 96) = 0x3FF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 1;
  *(a1 + 144) = xmmword_18DDAB500;
  *(a1 + 160) = 0x3FF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 1;
  *(a1 + 208) = xmmword_18DDAB500;
  *(a1 + 224) = 0x3FF0000000000000;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 248) = 0u;
  v2 = a1 + 248;
  *(v2 + 128) = 0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  return result;
}

__n128 RoundedRectangularShapeCorners.init(all:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *a1;
  v4 = *a1;
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *a2 = v3;
  *(a2 + 16) = v6;
  *(a2 + 96) = v7;
  *(a2 + 112) = v8;
  *(a2 + 64) = v4;
  *(a2 + 80) = v6;
  *(a2 + 128) = v5;
  *(a2 + 144) = v6;
  *(a2 + 160) = v7;
  *(a2 + 176) = v8;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a2 + 192) = result;
  *(a2 + 208) = v6;
  return result;
}

int8x16_t ConcentricRectangle.Uniformity.init(all:)@<Q0>(unsigned __int8 *a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = vdup_n_s32(*a1);
  v3 = vceqz_s32(vand_s8(v2, 0x200000001));
  v4.i64[0] = v3.i32[0];
  v4.i64[1] = v3.i32[1];
  __asm { FMOV            V2.2D, #1.0 }

  v10 = vbicq_s8(_Q2, v4);
  v11 = vceqz_s32(vand_s8(v2, 0x800000004));
  v4.i64[0] = v11.i32[0];
  v4.i64[1] = v11.i32[1];
  result = vbicq_s8(_Q2, v4);
  *a2 = v10;
  a2[1] = result;
  a2[2] = v10;
  a2[3] = result;
  a2[4] = v10;
  a2[5] = result;
  a2[6] = v10;
  a2[7] = result;
  return result;
}

__int128 *ConcentricRectangle.init(corners:isUniform:)@<X0>(__int128 *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[3];
  v19 = result[2];
  v18 = result[1];
  v15 = *result;
  v16 = *result;
  v17 = *result;
  if (a2)
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0.0;
  if (a2)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  if ((v4 & 4) != 0)
  {
    v5 = 1.0;
  }

  *(a3 + 192) = *result;
  *(a3 + 208) = v18;
  *(a3 + 224) = v19;
  *(a3 + 240) = v3;
  *(a3 + 128) = v17;
  *(a3 + 144) = v18;
  *(a3 + 160) = v19;
  *(a3 + 176) = v3;
  *(a3 + 64) = v16;
  *(a3 + 80) = v18;
  *(a3 + 96) = v19;
  *(a3 + 112) = v3;
  *a3 = v15;
  *(a3 + 16) = v18;
  *(a3 + 32) = v19;
  *(a3 + 48) = v3;
  v7 = vceqz_s32(vand_s8(vdup_n_s32(v4), 0x200000001));
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  __asm { FMOV            V3.2D, #1.0 }

  v14 = vbicq_s8(_Q3, v8);
  *(a3 + 256) = v14;
  *(a3 + 272) = v5;
  *(a3 + 280) = v6;
  *(a3 + 288) = v14;
  *(a3 + 304) = v5;
  *(a3 + 312) = v6;
  *(a3 + 320) = v14;
  *(a3 + 336) = v5;
  *(a3 + 344) = v6;
  *(a3 + 352) = v14;
  *(a3 + 368) = v5;
  *(a3 + 376) = v6;
  return result;
}

double ConcentricRectangle.init(topLeadingCorner:topTrailingCorner:bottomLeadingCorner:bottomTrailingCorner:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v14 = a3[3];
  v12 = *a3;
  v13 = a3[1];
  v5 = a4[2];
  v20 = a4[3];
  v6 = *a4;
  v19 = a4[1];
  a5[6] = a3[2];
  a5[7] = v14;
  a5[4] = v12;
  a5[5] = v13;
  a5[14] = v5;
  a5[15] = v20;
  a5[12] = v6;
  a5[13] = v19;
  a5[2] = v10;
  a5[3] = v11;
  *a5 = v8;
  a5[1] = v9;
  a5[10] = v17;
  a5[11] = v18;
  a5[8] = v15;
  a5[9] = v16;
  result = 0.0;
  a5[22] = 0u;
  a5[23] = 0u;
  a5[20] = 0u;
  a5[21] = 0u;
  a5[18] = 0u;
  a5[19] = 0u;
  a5[16] = 0u;
  a5[17] = 0u;
  return result;
}

__n128 RoundedRectangularShapeCorners.init(topLeading:topTrailing:bottomLeading:bottomTrailing:)@<Q0>(__int128 *a1@<X0>, __n128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v14 = a3[3];
  v12 = *a3;
  v13 = a3[1];
  v5 = a4[2];
  v20 = a4[3];
  v6 = *a4;
  v19 = a4[1];
  a5[6] = a3[2];
  a5[7] = v14;
  a5[4] = v12;
  a5[5] = v13;
  a5[14] = v5;
  a5[15] = v20;
  a5[12] = v6;
  a5[13] = v19;
  a5[2] = v10;
  a5[3] = v11;
  *a5 = v8;
  a5[1] = v9;
  result = v15;
  a5[10] = v17;
  a5[11] = v18;
  a5[8] = v15;
  a5[9] = v16;
  return result;
}

__n128 ConcentricRectangle.init(uniformTopCorners:uniformBottomCorners:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a2[1];
  v15 = a2[3];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v13 = a2[2];
  v12 = *a2;
  *(a3 + 128) = *a1;
  *(a3 + 144) = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = v11;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 96) = v13;
  *(a3 + 112) = v15;
  *(a3 + 64) = v12;
  *(a3 + 80) = v14;
  *(a3 + 224) = v13;
  *(a3 + 240) = v15;
  *(a3 + 192) = v12;
  *(a3 + 208) = v14;
  *(a3 + 160) = v10;
  *(a3 + 176) = v11;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 256) = result;
  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  *(a3 + 288) = result;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = result;
  *(a3 + 352) = 0;
  *(a3 + 360) = 0;
  *(a3 + 368) = result;
  return result;
}

double ConcentricRectangle.init(uniformLeadingCorners:uniformTrailingCorners:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = a2[1];
  v11 = a2[3];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a2[2];
  v8 = *a2;
  *(a3 + 64) = *a1;
  *(a3 + 80) = v5;
  *(a3 + 32) = v6;
  *(a3 + 48) = v7;
  *a3 = v4;
  *(a3 + 16) = v5;
  *(a3 + 160) = v9;
  *(a3 + 176) = v11;
  *(a3 + 128) = v8;
  *(a3 + 144) = v10;
  *(a3 + 224) = v9;
  *(a3 + 240) = v11;
  *(a3 + 192) = v8;
  *(a3 + 208) = v10;
  *(a3 + 96) = v6;
  *(a3 + 112) = v7;
  result = 1.0;
  *(a3 + 256) = xmmword_18DDAA020;
  *(a3 + 272) = 0x3FF0000000000000;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 296) = 0x3FF0000000000000;
  *(a3 + 304) = xmmword_18DDAB500;
  *(a3 + 320) = xmmword_18DDAA020;
  *(a3 + 336) = 0x3FF0000000000000;
  *(a3 + 344) = 0;
  *(a3 + 352) = 0;
  *(a3 + 360) = 0x3FF0000000000000;
  *(a3 + 368) = xmmword_18DDAB500;
  return result;
}

__n128 ConcentricRectangle.init(uniformTopCorners:bottomLeadingCorner:bottomTrailingCorner:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v19 = a3[3];
  v17 = *a3;
  v18 = a3[1];
  v9 = *a1;
  *(a4 + 224) = a3[2];
  *(a4 + 240) = v19;
  *(a4 + 192) = v17;
  *(a4 + 208) = v18;
  *(a4 + 32) = v15;
  *(a4 + 48) = v16;
  *a4 = v9;
  *(a4 + 16) = v14;
  *(a4 + 96) = v12;
  *(a4 + 112) = v13;
  *(a4 + 64) = v10;
  *(a4 + 80) = v11;
  *(a4 + 160) = v15;
  *(a4 + 176) = v16;
  *(a4 + 128) = v9;
  *(a4 + 144) = v14;
  __asm { FMOV            V0.2D, #1.0 }

  *(a4 + 256) = result;
  *(a4 + 272) = 0;
  *(a4 + 280) = 0;
  *(a4 + 288) = result;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0u;
  return result;
}

double ConcentricRectangle.init(uniformBottomCorners:topLeadingCorner:topTrailingCorner:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v17 = a3[3];
  v15 = *a3;
  v16 = a3[1];
  v14 = *a1;
  *(a4 + 160) = a3[2];
  *(a4 + 176) = v17;
  *(a4 + 128) = v15;
  *(a4 + 144) = v16;
  *(a4 + 96) = v19;
  *(a4 + 112) = v20;
  *(a4 + 64) = v14;
  *(a4 + 80) = v18;
  *(a4 + 32) = v12;
  *(a4 + 48) = v13;
  *a4 = v10;
  *(a4 + 16) = v11;
  *(a4 + 224) = v19;
  *(a4 + 240) = v20;
  *(a4 + 192) = v14;
  *(a4 + 208) = v18;
  result = 0.0;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(a4 + 320) = 0u;
  *(a4 + 336) = _Q1;
  *(a4 + 352) = 0;
  *(a4 + 360) = 0;
  *(a4 + 368) = _Q1;
  return result;
}

double ConcentricRectangle.init(uniformLeadingCorners:topTrailingCorner:bottomTrailingCorner:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v15 = a3[3];
  v13 = *a3;
  v14 = a3[1];
  v5 = *a1;
  *(a4 + 224) = a3[2];
  *(a4 + 240) = v15;
  *(a4 + 192) = v13;
  *(a4 + 208) = v14;
  *(a4 + 32) = v7;
  *(a4 + 48) = v8;
  *a4 = v5;
  *(a4 + 16) = v6;
  *(a4 + 96) = v7;
  *(a4 + 112) = v8;
  *(a4 + 64) = v5;
  *(a4 + 80) = v6;
  *(a4 + 160) = v11;
  *(a4 + 176) = v12;
  *(a4 + 128) = v9;
  *(a4 + 144) = v10;
  result = 1.0;
  *(a4 + 256) = xmmword_18DDAA020;
  *(a4 + 272) = 0x3FF0000000000000;
  *(a4 + 280) = 0u;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0;
  *(a4 + 320) = xmmword_18DDAA020;
  *(a4 + 336) = 0x3FF0000000000000;
  *(a4 + 344) = 0u;
  *(a4 + 360) = 0u;
  *(a4 + 376) = 0;
  return result;
}

double ConcentricRectangle.init(uniformTrailingCorners:topLeadingCorner:bottomLeadingCorner:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v11 = a3[3];
  v9 = *a3;
  v10 = a3[1];
  v12 = *a1;
  *(a4 + 96) = a3[2];
  *(a4 + 112) = v11;
  *(a4 + 64) = v9;
  *(a4 + 80) = v10;
  *(a4 + 160) = v14;
  *(a4 + 176) = v15;
  *(a4 + 128) = v12;
  *(a4 + 144) = v13;
  *(a4 + 32) = v7;
  *(a4 + 48) = v8;
  *a4 = v5;
  *(a4 + 16) = v6;
  *(a4 + 224) = v14;
  *(a4 + 240) = v15;
  *(a4 + 192) = v12;
  *(a4 + 208) = v13;
  result = 0.0;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0;
  *(a4 + 296) = 0x3FF0000000000000;
  *(a4 + 304) = xmmword_18DDAB500;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  *(a4 + 352) = 0;
  *(a4 + 360) = 0x3FF0000000000000;
  *(a4 + 368) = xmmword_18DDAB500;
  return result;
}

double static RoundedRectangularShapeCorners.concentric.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 1;
  result = 0.0;
  *(a1 + 16) = xmmword_18DDAB500;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_18DDAB500;
  *(a1 + 96) = 0x3FF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 1;
  *(a1 + 144) = xmmword_18DDAB500;
  *(a1 + 160) = 0x3FF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 1;
  *(a1 + 208) = xmmword_18DDAB500;
  *(a1 + 224) = 0x3FF0000000000000;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return result;
}

uint64_t ConcentricRectangle.path(in:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v6 = v5;
  v8 = _threadGeometryProxyData();
  if (v8)
  {
    v9 = *v8;
    v10 = *(v8 + 4);
    v11 = *(v8 + 8);
    v12 = *(v8 + 16);
    v13 = *(v8 + 20);
    v76[0] = *(v8 + 24);
    *(v76 + 12) = *(v8 + 36);
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(&v46);
      v14 = *(&v46 + 1);
      v15 = v46;
      static Update.end()();
      if (v14)
      {
LABEL_4:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v15, &v54);

        goto LABEL_9;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v15 = *InputValue;
      v21 = *(InputValue + 8);

      static Update.end()();
      if (v21)
      {
        goto LABEL_4;
      }
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(v15, &v54);
LABEL_9:

    v22 = v54;
    v23 = *v55;
    v71 = __PAIR64__(v10, v9);
    v72 = v11;
    v73 = v12;
    v74 = v13;
    *v75 = v76[0];
    *&v75[12] = *(v76 + 12);
    v68 = *&v55[8];
    v40 = *&v55[20];
    v41 = *&v55[16];
    v69 = *&v55[16];
    v38 = *&v55[28];
    v39 = *&v55[24];
    v36 = *&v55[36];
    v37 = *&v55[32];
    v70 = *&v55[32];
    v24 = v6[13];
    v64 = v6[12];
    v65 = v24;
    v25 = v6[15];
    v66 = v6[14];
    v67 = v25;
    v26 = v6[9];
    v60 = v6[8];
    v61 = v26;
    v27 = v6[11];
    v62 = v6[10];
    v63 = v27;
    v28 = v6[5];
    v56 = v6[4];
    v57 = v28;
    v29 = v6[7];
    v58 = v6[6];
    v59 = v29;
    v30 = v6[1];
    v54 = *v6;
    *v55 = v30;
    v31 = v6[3];
    *&v55[16] = v6[2];
    *&v55[32] = v31;
    v32 = v6[21];
    v50 = v6[20];
    v51 = v32;
    v33 = v6[23];
    v52 = v6[22];
    v53 = v33;
    v34 = v6[17];
    v46 = v6[16];
    v47 = v34;
    v35 = v6[19];
    v48 = v6[18];
    v49 = v35;
    (*(*(&v22 + 1) + 16))(v77, &v71, v23, &v68, &v54, &v46, v22, *(&v22 + 1), a2, a3, a4, a5);
    if (v78)
    {
      *&v54 = __PAIR64__(v10, v9);
      *(&v54 + 1) = v11;
      *v55 = v12;
      *&v55[4] = v13;
      *&v55[8] = v76[0];
      *&v55[20] = *(v76 + 12);
      v71 = *(&v23 + 1);
      v72 = __PAIR64__(v40, v41);
      v73 = v39;
      v74 = v38;
      *v75 = v37;
      *&v75[4] = v36;
      result = (*(*(&v22 + 1) + 8))(&v46, &v54, v23, &v71, v22, *(&v22 + 1), a2, a3, a4, a5);
      v17 = v46;
      v19 = v47;
      v18 = v48;
    }

    else
    {
      LOBYTE(v46) = 1;
      result = specialized Path.init(roundedRect:cornerRadii:style:)(&v46, &v54, a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], v77[0], v77[1], v77[2], v77[3]);
      v17 = v54;
      v19 = *v55;
      v18 = v55[16];
    }

    goto LABEL_13;
  }

  *&v79.origin.x = a2.n128_u64[0];
  *&v79.size.width = a4.n128_u64[0];
  *&v79.origin.y = a3.n128_u64[0];
  *&v79.size.height = a5.n128_u64[0];
  result = CGRectIsNull(v79);
  if (result)
  {
    v17 = 0uLL;
    v18 = 6;
    v19 = 0uLL;
  }

  else
  {
    v18 = 0;
    *&v17 = a2.n128_u64[0];
    *(&v17 + 1) = a3.n128_u64[0];
    *&v19 = a4.n128_u64[0];
    *(&v19 + 1) = a5.n128_u64[0];
  }

LABEL_13:
  *a1 = v17;
  *(a1 + 16) = v19;
  *(a1 + 32) = v18;
  return result;
}

__n128 ConcentricRectangle.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  v4 = *(v1 + 80);
  v5 = *(v1 + 120);
  v6 = *(v1 + 144);
  v7 = *(v1 + 184);
  v8 = *(v1 + 208);
  v9 = *(v1 + 248);
  v10 = *(v1 + 336);
  *(a1 + 64) = *(v1 + 320);
  *(a1 + 80) = v10;
  v11 = *(v1 + 368);
  *(a1 + 96) = *(v1 + 352);
  *(a1 + 112) = v11;
  v12 = *(v1 + 272);
  *a1 = *(v1 + 256);
  *(a1 + 16) = v12;
  v13 = *(v1 + 304);
  *(a1 + 32) = *(v1 + 288);
  *(a1 + 48) = v13;
  *(a1 + 128) = v2;
  *(a1 + 136) = v3;
  *(a1 + 144) = *(v1 + 24);
  *(a1 + 160) = v6;
  *(a1 + 168) = v7;
  *(a1 + 176) = *(v1 + 152);
  *(a1 + 192) = v4;
  *(a1 + 200) = v5;
  *(a1 + 208) = *(v1 + 88);
  *(a1 + 224) = v8;
  *(a1 + 232) = v9;
  result = *(v1 + 216);
  *(a1 + 240) = result;
  return result;
}

double *ConcentricRectangle.animatableData.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1[20] = *(a1 + 64);
  v1[21] = v2;
  v3 = *(a1 + 112);
  v1[22] = *(a1 + 96);
  v1[23] = v3;
  v4 = *(a1 + 16);
  v1[16] = *a1;
  v1[17] = v4;
  v5 = *(a1 + 48);
  v1[18] = *(a1 + 32);
  v1[19] = v5;
  return RoundedRectangularShapeCorners.animatableData.setter((a1 + 128));
}

__n128 RoundedRectangularShapeCorners.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 80);
  v4 = *(v1 + 120);
  v5 = *(v1 + 144);
  v6 = *(v1 + 184);
  v7 = *(v1 + 208);
  v8 = *(v1 + 248);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 24);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = *(v1 + 152);
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = *(v1 + 88);
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  result = *(v1 + 216);
  *(a1 + 112) = result;
  return result;
}

double *RoundedRectangularShapeCorners.animatableData.setter(double *result)
{
  v2 = *result;
  v3 = *(result + 1);
  v4 = result[2];
  v5 = result[3];
  v6 = *(result + 4);
  v7 = *(result + 5);
  v8 = result[6];
  v9 = result[7];
  v10 = *(result + 8);
  v11 = *(result + 9);
  v12 = result[10];
  v13 = result[11];
  v15 = *(result + 12);
  v14 = *(result + 13);
  v16 = result[14];
  v17 = result[15];
  *(v1 + 16) = *result;
  *(v1 + 24) = v4;
  *(v1 + 56) = v3;
  v18 = v5 == 1.0;
  if (v4 != 1.0)
  {
    v18 = *&v2;
  }

  *v1 = v18;
  *(v1 + 8) = v4 == 1.0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v3;
  *(v1 + 48) = 0;
  *(v1 + 144) = v6;
  *(v1 + 152) = v8;
  *(v1 + 184) = v7;
  v19 = v9 == 1.0;
  if (v8 != 1.0)
  {
    v19 = v6;
  }

  *(v1 + 128) = v19;
  *(v1 + 136) = v8 == 1.0;
  *(v1 + 160) = v9;
  *(v1 + 168) = v7;
  *(v1 + 176) = 0;
  *(v1 + 80) = v10;
  *(v1 + 88) = v12;
  *(v1 + 120) = v11;
  v20 = v13 == 1.0;
  if (v12 != 1.0)
  {
    v20 = v10;
  }

  *(v1 + 64) = v20;
  *(v1 + 72) = v12 == 1.0;
  *(v1 + 96) = v13;
  *(v1 + 104) = v11;
  *(v1 + 112) = 0;
  *(v1 + 208) = v15;
  *(v1 + 216) = v16;
  *(v1 + 248) = v14;
  v21 = v17 == 1.0;
  if (v16 != 1.0)
  {
    v21 = v15;
  }

  *(v1 + 192) = v21;
  *(v1 + 200) = v16 == 1.0;
  *(v1 + 224) = v17;
  *(v1 + 232) = v14;
  *(v1 + 240) = 0;
  return result;
}

void (*ConcentricRectangle.animatableData.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x108uLL);
  }

  *a1 = v3;
  *(v3 + 256) = v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 56);
  v6 = *(v1 + 80);
  v7 = *(v1 + 120);
  v8 = *(v1 + 144);
  v9 = *(v1 + 184);
  v10 = *(v1 + 208);
  v11 = *(v1 + 248);
  v12 = *(v1 + 24);
  v13 = *(v1 + 152);
  v14 = *(v1 + 88);
  v15 = *(v1 + 216);
  v16 = *(v1 + 256);
  v17 = *(v1 + 272);
  v18 = *(v1 + 304);
  *(v3 + 32) = *(v1 + 288);
  *(v3 + 48) = v18;
  *v3 = v16;
  *(v3 + 16) = v17;
  v19 = *(v1 + 320);
  v20 = *(v1 + 336);
  v21 = *(v1 + 368);
  *(v3 + 96) = *(v1 + 352);
  *(v3 + 112) = v21;
  *(v3 + 64) = v19;
  *(v3 + 80) = v20;
  *(v3 + 128) = v4;
  *(v3 + 136) = v5;
  *(v3 + 144) = v12;
  *(v3 + 160) = v8;
  *(v3 + 168) = v9;
  *(v3 + 176) = v13;
  *(v3 + 192) = v6;
  *(v3 + 200) = v7;
  *(v3 + 208) = v14;
  *(v3 + 224) = v10;
  *(v3 + 232) = v11;
  *(v3 + 240) = v15;
  return ConcentricRectangle.animatableData.modify;
}

void ConcentricRectangle.animatableData.modify(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 3);
  v5 = **a1;
  v4 = *(*a1 + 1);
  v2[18] = *(*a1 + 2);
  v2[19] = v3;
  v2[16] = v5;
  v2[17] = v4;
  v6 = *(v1 + 7);
  v8 = *(v1 + 4);
  v7 = *(v1 + 5);
  v2[22] = *(v1 + 6);
  v2[23] = v6;
  v2[20] = v8;
  v2[21] = v7;
  RoundedRectangularShapeCorners.animatableData.setter(v1 + 16);

  free(v1);
}

Swift::Void __swiftcall ConcentricRectangle.AnimatableData.scale(by:)(Swift::Double by)
{
  ConcentricRectangle.Uniformity.scale(by:)(by);

  ConcentricRectangle.Uniformity.scale(by:)(by);
}

float64x2_t RoundedRectangularShapeCorners.AnimatableData.scale(by:)(double a1)
{
  v2 = vmulq_n_f64(v1[1], a1);
  *v1 = vmulq_n_f64(*v1, a1);
  v1[1] = v2;
  v3 = vmulq_n_f64(v1[3], a1);
  v1[2] = vmulq_n_f64(v1[2], a1);
  v1[3] = v3;
  v4 = vmulq_n_f64(v1[5], a1);
  v1[4] = vmulq_n_f64(v1[4], a1);
  v1[5] = v4;
  v5 = vmulq_n_f64(v1[6], a1);
  result = vmulq_n_f64(v1[7], a1);
  v1[6] = v5;
  v1[7] = result;
  return result;
}

double ConcentricRectangle.Uniformity.magnitudeSquared.getter()
{
  v1 = vmulq_f64(*v0, *v0);
  v2 = vmulq_f64(v0[1], v0[1]);
  v3 = vaddq_f64(vaddq_f64(vaddq_f64(v1, vdupq_laneq_s64(v1, 1)), v2), vdupq_laneq_s64(v2, 1));
  v4 = vmulq_f64(v0[2], v0[2]);
  v5 = vmulq_f64(v0[3], v0[3]);
  v6 = vaddq_f64(v3, vaddq_f64(vaddq_f64(vaddq_f64(v4, vdupq_laneq_s64(v4, 1)), v5), vdupq_laneq_s64(v5, 1)));
  v7 = vmulq_f64(v0[4], v0[4]);
  v8 = vmulq_f64(v0[5], v0[5]);
  v9 = vaddq_f64(v6, vaddq_f64(vaddq_f64(vaddq_f64(v7, vdupq_laneq_s64(v7, 1)), v8), vdupq_laneq_s64(v8, 1)));
  v10 = vmulq_f64(v0[6], v0[6]);
  v11 = vmulq_f64(v0[7], v0[7]);
  *&result = *&vaddq_f64(v9, vaddq_f64(vaddq_f64(vaddq_f64(v10, vdupq_laneq_s64(v10, 1)), v11), vdupq_laneq_s64(v11, 1)));
  return result;
}

double static ConcentricRectangle.AnimatableData.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double static ConcentricRectangle.Uniformity.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

float64x2_t static ConcentricRectangle.AnimatableData.+ infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = vaddq_f64(a1[1], a2[1]);
  *a3 = vaddq_f64(*a1, *a2);
  a3[1] = v3;
  v4 = vaddq_f64(a1[3], a2[3]);
  a3[2] = vaddq_f64(a1[2], a2[2]);
  a3[3] = v4;
  v5 = vaddq_f64(a1[5], a2[5]);
  a3[4] = vaddq_f64(a1[4], a2[4]);
  a3[5] = v5;
  v6 = vaddq_f64(a1[7], a2[7]);
  a3[6] = vaddq_f64(a1[6], a2[6]);
  a3[7] = v6;
  v7 = vaddq_f64(a1[9], a2[9]);
  a3[8] = vaddq_f64(a1[8], a2[8]);
  a3[9] = v7;
  v8 = vaddq_f64(a1[11], a2[11]);
  a3[10] = vaddq_f64(a1[10], a2[10]);
  a3[11] = v8;
  v9 = vaddq_f64(a1[13], a2[13]);
  a3[12] = vaddq_f64(a1[12], a2[12]);
  a3[13] = v9;
  result = vaddq_f64(a1[14], a2[14]);
  v11 = vaddq_f64(a1[15], a2[15]);
  a3[14] = result;
  a3[15] = v11;
  return result;
}

float64x2_t static ConcentricRectangle.Uniformity.+ infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = vaddq_f64(a1[1], a2[1]);
  *a3 = vaddq_f64(*a1, *a2);
  a3[1] = v3;
  v4 = vaddq_f64(a1[3], a2[3]);
  a3[2] = vaddq_f64(a1[2], a2[2]);
  a3[3] = v4;
  v5 = vaddq_f64(a1[5], a2[5]);
  a3[4] = vaddq_f64(a1[4], a2[4]);
  a3[5] = v5;
  result = vaddq_f64(a1[6], a2[6]);
  v7 = vaddq_f64(a1[7], a2[7]);
  a3[6] = result;
  a3[7] = v7;
  return result;
}

float64x2_t static ConcentricRectangle.AnimatableData.- infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = vsubq_f64(a1[1], a2[1]);
  *a3 = vsubq_f64(*a1, *a2);
  a3[1] = v3;
  v4 = vsubq_f64(a1[3], a2[3]);
  a3[2] = vsubq_f64(a1[2], a2[2]);
  a3[3] = v4;
  v5 = vsubq_f64(a1[5], a2[5]);
  a3[4] = vsubq_f64(a1[4], a2[4]);
  a3[5] = v5;
  v6 = vsubq_f64(a1[7], a2[7]);
  a3[6] = vsubq_f64(a1[6], a2[6]);
  a3[7] = v6;
  v7 = vsubq_f64(a1[9], a2[9]);
  a3[8] = vsubq_f64(a1[8], a2[8]);
  a3[9] = v7;
  v8 = vsubq_f64(a1[11], a2[11]);
  a3[10] = vsubq_f64(a1[10], a2[10]);
  a3[11] = v8;
  v9 = vsubq_f64(a1[13], a2[13]);
  a3[12] = vsubq_f64(a1[12], a2[12]);
  a3[13] = v9;
  result = vsubq_f64(a1[14], a2[14]);
  v11 = vsubq_f64(a1[15], a2[15]);
  a3[14] = result;
  a3[15] = v11;
  return result;
}

float64x2_t static ConcentricRectangle.Uniformity.- infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = vsubq_f64(a1[1], a2[1]);
  *a3 = vsubq_f64(*a1, *a2);
  a3[1] = v3;
  v4 = vsubq_f64(a1[3], a2[3]);
  a3[2] = vsubq_f64(a1[2], a2[2]);
  a3[3] = v4;
  v5 = vsubq_f64(a1[5], a2[5]);
  a3[4] = vsubq_f64(a1[4], a2[4]);
  a3[5] = v5;
  result = vsubq_f64(a1[6], a2[6]);
  v7 = vsubq_f64(a1[7], a2[7]);
  a3[6] = result;
  a3[7] = v7;
  return result;
}

void protocol witness for VectorArithmetic.scale(by:) in conformance ConcentricRectangle.AnimatableData(Swift::Double a1)
{
  ConcentricRectangle.Uniformity.scale(by:)(a1);

  ConcentricRectangle.Uniformity.scale(by:)(a1);
}

__n128 protocol witness for static AdditiveArithmetic.zero.getter in conformance ConcentricRectangle.AnimatableData@<Q0>(uint64_t a1@<X8>)
{
  static ConcentricRectangle.Uniformity.zero.getter(v12);
  static ConcentricRectangle.Uniformity.zero.getter(v13);
  v2 = v12[5];
  *(a1 + 64) = v12[4];
  *(a1 + 80) = v2;
  v3 = v12[7];
  *(a1 + 96) = v12[6];
  *(a1 + 112) = v3;
  v4 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v4;
  v5 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v5;
  v6 = v13[0];
  v7 = v13[1];
  v8 = v13[3];
  *(a1 + 160) = v13[2];
  *(a1 + 176) = v8;
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  result = v13[4];
  v10 = v13[5];
  v11 = v13[7];
  *(a1 + 224) = v13[6];
  *(a1 + 240) = v11;
  *(a1 + 192) = result;
  *(a1 + 208) = v10;
  return result;
}

double protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance ConcentricRectangle.AnimatableData(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[13];
  v11[12] = a1[12];
  v11[13] = v2;
  v3 = a1[15];
  v11[14] = a1[14];
  v11[15] = v3;
  v4 = a1[9];
  v11[8] = a1[8];
  v11[9] = v4;
  v5 = a1[11];
  v11[10] = a1[10];
  v11[11] = v5;
  v6 = a1[5];
  v11[4] = a1[4];
  v11[5] = v6;
  v7 = a1[7];
  v11[6] = a1[6];
  v11[7] = v7;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v9 = a1[3];
  v11[2] = a1[2];
  v11[3] = v9;
  *&result = *&static ConcentricRectangle.AnimatableData.+ infix(_:_:)(v11, a2, a1);
  return result;
}

double protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance ConcentricRectangle.AnimatableData(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[13];
  v11[12] = a1[12];
  v11[13] = v2;
  v3 = a1[15];
  v11[14] = a1[14];
  v11[15] = v3;
  v4 = a1[9];
  v11[8] = a1[8];
  v11[9] = v4;
  v5 = a1[11];
  v11[10] = a1[10];
  v11[11] = v5;
  v6 = a1[5];
  v11[4] = a1[4];
  v11[5] = v6;
  v7 = a1[7];
  v11[6] = a1[6];
  v11[7] = v7;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v9 = a1[3];
  v11[2] = a1[2];
  v11[3] = v9;
  *&result = *&static ConcentricRectangle.AnimatableData.- infix(_:_:)(v11, a2, a1);
  return result;
}

float64x2_t static ConcentricRectangle.Uniformity.CornerAnimatableData.- infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vsubq_f64(*a1, *a2);
  v4 = vsubq_f64(a1[1], a2[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

float64x2_t static ConcentricRectangle.Uniformity.CornerAnimatableData.+ infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*a1, *a2);
  v4 = vaddq_f64(a1[1], a2[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

Swift::Void __swiftcall ConcentricRectangle.Uniformity.CornerAnimatableData.scale(by:)(Swift::Double by)
{
  v2 = vmulq_n_f64(*v1, by);
  v3 = vmulq_n_f64(v1[1], by);
  *v1 = v2;
  v1[1] = v3;
}

double ConcentricRectangle.Uniformity.CornerAnimatableData.magnitudeSquared.getter()
{
  v1 = vmulq_f64(*v0, *v0);
  v2 = vmulq_f64(v0[1], v0[1]);
  *&result = *&vaddq_f64(vaddq_f64(vaddq_f64(v1, vdupq_laneq_s64(v1, 1)), v2), vdupq_laneq_s64(v2, 1));
  return result;
}

double static ConcentricRectangle.Uniformity.CornerAnimatableData.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ConcentricRectangle.Uniformity.CornerAnimatableData.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193AC11E0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x193AC11E0](*&v7);
}

Swift::Int ConcentricRectangle.Uniformity.CornerAnimatableData.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x193AC11E0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x193AC11E0](*&v8);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConcentricRectangle.Uniformity.CornerAnimatableData()
{
  Hasher.init(_seed:)();
  ConcentricRectangle.Uniformity.CornerAnimatableData.hash(into:)();
  return Hasher._finalize()();
}

float64x2_t protocol witness for VectorArithmetic.scale(by:) in conformance ConcentricRectangle.Uniformity.CornerAnimatableData(double a1)
{
  v2 = vmulq_n_f64(*v1, a1);
  result = vmulq_n_f64(v1[1], a1);
  *v1 = v2;
  v1[1] = result;
  return result;
}

double protocol witness for VectorArithmetic.magnitudeSquared.getter in conformance ConcentricRectangle.Uniformity.CornerAnimatableData()
{
  v1 = vmulq_f64(*v0, *v0);
  v2 = vmulq_f64(v0[1], v0[1]);
  *&result = *&vaddq_f64(vaddq_f64(vaddq_f64(v1, vdupq_laneq_s64(v1, 1)), v2), vdupq_laneq_s64(v2, 1));
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance ConcentricRectangle.Uniformity.CornerAnimatableData(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return a5(v7);
}

uint64_t ConcentricRectangle.Uniformity.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v25 = v0[8];
  v26 = v0[9];
  v27 = v0[10];
  v28 = v0[11];
  v29 = v0[12];
  v30 = v0[13];
  v31 = v0[14];
  v32 = v0[15];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x193AC11E0](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x193AC11E0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x193AC11E0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x193AC11E0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x193AC11E0](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x193AC11E0](*&v15);
  v16 = v25;
  if (v25 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v16);
  v17 = v26;
  if (v26 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v17);
  v18 = v27;
  if (v27 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v18);
  v19 = v28;
  if (v28 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v19);
  v20 = v29;
  if (v29 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v20);
  v21 = v30;
  if (v30 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v21);
  v22 = v31;
  if (v31 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v22);
  v23 = v32;
  if (v32 == 0.0)
  {
    v23 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&v23);
}

Swift::Int ConcentricRectangle.Uniformity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v25 = v0[7];
  v26 = v0[8];
  v27 = v0[9];
  v28 = v0[10];
  v29 = v0[11];
  v30 = v0[12];
  v31 = v0[13];
  v32 = v0[14];
  v33 = v0[15];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v1;
  }

  MEMORY[0x193AC11E0](*&v8);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x193AC11E0](*&v10);
  if (v3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x193AC11E0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x193AC11E0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x193AC11E0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x193AC11E0](*&v14);
  v15 = v25;
  if (v25 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v15);
  v16 = v26;
  if (v26 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v16);
  v17 = v27;
  if (v27 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v17);
  v18 = v28;
  if (v28 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v18);
  v19 = v29;
  if (v29 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v19);
  v20 = v30;
  if (v30 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v20);
  v21 = v31;
  if (v31 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v21);
  v22 = v32;
  if (v32 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v22);
  v23 = v33;
  if (v33 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v23);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConcentricRectangle.Uniformity()
{
  Hasher.init(_seed:)();
  ConcentricRectangle.Uniformity.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for Shape.path(in:) in conformance ConcentricRectangle@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  ConcentricRectangle.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance ConcentricRectangle@<Q0>(uint64_t a1@<X8>)
{
  RoundedRectangularShapeCorners.animatableData.getter(v13);
  v3 = v1[21];
  *(a1 + 64) = v1[20];
  *(a1 + 80) = v3;
  v4 = v1[23];
  *(a1 + 96) = v1[22];
  *(a1 + 112) = v4;
  v5 = v1[17];
  *a1 = v1[16];
  *(a1 + 16) = v5;
  v6 = v1[19];
  *(a1 + 32) = v1[18];
  *(a1 + 48) = v6;
  v7 = v13[0];
  v8 = v13[1];
  v9 = v13[3];
  *(a1 + 160) = v13[2];
  *(a1 + 176) = v9;
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  result = v13[4];
  v11 = v13[5];
  v12 = v13[7];
  *(a1 + 224) = v13[6];
  *(a1 + 240) = v12;
  *(a1 + 192) = result;
  *(a1 + 208) = v11;
  return result;
}

double *protocol witness for Animatable.animatableData.setter in conformance ConcentricRectangle(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1[20] = *(a1 + 64);
  v1[21] = v2;
  v3 = *(a1 + 112);
  v1[22] = *(a1 + 96);
  v1[23] = v3;
  v4 = *(a1 + 16);
  v1[16] = *a1;
  v1[17] = v4;
  v5 = *(a1 + 48);
  v1[18] = *(a1 + 32);
  v1[19] = v5;
  return RoundedRectangularShapeCorners.animatableData.setter((a1 + 128));
}

void (*protocol witness for Animatable.animatableData.modify in conformance ConcentricRectangle(uint64_t **a1))(void *a1)
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
  v2[4] = ConcentricRectangle.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

double Rectangle.corners(in:)@<D0>(_OWORD *a1@<X8>)
{
  *&v16 = 0;
  BYTE8(v16) = 0;
  *&v19 = 0;
  *&v18 = 0;
  v17 = 0uLL;
  BYTE8(v18) = 0;
  Edge.Corner.Style.init(_:)(&v16, &v12);
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  _ViewInputs.base.modify(&v16, v2);
  v3 = v29;
  a1[12] = v28;
  a1[13] = v3;
  v4 = v31;
  a1[14] = v30;
  a1[15] = v4;
  v5 = v25;
  a1[8] = v24;
  a1[9] = v5;
  v6 = v27;
  a1[10] = v26;
  a1[11] = v6;
  v7 = v21;
  a1[4] = v20;
  a1[5] = v7;
  v8 = v23;
  a1[6] = v22;
  a1[7] = v8;
  v9 = v17;
  *a1 = v16;
  a1[1] = v9;
  result = *&v18;
  v11 = v19;
  a1[2] = v18;
  a1[3] = v11;
  return result;
}

__n128 static RoundedRectangularShapeCorners.fixed(_:)@<Q0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  v10 = a2;
  v11 = 0;
  v12 = a2;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  Edge.Corner.Style.init(_:)(&v10, &v17);
  v4 = v18;
  v5 = v20;
  v6 = v17;
  v7 = v18;
  v8 = v19;
  v9 = v20;
  a1[12] = v17;
  a1[13] = v7;
  a1[14] = v8;
  a1[15] = v9;
  a1[8] = v6;
  a1[9] = v4;
  a1[10] = v8;
  a1[11] = v5;
  a1[4] = v6;
  a1[5] = v4;
  a1[6] = v8;
  a1[7] = v5;
  *a1 = v6;
  a1[1] = v4;
  result = v8;
  a1[2] = v8;
  a1[3] = v5;
  return result;
}

double RoundedRectangle.corners(in:)@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  if (v1[1] < *v1)
  {
    v3 = v1[1];
  }

  *&v18 = v3;
  BYTE8(v18) = 0;
  v19 = *&v3;
  *&v21 = 0;
  *&v20 = 0;
  BYTE8(v20) = 0;
  Edge.Corner.Style.init(_:)(&v18, &v14);
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  _ViewInputs.base.modify(&v18, v4);
  v5 = v31;
  a1[12] = v30;
  a1[13] = v5;
  v6 = v33;
  a1[14] = v32;
  a1[15] = v6;
  v7 = v27;
  a1[8] = v26;
  a1[9] = v7;
  v8 = v29;
  a1[10] = v28;
  a1[11] = v8;
  v9 = v23;
  a1[4] = v22;
  a1[5] = v9;
  v10 = v25;
  a1[6] = v24;
  a1[7] = v10;
  v11 = v19;
  *a1 = v18;
  a1[1] = v11;
  result = *&v20;
  v13 = v21;
  a1[2] = v20;
  a1[3] = v13;
  return result;
}

double UnevenRoundedRectangle.corners(in:)@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *&v20 = *v1;
  BYTE8(v20) = 0;
  v21 = v20;
  *&v23 = 0;
  *&v22 = 0;
  BYTE8(v22) = 0;
  Edge.Corner.Style.init(_:)(&v20, v16);
  *&v20 = v3;
  BYTE8(v20) = 0;
  v21 = v3;
  *&v23 = 0;
  *&v22 = 0;
  BYTE8(v22) = 0;
  Edge.Corner.Style.init(_:)(&v20, v18);
  *&v20 = v5;
  BYTE8(v20) = 0;
  v21 = v5;
  *&v23 = 0;
  *&v22 = 0;
  BYTE8(v22) = 0;
  Edge.Corner.Style.init(_:)(&v20, v17);
  *&v20 = v4;
  BYTE8(v20) = 0;
  v21 = v4;
  *&v23 = 0;
  *&v22 = 0;
  BYTE8(v22) = 0;
  Edge.Corner.Style.init(_:)(&v20, v19);
  v32 = v19[0];
  v33 = v19[1];
  v34 = v19[2];
  v35 = v19[3];
  v28 = v18[0];
  v29 = v18[1];
  v30 = v18[2];
  v31 = v18[3];
  v24 = v17[0];
  v25 = v17[1];
  v26 = v17[2];
  v27 = v17[3];
  v20 = v16[0];
  v21 = v16[1];
  v22 = v16[2];
  v23 = v16[3];
  _ViewInputs.base.modify(&v20, v6);
  v7 = v33;
  a1[12] = v32;
  a1[13] = v7;
  v8 = v35;
  a1[14] = v34;
  a1[15] = v8;
  v9 = v29;
  a1[8] = v28;
  a1[9] = v9;
  v10 = v31;
  a1[10] = v30;
  a1[11] = v10;
  v11 = v25;
  a1[4] = v24;
  a1[5] = v11;
  v12 = v27;
  a1[6] = v26;
  a1[7] = v12;
  v13 = v21;
  *a1 = v20;
  a1[1] = v13;
  result = *&v22;
  v15 = v23;
  a1[2] = v22;
  a1[3] = v15;
  return result;
}

double Circle.corners(in:)@<D0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3)
  {
    *&v22 = 0x7FF0000000000000;
    BYTE8(v22) = 0;
    *&v25 = 0;
    *&v24 = 0;
    v23 = 0x7FF0000000000000uLL;
    BYTE8(v24) = 0;
    Edge.Corner.Style.init(_:)(&v22, &v18);
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v22 = v18;
    v23 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = a1;
    if (a1 >= a2)
    {
      v8 = a2;
    }

    *&v22 = v8 * 0.5;
    BYTE8(v22) = 0;
    v23 = COERCE_UNSIGNED_INT64(v8 * 0.5);
    *&v25 = 0;
    *&v24 = 0;
    BYTE8(v24) = 0;
    Edge.Corner.Style.init(_:)(&v22, &v18);
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v22 = v18;
    v23 = v19;
    v6 = v20;
    v7 = v21;
  }

  v24 = v6;
  v25 = v7;
  _ViewInputs.base.modify(&v22, v5);
  v9 = v35;
  a4[12] = v34;
  a4[13] = v9;
  v10 = v37;
  a4[14] = v36;
  a4[15] = v10;
  v11 = v31;
  a4[8] = v30;
  a4[9] = v11;
  v12 = v33;
  a4[10] = v32;
  a4[11] = v12;
  v13 = v27;
  a4[4] = v26;
  a4[5] = v13;
  v14 = v29;
  a4[6] = v28;
  a4[7] = v14;
  v15 = v23;
  *a4 = v22;
  a4[1] = v15;
  result = *&v24;
  v17 = v25;
  a4[2] = v24;
  a4[3] = v17;
  return result;
}

__n128 RoundedRectangularShapeCorners.topLeading.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 RoundedRectangularShapeCorners.topLeading.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v4;
  return result;
}

__n128 RoundedRectangularShapeCorners.bottomLeading.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v2;
  result = *(v1 + 96);
  v4 = *(v1 + 112);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 RoundedRectangularShapeCorners.bottomLeading.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 96) = result;
  *(v1 + 112) = v4;
  return result;
}

__n128 RoundedRectangularShapeCorners.topTrailing.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  result = *(v1 + 160);
  v4 = *(v1 + 176);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 RoundedRectangularShapeCorners.topTrailing.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 160) = result;
  *(v1 + 176) = v4;
  return result;
}

__n128 RoundedRectangularShapeCorners.bottomTrailing.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 192);
  *(a1 + 16) = v2;
  result = *(v1 + 224);
  v4 = *(v1 + 240);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 RoundedRectangularShapeCorners.bottomTrailing.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 192) = *a1;
  *(v1 + 208) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 224) = result;
  *(v1 + 240) = v4;
  return result;
}

uint64_t *static RoundedRectangularShapeCorners.concentric(minimum:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  if (v3 == 255)
  {
    v10 = 0;
    v2 = 0;
  }

  else
  {
    v10 = v3 & 1;
    v4 = 0;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v4 = v2;
LABEL_6:
  *a2 = 1;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  __asm { FMOV            V2.2D, #1.0 }

  *(a2 + 24) = _Q2;
  *(a2 + 40) = v2;
  *(a2 + 48) = v10;
  *(a2 + 56) = v4;
  *(a2 + 64) = 1;
  *(a2 + 72) = 1;
  *(a2 + 80) = v4;
  *(a2 + 88) = _Q2;
  *(a2 + 104) = v2;
  *(a2 + 112) = v10;
  *(a2 + 120) = v4;
  *(a2 + 128) = 1;
  *(a2 + 136) = 1;
  *(a2 + 144) = v4;
  *(a2 + 152) = _Q2;
  *(a2 + 168) = v2;
  *(a2 + 176) = v10;
  *(a2 + 184) = v4;
  *(a2 + 192) = 1;
  *(a2 + 200) = 1;
  *(a2 + 208) = v4;
  *(a2 + 216) = _Q2;
  *(a2 + 232) = v2;
  *(a2 + 240) = v10;
  *(a2 + 248) = v4;
  return result;
}

__n128 RoundedRectangularShapeCorners.replacing(corner:with:)@<Q0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3 + 4;
  v5 = (v3 + 8);
  v6 = v3 + 12;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v4 = a2;
    }

    else
    {
      v6 = a2;
    }
  }

  else if (*a1)
  {
    v5 = a2;
  }

  else
  {
    v3 = a2;
  }

  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v17 = *v5;
  v18 = v5[1];
  v19 = v5[2];
  v20 = v5[3];
  v16 = v4[3];
  v14 = *v4;
  v15 = v4[1];
  v7 = v6[2];
  v22 = v6[3];
  v8 = *v6;
  v21 = v6[1];
  a3[6] = v4[2];
  a3[7] = v16;
  a3[4] = v14;
  a3[5] = v15;
  a3[14] = v7;
  a3[15] = v22;
  a3[12] = v8;
  a3[13] = v21;
  a3[2] = v12;
  a3[3] = v13;
  *a3 = v10;
  a3[1] = v11;
  result = v17;
  a3[10] = v19;
  a3[11] = v20;
  a3[8] = v17;
  a3[9] = v18;
  return result;
}

void (*RoundedRectangularShapeCorners.animatableData.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 128) = v1;
  v4 = *(v1 + 56);
  v5 = *(v1 + 80);
  v6 = *(v1 + 120);
  v7 = *(v1 + 144);
  v8 = *(v1 + 184);
  v9 = *(v1 + 208);
  v10 = *(v1 + 248);
  v11 = *(v1 + 24);
  v12 = *(v1 + 152);
  v13 = *(v1 + 88);
  v14 = *(v1 + 216);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v11;
  *(v3 + 32) = v7;
  *(v3 + 40) = v8;
  *(v3 + 48) = v12;
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;
  *(v3 + 80) = v13;
  *(v3 + 96) = v9;
  *(v3 + 104) = v10;
  *(v3 + 112) = v14;
  return RoundedRectangularShapeCorners.animatableData.modify;
}

void RoundedRectangularShapeCorners.animatableData.modify(double **a1)
{
  v1 = *a1;
  RoundedRectangularShapeCorners.animatableData.setter(*a1);

  free(v1);
}

uint64_t RoundedRectangularShapeCorners.hash(into:)()
{
  Edge.Corner.Style.hash(into:)();
  Edge.Corner.Style.hash(into:)();
  Edge.Corner.Style.hash(into:)();
  return Edge.Corner.Style.hash(into:)();
}

Swift::Int RoundedRectangularShapeCorners.hashValue.getter()
{
  Hasher.init(_seed:)();
  Edge.Corner.Style.hash(into:)();
  Edge.Corner.Style.hash(into:)();
  Edge.Corner.Style.hash(into:)();
  Edge.Corner.Style.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RoundedRectangularShapeCorners()
{
  Hasher.init(_seed:)();
  RoundedRectangularShapeCorners.hash(into:)();
  return Hasher._finalize()();
}

void (*protocol witness for Animatable.animatableData.modify in conformance RoundedRectangularShapeCorners(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 128) = v1;
  RoundedRectangularShapeCorners.animatableData.getter(v3);
  return RoundedRectangularShapeCorners.animatableData.modify;
}

double RoundedRectangularShapeCorners.fixedCornerRadii(replacingUndefinedWith:)(double a1)
{
  v2 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v2 = a1;
  }

  if (*(v1 + 8))
  {
    return v2;
  }

  else
  {
    return *v1;
  }
}

uint64_t static _ContainerRoundedRectangularShapeModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v9 = a2[3];
  v10 = a2[1];
  v31 = a2[2];
  v32 = v9;
  v11 = a2[3];
  v33 = a2[4];
  v12 = a2[1];
  v29 = *a2;
  v30 = v12;
  v25 = v31;
  v26 = v11;
  v27 = a2[4];
  v13 = *a1;
  v34 = *(a2 + 20);
  v28 = *(a2 + 20);
  v23 = v29;
  v24 = v10;
  LODWORD(v36[0]) = v13;
  outlined init with copy of _ViewInputs(&v29, &v40);
  type metadata accessor for _ContainerRoundedRectangularShapeModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _ContainerRoundedRectangularShapeModifier._makeView(modifier:inputs:body:), a5, &v17);
  v40 = v29;
  v41 = v30;
  v42 = v31;
  outlined init with copy of _GraphInputs(&v29, v38);
  v14 = static Animatable.makeAnimatable(value:inputs:)(&v17, &v40, a5, *(*(*(a6 + 8) + 8) + 8));
  v35[0] = v40;
  v35[1] = v41;
  v35[2] = v42;
  outlined destroy of _GraphInputs(v35);
  _ViewInputs.setContainerShape<A>(_:isSystemShape:)(v14, 0, a5, a6);
  v36[2] = v25;
  v36[3] = v26;
  v36[4] = v27;
  v37 = v28;
  v36[0] = v23;
  v36[1] = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  v15 = outlined init with copy of _ViewInputs(v36, &v40);
  a3(v15, &v17);
  v38[2] = v19;
  v38[3] = v20;
  v38[4] = v21;
  v39 = v22;
  v38[0] = v17;
  v38[1] = v18;
  outlined destroy of _ViewInputs(v38);
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v40 = v23;
  v41 = v24;
  return outlined destroy of _ViewInputs(&v40);
}

uint64_t closure #1 in static _ContainerRoundedRectangularShapeModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _ContainerRoundedRectangularShapeModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t specialized static ConcentricRectangle.Uniformity.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  v2 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])), xmmword_18DDA9F30)) & 0xF) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[7], a2[7]))));
  }

  return v2 & 1;
}

uint64_t specialized static ConcentricRectangle.AnimatableData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v34 = *(a1 + 64);
  v35 = v4;
  v5 = *(a1 + 112);
  v36 = *(a1 + 96);
  v37 = v5;
  v6 = *(a1 + 16);
  v30 = *a1;
  v31 = v6;
  v7 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v7;
  v8 = *(a2 + 80);
  v26 = *(a2 + 64);
  v27 = v8;
  v9 = *(a2 + 112);
  v28 = *(a2 + 96);
  v29 = v9;
  v10 = *(a2 + 16);
  v22 = *a2;
  v23 = v10;
  v11 = *(a2 + 48);
  v24 = *(a2 + 32);
  v25 = v11;
  if (specialized static ConcentricRectangle.Uniformity.== infix(_:_:)(&v30, &v22))
  {
    v12 = *(a1 + 208);
    v34 = *(a1 + 192);
    v35 = v12;
    v13 = *(a1 + 240);
    v36 = *(a1 + 224);
    v37 = v13;
    v14 = *(a1 + 144);
    v30 = *(a1 + 128);
    v31 = v14;
    v15 = *(a1 + 176);
    v32 = *(a1 + 160);
    v33 = v15;
    v16 = *(a2 + 208);
    v26 = *(a2 + 192);
    v27 = v16;
    v17 = *(a2 + 240);
    v28 = *(a2 + 224);
    v29 = v17;
    v18 = *(a2 + 144);
    v22 = *(a2 + 128);
    v23 = v18;
    v19 = *(a2 + 176);
    v24 = *(a2 + 160);
    v25 = v19;
    v20 = specialized static ConcentricRectangle.Uniformity.== infix(_:_:)(&v30, &v22);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

BOOL specialized static RoundedRectangularShapeCorners.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  v6 = a2[1];
  v22 = *a2;
  v23 = v6;
  v7 = a2[3];
  v24 = a2[2];
  v25 = v7;
  if (specialized static Edge.Corner.Style.== infix(_:_:)(&v26, &v22) && (v8 = a1[5], v26 = a1[4], v27 = v8, v9 = a1[7], v28 = a1[6], v29 = v9, v10 = a2[5], v22 = a2[4], v23 = v10, v11 = a2[7], v24 = a2[6], v25 = v11, specialized static Edge.Corner.Style.== infix(_:_:)(&v26, &v22)) && (v12 = a1[9], v26 = a1[8], v27 = v12, v13 = a1[11], v28 = a1[10], v29 = v13, v14 = a2[9], v22 = a2[8], v23 = v14, v15 = a2[11], v24 = a2[10], v25 = v15, specialized static Edge.Corner.Style.== infix(_:_:)(&v26, &v22)))
  {
    v16 = a1[13];
    v26 = a1[12];
    v27 = v16;
    v17 = a1[15];
    v28 = a1[14];
    v29 = v17;
    v18 = a2[13];
    v22 = a2[12];
    v23 = v18;
    v19 = a2[15];
    v24 = a2[14];
    v25 = v19;
    return specialized static Edge.Corner.Style.== infix(_:_:)(&v26, &v22);
  }

  else
  {
    return 0;
  }
}

unint64_t instantiation function for generic protocol witness table for ConcentricRectangle.AnimatableData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConcentricRectangle.Uniformity.CornerAnimatableData and conformance ConcentricRectangle.Uniformity.CornerAnimatableData()
{
  result = lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity.CornerAnimatableData and conformance ConcentricRectangle.Uniformity.CornerAnimatableData;
  if (!lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity.CornerAnimatableData and conformance ConcentricRectangle.Uniformity.CornerAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity.CornerAnimatableData and conformance ConcentricRectangle.Uniformity.CornerAnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity.CornerAnimatableData and conformance ConcentricRectangle.Uniformity.CornerAnimatableData;
  if (!lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity.CornerAnimatableData and conformance ConcentricRectangle.Uniformity.CornerAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity.CornerAnimatableData and conformance ConcentricRectangle.Uniformity.CornerAnimatableData);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ConcentricRectangle.Uniformity.CornerAnimatableData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricRectangle.Uniformity.CornerAnimatableData and conformance ConcentricRectangle.Uniformity.CornerAnimatableData();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConcentricRectangle.Uniformity and conformance ConcentricRectangle.Uniformity()
{
  result = lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity and conformance ConcentricRectangle.Uniformity;
  if (!lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity and conformance ConcentricRectangle.Uniformity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity and conformance ConcentricRectangle.Uniformity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity and conformance ConcentricRectangle.Uniformity;
  if (!lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity and conformance ConcentricRectangle.Uniformity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricRectangle.Uniformity and conformance ConcentricRectangle.Uniformity);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ConcentricRectangle.Uniformity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricRectangle.Uniformity and conformance ConcentricRectangle.Uniformity();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ConcentricRectangle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for RoundedRectangularShapeCorners.AnimatableData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConcentricRectangle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 384))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ConcentricRectangle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 384) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 384) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for ConcentricRectangle.AnimatableData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConcentricRectangle.AnimatableData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
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

  *(result + 256) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RoundedRectangularShapeCorners(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 256))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for RoundedRectangularShapeCorners(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 256) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 256) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t StoredLocation.__allocating_init(initialValue:host:signal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized StoredLocation.__allocating_init(initialValue:host:signal:)(a1, a2, a3);

  (*(*(*(v3 + 232) - 8) + 8))(a1);
  return v5;
}

uint64_t StoredLocationBase.__allocating_init(initialValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized StoredLocationBase.init(initialValue:)(a1);
  (*(*(*(v2 + 168) - 8) + 8))(a1);
  return v4;
}

uint64_t StoredLocationBase.init(initialValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized StoredLocationBase.init(initialValue:)(a1);
  (*(*(*(v3 + 168) - 8) + 8))(a1);
  return v4;
}

_BYTE *(*StoredLocationBase.wasRead.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return StoredLocationBase.wasRead.modify;
}

void closure #1 in StoredLocationBase.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 24))();
  type metadata accessor for StoredLocationBase.Data();
  type metadata accessor for Array();
  Array.removeAll(keepingCapacity:)(0);
}

uint64_t StoredLocationBase.update()(uint64_t a1)
{
  *(v1 + 24) = 1;
  StoredLocationBase.updateValue.getter(a1);
  return 1;
}

uint64_t StoredLocationBase.binding.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - v4;
  StoredLocationBase.updateValue.getter(&v7 - v4);
  Binding.init(value:location:)(v5, v2, a2);
}

uint64_t StoredLocationBase.deinit()
{
  v0 = AnyLocation.deinit();

  return v0;
}

uint64_t StoredLocationBase.__deallocating_deinit()
{
  AnyLocation.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for Location.wasRead.modify in conformance StoredLocationBase<A>(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = StoredLocationBase.wasRead.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t ObservableLocation.removeObserver(signal:)()
{
  swift_beginAccess();
  v4[0] = *(v0 + 32);
  v1 = type metadata accessor for ObservableLocation.Observer();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (v3 != 1)
  {
    swift_beginAccess();
    Array.remove(at:)();
    swift_endAccess();
    return (*(*(v1 - 8) + 8))(v4, v1);
  }

  return result;
}

BOOL ObservableLocation.isUpdating.getter()
{
  if (one-time initialization token for sharedGraph != -1)
  {
    swift_once();
  }

  return AGGraphGetCounter() != 0;
}

uint64_t ObservableLocation.commit(transaction:id:mutation:)(unint64_t a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  type metadata accessor for GraphHost();
  v9 = v6;
  v7 = type metadata accessor for StoredLocationBase.BeginUpdate();
  return static GraphHost.globalTransaction<A>(_:id:mutation:hostProvider:)(a1, &v9, a3, v3, &protocol witness table for ObservableLocation<A>, v7, &protocol witness table for StoredLocationBase<A>.BeginUpdate);
}

uint64_t ObservableLocation.mutationHost.getter()
{
  swift_beginAccess();
  type metadata accessor for ObservableLocation.Observer();
  type metadata accessor for Array();
  type metadata accessor for GraphHost?();

  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();

  return v1;
}

uint64_t ObservableLocation.notifyObservers()()
{
  swift_beginAccess();
  v0 = type metadata accessor for ObservableLocation.Observer();

  v2 = MEMORY[0x193ABF270](v1, v0);

  if (v2 >= 1)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E698D3F8];
    do
    {
      while (1)
      {
        swift_beginAccess();
        Array.subscript.getter();
        v6 = AGWeakAttributeGetAttribute() == v5;
        v7 = *(*(v0 - 8) + 8);
        v7(&v8, v0);
        if (v6)
        {
          break;
        }

        swift_endAccess();
        result = AGGraphInvalidateValue();
        if (++v4 >= v2)
        {
          return result;
        }
      }

      swift_endAccess();
      if (v4 != --v2)
      {
        v8 = v4;
        swift_beginAccess();
        type metadata accessor for Array();
        swift_getWitnessTable();
        MutableCollection.swapAt(_:_:)();
        swift_endAccess();
      }

      swift_beginAccess();
      type metadata accessor for Array();
      Array.remove(at:)();
      swift_endAccess();
      result = (v7)(&v8, v0);
    }

    while (v4 < v2);
  }

  return result;
}

uint64_t ObservableLocation.__allocating_init(initialValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized ObservableLocation.init(initialValue:)(a1);
  (*(*(*(v2 + 232) - 8) + 8))(a1);
  return v4;
}

uint64_t ObservableLocation.deinit()
{
  v0 = AnyLocation.deinit();

  return v0;
}

uint64_t ObservableLocation.__deallocating_deinit()
{
  ObservableLocation.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in ObservableLocation.mutationHost.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  Strong = *a1;
  if (!Strong)
  {
    Strong = swift_weakLoadStrong();
  }

  *a2 = Strong;
}

void type metadata accessor for GraphHost?()
{
  if (!lazy cache variable for type metadata for GraphHost?)
  {
    type metadata accessor for GraphHost();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GraphHost?);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for StoredLocationBase.Data(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithCopy for StoredLocationBase.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *(v9 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithTake for StoredLocationBase.Data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for StoredLocationBase.Data(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_BYTE *storeEnumTagSinglePayload for StoredLocationBase.Data(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t ContainerValues.base.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

void (*ContainerValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  ContainerValues.subscript.getter(v15);
  return ContainerValues.subscript.modify;
}

void ContainerValues.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    specialized ContainerValues.subscript.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized ContainerValues.subscript.setter(*(*a1 + 56));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ContainerValues.tag<A>(for:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{

  ViewTraitCollection.tag<A>(for:)(a1, a2);
}

uint64_t ContainerValues.hasTag<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *v2;

  ViewTraitCollection.tag<A>(for:)(a2, v7);

  if ((*(v8 + 48))(v7, 1, a2) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v12 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v7, a2);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v8 + 8))(v11, a2);
  }

  return v12 & 1;
}

uint64_t _GraphInputs.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  specialized _ViewListCountInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t _GraphInputs.environment.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t _GraphInputs.phase.setter(uint64_t result)
{
  *(v1 + 24) = result;
  v2 = *(v1 + 32);
  if ((v2 & 0x40) == 0)
  {
    *(v1 + 32) = v2 | 0x40;
  }

  return result;
}

uint64_t _GraphInputs.mapEnvironment<A>(id:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_beginAccess();
  v5 = CachedEnvironment.attribute<A>(id:_:)(&v7, a2, a3);
  swift_endAccess();
  return v5;
}

Swift::Void __swiftcall _GraphInputs.copyCaches()()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = v1[3];
  v7[1] = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[0] = v1[1];
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  memmove((v5 + 16), v1 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v7, v6);

  *(v0 + 16) = v5;
}

Swift::Void __swiftcall _GraphInputs.resetCaches()()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 256;
  *(v5 + 88) = v4;

  *(v0 + 16) = v5;
}

uint64_t _GraphInputs.append<A, B>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  PropertyList.subscript.getter(a3, *v5, a3, v8);
  v9 = type metadata accessor for Stack();
  Stack.push(_:)(a1, v9);
  v11[0] = v11[1];
  specialized PropertyList.subscript.setter(v11, a3, a3, v8);
}

uint64_t _GraphInputs.top<A, B>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  PropertyList.subscript.getter(a1, *v3, a1, *(a2 + 8));
  v5 = type metadata accessor for Stack();
  Stack.top.getter(v5, a3);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI17EnvironmentValuesV_s5NeverOytTB503_s7c70UI17MergedEnvironment33_9FF97745734808976F608CE0DC13C39CLLV5valueAA0D6F11VvgyAGXEfU_AFTf1cn_n(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    return a1 == 1;
  }

  v7[0] = a1;
  v7[1] = a2;

  closure #1 in MergedEnvironment.value.getter(v7, a3);
  if (!v3)
  {

    return a1 == 1;
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5(uint64_t a1)
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5Tf4g_n(a1);

  return v1;
}

uint64_t static GraphInput<>.makeReusable(indirectMap:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v7(a1, AssociatedTypeWitness, a5);
}

uint64_t static GraphInput<>.tryToReuse(_:by:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v11(a2, a3, a4, AssociatedTypeWitness, a7) & 1;
}

double static _GraphInputs.invalid.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E698D3F8];
  *a1 = 0;
  v3 = MEMORY[0x1E69E7CD0];
  *(a1 + 32) = 0xFFFFFFFFLL;
  *(a1 + 40) = v3;
  *(a1 + 8) = v2;
  *(a1 + 24) = v2;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  result = 0.0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 256;
  *(v6 + 88) = v5;
  *(a1 + 16) = v6;
  *(a1 + 28) = v2;
  return result;
}

double _GraphInputs.init(time:phase:environment:transaction:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  v8 = MEMORY[0x1E69E7CD0];
  *(a5 + 32) = 0xFFFFFFFFLL;
  *(a5 + 40) = v8;
  *(a5 + 8) = a1;
  *(a5 + 24) = a2;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v9;
  result = 0.0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 256;
  *(v11 + 88) = v10;
  *(a5 + 16) = v11;
  *(a5 + 28) = a4;
  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ReusableInputs@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED566B30;
  *a1 = static ReusableInputs.defaultValue;
  a1[1] = v2;
}

uint64_t _GraphInputs.customInputs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void (*_GraphInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v4;
  *v10 = a2;
  v12 = *(a4 + 8);
  v10[3] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  PropertyList.subscript.getter(a2, *v4, a3, v12);
  return _ViewListCountInputs.subscript.modify;
}

void (*_GraphInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(Swift::Int **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x50uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = *(a4 + 8);
  v12[5] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[6] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v13[7] = v16;
  v17 = *(v16 + 64);
  if (v11)
  {
    v13[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[8] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v13[9] = v18;
  PropertyList.subscript.getter(a2, *v5, a3, v14);
  return _GraphInputs.subscript.modify;
}

void _GraphInputs.subscript.modify(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v11 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))(v3, v4, v5);
    _GraphInputs.recordReusableInput<A>(_:)(v8, v8, v7);
    specialized PropertyList.subscript.setter(v3, v9, v8, v11);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    _GraphInputs.recordReusableInput<A>(_:)(v2[1], v2[1], v2[2]);
    specialized PropertyList.subscript.setter(v4, v9, v8, v11);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*_GraphInputs.Phase.resetSeed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 12) = *v1;
  *(a1 + 8) = v2 >> 1;
  return _GraphInputs.Phase.resetSeed.modify;
}

uint64_t (*_GraphInputs.Phase.isBeingRemoved.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 8) = *v1;
  *(a1 + 12) = v2 & 1;
  return _GraphInputs.Phase.isBeingRemoved.modify;
}

void (*_GraphInputs.environment.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 16);
  return _ViewInputs.environment.modify;
}

uint64_t _GraphInputs.phase.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*result + 32);
    if ((v2 & 0x40) == 0)
    {
      *(*result + 32) = v2 | 0x40;
    }
  }

  return result;
}

uint64_t (*_GraphInputs.animationsDisabled.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return _GraphInputs.animationsDisabled.modify;
}

uint64_t _GraphInputs.mergedInputs.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

double MergedEnvironment.value.getter@<D0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *&v9 = v4;
  *(&v9 + 1) = v3;

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v7 = *WeakValue;
    v6 = WeakValue[1];
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI17EnvironmentValuesV_s5NeverOytTB503_s7c70UI17MergedEnvironment33_9FF97745734808976F608CE0DC13C39CLLV5valueAA0D6F11VvgyAGXEfU_AFTf1cn_n(v7, v6, &v9);
  outlined consume of EnvironmentValues?(v7);
  result = *&v9;
  *a1 = v9;
  return result;
}

uint64_t closure #1 in MergedEnvironment.value.getter(uint64_t a1, uint64_t *a2)
{
  v6 = *a2;

  PropertyList.merge(_:)(v3);

  if (*a2)
  {
    v5 = *(*a2 + 64);
    if (!v6)
    {
      if (!v5)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (!v6)
    {
      return result;
    }

    v5 = 0;
  }

  if (v5 == *(v6 + 64))
  {
  }

LABEL_9:
  if (a2[1])
  {
    PropertyList.Tracker.invalidateAllValues(from:to:)(*a2, v6);
  }

  *a2 = v6;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance MergedTransaction@<X0>(uint64_t *a1@<X8>)
{
  result = MergedTransaction.value.getter();
  *a1 = result;
  return result;
}

_DWORD *MergedPhase.value.getter@<X0>(unsigned int *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  result = AGGraphGetWeakValue();
  if (result)
  {
    v2 = (*result + (v2 & 0xFFFFFFFE)) | v2 & 1;
  }

  *a1 = v2;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15DynamicTypeSizeO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<DynamicTypeSize, CGFloat>, lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI8SolariumV15EnablementIdiomO_AE0F5LevelO_AE0F8CriteriaVtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Solarium.EnablementIdiom, (Solarium.EnablementLevel, Solarium.EnablementCriteria)>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<CFStringRef, String>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<CFStringRef?, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef?, Int>, MEMORY[0x1E69E6EC8]);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<CFStringRef, CGFloat>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>)();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>();
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>)(v10, v6, type metadata accessor for (NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>));
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<AttributedString.AnyAttribute, AttributedString.Keys>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      outlined copy of AttributedString.AnyAttribute(v5, v6);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_10Foundation16AttributedStringV7SwiftUIE4KeysVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, AttributedString.Keys>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, UInt32>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_14AttributeGraph0J0VyAC08PlatformE16InteractionStateVGTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 4)
    {
      v6 = *(i - 1);
      v7 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v6;
      *(v4[7] + 4 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_AC9SeedValueVyAE0G5StateVGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  memcpy(__dst, a1 + 4, 0x284uLL);
  v4 = __dst[0];
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(__dst[0]);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>)(__dst, v13, type metadata accessor for (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>));
    return v3;
  }

  v7 = (a1 + 85);
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + 8 * v5) = v4;
    result = memcpy((v3[7] + 640 * v5), &__dst[1], 0x27CuLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>)(__dst, v13, type metadata accessor for (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>));
    memcpy(__dst, v7, 0x284uLL);
    v4 = __dst[0];
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(__dst[0]);
    v7 += 648;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13AGSubgraphRefa_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<AGSubgraphRef, Bool>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18AttributeInfoTraceC7HistoryVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, AttributeInfoTrace.History>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 12 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13AGSubgraphRefa_7SwiftUI18AttributeInfoTraceC5Scope33_355BE949C3E5DD942A52618A98CAA347LLCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<AGSubgraphRef, [AGAttribute : WeakBox<AttributeInfoTrace.Scope>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, AttributeInfoTrace.Scope>, type metadata accessor for AttributeInfoTrace.Scope);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13AGSubgraphRefa_SDySo11AGAttributea7SwiftUI7WeakBoxVyAG18AttributeInfoTraceC5Scope33_355BE949C3E5DD942A52618A98CAA347LLCGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<AGSubgraphRef, [AGAttribute : WeakBox<AttributeInfoTrace.Scope>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, [AGAttribute : WeakBox<AttributeInfoTrace.Scope>]>, type metadata accessor for [AGAttribute : WeakBox<AttributeInfoTrace.Scope>]);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}