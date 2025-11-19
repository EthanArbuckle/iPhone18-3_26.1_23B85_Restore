uint64_t closure #2 in TransactionalPreferenceBinder.updateValue()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TransactionalPreferenceBinder();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *AGGraphGetValue();
  v10 = *(v5 + 8);

  result = v10(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TransactionalPreferenceBinder<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for TransactionalPreferenceBinder()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for TransactionalPreferenceBinder(_DWORD *a1, _DWORD *a2)
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

  v9 = v6 & 0x100000;
  if (v7 <= 7 && v9 == 0 && ((-37 - v7) | v7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = AssociatedTypeWitness;
    *a1 = *a2;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = *v21;
    *(v20 + 5) = *(v21 + 5);
    *v20 = v22;
    v23 = ((v18 + 23) & 0xFFFFFFFFFFFFFFFCLL);
    v24 = ((v19 + 23) & 0xFFFFFFFFFFFFFFFCLL);
    *v23 = *v24;
    v25 = v23 + v7 + 4;
    v26 = v24 + v7 + 4;
    if ((*(v5 + 48))(v26 & ~v7, 1, AssociatedTypeWitness))
    {
      memcpy((v25 & ~v7), (v26 & ~v7), v8);
    }

    else
    {
      (*(v5 + 16))(v25 & ~v7, v26 & ~v7, v13);
      (*(v5 + 56))(v25 & ~v7, 0, 1, v13);
    }
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v7 & 0xFC ^ 0x1FC) & (v7 + 16)));
  }

  return a1;
}

uint64_t destroy for TransactionalPreferenceBinder(uint64_t a1)
{
  v1 = (((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = v1 + v4 + 4;
  v8 = v3;
  result = (*(v3 + 48))(v5 & ~v4, 1, AssociatedTypeWitness);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(v5 & ~v4, AssociatedTypeWitness);
  }

  return result;
}

_DWORD *initializeWithCopy for TransactionalPreferenceBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = *v10;
  *(v9 + 5) = *(v10 + 5);
  *v9 = v11;
  v12 = ((v7 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v8 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v12 + v16 + 4;
  v18 = v13 + v16 + 4;
  if ((*(v15 + 48))(v18 & ~v16, 1, AssociatedTypeWitness))
  {
    if (*(v15 + 84))
    {
      v19 = *(v15 + 64);
    }

    else
    {
      v19 = *(v15 + 64) + 1;
    }

    memcpy((v17 & ~v16), (v18 & ~v16), v19);
  }

  else
  {
    (*(v15 + 16))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
    (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithCopy for TransactionalPreferenceBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v9 = *v10;
  *(v9 + 4) = *(v10 + 4);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 12) = *(v10 + 12);
  v11 = ((v7 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v8 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 80);
  v16 = v11 + v15 + 4;
  v17 = v12 + v15 + 4;
  v18 = *(v14 + 48);
  LODWORD(v11) = v18(v16 & ~v15, 1, AssociatedTypeWitness);
  v19 = v18(v17 & ~v15, 1, AssociatedTypeWitness);
  if (v11)
  {
    if (!v19)
    {
      (*(v14 + 16))(v16 & ~v15, v17 & ~v15, AssociatedTypeWitness);
      (*(v14 + 56))(v16 & ~v15, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v20 = *(v14 + 84);
    v21 = *(v14 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v14 + 24))(v16 & ~v15, v17 & ~v15, AssociatedTypeWitness);
      return a1;
    }

    v23 = *(v14 + 8);
    v22 = v14 + 8;
    v23(v16 & ~v15, AssociatedTypeWitness);
    v20 = *(v22 + 76);
    v21 = *(v22 + 56);
  }

  if (v20)
  {
    v24 = v21;
  }

  else
  {
    v24 = v21 + 1;
  }

  memcpy((v16 & ~v15), (v17 & ~v15), v24);
  return a1;
}

_DWORD *initializeWithTake for TransactionalPreferenceBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = *v10;
  *(v9 + 5) = *(v10 + 5);
  *v9 = v11;
  v12 = ((v7 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v8 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v12 + v16 + 4;
  v18 = v13 + v16 + 4;
  if ((*(v15 + 48))(v18 & ~v16, 1, AssociatedTypeWitness))
  {
    if (*(v15 + 84))
    {
      v19 = *(v15 + 64);
    }

    else
    {
      v19 = *(v15 + 64) + 1;
    }

    memcpy((v17 & ~v16), (v18 & ~v16), v19);
  }

  else
  {
    (*(v15 + 32))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
    (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithTake for TransactionalPreferenceBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v9 = *v10;
  *(v9 + 4) = *(v10 + 4);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 12) = *(v10 + 12);
  v11 = ((v7 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v8 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 80);
  v16 = v11 + v15 + 4;
  v17 = v12 + v15 + 4;
  v18 = *(v14 + 48);
  LODWORD(v11) = v18(v16 & ~v15, 1, AssociatedTypeWitness);
  v19 = v18(v17 & ~v15, 1, AssociatedTypeWitness);
  if (v11)
  {
    if (!v19)
    {
      (*(v14 + 32))(v16 & ~v15, v17 & ~v15, AssociatedTypeWitness);
      (*(v14 + 56))(v16 & ~v15, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v20 = *(v14 + 84);
    v21 = *(v14 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v14 + 40))(v16 & ~v15, v17 & ~v15, AssociatedTypeWitness);
      return a1;
    }

    v23 = *(v14 + 8);
    v22 = v14 + 8;
    v23(v16 & ~v15, AssociatedTypeWitness);
    v20 = *(v22 + 76);
    v21 = *(v22 + 56);
  }

  if (v20)
  {
    v24 = v21;
  }

  else
  {
    v24 = v21 + 1;
  }

  memcpy((v16 & ~v15), (v17 & ~v15), v24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TransactionalPreferenceBinder(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0xFE)
  {
    v8 = 254;
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

  if (a2 > v8)
  {
    v11 = v10 + ((v9 + 36) & ~v9);
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_12;
    }

    v14 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 >= 2)
    {
LABEL_12:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

LABEL_19:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      v20 = v8 + (v11 | v15);
      return (v20 + 1);
    }
  }

LABEL_30:
  v16 = (((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v7 <= 0xFE)
  {
    v17 = *(v16 + 12);
    if (v17 < 2)
    {
      return 0;
    }

    v20 = (v17 + 2147483646) & 0x7FFFFFFF;
    return (v20 + 1);
  }

  v19 = (*(v5 + 48))((v16 + v9 + 20) & ~v9);
  if (v19 >= 2)
  {
    return v19 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for TransactionalPreferenceBinder(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  if (v9 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((v10 + 36) & ~v10) + v12;
  if (a3 <= v11)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v11 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v6 = 4;
      if (v11 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

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
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_20:
    if (v11 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v6 = 1;
  if (v11 >= a2)
  {
LABEL_30:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      v19 = (((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
      if (v9 > 0xFE)
      {
        v20 = ((v19 + v10 + 20) & ~v10);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);

          v24((v19 + v10 + 20) & ~v10, a2 + 1);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else if (a2 > 0xFE)
      {
        *(v19 + 12) = 0;
        *(v19 + 8) = 0;
        *v19 = a2 - 255;
      }

      else
      {
        *(v19 + 12) = a2 + 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v16 = ~v11 + a2;
  if (v13 >= 4)
  {
    bzero(a1, ((v10 + 36) & ~v10) + v12);
    *a1 = v16;
    v17 = 1;
    if (v6 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_58:
    if (v6 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_58;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v6 > 1)
    {
LABEL_62:
      if (v6 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v6)
  {
    a1[v13] = v17;
  }
}

_DWORD *initializeBufferWithCopyOfBuffer for PreferenceBinder(_DWORD *a1, _DWORD *a2)
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

  v9 = v6 & 0x100000;
  if (v7 <= 7 && v9 == 0 && ((-33 - v7) | v7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = AssociatedTypeWitness;
    *a1 = *a2;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = *v19;
    *(v18 + 5) = *(v19 + 5);
    *v18 = v20;
    v21 = ((v16 + 23) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = ((v17 + 23) & 0xFFFFFFFFFFFFFFFCLL);
    *v21 = *v22;
    v23 = v21 + v7 + 4;
    v24 = v22 + v7 + 4;
    if ((*(v5 + 48))(v24 & ~v7, 1, AssociatedTypeWitness))
    {
      memcpy((v23 & ~v7), (v24 & ~v7), v8);
    }

    else
    {
      (*(v5 + 16))(v23 & ~v7, v24 & ~v7, v13);
      (*(v5 + 56))(v23 & ~v7, 0, 1, v13);
    }
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v7 & 0xFC ^ 0x1FC) & (v7 + 16)));
  }

  return a1;
}

_DWORD *assignWithCopy for PreferenceBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = ((v5 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v6 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 80);
  v14 = v9 + v13 + 4;
  v15 = v10 + v13 + 4;
  v16 = *(v12 + 48);
  LODWORD(v9) = v16(v14 & ~v13, 1, AssociatedTypeWitness);
  v17 = v16(v15 & ~v13, 1, AssociatedTypeWitness);
  if (v9)
  {
    if (!v17)
    {
      (*(v12 + 16))(v14 & ~v13, v15 & ~v13, AssociatedTypeWitness);
      (*(v12 + 56))(v14 & ~v13, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v18 = *(v12 + 84);
    v19 = *(v12 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v12 + 24))(v14 & ~v13, v15 & ~v13, AssociatedTypeWitness);
      return a1;
    }

    v21 = *(v12 + 8);
    v20 = v12 + 8;
    v21(v14 & ~v13, AssociatedTypeWitness);
    v18 = *(v20 + 76);
    v19 = *(v20 + 56);
  }

  if (v18)
  {
    v22 = v19;
  }

  else
  {
    v22 = v19 + 1;
  }

  memcpy((v14 & ~v13), (v15 & ~v13), v22);
  return a1;
}

_DWORD *initializeWithTake for PreferenceBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  *(v7 + 5) = *(v8 + 5);
  *v7 = v9;
  v10 = ((v5 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v6 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v10 + v14 + 4;
  v16 = v11 + v14 + 4;
  if ((*(v13 + 48))(v16 & ~v14, 1, AssociatedTypeWitness))
  {
    if (*(v13 + 84))
    {
      v17 = *(v13 + 64);
    }

    else
    {
      v17 = *(v13 + 64) + 1;
    }

    memcpy((v15 & ~v14), (v16 & ~v14), v17);
  }

  else
  {
    (*(v13 + 32))(v15 & ~v14, v16 & ~v14, AssociatedTypeWitness);
    (*(v13 + 56))(v15 & ~v14, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithTake for PreferenceBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = ((v5 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v6 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 80);
  v14 = v9 + v13 + 4;
  v15 = v10 + v13 + 4;
  v16 = *(v12 + 48);
  LODWORD(v9) = v16(v14 & ~v13, 1, AssociatedTypeWitness);
  v17 = v16(v15 & ~v13, 1, AssociatedTypeWitness);
  if (v9)
  {
    if (!v17)
    {
      (*(v12 + 32))(v14 & ~v13, v15 & ~v13, AssociatedTypeWitness);
      (*(v12 + 56))(v14 & ~v13, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v18 = *(v12 + 84);
    v19 = *(v12 + 64);
  }

  else
  {
    if (!v17)
    {
      (*(v12 + 40))(v14 & ~v13, v15 & ~v13, AssociatedTypeWitness);
      return a1;
    }

    v21 = *(v12 + 8);
    v20 = v12 + 8;
    v21(v14 & ~v13, AssociatedTypeWitness);
    v18 = *(v20 + 76);
    v19 = *(v20 + 56);
  }

  if (v18)
  {
    v22 = v19;
  }

  else
  {
    v22 = v19 + 1;
  }

  memcpy((v14 & ~v13), (v15 & ~v13), v22);
  return a1;
}

uint64_t getEnumTagSinglePayload for PreferenceBinder(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0xFE)
  {
    v8 = 254;
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

  if (a2 > v8)
  {
    v11 = v10 + ((v9 + 32) & ~v9);
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_12;
    }

    v14 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 >= 2)
    {
LABEL_12:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

LABEL_19:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      v20 = v8 + (v11 | v15);
      return (v20 + 1);
    }
  }

LABEL_30:
  v16 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v7 <= 0xFE)
  {
    v17 = *(v16 + 12);
    if (v17 < 2)
    {
      return 0;
    }

    v20 = (v17 + 2147483646) & 0x7FFFFFFF;
    return (v20 + 1);
  }

  v19 = (*(v5 + 48))((v16 + v9 + 20) & ~v9);
  if (v19 >= 2)
  {
    return v19 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for PreferenceBinder(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  if (v9 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((v10 + 32) & ~v10) + v12;
  if (a3 <= v11)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v11 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v6 = 4;
      if (v11 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

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
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_20:
    if (v11 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v6 = 1;
  if (v11 >= a2)
  {
LABEL_30:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      v19 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
      if (v9 > 0xFE)
      {
        v20 = ((v19 + v10 + 20) & ~v10);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);

          v24((v19 + v10 + 20) & ~v10, a2 + 1);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else if (a2 > 0xFE)
      {
        *(v19 + 12) = 0;
        *(v19 + 8) = 0;
        *v19 = a2 - 255;
      }

      else
      {
        *(v19 + 12) = a2 + 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v16 = ~v11 + a2;
  if (v13 >= 4)
  {
    bzero(a1, ((v10 + 32) & ~v10) + v12);
    *a1 = v16;
    v17 = 1;
    if (v6 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_58:
    if (v6 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_58;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v6 > 1)
    {
LABEL_62:
      if (v6 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v6)
  {
    a1[v13] = v17;
  }
}

uint64_t instantiation function for generic protocol witness table for TransactionalPreferenceBinder<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value, @in_guaranteed Transaction) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t partial apply for closure #3 in TransactionalPreferenceBinder.updateValue()()
{
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  return (*(v0 + 40))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t AnyView.init(_fromValue:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  _viewProtocolDescriptor();
  if (!swift_conformsToProtocol())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  outlined init with copy of Any(a1, v5);
  v6 = 0;
  result = visit<A>(type:) in Visitor #1 in AnyView.init(_fromValue:)(DynamicType, DynamicType);
  v4 = v6;
  if (v6)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of Visitor #1 in AnyView.init(_fromValue:)(v5);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t static AnyView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA03AnyD0V_Tt3B5(v3, v7, a3);
}

uint64_t AnyView.debugDescription.getter(uint64_t a1)
{
  v5 = 0;
  v6 = 0xE000000000000000;
  v2 = MEMORY[0x193ABEDD0](0x2877656956796E41, 0xE800000000000000);
  (*(*a1 + 112))(v4, v2);
  type metadata accessor for View();
  _print_unlocked<A, B>(_:_:)();
  __swift_destroy_boxed_opaque_existential_1(v4);
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v5;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyView()
{
  v1 = *v0;
  v5 = 0;
  v6 = 0xE000000000000000;
  v2 = MEMORY[0x193ABEDD0](0x2877656956796E41, 0xE800000000000000);
  (*(*v1 + 112))(v4, v2);
  type metadata accessor for View();
  _print_unlocked<A, B>(_:_:)();
  __swift_destroy_boxed_opaque_existential_1(v4);
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v5;
}

uint64_t AnyView.childInfo(metadata:)(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 80))();
  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t AnyView.makeChildView(metadata:view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return (*(*a3 + 88))(a1, v6);
}

uint64_t protocol witness for DynamicView.childInfo(metadata:) in conformance AnyView(uint64_t a1)
{
  result = (*(**v1 + 80))();
  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t protocol witness for DynamicView.makeChildView(metadata:view:inputs:) in conformance AnyView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 48);
  v8[2] = *(a3 + 32);
  v8[3] = v5;
  v8[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  return (*(*v4 + 88))(a2, v8);
}

uint64_t visit<A>(type:) in Visitor #1 in AnyView.init(_fromValue:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v2, v8);
  swift_dynamicCast();
  v6 = AnyView.init<A>(_:)(v5, a2);

  *(v2 + 32) = v6;
  return result;
}

uint64_t outlined destroy of Visitor #1 in AnyView.init(_fromValue:)(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return a1;
}

unint64_t type metadata accessor for View()
{
  result = lazy cache variable for type metadata for View;
  if (!lazy cache variable for type metadata for View)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for View);
  }

  return result;
}

uint64_t destroy for Visitor #1 in AnyView.init(_fromValue:)(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for Visitor #1 in AnyView.init(_fromValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *assignWithCopy for Visitor #1 in AnyView.init(_fromValue:)(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for Visitor #1 in AnyView.init(_fromValue:)(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

double static Time.+ infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 + a3;
  *a2 = result;
  return result;
}

{
  result = *a1 + a3;
  *a2 = result;
  return result;
}

double static Time.- infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 - a3;
  *a2 = result;
  return result;
}

double static Time.+= infix(_:_:)(double *a1, double a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

double static Time.- prefix(_:)@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = -*a1;
  *a2 = result;
  return result;
}

uint64_t Date.init(ifResolved:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Date?(*a1, v6);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of Date?(v6);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, v7);
}

uint64_t withStableDate<A>(for:block:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  type metadata accessor for Date?(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v18 = a4;
  v19 = a2;
  v20 = a3;
  v21 = v12;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in withStableDate<A>(for:block:), v17, v9, MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], v14);
  return outlined destroy of Date?(v11);
}

uint64_t Date.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  outlined init with copy of Date?(v7, v6);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  outlined destroy of Date?(v6);
  static Date.now.getter();
  outlined destroy of Date?(v7);
  (*(v9 + 16))(v7, a2, v8);
  return (*(v9 + 56))(v7, 0, 1, v8);
}

double static Time.* infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 * a3;
  *a2 = result;
  return result;
}

double static Time./ infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 / a3;
  *a2 = result;
  return result;
}

double static Time.-= infix(_:_:)(double *a1, double a2)
{
  result = *a1 - a2;
  *a1 = result;
  return result;
}

double static Time.*= infix(_:_:)(double *a1, double a2)
{
  result = *a1 * a2;
  *a1 = result;
  return result;
}

double static Time./= infix(_:_:)(double *a1, double a2)
{
  result = *a1 / a2;
  *a1 = result;
  return result;
}

uint64_t Time.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&v1);
}

Swift::Int Time.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

uint64_t partial apply for closure #1 in withStableDate<A>(for:block:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v5[0] = a1;
  v5[1] = v3;
  return v2(v5);
}

double _VectorMath.magnitude.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(v3 + 24))(a1, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return sqrt(v10);
}

Swift::Void __swiftcall _VectorMath.negate()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  (*(v3 + 24))(v2, v3);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v7, AssociatedTypeWitness);
  v14(v10, AssociatedTypeWitness);
  (*(v3 + 32))(v13, v2, v3);
}

uint64_t static _VectorMath.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *, uint64_t, void))
{
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v18[-v11];
  (*(v7 + 24))(a3, v7, v10);
  v13 = (*(v7 + 40))(v18, a3, v7);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a5(v15, v12, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v13(v18, 0);
}

uint64_t static _VectorMath.*= infix(_:_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(a4 + 8) + 40))(v10);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 16);
  v8 = swift_checkMetadataState();
  v7(v8, AssociatedConformanceWitness, a1);
  return v5(v10, 0);
}

Swift::Void __swiftcall _VectorMath.normalize()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(v5 + 24))(v4, v5, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  if (v12 != 0.0)
  {
    static _VectorMath.*= infix(_:_:)(1.0 / sqrt(v12), v2, v4, v3);
  }
}

Swift::Int Prominence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t EnvironmentValues.headerProminence.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  if (!v1[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016HeaderProminenceI0VG_Tt1g5(v2, a1);
}

uint64_t key path setter for EnvironmentValues.headerProminence : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016HeaderProminenceK0VG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.headerProminence.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016HeaderProminenceK0VG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.headerProminence.modify(char **a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016HeaderProminenceI0VG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HeaderProminenceKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderProminenceKey>, &protocol witness table for HeaderProminenceKey, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016HeaderProminenceV0VG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 0;
    }

    v4[40] = v9;
  }

  return EnvironmentValues.headerProminence.modify;
}

void EnvironmentValues.headerProminence.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016HeaderProminenceF0VG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016HeaderProminenceK0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t View.headerProminence(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Prominence>();
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = *a1;
  KeyPath = swift_getKeyPath();
  v14 = v10;
  View.environment<A>(_:_:)(KeyPath, &v14, a2, a3);

  v14 = v10;
  v13[1] = a3;
  v13[2] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  swift_getWitnessTable();
  View._trait<A>(_:_:)(&type metadata for HeaderProminenceKey, &v14, v6);
  return (*(v7 + 8))(v9, v6);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Prominence>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Prominence>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Prominence>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Prominence and conformance Prominence()
{
  result = lazy protocol witness table cache variable for type Prominence and conformance Prominence;
  if (!lazy protocol witness table cache variable for type Prominence and conformance Prominence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prominence and conformance Prominence);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<HeaderProminenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v5 = a4(0, &type metadata for HeaderProminenceKey);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t printGestures(data:host:)(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if ((_eventDebugTriggers.rawValue & 0x20) != 0)
  {
    a1(v21, result);
    v28 = v21[6];
    v29 = v21[7];
    v30 = v21[8];
    v24 = v21[2];
    v25 = v21[3];
    v26 = v21[4];
    v27 = v21[5];
    v22 = v21[0];
    v23 = v21[1];
    result = _s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v22);
    if (result != 1)
    {
      *&v20[0] = 0x5345525554534547;
      *(&v20[0] + 1) = 0xEA00000000002820;
      v6 = succinctDescription(of:)(a3);
      MEMORY[0x193ABEDD0](v6);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (one-time initialization token for events != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.events);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *&v20[0] = v11;
        *v10 = 136315138;
        *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x5345525554534547, 0xEA00000000002820, v20);
        _os_log_impl(&dword_18D018000, v8, v9, "%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x193AC4820](v11, -1, -1);
        MEMORY[0x193AC4820](v10, -1, -1);
      }

      v19[6] = v28;
      v19[7] = v29;
      v19[8] = v30;
      v19[2] = v24;
      v19[3] = v25;
      v19[4] = v26;
      v19[5] = v27;
      v19[0] = v22;
      v19[1] = v23;
      _s7SwiftUI12GestureDebugO4DataVSgWOi0_(v20);
      v18[7] = v20[7];
      v18[8] = v20[8];
      v18[2] = v20[2];
      v18[3] = v20[3];
      v18[5] = v20[5];
      v18[6] = v20[6];
      v18[4] = v20[4];
      v18[0] = v20[0];
      v18[1] = v20[1];
      *&v16 = 0;
      *(&v16 + 1) = 0xE000000000000000;
      v17 = v22;
      GestureDebug.Data.printSubtree(parent:indent:)(v18, &v16);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v19[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v19);
        _os_log_impl(&dword_18D018000, v12, v13, "%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x193AC4820](v15, -1, -1);
        MEMORY[0x193AC4820](v14, -1, -1);
      }

      return _s7SwiftUI12GestureDebugO4DataVSgWOhTm_0(v21, &lazy cache variable for type metadata for GestureDebug.Data?, &type metadata for GestureDebug.Data);
    }
  }

  return result;
}

Swift::Void __swiftcall printEvents(_:)(Swift::OpaquePointer a1)
{
  v2 = a1._rawValue + 64;
  v3 = 1 << *(a1._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1._rawValue + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v8 << 6);
      v11 = (*(a1._rawValue + 6) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      outlined init with copy of AnyTrackedValue(*(a1._rawValue + 7) + 40 * v10, v22);
      v21[0] = v12;
      v21[1] = v13;
      closure #1 in printEvents(_:)(v21, v22);
      outlined destroy of (key: EventID, value: EventType)(v21);
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v8];
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  if (one-time initialization token for _eventDebugTriggers == -1)
  {
    goto LABEL_12;
  }

LABEL_20:
  swift_once();
LABEL_12:
  swift_beginAccess();
  if ((_eventDebugTriggers.rawValue & 4) != 0)
  {
    v20[0] = 0x2053544E455645;
    v20[1] = 0xE700000000000000;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v14 = Dictionary.description.getter();
    MEMORY[0x193ABEDD0](v14);

    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    if (one-time initialization token for events != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.events);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2053544E455645, 0xE700000000000000, v20);
      _os_log_impl(&dword_18D018000, v16, v17, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x193AC4820](v19, -1, -1);
      MEMORY[0x193AC4820](v18, -1, -1);
    }
  }
}

Swift::Void __swiftcall printEventBindings(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    swift_beginAccess();
    if ((_eventDebugTriggers.rawValue & 8) == 0)
    {
      break;
    }

    if (one-time initialization token for events != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.events);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v49 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53474E49444E4942, 0xE800000000000000, &v49);
      _os_log_impl(&dword_18D018000, v2, v3, "%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x193AC4820](v5, -1, -1);
      MEMORY[0x193AC4820](v4, -1, -1);
    }

    v6 = a1._rawValue + 64;
    v7 = 1 << *(a1._rawValue + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1._rawValue + 8);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v43 = v10;
LABEL_11:
    if (v9)
    {
      v12 = v11;
LABEL_16:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = *(*(a1._rawValue + 6) + 16 * v13 + 8);
      v45 = *(*(a1._rawValue + 7) + 8 * v13);

      v49 = _typeName(_:qualified:)();
      v50 = v15;
      MEMORY[0x193ABEDD0](35, 0xE100000000000000);
      *&v46[0] = v14;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v16);

      MEMORY[0x193ABEDD0](0x5B203E2D20, 0xE500000000000000);
      v18 = v49;
      v17 = v50;

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v49 = v22;
        *v21 = 136315138;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v49);
        _os_log_impl(&dword_18D018000, v19, v20, "%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x193AC4820](v22, -1, -1);
        MEMORY[0x193AC4820](v21, -1, -1);
      }

      v9 &= v9 - 1;
      v23 = v45;

      for (i = 1; ; i = 0)
      {
        if (i)
        {

          if (!v23)
          {
            goto LABEL_30;
          }
        }

        else if (!v23 || (v25 = *(*v23 + 88), v26 = , v27 = v25(v26), , , (v23 = v27) == 0))
        {
LABEL_30:
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v49 = v42;
            *v41 = 136315138;
            *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(2653, 0xE200000000000000, &v49);
            _os_log_impl(&dword_18D018000, v39, v40, "%s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v42);
            MEMORY[0x193AC4820](v42, -1, -1);
            MEMORY[0x193AC4820](v41, -1, -1);
          }

          v11 = v12;
          v10 = v43;
          v6 = a1._rawValue + 64;
          goto LABEL_11;
        }

        v52 = 8224;
        v53 = 0xE200000000000000;
        v48 = v23;
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomStringConvertible);
        swift_retain_n();
        if (swift_dynamicCast())
        {
          outlined init with take of AnyTrackedValue(v46, &v49);
          __swift_project_boxed_opaque_existential_1(&v49, v51);
          v28 = dispatch thunk of CustomStringConvertible.description.getter();
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_1(&v49);
          v31 = v28;
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          outlined destroy of CustomStringConvertible?(v46);
          swift_getObjectType();
          v31 = AGTypeID.description.getter();
          v30 = v32;
        }

        v49 = 0;
        v50 = 0xE000000000000000;
        MEMORY[0x193ABEDD0](v31, v30);

        MEMORY[0x193ABEDD0](32, 0xE100000000000000);
        *&v46[0] = v23;
        _print_unlocked<A, B>(_:_:)();

        MEMORY[0x193ABEDD0](v49, v50);

        v34 = v52;
        v33 = v53;

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v49 = v38;
          *v37 = 136315138;
          *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v49);
          _os_log_impl(&dword_18D018000, v35, v36, "%s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x193AC4820](v38, -1, -1);
          MEMORY[0x193AC4820](v37, -1, -1);
        }
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *&v6[8 * v12];
      ++v11;
      if (v9)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }
}

void ResponderNode.log(action:data:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v26 = a2;

  if (String.count.getter() <= 11)
  {
    v6 = String.count.getter();
    v7 = 12 - v6;
    if (__OFSUB__(12, v6))
    {
      __break(1u);
      return;
    }

    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    countAndFlagsBits = String.init(repeating:count:)(v8, v7)._countAndFlagsBits;
    MEMORY[0x193ABEDD0](countAndFlagsBits);
  }

  type metadata accessor for ViewResponder();
  if (swift_dynamicCastClass())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    v11 = succinctDescription(of:)(Strong);
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v11, v13);

  MEMORY[0x193ABEDD0](540945696, 0xE400000000000000);
  v14 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v14);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  *&v22 = v4;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  outlined init with copy of Any?(a3, &v22);
  if (v23)
  {
    outlined init with take of Any(&v22, v24);
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](v22, *(&v22 + 1));

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOhTm_0(&v22, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  }

  v16 = v25;
  v15 = v26;
  if (one-time initialization token for events != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.events);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v24[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v24);
    _os_log_impl(&dword_18D018000, v18, v19, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x193AC4820](v21, -1, -1);
    MEMORY[0x193AC4820](v20, -1, -1);
  }
}

SwiftUI::_EventDebugTriggers __swiftcall _EventDebugTriggers.init(environmentString:)(Swift::String environmentString)
{
  v2 = v1;
  String.lowercased()();

  v3 = String.Iterator.next()();
  if (v3.value._object)
  {
    countAndFlagsBits = v3.value._countAndFlagsBits;
    object = v3.value._object;
    v6 = 0;
    while (1)
    {
      if (countAndFlagsBits == 42 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v6 = -1;
      }

      else if (countAndFlagsBits == 114 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v6 |= 2uLL;
      }

      else if (countAndFlagsBits == 101 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v6 |= 4uLL;
      }

      else if (countAndFlagsBits == 98 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v6 |= 8uLL;
      }

      else if (countAndFlagsBits == 112 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v6 |= 0x10uLL;
      }

      else if (countAndFlagsBits == 103 && object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v6 |= 0x20uLL;
      }

      else
      {
        if (countAndFlagsBits == 104 && object == 0xE100000000000000)
        {

LABEL_32:
          v6 |= 0x40uLL;
          goto LABEL_4;
        }

        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v8)
        {
          goto LABEL_32;
        }
      }

LABEL_4:
      v7 = String.Iterator.next()();
      countAndFlagsBits = v7.value._countAndFlagsBits;
      object = v7.value._object;
      if (!v7.value._object)
      {
        goto LABEL_34;
      }
    }
  }

  v6 = 0;
LABEL_34:

  *v2 = v6;
  return result;
}

void one-time initialization function for _eventDebugTriggers()
{
  if (getenv("SWIFTUI_EVENT_DEBUG"))
  {
    v0 = String.init(cString:)();
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000024, 0x800000018DD809A0);
    v4 = [v2 stringForKey_];

    if (!v4)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v0 = v5;
    v1 = v7;
  }

  _EventDebugTriggers.init(environmentString:)(*&v0);
  v8 = v9;
LABEL_6:
  _eventDebugTriggers.rawValue = v8;
}

uint64_t _eventDebugTriggers.getter@<X0>(SwiftUI::_EventDebugTriggers *a1@<X8>)
{
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  a1->rawValue = _eventDebugTriggers.rawValue;
  return result;
}

uint64_t _eventDebugTriggers.setter(Swift::Int *a1)
{
  v1 = *a1;
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  _eventDebugTriggers.rawValue = v1;
  return result;
}

uint64_t (*_eventDebugTriggers.modify())()
{
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

uint64_t closure #1 in printEvents(_:)(uint64_t *a1, void *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = *a1;
  if (one-time initialization token for eventHandling != -1)
  {
    swift_once();
  }

  v11 = static Signpost.eventHandling;
  v12 = word_1ED521BA0;
  v13 = HIBYTE(word_1ED521BA0);
  v14 = byte_1ED521BA2;
  v15 = static os_signpost_type_t.event.getter();
  v74 = v11;
  v75 = v12;
  v76 = v13;
  v77 = v14;
  result = Signpost.isEnabled.getter();
  if (result)
  {
    v65 = *(&v11 + 1);
    LODWORD(v66) = v15;
    v56 = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for CustomStringConvertible?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18DDAF080;
    *&v74 = v10;
    type metadata accessor for Any.Type();
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v22 = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 64) = v22;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v23 = a2[3];
    v24 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v23);
    (*(v24 + 8))(&v74, v23, v24);
    v25 = String.init<A>(describing:)();
    *(v17 + 96) = v21;
    *(v17 + 104) = v22;
    *(v17 + 72) = v25;
    *(v17 + 80) = v26;
    v27 = a2[3];
    v28 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v27);
    (*(v28 + 16))(&v74, v27, v28);
    v29 = v74;
    v30 = MEMORY[0x1E69E6438];
    *(v17 + 136) = MEMORY[0x1E69E63B0];
    *(v17 + 144) = v30;
    *(v17 + 112) = v29;
    if (one-time initialization token for _signpostLog == -1)
    {
      v31 = v65;
      if (v13)
      {
LABEL_6:
        v73 = v66;
        v71 = _signpostLog;
        v72 = &dword_18D018000;
        *&v74 = v11;
        *(&v74 + 1) = v31;
        v75 = v12;
        v68 = "Event: %{public}@.%{public}@ at %3.6f";
        v69 = 37;
        v70 = 2;
        v67 = v17;
        v32 = v56;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v63 + 8))(v32, v62);
      }
    }

    else
    {
      swift_once();
      v31 = v65;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    if (v11 == 20)
    {
      v33 = 3;
    }

    else
    {
      v33 = 4;
    }

    v34 = bswap32(v11) | (4 * WORD1(v11));
    v35 = v66;
    v36 = v63 + 16;
    v57 = *(v63 + 16);
    v37 = v57(v64, v56, v62);
    v38 = 0;
    LOBYTE(v68) = 1;
    v66 = v33;
    v63 = v36;
    v60 = 16 * v33;
    v61 = (v36 - 8);
    v59 = v17 + 32;
    v58 = v11;
    do
    {
      v65 = &v55;
      MEMORY[0x1EEE9AC00](v37);
      v40 = &v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = v40 + 8;
      v42 = v66;
      v43 = v40 + 8;
      do
      {
        *(v43 - 1) = 0;
        *v43 = 0;
        v43 += 16;
        --v42;
      }

      while (v42);
      v44 = v59 + 40 * v38;
      v45 = v66;
      while (1)
      {
        v46 = *(v17 + 16);
        if (v38 == v46)
        {
          break;
        }

        if (v38 >= v46)
        {
          __break(1u);
        }

        ++v38;
        outlined init with copy of AnyTrackedValue(v44, &v74);
        v47 = v78;
        __swift_project_boxed_opaque_existential_1(&v74, v78);
        *(v41 - 1) = CVarArg.kdebugValue(_:)(v34 | v35, v47);
        *v41 = v48 & 1;
        v41 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v74);
        v44 += 40;
        if (!--v45)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v68) = 0;
LABEL_20:
      v49 = v58;
      if (v58 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v40[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v40[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v40[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v49 != 20 && v40[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v50 = v62;
      v51 = *v61;
      v52 = v64;
      (*v61)(v64, v62);
      v53 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
      v37 = v57(v52, v53, v50);
    }

    while ((v68 & 1) != 0);
    v54 = v62;
    v51(v64, v62);
    v51(v56, v54);
  }

  return result;
}

uint64_t succinctDescription(of:)(uint64_t a1)
{
  if (!a1)
  {
    return 0x736F68206C696E28;
  }

  v10 = a1;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomStringConvertible);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v8, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v3;
    __swift_destroy_boxed_opaque_existential_1(v11);
    v5 = v2;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    outlined destroy of CustomStringConvertible?(v8);
    swift_getObjectType();
    v5 = AGTypeID.description.getter();
    v4 = v7;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  MEMORY[0x193ABEDD0](v5, v4);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  *&v8[0] = a1;
  _print_unlocked<A, B>(_:_:)();
  swift_unknownObjectRelease();
  return v11[0];
}

uint64_t _GestureInputs.InheritedPhase.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x193ABEDD0](0x2064656C696166, 0xE700000000000000);
  }

  if ((v1 & 2) != 0)
  {
    MEMORY[0x193ABEDD0](0x20657669746361, 0xE700000000000000);
  }

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);

  return 8283;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t outlined destroy of CustomStringConvertible?(uint64_t a1)
{
  type metadata accessor for CustomStringConvertible?(0, &lazy cache variable for type metadata for CustomStringConvertible?, &lazy cache variable for type metadata for CustomStringConvertible, MEMORY[0x1E69E6F68], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI12GestureDebugO4DataVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for GestureDebug.Data?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _EventDebugTriggers and conformance _EventDebugTriggers()
{
  result = lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers;
  if (!lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers;
  if (!lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers;
  if (!lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers;
  if (!lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EventDebugTriggers and conformance _EventDebugTriggers);
  }

  return result;
}

uint64_t specialized printGestures(data:host:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if ((_eventDebugTriggers.rawValue & 0x20) != 0)
  {
    result = *(a2 + 236);
    if (result != *MEMORY[0x1E698D3F8])
    {
      Value = AGGraphGetValue();
      v27 = *Value;
      v6 = Value[4];
      v8 = Value[1];
      v7 = Value[2];
      v30 = Value[3];
      v31 = v6;
      v28 = v8;
      v29 = v7;
      v9 = Value[8];
      v11 = Value[5];
      v10 = Value[6];
      v34 = Value[7];
      v35 = v9;
      v32 = v11;
      v33 = v10;
      outlined init with copy of GestureDebug.Data(&v27, v26);
      v12 = succinctDescription(of:)(a1);
      MEMORY[0x193ABEDD0](v12);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (one-time initialization token for events != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.events);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v26[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x5345525554534547, 0xEA00000000002820, v26);
        _os_log_impl(&dword_18D018000, v14, v15, "%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x193AC4820](v17, -1, -1);
        MEMORY[0x193AC4820](v16, -1, -1);
      }

      v25[6] = v33;
      v25[7] = v34;
      v25[8] = v35;
      v25[2] = v29;
      v25[3] = v30;
      v25[4] = v31;
      v25[5] = v32;
      v25[0] = v27;
      v25[1] = v28;
      _s7SwiftUI12GestureDebugO4DataVSgWOi0_(v26);
      v24[7] = v26[7];
      v24[8] = v26[8];
      v24[2] = v26[2];
      v24[3] = v26[3];
      v24[5] = v26[5];
      v24[6] = v26[6];
      v24[4] = v26[4];
      v24[0] = v26[0];
      v24[1] = v26[1];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      v23 = v27;
      GestureDebug.Data.printSubtree(parent:indent:)(v24, &v22);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v25[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v25);
        _os_log_impl(&dword_18D018000, v18, v19, "%s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x193AC4820](v21, -1, -1);
        MEMORY[0x193AC4820](v20, -1, -1);
      }

      return outlined destroy of GestureDebug.Data(&v27);
    }
  }

  return result;
}

{
  if (one-time initialization token for _eventDebugTriggers != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if ((_eventDebugTriggers.rawValue & 0x20) != 0)
  {
    result = *(a2 + 300);
    if (result != *MEMORY[0x1E698D3F8])
    {
      Value = AGGraphGetValue();
      v27 = *Value;
      v6 = Value[4];
      v8 = Value[1];
      v7 = Value[2];
      v30 = Value[3];
      v31 = v6;
      v28 = v8;
      v29 = v7;
      v9 = Value[8];
      v11 = Value[5];
      v10 = Value[6];
      v34 = Value[7];
      v35 = v9;
      v32 = v11;
      v33 = v10;
      outlined init with copy of GestureDebug.Data(&v27, v26);
      v12 = succinctDescription(of:)(a1);
      MEMORY[0x193ABEDD0](v12);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (one-time initialization token for events != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.events);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v26[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x5345525554534547, 0xEA00000000002820, v26);
        _os_log_impl(&dword_18D018000, v14, v15, "%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x193AC4820](v17, -1, -1);
        MEMORY[0x193AC4820](v16, -1, -1);
      }

      v25[6] = v33;
      v25[7] = v34;
      v25[8] = v35;
      v25[2] = v29;
      v25[3] = v30;
      v25[4] = v31;
      v25[5] = v32;
      v25[0] = v27;
      v25[1] = v28;
      _s7SwiftUI12GestureDebugO4DataVSgWOi0_(v26);
      v24[7] = v26[7];
      v24[8] = v26[8];
      v24[2] = v26[2];
      v24[3] = v26[3];
      v24[5] = v26[5];
      v24[6] = v26[6];
      v24[4] = v26[4];
      v24[0] = v26[0];
      v24[1] = v26[1];
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      v23 = v27;
      GestureDebug.Data.printSubtree(parent:indent:)(v24, &v22);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v25[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v25);
        _os_log_impl(&dword_18D018000, v18, v19, "%s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x193AC4820](v21, -1, -1);
        MEMORY[0x193AC4820](v20, -1, -1);
      }

      return outlined destroy of GestureDebug.Data(&v27);
    }
  }

  return result;
}

void type metadata accessor for CustomStringConvertible?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for GestureDebug.Data?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double _ColorMatrix.init(_:premultiplied:)@<D0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  specialized _ColorMatrix.init(_:premultiplied:)(a1, a2, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

Swift::Void __swiftcall _ColorMatrix.add(_:)(SwiftUI::_ColorMatrix *a1)
{
  v2 = vaddq_f32(*&a1->m15, v1[1]);
  *v1 = vaddq_f32(*&a1->m11, *v1);
  v1[1] = v2;
  v3 = vaddq_f32(*&a1->m33, v1[3]);
  v1[2] = vaddq_f32(*&a1->m24, v1[2]);
  v1[3] = v3;
  v1[4] = vaddq_f32(*&a1->m42, v1[4]);
}

Swift::Void __swiftcall _ColorMatrix.subtract(_:)(SwiftUI::_ColorMatrix *a1)
{
  v2 = vsubq_f32(v1[1], *&a1->m15);
  *v1 = vsubq_f32(*v1, *&a1->m11);
  v1[1] = v2;
  v3 = vsubq_f32(v1[3], *&a1->m33);
  v1[2] = vsubq_f32(v1[2], *&a1->m24);
  v1[3] = v3;
  v1[4] = vsubq_f32(v1[4], *&a1->m42);
}

Swift::Void __swiftcall _ColorMatrix.negate()()
{
  v1 = vnegq_f32(v0[1]);
  *v0 = vnegq_f32(*v0);
  v0[1] = v1;
  v2 = vnegq_f32(v0[3]);
  v0[2] = vnegq_f32(v0[2]);
  v0[3] = v2;
  v0[4] = vnegq_f32(v0[4]);
}

Swift::Void __swiftcall _ColorMatrix.scale(by:)(Swift::Double by)
{
  v2 = by;
  v3 = vmulq_n_f32(v1[1], v2);
  *v1 = vmulq_n_f32(*v1, v2);
  v1[1] = v3;
  v4 = vmulq_n_f32(v1[3], v2);
  v1[2] = vmulq_n_f32(v1[2], v2);
  v1[3] = v4;
  v1[4] = vmulq_n_f32(v1[4], v2);
}

double _ColorMatrix.magnitudeSquared.getter()
{
  v1 = vmul_f32(*(v0 + 4), *(v0 + 4));
  v2 = ((*v0 * *v0) + v1.f32[0]) + v1.f32[1];
  v3 = vmul_f32(*(v0 + 12), *(v0 + 12));
  v4 = (v2 + v3.f32[0]) + v3.f32[1];
  v5 = vmul_f32(*(v0 + 24), *(v0 + 24));
  v3.f32[0] = ((*(v0 + 20) * *(v0 + 20)) + v5.f32[0]) + v5.f32[1];
  v6 = vmul_f32(*(v0 + 32), *(v0 + 32));
  v3.f32[0] = (v3.f32[0] + v6.f32[0]) + v6.f32[1];
  v7 = vmul_f32(*(v0 + 44), *(v0 + 44));
  v6.f32[0] = ((*(v0 + 40) * *(v0 + 40)) + v7.f32[0]) + v7.f32[1];
  v8 = vmul_f32(*(v0 + 52), *(v0 + 52));
  v6.f32[0] = (v6.f32[0] + v8.f32[0]) + v8.f32[1];
  v9 = vmul_f32(*(v0 + 64), *(v0 + 64));
  v8.f32[0] = ((*(v0 + 60) * *(v0 + 60)) + v9.f32[0]) + v9.f32[1];
  v10 = vmul_f32(*(v0 + 72), *(v0 + 72));
  return (((v4 + v3.f32[0]) + v6.f32[0]) + ((v8.f32[0] + v10.f32[0]) + v10.f32[1]));
}

void __swiftcall _ColorMatrix.init(_:)(SwiftUI::_ColorMatrix *__return_ptr retstr, SwiftUI::ColorMatrix *a2)
{
  specialized _ColorMatrix.init(_:)(a2, v5);
  v3 = v5[3];
  *&retstr->m24 = v5[2];
  *&retstr->m33 = v3;
  *&retstr->m42 = v5[4];
  v4 = v5[1];
  *&retstr->m11 = v5[0];
  *&retstr->m15 = v4;
}

__n128 _ColorMatrix.init(alphaMultiply:premultiplied:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  specialized _ColorMatrix.init(alphaMultiply:premultiplied:)(a1, v9, a3, a4, a5, a6);
  v7 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v9[4];
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

void __swiftcall ColorMatrix.init()(SwiftUI::ColorMatrix *__return_ptr retstr)
{
  retstr->r1 = 1.0;
  *&retstr->r4 = 0;
  *&retstr->r2 = 0;
  *&retstr->g1 = 0x3F80000000000000;
  *&retstr->g5 = 0;
  *&retstr->g3 = 0;
  *&retstr->b2 = 0x3F80000000000000;
  *&retstr->a1 = 0;
  *&retstr->b4 = 0;
  retstr->a3 = 0.0;
  *&retstr->a4 = 1065353216;
}

void _ColorMatrix.init(color:in:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v20[0] = *a2;
  v20[1] = v4;
  v5 = (*(*a1 + 112))(v20);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = -v5;
  if (v5 > 0.0)
  {
    v12 = v5;
  }

  if (v12 <= 0.0031308)
  {
    v13 = v12 * 12.92;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = (powf(v12, 0.41667) * 1.055) + -0.055;
    }
  }

  v14 = -v7;
  if (v7 > 0.0)
  {
    v14 = v7;
  }

  if (v14 <= 0.0031308)
  {
    v15 = v14 * 12.92;
  }

  else
  {
    v15 = 1.0;
    if (v14 != 1.0)
    {
      v15 = (powf(v14, 0.41667) * 1.055) + -0.055;
    }
  }

  if (v9 <= 0.0)
  {
    v16 = -v9;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0.0031308)
  {

    v17 = v16 * 12.92;
  }

  else
  {

    v17 = 1.0;
    if (v16 != 1.0)
    {
      v17 = (powf(v16, 0.41667) * 1.055) + -0.055;
    }
  }

  v18 = -v15;
  if (v7 > 0.0)
  {
    v18 = v15;
  }

  v19 = -v13;
  if (v5 > 0.0)
  {
    v19 = v13;
  }

  *a3 = v19;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = 0;
  *(a3 + 24) = v18;
  if (v9 <= 0.0)
  {
    v17 = -v17;
  }

  *(a3 + 36) = 0;
  *(a3 + 28) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = v17;
  *(a3 + 60) = 0;
  *(a3 + 52) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = v11;
  *(a3 + 76) = 0;
}

uint64_t _ColorMatrix.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  UnkeyedEncodingContainer.encodeRow(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    UnkeyedEncodingContainer.encodeRow(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    UnkeyedEncodingContainer.encodeRow(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    UnkeyedEncodingContainer.encodeRow(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = v1[3];
  v5[2] = v1[2];
  v5[3] = v2;
  v5[4] = v1[4];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  return closure #1 in _ColorMatrix.encode(to:)(v5, a1);
}

uint64_t UnkeyedEncodingContainer.encodeRow(_:)()
{
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v0)
  {
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    return dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return result;
}

__n128 _ColorMatrix.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized _ColorMatrix.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  *v7 = 1065353216;
  *&v7[4] = 0uLL;
  *&v7[20] = 0x3F80000000000000;
  *&v7[28] = 0uLL;
  *&v7[44] = 0x3F80000000000000uLL;
  *&v7[60] = 0;
  *&v7[68] = 0;
  *&v7[72] = 1065353216;
  closure #1 in _ColorMatrix.init(from:)(v7, a1, &v6);
  if (!v2)
  {
    v5 = *&v7[48];
    *(a2 + 32) = *&v7[32];
    *(a2 + 48) = v5;
    *(a2 + 64) = *&v7[64];
    result = *&v7[16];
    *a2 = *v7;
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t UnkeyedDecodingContainer.decodeRow()@<X0>(_DWORD *a1@<X8>)
{
  result = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if (!v1)
  {
    v5 = v4;
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v7 = v6;
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v9 = v8;
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v11 = v10;
    result = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    *a1 = v5;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v11;
    a1[4] = v12;
  }

  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance _ColorMatrix@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized _ColorMatrix.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance _ColorMatrix(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  UnkeyedEncodingContainer.encodeRow(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    UnkeyedEncodingContainer.encodeRow(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    UnkeyedEncodingContainer.encodeRow(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    UnkeyedEncodingContainer.encodeRow(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void __swiftcall _ColorMatrix.init(row1:row2:row3:row4:)(SwiftUI::_ColorMatrix *__return_ptr retstr, Swift::tuple_Float_Float_Float_Float_Float *row1, Swift::tuple_Float_Float_Float_Float_Float *row2, Swift::tuple_Float_Float_Float_Float_Float *row3, Swift::tuple_Float_Float_Float_Float_Float *row4)
{
  retstr->m11 = v5;
  retstr->m12 = v6;
  retstr->m13 = v7;
  retstr->m14 = v8;
  retstr->m15 = v9;
  retstr->m21 = v10;
  retstr->m22 = v11;
  retstr->m23 = v12;
  *&retstr->m24 = v13;
  *&retstr->m33 = v14;
  *&retstr->m42 = v15;
}

__n128 _ColorMatrix.init(colorMultiply:premultiplied:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  specialized _ColorMatrix.init(colorMultiply:premultiplied:)(a1, v9, a3, a4, a5, a6);
  v7 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v9[4];
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

void __swiftcall _ColorMatrix.init(hueRotation:)(SwiftUI::_ColorMatrix *__return_ptr retstr, SwiftUI::Angle hueRotation)
{
  specialized _ColorMatrix.init(hueRotation:)(v5, hueRotation.radians);
  v3 = v5[3];
  *&retstr->m24 = v5[2];
  *&retstr->m33 = v3;
  *&retstr->m42 = v5[4];
  v4 = v5[1];
  *&retstr->m11 = v5[0];
  *&retstr->m15 = v4;
}

void __swiftcall _ColorMatrix.init(brightness:)(SwiftUI::_ColorMatrix *__return_ptr retstr, Swift::Double brightness)
{
  v2 = brightness;
  *&retstr->m11 = xmmword_18DDD8E20;
  retstr->m15 = v2;
  *&retstr->m21 = xmmword_18DE0AF10;
  retstr->m25 = v2;
  *&retstr->m31 = xmmword_18DDC57D0;
  retstr->m35 = v2;
  *&retstr->m41 = xmmword_18DD85540;
  retstr->m45 = 0.0;
}

void __swiftcall _ColorMatrix.init(contrast:)(SwiftUI::_ColorMatrix *__return_ptr retstr, Swift::Double contrast)
{
  v2 = contrast;
  retstr->m11 = v2;
  v3 = (1.0 - v2) * 0.5;
  *&retstr->m12 = 0;
  retstr->m14 = 0.0;
  retstr->m15 = v3;
  retstr->m21 = 0.0;
  retstr->m22 = v2;
  *&retstr->m23 = 0;
  retstr->m25 = v3;
  *&retstr->m31 = 0;
  retstr->m33 = v2;
  retstr->m34 = 0.0;
  retstr->m35 = v3;
  *&retstr->m41 = xmmword_18DD85540;
  retstr->m45 = 0.0;
}

double _ColorMatrix.init(luminanceToAlpha:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = 0.000352343834;
  *(a1 + 60) = xmmword_18DE0AF20;
  *(a1 + 76) = 0;
  return result;
}

void __swiftcall _ColorMatrix.init(colorInvert:)(SwiftUI::_ColorMatrix *__return_ptr retstr, Swift::Float colorInvert)
{
  v2 = 1.0 - (colorInvert + colorInvert);
  retstr->m11 = v2;
  *&retstr->m12 = 0;
  retstr->m14 = 0.0;
  retstr->m15 = colorInvert;
  retstr->m21 = 0.0;
  retstr->m22 = v2;
  *&retstr->m23 = 0;
  retstr->m25 = colorInvert;
  *&retstr->m31 = 0;
  retstr->m33 = v2;
  retstr->m34 = 0.0;
  retstr->m35 = colorInvert;
  *&retstr->m41 = xmmword_18DD85540;
  retstr->m45 = 0.0;
}

__n128 _ColorMatrix.init(colorMonochrome:amount:bias:)@<Q0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, float a7@<S5>)
{
  specialized _ColorMatrix.init(colorMonochrome:amount:bias:)(v10, a2, a3, a4, a5, a6, a7);
  v8 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v8;
  *(a1 + 64) = v10[4];
  result = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = result;
  return result;
}

void __swiftcall _ColorMatrix.init(floatArray:)(SwiftUI::_ColorMatrix *__return_ptr retstr, Swift::OpaquePointer floatArray)
{
  v3 = *(floatArray._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3 == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3 < 3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 == 3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v3 < 5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v3 == 5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v3 < 7)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v3 == 7)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v3 < 9)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v3 == 9)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v3 < 0xB)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v3 == 11)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v3 < 0xD)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v3 == 13)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3 < 0xF)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v3 == 15)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v3 < 0x11)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v3 == 17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v3 < 0x13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v3 != 19)
  {
    v4 = *(floatArray._rawValue + 8);
    v5 = *(floatArray._rawValue + 9);
    v6 = *(floatArray._rawValue + 10);
    v7 = *(floatArray._rawValue + 11);
    v8 = *(floatArray._rawValue + 12);
    v9 = *(floatArray._rawValue + 13);
    v10 = *(floatArray._rawValue + 14);
    v11 = *(floatArray._rawValue + 15);
    v21 = *(floatArray._rawValue + 17);
    v22 = *(floatArray._rawValue + 16);
    v19 = *(floatArray._rawValue + 19);
    v20 = *(floatArray._rawValue + 18);
    v17 = *(floatArray._rawValue + 21);
    v18 = *(floatArray._rawValue + 20);
    v15 = *(floatArray._rawValue + 23);
    v16 = *(floatArray._rawValue + 22);
    v13 = *(floatArray._rawValue + 25);
    v14 = *(floatArray._rawValue + 24);
    v12 = *(floatArray._rawValue + 13);

    retstr->m11 = v4;
    retstr->m12 = v5;
    retstr->m13 = v6;
    retstr->m14 = v7;
    retstr->m15 = v8;
    retstr->m21 = v9;
    retstr->m22 = v10;
    retstr->m23 = v11;
    retstr->m24 = v22;
    retstr->m25 = v21;
    retstr->m31 = v20;
    retstr->m32 = v19;
    retstr->m33 = v18;
    retstr->m34 = v17;
    retstr->m35 = v16;
    retstr->m41 = v15;
    retstr->m42 = v14;
    retstr->m43 = v13;
    *&retstr->m44 = v12;
    return;
  }

LABEL_41:
  __break(1u);
}

__n128 _ColorMatrix.floatArray.getter()
{
  type metadata accessor for _ContiguousArrayStorage<Float>();
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_18DE0AF30;
  *(v1 + 32) = v2;
  v4 = v0[2];
  v5 = v0[3];
  *(v1 + 48) = v3;
  *(v1 + 64) = v4;
  result = v0[4];
  *(v1 + 80) = v5;
  *(v1 + 96) = result;
  return result;
}

uint64_t closure #1 in _ColorMatrix.encode(to:)(uint64_t result, void *a2)
{
  v3 = 0;
  for (i = 13; ; i += 8)
  {
    v7 = __ROR8__(v3, 1);
    v8 = 0.0;
    if (v7 <= 9)
    {
      v8 = flt_18DE0B0D0[v7];
    }

    v5 = v3 + 1;
    v6 = *(result + 4 * v3);
    if (v6 == v8)
    {
      goto LABEL_3;
    }

    if (v3 > 0xE)
    {
      v11 = (147 * (70 - __clz(i))) >> 10;
      v9 = a2[1];
      v12 = __OFADD__(v9, v11);
      v13 = v9 + v11;
      if (v12)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = a2[1];
      if (v9 < a2[2])
      {
        *(*a2 + v9) = i;
        v10 = v9 + 1;
        a2[1] = v10;
        goto LABEL_19;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_26;
      }
    }

    if (a2[2] < v13)
    {
      v19 = result;
      v14 = ProtobufEncoder.growBufferSlow(to:)(v13);
      result = v19;
      if (v3 > 0xE)
      {
LABEL_17:
        v15 = v5 >> 4;
        *v14++ = i | 0x80;
        goto LABEL_18;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = (*a2 + v9);
      if (v3 > 0xE)
      {
        goto LABEL_17;
      }
    }

    LOBYTE(v15) = i & 0x7D;
LABEL_18:
    *v14 = v15;
    v10 = a2[1];
LABEL_19:
    v16 = v10 + 4;
    if (__OFADD__(v10, 4))
    {
      break;
    }

    if (a2[2] < v16)
    {
      v18 = result;
      v17 = ProtobufEncoder.growBufferSlow(to:)(v10 + 4);
      result = v18;
    }

    else
    {
      a2[1] = v16;
      v17 = (*a2 + v10);
    }

    *v17 = v6;
LABEL_3:
    v3 = v5;
    if (v5 == 20)
    {
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t closure #1 in _ColorMatrix.init(from:)(unint64_t result, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  if (v5 >= a2[2])
  {
LABEL_39:
    a2[3] = 0;
    return result;
  }

  v7 = result;
  while (1)
  {
    result = a2[3];
    if (result)
    {
      v8 = a2[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_37;
      }

      a2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_38;
    }

    if (result <= 7)
    {
LABEL_37:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v16 = swift_allocError();
      result = swift_willThrow();
      v3 = v16;
LABEL_38:
      *a3 = v3;
      return result;
    }

LABEL_11:
    if (result <= 0xA7)
    {
      break;
    }

    v9 = result & 7;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_38;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v10 = a2[1] + result;
        if (a2[2] < v10)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_37;
        }

        v10 = a2[1] + 4;
        if (a2[2] < v10)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_37;
      }

      v10 = a2[1] + 8;
      if (a2[2] < v10)
      {
        goto LABEL_37;
      }

LABEL_3:
      a2[1] = v10;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_38;
    }

LABEL_4:
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      goto LABEL_39;
    }
  }

  v11 = (result >> 3) - 1;
  if (result >> 3)
  {
    if (v11 < 0)
    {
      goto LABEL_41;
    }

    if ((result & 7) == 2)
    {
      v14 = result;
      result = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        goto LABEL_38;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v12 = a2[1];
      v13 = a2[2];
      if (v13 < v12 + result)
      {
        goto LABEL_37;
      }

      a2[3] = v14 & 0xF8 | 5;
      a2[4] = v12 + result;
    }

    else
    {
      if ((result & 7) != 5)
      {
        goto LABEL_37;
      }

      v12 = a2[1];
      v13 = a2[2];
    }

    if (v13 < (v12 + 1))
    {
      goto LABEL_37;
    }

    v15 = *v12;
    a2[1] = v12 + 1;
    *(v7 + 4 * v11) = v15;
    goto LABEL_4;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _ColorMatrix(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = v1[3];
  v5[2] = v1[2];
  v5[3] = v2;
  v5[4] = v1[4];
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  return closure #1 in _ColorMatrix.encode(to:)(v5, a1);
}

__n128 protocol witness for ProtobufDecodableMessage.init(from:) in conformance _ColorMatrix@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  *v7 = 1065353216;
  *&v7[4] = 0uLL;
  *&v7[20] = 0x3F80000000000000;
  *&v7[28] = 0uLL;
  *&v7[44] = 0x3F80000000000000uLL;
  *&v7[60] = 0;
  *&v7[68] = 0;
  *&v7[72] = 1065353216;
  closure #1 in _ColorMatrix.init(from:)(v7, a1, &v6);
  if (!v2)
  {
    v5 = *&v7[48];
    *(a2 + 32) = *&v7[32];
    *(a2 + 48) = v5;
    *(a2 + 64) = *&v7[64];
    result = *&v7[16];
    *a2 = *v7;
    *(a2 + 16) = result;
  }

  return result;
}

void specialized _ColorMatrix.init(alphaMultiply:premultiplied:)(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  if (a3 <= 0.0)
  {
    v11 = -a3;
  }

  else
  {
    v11 = a3;
  }

  if (v11 <= 0.0031308)
  {
    v12 = v11 * 12.92;
  }

  else
  {
    v12 = 1.0;
    if (v11 != 1.0)
    {
      v13 = a3;
      v14 = powf(v11, 0.41667);
      a3 = v13;
      v12 = (v14 * 1.055) + -0.055;
    }
  }

  if (a3 <= 0.0)
  {
    v15 = -v12;
  }

  else
  {
    v15 = v12;
  }

  v16 = -a4;
  if (a4 > 0.0)
  {
    v16 = a4;
  }

  if (v16 <= 0.0031308)
  {
    v17 = v16 * 12.92;
  }

  else
  {
    v17 = 1.0;
    if (v16 != 1.0)
    {
      v17 = (powf(v16, 0.41667) * 1.055) + -0.055;
    }
  }

  if (a4 <= 0.0)
  {
    v18 = -v17;
  }

  else
  {
    v18 = v17;
  }

  v19 = -a5;
  if (a5 > 0.0)
  {
    v19 = a5;
  }

  if (v19 <= 0.0031308)
  {
    v20 = v19 * 12.92;
  }

  else
  {
    v20 = 1.0;
    if (v19 != 1.0)
    {
      v20 = (powf(v19, 0.41667) * 1.055) + -0.055;
    }
  }

  if (a5 <= 0.0)
  {
    v20 = -v20;
  }

  v21 = v18 * a6;
  if (a1)
  {
    v22 = v15 * a6;
  }

  else
  {
    v22 = 0.0;
  }

  if (a1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v15;
  }

  if (a1)
  {
    v24 = 0.0;
  }

  else
  {
    v21 = 0.0;
    v24 = v18;
  }

  if (a1)
  {
    v25 = v20 * a6;
  }

  else
  {
    v25 = 0.0;
  }

  if (a1)
  {
    v20 = 0.0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = v22;
  *(a2 + 16) = v23;
  *(a2 + 20) = 0;
  *(a2 + 28) = 0;
  *(a2 + 32) = v21;
  *(a2 + 36) = v24;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 52) = v25;
  *(a2 + 56) = v20;
  *(a2 + 60) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = a6;
  *(a2 + 76) = 0;
}

double specialized _ColorMatrix.init(hueRotation:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = __sincos_stret(a2);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  v6.i32[0] = 1046066128;
  v7 = (sinval * 0.0722) + ((cosval * 0.9278) + 0.0722);
  *a1 = ((cosval * 0.7873) + 0.2126) - (sinval * 0.2126);
  v8 = vsub_f32(0x3D93DD983F371759, vmul_n_f32(0x3D93DD983F371759, cosval));
  v9 = vmul_n_f32(0x3F6D844D3F371759, sinval);
  LODWORD(v10) = vsub_f32(v8, v9).u32[0];
  v11 = vadd_f32(v8, v9);
  HIDWORD(v10) = v11.i32[1];
  *(a1 + 4) = v10;
  *(a1 + 12) = 0;
  v12 = vmul_n_f32(0x3E91D14E3E59B3D0, cosval);
  v6.f32[0] = vsub_f32(v6, v12).f32[0];
  v6.i32[1] = vadd_f32(v12, vdup_n_s32(0x3F371759u)).i32[1];
  *(a1 + 20) = vadd_f32(vmul_n_f32(0x3E0F5C293E126E98, sinval), v6);
  *(a1 + 28) = v8.f32[1] + (sinval * -0.283);
  *(a1 + 32) = 0;
  *(a1 + 40) = v6.f32[0] - (sinval * 0.7873);
  *(a1 + 44) = v11.i32[0];
  *(a1 + 48) = v7;
  *(a1 + 60) = 0;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *&result = 1065353216;
  *(a1 + 72) = 1065353216;
  return result;
}

float specialized _ColorMatrix.init(colorMonochrome:amount:bias:)@<S0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, float a7@<S5>)
{
  v13 = -a2;
  if (a2 <= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = a2;
  }

  if (v14 > 0.0031308)
  {
    v8.i32[0] = 1.0;
    if (v14 != 1.0)
    {
      *v8.i32 = (powf(v14, 0.41667) * 1.055) + -0.055;
    }
  }

  else
  {
    *v8.i32 = v14 * 12.92;
  }

  if (a3 <= 0.0)
  {
    v15 = -a3;
  }

  else
  {
    v15 = a3;
  }

  v46 = v8;
  if (v15 > 0.0031308)
  {
    v16 = 1.0;
    if (v15 != 1.0)
    {
      v17 = powf(v15, 0.41667);
      v8 = v46;
      v16 = (v17 * 1.055) + -0.055;
    }
  }

  else
  {
    v16 = v15 * 12.92;
  }

  if (a4 <= 0.0)
  {
    v18 = -a4;
  }

  else
  {
    v18 = a4;
  }

  if (v18 > 0.0031308)
  {
    v7.i32[0] = 1.0;
    if (v18 != 1.0)
    {
      v19 = powf(v18, 0.41667);
      v8 = v46;
      *v7.i32 = (v19 * 1.055) + -0.055;
    }
  }

  else
  {
    *v7.i32 = v18 * 12.92;
  }

  if (v14 > 0.0031308)
  {
    v20 = 1.0;
    if (v14 != 1.0)
    {
      v43 = v7;
      v21 = powf(v14, 0.41667);
      v7 = v43;
      v8 = v46;
      v20 = (v21 * 1.055) + -0.055;
    }
  }

  else
  {
    v20 = v14 * 12.92;
  }

  if (v15 > 0.0031308)
  {
    v22 = 1.0;
    if (v15 != 1.0)
    {
      v44 = v7;
      v23 = powf(v15, 0.41667);
      v7 = v44;
      v8 = v46;
      v22 = (v23 * 1.055) + -0.055;
    }
  }

  else
  {
    v22 = v15 * 12.92;
  }

  if (v18 > 0.0031308)
  {
    v24 = 1.0;
    if (v18 != 1.0)
    {
      v45 = v7;
      v25 = powf(v18, 0.41667);
      v7 = v45;
      v8 = v46;
      v24 = (v25 * 1.055) + -0.055;
    }
  }

  else
  {
    v24 = v18 * 12.92;
  }

  v26 = -v22;
  if (a3 <= 0.0)
  {
    v27 = -v16;
  }

  else
  {
    v26 = v22;
    v27 = v16;
  }

  v28 = -v20;
  if (a2 > 0.0)
  {
    v28 = v20;
  }

  v29 = -*v8.i32;
  if (a2 > 0.0)
  {
    v29 = *v8.i32;
  }

  v30 = (v28 * a7) * a6;
  v31 = 1.0 - a6;
  v32 = -*v7.i32;
  if (a4 > 0.0)
  {
    v32 = *v7.i32;
  }

  v33 = vdup_lane_s32(v7, 0);
  v34 = v31 + ((v32 * 0.0722) * a6);
  v35 = vneg_f32(v33);
  v36 = (v27 * 0.0722) * a6;
  v37 = v31 + ((v27 * 0.7152) * a6);
  v38 = (v27 * 0.2126) * a6;
  v39 = vdup_lane_s32(v8, 0);
  v40 = vneg_f32(v39);
  v41 = v31 + ((v29 * 0.2126) * a6);
  if (a4 <= 0.0)
  {
    v24 = -v24;
  }

  *a1 = v41;
  *(a1 + 4) = vmul_n_f32(vmul_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a2 > 0.0), 0x1FuLL)), v39, v40), 0x3D93DD983F371759), a6);
  *(a1 + 12) = 0;
  *(a1 + 16) = v30;
  *(a1 + 20) = v38;
  *(a1 + 24) = v37;
  *(a1 + 28) = v36;
  *(a1 + 32) = 0;
  *(a1 + 36) = (v26 * a7) * a6;
  *(a1 + 40) = vmul_n_f32(vmul_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a4 > 0.0), 0x1FuLL)), v33, v35), 0x3F3717593E59B3D0), a6);
  *(a1 + 48) = v34;
  *(a1 + 52) = 0;
  *(a1 + 56) = (v24 * a7) * a6;
  *(a1 + 64) = 0;
  *(a1 + 60) = 0;
  result = (a5 * a6) + v31;
  *(a1 + 72) = result;
  *(a1 + 76) = 0;
  return result;
}

uint64_t specialized _ColorMatrix.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  UnkeyedDecodingContainer.decodeRow()(&v14);
  v13 = v14;
  v5 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  UnkeyedDecodingContainer.decodeRow()(&v14);
  v12 = v14;
  v6 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  UnkeyedDecodingContainer.decodeRow()(&v14);
  v11 = v14;
  v7 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  UnkeyedDecodingContainer.decodeRow()(&v14);
  v10 = v14;
  v8 = v15;
  __swift_destroy_boxed_opaque_existential_1(v16);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v13;
  *(a2 + 16) = v5;
  *(a2 + 20) = v12;
  *(a2 + 36) = v6;
  *(a2 + 40) = v11;
  *(a2 + 56) = v7;
  *(a2 + 60) = v10;
  *(a2 + 76) = v8;
  return result;
}

__n128 specialized _ColorMatrix.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  result = *(a1 + 64);
  *(a2 + 64) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Float>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Float>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Float>);
    }
  }
}

uint64_t View.scheduledAnimation<A>(value:resetValue:delay:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v32 = a7;
  v30 = a8;
  v31 = a5;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for ScheduledAnimationModifier();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - v21;
  v23 = *(v12 + 16);
  v23(v17, v27, a6, v20);
  (v23)(v14, v28, a6);
  ScheduledAnimationModifier.init(value:resetValue:delay:animation:)(v17, v14, v29, a4, a6, v22, a9);
  View.modifier<A>(_:)(v22, v31, v18);
  v24 = *(v19 + 8);

  return v24(v22, v18);
}

uint64_t ScheduledAnimationModifier.init(value:resetValue:delay:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v13 = *(*(a5 - 8) + 32);
  v13(a6, a1, a5);
  v14 = type metadata accessor for ScheduledAnimationModifier();
  result = (v13)(a6 + v14[9], a2, a5);
  *(a6 + v14[10]) = a7;
  v16 = (a6 + v14[11]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a6 + v14[12]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t ScheduledAnimationModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v24 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v25 = type metadata accessor for _ViewModifier_Content();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  type metadata accessor for _ValueActionModifier2();
  v10 = type metadata accessor for ModifiedContent();
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  v17 = v24;
  (*(v6 + 16))(v24, v4, a2, v14);
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = v9;
  (*(v6 + 32))(v19 + v18, v17, a2);
  View.onValueChange<A>(of:_:)(v23[1], partial apply for closure #1 in ScheduledAnimationModifier.body(content:), v19, v25, v8, &protocol witness table for _ViewModifier_Content<A>, v9, v12);

  v28 = &protocol witness table for _ViewModifier_Content<A>;
  v29 = &protocol witness table for _ValueActionModifier2<A>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v10, WitnessTable);
  v21 = *(v26 + 8);
  v21(v12, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, WitnessTable);
  return (v21)(v16, v10);
}

uint64_t closure #1 in ScheduledAnimationModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ScheduledAnimationModifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  type metadata accessor for TaskPriority?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v16 = (a3 + *(v8 + 48));
    v17 = v16[1];
    v18 = specialized State.wrappedValue.getter(*v16, v17);
    if (v18)
    {
      v19 = v18;
      v20 = type metadata accessor for Error();
      MEMORY[0x193ABF3F0](v19, MEMORY[0x1E69E7CA8] + 8, v20, MEMORY[0x1E69E7288]);
    }

    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    (*(v9 + 16))(v11, a3, v8);
    type metadata accessor for MainActor();
    v22 = static MainActor.shared.getter();
    v23 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    *(v24 + 4) = a4;
    *(v24 + 5) = a5;
    (*(v9 + 32))(&v24[v23], v11, v8);
    v27 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in ScheduledAnimationModifier.body(content:), v24);
    if (v17)
    {
      (*(*v17 + 128))(&v27, 0);
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in ScheduledAnimationModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ScheduledAnimationModifier() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in ScheduledAnimationModifier.body(content:)(a1, a2, v8, v5, v6);
}

uint64_t closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for ScheduledAnimationModifier();
  *v1 = v0;
  v1[1] = specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return ScheduledAnimationModifier.animate()(v2);
}

uint64_t ScheduledAnimationModifier.animate()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x1EEE6DFA0](ScheduledAnimationModifier.animate(), v5, v4);
}

uint64_t ScheduledAnimationModifier.animate()()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*(v1 + *(v2 + 40)) <= 0.0)
  {
    v9 = (*(v1 + *(v2 + 44)) + **(v1 + *(v2 + 44)));
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = ScheduledAnimationModifier.animate();

    return v9();
  }

  else
  {
    v3 = static Duration.seconds(_:)();
    v5 = v4;
    static Clock<>.continuous.getter();
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = ScheduledAnimationModifier.animate();

    return specialized Clock.sleep(for:tolerance:)(v3, v5, 0, 0, 1);
  }
}

{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = ScheduledAnimationModifier.animate();
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = ScheduledAnimationModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v1 = (v0[3] + *(v0[2] + 44));
  v4 = (*v1 + **v1);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = ScheduledAnimationModifier.animate();

  return v4();
}

{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](ScheduledAnimationModifier.animate(), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t View.onValueChange<A>(of:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a6;
  v23 = a8;
  v24 = a4;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ValueActionModifier2();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  (*(v13 + 16))(v15, a1, a5, v18);
  _ValueActionModifier2.init(value:action:)(v15, a2, a3, a5, a7, v20);
  View.modifier<A>(_:)(v20, v24, v16);
  v21 = *(v17 + 8);

  return v21(v20, v16);
}

uint64_t partial apply for closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)()
{
  type metadata accessor for ScheduledAnimationModifier();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return closure #1 in closure #1 in ScheduledAnimationModifier.body(content:)();
}

uint64_t type metadata completion function for ScheduledAnimationModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScheduledAnimationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  v10 = ((((((v6 + 7 + ((v6 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    v3 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = ~v7;
    v15 = *(v5 + 16);
    v15(a1, a2, v4);
    v17 = (a2 + v8) & v14;
    v15(((v3 + v8) & v14), v17, v4);
    v18 = ((v9 + ((v3 + v8) & v14)) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v9 + v17) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = v21[1];
    *v20 = *v21;
    v20[1] = v22;
    v23 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v23[1] = v24[1];
  }

  return v3;
}

uint64_t destroy for ScheduledAnimationModifier(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v5((*(v4 + 64) + a1 + *(v4 + 80)) & ~*(v4 + 80), v3);
}

uint64_t initializeWithCopy for ScheduledAnimationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v17[1] = v18[1];

  return a1;
}

uint64_t assignWithCopy for ScheduledAnimationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  v17 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;

  v17[1] = v18[1];

  return a1;
}

uint64_t initializeWithTake for ScheduledAnimationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ScheduledAnimationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = (v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  v13 += 15;
  *v12 = v14;
  v15 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = (v13 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v15 = *(v13 & 0xFFFFFFFFFFFFFFF8);

  v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 &= 0xFFFFFFFFFFFFFFF8;
  *v17 = *v16;

  v17[1] = *(v16 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScheduledAnimationModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v20 = *((((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *storeEnumTagSinglePayload for ScheduledAnimationModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((((((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((((((v12 + v11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
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
        v23 = ((((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          *v23 = a2 - 1;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

SwiftUI::_ViewDebug::Property_optional __swiftcall _ViewDebug.Property.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 9)
  {
    v2 = 9;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _ViewDebug.Property()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _ViewDebug.Property()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

unsigned __int8 *_ViewDebug.Properties.init(_:)@<X0>(unsigned __int8 *result@<X0>, int *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 0x1F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t static _ViewDebug.properties.getter@<X0>(_DWORD *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _ViewDebug.properties;
  return result;
}

uint64_t static _ViewDebug.properties.setter(int *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _ViewDebug.properties = v1;
  return result;
}

uint64_t _ViewDebug.Data.data.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _ViewDebug.Data.childData.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

SwiftUI::_ViewDebug::Data __swiftcall _ViewDebug.Data.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC8];
  v0[1] = v1;
  return result;
}

uint64_t static _ViewDebug.isInitialized.setter(char a1)
{
  result = swift_beginAccess();
  static _ViewDebug.isInitialized = a1;
  return result;
}

uint64_t static _ViewDebug.initialize(inputs:)()
{
  swift_beginAccess();
  if ((static _ViewDebug.isInitialized & 1) == 0)
  {
    v0 = getenv("SWIFTUI_VIEW_DEBUG");
    if (v0)
    {
      v1 = atoi(v0);
      swift_beginAccess();
      static _ViewDebug.properties = v1;
    }

    static _ViewDebug.isInitialized = 1;
  }

  result = swift_beginAccess();
  if (static _ViewDebug.properties)
  {
    return AGSubgraphSetShouldRecordTree();
  }

  return result;
}

uint64_t static _ViewDebug.makeDebugData(subgraph:)()
{
  v0 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
  TreeRoot = AGSubgraphGetTreeRoot();
  if (TreeRoot)
  {
    static _ViewDebug.appendDebugData(from:to:)(TreeRoot, &v3);
    return v3;
  }

  return v0;
}

uint64_t static _ViewDebug.appendDebugData(from:to:)(uint64_t a1, uint64_t *a2)
{
  if (AGTreeElementGetFlags())
  {
    AGTreeElementMakeChildIterator();
    while (1)
    {
      result = AGTreeElementGetNextChild();
      if (!result)
      {
        break;
      }

      static _ViewDebug.appendDebugData(from:to:)(result, a2);
    }
  }

  else
  {
    Value = AGTreeElementGetValue();
    if (Value == *MEMORY[0x1E698D3F8] || (v4 = Value, (Type = AGTreeElementGetType()) == 0))
    {
      AGTreeElementMakeChildIterator();
      while (1)
      {
        result = AGTreeElementGetNextChild();
        if (!result)
        {
          break;
        }

        static _ViewDebug.appendDebugData(from:to:)(result, a2);
      }
    }

    else
    {
      *&v36[0] = MEMORY[0x1E69E7CC8];
      *(&v36[0] + 1) = MEMORY[0x1E69E7CC0];
      v6 = Type;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v34 = v6;
      specialized Dictionary.subscript.setter(&v34, 0);
      specialized project #1 <A>(type:) in static _ViewDebug.appendDebugData(from:to:)(v6, v36, v4, v6);
      AGTreeElementMakeValueIterator();
      while (AGTreeElementGetNextValue())
      {
        Key = AGTreeValueGetKey();
        swift_beginAccess();
        v11 = static _ViewDebug.properties;
        if ((static _ViewDebug.properties & 0x20) != 0 && !strcmp(Key, "environment"))
        {
          AGTreeValueGetValue();
          MetatypeMetadata = &type metadata for EnvironmentValues;
          v7 = AGGraphGetValue();
          v8 = v7[1];
          *&v34 = *v7;
          *(&v34 + 1) = v8;
          swift_beginAccess();

          v9 = 5;
        }

        else if ((v11 & 8) != 0 && !strcmp(Key, "position"))
        {
          AGTreeValueGetValue();
          type metadata accessor for CGPoint(0);
          MetatypeMetadata = v16;
          v34 = *AGGraphGetValue();
          swift_beginAccess();
          v9 = 3;
        }

        else if ((v11 & 0x10) != 0 && !strcmp(Key, "size"))
        {
          AGTreeValueGetValue();
          v17 = AGGraphGetValue();
          v18 = *v17;
          v19 = v17[1];
          type metadata accessor for CGSize(0);
          MetatypeMetadata = v20;
          *&v34 = v18;
          *(&v34 + 1) = v19;
          swift_beginAccess();
          v9 = 4;
        }

        else if ((v11 & 0x40) != 0 && !strcmp(Key, "phase"))
        {
          AGTreeValueGetValue();
          MetatypeMetadata = &type metadata for _GraphInputs.Phase;
          LODWORD(v34) = *AGGraphGetValue();
          swift_beginAccess();
          v9 = 6;
        }

        else if ((v11 & 4) != 0 && !strcmp(Key, "transform"))
        {
          AGTreeValueGetValue();
          MetatypeMetadata = &type metadata for ViewTransform;
          v21 = swift_allocObject();
          *&v34 = v21;
          v22 = AGGraphGetValue();
          v23 = *(v22 + 8);
          v24 = *(v22 + 16);
          v25 = *(v22 + 32);
          *(v21 + 16) = *v22;
          *(v21 + 24) = v23;
          *(v21 + 32) = v24;
          *(v21 + 48) = v25;
          swift_beginAccess();

          v9 = 2;
        }

        else if ((v11 & 0x80) != 0 && !strcmp(Key, "layoutComputer"))
        {
          AGTreeValueGetValue();
          MetatypeMetadata = &type metadata for LayoutComputer;
          v26 = AGGraphGetValue();
          v27 = v26[1];
          *&v34 = *v26;
          *(&v34 + 1) = v27;
          swift_beginAccess();

          v9 = 7;
        }

        else
        {
          if ((v11 & 0x100) == 0 || strcmp(Key, "displayList"))
          {
            continue;
          }

          AGTreeValueGetValue();
          v12 = AGGraphGetValue();
          v13 = *v12;
          v14 = *(v12 + 8);
          v15 = *(v12 + 12);
          MetatypeMetadata = &type metadata for DisplayList;
          *&v34 = v13;
          WORD4(v34) = v14;
          HIDWORD(v34) = v15;
          swift_beginAccess();

          v9 = 8;
        }

        specialized Dictionary.subscript.setter(&v34, v9);
        swift_endAccess();
      }

      swift_beginAccess();
      AGTreeElementMakeChildIterator();
      while (1)
      {
        NextChild = AGTreeElementGetNextChild();
        if (!NextChild)
        {
          break;
        }

        static _ViewDebug.appendDebugData(from:to:)(NextChild, v36 + 8);
      }

      swift_endAccess();
      v33 = v36[0];
      v30 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
        v30 = result;
      }

      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      if (v32 >= v31 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
        v30 = result;
      }

      *(v30 + 16) = v32 + 1;
      *(v30 + 16 * v32 + 32) = v33;
      *a2 = v30;
    }
  }

  return result;
}

uint64_t specialized project #1 <A>(type:) in static _ViewDebug.appendDebugData(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  Value = AGGraphGetValue();
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, Value, a4);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v8, 1);
  return swift_endAccess();
}

uint64_t static _ViewDebug.serializedData(_:)(uint64_t a1)
{
  v2 = type metadata accessor for JSONEncoder.NonConformingFloatEncodingStrategy();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v5 = 6712937;
  v5[1] = 0xE300000000000000;
  v5[2] = 1718511917;
  v5[3] = 0xE400000000000000;
  v5[4] = 7233902;
  v5[5] = 0xE300000000000000;
  (*(v3 + 104))(v5, *MEMORY[0x1E6967FE0], v2);
  dispatch thunk of JSONEncoder.nonConformingFloatEncodingStrategy.setter();
  v8[13] = a1;
  type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for [_ViewDebug.Data], &type metadata for _ViewDebug.Data, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_ViewDebug.Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [_ViewDebug.Data] and conformance <A> [A], &lazy cache variable for type metadata for [_ViewDebug.Data], &type metadata for _ViewDebug.Data, lazy protocol witness table accessor for type _ViewDebug.Data and conformance _ViewDebug.Data);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v6;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ViewDebug.Data.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6572646C696863;
  }

  else
  {
    v3 = 0x69747265706F7270;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6572646C696863;
  }

  else
  {
    v5 = 0x69747265706F7270;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _ViewDebug.Data.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _ViewDebug.Data.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _ViewDebug.Data.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _ViewDebug.Data.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _ViewDebug.Data.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance _ViewDebug.Data.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x69747265706F7270;
  if (*v1)
  {
    v2 = 0x6E6572646C696863;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _ViewDebug.Data.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x69747265706F7270;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _ViewDebug.Data.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _ViewDebug.Data.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _ViewDebug.Data.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _ViewDebug.Data.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ViewDebug.Data.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<_ViewDebug.Data.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_ViewDebug.Data.CodingKeys>, lazy protocol witness table accessor for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys);
  v4 = v3;
  v12[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v8 = *v1;
  v7 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v8;
  v14 = v7;
  v13 = _ViewDebug.Data.serializedProperties()();
  v15 = 0;
  type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for [_ViewDebug.Data.SerializedProperty], &type metadata for _ViewDebug.Data.SerializedProperty, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_ViewDebug.Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [_ViewDebug.Data.SerializedProperty] and conformance <A> [A], &lazy cache variable for type metadata for [_ViewDebug.Data.SerializedProperty], &type metadata for _ViewDebug.Data.SerializedProperty, lazy protocol witness table accessor for type _ViewDebug.Data.SerializedProperty and conformance _ViewDebug.Data.SerializedProperty);
  v9 = v12[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v9)
  {

    return (*(v12[0] + 8))(v6, v4);
  }

  else
  {
    v11 = v12[0];

    v13 = v7;
    v15 = 1;
    type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for [_ViewDebug.Data], &type metadata for _ViewDebug.Data, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [_ViewDebug.Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [_ViewDebug.Data] and conformance <A> [A], &lazy cache variable for type metadata for [_ViewDebug.Data], &type metadata for _ViewDebug.Data, lazy protocol witness table accessor for type _ViewDebug.Data and conformance _ViewDebug.Data);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v11 + 8))(v6, v4);
  }
}

uint64_t _ViewDebug.Data.serializedProperties()()
{
  v1 = *v0;
  v2 = 1 << *(*v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & v1[8];
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v6;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v8 = __clz(__rbit64(v4)) | (v6 << 6);
    v9 = *(v1[6] + v8);
    outlined init with copy of Any(v1[7] + 32 * v8, &v31);
    v30[0] = v9;
    closure #1 in _ViewDebug.Data.serializedProperties()(v30, v24);
    v4 &= v4 - 1;
    outlined destroy of (String, String)(v30, type metadata accessor for (key: _ViewDebug.Property, value: Any));
    if (v25)
    {
      v21 = v27;
      v22 = v28;
      v23 = v29;
      v17 = v24[0];
      v18 = v24[1];
      v19 = v25;
      v20 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v11 = *(v16 + 2);
      v10 = *(v16 + 3);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v16);
        v12 = v11 + 1;
        v16 = v14;
      }

      *(v16 + 2) = v12;
      v13 = &v16[104 * v11];
      *(v13 + 3) = v18;
      *(v13 + 4) = v19;
      *(v13 + 2) = v17;
      *(v13 + 16) = v23;
      *(v13 + 6) = v21;
      *(v13 + 7) = v22;
      *(v13 + 5) = v20;
    }

    else
    {
      _sypSgWOhTm_13(v24, &lazy cache variable for type metadata for _ViewDebug.Data.SerializedProperty?, &type metadata for _ViewDebug.Data.SerializedProperty);
    }
  }

  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      return v16;
    }

    v4 = v1[v6 + 8];
    ++v7;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  outlined destroy of (String, String)(v30, type metadata accessor for (key: _ViewDebug.Property, value: Any));

  __break(1u);
  return result;
}

uint64_t _ViewDebug.Data.SerializedProperty.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<_ViewDebug.Data.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_ViewDebug.Data.SerializedProperty.CodingKeys>, lazy protocol witness table accessor for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10 = 1;
    lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute and conformance _ViewDebug.Data.SerializedAttribute();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _ViewDebug.Data.SerializedProperty.CodingKeys()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _ViewDebug.Data.SerializedProperty.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _ViewDebug.Data.SerializedProperty.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _ViewDebug.Data.SerializedProperty.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _ViewDebug.Data.SerializedAttribute.CodingKeys()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _ViewDebug.Data.SerializedAttribute.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized _ViewDebug.Data.SerializedAttribute.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance _ViewDebug.Data.SerializedAttribute.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE500000000000000;
  v6 = 0x7367616C66;
  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (v2 != 4)
  {
    v8 = 0x6972747461627573;
    v7 = 0xED00007365747562;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701869940;
  if (v2 != 1)
  {
    v10 = 0x656C626164616572;
    v9 = 0xEC00000065707954;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _ViewDebug.Data.SerializedAttribute.CodingKeys()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7367616C66;
  v4 = 0x65756C6176;
  if (v1 != 4)
  {
    v4 = 0x6972747461627573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x656C626164616572;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance _ViewDebug.Data.SerializedAttribute.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized _ViewDebug.Data.SerializedAttribute.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _ViewDebug.Data.SerializedAttribute.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _ViewDebug.Data.SerializedAttribute.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ViewDebug.Data.SerializedAttribute.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<_ViewDebug.Data.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_ViewDebug.Data.SerializedAttribute.CodingKeys>, lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16[0]) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  LOBYTE(v16[0]) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v16[0]) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16[0] = *(v3 + 48);
  LOBYTE(v13) = 3;
  lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16[0] = *(v3 + 88);
  LOBYTE(v13) = 5;
  type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for [_ViewDebug.Data.SerializedAttribute], &type metadata for _ViewDebug.Data.SerializedAttribute, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_ViewDebug.Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [_ViewDebug.Data.SerializedAttribute] and conformance <A> [A], &lazy cache variable for type metadata for [_ViewDebug.Data.SerializedAttribute], &type metadata for _ViewDebug.Data.SerializedAttribute, lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute and conformance _ViewDebug.Data.SerializedAttribute);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined init with copy of Any?(v3 + 56, v11);
  if (v12)
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Encodable);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        outlined init with take of AnyTrackedValue(&v13, v16);
        __swift_project_boxed_opaque_existential_1(v16, v16[3]);
        specialized encode #1 <A>(value:) in _ViewDebug.Data.SerializedAttribute.encode(to:)();
        (*(v7 + 8))(v9, v6);
        return __swift_destroy_boxed_opaque_existential_1(v16);
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    _sypSgWOhTm_13(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  (*(v7 + 8))(v9, v6);
  return outlined destroy of Encodable?(&v13, &lazy cache variable for type metadata for Encodable?, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78], type metadata accessor for ScrollStateRequest?);
}

uint64_t specialized encode #1 <A>(value:) in _ViewDebug.Data.SerializedAttribute.encode(to:)()
{
  swift_beginAccess();
  type metadata accessor for KeyedEncodingContainer<_ViewDebug.Data.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_ViewDebug.Data.SerializedAttribute.CodingKeys>, lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return swift_endAccess();
}

double static _ViewDebug.Data.SerializedAttribute.serialize(value:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<(String, String)>(0, &lazy cache variable for type metadata for Mirror.DisplayStyle?, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v31);
  outlined init with copy of Any(a1, v27);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomViewDebugValueConvertible);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v24, v28);
    v11 = v29;
    v12 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v12 + 8))(&v24, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v31);
    outlined init with take of Any(&v24, v31);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    outlined destroy of Encodable?(&v24, &lazy cache variable for type metadata for CustomViewDebugValueConvertible?, &lazy cache variable for type metadata for CustomViewDebugValueConvertible, &protocol descriptor for CustomViewDebugValueConvertible, type metadata accessor for ScrollStateRequest?);
  }

  outlined init with copy of Any(v31, v27);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Encodable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v24, v28);
    v13 = v29;
    v14 = __swift_project_boxed_opaque_existential_1(v28, v29);
    *(a2 + 24) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    outlined destroy of Encodable?(&v24, &lazy cache variable for type metadata for Encodable?, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78], type metadata accessor for ScrollStateRequest?);
    outlined init with copy of Any(v31, v27);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomDebugStringConvertible);
    if (!swift_dynamicCast())
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      outlined destroy of Encodable?(&v24, &lazy cache variable for type metadata for CustomDebugStringConvertible?, &lazy cache variable for type metadata for CustomDebugStringConvertible, MEMORY[0x1E69E70C8], type metadata accessor for ScrollStateRequest?);
      outlined init with copy of Any(v31, v28);
      Mirror.init(reflecting:)();
      Mirror.displayStyle.getter();
      v20 = type metadata accessor for Mirror.DisplayStyle();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v6, 1, v20) == 1)
      {
        (*(v8 + 8))(v10, v7);
        __swift_destroy_boxed_opaque_existential_1(v31);
        outlined destroy of Encodable?(v6, &lazy cache variable for type metadata for Mirror.DisplayStyle?, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<(String, String)>);
      }

      else
      {
        if ((*(v21 + 88))(v6, v20) == *MEMORY[0x1E69E75A8])
        {
          (*(v21 + 8))(v6, v20);
          outlined init with copy of Any(v31, v28);
          v22 = String.init<A>(describing:)();
          *(a2 + 24) = MEMORY[0x1E69E6158];
          *a2 = v22;
          *(a2 + 8) = v23;
          (*(v8 + 8))(v10, v7);
          v18 = v31;
          goto LABEL_9;
        }

        (*(v8 + 8))(v10, v7);
        __swift_destroy_boxed_opaque_existential_1(v31);
        (*(v21 + 8))(v6, v20);
      }

      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    outlined init with take of AnyTrackedValue(&v24, v28);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v16 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    *(a2 + 24) = MEMORY[0x1E69E6158];
    *a2 = v16;
    *(a2 + 8) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  v18 = v28;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v18);
  return result;
}

uint64_t closure #1 in _ViewDebug.Data.serializedProperties()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 6;
    }

    else
    {
      v4 = 4;
    }

    _ViewDebug.Data.serializedAttribute(for:label:reflectionDepth:)(a1 + 8, 0, 0, v4, &v22);
    if (!*(&v23 + 1))
    {
      result = _sypSgWOhTm_13(&v22, &lazy cache variable for type metadata for _ViewDebug.Data.SerializedAttribute?, &type metadata for _ViewDebug.Data.SerializedAttribute);
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v28 = v22;
    v29 = v23;
    outlined init with copy of (key: _ViewDebug.Property, value: Any)(a1, &v22);
    v5 = v22;
    v6 = v31;
    *(a2 + 40) = v30;
    *(a2 + 56) = v6;
    v7 = v33;
    *(a2 + 72) = v32;
    *(a2 + 88) = v7;
    v8 = v29;
    *(a2 + 8) = v28;
    *(a2 + 24) = v8;
    *a2 = v5;
    v9 = &v22 + 8;
  }

  else
  {
    outlined init with copy of (key: _ViewDebug.Property, value: Any)(a1, &v28);
    type metadata accessor for Any.Type();
    if (swift_dynamicCast())
    {
      DynamicType = v22;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((a1 + 8), *(a1 + 32));
      DynamicType = swift_getDynamicType();
    }

    *&v28 = DynamicType;
    v12 = String.init<A>(reflecting:)();
    v14 = v13;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    _viewProtocolDescriptor();
    v18 = swift_conformsToProtocol();
    _viewModifierProtocolDescriptor();
    v19 = swift_conformsToProtocol();
    v20 = 2;
    if (v18)
    {
      v20 = 3;
    }

    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18 != 0;
    }

    outlined init with copy of (key: _ViewDebug.Property, value: Any)(a1, &v28);
    *a2 = v28;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = v12;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v17;
    *(a2 + 56) = v21;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0;
    v9 = &v28 + 8;
  }

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t _ViewDebug.Data.serializedAttribute(for:label:reflectionDepth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v91 = a3;
  type metadata accessor for _ContiguousArrayStorage<(String, String)>(0, &lazy cache variable for type metadata for Mirror?, MEMORY[0x1E69E75E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v82 - v11;
  v13 = type metadata accessor for Mirror();
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v17 = v5[1];
  *&v110 = *v5;
  *(&v110 + 1) = v17;
  _ViewDebug.Data.unwrapped(_:)(a1, &v122);
  if (!*(&v123 + 1))
  {
    result = _sypSgWOhTm_13(&v122, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    a5[4] = 0u;
    a5[5] = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
    return result;
  }

  outlined init with take of Any(&v122, v126);
  v124 = 0u;
  memset(v125, 0, sizeof(v125));
  v122 = 0u;
  v123 = 0u;
  outlined init with copy of Any(v126, &v104);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Encodable);
  if (swift_dynamicCast())
  {
    v18 = &lazy cache variable for type metadata for Encodable?;
    v19 = &lazy cache variable for type metadata for Encodable;
    v20 = MEMORY[0x1E69E5E78];
LABEL_7:
    outlined destroy of Encodable?(&v110, v18, v19, v20, type metadata accessor for ScrollStateRequest?);
LABEL_8:
    outlined init with copy of Any(v126, &v110);
    *&v92 = a2;
    *(&v92 + 1) = v91;
    __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
    *&v104 = swift_getDynamicType();
    type metadata accessor for Any.Type();

    *&v93 = String.init<A>(reflecting:)();
    *(&v93 + 1) = v22;
    *&v94 = AGTypeID.description.getter();
    *(&v94 + 1) = v23;
    type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    _viewProtocolDescriptor();
    v24 = swift_conformsToProtocol();
    _viewModifierProtocolDescriptor();
    v25 = swift_conformsToProtocol();
    v26 = 3;
    if (!v25)
    {
      v26 = 1;
    }

    v27 = 2 * (v25 != 0);
    if (v24)
    {
      v27 = v26;
    }

    *&v95[0] = v27;
    static _ViewDebug.Data.SerializedAttribute.serialize(value:)(&v110, v95 + 8);
    __swift_destroy_boxed_opaque_existential_1(&v110);
    _sypSgWOhTm_13(&v122, &lazy cache variable for type metadata for _ViewDebug.Data.SerializedAttribute?, &type metadata for _ViewDebug.Data.SerializedAttribute);
    result = __swift_destroy_boxed_opaque_existential_1(v126);
    v97 = 0;
    v124 = v94;
    v125[0] = v95[0];
    v122 = v92;
    v123 = v93;
    v28 = v95[1];
    v29 = v96;
LABEL_13:
    v125[1] = v28;
    v125[2] = v29;
LABEL_14:
    v30 = v125[0];
    a5[2] = v124;
    a5[3] = v30;
    v31 = v125[2];
    a5[4] = v125[1];
    a5[5] = v31;
    v32 = v123;
    *a5 = v122;
    a5[1] = v32;
    return result;
  }

  *&v112 = 0;
  v110 = 0u;
  v111 = 0u;
  outlined destroy of Encodable?(&v110, &lazy cache variable for type metadata for Encodable?, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78], type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(v126, &v104);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomViewDebugValueConvertible);
  if (swift_dynamicCast())
  {
    v18 = &lazy cache variable for type metadata for CustomViewDebugValueConvertible?;
    v19 = &lazy cache variable for type metadata for CustomViewDebugValueConvertible;
    v20 = &protocol descriptor for CustomViewDebugValueConvertible;
    goto LABEL_7;
  }

  *&v112 = 0;
  v110 = 0u;
  v111 = 0u;
  outlined destroy of Encodable?(&v110, &lazy cache variable for type metadata for CustomViewDebugValueConvertible?, &lazy cache variable for type metadata for CustomViewDebugValueConvertible, &protocol descriptor for CustomViewDebugValueConvertible, type metadata accessor for ScrollStateRequest?);
  if (!a4)
  {
    goto LABEL_8;
  }

  v86 = a2;
  *&v110 = v16;
  *(&v110 + 1) = v17;
  _ViewDebug.Data.effectiveMirror(for:)(v126, v12);
  v34 = v89;
  v33 = v90;
  if ((*(v89 + 48))(v12, 1, v90) == 1)
  {
    outlined destroy of Encodable?(v12, &lazy cache variable for type metadata for Mirror?, MEMORY[0x1E69E75E0], MEMORY[0x1E69E6720], type metadata accessor for _ContiguousArrayStorage<(String, String)>);
    outlined init with copy of Any(v126, &v110);
    __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
    *&v104 = swift_getDynamicType();
    type metadata accessor for Any.Type();
    v35 = v91;

    v36 = String.init<A>(reflecting:)();
    v38 = v37;
    v39 = AGTypeID.description.getter();
    v41 = v40;
    type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    _viewProtocolDescriptor();
    v42 = swift_conformsToProtocol();
    _viewModifierProtocolDescriptor();
    v43 = swift_conformsToProtocol();
    v44 = 3;
    if (!v43)
    {
      v44 = 1;
    }

    if (v42)
    {
      v45 = v44;
    }

    else
    {
      v45 = 2 * (v43 != 0);
    }

    __swift_destroy_boxed_opaque_existential_1(&v110);
    _sypSgWOhTm_13(&v122, &lazy cache variable for type metadata for _ViewDebug.Data.SerializedAttribute?, &type metadata for _ViewDebug.Data.SerializedAttribute);
    result = __swift_destroy_boxed_opaque_existential_1(v126);
    *&v122 = v86;
    *(&v122 + 1) = v35;
    *&v123 = v36;
    *(&v123 + 1) = v38;
    *&v124 = v39;
    *(&v124 + 1) = v41;
    *&v125[0] = v45;
    memset(v125 + 8, 0, 40);
    goto LABEL_14;
  }

  v84 = a4;
  (*(v34 + 32))(v15, v12, v33);
  v83 = v15;
  v46 = Mirror.children.getter();
  v47 = *(v46 + 24);
  v88 = *(v46 + 40);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v85 = ObjectType;
  v87 = v47;
  v49 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v49 == result)
  {
    v50 = dispatch thunk of _AnyIndexBox._isEqual(to:)();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v51 = v84;
    if (v50)
    {
      outlined init with copy of Any(v126, &v110);
      *&v98 = v86;
      *(&v98 + 1) = v91;
      __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
      *&v104 = swift_getDynamicType();
      type metadata accessor for Any.Type();

      *&v99 = String.init<A>(reflecting:)();
      *(&v99 + 1) = v52;
      *&v100 = AGTypeID.description.getter();
      *(&v100 + 1) = v53;
      type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      _viewProtocolDescriptor();
      v54 = swift_conformsToProtocol();
      _viewModifierProtocolDescriptor();
      v55 = swift_conformsToProtocol();
      v56 = 3;
      if (!v55)
      {
        v56 = 1;
      }

      v57 = 2 * (v55 != 0);
      if (v54)
      {
        v57 = v56;
      }

      *&v101[0] = v57;
      static _ViewDebug.Data.SerializedAttribute.serialize(value:)(&v110, v101 + 8);
      __swift_destroy_boxed_opaque_existential_1(&v110);
      (*(v89 + 8))(v83, v90);
      _sypSgWOhTm_13(&v122, &lazy cache variable for type metadata for _ViewDebug.Data.SerializedAttribute?, &type metadata for _ViewDebug.Data.SerializedAttribute);
      result = __swift_destroy_boxed_opaque_existential_1(v126);
      v103 = 0;
      v124 = v100;
      v125[0] = v101[0];
      v122 = v98;
      v123 = v99;
      v28 = v101[1];
      v29 = v102;
      goto LABEL_13;
    }

    v58 = v83;
    Mirror.children.getter();
    v59 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v88 = v59;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v121)
    {
      v61 = MEMORY[0x1E69E7CC0];
LABEL_44:

      outlined init with copy of Any(v126, &v110);
      __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
      *&v104 = swift_getDynamicType();
      type metadata accessor for Any.Type();
      v72 = v91;

      v88 = String.init<A>(reflecting:)();
      v74 = v73;
      v75 = AGTypeID.description.getter();
      v77 = v76;
      type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      _viewProtocolDescriptor();
      v78 = swift_conformsToProtocol();
      _viewModifierProtocolDescriptor();
      v79 = swift_conformsToProtocol();
      v80 = 3;
      if (!v79)
      {
        v80 = 1;
      }

      if (v78)
      {
        v81 = v80;
      }

      else
      {
        v81 = 2 * (v79 != 0);
      }

      __swift_destroy_boxed_opaque_existential_1(&v110);
      (*(v89 + 8))(v58, v90);
      _sypSgWOhTm_13(&v122, &lazy cache variable for type metadata for _ViewDebug.Data.SerializedAttribute?, &type metadata for _ViewDebug.Data.SerializedAttribute);
      result = __swift_destroy_boxed_opaque_existential_1(v126);
      *&v122 = v86;
      *(&v122 + 1) = v72;
      *&v123 = v88;
      *(&v123 + 1) = v74;
      *&v124 = v75;
      *(&v124 + 1) = v77;
      memset(v125 + 8, 0, 32);
      *&v125[0] = v81;
      *(&v125[2] + 1) = v61;
      goto LABEL_14;
    }

    v60 = __OFSUB__(v51, 1);
    v87 = v51 - 1;
    v61 = MEMORY[0x1E69E7CC0];
    v62 = v60;
    while (1)
    {
      v63 = v118;
      v64 = v119;
      v116[0] = v118;
      v116[1] = v119;
      result = outlined init with take of Any(&v120, v117);
      *&v110 = v16;
      *(&v110 + 1) = v17;
      if (v62)
      {
        break;
      }

      _ViewDebug.Data.serializedAttribute(for:label:reflectionDepth:)(&v104, v117, v63, v64, v87);
      if (*(&v105 + 1))
      {
        v112 = v106;
        v113 = v107;
        v114 = v108;
        v115 = v109;
        v110 = v104;
        v111 = v105;
        outlined init with copy of _ViewDebug.Data.SerializedAttribute(&v110, &v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
        }

        v66 = *(v61 + 2);
        v65 = *(v61 + 3);
        if (v66 >= v65 >> 1)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v61);
        }

        outlined destroy of _ViewDebug.Data.SerializedAttribute(&v110);
        *(v61 + 2) = v66 + 1;
        v67 = &v61[96 * v66];
        v68 = v105;
        *(v67 + 2) = v104;
        *(v67 + 3) = v68;
        v69 = v109;
        v71 = v106;
        v70 = v107;
        *(v67 + 6) = v108;
        *(v67 + 7) = v69;
        *(v67 + 4) = v71;
        *(v67 + 5) = v70;
      }

      else
      {
        _sypSgWOhTm_13(&v104, &lazy cache variable for type metadata for _ViewDebug.Data.SerializedAttribute?, &type metadata for _ViewDebug.Data.SerializedAttribute);
      }

      outlined destroy of (String, String)(v116, type metadata accessor for (label: String?, value: Any));
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v121)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ViewDebug.Data.unwrapped(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  outlined init with copy of Any(a1, a2);
  outlined init with copy of Any(a1, v12);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ValueWrapper);
  v4 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v9, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v6 + 8))(&v9, v5, v6);
    _sypSgWOhTm_13(a2, &lazy cache variable for type metadata for Any?, v4 + 8);
    v7 = v10;
    *a2 = v9;
    a2[1] = v7;
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return outlined destroy of Encodable?(&v9, &lazy cache variable for type metadata for ValueWrapper?, &lazy cache variable for type metadata for ValueWrapper, &protocol descriptor for ValueWrapper, type metadata accessor for ScrollStateRequest?);
  }
}

uint64_t _ViewDebug.Data.effectiveMirror(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, v12);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomViewDebugReflectable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v9, v13);
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v5 + 8))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  outlined destroy of Encodable?(&v9, &lazy cache variable for type metadata for CustomViewDebugReflectable?, &lazy cache variable for type metadata for CustomViewDebugReflectable, &protocol descriptor for CustomViewDebugReflectable, type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(a1, v12);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomReflectable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v9, v13);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    dispatch thunk of CustomReflectable.customMirror.getter();
    v6 = type metadata accessor for Mirror();
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  outlined destroy of Encodable?(&v9, &lazy cache variable for type metadata for CustomReflectable?, &lazy cache variable for type metadata for CustomReflectable, MEMORY[0x1E69E6D48], type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(a1, v13);
  Mirror.init(reflecting:)();
  v8 = type metadata accessor for Mirror();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ViewTransform.Item.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7254656E69666661;
  v4 = 0xEF6D726F66736E61;
  v5 = 0x800000018DD73FE0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x800000018DD73FE0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x74616C736E617274;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB000000006E6F69;
  }

  v8 = 0x7254656E69666661;
  if (*a2 == 1)
  {
    v5 = 0xEF6D726F66736E61;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74616C736E617274;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB000000006E6F69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ViewTransform.Item.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ViewTransform.Item.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ViewTransform.Item.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ViewTransform.Item.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ViewTransform.Item.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ViewTransform.Item.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0xEF6D726F66736E61;
  v5 = 0x7254656E69666661;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000018DD73FE0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74616C736E617274;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ViewTransform.Item.CodingKeys()
{
  v1 = 0x7254656E69666661;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616C736E617274;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ViewTransform.Item.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ViewTransform.Item.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ViewTransform.Item.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ViewTransform.Item.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewTransform.Item.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<_ViewDebug.Data.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ViewTransform.Item.CodingKeys>, lazy protocol witness table accessor for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys);
  v46 = v3;
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = *(v1 + 8);
  v43 = *v1;
  v44 = v6;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v39 = *(v1 + 32);
  v40 = v8;
  v41 = v9;
  v42 = v7;
  v38 = *(v1 + 48);
  LODWORD(v7) = *(v1 + 55);
  v10 = *(v1 + 53);
  v36 = *(v1 + 49);
  *&v11 = *(v1 + 56);
  m44 = *(v1 + 64);
  v37 = v11;
  v34 = *(v1 + 72);
  v35 = LODWORD(v7);
  v13 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys();
  v47 = v5;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v13 >> 5;
  if (v13 >> 5 > 2)
  {
    return (*(v45 + 8))(v47, v46);
  }

  if (v14)
  {
    v15 = v46;
    if (v14 == 1)
    {
      v50.m11 = v43;
      v50.m12 = v44;
      v50.m13 = v42;
      v50.m14 = v40;
      v50.m21 = v39;
      v50.m22 = v41;
      CATransform3DMakeAffineTransform(&v51, &v50);
      if (v38)
      {
        v50 = v51;
        CATransform3DInvert(&v49, &v50);
      }

      else
      {
        v49 = v51;
      }

      v29 = v47;
      CATransform3D.elements.getter();
      v50.m11 = v30;
      v48 = 1;
      v31 = MEMORY[0x1E69E7DE0];
      type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for [CGFloat], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [_ViewDebug.Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], &lazy cache variable for type metadata for [CGFloat], v31, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    }

    else
    {
      *&m41 = v38 | ((v36 | ((v10 | (v35 << 16)) << 32)) << 8);
      if (v34)
      {
        v51.m11 = v43;
        v51.m12 = v44;
        v51.m13 = 0.0;
        v51.m14 = v42;
        v51.m21 = v40;
        v51.m22 = v39;
        v51.m23 = 0.0;
        v51.m24 = v41;
        v51.m31 = 0.0;
        v51.m32 = 0.0;
        *&v51.m33 = xmmword_18DDAA020;
        *&v51.m41 = v38 | ((v36 | ((v10 | (v35 << 16)) << 32)) << 8);
        *&v51.m42 = v37;
        v51.m44 = m44;
        CATransform3DInvert(&v50, &v51);
        m11 = v50.m11;
        v21 = *&v50.m12;
        m14 = v50.m14;
        m21 = v50.m21;
        v24 = *&v50.m22;
        v25 = *&v50.m24;
        v26 = *&v50.m32;
        m34 = v50.m34;
        m41 = v50.m41;
        v28 = *&v50.m42;
        m44 = v50.m44;
      }

      else
      {
        m21 = v40;
        m14 = v42;
        m11 = v43;
        v21 = *&v44;
        v24 = *&v39;
        v25 = *&v41;
        v28 = v37;
        v26 = xmmword_18DDAB500;
        m34 = 0.0;
      }

      v29 = v47;
      v52 = m11;
      v53 = v21;
      v54 = m14;
      v55 = m21;
      v56 = v24;
      v57 = v25;
      v58 = v26;
      v59 = m34;
      v60 = m41;
      v61 = v28;
      v62 = m44;
      CATransform3D.elements.getter();
      v51.m11 = v32;
      LOBYTE(v50.m11) = 2;
      v33 = MEMORY[0x1E69E7DE0];
      type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for [CGFloat], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [_ViewDebug.Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], &lazy cache variable for type metadata for [CGFloat], v33, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    }

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v45 + 8))(v29, v15);
  }

  else
  {
    v51.m11 = v43;
    v51.m12 = v44;
    LOBYTE(v50.m11) = 0;
    type metadata accessor for CGSize(0);
    lazy protocol witness table accessor for type CGSize and conformance CGSize();
    v17 = v46;
    v18 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v45 + 8))(v18, v17);
  }
}

__n128 CATransform3D.elements.getter()
{
  type metadata accessor for [_ViewDebug.Data](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_18DDACA90;
  *(v1 + 32) = v2;
  v4 = v0[2];
  v5 = v0[3];
  *(v1 + 48) = v3;
  *(v1 + 64) = v4;
  v6 = v0[4];
  v7 = v0[5];
  *(v1 + 80) = v5;
  *(v1 + 96) = v6;
  result = v0[6];
  v9 = v0[7];
  *(v1 + 112) = v7;
  *(v1 + 128) = result;
  *(v1 + 144) = v9;
  return result;
}

uint64_t Optional.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = (*(v4 + 8))(v7, a1);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  }

  return result;
}

uint64_t closure #1 in handleTraceNotification(graph:token:)(uint64_t (*a1)(void *, void *), void *a2)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  result = a1(a2, v17);
  v4 = v17[0];
  if (v17[0])
  {
    type metadata accessor for ReuseTrace.Recorder();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = a2;
    swift_beginAccess();
    static ReuseTrace.recorder = v5;
    v6 = a2;
  }

  if ((v4 & 2) != 0)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    v7 = static CustomEventTrace.enabledCategories;
    result = swift_isUniquelyReferenced_nonNull_native();
    static CustomEventTrace.enabledCategories = v7;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v8 = *(v7 + 2);
    if (v8 < 0x50)
    {
      __break(1u);
LABEL_45:
      swift_once();
      goto LABEL_13;
    }

    *(v7 + 111) = 1;
    if (v8 < 0x55)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_19;
    }

    *(v7 + 116) = 1;
    static CustomEventTrace.enabledCategories = v7;
  }

  if ((v4 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_45;
  }

LABEL_13:
  v9 = static CustomEventTrace.enabledCategories;
  result = swift_isUniquelyReferenced_nonNull_native();
  static CustomEventTrace.enabledCategories = v9;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v9 = result;
  }

  if (*(v9 + 2) < 0x44uLL)
  {
    __break(1u);
    goto LABEL_47;
  }

  *(v9 + 99) = 1;
  static CustomEventTrace.enabledCategories = v9;
LABEL_17:
  if ((v4 & 8) == 0)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_48;
  }

LABEL_19:
  v10 = static CustomEventTrace.enabledCategories;
  result = swift_isUniquelyReferenced_nonNull_native();
  static CustomEventTrace.enabledCategories = v10;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
  }

  if (*(v10 + 2) < 0x43uLL)
  {
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_25;
  }

  *(v10 + 98) = 1;
  static CustomEventTrace.enabledCategories = v10;
LABEL_23:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_29;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_50;
  }

LABEL_25:
  v11 = static CustomEventTrace.enabledCategories;
  result = swift_isUniquelyReferenced_nonNull_native();
  static CustomEventTrace.enabledCategories = v11;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    v11 = result;
  }

  if (*(v11 + 2) < 0x42uLL)
  {
    __break(1u);
LABEL_52:
    swift_once();
    goto LABEL_31;
  }

  *(v11 + 97) = 1;
  static CustomEventTrace.enabledCategories = v11;
LABEL_29:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_35;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_52;
  }

LABEL_31:
  v12 = static CustomEventTrace.enabledCategories;
  result = swift_isUniquelyReferenced_nonNull_native();
  static CustomEventTrace.enabledCategories = v12;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
    v12 = result;
  }

  if (*(v12 + 2) < 0x48uLL)
  {
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_37;
  }

  *(v12 + 103) = 1;
  static CustomEventTrace.enabledCategories = v12;
LABEL_35:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_41;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_54;
  }

LABEL_37:
  v13 = static CustomEventTrace.enabledCategories;
  result = swift_isUniquelyReferenced_nonNull_native();
  static CustomEventTrace.enabledCategories = v13;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    v13 = result;
  }

  if (*(v13 + 2) < 0x45uLL)
  {
    __break(1u);
  }

  *(v13 + 100) = 1;
  static CustomEventTrace.enabledCategories = v13;
LABEL_41:
  if ((v4 & 0xEE) != 0)
  {
    type metadata accessor for CustomEventTrace.Recorder();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    v15 = a2;
    v16 = swift_slowAlloc();
    *(v14 + 24) = v16;
    bzero(v16, 7uLL);

    specialized String.withCString<A>(_:)(1598440771, 0xE400000000000000, v14);

    static CustomEventTrace.recorder = v14;
  }

  return result;
}

uint64_t specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8) | *(a2 + 32);
  *(result + 8) = 0;
  if ((v3 & 0x80) != 0 && *(result + 12) == *MEMORY[0x1E698D3F8])
  {
    v3 &= ~0x80u;
  }

  if ((v3 & 0xFFFFFEFF) != 0)
  {
    result = AGSubgraphShouldRecordTree();
    if (result)
    {
      if ((v3 & 4) != 0)
      {
        result = AGSubgraphAddTreeValue();
        if ((v3 & 8) == 0)
        {
LABEL_8:
          if ((v3 & 0x10) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      else if ((v3 & 8) == 0)
      {
        goto LABEL_8;
      }

      type metadata accessor for CGPoint(0);
      result = AGSubgraphAddTreeValue();
      if ((v3 & 0x10) == 0)
      {
LABEL_9:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

LABEL_15:
      result = AGSubgraphAddTreeValue();
      if ((v3 & 0x20) == 0)
      {
LABEL_10:
        if ((v3 & 0x40) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }

LABEL_16:
      swift_beginAccess();
      result = AGSubgraphAddTreeValue();
      if ((v3 & 0x40) == 0)
      {
LABEL_11:
        if ((v3 & 0x80) == 0)
        {
          return result;
        }

LABEL_18:
        result = *(v2 + 12);
        if (result != *MEMORY[0x1E698D3F8])
        {
          return AGSubgraphAddTreeValue();
        }

        __break(1u);
        return result;
      }

LABEL_17:
      result = AGSubgraphAddTreeValue();
      if ((v3 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewDebug.Data and conformance _ViewDebug.Data()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data and conformance _ViewDebug.Data;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data and conformance _ViewDebug.Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data and conformance _ViewDebug.Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.CodingKeys and conformance _ViewDebug.Data.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [_ViewDebug.Data] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [_ViewDebug.Data](255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewDebug.Data.SerializedProperty and conformance _ViewDebug.Data.SerializedProperty()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty and conformance _ViewDebug.Data.SerializedProperty;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty and conformance _ViewDebug.Data.SerializedProperty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty and conformance _ViewDebug.Data.SerializedProperty);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys;
  if (!lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys;
  if (!lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys;
  if (!lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys;
  if (!lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewTransform.Item.CodingKeys and conformance ViewTransform.Item.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGSize and conformance CGSize()
{
  result = lazy protocol witness table cache variable for type CGSize and conformance CGSize;
  if (!lazy protocol witness table cache variable for type CGSize and conformance CGSize)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGSize and conformance CGSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewDebug.Properties and conformance _ViewDebug.Properties()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Properties and conformance _ViewDebug.Properties);
  }

  return result;
}

uint64_t destroy for _ViewDebug.Data.SerializedProperty(uint64_t a1)
{

  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }
}

uint64_t initializeWithCopy for _ViewDebug.Data.SerializedProperty(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 88);

  if (v7)
  {
    *(a1 + 88) = v7;
    (**(v7 - 8))(a1 + 64, a2 + 64, v7);
  }

  else
  {
    v8 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v8;
  }

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for _ViewDebug.Data.SerializedProperty(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 88);
  if (!*(a1 + 88))
  {
    if (v4)
    {
      *(a1 + 88) = v4;
      (**(v4 - 8))(a1 + 64, a2 + 64);
      goto LABEL_8;
    }

LABEL_7:
    v6 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v6;
    goto LABEL_8;
  }

  v5 = (a1 + 64);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(v5, (a2 + 64));
LABEL_8:
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for _ViewDebug.Data.SerializedProperty(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for _ViewDebug.Data.SerializedProperty(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ViewDebug.Data.SerializedProperty(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedProperty.CodingKeys and conformance _ViewDebug.Data.SerializedProperty.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute and conformance _ViewDebug.Data.SerializedAttribute()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute and conformance _ViewDebug.Data.SerializedAttribute;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute and conformance _ViewDebug.Data.SerializedAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute and conformance _ViewDebug.Data.SerializedAttribute);
  }

  return result;
}

unint64_t specialized _ViewDebug.Data.SerializedAttribute.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _ViewDebug.Data.SerializedAttribute.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ViewTransform.Item.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ViewTransform.Item.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void type metadata accessor for (key: _ViewDebug.Property, value: Any)()
{
  if (!lazy cache variable for type metadata for (key: _ViewDebug.Property, value: Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: _ViewDebug.Property, value: Any));
    }
  }
}

uint64_t outlined init with copy of (key: _ViewDebug.Property, value: Any)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: _ViewDebug.Property, value: Any)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<(String, String)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of (String, String)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Encodable?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t destroy for _ViewDebug.Data.SerializedAttribute(uint64_t a1)
{

  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 56);
  }
}

uint64_t initializeWithCopy for _ViewDebug.Data.SerializedAttribute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 80);

  if (v7)
  {
    *(a1 + 80) = v7;
    (**(v7 - 8))(a1 + 56, a2 + 56, v7);
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithCopy for _ViewDebug.Data.SerializedAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 80);
  if (!*(a1 + 80))
  {
    if (v4)
    {
      *(a1 + 80) = v4;
      (**(v4 - 8))(a1 + 56, a2 + 56);
      goto LABEL_8;
    }

LABEL_7:
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
    goto LABEL_8;
  }

  v5 = (a1 + 56);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(v5, (a2 + 56));
LABEL_8:
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithTake for _ViewDebug.Data.SerializedAttribute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 56);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

void type metadata accessor for KeyedEncodingContainer<_ViewDebug.Data.CodingKeys>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for KeyedEncodingContainer();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.CodingKeys and conformance _ViewDebug.Data.SerializedAttribute.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Data.SerializedAttribute.Flags and conformance _ViewDebug.Data.SerializedAttribute.Flags);
  }

  return result;
}

void type metadata accessor for [_ViewDebug.Data](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _ViewInputs.makeComponentGestureRecognizerSource<A>(_:)(uint64_t *a1)
{
  v3 = *a1;
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28GestureContainerFactoryInputV_Tt2g5(*v1))
  {
    return (*(v4 + 16))(a1, *(v3 + 400), *(v3 + 408));
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _ViewInputs.makeGestureContainer(responder:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28GestureContainerFactoryInputV_Tt2g5(*a2))
  {
    return (*(v6 + 8))(a1, a4);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static BezierTimingFunction.linear.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v11 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0x3FF0000000000000;
  v6 = lazy protocol witness table accessor for type Double and conformance Double();
  return BezierTimingFunction.init<A>(p1:p2:)(&v11, &v10, &v9, &v8, a1, MEMORY[0x1E69E63B0], a2, v6, a3);
}

id BezierTimingFunction<>.caTimingFunction.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v6) = v1;
  LODWORD(v7) = v2;
  LODWORD(v8) = v3;
  LODWORD(v9) = v4;

  return [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
}

uint64_t BezierTimingFunction.init<A>(p1:p2:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a5;
  v40 = a8;
  v37 = a4;
  v38 = a7;
  v35 = a2;
  v36 = a3;
  v30 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  v12 = v33;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v22 = *(a6 - 8);
  v23 = *(v22 + 32);
  v23(&v29 - v20, v30, a6, v19);
  (v23)(&v21[*(TupleTypeMetadata2 + 48)], v35, a6);
  v31 = v17;
  (v23)(v17, v36, a6);
  (v23)(&v17[*(TupleTypeMetadata2 + 48)], v37, a6);
  v24 = *(v12 + 16);
  v32 = v21;
  v24(v14, v21, TupleTypeMetadata2);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = v24;
  v34 = a9;
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  v35 = *(v22 + 8);
  v35(&v14[v36], a6);
  v24(v14, v21, TupleTypeMetadata2);
  v36 = type metadata accessor for BezierTimingFunction();
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  v25 = v35;
  v35(v14, a6);
  v26 = v31;
  v37(v14, v31, TupleTypeMetadata2);
  v30 = *(TupleTypeMetadata2 + 48);
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  v25(&v14[v30], a6);
  v37(v14, v26, TupleTypeMetadata2);
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  v27 = *(v33 + 8);
  v27(v26, TupleTypeMetadata2);
  v27(v32, TupleTypeMetadata2);
  return (v35)(v14, a6);
}

double BezierAnimation.init(_:_:_:_:duration:)@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v6 = a2 * 3.0;
  v7 = (a4 - a2) * 3.0 - a2 * 3.0;
  v8 = a3 * 3.0;
  v9 = (a5 - a3) * 3.0 - a3 * 3.0;
  *a1 = a6;
  a1[1] = 1.0 - v6 - v7;
  a1[2] = v7;
  a1[3] = v6;
  result = 1.0 - v8 - v9;
  a1[4] = result;
  a1[5] = v9;
  a1[6] = v8;
  return result;
}

__n128 BezierAnimation.curve.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

__n128 BezierAnimation.curve.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  return result;
}

__n128 BezierAnimation.init(curve:duration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v3 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v3;
  result = *(a1 + 32);
  *(a2 + 40) = result;
  return result;
}

double BezierAnimation.function.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  result = v2 / 3.0 + (*(v1 + 16) + v2) / 3.0;
  *a1 = *v1;
  *(a1 + 8) = v2 / 3.0;
  *(a1 + 16) = v4 / 3.0;
  *(a1 + 24) = result;
  *(a1 + 32) = v4 / 3.0 + (v3 + v4) / 3.0;
  *(a1 + 40) = 4;
  return result;
}

BOOL static BezierAnimation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v4 = *(a1 + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = *(a1 + 40);
  v5 = *(a2 + 24);
  v7[0] = *(a2 + 8);
  v7[1] = v5;
  v7[2] = *(a2 + 40);
  return specialized static GlassContainer.TransitionSettings.== infix(_:_:)(v8, v7);
}

uint64_t BezierAnimation.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  return UnitCurve.CubicSolver.hash(into:)();
}

Swift::Int BezierAnimation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  UnitCurve.CubicSolver.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BezierAnimation()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  return UnitCurve.CubicSolver.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BezierAnimation()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  UnitCurve.CubicSolver.hash(into:)();
  return Hasher._finalize()();
}

uint64_t BezierTimingFunction.p1.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v9 = *(*(v6 - 8) + 16);
  v9(a1, v3, v6);
  v7 = v3 + *(a3 + 36);

  return (v9)(a2, v7, v6);
}

uint64_t BezierTimingFunction.p1.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v5 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 32);
  v15(&v19 - v12, v19, v5, v11);
  (v15)(&v13[*(TupleTypeMetadata2 + 48)], v20, v5);
  (*(v7 + 32))(v9, v13, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *(v14 + 40);
  v17(v3, v9, v5);
  return (v17)(v3 + *(a3 + 36), &v9[v16], v5);
}

void (*BezierTimingFunction.p1.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[2] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[5] = v12;
  v14 = *(TupleTypeMetadata2 + 48);
  *(v7 + 12) = v14;
  v15 = *(*(v8 - 8) + 16);
  v15();
  (v15)(v13 + v14, v2 + *(a2 + 36), v8);
  return BezierTimingFunction.p1.modify;
}

uint64_t BezierTimingFunction.p2.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v9 = *(*(v6 - 8) + 16);
  v9(a1, v3 + *(a3 + 40), v6);
  v7 = v3 + *(a3 + 44);

  return (v9)(a2, v7, v6);
}

uint64_t key path getter for BezierTimingFunction.p1 : <A>BezierTimingFunction<A>@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a2@<X8>)
{
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  v5 = type metadata accessor for BezierTimingFunction();
  return a1(a2, a2 + v4, v5);
}

uint64_t key path setter for BezierTimingFunction.p1 : <A>BezierTimingFunction<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *, uint64_t))
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, TupleTypeMetadata2, v8);
  v12 = *(TupleTypeMetadata2 + 48);
  v13 = type metadata accessor for BezierTimingFunction();
  return a5(v10, &v10[v12], v13);
}

uint64_t BezierTimingFunction.p2.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v5 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 32);
  v15(&v19 - v12, v19, v5, v11);
  (v15)(&v13[*(TupleTypeMetadata2 + 48)], v20, v5);
  (*(v7 + 32))(v9, v13, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *(v14 + 40);
  v17(v3 + *(a3 + 40), v9, v5);
  return (v17)(v3 + *(a3 + 44), &v9[v16], v5);
}

void (*BezierTimingFunction.p2.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[2] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[5] = v12;
  v14 = *(TupleTypeMetadata2 + 48);
  *(v7 + 12) = v14;
  v15 = *(*(v8 - 8) + 16);
  v15();
  (v15)(v13 + v14, v2 + *(a2 + 44), v8);
  return BezierTimingFunction.p2.modify;
}

void BezierTimingFunction.p1.modify(uint64_t **a1, char a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = *a1;
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    (*(v8 + 16))(v4[4], v4[5], v7);
    a3(v6, &v6[*(v7 + 48)], v9);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    a3(v4[5], &v5[*(v4 + 12)], *v4);
  }

  free(v5);
  free(v6);

  free(v4);
}

uint64_t static BezierTimingFunction.== infix(_:_:)()
{
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (type metadata accessor for BezierTimingFunction(), (dispatch thunk of static Equatable.== infix(_:_:)()) && (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t BezierTimingFunction<>.init(from:)@<X0>(unint64_t result@<X0>, float *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 1.0;
  v8 = 0;
  if (v5 >= v6)
  {
    v9 = 0;
    v10 = 1.0;
LABEL_68:
    v3[3] = 0;
    *a2 = v8;
    *(a2 + 1) = v9;
    a2[2] = v7;
    a2[3] = v10;
    return result;
  }

  v9 = 0;
  v10 = 1.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_9;
      }

      if (v11 < v5)
      {
        goto LABEL_69;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_69:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_9:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_74;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_69;
        }

        v3[3] = 29;
        v3[4] = v17 + result;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_69;
        }

        v17 = v3[1];
      }

      v5 = (v17 + 1);
      if (v6 < (v17 + 1))
      {
        goto LABEL_69;
      }

      v7 = *v17;
      goto LABEL_65;
    }

    if (v12 == 4)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        v15 = v3[1];
        if (v6 < v15 + result)
        {
          goto LABEL_69;
        }

        v3[3] = 37;
        v3[4] = v15 + result;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_69;
        }

        v15 = v3[1];
      }

      v5 = (v15 + 1);
      if (v6 < (v15 + 1))
      {
        goto LABEL_69;
      }

      v10 = *v15;
LABEL_65:
      v3[1] = v5;
      if (v5 >= v6)
      {
        goto LABEL_68;
      }
    }

    else
    {
LABEL_20:
      if ((result & 7) > 1)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_75;
          }

          v5 = v3[1] + result;
          if (v6 < v5)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_69;
          }

          v5 = v3[1] + 4;
          if (v6 < v5)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_65;
      }

      if ((result & 7) != 0)
      {
        if (v13 != 1)
        {
          goto LABEL_69;
        }

        v5 = v3[1] + 8;
        if (v6 < v5)
        {
          goto LABEL_69;
        }

        goto LABEL_65;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v5 = v3[1];
      if (v5 >= v6)
      {
        goto LABEL_68;
      }
    }
  }

  if (v12 == 1)
  {
    if (v13 == 2)
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      v16 = v3[1];
      if (v6 < v16 + result)
      {
        goto LABEL_69;
      }

      v3[3] = 13;
      v3[4] = v16 + result;
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_69;
      }

      v16 = v3[1];
    }

    v5 = (v16 + 1);
    if (v6 < (v16 + 1))
    {
      goto LABEL_69;
    }

    v8 = *v16;
    goto LABEL_65;
  }

  if (v12 != 2)
  {
    goto LABEL_20;
  }

  if (v13 != 2)
  {
    if (v13 != 5)
    {
      goto LABEL_69;
    }

    v14 = v3[1];
LABEL_39:
    v5 = (v14 + 1);
    if (v6 < (v14 + 1))
    {
      goto LABEL_69;
    }

    v9 = *v14;
    goto LABEL_65;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1];
    if (v6 < v14 + result)
    {
      goto LABEL_69;
    }

    v3[3] = 21;
    v3[4] = v14 + result;
    goto LABEL_39;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

_DWORD *BezierTimingFunction<>.encode(to:)(_DWORD *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v8 = v3[1];
    result = (v8 + 4);
    if (__OFADD__(v8, 4))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v3[2] < result)
    {
      goto LABEL_21;
    }

    v3[1] = result;
    *(*v3 + v8) = v5;
  }

  if (v4 != 0.0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    while (1)
    {
LABEL_9:
      v4 = 1.0;
      if (v7 == 1.0)
      {
        goto LABEL_13;
      }

      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v10 = v3[1];
      result = (v10 + 4);
      if (!__OFADD__(v10, 4))
      {
        break;
      }

      while (1)
      {
        __break(1u);
LABEL_21:
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v5;
        if (v4 == 0.0)
        {
          break;
        }

LABEL_6:
        ProtobufEncoder.encodeVarint(_:)(0x15uLL);
        v9 = v3[1];
        result = (v9 + 4);
        if (!__OFADD__(v9, 4))
        {
          if (v3[2] < result)
          {
            goto LABEL_24;
          }

          v3[1] = result;
          *(*v3 + v9) = v4;
          goto LABEL_9;
        }

LABEL_19:
        __break(1u);
      }
    }

    if (v3[2] >= result)
    {
      v3[1] = result;
      *(*v3 + v10) = v7;
LABEL_13:
      if (v6 == 1.0)
      {
        return result;
      }

      goto LABEL_14;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v7;
    if (v6 == 1.0)
    {
      return result;
    }

LABEL_14:
    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v11 = v3[1];
    result = (v11 + 4);
    if (!__OFADD__(v11, 4))
    {
      break;
    }

    __break(1u);
LABEL_24:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  if (v3[2] < result)
  {
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v6;
  }

  else
  {
    v3[1] = result;
    *(*v3 + v11) = v6;
  }

  return result;
}

int64_t BezierAnimation.encode(to:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  if (*v1 == 0.0)
  {
    goto LABEL_6;
  }

  v14 = *(v1 + 40);
  v15 = *(v1 + 24);
  v16 = *(v1 + 8);
  ProtobufEncoder.encodeVarint(_:)(9uLL);
  v7 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = v7 + 8;
  if (__OFADD__(v7, 8))
  {
    goto LABEL_15;
  }

  if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_16;
  }

  *(a1 + 8) = isUniquelyReferenced_nonNull_native;
  *(*a1 + v7) = v3;
  while (1)
  {
    v5 = v15;
    v4 = v16;
    v6 = v14;
LABEL_6:
    v18[0] = v4;
    v18[1] = v5;
    v19 = v6;
    v17[0] = xmmword_18DDAF520;
    v17[1] = xmmword_18DDBA7E0;
    v17[2] = xmmword_18DDBA7F0;
    result = specialized static GlassContainer.TransitionSettings.== infix(_:_:)(v18, v17);
    if (result)
    {
      break;
    }

    v3 = *&v19;
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v10 = *(a1 + 8);
    v11 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
      v11 = isUniquelyReferenced_nonNull_native;
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
      v11 = isUniquelyReferenced_nonNull_native;
    }

    *(v11 + 16) = v13 + 1;
    *(v11 + 8 * v13 + 32) = v10;
    *(a1 + 24) = v11;
    if (!__OFADD__(v10, 1))
    {
      *(a1 + 8) = v10 + 1;
      UnitCurve.CubicSolver.encode(to:)(a1);
      return ProtobufEncoder.endLengthDelimited()();
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v3;
  }

  return result;
}

unint64_t BezierAnimation.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = &protocol conformance descriptor for EmptyViewTrait;
  v8 = &unk_18DDAF000;
  v9 = xmmword_18DDBA7F0;
  if (v5 >= v6)
  {
LABEL_54:
    v30 = v9;
    v29 = v7[126];
    v10 = 0.0;
    v28 = v8[82];
LABEL_55:
    v3[3] = 0;
    *a2 = v10;
    *(a2 + 8) = v28;
    *(a2 + 24) = v29;
    *(a2 + 40) = v30;
    return result;
  }

  v30 = xmmword_18DDBA7F0;
  v29 = xmmword_18DDBA7E0;
  v10 = 0.0;
  v28 = xmmword_18DDAF520;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v5)
      {
        goto LABEL_56;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_56:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 != 1)
    {
      v21 = result & 7;
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v22 = v3[1] + result;
          if (v6 < v22)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v21 != 5)
          {
            goto LABEL_56;
          }

          v22 = v3[1] + 4;
          if (v6 < v22)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v21 != 1)
        {
          goto LABEL_56;
        }

        v22 = v3[1] + 8;
        if (v6 < v22)
        {
          goto LABEL_56;
        }
      }

      v3[1] = v22;
      goto LABEL_4;
    }

    v12 = result & 7;
    if (v12 == 5)
    {
      v23 = v3[1];
      if (v6 < (v23 + 1))
      {
        goto LABEL_56;
      }

      v24 = *v23;
      v3[1] = v23 + 1;
      v10 = v24;
    }

    else
    {
      if (v12 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        v13 = v3[1];
        if (v6 < v13 + result)
        {
          goto LABEL_56;
        }

        v3[3] = 9;
        v3[4] = v13 + result;
      }

      else
      {
        if (v12 != 1)
        {
          goto LABEL_56;
        }

        v13 = v3[1];
      }

      if (v6 < (v13 + 1))
      {
        goto LABEL_56;
      }

      v10 = *v13;
      v3[1] = v13 + 1;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_55;
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_56;
  }

  v14 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  *&v14[8 * v16 + 32] = v6;
  v3[5] = v14;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1] + result;
    if (v6 < v17)
    {
      goto LABEL_56;
    }

    v3[2] = v17;
    UnitCurve.CubicSolver.init(from:)(v3, v31);
    v18 = v3[5];
    if (!*(v18 + 16))
    {
      goto LABEL_60;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = *(v18 + 16);
      if (!v19)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v18 = result;
      v19 = *(result + 16);
      if (!v19)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v20 = v19 - 1;
    v6 = *(v18 + 8 * v20 + 32);
    *(v18 + 16) = v20;
    v3[5] = v18;
    v3[2] = v6;
    v28 = v31[0];
    v29 = v31[1];
    v30 = v31[2];
    goto LABEL_4;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v27 = *(result + 16);
  if (v27)
  {
    v25 = v27 - 1;
    v26 = *(result + 8 * v25 + 32);
    *(result + 16) = v25;
    v3[5] = result;
    v3[2] = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}