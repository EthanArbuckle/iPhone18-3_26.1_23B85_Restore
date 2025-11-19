__n128 closure #1 in EventListenerPhase.updateValue()@<Q0>(float64x2_t *a1@<X8>)
{
  type metadata accessor for EventListenerPhase();
  LazySubviewPrefetcher.transform.getter(a1);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  result = *Value;
  v4 = vsubq_f64(a1[2], vsubq_f64(*Value, a1[1]));
  a1[1] = *Value;
  a1[2] = v4;
  return result;
}

uint64_t EventListenerPhase.description.getter()
{
  v1 = *(v0 + 24);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI7EventIDV_s5NeverOytTB503_s7c4UI18E82ListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLV11descriptionSSvgyAA0C2IDVXEfU_SSTf1cn_n(v1);
  return 0x72656E657473694CLL;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance EventListenerPhase<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EventListenerPhase.Value();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void type metadata accessor for (String, String)()
{
  if (!lazy cache variable for type metadata for (String, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, String));
    }
  }
}

uint64_t instantiation function for generic protocol witness table for EventListener<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EventListenerPhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 44))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for EventListenerPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for EventListenerPhase.Value()
{
  result = type metadata accessor for GesturePhase();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for EventListenerPhase.Value(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 64);
  }

  if ((v8 & 0x1000F8) == 0 && (v11 & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFE7)
  {
    v14 = __src[v11];
    if (v14 >= 3)
    {
      v14 = *__src + 3;
    }

    if (v14 == 2)
    {
      (*(v6 + 16))(__dst, __src, v5);
      *(v4 + v11) = 2;
    }

    else if (v14 == 1)
    {
      (*(v6 + 16))(__dst, __src, v5);
      *(v4 + v11) = 1;
    }

    else if (v14)
    {
      memcpy(__dst, __src, v11 + 1);
    }

    else
    {
      if ((*(v6 + 48))(__src, 1, v5))
      {
        memcpy(v4, __src, v10);
      }

      else
      {
        (*(v7 + 16))(v4, __src, v5);
        (*(v7 + 56))(v4, 0, 1, v5);
      }

      *(v4 + v11) = 0;
    }

    v15 = (v4 + v11 + 8) & 0xFFFFFFFFFFFFFFF8;
    v16 = &__src[v11 + 8] & 0xFFFFFFFFFFFFFFF8;
    *v15 = *v16;
    *(v15 + 16) = *(v16 + 16);
  }

  else
  {
    v13 = *__src;
    *v4 = *__src;
    v4 = (v13 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  return v4;
}

unsigned __int8 *destroy for EventListenerPhase.Value(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v3 > v4)
  {
    v4 = *(v2 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 3;
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 3;
    v5 = v8 + 3;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_20:
  if (v5 - 1 < 2 || !v5 && (v11 = result, v14 = *(*(a2 + 16) - 8), v12 = (*(v2 + 48))(), v2 = v14, v13 = v12, result = v11, !v13))
  {
    v10 = *(v2 + 8);

    return v10();
  }

  return result;
}

_BYTE *initializeWithCopy for EventListenerPhase.Value(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = __src[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = *__src;
    }

    else if (v12 == 2)
    {
      v13 = *__src;
    }

    else if (v12 == 3)
    {
      v13 = *__src | (__src[2] << 16);
    }

    else
    {
      v13 = *__src;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_21:
  if (v10 == 2)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v9] = 2;
  }

  else if (v10 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v9] = 1;
  }

  else if (v10)
  {
    memcpy(__dst, __src, v9 + 1);
  }

  else
  {
    if ((*(v6 + 48))(__src, 1, v5))
    {
      memcpy(__dst, __src, v8);
    }

    else
    {
      (*(v6 + 16))(__dst, __src, v5);
      (*(v6 + 56))(__dst, 0, 1, v5);
    }

    __dst[v9] = 0;
  }

  v15 = &__dst[v9 + 8] & 0xFFFFFFFFFFFFFFF8;
  v16 = &__src[v9 + 8] & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 16) = *(v16 + 16);
  return __dst;
}

unsigned __int8 *assignWithCopy for EventListenerPhase.Value(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 == a2)
  {
    goto LABEL_52;
  }

  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (v10 - 1 < 2 || !v10 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v15 = a2[v9];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *a2;
      if (v9 < 4)
      {
LABEL_48:
        v19 = v18 | (v16 << (8 * v9));
        v15 = v19 + 3;
        if (v19 == -1)
        {
          goto LABEL_49;
        }

        goto LABEL_41;
      }
    }

    else if (v17 == 2)
    {
      v18 = *a2;
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v18 = *a2;
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    v15 = v18 + 3;
  }

LABEL_40:
  if (v15 == 2)
  {
LABEL_49:
    (*(v6 + 16))(a1, a2, v5);
    a1[v9] = 2;
    goto LABEL_52;
  }

LABEL_41:
  if (v15 == 1)
  {
    (*(v6 + 16))(a1, a2, v5);
    a1[v9] = 1;
  }

  else if (v15)
  {
    memcpy(a1, a2, v9 + 1);
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    a1[v9] = 0;
  }

LABEL_52:
  v20 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v21 = *(v6 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  if (v20 > v21)
  {
    v21 = *(v6 + 64);
  }

  v22 = v21 + 8;
  v23 = &a1[v22] & 0xFFFFFFFFFFFFFFF8;
  v24 = &a2[v22] & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 16) = *(v24 + 16);
  return a1;
}

_BYTE *initializeWithTake for EventListenerPhase.Value(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = __src[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = *__src;
    }

    else if (v12 == 2)
    {
      v13 = *__src;
    }

    else if (v12 == 3)
    {
      v13 = *__src | (__src[2] << 16);
    }

    else
    {
      v13 = *__src;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_21:
  if (v10 == 2)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v9] = 2;
  }

  else if (v10 == 1)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v9] = 1;
  }

  else if (v10)
  {
    memcpy(__dst, __src, v9 + 1);
  }

  else
  {
    if ((*(v6 + 48))(__src, 1, v5))
    {
      memcpy(__dst, __src, v8);
    }

    else
    {
      (*(v6 + 32))(__dst, __src, v5);
      (*(v6 + 56))(__dst, 0, 1, v5);
    }

    __dst[v9] = 0;
  }

  v15 = &__dst[v9 + 8] & 0xFFFFFFFFFFFFFFF8;
  v16 = &__src[v9 + 8] & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 16) = *(v16 + 16);
  return __dst;
}

unsigned __int8 *assignWithTake for EventListenerPhase.Value(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 == a2)
  {
    goto LABEL_52;
  }

  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (v10 - 1 < 2 || !v10 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v15 = a2[v9];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *a2;
      if (v9 < 4)
      {
LABEL_48:
        v19 = v18 | (v16 << (8 * v9));
        v15 = v19 + 3;
        if (v19 == -1)
        {
          goto LABEL_49;
        }

        goto LABEL_41;
      }
    }

    else if (v17 == 2)
    {
      v18 = *a2;
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v18 = *a2;
      if (v9 < 4)
      {
        goto LABEL_48;
      }
    }

    v15 = v18 + 3;
  }

LABEL_40:
  if (v15 == 2)
  {
LABEL_49:
    (*(v6 + 32))(a1, a2, v5);
    a1[v9] = 2;
    goto LABEL_52;
  }

LABEL_41:
  if (v15 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    a1[v9] = 1;
  }

  else if (v15)
  {
    memcpy(a1, a2, v9 + 1);
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    a1[v9] = 0;
  }

LABEL_52:
  v20 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v21 = *(v6 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  if (v20 > v21)
  {
    v21 = *(v6 + 64);
  }

  v22 = v21 + 8;
  v23 = &a1[v22] & 0xFFFFFFFFFFFFFFF8;
  v24 = &a2[v22] & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 16) = *(v24 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for EventListenerPhase.Value(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 > v5)
  {
    v5 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_27;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v6 <= 3)
  {
    v7 = ((a2 - 2147483391) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9 == 4)
  {
    v10 = *&a1[v6];
    if (v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_27;
      }

LABEL_23:
      v12 = (v10 - 1) << (8 * v6);
      if (v6 <= 3)
      {
        v13 = *a1;
      }

      else
      {
        v12 = 0;
        v13 = *a1;
      }

      return (v13 | v12) + 0x7FFFFFFF;
    }

    v10 = a1[v6];
    if (a1[v6])
    {
      goto LABEL_23;
    }
  }

LABEL_27:
  v14 = *(&a1[v5 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  if ((v14 + 1) >= 2)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for EventListenerPhase.Value(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = (v7 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (a3 < 0x7FFFFFFF)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 - 2147483391) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  if (a2 <= 0x7FFFFFFE)
  {
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      *(&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) = a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v12 = a2 - 0x7FFFFFFF;
  v13 = (a2 - 0x7FFFFFFF) >> 8;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_27:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

uint64_t instantiation function for generic protocol witness table for EventListenerPhase<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for CoordinateSpace?()
{
  if (!lazy cache variable for type metadata for CoordinateSpace?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CoordinateSpace?);
    }
  }
}

uint64_t outlined init with copy of EventType?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void _s7SwiftUI16ArrayWith2InlineVySS_SStGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of EventType?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t key path getter for PlatformViewResponderBase.PlatformHitTestResult.hitView : <A, B>PlatformViewResponderBase<A, B>.PlatformHitTestResult@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t PlatformViewResponderBase.PlatformHitTestResult.hitView.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*PlatformViewResponderBase.PlatformHitTestResult.hitView.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return PlatformViewResponderBase.PlatformHitTestResult.hitView.modify;
}

uint64_t PlatformViewResponderBase.PlatformHitTestResult.hitView.modify()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t PlatformViewResponderBase.hostView.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlatformViewResponderBase.hostView.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PlatformViewResponderBase.hostView.modify;
}

void PlatformViewResponderBase.hostView.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlatformViewResponderBase.representedView.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlatformViewResponderBase.representedView.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PlatformViewResponderBase.representedView.modify;
}

void PlatformViewResponderBase.representedView.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlatformViewResponderBase.helper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 288);
  swift_beginAccess();
  v4 = type metadata accessor for ContentResponderHelper();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PlatformViewResponderBase.helper.setter(uint64_t a1)
{
  v3 = *(*v1 + 288);
  swift_beginAccess();
  v4 = type metadata accessor for ContentResponderHelper();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t PlatformViewResponderBase.lastResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 296);
  swift_beginAccess();
  type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*PlatformViewResponderBase.preferredFocusableView.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = *(*v1 + 304);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PlatformViewResponderBase.preferredFocusableView.modify;
}

void PlatformViewResponderBase.preferredFocusableView.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlatformViewResponderBase.frame.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&v16 = (*(*v1 + 352))();
    *(&v16 + 1) = v4;
    *&v17 = v5;
    *(&v17 + 1) = v6;
    if (one-time initialization token for hostingViewCoordinateSpace != -1)
    {
      swift_once();
    }

    v14[0] = hostingViewCoordinateSpace.value.value;
    v15 = 1;
    v7 = v1 + *(*v1 + 288);
    swift_beginAccess();
    v8 = v7 + *(type metadata accessor for ContentResponderHelper() + 40);
    v9 = *(v8 + 8);
    *&v13[0] = *v8;
    *(&v13[0] + 1) = v9;
    v10 = *(v8 + 32);
    v13[1] = *(v8 + 16);
    v13[2] = v10;

    CGRect.convert(to:transform:)(v14, v13);
    swift_unknownObjectRelease();

    result = outlined destroy of CoordinateSpace(v14);
    v11 = v16;
    v12 = v17;
  }

  else
  {
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = 0;
  return result;
}

BOOL PlatformViewResponderBase.platformViewIsEnabled.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

SwiftUI::ViewResponder::HitTestPolicy __swiftcall PlatformViewResponderBase.hitTestPolicy(options:)(SwiftUI::ViewResponder::ContainsPointsOptions options)
{
  v3 = v1;
  v4 = *options.rawValue;
  result = (*(*v2 + 360))();
  v6 = (result & 1) == 0 && (v4 & 1) == 0 || (*(*v2 + 168))() < 0.001;
  *v3 = v6;
  return result;
}

uint64_t PlatformViewResponderBase.containsGlobalPoints(_:cacheKey:options:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = v4;
  v12 = *v4;
  v13 = *a3;
  if ((specialized static UnifiedHitTestingFeature.isEnabled.getter() & 1) == 0)
  {
    result = (*(*v4 + 208))();
    goto LABEL_7;
  }

  v36 = v13;
  v14 = (*(*v4 + 176))(v40, &v36);
  Strong = v40[0];
  v16 = *(*v4 + 208);
  result = v16(v14);
  if (Strong == 1)
  {
LABEL_7:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = result;
    return result;
  }

  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v32 = result;
  v33 = v13;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v18 = *(*v4 + 296);
  swift_beginAccess();
  v19 = type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v36, v8 + v18, v20);
  v34 = v21;
  v35 = HIDWORD(a2) & 1;
  v30 = v20;
  v31 = v18;
  if (v39 == 1)
  {
    (*(v21 + 8))(&v36, v20);
  }

  else
  {
    v22 = *(v19 - 8);
    (*(v22 + 32))(v40, &v36, v19);
    if ((a2 & 0x100000000) == 0 && *v40 == a2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v22 + 8))(v40, v19);
      LOBYTE(v13) = v33;
      if (Strong)
      {
        goto LABEL_14;
      }

LABEL_11:
      v12 = 0;
      v7 = 0.0;
      a1 = v32;
      goto LABEL_23;
    }

    (*(v22 + 8))(v40, v19);
  }

  LOBYTE(v13) = v33;
  Strong = (*(*v8 + 368))(a2 | (v35 << 32), v5, v6);
  if (!Strong)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_unknownObjectRetain();
  v24 = v16(v23);
  swift_beginAccess();
  v25 = type metadata accessor for ContentResponderHelper();
  ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(a1, a2 | (v35 << 32), v24, v25, &v36);
  swift_endAccess();

  v12 = v36;
  v7 = v37;
  a1 = *&v38;

  if (a1 >> 62)
  {
LABEL_31:
    v26 = __CocoaSet.count.getter();
    goto LABEL_16;
  }

  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

  if (v26)
  {
    v28 = (*(*v8 + 320))(v27);
    if (v28)
    {
      if (((*(*v8 + 376))(Strong, v28) & 1) == 0)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        a1 = MEMORY[0x1E69E7CC0];
        v12 = -1;
        v29 = v34;
        if ((v13 & 2) != 0)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_23:
    v29 = v34;
    goto LABEL_24;
  }

  v29 = v34;
  if ((v13 & 2) == 0)
  {
LABEL_22:
    v7 = 16.0;
  }

LABEL_24:
  if ((a2 & 0x100000000) != 0)
  {
    result = swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v36) = a2;
    v37 = v5;
    v38 = v6;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v39 = 0;
    swift_beginAccess();
    (*(v29 + 40))(v8 + v31, &v36, v30);
    result = swift_endAccess();
  }

  *a4 = v12;
  *(a4 + 1) = v7;
  a4[2] = a1;
  return result;
}

uint64_t PlatformViewResponderBase.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a2;
  swift_beginAccess();
  v9 = type metadata accessor for ContentResponderHelper();
  ContentResponderHelper.addContentPath(to:kind:in:observer:)(a1, &v11, a3, a4, a5, v9);
  return swift_endAccess();
}

uint64_t PlatformViewResponderBase.descriptionName.getter()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return recursiveDescriptionName(_:)();
  }

  v2 = recursiveDescriptionName(_:)();
  MEMORY[0x193ABEDD0](60, 0xE100000000000000);
  swift_getObjectType();
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  swift_unknownObjectRelease();
  return v2;
}

Swift::Void __swiftcall PlatformViewResponderBase.extendPrintTree(string:)(Swift::String *string)
{
  v2 = *v1;
  v3 = type metadata accessor for ContentResponderHelper();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1 + *(v2 + 288);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = ContentResponderHelper.globalPosition.getter(v3);
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v12 = Double.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  *&v13[1] = v8;
  v13[2] = v10;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v14, v15);
}

uint64_t PlatformViewResponderBase.__allocating_init()()
{
  v0 = swift_allocObject();
  PlatformViewResponderBase.init()();
  return v0;
}

char *PlatformViewResponderBase.init()()
{
  v1 = *v0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  ContentResponderHelper.init()(*(v1 + 256), &v0[*(*v0 + 288)]);
  v2 = &v0[*(*v0 + 296)];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_unknownObjectWeakInit();
  *(v0 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v3 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v4 = *(v3 + 208);

  swift_beginAccess();
  *(v0 + 3) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

char *PlatformViewResponderBase.__allocating_init(host:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized PlatformViewResponderBase.init(host:)(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

char *PlatformViewResponderBase.init(host:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized PlatformViewResponderBase.init(host:)(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void PlatformViewResponderBase.__ivar_destroyer()
{
  MEMORY[0x193AC4950](v0 + 40);
  MEMORY[0x193AC4950](v0 + 48);
  v1 = *(*v0 + 288);
  v2 = type metadata accessor for ContentResponderHelper();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 296);
  type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  JUMPOUT(0x193AC4950);
}

uint64_t PlatformViewResponderBase.deinit()
{
  outlined destroy of weak ViewGraphDelegate?(v0 + 16);
  swift_weakDestroy();
  MEMORY[0x193AC4950](v0 + 40);
  MEMORY[0x193AC4950](v0 + 48);
  v1 = *(*v0 + 288);
  v2 = type metadata accessor for ContentResponderHelper();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 296);
  type metadata accessor for PlatformViewResponderBase.PlatformHitTestResult();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  MEMORY[0x193AC4950](v0 + *(*v0 + 304));
  return v0;
}

uint64_t PlatformViewResponderBase.__deallocating_deinit()
{
  PlatformViewResponderBase.deinit();

  return swift_deallocClassInstance();
}

char *specialized PlatformViewResponderBase.init(host:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  ContentResponderHelper.init()(*(v4 + 256), &v2[*(*v2 + 288)]);
  v5 = &v2[*(*v2 + 296)];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  swift_unknownObjectWeakInit();
  *(v2 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v2 + 3) = a2;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t initializeWithCopy for PlatformViewResponderBase.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t assignWithCopy for PlatformViewResponderBase.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for PlatformViewResponderBase.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t assignWithTake for PlatformViewResponderBase.PlatformHitTestResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

CorePlatformClockKitTextProvider *CLKTextProviderTextStorage.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  result = CoreMakeCorePlatformClockKitTextProvider(a1);
  if (result)
  {
    v4 = result;

    *(v2 + 16) = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CorePlatformClockKitTextProvider *CLKTextProviderTextStorage.init(_:)(void *a1)
{
  result = CoreMakeCorePlatformClockKitTextProvider(a1);
  if (result)
  {
    v4 = result;

    *(v1 + 16) = v4;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CLKTextProviderTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for Text.Style(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *a3;
  (*(a5 + 8))(a4, a5, v12);
  v18 = *v14;
  outlined copy of Text.Style.TextStyleFont(*v14);
  _sypSgWOhTm_5(v14, type metadata accessor for Text.Style);
  v40[0] = v18;
  v41 = v15;
  v42 = v16;
  v19 = Text.Style.TextStyleFont.resolve(in:includeDefaultAttributes:)(&v41, 1);
  outlined consume of EffectAnimator<A>.State<A>(v40[0]);
  if (v19)
  {
    v20 = *(v6 + 16);
    if (v16)
    {
      v21 = v20;

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TextCaseI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v15, &v41);

      v22 = v41;
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextCaseKey>();
      BloomFilter.init(hashValue:)(v23);
      v24 = v41;
      v25 = v20;
      v26 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v15, v24);
      if (v26)
      {
        v22 = *(v26 + 72);
      }

      else
      {
        v22 = 2;
      }
    }

    v27 = Font.smallCaps()(v19);
    v40[1] = v16;
    v41 = v20;
    LOBYTE(v42) = v22;
    v43 = v19;
    v44 = 0;
    v45 = v27;
    v46 = 0;
    v39 = v17;
    v40[0] = v15;
    v35 = 0;
    v38 = 2;
    v37 = 0;
    v36 = 0;
    v28 = *(a5 + 96);
    v29 = lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider();
    v28(&v41, v40, &v39, &v35, &type metadata for ResolvableCLKTextProvider, v29, a4, a5);
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;

    outlined consume of ResolvableCLKTextProvider.FontStorage(v30, v31);
    outlined consume of ResolvableCLKTextProvider.FontStorage(v32, v33);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t CLKTextProviderTextStorage.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
    v3 = *(v0 + 16);
    v4 = *(v2 + 16);

    v5 = v3;
    v6 = v4;
    LOBYTE(v3) = static NSObject.== infix(_:_:)();

    return v3 & 1;
  }

  return result;
}

uint64_t CLKTextProviderTextStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ResolvableAttributeConfiguration.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = 0x3FF0000000000000;
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_12;
      }

      v3 = 0x3FA1111111111111;
    }

    *a2 = v3;
    *(a2 + 8) = 0;
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      *a2 = 64;
      type metadata accessor for ResolvableAttributeConfiguration(0);
      goto LABEL_13;
    }
  }

  else
  {
    *a2 = 0x7FEFFFFFFFFFFFFFLL;
    *(a2 + 8) = 0;
  }

LABEL_12:
  type metadata accessor for ResolvableAttributeConfiguration(0);
LABEL_13:

  return swift_storeEnumTagMultiPayload();
}

id ResolvableCLKTextProvider.rawProvider.getter()
{
  v1 = [*v0 provider];

  return v1;
}

uint64_t one-time initialization function for attribute()
{
  result = MEMORY[0x193ABEC20](0xD000000000000021, 0x800000018DD7A460);
  static ResolvableCLKTextProvider.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD7C680);
  static ResolvableAbsoluteDate.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001FLL, 0x800000018DD7FCD0);
  static ResolvableTimer.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD80820);
  static ResolvableProgress.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD80840);
  static ResolvableDateInterval.attribute = result;
  return result;
}

{
  result = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD80860);
  static ResolvableCurrentDate.attribute = result;
  return result;
}

id static ResolvableCLKTextProvider.attribute.getter()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableCLKTextProvider.attribute;

  return v1;
}

uint64_t ResolvableCLKTextProvider.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = type metadata accessor for Date();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = type metadata accessor for ResolvableStringResolutionContext(0);
  v13 = *(v12 + 24);
  v14 = a1 + *(v12 + 20);
  v16 = *v14;
  v15 = *(v14 + 8);
  if (*(a1 + v13 + 8))
  {
    v17 = 1.79769313e308;
  }

  else
  {
    v17 = *(a1 + v13);
  }

  if (v9)
  {
    v18 = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:
      v35 = v16;
      v36 = v15;
      v19 = Font.platformFont(in:)(&v35, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v35 = *v14;
    v36 = v15;
    v18 = Font.platformFont(in:)(&v35, v8);
    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v19 = v10;
LABEL_9:
  v20 = v19;
  v22 = (v7 & 1) == 0 && v7 != 2;
  if (v15)
  {

    v23 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v16);
  }

  else
  {
    v24 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v16);
    if (v24)
    {
      v23 = *(v24 + 72);
    }

    else
    {
      v23 = 0;
    }
  }

  ResolvableStringResolutionContext.date.getter(v6);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v33);
  v26 = [v32 attributedTextAndSize:0 forMaxWidth:v18 font:v20 smallFont:v22 upperCase:v23 & 1 luminanceReduced:isa now:v17];

  if (v26)
  {
    v27 = v34;
    AttributedString.init(_:)();
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v27 = v34;
  }

  v29 = type metadata accessor for AttributedString();
  return (*(*(v29 - 8) + 56))(v27, v28, 1, v29);
}

uint64_t ResolvableCLKTextProvider.invalidationConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 updateFrequency];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 0x3FF0000000000000;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_12;
      }

      v4 = 0x3FA1111111111111;
    }

    *a1 = v4;
    *(a1 + 8) = 0;
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      *a1 = 64;
      type metadata accessor for ResolvableAttributeConfiguration(0);
      goto LABEL_13;
    }
  }

  else
  {
    *a1 = 0x7FEFFFFFFFFFFFFFLL;
    *(a1 + 8) = 0;
  }

LABEL_12:
  type metadata accessor for ResolvableAttributeConfiguration(0);
LABEL_13:

  return swift_storeEnumTagMultiPayload();
}

id protocol witness for static ResolvableStringAttributeFamily.attribute.getter in conformance ResolvableCLKTextProvider()
{
  if (one-time initialization token for attribute != -1)
  {
    swift_once();
  }

  v1 = static ResolvableCLKTextProvider.attribute;

  return v1;
}

void ResolvableCLKTextProvider.FontStorage.resolve(resolver:)()
{
  v1 = type metadata accessor for AttributeContainer();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 8) & 1) == 0)
  {
    v5 = v0;
    v6 = *v0;
    type metadata accessor for AnySequence<Date>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    outlined copy of ResolvableCLKTextProvider.FontStorage(v6, 0);
    *(inited + 32) = MEMORY[0x193ABEC20](0x2E49557466697753, 0xEC000000746E6F46);
    *(inited + 64) = &type metadata for Font;
    *(inited + 40) = v6;
    outlined copy of ResolvableCLKTextProvider.FontStorage(v6, 0);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sypSgWOhTm_5(inited + 32, type metadata accessor for (NSAttributedStringKey, Any));
    AttributeContainer.init(_:)();
    PlatformAttributeResolver.platformAttributes(for:includeDefaultValueAttributes:)(v4, 1);
    v9 = v8;
    (*(v2 + 8))(v4, v1);
    if (one-time initialization token for kitFont == -1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      swift_once();
      if (*(v9 + 16))
      {
LABEL_4:
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.kitFont);
        if (v11)
        {
          outlined init with copy of Any(*(v9 + 56) + 32 * v10, v13);
          outlined consume of ResolvableCLKTextProvider.FontStorage(v6, 0);

          outlined consume of ResolvableCLKTextProvider.FontStorage(v6, 0);
          outlined init with take of Any(v13, v14);
          outlined init with take of Any(v14, v13);
          type metadata accessor for CTFontRef(0);
          swift_dynamicCast();
          *v5 = v12;
          *(v5 + 8) = 1;
          return;
        }
      }
    }

    outlined consume of ResolvableCLKTextProvider.FontStorage(v6, 0);
  }
}

uint64_t ResolvableCLKTextProvider.FontStorage.encode(to:)(void *a1, void *a2, char a3)
{
  if (a3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a2;
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of ResolvableCLKTextProvider.FontStorage(a2, 1);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v6 = type metadata accessor for EncodingError();
    swift_allocError();
    v8 = v7;
    type metadata accessor for (Any, EncodingError.Context)();
    *(v8 + 24) = &type metadata for ResolvableCLKTextProvider.FontStorage;
    *v8 = a2;
    *(v8 + 8) = 0;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    dispatch thunk of Encoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B30], v6);
    return swift_willThrow();
  }
}

void *protocol witness for Decodable.init(from:) in conformance ResolvableCLKTextProvider.FontStorage@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ResolvableCLKTextProvider.FontStorage.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvableCLKTextProvider.FontStorage()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    type metadata accessor for CTFontRef(0);
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
    _CFObject.hash(into:)();
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    (*(*v1 + 120))(v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ResolvableCLKTextProvider.FontStorage(uint64_t a1)
{
  v3 = *v1;
  if (v1[1])
  {
    MEMORY[0x193AC11A0](1);
    type metadata accessor for CTFontRef(0);
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
    return _CFObject.hash(into:)();
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    return (*(*v3 + 120))(a1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableCLKTextProvider.FontStorage()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    type metadata accessor for CTFontRef(0);
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
    _CFObject.hash(into:)();
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    (*(*v1 + 120))(v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ResolvableCLKTextProvider.FontStorage(_BYTE *a1, uint64_t a2)
{
  if ((a1[8] & 1) == 0)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      v2 = (*(**a1 + 112))(*a2);
      return v2 & 1;
    }

    return 0;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
  v2 = static _CFObject.== infix(_:_:)();
  return v2 & 1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableCLKTextProvider.CodingKeys()
{
  v1 = 0x72656469766F7270;
  v2 = 1953394534;
  if (*v0 != 2)
  {
    v2 = 0x6E6F466C6C616D73;
  }

  if (*v0)
  {
    v1 = 0x6573614374786574;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableCLKTextProvider.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResolvableCLKTextProvider.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableCLKTextProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableCLKTextProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResolvableCLKTextProvider.init(from:)(void *a1@<X0>, CorePlatformClockKitTextProvider **a2@<X8>)
{
  v36 = a1;
  v32 = a2;
  type metadata accessor for KeyedDecodingContainer<ResolvableCLKTextProvider.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableCLKTextProvider.CodingKeys>, MEMORY[0x1E69E6F48]);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v31 - v4;
  v5 = [objc_opt_self() allowableEncodedClass];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = 0;
  v8 = *(v6 + 16);
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (v6 + 40 + 16 * v7);
  while (v8 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
LABEL_21:

LABEL_22:
      v21 = v33;
      lazy protocol witness table accessor for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error();
      swift_allocError();
      swift_willThrow();
      outlined consume of Data._Representation(v2, v5);
      _sypSgWOhTm_5(v42, type metadata accessor for Any?);
      (*(v21 + 8))(v37, v8);
LABEL_14:
      __swift_destroy_boxed_opaque_existential_1(v7);
      return;
    }

    ++v7;
    v11 = v10 + 2;
    v12 = *(v10 - 1);
    v2 = *v10;

    v13 = MEMORY[0x193ABEC20](v12, v2);
    v5 = NSClassFromString(v13);

    v10 = v11;
    if (v5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v2 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
      }

      ObjCClassMetadata = swift_getObjCClassMetadata();
      *(v9 + 2) = v2;
      *&v9[8 * v15 + 32] = ObjCClassMetadata;
      goto LABEL_2;
    }
  }

  v7 = v36;
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();
  v17 = v37;
  v18 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {

    goto LABEL_14;
  }

  LOBYTE(v39) = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v8 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v2 = v42[0];
  v5 = v42[1];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  outlined init with copy of Any?(v42, &v39);
  if (!v41)
  {
    _sypSgWOhTm_5(&v39, type metadata accessor for Any?);
    goto LABEL_22;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v9 = v38;
  v19 = CoreMakeCorePlatformClockKitTextProvider(v38);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  LOBYTE(v38) = 1;
  lazy protocol witness table accessor for type CodableTextCase and conformance CodableTextCase();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v17;
  if (v39 == 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = v39 & 1;
  }

  LOBYTE(v38) = 2;
  v35 = lazy protocol witness table accessor for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v23;
  v31 = v39;
  v43 = v40;
  LOBYTE(v38) = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();

  outlined consume of Data._Representation(v2, v5);
  _sypSgWOhTm_5(v42, type metadata accessor for Any?);
  (*(v33 + 8))(v22, v8);
  v24 = v39;
  v25 = v7;
  v26 = v40;
  v27 = v43;
  v29 = v31;
  v28 = v32;
  *v32 = v20;
  *(v28 + 8) = v44;
  v28[2] = v29;
  *(v28 + 24) = v27;
  v28[4] = v24;
  *(v28 + 40) = v26;
  v30 = v20;
  outlined copy of ResolvableCLKTextProvider.FontStorage(v29, v27);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v24, v26);
  __swift_destroy_boxed_opaque_existential_1(v25);

  outlined consume of ResolvableCLKTextProvider.FontStorage(v29, v27);
  outlined consume of ResolvableCLKTextProvider.FontStorage(v24, v26);
}

uint64_t ResolvableCLKTextProvider.encode(to:)(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  type metadata accessor for KeyedDecodingContainer<ResolvableCLKTextProvider.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableCLKTextProvider.CodingKeys>, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = *(v1 + 24);
  v27 = *(v1 + 32);
  v28 = *(v1 + 40);
  v11 = objc_opt_self();
  v12 = [v9 provider];
  v33 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v33];
  swift_unknownObjectRelease();
  v14 = v33;
  if (v13)
  {
    v31 = v6;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v33 = v15;
    v34 = v17;
    v32 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      (*(v31 + 8))(v8, v5);
      return outlined consume of Data._Representation(v15, v17);
    }

    else
    {
      v19 = v10 & 1;
      if (v10 == 2)
      {
        v19 = 2;
      }

      LOBYTE(v33) = v19;
      v32 = 1;
      lazy protocol witness table accessor for type CodableTextCase and conformance CodableTextCase();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v20 = v31;
      v26 = v15;
      v22 = v29;
      v33 = v29;
      v23 = v30;
      LOBYTE(v34) = v30;
      v32 = 2;
      outlined copy of ResolvableCLKTextProvider.FontStorage(v29, v30);
      lazy protocol witness table accessor for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of ResolvableCLKTextProvider.FontStorage(v22, v23);
      v24 = v27;
      v33 = v27;
      v25 = v28;
      LOBYTE(v34) = v28;
      v32 = 3;
      outlined copy of ResolvableCLKTextProvider.FontStorage(v27, v28);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of Data._Representation(v26, 0);
      outlined consume of ResolvableCLKTextProvider.FontStorage(v24, v25);
      return (*(v20 + 8))(v8, v5);
    }
  }

  else
  {
    v18 = v14;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t specialized static ResolvableCLKTextProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a1 + 32);
  v9 = *(a2 + 40);
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 != 2)
  {
    if (v6 == 2 || ((v6 ^ v2) & 1) != 0)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
      if ((static _CFObject.== infix(_:_:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v8 & 1) != 0 || ((*(*v3 + 112))(v7) & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }

      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
      if ((static _CFObject.== infix(_:_:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v9 & 1) != 0 || ((*(*v12 + 112))(v11) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (v6 == 2)
  {
    goto LABEL_7;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error()
{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.Error and conformance ResolvableCLKTextProvider.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableTextCase and conformance CodableTextCase()
{
  result = lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase;
  if (!lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase;
  if (!lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase;
  if (!lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableTextCase and conformance CodableTextCase);
  }

  return result;
}

void outlined consume of ResolvableCLKTextProvider.FontStorage(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage()
{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider.FontStorage and conformance ResolvableCLKTextProvider.FontStorage);
  }

  return result;
}

id outlined copy of ResolvableCLKTextProvider.FontStorage(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void type metadata accessor for KeyedDecodingContainer<ResolvableCLKTextProvider.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ResolvableCLKTextProvider.CodingKeys and conformance ResolvableCLKTextProvider.CodingKeys();
    v7 = a3(a1, &type metadata for ResolvableCLKTextProvider.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for ResolvableCLKTextProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for ResolvableCLKTextProvider(a1, a2, a3, lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider, lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
}

{
  return instantiation function for generic protocol witness table for ResolvableCLKTextProvider(a1, a2, a3, lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider, lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
}

unint64_t lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider()
{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider;
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ResolvableCLKTextProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvableCLKTextProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider();
  *(a1 + 8) = result;
  return result;
}

void destroy for ResolvableCLKTextProvider(uint64_t a1)
{
  outlined consume of ResolvableCLKTextProvider.FontStorage(*(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  outlined consume of ResolvableCLKTextProvider.FontStorage(v2, v3);
}

uint64_t initializeWithCopy for ResolvableCLKTextProvider(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = v4;
  outlined copy of ResolvableCLKTextProvider.FontStorage(v5, v6);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v8 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v8, v2);
  *(a1 + 32) = v8;
  *(a1 + 40) = v2;
  return a1;
}

uint64_t assignWithCopy for ResolvableCLKTextProvider(uint64_t a1, void **a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(v2 + 8);
  v7 = v2[2];
  v8 = *(v2 + 24);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v7, v8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v9, v10);
  v11 = v2[4];
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v11, v2);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v2;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v12, v13);
  return a1;
}

uint64_t assignWithTake for ResolvableCLKTextProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v6, v7);
  v8 = *(a2 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v9, v10);
  return a1;
}

uint64_t assignWithCopy for ResolvableCLKTextProvider.FontStorage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ResolvableCLKTextProvider.FontStorage(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v5, v6);
  return a1;
}

uint64_t assignWithTake for ResolvableCLKTextProvider.FontStorage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v5, v6);
  return a1;
}

void *specialized ResolvableCLKTextProvider.FontStorage.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = v5[6];
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t specialized ResolvableCLKTextProvider.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573614374786574 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F466C6C616D73 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<TextCaseKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>);
    }
  }
}

void type metadata accessor for AnySequence<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (NSAttributedStringKey, Any)()
{
  if (!lazy cache variable for type metadata for (NSAttributedStringKey, Any))
  {
    type metadata accessor for NSAttributedStringKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSAttributedStringKey, Any));
    }
  }
}

uint64_t static CallbacksGesture._makeGesture(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _DWORD *a7@<X8>)
{
  v28 = a4;
  v29 = a3;
  v42 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for CallbacksPhase();
  v30 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = *a1;
  v19 = *(a2 + 64);
  v20 = *(a2 + 96);
  v38 = *(a2 + 80);
  v39 = v20;
  v21 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v21;
  v22 = *(a2 + 32);
  v36 = *(a2 + 48);
  *(&v20 + 1) = *(&v36 + 1);
  v37 = v19;
  v35[2] = v22;
  v23 = *(a2 + 120);
  *&v20 = *(a2 + 112);
  v27 = v20;
  v40 = v20;
  v41 = v23;
  v29(v35);
  LODWORD(a2) = *a7;
  (*(a6 + 24))(a5, a6);
  CallbacksPhase.init(modifier:phase:resetSeed:useGestureGraph:state:cancel:lastResetSeed:)(v18, a2, v27, (v23 & 0x10) != 0, v14, 0, 0, 0, v17);
  swift_getAssociatedTypeWitness();
  v32 = type metadata accessor for GesturePhase();
  v33 = v15;
  WitnessTable = swift_getWitnessTable();
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v31, v15, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  (*(v30 + 8))(v17, v15);
  *a7 = v35[0];
  AGGraphGetFlags();
  return AGGraphSetFlags();
}

uint64_t CallbacksPhase.init(modifier:phase:resetSeed:useGestureGraph:state:cancel:lastResetSeed:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  v14 = type metadata accessor for CallbacksPhase();
  v15 = v14[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v15, a5, AssociatedTypeWitness);
  v18 = (a9 + v14[13]);
  *v18 = a6;
  v18[1] = a7;
  *(a9 + v14[14]) = a8;
  return result;
}

uint64_t CallbacksPhase.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CallbacksGesture();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t CallbacksPhase.resetPhase()(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v20 - v8;
  v10 = v1 + *(a1 + 52);
  v11 = *v10;
  v22 = *(v10 + 8);
  if (v11)
  {
    v12 = v11(v1 + *(a1 + 48), v7.n128_f64[0]);
    if (v12)
    {
      v14 = v12;
      v15 = v13;
      v16 = swift_allocObject();
      v20 = v2;
      v17 = v16;
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for closure #1 in Transaction.addAnimationLogicalListener(allFinished:);
      *(v18 + 24) = v17;
      v23 = 17;

      static Update.enqueueAction(reason:_:)(&v23, thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v18);

      v2 = v20;
    }
  }

  (*(v4 + 24))(v5, v4, v7);
  (*(v6 + 40))(v2 + *(a1 + 48), v9, AssociatedTypeWitness);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
  *v10 = 0;
  *(v10 + 8) = 0;
  return result;
}

uint64_t CallbacksPhase.updateValue()(uint64_t a1)
{
  v60[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = type metadata accessor for CallbacksGesture();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = (&v50 - v6);
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for GesturePhase();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v55 = v4;
    v56 = v7;
    v54 = v3;
    v19 = *(TupleTypeMetadata2 + 48);
    Value = AGGraphGetValue();
    v22 = v21;
    v23 = *(v10 - 8);
    (*(v23 + 16))(v17, Value, v10);
    v17[v19] = v22 & 1;
    v57 = v1;
    v52 = *(v12 + 16);
    v52(v14, v17, TupleTypeMetadata2);
    v24 = v14[*(TupleTypeMetadata2 + 48)];
    v25 = *(v23 + 8);
    v53 = v23 + 8;
    v25(v14, v10);
    if (v24 == 1)
    {
      v50 = v25;
      v51 = v12;
      v26 = v57;
      v27 = v58;
      CallbacksPhase.modifier.getter(v58);
      v28 = v55;
      (*(v56 + 32))(v59, v27, v55);
      v29 = (*(v54 + 32))(v17, v26 + *(a1 + 48), v28, v54);
      if (v29)
      {
        v31 = v29;
        v58 = v30;
        v32 = swift_allocObject();
        v33 = v57;
        v34 = v58;
        *(v32 + 16) = v31;
        *(v32 + 24) = v34;
        v60[0] = _sIg_Ieg_TRTA_0;
        v60[1] = v32;
        closure #1 in CallbacksPhase.updateValue()(v60, v33);
      }

      v35 = v52;
      v36 = (v52)(v14, v17, TupleTypeMetadata2);
      v58 = &v50;
      MEMORY[0x1EEE9AC00](v36);
      *(&v50 - 2) = a1;
      *(&v50 - 1) = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, closure #1 in StatefulRule.value.setterpartial apply, (&v50 - 4), v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v37);
      v38 = v50;
      v50(v14, v10);
      v35(v14, v17, TupleTypeMetadata2);
      v39 = GesturePhase.isTerminal.getter(v10);
      (*(v51 + 8))(v17, TupleTypeMetadata2);
      v38(v14, v10);
      if (v39)
      {
        v40 = 0;
        v41 = 0;
        v42 = v56;
        v43 = v57;
        v44 = v59;
        v45 = v55;
      }

      else
      {
        v44 = v59;
        v45 = v55;
        v40 = implicit closure #1 in CallbacksPhase.updateValue()(v59, v55, v54);
        v41 = v46;
        v42 = v56;
        v43 = v57;
      }

      (*(v42 + 8))(v44, v45);
      v47 = (v43 + *(a1 + 52));
      result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v47);
      *v47 = v40;
      v47[1] = v41;
    }

    else if (AGGraphGetOutputValue())
    {
      return (*(v12 + 8))(v17, TupleTypeMetadata2);
    }

    else
    {
      v48 = (v52)(v14, v17, TupleTypeMetadata2);
      MEMORY[0x1EEE9AC00](v48);
      *(&v50 - 2) = a1;
      *(&v50 - 1) = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, partial apply for closure #1 in StatefulRule.value.setter, (&v50 - 4), v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v49);
      (*(v12 + 8))(v17, TupleTypeMetadata2);
      return (v25)(v14, v10);
    }
  }

  return result;
}

uint64_t closure #1 in CallbacksPhase.updateValue()(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for CallbacksPhase();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6 - 8];
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  (*(v5 + 16))(v7, a2, v4);
  if (v7[12] != 1)
  {
    v16[0] = 17;

    static Update.enqueueAction(reason:_:)(v16, partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v10);
LABEL_6:

    return (*(v5 + 8))(v7, v4);
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for GestureGraph();
  v11 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_6;
  }

  v12 = *(v11 + 200);
  ObjectType = swift_getObjectType();
  (*(v12 + 8))(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v10, ObjectType, v12);

  swift_unknownObjectRelease();
  return (*(v5 + 8))(v7, v4);
}

uint64_t (*implicit closure #1 in CallbacksPhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in CallbacksPhase.updateValue();
}

uint64_t static CallbacksPhase.willRemove(attribute:)()
{
  AGGraphGetAttributeInfo();
  v0 = type metadata accessor for CallbacksPhase();
  return CallbacksPhase.resetPhase()(v0);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance CallbacksPhase<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t FullGestureCallbacks.StateType.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = *(type metadata accessor for FullGestureCallbacks.StateType() + 36);
  v3 = type metadata accessor for GesturePhase();
  v4 = *(*(v3 - 8) + 56);

  return v4(&a1[v2], 1, 1, v3);
}

uint64_t key path getter for FullGestureCallbacks.possible : <A>FullGestureCallbacks<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5);
}

uint64_t key path setter for FullGestureCallbacks.possible : <A>FullGestureCallbacks<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10);
  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t FullGestureCallbacks.possible.getter()
{
  v1 = *v0;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v0);
  return v1;
}

uint64_t FullGestureCallbacks.possible.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path getter for FullGestureCallbacks.changed : <A>FullGestureCallbacks<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ()partial apply;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5);
}

uint64_t key path setter for FullGestureCallbacks.changed : <A>FullGestureCallbacks<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ())partial apply;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(a2 + 16);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10);
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  return result;
}

uint64_t FullGestureCallbacks.changed.getter()
{
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  return v1;
}

uint64_t FullGestureCallbacks.changed.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t key path getter for FullGestureCallbacks.ended : <A>FullGestureCallbacks<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5);
}

uint64_t key path setter for FullGestureCallbacks.ended : <A>FullGestureCallbacks<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(a2 + 32);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10);
  *(a2 + 32) = v9;
  *(a2 + 40) = v8;
  return result;
}

uint64_t FullGestureCallbacks.ended.getter()
{
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  return v1;
}

uint64_t FullGestureCallbacks.ended.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t key path getter for FullGestureCallbacks.failed : <A>FullGestureCallbacks<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for closure #1 in Transaction.addAnimationLogicalListener(allFinished:);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3);
}

uint64_t key path setter for FullGestureCallbacks.failed : <A>FullGestureCallbacks<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t FullGestureCallbacks.failed.getter()
{
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  return v1;
}

uint64_t FullGestureCallbacks.failed.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t FullGestureCallbacks.init(possible:changed:ended:failed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t (*FullGestureCallbacks.dispatch(phase:state:)(uint64_t a1, _BYTE *a2, uint64_t a3))()
{
  v61 = a2;
  v6 = *(a3 + 16);
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v59 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[1] = v7;
  MEMORY[0x1EEE9AC00](v8);
  v54 = v51 - v9;
  v56 = type metadata accessor for Optional();
  v55 = *(v56 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = v51 - v12;
  v13 = type metadata accessor for GesturePhase();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v51 - v15;
  v17 = v3[1];
  v67 = *v3;
  v68 = v17;
  v18 = v3[3];
  v69 = v3[2];
  v70 = v18;
  v57 = a3;
  v19 = *(a3 + 24);
  v20 = *(type metadata accessor for FullGestureCallbacks.StateType() + 36);
  v63 = v6;
  v64 = v19;
  v58 = v19;
  v21 = a1;
  v65 = a1;
  v22 = type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in FullGestureCallbacks.dispatch(phase:state:), v62, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v23, v66);
  if (v66[0] != 2 && (v66[0] & 1) == 0)
  {
    return 0;
  }

  v51[0] = v10;
  v24 = v61;
  (*(*(v22 - 8) + 8))(&v61[v20], v22);
  v25 = *(v14 + 16);
  v25(&v24[v20], v21, v13);
  (*(v14 + 56))(&v24[v20], 0, 1, v13);
  v25(v16, v21, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v27 = v60;
    if (!EnumCaseMultiPayload)
    {
      v29 = v55 + 32;
      v28 = *(v55 + 32);
      v30 = v52;
      v31 = v56;
      v28(v52, v16, v56);
      *v61 = 0;
      v32 = v53;
      v28(v53, v30, v31);
      v33 = (*(v29 + 48) + 96) & ~*(v29 + 48);
      v34 = swift_allocObject();
      v35 = v58;
      *(v34 + 16) = v6;
      *(v34 + 24) = v35;
      v36 = v68;
      *(v34 + 32) = v67;
      *(v34 + 48) = v36;
      v37 = v70;
      *(v34 + 64) = v69;
      *(v34 + 80) = v37;
      v28((v34 + v33), v32, v31);
      (*(*(v57 - 8) + 16))(v66, &v67);
      return partial apply for closure #2 in FullGestureCallbacks.dispatch(phase:state:);
    }

    v42 = *(v60 + 32);
    v43 = v54;
    v42(v54, v16, v6);
    *v61 = 1;
    v44 = v68;
    if (v68)
    {
      v45 = *(&v68 + 1);
      v46 = v59;
      v42(v59, v43, v6);
      v47 = (*(v27 + 80) + 48) & ~*(v27 + 80);
      v48 = swift_allocObject();
      v49 = v58;
      *(v48 + 2) = v6;
      *(v48 + 3) = v49;
      *(v48 + 4) = v44;
      *(v48 + 5) = v45;
      v42(&v48[v47], v46, v6);

      return partial apply for closure #3 in FullGestureCallbacks.dispatch(phase:state:);
    }

    (*(v27 + 8))(v43, v6);
    return 0;
  }

  v39 = v60;
  if (EnumCaseMultiPayload == 2)
  {
    v40 = v59;
    (*(v60 + 32))(v59, v16, v6);
    v41 = bind<A>(_:_:)(v69, *(&v69 + 1), v40, v6);
    (*(v39 + 8))(v40, v6);
    return v41;
  }

  else
  {
    v50 = v70;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v70);
    return v50;
  }
}

uint64_t FullGestureCallbacks.cancel(state:)()
{
  v0 = specialized FullGestureCallbacks.cancel(state:)();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v0);
  return v0;
}

uint64_t protocol witness for GestureCallbacks.cancel(state:) in conformance FullGestureCallbacks<A>()
{
  v0 = specialized FullGestureCallbacks.cancel(state:)();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v0);
  return v0;
}

uint64_t Gesture.onFailed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10[0] = a1;
  v10[1] = a2;
  v8 = type metadata accessor for FailedCallbacks();

  swift_getWitnessTable();
  Gesture.callbacks<A>(_:)(v10, a3, v8, a4);
}

uint64_t Gesture<>.callbacks(possible:changed:ended:failed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  swift_getAssociatedTypeWitness();
  *&v22 = a1;
  *(&v22 + 1) = a2;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  *&v24 = a5;
  *(&v24 + 1) = a6;
  *&v25 = a7;
  *(&v25 + 1) = a8;
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  v21[3] = v25;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a1);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a5);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a7);
  v18 = type metadata accessor for FullGestureCallbacks();
  swift_getWitnessTable();
  Gesture.callbacks<A>(_:)(v21, a10, v18, a9);
  return (*(*(v18 - 8) + 8))(&v22, v18);
}

double static _EndedGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 80);
  v38 = *(a2 + 64);
  v39 = v9;
  v40 = *(a2 + 96);
  v41 = *(a2 + 112);
  v10 = *(a2 + 16);
  v34 = *a2;
  v35 = v10;
  v11 = *(a2 + 48);
  v36 = *(a2 + 32);
  v37 = v11;
  v12 = *(a2 + 120);
  swift_getAssociatedTypeWitness();
  type metadata accessor for EndedCallbacks();
  swift_getWitnessTable();
  v13 = type metadata accessor for CallbacksGesture();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for ModifierGesture();
  v33 = v8;
  type metadata accessor for _EndedGesture();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _EndedGesture._makeGesture(gesture:inputs:), v15, &v30);
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v29 = v12;
  static ModifierGesture._makeGesture(gesture:inputs:)(&v30, &v21, v13, a3, WitnessTable, a4, v31);
  if ((v12 & 8) != 0 && (!swift_conformsToProtocol2() || !v15))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    LOBYTE(v30) = v16;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v29 = v12;
    type metadata accessor for _GestureOutputs();
    v17 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v15, &v30, 0x100000000, &v21, v17 | ((HIDWORD(v17) & 1) << 32), 0x100000000);
  }

  v18 = v31[1];
  v19 = v32;
  result = *v31;
  *a5 = v31[0];
  *(a5 + 8) = v18;
  *(a5 + 16) = v19;
  return result;
}

uint64_t closure #1 in static _EndedGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = type metadata accessor for _EndedGesture();
  swift_getAssociatedTypeWitness();
  type metadata accessor for EndedCallbacks();
  swift_getWitnessTable();
  v11 = type metadata accessor for CallbacksGesture();
  v12 = a2;
  WitnessTable = swift_getWitnessTable();
  v14 = a3;
  v10 = type metadata accessor for ModifierGesture();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

double static _ChangedGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a2 + 80);
  v11 = *(a2 + 48);
  v60 = *(a2 + 64);
  v61 = v10;
  v12 = *(a2 + 80);
  *v62 = *(a2 + 96);
  *&v62[12] = *(a2 + 108);
  v13 = *(a2 + 16);
  v57[0] = *a2;
  v57[1] = v13;
  v14 = *(a2 + 48);
  v16 = *a2;
  v15 = *(a2 + 16);
  v58 = *(a2 + 32);
  v59 = v14;
  v53 = v60;
  v54 = v12;
  v55 = *(a2 + 96);
  v49 = v16;
  v50 = v15;
  v17 = *a1;
  v56 = *(a2 + 112);
  v18 = *&v62[24] | 0x20;
  v51 = v58;
  v52 = v11;
  swift_getAssociatedTypeWitness();
  type metadata accessor for ChangedCallbacks();
  swift_getWitnessTable();
  v19 = type metadata accessor for CallbacksGesture();
  WitnessTable = swift_getWitnessTable();
  *&v42 = v19;
  *(&v42 + 1) = a3;
  *&v43 = WitnessTable;
  *(&v43 + 1) = a4;
  v21 = type metadata accessor for ModifierGesture();
  v28[1] = v28;
  v28[4] = a3;
  v28[5] = a4;
  v28[6] = a5;
  v41 = v17;
  outlined init with copy of _GestureInputs(v57, &v42);
  type metadata accessor for _ChangedGesture();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _ChangedGesture._makeGesture(gesture:inputs:), v21, &v38);
  *&v48[16] = v56;
  v47 = v54;
  *v48 = v55;
  v42 = v49;
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v46 = v53;
  *&v48[24] = v18;
  *&v37[12] = *&v48[12];
  v35 = v53;
  v36 = v54;
  *v37 = v55;
  v31 = v49;
  v32 = v50;
  v33 = v51;
  v34 = v52;
  outlined init with copy of _GestureInputs(&v42, v29);
  static ModifierGesture._makeGesture(gesture:inputs:)(&v38, &v31, v19, a3, WitnessTable, a4, v39);
  if ((v48[24] & 8) == 0 || swift_conformsToProtocol2() && v21)
  {
    outlined destroy of _GestureInputs(&v42);
    v35 = v53;
    v36 = v54;
    *v37 = v55;
    *&v37[16] = v56;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    *&v37[24] = v18;
    v22 = &v31;
  }

  else
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    LOBYTE(v38) = v23;
    v29[4] = v46;
    v29[5] = v47;
    v30[0] = *v48;
    *(v30 + 12) = *&v48[12];
    v29[0] = v42;
    v29[1] = v43;
    v29[2] = v44;
    v29[3] = v45;
    type metadata accessor for _GestureOutputs();
    v24 = _GestureOutputs.debugData.getter();
    LOBYTE(v31) = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v21, &v38, 0x100000000, v29, v24 | ((HIDWORD(v24) & 1) << 32), 0x100000000);
    v35 = v53;
    v36 = v54;
    *v37 = v55;
    *&v37[16] = v56;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    *&v37[24] = v18;
    outlined destroy of _GestureInputs(&v31);
    v22 = &v42;
  }

  outlined destroy of _GestureInputs(v22);
  v25 = v39[1];
  v26 = v40;
  result = *v39;
  *a6 = v39[0];
  *(a6 + 8) = v25;
  *(a6 + 16) = v26;
  return result;
}

uint64_t closure #1 in static _ChangedGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = type metadata accessor for _ChangedGesture();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ChangedCallbacks();
  swift_getWitnessTable();
  v11 = type metadata accessor for CallbacksGesture();
  v12 = a2;
  WitnessTable = swift_getWitnessTable();
  v14 = a3;
  v10 = type metadata accessor for ModifierGesture();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t (*EndedCallbacks.dispatch(phase:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v26 = a3;
  v8 = type metadata accessor for GesturePhase();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(v9 + 16))(v11, a1, v8, v17);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = *(v12 + 32);
    v20(v19, v11, a5);
    v20(v15, v19, a5);
    v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v22 = swift_allocObject();
    v23 = v26;
    *(v22 + 2) = a5;
    *(v22 + 3) = v23;
    *(v22 + 4) = a4;
    v20(&v22[v21], v15, a5);

    return partial apply for closure #1 in bind<A>(_:_:);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }
}

uint64_t FailedCallbacks.failed.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FailedCallbacks.dispatch(phase:state:)(uint64_t a1)
{
  v3 = type metadata accessor for GesturePhase();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  (*(v4 + 16))(&v11 - v6, a1, v3, v5);
  v9 = 0;
  if (swift_getEnumCaseMultiPayload() == 3)
  {

    v9 = v8;
  }

  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t FailedCallbacks.cancel(state:)()
{
  v0 = specialized FailedCallbacks.cancel(state:)();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v0);
  return v0;
}

uint64_t protocol witness for GestureCallbacks.cancel(state:) in conformance FailedCallbacks<A>()
{
  v0 = specialized FailedCallbacks.cancel(state:)();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v0);
  return v0;
}

uint64_t (*ChangedCallbacks.dispatch(phase:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(char *, char *, void *)))()
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v9 = type metadata accessor for GesturePhase();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = *(a5 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  (*(v10 + 16))(v12, a1, v9, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *(v13 + 32);
    v21 = v33(v20, v12, a5);
    v35 = &v33;
    MEMORY[0x1EEE9AC00](v21);
    *(&v33 - 4) = a5;
    *(&v33 - 3) = a6;
    v34 = a6;
    *(&v33 - 2) = v20;
    v22 = type metadata accessor for Optional();
    v23 = v38;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ChangedCallbacks.dispatch(phase:state:), (&v33 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v24, &v39);
    if (v39 == 2 || (v39 & 1) != 0)
    {
      v25 = v23;
      (*(*(v22 - 8) + 8))(v23, v22);
      v26 = *(v13 + 16);
      v26(v25, v20, a5);
      (*(v13 + 56))(v25, 0, 1, a5);
      v26(v16, v20, a5);
      v27 = (*(v13 + 80) + 48) & ~*(v13 + 80);
      v28 = swift_allocObject();
      v29 = v34;
      *(v28 + 2) = a5;
      *(v28 + 3) = v29;
      v30 = v37;
      *(v28 + 4) = v36;
      *(v28 + 5) = v30;
      v33(&v28[v27], v16, a5);
      v31 = *(v13 + 8);

      v31(v20, a5);
      return partial apply for closure #2 in ChangedCallbacks.dispatch(phase:state:);
    }

    (*(v13 + 8))(v20, a5);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

uint64_t closure #3 in FullGestureCallbacks.dispatch(phase:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v9 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(&v9, 1);

  specialized closure #1 in withTransaction<A>(_:_:)(v7, a6);
}

uint64_t partial apply for closure #1 in FullGestureCallbacks.dispatch(phase:state:)@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = static GesturePhase<A>.== infix(_:_:)(a1, v2[4], v2[2], v2[3]);
  *a2 = (result & 1) == 0;
  return result;
}

uint64_t partial apply for closure #2 in FullGestureCallbacks.dispatch(phase:state:)()
{
  v1 = type metadata accessor for Optional();
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  v5 = *(v0 + 32);
  if (v5)
  {
    return v5(v0 + ((*(v3 + 80) + 96) & ~*(v3 + 80)));
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _EndedGesture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for _ChangedGesture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *destroy for FullGestureCallbacks(void *result)
{
  v1 = result;
  if (*result)
  {
  }

  if (v1[2])
  {
  }

  if (v1[4])
  {
  }

  if (v1[6])
  {
  }

  return result;
}

void *initializeWithCopy for FullGestureCallbacks(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = a2[4];
  if (v7)
  {
    v8 = a2[5];
    a1[4] = v7;
    a1[5] = v8;
  }

  else
  {
    *(a1 + 2) = *(a2 + 2);
  }

  v9 = a2[6];
  if (v9)
  {
    v10 = a2[7];
    a1[6] = v9;
    a1[7] = v10;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  return a1;
}

void *assignWithCopy for FullGestureCallbacks(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (a1[2])
  {
    if (v7)
    {
      v8 = a2[3];
      a1[2] = v7;
      a1[3] = v8;

      goto LABEL_15;
    }
  }

  else if (v7)
  {
    v9 = a2[3];
    a1[2] = v7;
    a1[3] = v9;

    goto LABEL_15;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_15:
  v10 = a2[4];
  if (a1[4])
  {
    if (v10)
    {
      v11 = a2[5];
      a1[4] = v10;
      a1[5] = v11;

      goto LABEL_22;
    }
  }

  else if (v10)
  {
    v12 = a2[5];
    a1[4] = v10;
    a1[5] = v12;

    goto LABEL_22;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_22:
  v13 = a2[6];
  if (!a1[6])
  {
    if (v13)
    {
      v15 = a2[7];
      a1[6] = v13;
      a1[7] = v15;

      return a1;
    }

LABEL_28:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v13)
  {

    goto LABEL_28;
  }

  v14 = a2[7];
  a1[6] = v13;
  a1[7] = v14;

  return a1;
}

void *assignWithTake for FullGestureCallbacks(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (a1[2])
  {
    if (v7)
    {
      v8 = a2[3];
      a1[2] = v7;
      a1[3] = v8;

      goto LABEL_15;
    }
  }

  else if (v7)
  {
    v9 = a2[3];
    a1[2] = v7;
    a1[3] = v9;
    goto LABEL_15;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_15:
  v10 = a2[4];
  if (a1[4])
  {
    if (v10)
    {
      v11 = a2[5];
      a1[4] = v10;
      a1[5] = v11;

      goto LABEL_22;
    }
  }

  else if (v10)
  {
    v12 = a2[5];
    a1[4] = v10;
    a1[5] = v12;
    goto LABEL_22;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_22:
  v13 = a2[6];
  if (!a1[6])
  {
    if (v13)
    {
      v15 = a2[7];
      a1[6] = v13;
      a1[7] = v15;
      return a1;
    }

LABEL_28:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v13)
  {

    goto LABEL_28;
  }

  v14 = a2[7];
  a1[6] = v13;
  a1[7] = v14;

  return a1;
}

uint64_t getEnumTagSinglePayload for FullGestureCallbacks(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for FullGestureCallbacks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for FullGestureCallbacks.StateType()
{
  type metadata accessor for GesturePhase();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for FullGestureCallbacks.StateType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = ~v7;
  v10 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 64);
  }

  v13 = v7 & 0x100000;
  v14 = ((-2 - v7) | v7) - (v12 + 1);
  if (v8 > 7 || v13 != 0 || v14 < 0xFFFFFFFFFFFFFFE7)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v8 + 16) & v9));

    return v3;
  }

  *a1 = *a2;
  v18 = ((a1 + v8 + 1) & v9);
  v19 = ((a2 + v8 + 1) & v9);
  v20 = *(v19 + v12);
  if (v20 > 3)
  {
    goto LABEL_35;
  }

  if (v20 != 3)
  {
    goto LABEL_29;
  }

  if (v12 >= 4)
  {
    v21 = 4;
  }

  else
  {
    v21 = v12;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *v19;
    }

    else if (v21 == 3)
    {
      v22 = *v19 | (*(v19 + 2) << 16);
    }

    else
    {
      v22 = *v19;
    }

    goto LABEL_28;
  }

  if (!v21)
  {
LABEL_35:
    memcpy(v18, v19, v12 + 1);
    return v3;
  }

  v22 = *v19;
LABEL_28:
  v20 = v22 + 3;
LABEL_29:
  if (v20 == 2)
  {
    (*(v5 + 16))(v18);
    *(v18 + v12) = 2;
    return v3;
  }

  if (v20 == 1)
  {
    (*(v5 + 16))(v18);
    *(v18 + v12) = 1;
    return v3;
  }

  if (v20)
  {
    goto LABEL_35;
  }

  v23 = v19;
  if ((*(v5 + 48))(v19, 1, v4))
  {
    memcpy(v18, v23, v11);
  }

  else
  {
    (*(v6 + 16))(v18, v23, v4);
    (*(v6 + 56))(v18, 0, 1, v4);
  }

  *(v18 + v12) = 0;
  return v3;
}

uint64_t destroy for FullGestureCallbacks.StateType(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = ((result + *(v3 + 80) + 1) & ~*(v3 + 80));
  v5 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v6 = *(v3 + 64);
  }

  else
  {
    v6 = v5 + 1;
  }

  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = v4[v5];
  if (v7 <= 3)
  {
    if (v7 == 3)
    {
      if (v5 >= 4)
      {
        v8 = 4;
      }

      else
      {
        v8 = v5;
      }

      if (v8 <= 1)
      {
        if (!v8)
        {
          return result;
        }

        v9 = *v4;
      }

      else if (v8 == 2)
      {
        v9 = *v4;
      }

      else if (v8 == 3)
      {
        v9 = *v4 | (v4[2] << 16);
      }

      else
      {
        v9 = *v4;
      }

      v7 = v9 + 3;
    }

    if (v7 - 1 < 2 || !v7 && (v11 = *(*(a2 + 16) - 8), result = (*(v3 + 48))(v4, 1, v2), v3 = v11, !result))
    {
      v10 = *(v3 + 8);

      return v10(v4, v2);
    }
  }

  return result;
}

_BYTE *initializeWithCopy for FullGestureCallbacks.StateType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (&a1[v6 + 1] & ~v6);
  v8 = (&a2[v6 + 1] & ~v6);
  v9 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v5 + 64);
  }

  v12 = *(v8 + v11);
  if (v12 > 3)
  {
    goto LABEL_27;
  }

  if (v12 != 3)
  {
    goto LABEL_21;
  }

  if (v11 >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v11;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (*(v8 + 2) << 16);
    }

    else
    {
      v14 = *v8;
    }

    goto LABEL_20;
  }

  if (!v13)
  {
LABEL_27:
    memcpy(v7, v8, v11 + 1);
    return a1;
  }

  v14 = *v8;
LABEL_20:
  v12 = v14 + 3;
LABEL_21:
  if (v12 == 2)
  {
    (*(v5 + 16))(v7);
    *(v7 + v11) = 2;
    return a1;
  }

  if (v12 == 1)
  {
    (*(v5 + 16))(v7);
    *(v7 + v11) = 1;
    return a1;
  }

  if (v12)
  {
    goto LABEL_27;
  }

  v15 = v8;
  if ((*(v5 + 48))(v8, 1, v4))
  {
    memcpy(v7, v15, v10);
  }

  else
  {
    (*(v5 + 16))(v7, v15, v4);
    (*(v5 + 56))(v7, 0, 1, v4);
  }

  *(v7 + v11) = 0;
  return a1;
}

_BYTE *assignWithCopy for FullGestureCallbacks.StateType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (&a1[v7 + 1] & ~v7);
  v9 = (&a2[v7 + 1] & ~v7);
  v10 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 64);
  }

  v13 = v8[v12];
  v14 = v9[v12];
  if (v13 <= 3)
  {
    if (v14 <= 3)
    {
      if (v8 == v9)
      {
        return a1;
      }

      if (v13 == 3)
      {
        if (v12 >= 4)
        {
          v15 = 4;
        }

        else
        {
          v15 = v12;
        }

        if (v15 <= 1)
        {
          if (!v15)
          {
            goto LABEL_66;
          }

          v16 = *v8;
        }

        else if (v15 == 2)
        {
          v16 = *v8;
        }

        else if (v15 == 3)
        {
          v16 = *v8 | (v8[2] << 16);
        }

        else
        {
          v16 = *v8;
        }

        v13 = v16 + 3;
      }

      if (v13 - 1 < 2 || !v13 && !(*(v5 + 48))(v8, 1, v4))
      {
        (*(v6 + 8))(v8, v4);
      }

LABEL_66:
      v14 = v9[v12];
      v21 = v14 - 3;
      if (v14 < 3)
      {
        goto LABEL_80;
      }

      if (v12 <= 3)
      {
        v22 = v12;
      }

      else
      {
        v22 = 4;
      }

      if (v22 <= 1)
      {
        if (!v22)
        {
          goto LABEL_80;
        }

        v23 = *v9;
      }

      else if (v22 == 2)
      {
        v23 = *v9;
      }

      else if (v22 == 3)
      {
        v23 = *v9 | (v9[2] << 16);
      }

      else
      {
        v23 = *v9;
      }

      v24 = (v23 | (v21 << (8 * v12))) + 3;
      v14 = v23 + 3;
      if (v12 < 4)
      {
        v14 = v24;
      }

LABEL_80:
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_45;
      }

LABEL_83:
      (*(v6 + 16))(v8, v9, v4);
      v25 = 2;
      goto LABEL_84;
    }

    if (v13 != 3)
    {
LABEL_52:
      if (v13 - 1 < 2 || !v13 && !(*(v5 + 48))(v8, 1, v4))
      {
        (*(v6 + 8))(v8, v4);
      }

      goto LABEL_56;
    }

    if (v12 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v12;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *v8;
      }

      else if (v19 == 3)
      {
        v20 = *v8 | (v8[2] << 16);
      }

      else
      {
        v20 = *v8;
      }

      goto LABEL_51;
    }

    if (v19)
    {
      v20 = *v8;
LABEL_51:
      v13 = v20 + 3;
      goto LABEL_52;
    }

LABEL_56:
    memcpy(v8, v9, v12 + 1);
    return a1;
  }

  if (v14 > 3)
  {
    goto LABEL_56;
  }

  if (v14 == 3)
  {
    if (v12 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v12;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_56;
      }

      v18 = *v9;
    }

    else if (v17 == 2)
    {
      v18 = *v9;
    }

    else if (v17 == 3)
    {
      v18 = *v9 | (v9[2] << 16);
    }

    else
    {
      v18 = *v9;
    }

    v14 = v18 + 3;
  }

  if (v14 == 2)
  {
    goto LABEL_83;
  }

  if (v14 == 1)
  {
LABEL_82:
    (*(v6 + 16))(v8, v9, v4);
    v25 = 1;
LABEL_84:
    v8[v12] = v25;
    return a1;
  }

LABEL_45:
  if (v14)
  {
    goto LABEL_56;
  }

  if ((*(v6 + 48))(v9, 1, v4))
  {
    memcpy(v8, v9, v11);
  }

  else
  {
    (*(v6 + 16))(v8, v9, v4);
    (*(v6 + 56))(v8, 0, 1, v4);
  }

  v8[v12] = 0;
  return a1;
}

_BYTE *initializeWithTake for FullGestureCallbacks.StateType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (&a1[v6 + 1] & ~v6);
  v8 = (&a2[v6 + 1] & ~v6);
  v9 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v5 + 64);
  }

  v12 = *(v8 + v11);
  if (v12 > 3)
  {
    goto LABEL_27;
  }

  if (v12 != 3)
  {
    goto LABEL_21;
  }

  if (v11 >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v11;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (*(v8 + 2) << 16);
    }

    else
    {
      v14 = *v8;
    }

    goto LABEL_20;
  }

  if (!v13)
  {
LABEL_27:
    memcpy(v7, v8, v11 + 1);
    return a1;
  }

  v14 = *v8;
LABEL_20:
  v12 = v14 + 3;
LABEL_21:
  if (v12 == 2)
  {
    (*(v5 + 32))(v7);
    *(v7 + v11) = 2;
    return a1;
  }

  if (v12 == 1)
  {
    (*(v5 + 32))(v7);
    *(v7 + v11) = 1;
    return a1;
  }

  if (v12)
  {
    goto LABEL_27;
  }

  v15 = v8;
  if ((*(v5 + 48))(v8, 1, v4))
  {
    memcpy(v7, v15, v10);
  }

  else
  {
    (*(v5 + 32))(v7, v15, v4);
    (*(v5 + 56))(v7, 0, 1, v4);
  }

  *(v7 + v11) = 0;
  return a1;
}

_BYTE *assignWithTake for FullGestureCallbacks.StateType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (&a1[v6 + 1] & ~v6);
  v8 = (&a2[v6 + 1] & ~v6);
  v9 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v5 + 64);
  }

  v12 = v7[v11];
  v13 = v8[v11];
  if (v12 <= 3)
  {
    if (v13 <= 3)
    {
      if (v7 == v8)
      {
        return a1;
      }

      if (v12 == 3)
      {
        if (v11 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v11;
        }

        if (v14 <= 1)
        {
          if (!v14)
          {
            goto LABEL_66;
          }

          v15 = *v7;
        }

        else if (v14 == 2)
        {
          v15 = *v7;
        }

        else if (v14 == 3)
        {
          v15 = *(&a1[v6 + 1] & ~v6) | (*((&a1[v6 + 1] & ~v6) + 2) << 16);
        }

        else
        {
          v15 = *v7;
        }

        v12 = v15 + 3;
      }

      if (v12 - 1 < 2 || !v12 && !(*(v5 + 48))(v7, 1, v4))
      {
        (*(v5 + 8))(v7, v4);
      }

LABEL_66:
      v13 = v8[v11];
      v20 = v13 - 3;
      if (v13 < 3)
      {
        goto LABEL_80;
      }

      if (v11 <= 3)
      {
        v21 = v11;
      }

      else
      {
        v21 = 4;
      }

      if (v21 <= 1)
      {
        if (!v21)
        {
          goto LABEL_80;
        }

        v22 = *v8;
      }

      else if (v21 == 2)
      {
        v22 = *v8;
      }

      else if (v21 == 3)
      {
        v22 = *v8 | (v8[2] << 16);
      }

      else
      {
        v22 = *v8;
      }

      v23 = (v22 | (v20 << (8 * v11))) + 3;
      v13 = v22 + 3;
      if (v11 < 4)
      {
        v13 = v23;
      }

LABEL_80:
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_45;
      }

LABEL_83:
      (*(v5 + 32))(v7, v8, v4);
      v24 = 2;
      goto LABEL_84;
    }

    if (v12 != 3)
    {
LABEL_52:
      if (v12 - 1 < 2 || !v12 && !(*(v5 + 48))(v7, 1, v4))
      {
        (*(v5 + 8))(v7, v4);
      }

      goto LABEL_56;
    }

    if (v11 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v11;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *v7;
      }

      else if (v18 == 3)
      {
        v19 = *(&a1[v6 + 1] & ~v6) | (*((&a1[v6 + 1] & ~v6) + 2) << 16);
      }

      else
      {
        v19 = *v7;
      }

      goto LABEL_51;
    }

    if (v18)
    {
      v19 = *v7;
LABEL_51:
      v12 = v19 + 3;
      goto LABEL_52;
    }

LABEL_56:
    memcpy(v7, v8, v11 + 1);
    return a1;
  }

  if (v13 > 3)
  {
    goto LABEL_56;
  }

  if (v13 == 3)
  {
    if (v11 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v11;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_56;
      }

      v17 = *v8;
    }

    else if (v16 == 2)
    {
      v17 = *v8;
    }

    else if (v16 == 3)
    {
      v17 = *(&a2[v6 + 1] & ~v6) | (*((&a2[v6 + 1] & ~v6) + 2) << 16);
    }

    else
    {
      v17 = *v8;
    }

    v13 = v17 + 3;
  }

  if (v13 == 2)
  {
    goto LABEL_83;
  }

  if (v13 == 1)
  {
LABEL_82:
    (*(v5 + 32))(v7, v8, v4);
    v24 = 1;
LABEL_84:
    v7[v11] = v24;
    return a1;
  }

LABEL_45:
  if (v13)
  {
    goto LABEL_56;
  }

  if ((*(v5 + 48))(v8, 1, v4))
  {
    memcpy(v7, v8, v10);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    (*(v5 + 56))(v7, 0, 1, v4);
  }

  v7[v11] = 0;
  return a1;
}

uint64_t getEnumTagSinglePayload for FullGestureCallbacks.StateType(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 > v5)
  {
    v5 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + ((*(v3 + 80) + 1) & ~*(v3 + 80)) + 1;
  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *&a1[v6];
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *a1;
      v13 = v12 >= 2;
      v14 = (v12 + 2147483646) & 0x7FFFFFFF;
      if (v13)
      {
        return (v14 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
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
        LODWORD(v6) = *a1 | (a1[2] << 16);
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

  return (v6 | v11) + 255;
}

void storeEnumTagSinglePayload for FullGestureCallbacks.StateType(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = v7 + ((*(v5 + 80) + 1) & ~*(v5 + 80)) + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
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

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

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
LABEL_42:
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
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      *a1 = a2 + 1;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_27;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t type metadata completion function for CallbacksPhase()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CallbacksPhase(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((v7 + ((v6 + 13) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    *a1 = *a2;
    v11 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v12 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v11 = *v12;
    v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v13 = *v14;
    *(v13 + 4) = *(v14 + 4);
    v15 = (v13 + v6 + 5) & ~v6;
    v16 = (v14 + v6 + 5) & ~v6;
    (*(v5 + 16))(v15, v16, AssociatedTypeWitness);
    v17 = (v7 + v15) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v7 + v16) & 0xFFFFFFFFFFFFFFF8;
    if (*v18 < 0xFFFFFFFFuLL)
    {
      *v17 = *v18;
    }

    else
    {
      v19 = *(v18 + 8);
      *v17 = *v18;
      *(v17 + 8) = v19;
    }

    *((v17 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for CallbacksPhase(uint64_t a1)
{
  v1 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = v3 + 8;
  v5 = (v1 + *(v3 + 80) + 5) & ~*(v3 + 80);
  result = (*(v3 + 8))(v5, AssociatedTypeWitness);
  if (*((*(v4 + 56) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

_DWORD *initializeWithCopy for CallbacksPhase(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = (v3 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v4 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v5 = *v6;
  *(v5 + 4) = *(v6 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v10 + 5 + v5) & ~v10;
  v12 = (v10 + 5 + v6) & ~v10;
  (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 48) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    *v14 = *v15;
  }

  else
  {
    v16 = *(v15 + 8);
    *v14 = *v15;
    *(v14 + 8) = v16;
  }

  *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithCopy for CallbacksPhase(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = (v3 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v4 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v5 = *v6;
  *(v5 + 4) = *(v6 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v10 + 5 + v5) & ~v10;
  v12 = (v10 + 5 + v6) & ~v10;
  (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v14 < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v18 = v15[1];
      *v14 = v16;
      v14[1] = v18;

      goto LABEL_8;
    }

LABEL_7:
    *v14 = *v15;
    goto LABEL_8;
  }

  if (v16 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v17 = v15[1];
  *v14 = v16;
  v14[1] = v17;

LABEL_8:
  *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for CallbacksPhase(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = (v3 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v4 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v5 = *v6;
  *(v5 + 4) = *(v6 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v10 + 5 + v5) & ~v10;
  v12 = (v10 + 5 + v6) & ~v10;
  (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 32) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    *v14 = *v15;
  }

  else
  {
    v16 = *(v15 + 8);
    *v14 = *v15;
    *(v14 + 8) = v16;
  }

  *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for CallbacksPhase(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = (v3 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = (v4 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v5 = *v6;
  *(v5 + 4) = *(v6 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v10 + 5 + v5) & ~v10;
  v12 = (v10 + 5 + v6) & ~v10;
  (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 24) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v14 < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v18 = v15[1];
      *v14 = v16;
      v14[1] = v18;
      goto LABEL_8;
    }

LABEL_7:
    *v14 = *v15;
    goto LABEL_8;
  }

  if (v16 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v17 = v15[1];
  *v14 = v16;
  v14[1] = v17;

LABEL_8:
  *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for CallbacksPhase(_DWORD *a1, unsigned int a2)
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

  v10 = v9 + 7;
  if (v7 < a2 && *(a1 + ((((v10 + ((v8 + 13) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  v12 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 5) & ~v8;
  if (v6 < 0x7FFFFFFE)
  {
    v14 = *((v10 + v12) & 0xFFFFFFFFFFFFFFF8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    if ((v14 + 1) >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = *(v5 + 48);

    return v13(v12);
  }
}

void storeEnumTagSinglePayload for CallbacksPhase(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  v12 = (((v11 + ((v9 + 13) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v10 >= a2)
  {
    if (v10 < a3)
    {
      *(a1 + v12) = 0;
    }

    if (a2)
    {
      v13 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 5) & ~v9;
      if (v8 < 0x7FFFFFFE)
      {
        v15 = ((v11 + v13) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v15 = 0;
          v15[1] = 0;
          *v15 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v15 = a2;
        }
      }

      else
      {
        v14 = *(v7 + 56);

        v14(v13, a2);
      }
    }
  }

  else
  {
    bzero(a1, v12);
    *a1 = ~v10 + a2;
    if (v10 < a3)
    {
      *(a1 + v12) = 1;
    }
  }
}

uint64_t instantiation function for generic protocol witness table for CallbacksPhase<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in ChangedCallbacks.dispatch(phase:state:)@<X0>(BOOL *a1@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a1 = (result & 1) == 0;
  return result;
}

double _s7SwiftUI14GraphicsFilterOWOi22_(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 746586112;
  return result;
}

double static Glass.regular.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DDCAA00;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double static Glass.clear.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_18DDCAA10;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double static Glass.identity.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18DDAA050;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t Glass.tint(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  outlined copy of _Glass.Variant.Role(v6, v5);

  if (!a1)
  {
    a1 = v8;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = a1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t Glass.interactive(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 32) & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  outlined copy of _Glass.Variant.Role(v4, v3);
}

uint64_t static Glass.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 40);
  v15 = *a1;
  v16 = v2;
  v17 = v3;
  v18 = *(a1 + 24);
  v19 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = *(a2 + 24);
  v14 = v8;
  outlined copy of _Glass.Variant.Role(v15, v2);

  outlined copy of _Glass.Variant.Role(v5, v6);

  LOBYTE(v5) = specialized static _Glass.== infix(_:_:)(&v15, &v10);
  outlined consume of _Glass.Variant.Role(v10, v11);

  outlined consume of _Glass.Variant.Role(v15, v16);

  return v5 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Glass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 40);
  v15 = *a1;
  v16 = v2;
  v17 = v3;
  v18 = *(a1 + 24);
  v19 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = *(a2 + 24);
  v14 = v8;
  outlined copy of _Glass.Variant.Role(v15, v2);

  outlined copy of _Glass.Variant.Role(v5, v6);

  LOBYTE(v5) = specialized static _Glass.== infix(_:_:)(&v15, &v10);
  outlined consume of _Glass.Variant.Role(v10, v11);

  outlined consume of _Glass.Variant.Role(v15, v16);

  return v5 & 1;
}

uint64_t assignWithTake for Glass(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for Glass(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for Glass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t ResolvedStyledText.nextUpdate(after:equivalentDate:reduceFrequency:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, double *a4@<X8>)
{
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + 216);
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = *a1;
  if ([v17 length] < 1)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for updateSchedule != -1)
  {
    swift_once();
  }

  v19 = static NSAttributedStringKey.updateSchedule;
  [v17 length];
  if (![v17 attribute:v19 atIndex:0 effectiveRange:0])
  {
    memset(v26, 0, sizeof(v26));
    _sypSgWOhTm_6(v26, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
LABEL_9:
    (*(v13 + 56))(v11, 1, 1, v12, v14);
    goto LABEL_10;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _sypSgWOhTm_6(v26, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  NSAttributedString.updateSchedule.getter(v27);
  v20 = v28;
  v21 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  LOBYTE(v26[0]) = a3 & 1;
  TimelineSchedule.nextEntry(after:mode:limit:)(a2, v26, 60, 0, v20, v21, v11);
  (*(v13 + 56))(v11, 0, 1, v12);
  __swift_destroy_boxed_opaque_existential_1(v27);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_10:
    result = outlined destroy of Date?(v11, type metadata accessor for Date?);
    v25 = INFINITY;
    goto LABEL_11;
  }

  (*(v13 + 32))(v16, v11, v12);
  Date.timeIntervalSince(_:)();
  v23 = v22;
  result = (*(v13 + 8))(v16, v12);
  v25 = v18 + v23;
LABEL_11:
  *a4 = v25;
  return result;
}

uint64_t ResolvedStyledText.updatesAsynchronously.getter()
{
  v1 = *(v0 + 216);
  if (v1 && [*(v0 + 216) length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v2 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_6(v4, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
      return *(v0 + 256) & 1;
    }

    memset(v4, 0, sizeof(v4));
    _sypSgWOhTm_6(v4, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  }

  return 0;
}

uint64_t ResolvedStyledText.draw(in:with:applyingMarginOffsets:context:renderer:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[27];
  if (v7)
  {
    LOBYTE(v7) = NSAttributedString.isDynamic.getter();
  }

  v8 = *(*v3 + 296);

  return v8(a1 & 1, v7 & 1, a2, a3);
}

uint64_t static Text._makeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(*a1))
  {
    outlined init with copy of _ViewListInputs(a1, v10);
    if (v12)
    {
      v8 = v12;
      v9 = v13 & 1;
      v12 = 0;
      v13 = 0;
      specialized Set._Variant.insert(_:)(&v7, &type metadata for LeafContentType.TraitKey);
      v4 = v8;
      v5 = v9;

      v12 = v4;
      v13 = v5;
    }

    LODWORD(v8) = *(a1 + 64);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type Text.WriteTextTrait and conformance Text.WriteTextTrait();
    v11 = Attribute.init<A>(body:value:flags:update:)();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA4TextV_Tt2B5(v10, a2);
    return outlined destroy of _ViewListInputs(v10);
  }

  else
  {

    return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA4TextV_Tt2B5(a1, a2);
  }
}

uint64_t Text.WriteTextTrait.value.getter@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v5 = v3;
  result = _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA15LeafContentTypeO0dG0V_Tt0B5(1);
  *a2 = v5;
  return result;
}

uint64_t static Text.makeTextAttributes(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v87 = a3;
  v113 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ResolvedTextFilter(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v71[-v9];
  v88 = *a1;
  v10 = *(a2 + 48);
  *v112 = *(a2 + 32);
  *&v112[16] = v10;
  *&v112[32] = *(a2 + 64);
  *&v112[48] = *(a2 + 80);
  v11 = *(a2 + 16);
  v110 = *a2;
  v111 = v11;
  v12 = v110;
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19TextAllowsSelectionV_Tt2g5(v110))
  {
    v85 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA22TextSelectionForbiddenV_Tt2g5(v12) ^ 1;
  }

  else
  {
    v85 = 0;
  }

  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17TextRendererInputV_Tt2g5(v12);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v12, v102);
  if (v14)
  {
    v15 = (v14 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v15 = &static ArchivedViewInput.defaultValue;
  }

  v16 = ~(32 * *v15) & 0x20;
  Attribute = AGWeakAttributeGetAttribute();
  v72 = *MEMORY[0x1E698D3F8];
  if (Attribute == v72)
  {
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA4TextV06LayoutI0V_TtB5Tf4dn_n(*&v112[16]))
    {
      v16 |= 0x40u;
    }
  }

  else
  {
    v16 |= 0x48u;
  }

  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28PreferTextLayoutManagerInputV_Tt2g5(v12))
  {
    v16 |= 0x10u;
  }

  v107 = v110;
  v108 = v111;
  v109 = *v112;
  v105 = *&v112[8];
  v106[0] = *&v112[24];
  *(v106 + 12) = *&v112[36];
  outlined init with copy of _ViewInputs(&v110, &v102);
  v18 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19VariantThatFitsFlagV_Tt2g5(v12);
  v84 = *&v112[4];
  v19 = v111;
  v86 = v18;
  v73 = v13;
  if (v18)
  {
    v82 = HIDWORD(v13);
    swift_beginAccess();
    LODWORD(v80) = *(v19 + 16);
    v79 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v12);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17ArchivedViewInputV_Tt2G5(v12, &v91);
    LOWORD(v90[0]) = v91;
    v89 = v16;
    HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v12);
    v83 = 0;
    v63 = *&v112[40];
    v64 = DWORD2(v110);
    v102 = v110;
    v103 = v111;
    v104[0] = *v112;
    _GraphInputs.interfaceIdiom.getter(&v99);
    v93 = v99;
    v65 = v88;
    v66 = specialized SizeFittingTextFilter.init(size:text:environment:time:referenceDate:includeDefaultAttributes:allowsKeyColors:archiveOptions:features:attachmentsAsAuxiliaryMetadata:idiom:)(v63, v88, v80, v64, v79, 1, 1u, v90, &v89, HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5 & 1, &v93);
    v68 = v67;
    *&v102 = v66;
    DWORD2(v102) = v69;
    BYTE12(v102) = v70 & 1;
    *&v103 = v67;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ResolvedStyledText();
    lazy protocol witness table accessor for type SizeFittingTextFilter and conformance SizeFittingTextFilter();
    v43 = Attribute.init<A>(body:value:flags:update:)();
    *&v102 = __PAIR64__(*(v19 + 16), v65);
    *(&v102 + 1) = __PAIR64__(v82, v73);
    *&v103 = v68;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer();
    v44 = Attribute.init<A>(body:value:flags:update:)();

    v45 = v84;
    v46 = v84 & 0xFFFFFFFD;
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    LODWORD(v79) = v16;
    v80 = v7;
    v20 = v5;
    swift_beginAccess();
    v21 = *(v19 + 16);
    v22 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v12);
    v77 = HIDWORD(v22);
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v12, v102);
    v78 = v22;
    if (v23)
    {
      v24 = (v23 + 72);
      v25 = (v23 + 73);
    }

    else
    {
      v24 = &static ArchivedViewInput.defaultValue;
      v25 = &static ArchivedViewInput.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v26 = *v25;
    v74 = *v24;
    v75 = v26;
    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v12);
    v83 = 0;
    BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v12, v102);
    v81 = v12;
    if (v28 && (v29 = *(v28 + 72)) != 0)
    {
      v30 = *(v28 + 80);
    }

    else
    {
      _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
      v29 = v31;
      v30 = &protocol witness table for InterfaceIdiomBox<A>;
    }

    v32 = DWORD2(v110);
    v33 = v82;
    *v82 = v88;
    *(v33 + 4) = v21;
    v76 = v20;
    v34 = v33 + *(v20 + 24);
    v35 = type metadata accessor for ResolvedTextHelper(0);
    *(v34 + *(v35 + 60)) = 0;
    type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    swift_storeEnumTagMultiPayload();
    v36 = v77;
    v37 = v78;
    *v34 = v32;
    *(v34 + 4) = v37;
    *(v34 + 8) = v36;
    *(v34 + 12) = 257;
    LOBYTE(v36) = v75;
    *(v34 + 14) = v74;
    *(v34 + 15) = v36;
    *(v34 + 16) = v79;
    *(v34 + 18) = v27 & 1;
    *(v34 + 19) = 0;
    *(v34 + 24) = v29;
    *(v34 + 32) = v30;
    type metadata accessor for PropertyList.Tracker();
    v38 = swift_allocObject();
    _sypSgMaTm_5(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v40 = MEMORY[0x1E69E7CC8];
    *(v39 + 24) = 0;
    *(v39 + 32) = v40;
    *(v39 + 40) = v40;
    v41 = MEMORY[0x1E69E7CC0];
    *(v39 + 48) = MEMORY[0x1E69E7CC0];
    *(v39 + 56) = 0;
    *(v38 + 16) = v39;
    *(v34 + 40) = v38;
    *(v34 + 48) = 0u;
    *(v34 + 64) = 0u;
    *(v34 + *(v35 + 64)) = 0;
    v42 = v80;
    outlined init with copy of ResolvableStringResolutionContext(v33, v80, type metadata accessor for ResolvedTextFilter);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ResolvedStyledText();
    lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type ResolvedTextFilter and conformance ResolvedTextFilter, type metadata accessor for ResolvedTextFilter);
    v43 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of Date?(v42, type metadata accessor for ResolvedTextFilter);
    outlined destroy of Date?(v33, type metadata accessor for ResolvedTextFilter);
    v44 = 0;
    v45 = v84;
    v46 = v84;
    v12 = v81;
  }

  v47 = v46 | 0x2000;
  if ((v85 & 1) == 0)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(v12);
    v102 = v107;
    v103 = v108;
    *&v104[0] = __PAIR64__(v47, v109);
    *(v104 + 8) = v105;
    *(&v104[2] + 4) = *(v106 + 12);
    *(&v104[1] + 8) = v106[0];
    v101[0] = v104[0];
    v101[1] = v104[1];
    v101[2] = v104[2];
    LODWORD(v101[3]) = DWORD2(v106[1]);
    v99 = v107;
    v100 = v108;
    v54 = (v45 & 0x20) != 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v112[16]) & 1) != 0 && (v45 & 0x2000) == 0;
    outlined init with copy of _ViewInputs(&v102, &v93);
    static Text.makeTextChildQuery<A>(_:styledText:view:renderer:inputs:isScrapeable:)(v43, v88, v73, &v99, v54, v90);
    v95 = v101[0];
    v96 = v101[1];
    v97 = v101[2];
    v98 = v101[3];
    v93 = v99;
    v94 = v100;
    v53 = &v93;
    goto LABEL_34;
  }

  v48 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v12);
  if (v48)
  {
    v50 = v48;
    v99 = v107;
    v100 = v108;
    *&v101[0] = __PAIR64__(v47, v109);
    *(&v101[2] + 4) = *(v106 + 12);
    *(v101 + 8) = v105;
    *(&v101[1] + 8) = v106[0];
    v95 = v101[0];
    v96 = v101[1];
    v97 = v101[2];
    v98 = DWORD2(v106[1]);
    v93 = v107;
    v94 = v108;
    v88 = v44;
    v51 = *(v49 + 8);
    v52 = v49;
    outlined init with copy of _ViewInputs(&v99, &v102);
    v51(v90, v43, &v93, v50, v52);
    v44 = v88;
    v104[0] = v95;
    v104[1] = v96;
    v104[2] = v97;
    LODWORD(v104[3]) = v98;
    v102 = v93;
    v103 = v94;
    v53 = &v102;
LABEL_34:
    outlined destroy of _ViewInputs(v53);
    v91 = v90[0];
    v92 = v90[1];
    goto LABEL_35;
  }

  v91 = v41;
  LODWORD(v92) = 0;
  HIDWORD(v92) = v72;
LABEL_35:
  v55 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v12);
  if (v55)
  {
    v104[0] = *v112;
    v104[1] = *&v112[16];
    v104[2] = *&v112[32];
    LODWORD(v104[3]) = *&v112[48];
    v102 = v110;
    v103 = v111;
    v56 = MEMORY[0x1EEE9AC00](v55);
    (*(v57 + 8))(&v102, partial apply for implicit closure #2 in static Text.makeTextAttributes(view:inputs:), v56);
  }

  v102 = v107;
  v103 = v108;
  *(v104 + 8) = v105;
  if (v86)
  {
    v58 = v44;
  }

  else
  {
    v58 = HIDWORD(v92);
  }

  if (v86)
  {
    v59 = v92 | 0x80;
  }

  else
  {
    v59 = v92;
  }

  *&v104[0] = __PAIR64__(v47, v109);
  *(&v104[1] + 8) = v106[0];
  *(&v104[2] + 4) = *(v106 + 12);
  result = outlined destroy of _ViewInputs(&v102);
  v61 = v87;
  *v87 = v91;
  *(v61 + 2) = v59;
  *(v61 + 3) = v58;
  return result;
}

uint64_t implicit closure #2 in static Text.makeTextAttributes(view:inputs:)()
{
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
  type metadata accessor for Map<ResolvedStyledText, TimelineSchedule?>();
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type Map<ResolvedStyledText, TimelineSchedule?> and conformance Map<A, B>, type metadata accessor for Map<ResolvedStyledText, TimelineSchedule?>);

  v0 = Attribute.init<A>(body:value:flags:update:)();

  return v0;
}

id ResolvedStyledText.resolvedContent(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(v1 + 216);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (NSAttributedString.isDynamic.getter() && (*(v2 + 256) & 1) != 0)
  {
    [v8 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    if (!swift_dynamicCast())
    {
LABEL_9:

      return 0;
    }

    v9 = one-time initialization token for resolvableTextSegment;
    v10 = aBlock[6];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = static NSAttributedStringKey.resolvableTextSegment;
    v12 = [v10 length];
    outlined init with copy of ResolvableStringResolutionContext(a1, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResolvableStringResolutionContext);
    v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ResolvableStringResolutionContext);
    v15 = swift_allocObject();
    *(v15 + 16) = _s7SwiftUI30ResolvableTextSegmentAttributeO6update_2inySo25NSMutableAttributedStringC_AA0cK17ResolutionContextVtFZyypSg_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA_0;
    *(v15 + 24) = v14;
    aBlock[4] = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_10;
    v16 = _Block_copy(aBlock);
    v17 = v10;

    [v17 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{2, v16}];

    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    v8 = v17;
    if (v16)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  return v8;
}

uint64_t static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)(void *a1, unint64_t *a2, char *a3, char a4, __int16 *a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, unsigned __int8 *a14, char a15, char a16)
{
  v21 = *a2;
  v86 = a3[1];
  v87 = *a3;
  v22 = *a5;
  v93 = *a6;
  v94 = *(a6 + 8);
  v96 = *(a6 + 16);
  v98 = *(a6 + 24);
  v23 = *(a6 + 40);
  v95 = *(a6 + 48);
  v91 = *a7;
  v92 = *(a6 + 32);
  v24 = *a14;
  if (a2[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v21, v128);
  }

  else
  {
    *v126 = v21;

    TextLayoutProperties.init(from:)(v126, v128);
  }

  *v126 = *v128;
  *&v126[10] = *&v128[10];
  v25 = v129;
  v26 = v133;
  *&v126[82] = v134;
  *&v126[98] = v135;
  *&v126[114] = *v136;
  *&v126[128] = *&v136[14];
  v27 = v137;
  if (v24 != 2)
  {
    v26 = v24 & 1;
  }

  if (a16 != 3)
  {
    v25 = a16;
  }

  if (a15)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v126[26] = v25;
  *&v126[73] = *&v132[14];
  *&v126[59] = *v132;
  *&v126[43] = v131;
  *&v126[27] = v130;
  v126[81] = v26;
  v127 = v137 & 0xFD | v28;
  v97 = v22;
  if ((v26 & 1) != 0 || (v22 & 0xD8) != 0 || *(v91 + 16))
  {
LABEL_21:
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v29 = swift_allocObject();
    *(v29 + 416) = MEMORY[0x1E69E7CC0];
    *(v29 + 424) = 0u;
    *(v29 + 440) = 0u;
    *(v29 + 456) = 0u;
    *(v29 + 472) = 0u;
    *(v29 + 488) = 512;
    if ((v126[8] & 1) != 0 || *v126 != 1)
    {
      v33 = a8;
      v34 = v96;
      v35 = v94;
      if (a1)
      {
        a1 = NSAttributedString.replacingLineBreakModes(_:)(0);
      }
    }

    else
    {
      v32 = a1;
      v33 = a8;
      v34 = v96;
      v35 = v94;
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v37 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v36 setDelegate_];
    [v36 setUsesFontLeading_];
    v85 = a1;
    v90 = v36;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v90, a1, v124);
    v38 = v124[3];
    *(v29 + 528) = v124[2];
    *(v29 + 544) = v38;
    *(v29 + 560) = v124[4];
    v39 = v124[1];
    *(v29 + 496) = v124[0];
    *(v29 + 512) = v39;
    *(v29 + 576) = v37;
    *(v29 + 352) = v93;
    *(v29 + 360) = v35;
    *(v29 + 368) = v34;
    *(v29 + 376) = v98;
    *(v29 + 384) = v92;
    *(v29 + 392) = v23;
    *(v29 + 400) = v95;
    *(v29 + 408) = v91;
    *(v29 + 200) = 0;
    *(v29 + 208) = 1;
    v125 = 1;
    *(v29 + 280) = 0u;
    *(v29 + 296) = 0u;
    *(v29 + 312) = 0u;
    *(v29 + 328) = 0u;
    *(v29 + 344) = 1;
    *(v29 + 216) = a1;
    *(v29 + 224) = a9;
    *(v29 + 232) = a10;
    *(v29 + 240) = a11;
    *(v29 + 248) = a12;
    *(v29 + 256) = v87;
    *(v29 + 257) = v86;
    *(v29 + 258) = a4 & 1;
    *(v29 + 260) = v97;
    *(v29 + 264) = v33;
    *(v29 + 272) = a13;
    v40 = *&v126[16];
    *(v29 + 16) = *v126;
    *(v29 + 32) = v40;
    v41 = *&v126[80];
    *(v29 + 80) = *&v126[64];
    *(v29 + 96) = v41;
    v42 = *&v126[48];
    *(v29 + 48) = *&v126[32];
    *(v29 + 64) = v42;
    *(v29 + 160) = v127;
    v43 = *&v126[128];
    *(v29 + 128) = *&v126[112];
    *(v29 + 144) = v43;
    *(v29 + 112) = *&v126[96];
    if (a1)
    {
      v111 = 0uLL;
      v112 = 0uLL;
      v109 = 0uLL;
      v110 = 0uLL;
      v113 = 1;
      v107 = v126[104];
      v108 = *&v126[112];
      v120 = *&v126[96];
      v121 = *&v126[112];
      v122 = *&v126[128];
      v123 = v127;
      v116 = *&v126[32];
      v117 = *&v126[48];
      v118 = *&v126[64];
      v119 = *&v126[80];
      v114 = *v126;
      v115 = *&v126[16];
      outlined init with copy of TextLayoutProperties(v126, v106);
      v44 = v85;
      outlined init with copy of TextLayoutProperties(v126, v106);
      v45 = v37;
      outlined copy of ResolvedTextSuffix(v93, v35, v96, v98, v92, v23);

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v44, &v109, &v114);
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v54 = v112;
      *(v29 + 312) = v111;
      *(v29 + 328) = v54;
      *(v29 + 344) = v113;
      v55 = v110;
      *(v29 + 280) = v109;
      *(v29 + 296) = v55;
      *(v29 + 168) = v47;
      *(v29 + 176) = v49;
      *(v29 + 184) = v51;
      *(v29 + 192) = v53;
      v56 = v37;
    }

    else
    {
      *(v29 + 344) = 1;
      *(v29 + 168) = 0uLL;
      *(v29 + 184) = 0uLL;
      outlined init with copy of TextLayoutProperties(v126, &v114);
      v56 = v37;
      v57 = v37;
      outlined copy of ResolvedTextSuffix(v93, v35, v96, v98, v92, v23);
    }

    swift_beginAccess();
    v58 = _TextContainer(*(v29 + 97));
    [v58 setLineFragmentPadding_];
    v59 = v90;
    [v90 setTextContainer_];
    if ((v97 & 0x40) == 0)
    {
      if (v23 < 0)
      {
        outlined consume of ResolvedTextSuffix(v93, v94, v96, v98, v92, v23);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
        if ((v97 & 0x80) == 0 && !*(v91 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        outlined copy of ResolvedTextSuffix(v93, v94, v96, v98, v92, v23);
        v59 = v90;
        outlined consume of ResolvedTextSuffix(v93, v94, v96, v98, v92, v23);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
      }
    }

    _NSTextLayoutManagerRequiresCTLine(v59);
LABEL_35:
    outlined destroy of TextLayoutProperties(v126);

    return v29;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    outlined copy of ResolvedTextSuffix(v93, v94, v96, v98, v92, v23);
    outlined consume of ResolvedTextSuffix(v93, v94, v96, v98, v92, v23);
    outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
    goto LABEL_21;
  }

  outlined consume of ResolvedTextSuffix(v93, v94, v96, v98, v92, v23);
  outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
  if (v126[120] != 2)
  {
    goto LABEL_21;
  }

  type metadata accessor for ResolvedStyledText.StringDrawing();
  v29 = swift_allocObject();
  if (v27)
  {
    outlined init with copy of TextLayoutProperties(v126, &v114);
    v31 = 1;
    v30 = v87;
    goto LABEL_40;
  }

  v30 = v87;
  if (!a1)
  {
    outlined init with copy of TextLayoutProperties(v126, &v114);
    goto LABEL_39;
  }

  outlined init with copy of TextLayoutProperties(v126, &v114);
  if (!NSAttributedString.isDynamic.getter())
  {
LABEL_39:
    v31 = 0;
    goto LABEL_40;
  }

  v31 = v87 & 1;
LABEL_40:
  v61 = *v126;
  v62 = v126[8];
  v63 = *&v126[16];
  v64 = v126[24];
  v65 = *&v126[88];
  v66 = *&v126[32];
  v67 = *&v126[72];
  if (a1)
  {
    v68 = a1;
  }

  else
  {
    v99 = *&v126[88];
    if (one-time initialization token for emptyString != -1)
    {
      swift_once();
    }

    v68 = static NSAttributedString.emptyString;
    v65 = v99;
  }

  v107 = v62;
  v125 = v64;
  *(v29 + 352) = 0;
  *(v29 + 360) = v68;
  *(v29 + 368) = v61;
  *(v29 + 376) = v62;
  *(v29 + 384) = v63;
  *(v29 + 392) = v64;
  *(v29 + 400) = v66;
  *(v29 + 408) = v65;
  *(v29 + 424) = v31;
  *(v29 + 425) = v67 != 0.0;
  *(v29 + 426) = a4 & 1;
  *(v29 + 432) = MEMORY[0x1E69E7CC0];
  *(v29 + 200) = 0;
  *(v29 + 208) = 1;
  v69 = (v29 + 280);
  v105 = 1;
  *(v29 + 216) = a1;
  *(v29 + 224) = a9;
  *(v29 + 232) = a10;
  *(v29 + 240) = a11;
  *(v29 + 248) = a12;
  *(v29 + 256) = v30;
  *(v29 + 257) = v86;
  *(v29 + 258) = a4 & 1;
  *(v29 + 260) = v22;
  *(v29 + 264) = a8;
  *(v29 + 272) = a13;
  v70 = *&v126[80];
  *(v29 + 80) = *&v126[64];
  *(v29 + 96) = v70;
  v71 = *&v126[48];
  *(v29 + 48) = *&v126[32];
  *(v29 + 64) = v71;
  *(v29 + 160) = v127;
  v72 = *&v126[128];
  *(v29 + 128) = *&v126[112];
  *(v29 + 144) = v72;
  *(v29 + 112) = *&v126[96];
  v73 = *&v126[16];
  *(v29 + 16) = *v126;
  *(v29 + 32) = v73;
  if (a1)
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v104 = 1;
    LOBYTE(v124[0]) = v126[104];
    *(&v124[0] + 1) = *&v126[112];
    v120 = *&v126[96];
    v121 = *&v126[112];
    v122 = *&v126[128];
    v123 = v127;
    v116 = *&v126[32];
    v117 = *&v126[48];
    v118 = *&v126[64];
    v119 = *&v126[80];
    v114 = *v126;
    v115 = *&v126[16];
    v74 = a1;
    outlined init with copy of TextLayoutProperties(v126, v106);

    Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v74, &v100, &v114);
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;

    outlined destroy of TextLayoutProperties(v126);
    v83 = v103;
    *(v29 + 312) = v102;
    *(v29 + 328) = v83;
    *(v29 + 344) = v104;
    v84 = v101;
    *v69 = v100;
    *(v29 + 296) = v84;
    *(v29 + 168) = v76;
    *(v29 + 176) = v78;
    *(v29 + 184) = v80;
    *(v29 + 192) = v82;
  }

  else
  {

    outlined destroy of TextLayoutProperties(v126);
    *v69 = 0u;
    *(v29 + 296) = 0u;
    *(v29 + 312) = 0u;
    *(v29 + 328) = 0u;
    *(v29 + 344) = 1;
    *(v29 + 168) = 0u;
    *(v29 + 184) = 0u;
  }

  return v29;
}

Swift::Void __swiftcall ResolvedOptionalTextFilter.updateValue()()
{
  v1 = v0;
  v30 = *MEMORY[0x1E69E9840];
  _sypSgMaTm_5(0, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v4 = v3;
  v6 = *Value;
  v5 = Value[1];
  v8 = Value[2];
  v7 = Value[3];
  outlined copy of Text?(*Value, v5, v8, v7);
  v9 = AGGraphGetValue();
  v11 = v10;
  v13 = *v9;
  v12 = *(v9 + 8);
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for ResolvedStyledText?, v14, type metadata accessor for ResolvedStyledText, MEMORY[0x1E69E6720]);
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_18;
  }

  v27 = v11;
  v15 = (v1 + *(type metadata accessor for ResolvedOptionalTextFilter(0) + 24));
  if ((v4 & 1) == 0)
  {

    goto LABEL_4;
  }

  if (!v15[9])
  {

    if (!v7)
    {
      goto LABEL_4;
    }

LABEL_19:
    v28 = *&v13;
    v29 = v12;
    type metadata accessor for ResolvedOptionalTextFilter(0);
    v28 = COERCE_DOUBLE(ResolvedTextHelper.resolve(_:with:sizeFitting:)(v6, v5, v8, v7, &v28, 0));
    AGGraphSetOutputValue();

    goto LABEL_20;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  v16 = v15[6];
  if ((v15[8] & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      v25 = v15[8];
      v26 = v15[9];
      v20 = v16 == v6 && v15[7] == v5;
      v24 = v15[7];
      if (v20)
      {

        outlined copy of Text?(v6, v5, v25, v26);
        goto LABEL_34;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined copy of Text?(v16, v24, v25, v26);
      if (v22)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    goto LABEL_18;
  }

  if ((v8 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v21 = *(*v16 + 96);
  v25 = v15[8];
  v26 = v15[9];
  v24 = v15[7];

  outlined copy of Text?(v16, v24, v25, v26);
  if ((v21(v6) & 1) == 0)
  {
LABEL_32:
    outlined consume of Text?(v16, v24, v25, v26);
    goto LABEL_19;
  }

LABEL_34:
  v23 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v26, v7);
  outlined consume of Text?(v16, v24, v25, v26);
  if ((v23 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v27 & 1) != 0 && (PropertyList.Tracker.hasDifferentUsedValues(_:)(v13))
  {
    goto LABEL_19;
  }

  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  if ((v29 & 1) == 0 && *AGGraphGetValue() >= v28)
  {
    goto LABEL_19;
  }

LABEL_20:
  type metadata accessor for ResolvedOptionalTextFilter(0);
  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  if ((v29 & 1) != 0 || (v17 = v28, *AGGraphGetValue() >= v17))
  {
    outlined consume of Text?(v6, v5, v8, v7);
  }

  else
  {
    specialized static GraphHost.currentHost.getter();
    outlined consume of Text?(v6, v5, v8, v7);

    type metadata accessor for ViewGraph();
    v18 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v19 = *(v18 + 376);
    if (v17 < v19)
    {
      v19 = v17;
    }

    *(v18 + 376) = v19;
  }
}

uint64_t AccessibilityStyledTextContentView.init(text:unresolvedText:renderer:needsDrawingGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t static TextChildQuery.scrapeContent(from:)@<X0>(uint64_t a1@<X8>)
{
  AGGraphGetAttributeInfo();
  v3 = v2;
  v4 = swift_allocObject();
  type metadata accessor for TextChildQuery();
  *(v4 + 16) = TextChildQuery.unresolvedText.getter();
  *(v4 + 24) = v5;
  *(v4 + 32) = v6 & 1;
  *(v4 + 40) = v7;
  type metadata accessor for ResolvedStyledText();
  *(v4 + 48) = *AGGraphGetValue();

  TextChildQuery.environment.getter((v4 + 56));
  v8 = *(v3 + 32);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v10 = *Value;
  v11 = Value[1];
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = AGGraphGetValue();
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 32) - (v10 - *(v15 + 16));
  v19 = *(v15 + 40) - (v11 - *(v15 + 24));
  *a1 = 0;
  *(a1 + 4) = v8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v17;
  *(a1 + 40) = v16;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance TextChildQuery<A>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for LayoutEngine.debugContentDescription.getter in conformance StyledTextLayoutEngine()
{
  v1 = *(*v0 + 216);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t AccessibilityStyledTextContentView.text.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AccessibilityStyledTextContentView.unresolvedText.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Text.Storage(v1, *(v0 + 16), *(v0 + 24));

  return v1;
}

uint64_t AccessibilityStyledTextContentView.unresolvedText.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*(v4 + 8), *(v4 + 16), *(v4 + 24));

  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3 & 1;
  *(v4 + 32) = a4;
  return result;
}

uint64_t AccessibilityStyledTextContentView.renderer.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t StyledTextContentView.init(text:renderer:needsDrawingGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t StyledTextContentView.text.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t StyledTextContentView.renderer.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

double StyledTextContentView.shape(in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  if (v8)
  {
    v10 = *(*v8 + 120);

    v12 = v10(v11);
    v16 = CGRect.outset(by:)(v12, v13, v14, v15, 0.0, 0.0, a2, a3);
  }

  else
  {
    v16 = 0.0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0x40000000;

  return v16;
}

uint64_t static StyledTextContentView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
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
  v9 = v3;
  return static StyledTextContentView._makeInnerView(view:inputs:)(&v9, v7, a3);
}

uint64_t StyledTextContentView.ArchivedTransitionEnvironment.value.getter@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  *a1 = *Value;
  a1[1] = v4;

  v5 = *AGGraphGetValue();

  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v26);

    v7 = v26;
    if (BYTE5(v27))
    {
LABEL_3:

      v8 = v27 | (BYTE4(v27) << 32);
      goto LABEL_14;
    }
  }

  else
  {
    v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v9)
    {
      v7 = v9[9];
      v10 = *(v9 + 20);
      v11 = v10 | (*(v9 + 84) << 32);
      v12 = *(v9 + 85);
      v13 = *(v9 + 86);
      v14 = *(v9 + 87);
      v15 = v9[11];
      v16 = *(v9 + 24);
      BYTE4(v27) = *(v9 + 84);
      LODWORD(v27) = v10;
      BYTE5(v27) = v12;
      BYTE6(v27) = v13;
      HIBYTE(v27) = v14;
      v28 = v15;
      v29 = v16;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v7 = static ContentTransition.State.defaultValue;
      v11 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v12 = BYTE13(static ContentTransition.State.defaultValue);
      v27 = *(&static ContentTransition.State.defaultValue + 1);
      v28 = off_1ED536620;
      v29 = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v7, v11, v12);

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v8 = v27 | (BYTE4(v27) << 32);
  if ((v7 & 0xC000000000) == 0x4000000000 && (v7 & 0xFF0000000000) == 0x20000000000)
  {
    v17 = (*(*v5 + 208))(v6);

    outlined consume of ContentTransition.Storage(v7, v8, 0);
    BYTE5(v27) = 0;
    v7 = v7 & 0xFFFF000000000000 | (((v17 & 1) == 0) << 40) | v7 | ((BYTE4(v7) & 1) << 32) | 0x4000000000;
  }

  else
  {
  }

LABEL_14:
  v18 = BYTE5(v27);
  v19 = BYTE6(v27);
  v20 = v28;
  v21 = v29;
  v22 = HIBYTE(v27);
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v7, v8, v18);
  v23 = 0x1000000000000;
  if (!v19)
  {
    v23 = 0;
  }

  v24 = v8 & 0xFFFFFFFFFFLL | (v18 << 40) | v23 | (v22 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(a1, v7, v24, v20, v21);

  outlined consume of ContentTransition.Storage(v7, v8, v18);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v3, *a1);
  }

  outlined consume of ContentTransition.Storage(v7, v8, v18);
}

double protocol witness for ShapeStyledLeafView.shape(in:) in conformance StyledTextContentView(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  if (v8)
  {
    v10 = *(*v8 + 120);

    v12 = v10(v11);
    v16 = CGRect.outset(by:)(v12, v13, v14, v15, 0.0, 0.0, a2, a3);
  }

  else
  {
    v16 = 0.0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0x40000000;

  return v16;
}

uint64_t protocol witness for Rule.value.getter in conformance TextLayoutQuery@<X0>(uint64_t *a1@<X8>)
{
  result = TextLayoutQuery.value.getter(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t static ResolvedStyledText.defaultTransition.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v3 = 0x302000000;
  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if (result)
    {
LABEL_7:
      v5 = 0;
      v6 = 0;
      v7 = 0;
      goto LABEL_12;
    }
  }

  else if (static Semantics.forced >= v2)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v5 = static ContentTransition.identity;
  v3 = dword_1EAB144D0 | (word_1EAB144D4 << 32);
  v6 = HIBYTE(word_1EAB144D4);
  v7 = byte_1EAB144D6;
  result = outlined copy of ContentTransition.Storage(static ContentTransition.identity, v3, SHIBYTE(word_1EAB144D4));
LABEL_12:
  *a1 = v5;
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3);
  *(a1 + 13) = v6;
  *(a1 + 14) = v7;
  return result;
}

uint64_t closure #1 in ResolvedStyledText.requiresTransition(to:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5, void *a6, void *a7)
{
  v41 = a3;
  v42 = a7;
  v47 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for AttributeContainer();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v20 = *a5;
  result = [a6 length];
  if (v20 >= result)
  {
    *a4 = 1;
    return result;
  }

  v40 = a4;
  v44 = 0;
  v45 = 0;
  v22 = [a6 attributesAtIndex:*a5 effectiveRange:&v44];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AttributeContainer.init(_:)();
  AttributeContainer.init(_:)();
  LOBYTE(v22) = static AttributeContainer.== infix(_:_:)();
  v23 = *(v13 + 8);
  v23(v15, v12);
  result = (v23)(v19, v12);
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

  v24 = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD7A720);
  v25 = v24;
  if (!*(a1 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v27 & 1) == 0))
  {

LABEL_10:
    v28 = [v42 attributedSubstringFromRange_];
    v29 = [v28 string];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = [a6 attributedSubstringFromRange_];
    v34 = [v33 string];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (v30 == v35 && v32 == v37)
    {

      goto LABEL_14;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_14;
    }

LABEL_16:
    *v40 = 1;
    return result;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v26, v46);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v43 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (__OFADD__(*a5, v45))
  {
    __break(1u);
  }

  *a5 += v45;
  return result;
}

uint64_t protocol witness for StatefulRule.updateValue() in conformance StyledTextLayoutComputer()
{
  v0 = *AGGraphGetValue();

  v1 = *(AGGraphGetValue() + 8);
  v5[0] = v0;
  v5[1] = v1;
  v4 = v5;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v3, _s14AttributeGraph12StatefulRuleP7SwiftUIAD14LayoutComputerV5ValueRtzrlE6update2toyqd___tAD0G6EngineRd__lFqd__yXEfU0_AD010StyledTextgH033_641995D812913A47B866B20B88782376LLV_AD0mngL0VTG5TA_0);
}

uint64_t TextLayoutProperties.lineLimit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t TextLayoutProperties.lowerLineLimit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TextLayoutProperties.textSizing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
}

uint64_t TextLayoutProperties.textSizing.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);

  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

__n128 TextLayoutProperties.textShape.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 136);
  result = *(v1 + 120);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 TextLayoutProperties.textShape.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v2;
  return result;
}

_BYTE *(*TextLayoutProperties.widthIsFlexible.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 144);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2 & 1;
  return TextLayoutProperties.widthIsFlexible.modify;
}

uint64_t TextLayoutProperties.sizeFitting.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 144) = *(v1 + 144) & 0xFD | v2;
  return result;
}

_BYTE *(*TextLayoutProperties.sizeFitting.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 144);
  *(a1 + 9) = v2;
  *(a1 + 8) = (v2 & 2) != 0;
  return TextLayoutProperties.sizeFitting.modify;
}

_BYTE *TextLayoutProperties.sizeFitting.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 144) = v1 | result[9] & 0xFD;
  return result;
}

uint64_t TextLayoutProperties.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 88) = xmmword_18DDAB500;
  *(a1 + 25) = 1;
  *(a1 + 81) = 0;
  if (one-time initialization token for standard != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED5372E8;
  *(a1 + 104) = static Text.Sizing.standard;
  *(a1 + 112) = v2;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
}

double TextLayoutProperties.init(_:)@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v3, v10);
  }

  else
  {
    v9[0] = *a1;
    v9[1] = 0;

    TextLayoutProperties.init(from:)(v9, v10);
  }

  v4 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v4;
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v11;
  v5 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v5;
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  result = *v10;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  return result;
}

uint64_t TextLayoutProperties.update(_:from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v64 = *(a2 + 25);
  v66 = *(a2 + 26);
  v68 = *(a2 + 27);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v69 = *(a2 + 48);
  v70 = *(a2 + 56);
  v71 = *(a2 + 64);
  v72 = *(a2 + 72);
  v73 = *(a2 + 80);
  v74 = *(a2 + 28);
  v80 = *(a2 + 81);
  v76 = *(a2 + 104);
  v61 = *(a2 + 112);
  v81 = *(a2 + 120);
  v59 = *(a2 + 136);
  v60 = *(a2 + 128);
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 25);
  v65 = *(v2 + 26);
  v67 = *(v2 + 27);
  v83 = *(v2 + 28);
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v17 = *(v2 + 48);
  v16 = *(v2 + 56);
  v19 = *(v2 + 64);
  v18 = *(v2 + 72);
  v20 = *(v2 + 80);
  v79 = *(v2 + 81);
  v21 = *(v2 + 112);
  v82 = *(v2 + 120);
  v63 = *(v2 + 128);
  v62 = *(v2 + 136);
  v78 = v21;
  v77 = *(v2 + 104);
  if (v10)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v24 = *(v2 + 80);
    v23 = *(v2 + 104);
    v25 = *(v2 + 25);
    if ((*(v2 + 24) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v9 != *a2)
  {
    v4 = 1;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v57 = *(a2 + 16);
  v58 = *(a2 + 24);
  v22 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV09LineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(a1, v9, v10);

  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV09LineLimitK033_32CC33FA2019BEDFCE31FB4066945274LLVG_Ttg5(v22, *a1);
  }

  v21 = v78;
  v23 = v77;
  v24 = v20;
  v6 = v58;
  v5 = v57;
  v25 = v13;
  if ((v12 & 1) == 0)
  {
LABEL_6:
    if (v11 == v5)
    {
      v26 = v6;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_16:
  v27 = v23;
  v28 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV014LowerLineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(a1, v11, v12);

  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV014LowerLineLimitK033_32CC33FA2019BEDFCE31FB4066945274LLVG_Ttg5(v28, *a1);
  }

  v23 = v27;
LABEL_19:
  if (v25 != v64)
  {
    v29 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014TruncationModeF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2B5(a1, v25);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014TruncationModeK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v29, *a1);
    }
  }

  if (v65 != v66)
  {
    v30 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013TextAlignmentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v65);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013TextAlignmentK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v30, *a1);
    }
  }

  if (v68 != v67)
  {
    v31 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(a1, v67);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV015LayoutDirectionK0VG_Ttg5(v31, *a1);
    }
  }

  if (v14 != v7)
  {
    if (v14 <= 1.0 && v14 > 0.0)
    {
      v33 = v14;
    }

    else
    {
      v33 = 1.0;
    }

    v34 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(a1, v33);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018MinimumScaleFactorK0VG_Ttg5(v34, *a1);
    }
  }

  if (v15 != v8)
  {
    v35 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011LineSpacingF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v15);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011LineSpacingK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v35, *a1);
    }
  }

  if (v17 != v69)
  {
    v36 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018LineHeightMultipleF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v17);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018LineHeightMultipleK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v36, *a1);
    }
  }

  if (v16 != v70)
  {
    v37 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017MaximumLineHeightF0VG_Tt2g5(a1, v16);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017MaximumLineHeightK0VG_Ttg5(v37, *a1);
    }
  }

  if (v19 != v71)
  {
    v38 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017MinimumLineHeightF0VG_Tt2g5(a1, v19);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017MinimumLineHeightK0VG_Ttg5(v38, *a1);
    }
  }

  if (v18 != v72)
  {
    v39 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017HyphenationFactorF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v18);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017HyphenationFactorK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v39, *a1);
    }
  }

  if (v73 != v24)
  {
    v40 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019HyphenationDisabledF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v24);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019HyphenationDisabledK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v40, *a1);
    }
  }

  if (v83 != v74)
  {
    v42 = *a1;
    v41 = a1[1];
    if (v41)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v42, &v84);

      v43 = v84;
      v44 = v85 | (v86 << 32);
      v45 = v87;
      v46 = v88;
      v47 = v89;
      v75 = v90;
    }

    else
    {
      v48 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*a1);
      if (v48)
      {
        v43 = v48[9];
        v44 = *(v48 + 20) | (*(v48 + 84) << 32);
        v45 = *(v48 + 85);
        v46 = *(v48 + 86);
        v47 = v48[11];
        v49 = *(v48 + 24);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v43 = static ContentTransition.State.defaultValue;
        v44 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v45 = BYTE13(static ContentTransition.State.defaultValue);
        v46 = BYTE14(static ContentTransition.State.defaultValue);
        v47 = off_1ED536620;
        v49 = dword_1ED536628;
      }

      v75 = v49;
      outlined copy of ContentTransition.Storage(v43, v44, v45);
    }

    swift_retain_n();
    outlined copy of ContentTransition.Storage(v43, v44, v45);
    v50 = 0x1000000000000;
    if (!v46)
    {
      v50 = 0;
    }

    v51 = v50 | (v83 << 56);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(a1, v43, v51 | v44 & 0xFFFFFFFFFFLL | (v45 << 40), v47, v75);

    outlined consume of ContentTransition.Storage(v43, v44, v45);

    if (v41)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v42, *a1);
    }

    outlined consume of ContentTransition.Storage(v43, v44, v45);

    v21 = v78;
    v23 = v77;
  }

  if (v23 != v76 || (, , v52 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(v21, v61), , result = , (v52 & 1) == 0))
  {
    v54 = *a1;
    swift_retain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(a1, v23, v21);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(v54, *a1);
    }
  }

  if (v80 != v79)
  {
    v55 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(a1, v79);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011WritingModeK0023_82074A2E22E8635055FCB3O8D5E40280LLVG_Ttg5(v55, *a1);
    }
  }

  if (v82 == 2)
  {
    if (v81 == 2)
    {
      return result;
    }
  }

  else if (v81 != 2 && ((v82 ^ v81) & 1) == 0 && v60 == *&v63 && v59 == *&v62)
  {
    return result;
  }

  v56 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt2B5(a1, v82, v63, v62);

  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Ttg5(v56, *a1);
  }
}

void TextLayoutProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 25);
  v10 = *(v3 + 26);
  v11 = *(v3 + 28);
  v13 = *(v3 + 32);
  v12 = *(v3 + 40);
  v15 = *(v3 + 48);
  v14 = *(v3 + 56);
  v17 = *(v3 + 64);
  v16 = *(v3 + 72);
  v58 = *(v3 + 80);
  v59 = *(v3 + 27);
  v55 = *(v3 + 81);
  v61 = *(v3 + 88);
  v60 = *(v3 + 96);
  v56 = *(v3 + 104);
  v57 = *(v3 + 144);
  if (v9 != 1)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v9 + 1);
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 1;
  }

  else
  {
    v18 = v6;
  }

  if ((v18 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v5) ^ (v5 >> 63));
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 1;
  }

  else
  {
    v19 = v8;
  }

  if ((v19 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v7) ^ (v7 >> 63));
  }

  if (v13 == 1.0)
  {
    goto LABEL_24;
  }

  v20 = fabs(v13);
  if (v20 >= 65536.0)
  {
    v21 = 33;
  }

  else
  {
    v21 = 37;
  }

  ProtobufEncoder.encodeVarint(_:)(v21);
  if (v20 >= 65536.0)
  {
    v24 = a1[1];
    v23 = v24 + 8;
    if (!__OFADD__(v24, 8))
    {
      if (a1[2] < v23)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v23) = v13;
      }

      else
      {
        a1[1] = v23;
        *(*a1 + v24) = v13;
      }

      goto LABEL_24;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v22 = a1[1];
  v23 = v22 + 4;
  if (__OFADD__(v22, 4))
  {
    __break(1u);
    goto LABEL_119;
  }

  *&v13 = v13;
  if (a1[2] < v23)
  {
    goto LABEL_124;
  }

  a1[1] = v23;
  *(*a1 + v22) = LODWORD(v13);
  while (1)
  {
LABEL_24:
    if (v12 == 0.0)
    {
      goto LABEL_35;
    }

    v25 = fabs(v12);
    v26 = v25 >= 65536.0 ? 41 : 45;
    ProtobufEncoder.encodeVarint(_:)(v26);
    if (v25 >= 65536.0)
    {
      break;
    }

    v27 = a1[1];
    v23 = v27 + 4;
    if (!__OFADD__(v27, 4))
    {
      *&v12 = v12;
      if (a1[2] >= v23)
      {
        a1[1] = v23;
        *(*a1 + v27) = LODWORD(v12);
        goto LABEL_35;
      }

      goto LABEL_128;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v13);
  }

  v28 = a1[1];
  v23 = v28 + 8;
  if (__OFADD__(v28, 8))
  {
    goto LABEL_121;
  }

  if (a1[2] < v23)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v23) = v12;
  }

  else
  {
    a1[1] = v23;
    *(*a1 + v28) = v12;
  }

  while (1)
  {
LABEL_35:
    if (v15 != 0.0)
    {
      v29 = fabs(v15);
      if (v29 >= 65536.0)
      {
        v30 = 49;
      }

      else
      {
        v30 = 53;
      }

      ProtobufEncoder.encodeVarint(_:)(v30);
      if (v29 >= 65536.0)
      {
        v32 = a1[1];
        v23 = v32 + 8;
        if (__OFADD__(v32, 8))
        {
          goto LABEL_123;
        }

        if (a1[2] < v23)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v23) = v15;
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v32) = v15;
        }
      }

      else
      {
        v31 = a1[1];
        v23 = v31 + 4;
        if (__OFADD__(v31, 4))
        {
          goto LABEL_122;
        }

        *&v15 = v15;
        if (a1[2] < v23)
        {
LABEL_132:
          *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v15);
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v31) = LODWORD(v15);
        }
      }
    }

    if (v14 == 0.0)
    {
      goto LABEL_57;
    }

    v33 = fabs(v14);
    if (v33 >= 65536.0)
    {
      v34 = 57;
    }

    else
    {
      v34 = 61;
    }

    ProtobufEncoder.encodeVarint(_:)(v34);
    if (v33 < 65536.0)
    {
      v35 = a1[1];
      v23 = v35 + 4;
      if (!__OFADD__(v35, 4))
      {
        *&v14 = v14;
        if (a1[2] >= v23)
        {
          a1[1] = v23;
          *(*a1 + v35) = LODWORD(v14);
          goto LABEL_57;
        }

        goto LABEL_136;
      }

      __break(1u);
      goto LABEL_127;
    }

    v36 = a1[1];
    v23 = v36 + 8;
    if (!__OFADD__(v36, 8))
    {
      break;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v12);
  }

  if (a1[2] < v23)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v23) = v14;
  }

  else
  {
    a1[1] = v23;
    *(*a1 + v36) = v14;
  }

  while (1)
  {
LABEL_57:
    if (v17 != 0.0)
    {
      v37 = fabs(v17);
      if (v37 >= 65536.0)
      {
        v38 = 65;
      }

      else
      {
        v38 = 69;
      }

      ProtobufEncoder.encodeVarint(_:)(v38);
      if (v37 >= 65536.0)
      {
        v40 = a1[1];
        v23 = v40 + 8;
        if (__OFADD__(v40, 8))
        {
          goto LABEL_131;
        }

        if (a1[2] < v23)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v23) = v17;
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v40) = v17;
        }
      }

      else
      {
        v39 = a1[1];
        v23 = v39 + 4;
        if (__OFADD__(v39, 4))
        {
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        *&v17 = v17;
        if (a1[2] < v23)
        {
LABEL_140:
          *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v17);
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v39) = LODWORD(v17);
        }
      }
    }

    v17 = v61;
    if (v16 == 0.0)
    {
      goto LABEL_79;
    }

    v41 = fabs(v16);
    if (v41 >= 65536.0)
    {
      v42 = 73;
    }

    else
    {
      v42 = 77;
    }

    ProtobufEncoder.encodeVarint(_:)(v42);
    if (v41 < 65536.0)
    {
      v43 = a1[1];
      v23 = v43 + 4;
      if (!__OFADD__(v43, 4))
      {
        *&v16 = v16;
        if (a1[2] >= v23)
        {
          a1[1] = v23;
          *(*a1 + v43) = LODWORD(v16);
          goto LABEL_79;
        }

        goto LABEL_144;
      }

      __break(1u);
      goto LABEL_135;
    }

    v44 = a1[1];
    v23 = v44 + 8;
    if (!__OFADD__(v44, 8))
    {
      break;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v14);
  }

  if (a1[2] < v23)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v23) = v16;
  }

  else
  {
    a1[1] = v23;
    *(*a1 + v44) = v16;
  }

  while (1)
  {
LABEL_79:
    v16 = v60;
    if (v61 != 0.0)
    {
      v45 = fabs(v61);
      if (v45 >= 65536.0)
      {
        v46 = 81;
      }

      else
      {
        v46 = 85;
      }

      ProtobufEncoder.encodeVarint(_:)(v46);
      if (v45 >= 65536.0)
      {
        v49 = a1[1];
        v23 = v49 + 8;
        if (__OFADD__(v49, 8))
        {
          goto LABEL_139;
        }

        if (a1[2] < v23)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v23) = v61;
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v49) = v61;
        }
      }

      else
      {
        v47 = a1[1];
        v23 = v47 + 4;
        if (__OFADD__(v47, 4))
        {
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v48 = v61;
        if (a1[2] < v23)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v23) = v48;
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v47) = v48;
        }
      }
    }

    if (v60 == 1.0)
    {
      goto LABEL_101;
    }

    v50 = fabs(v60);
    v51 = v50 >= 65536.0 ? 89 : 93;
    ProtobufEncoder.encodeVarint(_:)(v51);
    if (v50 >= 65536.0)
    {
      break;
    }

    v52 = a1[1];
    v23 = v52 + 4;
    if (!__OFADD__(v52, 4))
    {
      v53 = v60;
      if (a1[2] < v23)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v23) = v53;
      }

      else
      {
        a1[1] = v23;
        *(*a1 + v52) = v53;
      }

      goto LABEL_101;
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v16);
  }

  v54 = a1[1];
  v23 = v54 + 8;
  if (__OFADD__(v54, 8))
  {
    goto LABEL_143;
  }

  if (a1[2] < v23)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v23) = v60;
  }

  else
  {
    a1[1] = v23;
    *(*a1 + v54) = v60;
  }

LABEL_101:
  if (v10)
  {
    ProtobufEncoder.encodeVarint(_:)(0x60uLL);
    ProtobufEncoder.encodeVarint(_:)(v10 + 1);
  }

  if (v59)
  {
    ProtobufEncoder.encodeVarint(_:)(0x68uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (!v11 || (specialized ProtobufEncoder.messageField<A>(_:_:)(14), !v2))
  {
    if (v55)
    {
      ProtobufEncoder.encodeVarint(_:)(0x80uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if (v57)
    {
      ProtobufEncoder.encodeVarint(_:)(0x88uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if (v56)
    {
      ProtobufEncoder.encodeVarint(_:)(0x90uLL);
      ProtobufEncoder.encodeVarint(_:)(v56);
    }

    if ((v57 & 2) != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x98uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if (v58)
    {
      ProtobufEncoder.encodeVarint(_:)(0xA0uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }
  }
}

uint64_t one-time initialization function for oversizedScalarsWithoutEmoji()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  __swift_allocate_value_buffer(v7, static NSAttributedString.oversizedScalarsWithoutEmoji);
  __swift_project_value_buffer(v0, static NSAttributedString.oversizedScalarsWithoutEmoji);
  if (one-time initialization token for oversizedScalars != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, static NSAttributedString.oversizedScalars);
  (*(v1 + 16))(v6, v8, v0);
  v9 = [objc_opt_self() ic_emojiCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.subtracting(_:)();
  v10 = *(v1 + 8);
  v10(v3, v0);
  return (v10)(v6, v0);
}

uint64_t closure #1 in NSAttributedString.allFonts()(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CA0];
  outlined init with copy of Any?(a1, &v5, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  if (!v6)
  {
    return _sypSgWOhTm_6(&v5, &lazy cache variable for type metadata for Any?, v1 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  }

  outlined init with take of Any(&v5, v7);
  outlined init with copy of Any(v7, &v5);
  type metadata accessor for CTFontRef(0);
  swift_dynamicCast();
  specialized Set._Variant.insert(_:)(&v4, v3);

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t ResolvedStyledText.layoutProperties.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  v4 = *(v1 + 96);
  v21 = *(v1 + 112);
  v22 = v3;
  v5 = *(v1 + 128);
  v23 = *(v1 + 144);
  v6 = *(v1 + 64);
  v8 = *(v1 + 32);
  v17 = *(v1 + 48);
  v7 = v17;
  v18 = v6;
  v9 = *(v1 + 64);
  v10 = *(v1 + 96);
  v19 = *(v1 + 80);
  v11 = v19;
  v20 = v10;
  v12 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v13 = v16[0];
  v16[1] = v12;
  *(a1 + 96) = v21;
  *(a1 + 112) = v5;
  *(a1 + 128) = *(v1 + 144);
  *(a1 + 32) = v7;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v1 + 160);
  *(a1 + 144) = *(v1 + 160);
  *a1 = v13;
  *(a1 + 16) = v8;
  return outlined init with copy of TextLayoutProperties(v16, &v15);
}

uint64_t ResolvedStyledText.layoutProperties.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 144);
  v13[7] = *(v1 + 128);
  v13[8] = v4;
  v14 = *(v1 + 160);
  v5 = *(v1 + 64);
  v13[2] = *(v1 + 48);
  v13[3] = v5;
  v6 = *(v1 + 96);
  v13[4] = *(v1 + 80);
  v13[5] = v6;
  v13[6] = v3;
  v7 = *(v1 + 32);
  v13[0] = *(v1 + 16);
  v13[1] = v7;
  v8 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v8;
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = *(a1 + 144);
  v9 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v9;
  v10 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v10;
  v11 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v11;
  return outlined destroy of TextLayoutProperties(v13);
}

uint64_t ResolvedStyledText.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = a3;
  v4[24] = a4;
  return result;
}

uint64_t ResolvedStyledText.scaleFactorOverride.setter(uint64_t a1, char a2)
{
  v5 = swift_beginAccess();
  *(v2 + 200) = a1;
  *(v2 + 208) = a2 & 1;
  return (*(*v2 + 176))(v5);
}

uint64_t (*ResolvedStyledText.scaleFactorOverride.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ResolvedStyledText.scaleFactorOverride.modify;
}

uint64_t ResolvedStyledText.scaleFactorOverride.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(**(a1 + 24) + 176))(result);
  }

  return result;
}

void *ResolvedStyledText.storage.getter()
{
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

uint64_t ResolvedStyledText.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, uint64_t a2, uint64_t a3, __int16 *a4, char a5, __int16 *a6, uint64_t a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_allocObject();

  outlined consume of ResolvedTextSuffix(*a7, *(a7 + 8), *(a7 + 16), *(a7 + 24), *(a7 + 32), *(a7 + 40));
  v24 = *(a2 + 80);
  v25 = *(a2 + 112);
  v74 = *(a2 + 96);
  v26 = v74;
  v75 = v25;
  v27 = *(a2 + 112);
  v76 = *(a2 + 128);
  v28 = *(a2 + 16);
  v29 = *(a2 + 48);
  v70 = *(a2 + 32);
  v30 = v70;
  v71 = v29;
  v31 = *(a2 + 48);
  v32 = *(a2 + 80);
  v72 = *(a2 + 64);
  v33 = v72;
  v73 = v32;
  v34 = *(a2 + 16);
  v69[0] = *a2;
  v35 = v69[0];
  v69[1] = v34;
  *(v23 + 224) = a8;
  *(v23 + 232) = a9;
  *(v23 + 240) = a10;
  *(v23 + 248) = a11;
  *(v23 + 16) = v35;
  *(v23 + 32) = v28;
  v77 = *(a2 + 144);
  v36 = *a4;
  v37 = *a6;
  *(v23 + 200) = 0;
  *(v23 + 208) = 1;
  v38 = (v23 + 280);
  v78 = 1;
  *(v23 + 216) = a1;
  *(v23 + 256) = v36;
  *(v23 + 258) = a5;
  *(v23 + 260) = v37;
  *(v23 + 264) = a13;
  *(v23 + 272) = a14;
  *(v23 + 80) = v33;
  *(v23 + 96) = v24;
  *(v23 + 48) = v30;
  *(v23 + 64) = v31;
  v39 = *(a2 + 128);
  *(v23 + 160) = *(a2 + 144);
  *(v23 + 128) = v27;
  *(v23 + 144) = v39;
  *(v23 + 112) = v26;
  if (*(a3 + 32))
  {
    if (a1)
    {
      v66 = 0uLL;
      v67 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v68 = 1;
      v62 = BYTE8(v74);
      v63 = v75;
      v40 = *(a2 + 112);
      v60[6] = *(a2 + 96);
      v60[7] = v40;
      v60[8] = *(a2 + 128);
      v61 = *(a2 + 144);
      v41 = *(a2 + 48);
      v60[2] = *(a2 + 32);
      v60[3] = v41;
      v42 = *(a2 + 80);
      v60[4] = *(a2 + 64);
      v60[5] = v42;
      v43 = *(a2 + 16);
      v60[0] = *a2;
      v60[1] = v43;
      outlined init with copy of TextLayoutProperties(v69, v59);
      outlined init with copy of TextLayoutProperties(v69, v59);
      v44 = a1;
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v44, &v64, v60);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      outlined destroy of TextLayoutProperties(v69);
      v53 = v67;
      *(v23 + 312) = v66;
      *(v23 + 328) = v53;
      *(v23 + 344) = v68;
      v54 = v65;
      *v38 = v64;
      *(v23 + 296) = v54;
      *(v23 + 168) = v46;
      *(v23 + 176) = v48;
      *(v23 + 184) = v50;
      *(v23 + 192) = v52;
    }

    else
    {
      *(v23 + 312) = 0uLL;
      *(v23 + 328) = 0uLL;
      *v38 = 0uLL;
      *(v23 + 296) = 0uLL;
      *(v23 + 344) = 1;
      *(v23 + 168) = 0uLL;
      *(v23 + 184) = 0uLL;
    }
  }

  else
  {
    *(v23 + 312) = 0u;
    *(v23 + 328) = 0u;
    *v38 = 0u;
    *(v23 + 296) = 0u;
    *(v23 + 344) = 1;
    v55 = *(a3 + 16);
    *(v23 + 168) = *a3;
    *(v23 + 184) = v55;
  }

  return v23;
}

uint64_t ResolvedStyledText.init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, uint64_t a2, uint64_t a3, __int16 *a4, char a5, __int16 *a6, uint64_t a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;

  outlined consume of ResolvedTextSuffix(*a7, *(a7 + 8), *(a7 + 16), *(a7 + 24), *(a7 + 32), *(a7 + 40));
  v26 = *(a2 + 112);
  v28 = *(a2 + 80);
  v73 = *(a2 + 96);
  v27 = v73;
  v74 = v26;
  v29 = *(a2 + 112);
  v75 = *(a2 + 128);
  v30 = *(a2 + 48);
  v32 = *(a2 + 16);
  v69 = *(a2 + 32);
  v31 = v69;
  v70 = v30;
  v33 = *(a2 + 48);
  v34 = *(a2 + 80);
  v71 = *(a2 + 64);
  v35 = v71;
  v72 = v34;
  v36 = *(a2 + 16);
  v68[0] = *a2;
  v37 = v68[0];
  v68[1] = v36;
  *(v15 + 280) = 0u;
  *(v15 + 296) = 0u;
  *(v15 + 312) = 0u;
  *(v15 + 328) = 0u;
  *(v15 + 224) = a8;
  *(v15 + 232) = a9;
  *(v15 + 240) = a10;
  *(v15 + 248) = a11;
  *(v15 + 112) = v27;
  *(v15 + 128) = v29;
  *(v15 + 144) = *(a2 + 128);
  v76 = *(a2 + 144);
  v38 = *a4;
  v39 = *a6;
  *(v15 + 200) = 0;
  *(v15 + 208) = 1;
  v77 = 1;
  *(v15 + 344) = 1;
  *(v15 + 216) = a1;
  *(v15 + 256) = v38;
  *(v15 + 258) = a5;
  *(v15 + 260) = v39;
  *(v15 + 264) = a13;
  *(v15 + 272) = a14;
  *(v15 + 160) = *(a2 + 144);
  *(v15 + 48) = v31;
  *(v15 + 64) = v33;
  *(v15 + 80) = v35;
  *(v15 + 96) = v28;
  *(v15 + 16) = v37;
  *(v15 + 32) = v32;
  if (*(a3 + 32))
  {
    if (a1)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v67 = 1;
      v61 = BYTE8(v73);
      v62 = v74;
      v40 = *(a2 + 112);
      v59[6] = *(a2 + 96);
      v59[7] = v40;
      v59[8] = *(a2 + 128);
      v60 = *(a2 + 144);
      v41 = *(a2 + 48);
      v59[2] = *(a2 + 32);
      v59[3] = v41;
      v42 = *(a2 + 80);
      v59[4] = *(a2 + 64);
      v59[5] = v42;
      v43 = *(a2 + 16);
      v59[0] = *a2;
      v59[1] = v43;
      outlined init with copy of TextLayoutProperties(v68, v58);
      outlined init with copy of TextLayoutProperties(v68, v58);
      v44 = a1;
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v44, &v63, v59);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      outlined destroy of TextLayoutProperties(v68);
      v53 = v66;
      *(v15 + 312) = v65;
      *(v15 + 328) = v53;
      *(v15 + 344) = v67;
      v54 = v64;
      *(v15 + 280) = v63;
      *(v15 + 296) = v54;
      *(v15 + 168) = v46;
      *(v15 + 176) = v48;
      *(v15 + 184) = v50;
      *(v15 + 192) = v52;
    }

    else
    {
      *(v15 + 344) = 1;
      *(v15 + 168) = 0u;
      *(v15 + 184) = 0u;
    }
  }

  else
  {
    *(v15 + 344) = 1;
    v55 = *(a3 + 16);
    *(v15 + 168) = *a3;
    *(v15 + 184) = v55;
  }

  return v15;
}