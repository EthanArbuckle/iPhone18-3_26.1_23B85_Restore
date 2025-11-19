double storeEnumTagSinglePayload for Stepper(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
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
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
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
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
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
        v20 = &a1[v8 + 56] & ~v8;

        v19(v20);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 40) = 0u;
        *(a1 + 24) = 0u;
        *(a1 + 8) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 5) = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[10], v1);
  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t partial apply for closure #5 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(uint64_t (*a1)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(type metadata accessor for Binding() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = &v1[(v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)];

  return a1(&v1[v7], v10, v2, v3, v4, v5);
}

uint64_t partial apply for closure #2 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)()
{
  type metadata accessor for Binding();
  type metadata accessor for ClosedRange();

  return closure #2 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)();
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = v3 + *(*v2 + 64);
  v5 = (type metadata accessor for ClosedRange() - 8);
  v6 = (v4 + *(*v5 + 80)) & ~*(*v5 + 80);

  v7 = *(*(v1 - 8) + 8);
  v7(v0 + v3 + v2[10], v1);
  v7(v0 + v6, v1);
  v7(v0 + v6 + v5[11], v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #4 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)()
{
  type metadata accessor for Binding();
  type metadata accessor for ClosedRange();
  return specialized Binding.wrappedValue.setter();
}

uint64_t objectdestroy_24Tm_0()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = v3 + *(*v2 + 64);
  v5 = (type metadata accessor for ClosedRange() - 8);
  v6 = (v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);

  v10 = *(*(v1 - 8) + 8);
  v10(v0 + v3 + v2[10], v1);
  v10(v0 + v6, v1);
  v10(v0 + v6 + v5[11], v1);
  (*(v8 + 8))(v0 + v9, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(uint64_t (*a1)(char *, char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(type metadata accessor for Binding() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(type metadata accessor for ClosedRange() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = &v1[(v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)];

  return a1(&v1[v7], &v1[v10], v13, v2, v3, v4, v5);
}

uint64_t type metadata completion function for _SegmentedControl()
{
  type metadata accessor for _SegmentedControlContainer();
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _SegmentedControl(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v6 + 64);
  v9 = *(v4 - 8);
  v10 = *(v9 + 80);
  v11 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 9;
  v12 = (v11 & ~v10) + *(v9 + 64);
  v13 = (*(v9 + 80) | *(v6 + 80)) & 0x100000;
  v14 = *a2;
  *a1 = *a2;
  if ((v10 | v7) > 7 || v13 != 0 || v12 > 0x18)
  {
    a1 = (v14 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16)));
  }

  else
  {
    v25 = v4;
    v26 = ~v10;
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = *(v6 + 16);

    v19(v17 + 1, v18 + 1, v5);
    v21 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    v23 = *(v9 + 16);

    v23((a1 + v11) & v26, (a2 + v11) & v26, v25);
  }

  return a1;
}

uint64_t destroy for _SegmentedControl(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  (*(v5 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7);
  v8 = ((v7 + 16) & ~v7) + *(v6 + 56) + 7;

  v9 = *(*(a2 + 24) - 8);
  v10 = *(v9 + 8);
  v11 = (a1 + *(v9 + 80) + (v8 & 0xFFFFFFFFFFFFFFF8) + 9) & ~*(v9 + 80);

  return v10(v11);
}

void *initializeWithCopy for _SegmentedControl(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(a3 + 16);
  v9 = *(*(v8 - 8) + 16);
  v10 = *(v8 - 8) + 16;
  v11 = *(*(v8 - 8) + 80);
  v12 = v6 + v11 + 8;
  v13 = v7 + v11 + 8;

  v9(v12 & ~v11, v13 & ~v11, v8);
  v14 = ((v11 + 16) & ~v11) + *(v10 + 48) + 7;
  v15 = (a1 + v14) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  v17 = *(a3 + 24);
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v20 = *(v18 + 80);
  v21 = (v14 & 0xFFFFFFFFFFFFFFF8) + v20 + 9;
  v22 = a1 + v21;
  v23 = a2 + v21;

  v19(v22 & ~v20, v23 & ~v20, v17);
  return a1;
}

void *assignWithCopy for _SegmentedControl(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  v14 = *(*(a3 + 24) - 8);
  (*(v14 + 24))((a1 + (v11 & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 9) & ~*(v14 + 80), (a2 + (v11 & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 9) & ~*(v14 + 80));
  return a1;
}

void *initializeWithTake for _SegmentedControl(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  (*(v8 + 32))((v6 + v10 + 8) & ~v10, (v7 + v10 + 8) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 32) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v14 = *(*(a3 + 24) - 8);
  (*(v14 + 32))((a1 + (v11 & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 9) & ~*(v14 + 80), (a2 + (v11 & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 9) & ~*(v14 + 80));
  return a1;
}

void *assignWithTake for _SegmentedControl(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  v14 = *(*(a3 + 24) - 8);
  (*(v14 + 40))((a1 + (v11 & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 9) & ~*(v14 + 80), (a2 + (v11 & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 9) & ~*(v14 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _SegmentedControl(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v4 + 80);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((*(*(*(a3 + 16) - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 9;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v15 = (v13 & ~v11) + *(*(v7 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v6 < v9)
      {
        return (*(v8 + 48))((a1 + v13) & ~v11, v9, v7);
      }

      v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v23 + v10 + 8) & ~v10);
      }

      v24 = *v23;
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
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

void storeEnumTagSinglePayload for _SegmentedControl(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v8 + 84);
  v11 = *(v6 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = *(v8 + 80);
  if (v10 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v8 + 84);
  }

  v15 = ((v12 + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v16 = ((v15 + v13) & ~v13) + *(v8 + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v21 = (v20 >> (8 * v16)) + 1;
    if (v16)
    {
      v24 = v20 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v24;
          if (v19 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v20;
          if (v19 > 1)
          {
LABEL_14:
            if (v19 == 2)
            {
              *&a1[v16] = v21;
            }

            else
            {
              *&a1[v16] = v21;
            }

            return;
          }
        }

LABEL_51:
        if (v19)
        {
          a1[v16] = v21;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v19 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
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
  if (v9 >= v10)
  {
    if (v9 >= a2)
    {
      v27 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v29 = *(v6 + 56);

        v29((v27 + v11 + 8) & ~v11);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v28 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v28 = a2 - 1;
        }

        *v27 = v28;
      }
    }

    else
    {
      v26 = ~v9 + a2;
      bzero(a1, ((v12 + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
      if (v15 <= 3)
      {
        *a1 = v26;
      }

      else
      {
        *a1 = v26;
      }
    }
  }

  else
  {
    v25 = *(v8 + 56);

    v25(&a1[v15 + v13] & ~v13);
  }
}

uint64_t key path getter for EnvironmentValues.segmentedControlStyle : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SegmentedControlStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SegmentedControlStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SegmentedControlStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SegmentedControlStyleKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.segmentedControlStyle : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<SegmentedControlStyleKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SegmentedControlStyleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t _SegmentedControl.init(configuration:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  MEMORY[0x1EEE9AC00](a1);
  v5 = type metadata accessor for PickerStyleConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = type metadata accessor for _SegmentedControlContainer();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  (*(v6 + 16))(v8, a1, v5, v10);
  v13 = (*(v6 + 32))(v12, v8, v5);
  a2(v13);
  _VariadicView.Tree.init(root:content:)();
  return (*(v6 + 8))(a1, v5);
}

uint64_t static _SegmentedControl._makeView(view:inputs:)()
{
  type metadata accessor for _SegmentedControlContainer();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _SegmentedControl();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static _SegmentedControl._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v9[2] = type metadata accessor for _SegmentedControl();
  type metadata accessor for _SegmentedControlContainer();
  v10 = type metadata accessor for _VariadicView.Tree();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _SegmentedControl<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t _SegmentedControlContainer.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, v7);
  v3 = type metadata accessor for PickerStyleConfiguration();
  v4 = PickerStyleConfiguration.selectedBoundIndices(children:)(v7, v3);
  outlined init with copy of SubviewsCollection(v7, v6);
  ResolvedSegmentedControl.init(selectedIndices:segments:)(v4, v6, a2);
  return outlined destroy of SubviewsCollection(v7);
}

double ResolvedSegmentedControl.init(selectedIndices:segments:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 104) = swift_getKeyPath();
  *(a3 + 112) = 0;
  outlined init with copy of SubviewsCollection(a2, a3);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a1;
  type metadata accessor for Int?();
  Binding.init(get:set:)();
  outlined destroy of SubviewsCollection(a2);
  result = *&v12;
  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
  *(a3 + 88) = v14;
  *(a3 + 96) = a1;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance _SegmentedControlContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for _SegmentedControlContainer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void closure #1 in ResolvedSegmentedControl.init(selectedIndices:segments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    type metadata accessor for Binding<Int?>();
    MEMORY[0x18D00ACC0](v3, v4, v5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #2 in ResolvedSegmentedControl.init(selectedIndices:segments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v5 = a4 + 40;
    do
    {

      dispatch thunk of AnyLocation.set(_:transaction:)();

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ResolvedSegmentedControl@<X0>(uint64_t *a1@<X8>)
{
  v3 = specialized Environment.wrappedValue.getter(*(v1 + 104), *(v1 + 112));
  v4 = (*(*v3 + 80))(v1);

  *a1 = v4;
  return result;
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedSegmentedControl and conformance ResolvedSegmentedControl()
{
  result = lazy protocol witness table cache variable for type ResolvedSegmentedControl and conformance ResolvedSegmentedControl;
  if (!lazy protocol witness table cache variable for type ResolvedSegmentedControl and conformance ResolvedSegmentedControl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSegmentedControl and conformance ResolvedSegmentedControl);
  }

  return result;
}

uint64_t Shape.fillShadow(color:radius:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v13 = *(a2 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, a2, v14);
  (*(v13 + 32))(a3, v16, a2);
  v17 = a3 + *(type metadata accessor for _ShadowView() + 36);
  *v17 = a1;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
}

uint64_t _ShadowView.init(shape:effect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _ShadowView();
  v13 = a4 + *(result + 36);
  *v13 = a2;
  *(v13 + 8) = a5;
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;
  return result;
}

double _ShadowView.effect.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36) + 8);

  return v2;
}

uint64_t _ShadowView.effect.setter(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = v5 + *(a2 + 36);

  *v10 = a1;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  return result;
}

uint64_t static _ShadowView._makeView(view:inputs:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  type metadata accessor for _ShadowView();
  type metadata accessor for _GraphValue();
  v3 = _GraphValue.value.getter();
  swift_beginAccess();
  ShadowChild.init(view:environment:)(v3, *(v2 + 16));
  type metadata accessor for ResolvedShadowView();
  type metadata accessor for ShadowChild();

  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  static View.makeDebuggableView(view:inputs:)();
}

unint64_t ShadowChild.init(view:environment:)(unsigned int a1, uint64_t a2)
{
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  PropertyList.Tracker.init()();
  return a1 | (a2 << 32);
}

uint64_t *initializeBufferWithCopyOfBuffer for _ShadowView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
  }

  return v3;
}

uint64_t initializeWithCopy for _ShadowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);

  return a1;
}

uint64_t assignWithCopy for _ShadowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  return a1;
}

uint64_t initializeWithTake for _ShadowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  return a1;
}

uint64_t assignWithTake for _ShadowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShadowView(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
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

_DWORD *storeEnumTagSinglePayload for _ShadowView(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
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
      v18[2] = 0;
      v18[3] = 0;
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

uint64_t *initializeBufferWithCopyOfBuffer for ResolvedShadowView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 53 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(v11 + 16);
    v12 = *(v11 + 32);
    v14 = *v11;
    *(v10 + 45) = *(v11 + 45);
    *(v10 + 16) = v13;
    *(v10 + 32) = v12;
    *v10 = v14;
  }

  return v3;
}

uint64_t initializeWithCopy for ResolvedShadowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  v11 = *v8;
  *(v7 + 45) = *(v8 + 45);
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *v7 = v11;
  return a1;
}

uint64_t assignWithCopy for ResolvedShadowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 52) = *(v8 + 52);
  return a1;
}

uint64_t initializeWithTake for ResolvedShadowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  v11 = *v8;
  *(v7 + 45) = *(v8 + 45);
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *v7 = v11;
  return a1;
}

uint64_t assignWithTake for ResolvedShadowView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 52) = *(v8 + 52);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedShadowView(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  if (*(a1 + ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 53))
  {
    return v5 + *a1 + 1;
  }

  if (v5)
  {
    return (*(v4 + 48))();
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ResolvedShadowView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 53;
  if (v7 >= a2)
  {
    if (v7 < a3)
    {
      a1[v8] = 0;
    }

    if (a2)
    {
      v10 = *(v6 + 56);

      v10();
    }
  }

  else
  {
    v9 = ~v7 + a2;
    bzero(a1, v8);
    *a1 = v9;
    if (v7 < a3)
    {
      a1[v8] = 1;
    }
  }
}

uint64_t ShadowChild.updateValue()(uint64_t a1)
{
  v54[7] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v46 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v3;
  v4 = type metadata accessor for ResolvedShadowView();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v40 - v5;
  v47 = v1;
  v6 = type metadata accessor for _ShadowView();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v51 = v14;
  v15 = *(v14 + 48);
  Value = AGGraphGetValue();
  LOBYTE(v1) = v17;
  v18 = *(v6 - 8);
  (*(v18 + 16))(v13, Value, v6);
  v13[v15] = v1 & 1;
  v19 = AGGraphGetValue();
  v22 = *v19;
  v21 = v19[1];
  if ((v1 & 1) != 0 || (v23 = v20, v24 = v19[1], OutputValue = AGGraphGetOutputValue(), v21 = v24, !OutputValue))
  {
    v26 = v21;
  }

  else
  {
    if ((v23 & 1) == 0)
    {
      return (*(v8 + 8))(v13, v51);
    }

    v26 = v24;

    swift_retain_n();
    v27 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

    if ((v27 & 1) == 0)
    {

      return (*(v8 + 8))(v13, v51);
    }
  }

  v43 = v26;
  PropertyList.Tracker.reset()();
  v44 = v8;
  v42 = v22;
  v40 = *(v8 + 16);
  v29 = v51;
  v40(v10, v13, v51);
  v41 = v4;
  v30 = *(v18 + 8);

  v30(v10, v6);

  EnvironmentValues.init(_:tracker:)();
  *&v54[3] = *&v54[5];
  _ShadowEffect.resolve(in:)();

  v40(v10, v13, v29);
  v31 = v46;
  v32 = v45;
  v33 = v47;
  (*(v46 + 16))(v45, v10, v47);
  v30(v10, v6);
  v34 = v48;
  v35 = (*(v31 + 32))(v48, v32, v33);
  v36 = v41;
  v37 = v34 + *(v41 + 36);
  v38 = v53;
  *v37 = v52;
  *(v37 + 16) = v38;
  *(v37 + 32) = *v54;
  *(v37 + 45) = *(&v54[1] + 5);
  MEMORY[0x1EEE9AC00](v35);
  *(&v40 - 2) = v49;
  *(&v40 - 1) = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v34, partial apply for closure #1 in StatefulRule.value.setter, (&v40 - 4), v36, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v39);

  (*(v50 + 8))(v34, v36);
  return (*(v44 + 8))(v13, v29);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance ShadowChild<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResolvedShadowView();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ShadowChild<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

double static ResolvedShadowView._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  v6 = a2[3];
  v21 = a2[2];
  v22 = v6;
  v23 = a2[4];
  v24 = *(a2 + 20);
  v7 = a2[1];
  v19 = *a2;
  v20 = v7;
  v8 = type metadata accessor for ResolvedShadowView();
  v18 = v5;
  v9 = a2[1];
  v12 = *a2;
  v13 = v9;
  v14 = a2[2];
  outlined init with copy of _GraphInputs(&v19, v25);
  swift_getWitnessTable();
  static Animatable.makeAnimatable(value:inputs:)();
  v25[0] = v12;
  v25[1] = v13;
  v25[2] = v14;
  outlined destroy of _GraphInputs(v25);
  _GraphValue.init(_:)();
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v12 = v19;
  v13 = v20;
  WitnessTable = swift_getWitnessTable();
  return static SizeDependentLeafView.makeLeafView(view:inputs:)(&v18, &v12, v8, WitnessTable, a3);
}

double ResolvedShadowView.content(size:)(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  (*(*(a2 + 24) + 24))(v12, *(a2 + 16), 0.0, 0.0, a3, a4);
  v7 = swift_allocObject();
  v8 = v12[1];
  *(v7 + 16) = v12[0];
  *(v7 + 32) = v8;
  *(v7 + 48) = v13;
  v9 = v4 + *(a2 + 36);
  v10 = *(v9 + 16);
  *(v7 + 56) = *v9;
  *(v7 + 72) = v10;
  *(v7 + 88) = *(v9 + 32);
  *(v7 + 101) = *(v9 + 45);
  *a1 = v7 | 0x7000000000000000;
  return 0.0;
}

uint64_t ResolvedShadowView.animatableData.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 24))(v3, v4, v6);
  v7 = (v1 + *(a1 + 36));
  v8 = v7[1];
  v10 = *v7;
  v11 = v8;
  v12[0] = v7[2];
  *(v12 + 13) = *(v7 + 45);
  ResolvedShadowStyle.animatableData.getter();
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
  return AnimatablePair.init(_:_:)();
}

uint64_t ResolvedShadowView.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized ResolvedShadowView.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*protocol witness for Animatable.animatableData.modify in conformance ResolvedShadowView<A>(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = v2;
  *(v6 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  ResolvedShadowView.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance ResolvedShadowView<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance ResolvedShadowView<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized ResolvedShadowView.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized ResolvedShadowView.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double protocol witness for ContentResponder.contentPath(size:) in conformance ResolvedShadowView<A>@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 6;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ResolvedShadowView<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedShadowView<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

void type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>(255);
    type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
    lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(a4, a5);
    v8 = type metadata accessor for AnimatablePair();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, Float>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, Float>)
  {
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Float, Float>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

uint64_t specialized ResolvedShadowView.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v12[-v5];
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = lazy protocol witness table accessor for type AnimatablePair<Float, Float> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
  *&v15 = AssociatedTypeWitness;
  *(&v15 + 1) = v8;
  *&v16 = AssociatedConformanceWitness;
  *(&v16 + 1) = v10;
  type metadata accessor for AnimatablePair();
  AnimatablePair.subscript.getter();
  v15 = *&v12[8];
  v16 = v13;
  v17 = v14;
  (*(v3 + 32))(v6, v2, v3);
  return ResolvedShadowStyle.animatableData.setter();
}

uint64_t EnvironmentValues.tableColumnHeadersVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.tableColumnHeadersVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.tableColumnHeadersVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.tableColumnHeadersVisibility.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t View.tableColumnHeaders(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Visibility?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMaTm_1(255, &lazy cache variable for type metadata for Visibility?, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility?>);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E697DB50]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableColumnHeadersVisibilityKey>);
    }
  }
}

void FetchedResults.nsSortDescriptors.getter()
{
  if (*(*(v0 + 8) + *((*MEMORY[0x1E69E7D40] & **(v0 + 8)) + 0x70)))
  {

    v1 = DeferredFetchRequest.result.getter();

    v2 = [v1 sortDescriptors];

    if (v2)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void key path setter for FetchedResults.nsSortDescriptors : <A>FetchedResults<A>(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);

  v5 = v2;
  v4 = v3;
  FetchedResults.nsSortDescriptors.setter();
}

void FetchedResults.nsSortDescriptors.setter()
{
  if (*(*(v0 + 8) + *((*MEMORY[0x1E69E7D40] & **(v0 + 8)) + 0x70)))
  {

    v1 = DeferredFetchRequest.result.getter();

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setSortDescriptors_];

    v3.value.super.isa = 0;
    FetchController.update(in:)(v3);
  }

  else
  {
    __break(1u);
  }
}

void (*FetchedResults.nsSortDescriptors.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  v8 = v2[1];
  v5[3] = a2;
  v5[4] = v7;
  v5[5] = v8;
  *v5 = v7;
  v5[1] = v8;
  FetchedResults.nsSortDescriptors.getter();
  v6[2] = v9;
  return FetchedResults.nsSortDescriptors.modify;
}

void FetchedResults.nsSortDescriptors.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v3;
    v6 = v4;

    FetchedResults.nsSortDescriptors.setter();
  }

  else
  {
    v7 = v3;
    v8 = v4;
    FetchedResults.nsSortDescriptors.setter();
  }

  free(v2);
}

void FetchedResults.nsPredicate.getter()
{
  if (*(*(v0 + 8) + *((*MEMORY[0x1E69E7D40] & **(v0 + 8)) + 0x70)))
  {

    v1 = DeferredFetchRequest.result.getter();

    [v1 predicate];
  }

  else
  {
    __break(1u);
  }
}

void key path setter for FetchedResults.nsPredicate : <A>FetchedResults<A>(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a2;
  type metadata accessor for FetchedResults();
  v5 = v2;
  v6 = v3;
  v7 = v4;
  specialized FetchedResults.nsPredicate.setter(v2);
}

void FetchedResults.nsPredicate.setter(void *a1)
{
  specialized FetchedResults.nsPredicate.setter(a1);
}

void (*FetchedResults.nsPredicate.modify(void *a1, uint64_t a2))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  v8 = v2[1];
  v5[3] = a2;
  v5[4] = v7;
  v5[5] = v8;
  *v5 = v7;
  v5[1] = v8;
  FetchedResults.nsPredicate.getter();
  v6[2] = v9;
  return FetchedResults.nsPredicate.modify;
}

void FetchedResults.nsPredicate.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[2];
  v5 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v6 = v3;
    v7 = v5;
    v8 = v4;
    specialized FetchedResults.nsPredicate.setter(v3);
  }

  else
  {
    v9 = v5;
    v10 = v4;
    specialized FetchedResults.nsPredicate.setter(v3);
  }

  free(v2);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance FetchedResults<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Collection.indices.getter in conformance FetchedResults<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance FetchedResults<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance FetchedResults<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance FetchedResults<A>()
{
  swift_getWitnessTable();
  v1 = specialized Collection._copyToContiguousArray()();
  v2 = *v0;

  return v1;
}

uint64_t FetchRequest.Configuration.nsSortDescriptors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *FetchRequest.Configuration.nsPredicate.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t FetchRequest.projectedValue.getter(uint64_t a1)
{
  v3 = v1[3];
  v20 = v1[2];
  v21 = v3;
  v22 = v1[4];
  v4 = v1[1];
  v18 = *v1;
  v19 = v4;
  type metadata accessor for MainActor();
  v5 = *(*(a1 - 8) + 16);
  v5(v17, &v18, a1);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = v18;
  *(v7 + 56) = v19;
  v9 = v21;
  *(v7 + 72) = v20;
  v10 = MEMORY[0x1E69E85E0];
  *(v7 + 88) = v9;
  *(v7 + 104) = v22;
  *(v7 + 16) = v6;
  *(v7 + 24) = v10;
  v11 = *(a1 + 16);
  *(v7 + 32) = v11;
  *(v7 + 40) = v8;
  v5(v17, &v18, a1);
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  v14 = v18;
  *(v13 + 56) = v19;
  v15 = v21;
  *(v13 + 72) = v20;
  *(v13 + 88) = v15;
  *(v13 + 104) = v22;
  *(v13 + 40) = v14;
  type metadata accessor for FetchRequest.Configuration();
  return Binding.init(get:set:)();
}

void closure #1 in FetchRequest.projectedValue.getter(uint64_t *a1@<X8>)
{
  v6 = DeferredFetchRequest.result.getter();
  v2 = [v6 sortDescriptors];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = [v6 predicate];
    *a1 = v4;
    a1[1] = v5;
  }

  else
  {
    __break(1u);
  }
}

void closure #2 in FetchRequest.projectedValue.getter(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = DeferredFetchRequest.result.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setSortDescriptors_];

  [v3 setPredicate_];
  type metadata accessor for FetchRequest();
  FetchRequest.update(_:)();
}

__n128 FetchRequest.init(entity:sortDescriptors:predicate:animation:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  type metadata accessor for DeferredFetchRequest();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v11 = DeferredFetchRequest.__allocating_init(_:)(partial apply for closure #1 in FetchRequest.init(entity:sortDescriptors:predicate:animation:), v10);

  v12 = a1;
  v13 = a3;
  v14 = Transaction.init(animation:)();
  FetchRequest.init(deferredFetchRequest:transaction:)(v11, v14, v17);

  v15 = v17[3];
  *(a5 + 32) = v17[2];
  *(a5 + 48) = v15;
  *(a5 + 64) = v17[4];
  result = v17[1];
  *a5 = v17[0];
  *(a5 + 16) = result;
  return result;
}

id closure #1 in FetchRequest.init(entity:sortDescriptors:predicate:animation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest);
  v5 = NSFetchRequest.__allocating_init()();
  [v5 setEntity_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v5 setSortDescriptors_];

  [v5 setPredicate_];
  return v5;
}

uint64_t FetchRequest.Configuration<>.sortDescriptors.getter(uint64_t a1)
{
  v9[5] = *v1;
  v9[2] = *(a1 + 16);
  type metadata accessor for [NSSortDescriptor]();
  v3 = v2;
  v4 = type metadata accessor for SortDescriptor();
  v5 = lazy protocol witness table accessor for type [NSSortDescriptor] and conformance [A]();

  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FetchRequest.Configuration<>.sortDescriptors.getter, v9, v3, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);

  return v7;
}

uint64_t key path setter for FetchRequest.Configuration<>.sortDescriptors : <A>FetchRequest<A>.Configuration()
{
  v0 = type metadata accessor for FetchRequest.Configuration();

  return FetchRequest.Configuration<>.sortDescriptors.setter(v1, v0);
}

uint64_t FetchRequest.Configuration<>.sortDescriptors.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v10[5] = a1;
  v10[2] = *(a2 + 16);
  type metadata accessor for SortDescriptor();
  v4 = type metadata accessor for Array();
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FetchRequest.Configuration<>.sortDescriptors.setter, v10, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  *v3 = v8;
  return result;
}

uint64_t closure #1 in FetchRequest<>.init(sortDescriptors:predicate:animation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SortDescriptor();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
  (*(v5 + 16))(v7, a1, v4);
  result = NSSortDescriptor.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t (*FetchRequest.Configuration<>.sortDescriptors.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = FetchRequest.Configuration<>.sortDescriptors.getter(a2);
  return FetchRequest.Configuration<>.sortDescriptors.modify;
}

uint64_t FetchRequest.Configuration<>.sortDescriptors.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return FetchRequest.Configuration<>.sortDescriptors.setter(*a1, v2);
  }

  FetchRequest.Configuration<>.sortDescriptors.setter(v3, v2);
}

uint64_t FetchedResults<>.sortDescriptors.getter(uint64_t a1)
{
  v12 = *v1;
  FetchedResults.nsSortDescriptors.getter();
  v11[5] = v3;
  v11[2] = *(a1 + 16);
  type metadata accessor for [NSSortDescriptor]();
  v5 = v4;
  v6 = type metadata accessor for SortDescriptor();
  v7 = lazy protocol witness table accessor for type [NSSortDescriptor] and conformance [A]();
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FetchedResults<>.sortDescriptors.getter, v11, v5, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);

  return v9;
}

void key path setter for FetchedResults<>.sortDescriptors : <A>FetchedResults<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = type metadata accessor for FetchedResults();

  v7 = v3;
  v6 = v4;
  FetchedResults<>.sortDescriptors.setter(v2, v5);
}

void FetchedResults<>.sortDescriptors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  v13 = v4;
  v14 = v3;
  v12[5] = a1;
  v12[2] = *(a2 + 16);
  type metadata accessor for SortDescriptor();
  v5 = type metadata accessor for Array();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
  v7 = v4;
  v8 = v3;
  WitnessTable = swift_getWitnessTable();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FetchRequest<>.init(sortDescriptors:predicate:animation:), v12, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  FetchedResults.nsSortDescriptors.setter();
  v11 = v13;
}

uint64_t closure #1 in FetchRequest.Configuration<>.sortDescriptors.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SortDescriptor();
  v5 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  SortDescriptor.init<A>(_:comparing:)();
  v9 = *(v4 - 8);
  result = (*(v9 + 48))(v7, 1, v4);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v4);
  }

  __break(1u);
  return result;
}

void (*FetchedResults<>.sortDescriptors.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v6 = *v2;
  v7 = v2[1];
  v5[3] = a2;
  v5[4] = v6;
  v5[5] = v7;
  *v5 = v6;
  v5[1] = v7;
  v5[2] = FetchedResults<>.sortDescriptors.getter(a2);
  return FetchedResults<>.sortDescriptors.modify;
}

void FetchedResults<>.sortDescriptors.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 24);
  if (a2)
  {
    v7 = v4;
    v8 = v5;

    FetchedResults<>.sortDescriptors.setter(v9, v6);
  }

  else
  {
    v10 = v4;
    v11 = v5;
    FetchedResults<>.sortDescriptors.setter(v3, v6);
  }

  free(v2);
}

void specialized FetchedResults.nsPredicate.setter(uint64_t a1)
{
  if (*(*(v1 + 8) + *((*MEMORY[0x1E69E7D40] & **(v1 + 8)) + 0x70)))
  {

    v3 = DeferredFetchRequest.result.getter();

    [v3 setPredicate_];

    v4.value.super.isa = 0;
    FetchController.update(in:)(v4);
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for [NSSortDescriptor]()
{
  if (!lazy cache variable for type metadata for [NSSortDescriptor])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSSortDescriptor);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [NSSortDescriptor]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [NSSortDescriptor] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NSSortDescriptor] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSSortDescriptor] and conformance [A])
  {
    type metadata accessor for [NSSortDescriptor]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NSSortDescriptor] and conformance [A]);
  }

  return result;
}

uint64_t assignWithCopy for FetchedResults(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t *assignWithTake for FetchRequest(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<NSManagedObjectContext>.Content(v6, v7);
  v8 = *(a2 + 32);
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a1 + 32);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 32) = v8;
  outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(v9, v10, v11);
  v12 = a1[5];
  v13 = a2[5];
  if (!v12)
  {
    goto LABEL_5;
  }

  if (!v13)
  {
    v15 = type metadata accessor for FetchedResults();
    (*(*(v15 - 8) + 8))(a1 + 5, v15);
LABEL_5:
    *(a1 + 5) = *(a2 + 5);
    goto LABEL_6;
  }

  a1[5] = v13;

  v14 = a1[6];
  a1[6] = a2[6];

LABEL_6:
  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  return a1;
}

void *assignWithCopy for FetchRequest.Configuration(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a1[1];
  v5 = a2[1];
  a1[1] = v5;
  v6 = v5;

  return a1;
}

unint64_t lazy protocol witness table accessor for type NSManagedObjectContext and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSManagedObjectContext and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSManagedObjectContext and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSManagedObjectContext);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSManagedObjectContext and conformance NSObject);
  }

  return result;
}

uint64_t destroy for FoundationProgressView(uint64_t a1)
{
  if (*(a1 + 32))
  {
  }
}

uint64_t initializeWithCopy for FoundationProgressView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = *(a2 + 32);
  v7 = v4;
  if (v6)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v6;
    v8 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v8;
  }

  else
  {
    v9 = *(a2 + 24);
    *v5 = *(a2 + 8);
    v5[1] = v9;
    v5[2] = *(a2 + 40);
  }

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for FoundationProgressView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v7)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      outlined destroy of NSProgress.UIState(a1 + 8);
      v8 = *(a2 + 40);
      v9 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v9;
      *(a1 + 40) = v8;
    }
  }

  else if (v7)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v11;
    *(a1 + 8) = v10;
  }

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t outlined destroy of NSProgress.UIState(uint64_t a1)
{

  return a1;
}

uint64_t assignWithTake for FoundationProgressView(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    outlined destroy of NSProgress.UIState(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_6;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

LABEL_6:
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FoundationProgressView.Body()
{
  type metadata accessor for SubscriptionLifetime<Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>>();
  swift_allocObject();
  SubscriptionLifetime.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type FoundationProgressView.Body.BodyAttribute and conformance FoundationProgressView.Body.BodyAttribute();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type FoundationProgressView.Body.BodyAttribute.Value and conformance FoundationProgressView.Body.BodyAttribute.Value();
  static View.makeDebuggableViewList(view:inputs:)();
}

double protocol witness for View.body.getter in conformance FoundationProgressView@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for State<NSProgress.UIState?>(0, &lazy cache variable for type metadata for State<NSProgress.UIState?>, MEMORY[0x1E6981790]);
  v4 = v3;
  State.projectedValue.getter();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  *(a1 + 56) = v9;
  return result;
}

void type metadata accessor for NSProgress.UIState?()
{
  if (!lazy cache variable for type metadata for NSProgress.UIState?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NSProgress.UIState?);
    }
  }
}

void type metadata accessor for SubscriptionLifetime<Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>>()
{
  if (!lazy cache variable for type metadata for SubscriptionLifetime<Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>>)
  {
    type metadata accessor for Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>();
    lazy protocol witness table accessor for type ResolvedProgressView and conformance ResolvedProgressView(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState> and conformance Publishers.Map<A, B>, type metadata accessor for Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>);
    v0 = type metadata accessor for SubscriptionLifetime();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SubscriptionLifetime<Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>>);
    }
  }
}

void type metadata accessor for Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>()
{
  if (!lazy cache variable for type metadata for Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>)
  {
    type metadata accessor for Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>();
    lazy protocol witness table accessor for type ResolvedProgressView and conformance ResolvedProgressView(&lazy protocol witness table cache variable for type Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>> and conformance Publishers.CombineLatest4<A, B, C, D>, type metadata accessor for Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>);
    v0 = type metadata accessor for Publishers.Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>);
    }
  }
}

void type metadata accessor for Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>()
{
  if (!lazy cache variable for type metadata for Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>)
  {
    type metadata accessor for NSObject.KeyValueObservingPublisher<NSProgress, Int64>(255, &lazy cache variable for type metadata for NSObject.KeyValueObservingPublisher<NSProgress, Int64>);
    type metadata accessor for NSObject.KeyValueObservingPublisher<NSProgress, Int64>(255, &lazy cache variable for type metadata for NSObject.KeyValueObservingPublisher<NSProgress, String>);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<NSProgress, Int64> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<NSProgress, Int64> and conformance NSObject.KeyValueObservingPublisher<A, B>, &lazy cache variable for type metadata for NSObject.KeyValueObservingPublisher<NSProgress, Int64>);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<NSProgress, Int64> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<NSProgress, String> and conformance NSObject.KeyValueObservingPublisher<A, B>, &lazy cache variable for type metadata for NSObject.KeyValueObservingPublisher<NSProgress, String>);
    v0 = type metadata accessor for Publishers.CombineLatest4();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>);
    }
  }
}

unint64_t type metadata accessor for NSProgress()
{
  result = lazy cache variable for type metadata for NSProgress;
  if (!lazy cache variable for type metadata for NSProgress)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSProgress);
  }

  return result;
}

void type metadata accessor for NSObject.KeyValueObservingPublisher<NSProgress, Int64>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for NSProgress();
    v3 = type metadata accessor for NSObject.KeyValueObservingPublisher();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<NSProgress, Int64> and conformance NSObject.KeyValueObservingPublisher<A, B>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSObject.KeyValueObservingPublisher<NSProgress, Int64>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ResolvedProgressView and conformance ResolvedProgressView(unint64_t *a1, void (*a2)(uint64_t))
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

id FoundationProgressView.Body.BodyAttribute.updateValue()()
{
  v87 = *MEMORY[0x1E69E9840];
  type metadata accessor for NSObject.KeyValueObservingPublisher<NSProgress, Int64>(0, &lazy cache variable for type metadata for NSObject.KeyValueObservingPublisher<NSProgress, String>);
  v59 = v1;
  v63 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v55 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v54 = v53 - v4;
  type metadata accessor for NSObject.KeyValueObservingPublisher<NSProgress, Int64>(0, &lazy cache variable for type metadata for NSObject.KeyValueObservingPublisher<NSProgress, Int64>);
  v56 = v5;
  v61 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  type metadata accessor for Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>();
  v12 = *(v11 - 8);
  v64 = v11;
  v65 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v68 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Publishers.Map<Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>, NSProgress.UIState>();
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v58 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for NSProgress.UIStateSubscriber();
  MEMORY[0x1EEE9AC00](v60);
  v17 = (v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = *(v0 + 8);
  v53[1] = *v0;
  Value = AGGraphGetValue();
  v19 = *(Value + 8);
  v20 = *(Value + 24);
  v21 = *(Value + 56);
  v81 = *(Value + 40);
  v82 = v21;
  v79 = v19;
  v80 = v20;
  outlined init with copy of Binding<NSProgress.UIState?>(&v79, &v83);
  CombineIdentifier.init()();
  v22 = v80;
  v57 = v17;
  *v17 = v79;
  v17[1] = v22;
  v23 = v82;
  v17[2] = v81;
  v17[3] = v23;
  v24 = *AGGraphGetValue();
  swift_getKeyPath();
  v25 = v24;
  v26 = v10;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  swift_getKeyPath();
  v27 = v7;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  swift_getKeyPath();
  v28 = v54;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  swift_getKeyPath();
  v29 = v55;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<NSProgress, Int64> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<NSProgress, Int64> and conformance NSObject.KeyValueObservingPublisher<A, B>, &lazy cache variable for type metadata for NSObject.KeyValueObservingPublisher<NSProgress, Int64>);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<NSProgress, Int64> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<NSProgress, String> and conformance NSObject.KeyValueObservingPublisher<A, B>, &lazy cache variable for type metadata for NSObject.KeyValueObservingPublisher<NSProgress, String>);
  v30 = v29;
  v31 = v56;
  v32 = v59;
  Publisher.combineLatest<A, B, C>(_:_:_:)();
  v33 = *(v63 + 8);
  v33(v30, v32);
  v33(v28, v32);
  v34 = *(v61 + 8);
  v34(v27, v31);
  v34(v26, v31);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  lazy protocol witness table accessor for type ResolvedProgressView and conformance ResolvedProgressView(&lazy protocol witness table cache variable for type Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>> and conformance Publishers.CombineLatest4<A, B, C, D>, type metadata accessor for Publishers.CombineLatest4<NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, Int64>, NSObject.KeyValueObservingPublisher<NSProgress, String>, NSObject.KeyValueObservingPublisher<NSProgress, String>>);
  v35 = v58;
  v36 = v64;
  v37 = v68;
  Publisher.map<A>(_:)();

  (*(v65 + 8))(v37, v36);

  lazy protocol witness table accessor for type ResolvedProgressView and conformance ResolvedProgressView(&lazy protocol witness table cache variable for type NSProgress.UIStateSubscriber and conformance NSProgress.UIStateSubscriber, type metadata accessor for NSProgress.UIStateSubscriber);
  lazy protocol witness table accessor for type ResolvedProgressView and conformance ResolvedProgressView(&lazy protocol witness table cache variable for type NSProgress.UIStateSubscriber and conformance NSProgress.UIStateSubscriber, type metadata accessor for NSProgress.UIStateSubscriber);
  v38 = v57;
  SubscriptionLifetime.subscribe<A>(subscriber:to:)();
  (*(v66 + 8))(v35, v67);
  outlined destroy of NSProgress.UIStateSubscriber(v38);
  v39 = AGGraphGetValue();
  v86 = *(v39 + 56);
  v85 = *(v39 + 40);
  v84 = *(v39 + 24);
  v83 = *(v39 + 8);
  v75 = v83;
  v76 = v84;
  v77 = v85;
  v78 = v86;
  type metadata accessor for State<NSProgress.UIState?>(0, &lazy cache variable for type metadata for Binding<NSProgress.UIState?>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v69);
  v40 = v72;
  if (v72)
  {
    v41 = v69;
    v42 = v70;
    v43 = v71;
    v45 = v73;
    v44 = v74;
LABEL_6:
    *&v75 = v41;
    BYTE8(v75) = v42 & 1;
    *&v76 = v43;
    *(&v76 + 1) = v40;
    *&v77 = v45;
    *(&v77 + 1) = v44;
    AGGraphSetOutputValue();
  }

  v46 = *AGGraphGetValue();
  [v46 fractionCompleted];
  v41 = v47;
  v42 = [v46 isIndeterminate];
  result = [v46 localizedDescription];
  if (result)
  {
    v49 = result;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v50;

    result = [v46 localizedAdditionalDescription];
    if (result)
    {
      v51 = result;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v52;

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void FoundationProgressView.Body.BodyAttribute.Value.body.getter(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ResolvedProgressView(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = *(v1 + 8);
  v16 = v1[2];
  v15 = v1[3];
  v17 = v1[4];
  v18 = v1[5];
  v19 = v14 & 1;
  if (v19)
  {
    v13 = 0;
  }

  *v4 = v13;
  v4[8] = v19;
  v4[9] = 0;
  swift_storeEnumTagMultiPayload();
  _s7SwiftUI17ProgressViewValueOWObTm_1(v4, v8, type metadata accessor for ProgressViewValue);
  v8[v6[7]] = 0;
  v8[v6[8]] = 0;
  v8[v6[9]] = 0;
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v42 = v17;
    v43 = v18;
    lazy protocol witness table accessor for type String and conformance String();

    v21 = Text.init<A>(_:)();
    v23 = v22;
    v25 = v24;
    v27 = v26 & 1;
  }

  else
  {
    v21 = 0;
    v23 = 0;
    v27 = 0;
    v25 = 0;
  }

  _s7SwiftUI17ProgressViewValueOWObTm_1(v8, v12, type metadata accessor for ResolvedProgressView);
  v28 = &v12[*(v10 + 36)];
  *v28 = v21;
  v28[1] = v23;
  v28[2] = v27;
  v28[3] = v25;
  v29 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v29 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v42 = v16;
    v43 = v15;
    lazy protocol witness table accessor for type String and conformance String();

    v30 = Text.init<A>(_:)();
    v32 = v31;
    v34 = v33;
    v36 = v35 & 1;
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v36 = 0;
    v34 = 0;
  }

  v37 = v41;
  _s7SwiftUI17ProgressViewValueOWObTm_1(v12, v41, type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>);
  type metadata accessor for ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>>();
  v39 = (v37 + *(v38 + 36));
  *v39 = v30;
  v39[1] = v32;
  v39[2] = v36;
  v39[3] = v34;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FoundationProgressView.Body(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(int *, _OWORD *))
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return a5(&v11, v9);
}

void key path getter for NSProgress.localizedDescription : NSProgress(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path setter for NSProgress.localizedDescription : NSProgress(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = MEMORY[0x18D00C850](*a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void closure #1 in NSProgress.uiStatePublisher.getter(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong fractionCompleted];
  v4 = v3;
  v5 = [Strong isIndeterminate];
  v6 = [Strong localizedDescription];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [Strong localizedAdditionalDescription];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *a1 = v4;
      *(a1 + 8) = v5;
      *(a1 + 16) = v8;
      *(a1 + 24) = v10;
      *(a1 + 32) = v13;
      *(a1 + 40) = v15;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t NSProgress.UIStateSubscriber.respond(to:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = (a1 + 2);
  v20 = a1[2];
  v21 = v3;
  v5 = *(a1 + 8);
  v19 = a1[3];
  v6 = (a1 + 4);
  v7 = a1[4];
  v8 = a1[5];
  v9 = type metadata accessor for NSProgress.UIStateSubscriber();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  if ([objc_opt_self() isMainThread])
  {
    v22[0] = 17;
    outlined init with copy of NSProgress.UIStateSubscriber(v1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = *v4;
    v29 = *v6;
    v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v13 = swift_allocObject();
    _s7SwiftUI17ProgressViewValueOWObTm_1(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for NSProgress.UIStateSubscriber);
    v14 = (v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
    v15 = *(a1 + 1);
    *v14 = *a1;
    v14[1] = v15;
    v14[2] = *(a1 + 2);
    outlined init with copy of String(&v23, &v28);
    outlined init with copy of String(&v29, &v28);
    static Update.enqueueAction(reason:_:)();
  }

  else
  {
    *&v23 = v21;
    *(&v23 + 1) = v5 & 1;
    v24 = v20;
    v25 = v19;
    v26 = v7;
    v27 = v8;
    v17 = *v4;
    v28 = *v6;
    v29 = v17;
    outlined init with copy of String(&v29, v22);
    outlined init with copy of String(&v28, v22);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of String(&v29);
    return outlined destroy of String(&v28);
  }
}

uint64_t update #1 () in NSProgress.UIStateSubscriber.respond(to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 8) & 1;
  v8[2] = *a2;
  v8[3] = v5;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v6 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = v6;
  outlined init with copy of String(&v13, v8);
  outlined init with copy of String(&v12, v8);
  dispatch thunk of AnyLocation.set(_:transaction:)();
  outlined destroy of String(&v13);
  return outlined destroy of String(&v12);
}

uint64_t protocol witness for Subscriber.receive(_:) in conformance NSProgress.UIStateSubscriber(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = a1[2];
  v2 = NSProgress.UIStateSubscriber.respond(to:)(v4);

  return MEMORY[0x1EEDB5BB8](v2);
}

uint64_t protocol witness for CustomCombineIdentifierConvertible.combineIdentifier.getter in conformance NSProgress.UIStateSubscriber@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t lazy protocol witness table accessor for type FoundationProgressView.Body.BodyAttribute and conformance FoundationProgressView.Body.BodyAttribute()
{
  result = lazy protocol witness table cache variable for type FoundationProgressView.Body.BodyAttribute and conformance FoundationProgressView.Body.BodyAttribute;
  if (!lazy protocol witness table cache variable for type FoundationProgressView.Body.BodyAttribute and conformance FoundationProgressView.Body.BodyAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FoundationProgressView.Body.BodyAttribute and conformance FoundationProgressView.Body.BodyAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FoundationProgressView.Body.BodyAttribute.Value and conformance FoundationProgressView.Body.BodyAttribute.Value()
{
  result = lazy protocol witness table cache variable for type FoundationProgressView.Body.BodyAttribute.Value and conformance FoundationProgressView.Body.BodyAttribute.Value;
  if (!lazy protocol witness table cache variable for type FoundationProgressView.Body.BodyAttribute.Value and conformance FoundationProgressView.Body.BodyAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FoundationProgressView.Body.BodyAttribute.Value and conformance FoundationProgressView.Body.BodyAttribute.Value);
  }

  return result;
}

uint64_t type metadata accessor for NSProgress.UIStateSubscriber()
{
  result = type metadata singleton initialization cache for NSProgress.UIStateSubscriber;
  if (!type metadata singleton initialization cache for NSProgress.UIStateSubscriber)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Binding<NSProgress.UIState?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for State<NSProgress.UIState?>(0, &lazy cache variable for type metadata for Binding<NSProgress.UIState?>, MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for State<NSProgress.UIState?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for NSProgress.UIState?();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of NSProgress.UIStateSubscriber(uint64_t a1)
{
  v2 = type metadata accessor for NSProgress.UIStateSubscriber();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for NSProgress.UIStateSubscriber(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    *(a1 + 8) = a2[1];
    v8 = a2[5];

    if (v8)
    {
      *(a1 + 16) = a2[2];
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = a2[4];
      *(a1 + 40) = v8;
      v9 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v9;
    }

    else
    {
      v10 = *(a2 + 2);
      *(a1 + 16) = *(a2 + 1);
      *(a1 + 32) = v10;
      *(a1 + 48) = *(a2 + 3);
    }

    v11 = *(a3 + 20);
    v12 = type metadata accessor for CombineIdentifier();
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  }

  return a1;
}

uint64_t destroy for NSProgress.UIStateSubscriber(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 40))
  {
  }

  v4 = *(a2 + 20);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for NSProgress.UIStateSubscriber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 40);

  if (v7)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v7;
    v8 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v8;
  }

  else
  {
    v9 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v9;
    *(a1 + 48) = *(a2 + 48);
  }

  v10 = *(a3 + 20);
  v11 = type metadata accessor for CombineIdentifier();
  (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t assignWithCopy for NSProgress.UIStateSubscriber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v6)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of NSProgress.UIState(a1 + 16);
      v8 = *(a2 + 32);
      v7 = *(a2 + 48);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v8;
      *(a1 + 48) = v7;
    }
  }

  else if (v6)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v10;
    *(a1 + 16) = v9;
  }

  v11 = *(a3 + 20);
  v12 = type metadata accessor for CombineIdentifier();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  return a1;
}

char *initializeWithTake for NSProgress.UIStateSubscriber(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a3 + 20);
  v8 = type metadata accessor for CombineIdentifier();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t assignWithTake for NSProgress.UIStateSubscriber(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (!*(a1 + 40))
  {
    goto LABEL_5;
  }

  v6 = *(a2 + 40);
  if (!v6)
  {
    outlined destroy of NSProgress.UIState(a1 + 16);
LABEL_5:
    v8 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v8;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_6;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

LABEL_6:
  v9 = *(a3 + 20);
  v10 = type metadata accessor for CombineIdentifier();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t type metadata completion function for NSProgress.UIStateSubscriber()
{
  result = type metadata accessor for CombineIdentifier();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for NSProgress.UIState()
{
}

uint64_t initializeWithCopy for NSProgress.UIState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t assignWithCopy for NSProgress.UIState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for NSProgress.UIState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t destroy for FoundationProgressView.Body(uint64_t a1)
{

  result = *(a1 + 48);
  if (result)
  {
  }

  return result;
}

uint64_t initializeWithCopy for FoundationProgressView.Body(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 48);
  v7 = v4;

  if (v6)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v6;
    v8 = *(a2 + 56);
    v9 = *(a2 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  return a1;
}

uint64_t assignWithCopy for FoundationProgressView.Body(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v7 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v7)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of NSProgress.UIState(a1 + 24);
      v8 = *(a2 + 56);
      v9 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v9;
      *(a1 + 56) = v8;
    }
  }

  else if (v7)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v10 = *(a2 + 24);
    v11 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v11;
    *(a1 + 24) = v10;
  }

  return a1;
}

uint64_t assignWithTake for FoundationProgressView.Body(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  if (!*(a1 + 48))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 48);
  if (!v5)
  {
    outlined destroy of NSProgress.UIState(a1 + 24);
LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    return a1;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;

  return a1;
}

void type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>)
  {
    type metadata accessor for ResolvedProgressView(255);
    type metadata accessor for OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>(255, &lazy cache variable for type metadata for OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>>)
  {
    type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>();
    type metadata accessor for OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>(255, &lazy cache variable for type metadata for OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>>);
    }
  }
}

void type metadata accessor for OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for OptionalSourceWriter();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with copy of NSProgress.UIStateSubscriber(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSProgress.UIStateSubscriber();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for update #1 () in NSProgress.UIStateSubscriber.respond(to:)()
{
  v1 = *(type metadata accessor for NSProgress.UIStateSubscriber() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return update #1 () in NSProgress.UIStateSubscriber.respond(to:)(v0 + v2, v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>>();
    lazy protocol witness table accessor for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>, OptionalSourceWriter<ProgressViewStyleConfiguration.Label, Text>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>>();
    lazy protocol witness table accessor for type ResolvedProgressView and conformance ResolvedProgressView(&lazy protocol witness table cache variable for type ResolvedProgressView and conformance ResolvedProgressView, type metadata accessor for ResolvedProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.CurrentValueLabel, Text>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OptionalSourceWriter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

void *initializeWithTake for OptionalSourceWriter(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for OptionalSourceWriter(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for OptionalSourceWriter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
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

char *storeEnumTagSinglePayload for OptionalSourceWriter(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ListStyleContent(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA16ListStyleContentV_Tt2B5(v2, v6);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA16ListStyleContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ListStyleContent>, lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ListStyleContent>, lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ListStyleContent, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24UIKitButtonConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<UIKitButtonConfiguration.Label>, lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<UIKitButtonConfiguration.Label>, lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for UIKitButtonConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA17EnvironmentValuesV20TextInputSuggestionsV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.TextInputSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.TextInputSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for EnvironmentValues.TextInputSuggestions, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22PreviewModifierContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<PreviewModifierContent>, lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<PreviewModifierContent>, lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for PreviewModifierContent, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA28ListRowHeightTemplateContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>, lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>, lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ListRowHeightTemplateContent, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA33ListFirstRowHeightTemplateContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ListFirstRowHeightTemplateContent>, lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ListFirstRowHeightTemplateContent>, lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  RowHeightTemplate = lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ListFirstRowHeightTemplateContent, RowHeightTemplate, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA29ColorPickerStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ColorPickerStyleConfiguration.Label>, lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ColorPickerStyleConfiguration.Label>, lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ColorPickerStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22MenuStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Label>, lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Label>, lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for MenuStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA27InspectorStyleConfigurationV11MainContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.MainContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.MainContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for InspectorStyleConfiguration.MainContent, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA27InspectorStyleConfigurationV0L7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.InspectorContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.InspectorContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for InspectorStyleConfiguration.InspectorContent, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24ToggleStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ToggleStyleConfiguration.Label>, lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ToggleStyleConfiguration.Label>, lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ToggleStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23OutlineSubgroupChildrenV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<OutlineSubgroupChildren>, lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<OutlineSubgroupChildren>, lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for OutlineSubgroupChildren, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA33DisclosureGroupStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for DisclosureGroupStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA33DisclosureGroupStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for DisclosureGroupStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA21_SidebarConfigurationV0L0V_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<_SidebarConfiguration.Sidebar>, lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<_SidebarConfiguration.Sidebar>, lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for _SidebarConfiguration.Sidebar, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24ResolvedRadioGroupPicker33_BE44ACA3C2CA04FDF50C9B05CC2C0476LLV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ResolvedRadioGroupPicker.Label>, lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ResolvedRadioGroupPicker.Label>, lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ResolvedRadioGroupPicker.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA015NavigationSplitC18StyleConfigurationV7SidebarV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Sidebar>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Sidebar>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA015NavigationSplitC18StyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Content>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Content>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for NavigationSplitViewStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA015NavigationSplitC18StyleConfigurationV6DetailV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Detail>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Detail>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for NavigationSplitViewStyleConfiguration.Detail, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA011_NavigationC18StyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<_NavigationViewStyleConfiguration.Content>, lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<_NavigationViewStyleConfiguration.Content>, lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for _NavigationViewStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA33MultiDatePickerStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<MultiDatePickerStyleConfiguration.Label>, lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<MultiDatePickerStyleConfiguration.Label>, lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for MultiDatePickerStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32ButtonBehaviorStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ButtonBehaviorStyleConfiguration.Content>, lazy protocol witness table accessor for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ButtonBehaviorStyleConfiguration.Content>, lazy protocol witness table accessor for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ButtonBehaviorStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA20_TextFieldStyleLabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<_TextFieldStyleLabel>, lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<_TextFieldStyleLabel>, lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for _TextFieldStyleLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA08ProgressC18StyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.Label>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.Label>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ProgressViewStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA08ProgressC18StyleConfigurationV07CurrentJ5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA08ProgressC18StyleConfigurationV7ActionsV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.Actions>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.Actions>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ProgressViewStyleConfiguration.Actions, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA28LabelGroupStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabelGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabelGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for LabelGroupStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA25SectionStyleConfigurationV6HeaderV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Header>, lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Header>, lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SectionStyleConfiguration.Header, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA25SectionStyleConfigurationV6FooterV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Footer>, lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Footer>, lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SectionStyleConfiguration.Footer, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA25SectionStyleConfigurationV7ActionsV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Actions>, lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Actions>, lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SectionStyleConfiguration.Actions, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA25SectionStyleConfigurationV10RawContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.RawContent>, lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.RawContent>, lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SectionStyleConfiguration.RawContent, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA17EnvironmentValuesV11SearchFieldV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for EnvironmentValues.SearchField, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA17EnvironmentValuesV17SearchSuggestionsV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for EnvironmentValues.SearchSuggestions, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA17EnvironmentValuesV20SearchCustomScopeBarV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchCustomScopeBar>, lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchCustomScopeBar>, lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for EnvironmentValues.SearchCustomScopeBar, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA17EnvironmentValuesV21SearchCustomAccessoryV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchCustomAccessory>, lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchCustomAccessory>, lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for EnvironmentValues.SearchCustomAccessory, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA19AccessoryBarContent33_BB72636A869E61428A7FA424F27FA676LLV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<AccessoryBarContent>, lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<AccessoryBarContent>, lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for AccessoryBarContent, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22FormStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<FormStyleConfiguration.Content>, lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<FormStyleConfiguration.Content>, lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for FormStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22FormStyleConfigurationV6FooterV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<FormStyleConfiguration.Footer>, lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<FormStyleConfiguration.Footer>, lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for FormStyleConfiguration.Footer, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA34_NavigationStackStyleConfigurationV4RootV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<_NavigationStackStyleConfiguration.Root>, lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<_NavigationStackStyleConfiguration.Root>, lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for _NavigationStackStyleConfiguration.Root, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA25StepperStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<StepperStyleConfiguration.Label>, lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<StepperStyleConfiguration.Label>, lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for StepperStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24SliderStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.Label>, lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.Label>, lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SliderStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24SliderStyleConfigurationV07MinimumJ5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.MinimumValueLabel>, lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.MinimumValueLabel>, lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SliderStyleConfiguration.MinimumValueLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24SliderStyleConfigurationV07MaximumJ5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.MaximumValueLabel>, lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.MaximumValueLabel>, lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SliderStyleConfiguration.MaximumValueLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23TokenFieldConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<TokenFieldConfiguration.Label>, lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<TokenFieldConfiguration.Label>, lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for TokenFieldConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA05BadgeC18StyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<BadgeViewStyleConfiguration.Content>, lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<BadgeViewStyleConfiguration.Content>, lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for BadgeViewStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23GaugeStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.Label>, lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.Label>, lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for GaugeStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23GaugeStyleConfigurationV07CurrentJ5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.CurrentValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.CurrentValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23GaugeStyleConfigurationV07MinimumJ5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MinimumValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MinimumValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for GaugeStyleConfiguration.MinimumValueLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23GaugeStyleConfigurationV07MaximumJ5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MaximumValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MaximumValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for GaugeStyleConfiguration.MaximumValueLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23GaugeStyleConfigurationV06MarkedJ5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MarkedValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MarkedValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for GaugeStyleConfiguration.MarkedValueLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA30ControlGroupStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ControlGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ControlGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ControlGroupStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA30ControlGroupStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<ControlGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<ControlGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for ControlGroupStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA26GroupBoxStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<GroupBoxStyleConfiguration.Label>, lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<GroupBoxStyleConfiguration.Label>, lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for GroupBoxStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA26GroupBoxStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<GroupBoxStyleConfiguration.Content>, lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<GroupBoxStyleConfiguration.Content>, lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for GroupBoxStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32NavigationLinkStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<NavigationLinkStyleConfiguration.Label>, lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<NavigationLinkStyleConfiguration.Label>, lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for NavigationLinkStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA29_MenuButtonStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<_MenuButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<_MenuButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for _MenuButtonStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA29_MenuButtonStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<_MenuButtonStyleConfiguration.Content>, lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<_MenuButtonStyleConfiguration.Content>, lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for _MenuButtonStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22HelpStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<HelpStyleConfiguration.Content>, lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<HelpStyleConfiguration.Content>, lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for HelpStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24SearchFieldConfigurationV7ControlV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Control>, lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Control>, lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SearchFieldConfiguration.Control, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24SearchFieldConfigurationV11SuggestionsV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Suggestions>, lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Suggestions>, lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SearchFieldConfiguration.Suggestions, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24SearchFieldConfigurationV6ScopesV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Scopes>, lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Scopes> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Scopes>, lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for SearchFieldConfiguration.Scopes, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA28DatePickerStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<DatePickerStyleConfiguration.Label>, lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<DatePickerStyleConfiguration.Label>, lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for DatePickerStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA21_DatePickerStyleLabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<_DatePickerStyleLabel>, lazy protocol witness table accessor for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<_DatePickerStyleLabel>, lazy protocol witness table accessor for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for _DatePickerStyleLabel, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t static ViewAlias._makeView(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v44 = *(a2 + 32);
  v45 = v6;
  v8 = *(a2 + 48);
  v46 = *(a2 + 64);
  v9 = *(a2 + 16);
  v43[0] = *a2;
  v43[1] = v9;
  v39 = v44;
  v40 = v8;
  v41 = *(a2 + 64);
  v10 = *a1;
  v47 = *(a2 + 80);
  v42 = *(a2 + 80);
  v37 = v43[0];
  v38 = v7;
  type metadata accessor for SourceInput();
  outlined init with copy of _ViewInputs(v43, v30);
  swift_getWitnessTable();
  _GraphInputs.popLast<A, B>(_:)();
  v11 = v32;
  if (v32)
  {
    v12 = v35;
    v13 = v36;
    v15 = v33;
    v14 = v34;
    _GraphInputs.resetCurrentStyleableView()();
    v25 = v10;
    v26[2] = v39;
    v26[3] = v40;
    v26[4] = v41;
    v27 = v42;
    v26[0] = v37;
    v26[1] = v38;
    v21 = v39;
    v22 = v40;
    v23 = v41;
    v24 = v42;
    v19 = v37;
    v20 = v38;
    v16 = a4;
    v17 = *(v15 + 8);
    outlined init with copy of _ViewInputs(v26, v30);
    v17(&v25, v11, v15, v14, v12 | ((v13 & 1) << 32), &v19, a3, v16, v11, v15);
    v28[2] = v21;
    v28[3] = v22;
    v28[4] = v23;
    v29 = v24;
    v28[0] = v19;
    v28[1] = v20;
    outlined destroy of _ViewInputs(v28);
  }

  else
  {
    _ViewOutputs.init()();
  }

  v30[2] = v39;
  v30[3] = v40;
  v30[4] = v41;
  v31 = v42;
  v30[0] = v37;
  v30[1] = v38;
  return outlined destroy of _ViewInputs(v30);
}

uint64_t static ViewAlias._viewListCount(inputs:)(__int128 *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v36 = a1[1];
  v37 = v1;
  v3 = a1[2];
  v4 = a1[4];
  v38 = a1[3];
  v39 = v4;
  v5 = *a1;
  v32 = v3;
  v33 = v38;
  v34 = a1[4];
  v35 = v5;
  v30 = v2;
  v31 = v36;
  type metadata accessor for SourceInput();
  outlined init with copy of _ViewListCountInputs(&v35, &v20);
  swift_getWitnessTable();
  _ViewListCountInputs.popLast<A, B>(_:)();
  v6 = v25;
  if (v25)
  {
    v7 = v28;
    v8 = v29;
    v10 = v26;
    v9 = v27;
    _ViewListCountInputs.resetCurrentStyleableView()();
    v18[3] = v33;
    v18[4] = v34;
    v18[1] = v31;
    v18[2] = v32;
    v17 = v34;
    v18[0] = v30;
    v15 = v32;
    v16 = v33;
    v13 = v30;
    v14 = v31;
    v11 = *(v10 + 24);
    outlined init with copy of _ViewListCountInputs(v18, &v20);
    v6 = v11(v6, v10, v9, v7 | ((v8 & 1) << 32), &v13, v6, v10);
    v19[2] = v15;
    v19[3] = v16;
    v19[4] = v17;
    v19[0] = v13;
    v19[1] = v14;
    outlined destroy of _ViewListCountInputs(v19);
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v20 = v30;
    v21 = v31;
    outlined destroy of _ViewListCountInputs(&v20);
  }

  else
  {
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v20 = v30;
    v21 = v31;
    outlined destroy of _ViewListCountInputs(&v20);
  }

  return v6;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance UIKitButtonConfiguration.Label(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24UIKitButtonConfigurationV5LabelV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance EnvironmentValues.TextInputSuggestions(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA17EnvironmentValuesV20TextInputSuggestionsV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance EnvironmentValues.TextInputSuggestions(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<EnvironmentValues.TextInputSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions, &type metadata for EnvironmentValues.TextInputSuggestions, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PreviewModifierContent(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22PreviewModifierContentV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PreviewModifierContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<PreviewModifierContent>, lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent, &type metadata for PreviewModifierContent, &lazy protocol witness table cache variable for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ListRowHeightTemplateContent(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA28ListRowHeightTemplateContentV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ListRowHeightTemplateContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>, lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent, &type metadata for ListRowHeightTemplateContent, &lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ListFirstRowHeightTemplateContent(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA33ListFirstRowHeightTemplateContentV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ListFirstRowHeightTemplateContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ListFirstRowHeightTemplateContent>, lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent, &type metadata for ListFirstRowHeightTemplateContent, &lazy protocol witness table cache variable for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    RowHeightTemplate = lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, RowHeightTemplate, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ColorPickerStyleConfiguration.Label(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA29ColorPickerStyleConfigurationV5LabelV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ColorPickerStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ColorPickerStyleConfiguration.Label>, lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label, &type metadata for ColorPickerStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance MenuStyleConfiguration.Label(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22MenuStyleConfigurationV5LabelV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MenuStyleConfiguration.Content(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Content>, lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content, &type metadata for MenuStyleConfiguration.Content, &lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance InspectorStyleConfiguration.MainContent(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA27InspectorStyleConfigurationV11MainContentV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance InspectorStyleConfiguration.MainContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.MainContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent, &type metadata for InspectorStyleConfiguration.MainContent, &lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance InspectorStyleConfiguration.InspectorContent(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA27InspectorStyleConfigurationV0L7ContentV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance InspectorStyleConfiguration.InspectorContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.InspectorContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent, &type metadata for InspectorStyleConfiguration.InspectorContent, &lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ToggleStyleConfiguration.Label(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24ToggleStyleConfigurationV5LabelV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance OutlineSubgroupChildren(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23OutlineSubgroupChildrenV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance OutlineSubgroupChildren(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<OutlineSubgroupChildren>, lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren, &type metadata for OutlineSubgroupChildren, &lazy protocol witness table cache variable for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance TabViewStyleConfiguration<A>.Content(__int128 *a1)
{
  return protocol witness for static View._viewListCount(inputs:) in conformance TabViewStyleConfiguration<A>.Content(a1);
}

{
  swift_getWitnessTable();
  return static ViewAlias._viewListCount(inputs:)(a1);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DisclosureGroupStyleConfiguration.Label(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA33DisclosureGroupStyleConfigurationV5LabelV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DisclosureGroupStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label, &type metadata for DisclosureGroupStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DisclosureGroupStyleConfiguration.Content(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA33DisclosureGroupStyleConfigurationV7ContentV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DisclosureGroupStyleConfiguration.Content(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content, &type metadata for DisclosureGroupStyleConfiguration.Content, &lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _SidebarConfiguration.Sidebar(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA21_SidebarConfigurationV0L0V_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _SidebarConfiguration.Sidebar(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<_SidebarConfiguration.Sidebar>, lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar, &type metadata for _SidebarConfiguration.Sidebar, &lazy protocol witness table cache variable for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedRadioGroupPicker.Label(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA24ResolvedRadioGroupPicker33_BE44ACA3C2CA04FDF50C9B05CC2C0476LLV5LabelV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedRadioGroupPicker.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ResolvedRadioGroupPicker.Label>, lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label, &type metadata for ResolvedRadioGroupPicker.Label, &lazy protocol witness table cache variable for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}