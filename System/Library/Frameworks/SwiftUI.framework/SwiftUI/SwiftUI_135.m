void storeEnumTagSinglePayload for NavigationStack(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
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
      if (v7 < 0xFE)
      {
        v18 = ((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 24) = 0;
          *(v18 + 16) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 24) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigationStackStyledCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(v10 + 16);
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v10;
    *(v12 + 16) = v11;
  }

  return v3;
}

uint64_t assignWithTake for NavigationStackStyledCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationStackStyledCore(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFA)
  {
    v7 = 250;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
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
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFA)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 6)
    {
      return v17 - 5;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for NavigationStackStyledCore(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFA)
  {
    v7 = 250;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
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
  if (v6 < 0xFA)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0xFA)
    {
      v18[1] = 0;
      v18[2] = 0;
      *v18 = a2 - 251;
    }

    else
    {
      *(v18 + 8) = a2 + 5;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t NavigationStackStyledCore.Child.structureSeed.getter()
{
  type metadata accessor for UInt32?(0, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  return *Value | (*(Value + 4) << 32);
}

uint64_t NavigationStackStyledCore.Child.updateValue()(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for NavigationStackStyledCore.NavigationStackRepresentableRoot();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-v9];
  Value = AGGraphGetValue();
  v25 = *Value;
  v26 = *(Value + 16);
  v12 = *(v1 + 16);
  v13 = *(v1 + 20);
  v14 = *(v1 + 28);
  v24 = *(Value + 8);
  v37 = *v1;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  NavigationStackStyledCore.Child.ensuredAuthority.getter(v36);
  v15 = AGGraphGetValue();
  (*(v4 + 16))(v6, v15, v3);
  v16 = *(v1 + 16);
  v17 = *(v1 + 20);
  v18 = *(v1 + 28);
  v32 = *v1;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v19 = NavigationStackStyledCore.Child.structureSeed.getter();
  v20 = *(v1 + 28);
  v30 = *(v1 + 20);
  v31 = v20;
  NavigationStackStyledCore.NavigationStackRepresentableRoot.init(context:authority:root:structureSeed:previousAnimationSeed:)(v25, v24, v26, v36, v6, v19 | ((HIDWORD(v19) & 1) << 32), &v30, v3, v10);
  v28 = a1;
  WitnessTable = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in StatefulRule.value.setter, v27, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
  (*(v8 + 8))(v10, v7);
  return $defer #1 <A>() in NavigationStackStyledCore.Child.updateValue()(v1);
}

uint64_t $defer #1 <A>() in NavigationStackStyledCore.Child.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 28);
  v28[2] = *a1;
  v29 = v2;
  v30 = v3;
  v31 = v4;
  type metadata accessor for NavigationStackStyledCore.Child();
  NavigationStackStyledCore.Child.authority.getter(v32);
  if (v33 == 2)
  {
    result = outlined destroy of NavigationAuthority??(v32);
LABEL_8:
    Strong = 0;
    goto LABEL_9;
  }

  outlined init with take of NavigationAuthority?(v32, v34);
  if (v35 == 1)
  {
    v6 = &lazy cache variable for type metadata for NavigationAuthority?;
    v7 = &type metadata for NavigationAuthority;
    v8 = v34;
LABEL_5:
    result = outlined destroy of NavigationState.StackContent?(v8, v6, v7);
    goto LABEL_8;
  }

  Strong = swift_weakLoadStrong();
  result = outlined destroy of NavigationAuthority(v34);
  if (Strong)
  {
    swift_beginAccess();
    v10 = Strong[8];
    v24 = Strong[7];
    v25 = v10;
    v26[0] = Strong[9];
    *(v26 + 10) = *(Strong + 154);
    v11 = Strong[4];
    v20 = Strong[3];
    v21 = v11;
    v12 = Strong[6];
    v22 = Strong[5];
    v23 = v12;
    v13 = Strong[2];
    v18 = Strong[1];
    v19 = v13;
    _s7SwiftUI15NavigationStateVSgWOcTm_0(&v18, v36, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

    v27[6] = v24;
    v27[7] = v25;
    v28[0] = v26[0];
    *(v28 + 10) = *(v26 + 10);
    v27[2] = v20;
    v27[3] = v21;
    v27[4] = v22;
    v27[5] = v23;
    v27[0] = v18;
    v27[1] = v19;
    result = getEnumTag for AccessibilityActionCategory.Category(v27);
    if (result == 1)
    {
      goto LABEL_8;
    }

    v16[6] = v24;
    v16[7] = v25;
    v17[0] = v26[0];
    *(v17 + 10) = *(v26 + 10);
    v16[2] = v20;
    v16[3] = v21;
    v16[4] = v22;
    v16[5] = v23;
    v16[0] = v18;
    v16[1] = v19;
    Value = AGGraphGetValue();
    NavigationState.stackContent(for:)(*Value, *(Value + 8), *(Value + 16), v36);
    outlined destroy of NavigationState.StackContent?(&v18, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
    if (v37 != 255)
    {
      NavigationState.StackContent.animationSeed.getter(v16);
      Strong = *&v16[0];
      result = outlined destroy of NavigationState.StackContent(v36);
      v14 = 0;
      goto LABEL_10;
    }

    v6 = &lazy cache variable for type metadata for NavigationState.StackContent?;
    v7 = &type metadata for NavigationState.StackContent;
    v8 = v36;
    goto LABEL_5;
  }

LABEL_9:
  v14 = 1;
LABEL_10:
  *(a1 + 20) = Strong;
  *(a1 + 28) = v14;
  return result;
}

uint64_t NavigationStackStyledCore.NavigationStackRepresentableRoot.init(context:authority:root:structureSeed:previousAnimationSeed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a7;
  v14 = *(a7 + 8);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  outlined init with take of NavigationAuthority(a4, a9 + 24);
  v15 = type metadata accessor for NavigationStackStyledCore.NavigationStackRepresentableRoot();
  result = (*(*(a8 - 8) + 32))(a9 + v15[10], a5, a8);
  v17 = a9 + v15[11];
  *v17 = a6;
  *(v17 + 4) = BYTE4(a6) & 1;
  v18 = a9 + v15[12];
  *v18 = v13;
  *(v18 + 8) = v14;
  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance NavigationStackStyledCore<A>.Child@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavigationStackStyledCore.NavigationStackRepresentableRoot();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationStackStyledCore.Child(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationStackStyledCore.Child(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
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

  *(result + 29) = v3;
  return result;
}

uint64_t assignWithTake for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = (a1 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_weakTakeAssign();
  *(v5 + 8) = *(v6 + 8);

  *(v5 + 16) = *(v6 + 16);

  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + v5) & ~v9;
  v11 = (v9 + 24 + v6) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24);
  v13 = v12 + v10;
  v14 = v12 + v11;
  v15 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *v16;
  *(v15 + 4) = *(v16 + 4);
  *v15 = v17;
  v18 = (v13 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v14 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  LOBYTE(v15) = *(v19 + 8);
  *v18 = *v19;
  *(v18 + 8) = v15;
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationStackStyledCore.NavigationStackRepresentableRoot(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v17 = (a1 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (v5 > 0x7FFFFFFE)
  {
    return (*(v4 + 48))((v17 + v6 + 24) & ~v6);
  }

  v18 = *(v17 + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

void storeEnumTagSinglePayload for NavigationStackStyledCore.NavigationStackRepresentableRoot(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 48) & ~v9) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
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
      v17 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
      if (v7 > 0x7FFFFFFE)
      {
        v18 = *(v6 + 56);

        v18((v17 + v9 + 24) & ~v9);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        v17[1] = 0;
        v17[2] = 0;
        *v17 = a2 - 0x7FFFFFFF;
      }

      else
      {
        v17[1] = a2;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t outlined destroy of NavigationState.StackContent?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for UInt32?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI15NavigationStateVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for UInt32?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *closure #1 in ScrollGesture.body.getter@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v3 = result[1];
  v5 = result[2];
  v6 = *(result + 24);
  v8 = result[4];
  v7 = result[5];
  v9 = *(a2 + 24);
  if (*(a2 + 32) > 1u)
  {
    if (*(a2 + 32) == 2)
    {
      *a3 = 0;
      *(a3 + 8) = v9 ^ 0x8000000000000000;
      *(a3 + 16) = xmmword_18CD6C650;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      *a3 = 0;
      *(a3 + 8) = v9 ^ 0x8000000000000000;
      *(a3 + 16) = xmmword_18CD6C650;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
LABEL_17:
      *(a3 + 48) = 1;
      return result;
    }

    if (*(a2 + 16) != 1)
    {
      *a3 = 0;
      *(a3 + 8) = v9 ^ 0x8000000000000000;
      *(a3 + 16) = xmmword_18CD6C650;
LABEL_11:
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      return result;
    }
  }

  if (*(result + 48) > 1u)
  {
    if (*(result + 48) != 2)
    {
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 48) = 3;
      return result;
    }

    *a3 = v4;
    *(a3 + 8) = v3;
    *(a3 + 16) = v5;
    *(a3 + 24) = v6;
    *(a3 + 32) = v8;
    *(a3 + 40) = v7;
LABEL_15:
    *(a3 + 48) = 2;
    return result;
  }

  if (*(result + 48))
  {
    *a3 = v4;
    *(a3 + 8) = v3;
    *(a3 + 16) = v5;
    *(a3 + 24) = v6;
    *(a3 + 32) = v8;
    *(a3 + 40) = v7;
    goto LABEL_17;
  }

  if (v6 == 4)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0x3FFFFFFFCLL;
    goto LABEL_11;
  }

  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 40) = v7;
  *(a3 + 48) = 0;
  return result;
}

uint64_t protocol witness for Gesture.body.getter in conformance ScrollGesture()
{
  type metadata accessor for EventListener<WheelEvent>();
  lazy protocol witness table accessor for type AnyGesture<CGSize> and conformance AnyGesture<A>(&lazy protocol witness table cache variable for type EventListener<WheelEvent> and conformance EventListener<A>, type metadata accessor for EventListener<WheelEvent>);
  return Gesture.combined<A, B>(with:body:)();
}

void type metadata accessor for AnyGesture<CGSize>()
{
  if (!lazy cache variable for type metadata for AnyGesture<CGSize>)
  {
    type metadata accessor for CGSize(255);
    v0 = type metadata accessor for AnyGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyGesture<CGSize>);
    }
  }
}

void type metadata accessor for EventListener<WheelEvent>()
{
  if (!lazy cache variable for type metadata for EventListener<WheelEvent>)
  {
    lazy protocol witness table accessor for type WheelEvent and conformance WheelEvent();
    v0 = type metadata accessor for EventListener();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EventListener<WheelEvent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WheelEvent and conformance WheelEvent()
{
  result = lazy protocol witness table cache variable for type WheelEvent and conformance WheelEvent;
  if (!lazy protocol witness table cache variable for type WheelEvent and conformance WheelEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WheelEvent and conformance WheelEvent);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyGesture<CGSize> and conformance AnyGesture<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ScrollGesture.Value(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollGesture.Value(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
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

BOOL specialized static ScrollGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 24);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = *(a2 + 16);
      v8 = *(a2 + 32);
      v9 = *(a1 + 16);
      v15[0] = *a1;
      *&v15[1] = v2;
      v15[2] = v9;
      v16 = v3;
      v17 = *(a1 + 32);
      *v12 = v5;
      v12[1] = v4;
      v12[2] = v7;
      v13 = v6;
      v14 = v8;
      return specialized static PanGesture.Value.== infix(_:_:)(v15, v12);
    }

    return 0;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  return v2 == *(a2 + 8) && *a1 == v5;
}

void _s7SwiftUI27WidgetConfigurationModifierPAAE15widgetBodyErrors5NeverOyFAA05EmptycD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD52820);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static EmptyWidgetConfiguration._makeWidgetConfiguration(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return a3(a1, v5);
}

uint64_t static ModifiedContent<>._makeWidgetConfiguration(modifier:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a2[1];
  v21[0] = *a2;
  v21[1] = v15;
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v20 = v14;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 40) = a8;
  *(v16 + 48) = v14;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  v17 = *(a8 + 32);

  v17(v19, v21, partial apply for closure #2 in static ModifiedContent<>._makeWidgetConfiguration(modifier:inputs:body:), v16, a6, a8);
}

uint64_t closure #2 in static ModifiedContent<>._makeWidgetConfiguration(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a8 + 32))(v14, v16, a4, a5, a6, a8);
}

uint64_t static WidgetConfigurationModifier_Content._makeWidgetConfiguration(widget:inputs:)(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v21[0] = *a2;
  v21[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v18 = v4;
  v19 = v3;
  v20[0] = a2[2];
  *(v20 + 12) = *(a2 + 44);
  type metadata accessor for WidgetConfigurationModifier_Content.BodyInput();
  outlined init with copy of _WidgetInputs(v21, v15);
  type metadata accessor for (_:_:)();
  swift_getWitnessTable();
  _SceneInputs.popLast<A, B>(_:)();
  v5 = v17;
  if (v17)
  {
    v11[0] = v18;
    v11[1] = v19;
    v12[0] = v20[0];
    *(v12 + 12) = *(v20 + 12);
    v8 = v18;
    v9 = v19;
    v10[0] = v20[0];
    *(v10 + 12) = *(v20 + 12);
    v6 = outlined init with copy of _WidgetInputs(v11, v15);
    v5(v6, &v8);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
    v13[0] = v8;
    v13[1] = v9;
    v14[0] = v10[0];
    *(v14 + 12) = *(v10 + 12);
    outlined destroy of _WidgetInputs(v13);
  }

  else
  {
    PreferencesOutputs.init()();
  }

  v15[0] = v18;
  v15[1] = v19;
  v16[0] = v20[0];
  *(v16 + 12) = *(v20 + 12);
  return outlined destroy of _WidgetInputs(v15);
}

uint64_t static WidgetConfigurationModifier_Content.BodyInput.defaultValue.getter()
{
  v0 = type metadata accessor for (_:_:)();

  return MEMORY[0x1EEDE4450](v0);
}

void specialized WidgetConfigurationModifier.widgetBodyError()()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t instantiation function for generic protocol witness table for WidgetConfigurationModifier_Content<A>.BodyInput(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t View.textSelectionMenu(text:isPresented:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  MEMORY[0x18D00A570](&v10, a6, &type metadata for TextSelectionMenuModifier, a7);
}

uint64_t assignWithCopy for TextSelectionMenuModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t TextSelectionMenuModifier.body(content:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v12 = *v1;
  v13 = v3;
  v4 = v1[1];
  v14 = v1[2];
  v9 = v4;
  v10 = *(v1 + 32);
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v11);
  if (v11 == 1)
  {
  }

  type metadata accessor for CGRect(0);
  v5 = Anchor.Source.init<A>(_:)();
  v6 = swift_allocObject();
  v7 = v13;
  v6[1] = v12;
  v6[2] = v7;
  v6[3] = v14;
  *a1 = v5;
  a1[1] = partial apply for closure #1 in TextSelectionMenuModifier.body(content:);
  a1[2] = v6;
  return outlined init with copy of TextSelectionMenuModifier(&v12, &v9);
}

void *closure #1 in TextSelectionMenuModifier.body(content:)(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v15 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a3 + 2);
  v9 = *(a3 + 3);
  v10 = *(a3 + 32);
  v17[0] = v8;
  v17[1] = v9;
  v18 = v10;
  type metadata accessor for Binding<Bool>();
  result = MEMORY[0x18D00ACC0](&v16);
  if (v7)
  {
    result = outlined consume of EditMenuPresentation?(v15, v5, v6, v7);
LABEL_6:
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  if (!v16)
  {
    goto LABEL_6;
  }

  v12 = *a3;
  if (v12)
  {
    v13 = *(a3 + 1);
    v17[0] = v8;
    *a1 = v12;
    *(a1 + 8) = v13;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10 & 1;
    *(a1 + 40) = a2;

    outlined init with copy of Transaction(v17, &v16);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TextSelectionMenuModifier>, _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextSelectionMenuModifier>, _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextSelectionMenuModifier>, _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<TextSelectionMenuModifier>, _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<TextSelectionMenuModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<TextSelectionMenuModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<TextSelectionMenuModifier>);
    lazy protocol witness table accessor for type _ViewModifier_Content<TextSelectionMenuModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key> and conformance _AnchorTransformModifier<A, B>, type metadata accessor for _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<TextSelectionMenuModifier>, _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TextSelectionMenuModifier>, _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TextSelectionMenuModifier>, _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>>)
  {
    type metadata accessor for _ViewModifier_Content<TextSelectionMenuModifier>();
    type metadata accessor for _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TextSelectionMenuModifier>, _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<TextSelectionMenuModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<TextSelectionMenuModifier>)
  {
    lazy protocol witness table accessor for type TextSelectionMenuModifier and conformance TextSelectionMenuModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<TextSelectionMenuModifier>);
    }
  }
}

void type metadata accessor for _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>()
{
  if (!lazy cache variable for type metadata for _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>)
  {
    type metadata accessor for CGRect?(255);
    v0 = type metadata accessor for _AnchorTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _AnchorTransformModifier<CGRect?, EditMenuPresentation.Key>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TextSelectionMenuModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.groupedFormStyleContext()()
{
  lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext();

  return View.styleContext<A>(_:)();
}

void GroupedFormStyle.makeBody(configuration:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance GroupedFormStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext();

  return specialized static FormStyleContext.accepts<A>(_:at:)(a4, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance GroupedFormStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

void View.formInsets(_:_:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance FormInsetsKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EAB09878;
  *a1 = static FormInsetsKey.defaultValue;
  a1[1] = v1;
  a1[2] = xmmword_1EAB09888;
  result = *(&xmmword_1EAB09888 + 9);
  *(a1 + 41) = *(&xmmword_1EAB09888 + 9);
  return result;
}

unint64_t lazy protocol witness table accessor for type FormContentSizeFittingBehavior and conformance FormContentSizeFittingBehavior()
{
  result = lazy protocol witness table cache variable for type FormContentSizeFittingBehavior and conformance FormContentSizeFittingBehavior;
  if (!lazy protocol witness table cache variable for type FormContentSizeFittingBehavior and conformance FormContentSizeFittingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormContentSizeFittingBehavior and conformance FormContentSizeFittingBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>, ListStyleWriter<OuterFormListStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>, ListStyleWriter<OuterFormListStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>, ListStyleWriter<OuterFormListStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>, ListStyleWriter<OuterFormListStyle>>();
    lazy protocol witness table accessor for type StyleContextWriter<GroupedFormStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>> and conformance List<A, B>, type metadata accessor for List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>, ListStyleWriter<OuterFormListStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>, ListStyleWriter<OuterFormListStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>, ListStyleWriter<OuterFormListStyle>>)
  {
    type metadata accessor for List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>();
    type metadata accessor for ListStyleWriter<DefaultListStyle>(255, &lazy cache variable for type metadata for ListStyleWriter<OuterFormListStyle>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>, ListStyleWriter<OuterFormListStyle>>);
    }
  }
}

void type metadata accessor for List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>()
{
  if (!lazy cache variable for type metadata for List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for List();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for List<Never, ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>)
  {
    type metadata accessor for ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>();
    type metadata accessor for ListStyleWriter<DefaultListStyle>(255, &lazy cache variable for type metadata for ListStyleWriter<DefaultListStyle>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<GroupedFormStyleContext>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>);
    }
  }
}

void type metadata accessor for StyleContextWriter<GroupedFormStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<GroupedFormStyleContext>)
  {
    lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext();
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<GroupedFormStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>, ListStyleWriter<DefaultListStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>>();
    lazy protocol witness table accessor for type StyleContextWriter<GroupedFormStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<GroupedFormStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<GroupedFormStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<FormStyleConfiguration.Content, StyleContextWriter<GroupedFormStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ListStyleWriter<DefaultListStyle>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ListStyleWriter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<GroupedFormStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA04FormE19SizeFittingBehaviorVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, a2);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>(a4, a2);
  return swift_getWitnessTable();
}

unint64_t instantiation function for generic protocol witness table for GroupedFormStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FormContentSizeFittingBehavior.Role and conformance FormContentSizeFittingBehavior.Role()
{
  result = lazy protocol witness table cache variable for type FormContentSizeFittingBehavior.Role and conformance FormContentSizeFittingBehavior.Role;
  if (!lazy protocol witness table cache variable for type FormContentSizeFittingBehavior.Role and conformance FormContentSizeFittingBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormContentSizeFittingBehavior.Role and conformance FormContentSizeFittingBehavior.Role);
  }

  return result;
}

uint64_t AnyNavigationLinkPresentedViewStorage.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 128) - 8) + 32))(v2 + *(*v2 + 144), a1);
  return v2;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyNavigationLinkPresentedView()
{
  v1 = *v0;
  _StringGuts.grow(_:)(34);

  v3 = (*(*v1 + 88))(v2);
  MEMORY[0x18D00C9B0](v3);

  return 0xD000000000000020;
}

uint64_t type metadata completion function for AnyNavigationLinkPresentedViewStorage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AnyNavigationLinkPresentedViewStorage.description.getter(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v4 + 144), v2, v3);
  return String.init<A>(describing:)();
}

uint64_t AnyNavigationLinkPresentedViewStorage.view<A>(at:applying:)(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(*v5 + 128);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - v15;
  (*(v13 + 16))(&v19 - v15, v5 + *(v11 + 144), v12, v14);
  v17 = specialized static ResolvedNavigationDestinations.prepareToPresent<A, B>(view:at:shouldUpdateDestinations:applying:)(v16, a1, a2, a3, v12, a4, *(v11 + 136), a5);
  (*(v13 + 8))(v16, v12);
  return v17;
}

uint64_t AnyNavigationLinkPresentedViewStorage.equals(_:)(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (v10 == v1)
  {
    return 1;
  }

  v12 = *(v4 + 16);
  v12(v9, v1 + *(v2 + 144), v3);
  v13 = (v12)(v6, v11 + *(*v11 + 144), v3);
  MEMORY[0x1EEE9AC00](v13);
  *&v18[-32] = v3;
  *&v18[-24] = v6;
  *&v18[-16] = 3;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in compareValues<A>(_:_:options:), &v18[-48], v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v14);

  v15 = *(v4 + 8);
  v15(v9, v3);
  v16 = v18[23];
  v15(v6, v3);
  return v16;
}

uint64_t AnyNavigationLinkPresentedViewStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 128) - 8) + 8))(v0 + *(*v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t specialized AnyNavigationLinkPresentedView.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyNavigationLinkPresentedViewStorage();
  (*(v4 + 16))(v6, a1, a2);
  return AnyNavigationLinkPresentedViewStorage.__allocating_init(_:)(v6);
}

uint64_t type metadata completion function for DragSingleItemStorageBox()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t DragSingleItemStorageBox.__ivar_destroyer()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
}

uint64_t DragSingleItemStorageBox.deinit()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  return v0;
}

uint64_t DragSingleItemStorageBox.__deallocating_deinit()
{
  DragSingleItemStorageBox.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type FormInfoActionModifier and conformance FormInfoActionModifier()
{
  result = lazy protocol witness table cache variable for type FormInfoActionModifier and conformance FormInfoActionModifier;
  if (!lazy protocol witness table cache variable for type FormInfoActionModifier and conformance FormInfoActionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormInfoActionModifier and conformance FormInfoActionModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<FormRowAccessoryVisibilityKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowAccessoryVisibilityKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowAccessoryVisibilityKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<FormRowAccessoryVisibilityKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowAccessoryVisibilityKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyADyxAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA06_TraithI0VyAA016FormRowAccessoryjG0VGGAaBHPAjaBHPxAaBHD1__AiA0cI0HPyHCHC_AoaQHPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = MEMORY[0x1E697DB50];
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, a2);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>, v7);
  swift_getWitnessTable();
  a5();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<FormRowInfoVisibilityKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInfoVisibilityKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInfoVisibilityKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<FormRowInfoVisibilityKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInfoVisibilityKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t destroy for FormInfoActionModifier(uint64_t a1)
{

  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for FormInfoActionModifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  outlined copy of Environment<Selector?>.Content(v5, v6);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v7, v2);
  *(a1 + 32) = v7;
  *(a1 + 40) = v2;
  return a1;
}

uint64_t assignWithCopy for FormInfoActionModifier(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = v2[2];
  v6 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  v9 = v2[4];
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v9, v2);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(a1 + 32) = v9;
  *(a1 + 40) = v2;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  return a1;
}

uint64_t assignWithTake for FormInfoActionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  v7 = *(a2 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  return a1;
}

uint64_t type metadata completion function for FormAccessoryModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for FormAccessoryModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = v3 + v5;
    v11 = a2 + v5;
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    v15 = *(v13 + 8);
    outlined copy of Environment<Selector?>.Content(*v13, v15);
    *v12 = v14;
    *(v12 + 8) = v15;
    v16 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 8);
    outlined copy of Environment<Selector?>.Content(*v17, v19);
    *v16 = v18;
    *(v16 + 8) = v19;
  }

  return v3;
}

uint64_t destroy for FormAccessoryModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + a1;
  outlined consume of Environment<Selector?>.Content(*((v4 + 7) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 8);

  return outlined consume of Environment<Selector?>.Content(v6, v7);
}

uint64_t initializeWithCopy for FormAccessoryModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v5) = *(v10 + 8);
  outlined copy of Environment<Selector?>.Content(*v10, v5);
  *v9 = v11;
  *(v9 + 8) = v5;
  v12 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v5) = *(v13 + 8);
  outlined copy of Environment<Selector?>.Content(*v13, v5);
  *v12 = v14;
  *(v12 + 8) = v5;
  return a1;
}

uint64_t assignWithCopy for FormAccessoryModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v5) = *(v10 + 8);
  outlined copy of Environment<Selector?>.Content(*v10, v5);
  v12 = *v9;
  v13 = *(v9 + 8);
  *v9 = v11;
  *(v9 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v5) = *(v15 + 8);
  outlined copy of Environment<Selector?>.Content(*v15, v5);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

uint64_t initializeWithTake for FormAccessoryModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *v12 = v14;
  return a1;
}

uint64_t assignWithTake for FormAccessoryModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  v12 = *v9;
  v13 = *(v9 + 8);
  *v9 = v11;
  *(v9 + 8) = v10;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for FormAccessoryModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for FormAccessoryModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
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
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t FormInfoActionModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = v1[4];
  v8 = *(v1 + 40);

  LOBYTE(v5) = specialized Environment.wrappedValue.getter(v5, v6);
  result = specialized Environment.wrappedValue.getter(v7, v8, &v11);
  v10 = v5 & 1 | (v11 << 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v10;
  return result;
}

uint64_t FormAccessoryModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a2;
  swift_getWitnessTable();
  v40 = type metadata accessor for _ViewModifier_Content();
  v48 = v40;
  v49 = &type metadata for FormRowAccessoryTrait;
  WitnessTable = swift_getWitnessTable();
  v51 = &protocol witness table for FormRowAccessoryTrait;
  v41 = WitnessTable;
  v42 = MEMORY[0x1E6981298];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = *(OpaqueTypeMetadata2 - 8);
  v43 = OpaqueTypeMetadata2;
  v44 = v5;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v34 - v8;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E6980A08];
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], MEMORY[0x1E6980A08]);
  v35 = v9;
  v11 = type metadata accessor for ModifiedContent();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v10);
  v36 = type metadata accessor for ModifiedContent();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  specialized Environment.wrappedValue.getter(*(v2 + *(a1 + 40)), *(v2 + *(a1 + 40) + 8), &v48);
  v20 = *(a1 + 24);
  View.controlSize(_:)();
  swift_getKeyPath();
  LOBYTE(v48) = specialized Environment.wrappedValue.getter(*(v2 + *(a1 + 36)), *(v2 + *(a1 + 36) + 8)) & 1;
  v21 = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38]);
  v46 = v20;
  v47 = v21;
  swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v37 + 8))(v13, v11);
  v22 = v36;
  (*(v14 + 16))(v16, v19, v36);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v35;
  *(v24 + 24) = v20;
  v25 = v22;
  (*(v14 + 32))(v24 + v23, v16, v22);
  v26 = swift_checkMetadataState();
  v27 = v38;
  v28 = v41;
  View.transformTrait<A>(_:transform:)();

  (*(v14 + 8))(v19, v25);
  v48 = v26;
  v49 = &type metadata for FormRowAccessoryTrait;
  WitnessTable = v28;
  v51 = &protocol witness table for FormRowAccessoryTrait;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v39;
  v31 = v43;
  static ViewBuilder.buildExpression<A>(_:)(v27, v43, OpaqueTypeConformance2);
  v32 = *(v44 + 8);
  v32(v27, v31);
  static ViewBuilder.buildExpression<A>(_:)(v30, v31, OpaqueTypeConformance2);
  return (v32)(v30, v31);
}

uint64_t closure #1 in FormAccessoryModifier.body(content:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = MEMORY[0x1E6980A08];
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v7);
  v8 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v9 = type metadata accessor for Group();
  MEMORY[0x1EEE9AC00](v9);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v25 = a1;
  v15 = *a1;
  if (*a1)
  {
    MEMORY[0x1EEE9AC00](v11);
    v16 = v24;
    *(&v23 - 4) = a3;
    *(&v23 - 3) = v16;
    *(&v23 - 2) = v15;
    *(&v23 - 1) = a2;
    WitnessTable = swift_getWitnessTable();
    Group<A>.init(content:)();
    v26 = WitnessTable;
    swift_getWitnessTable();
    v18 = AnyView.init<A>(_:)();
  }

  else
  {
    (*(v13 + 16))(&v23 - v12, a2, v8, v14);
    v20 = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38]);
    v29 = v24;
    v30 = v20;
    v21 = swift_getWitnessTable();
    v22 = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
    v27 = v21;
    v28 = v22;
    swift_getWitnessTable();
    result = AnyView.init<A>(_:)();
    v18 = result;
  }

  *v25 = v18;
  return result;
}

uint64_t closure #1 in closure #1 in FormAccessoryModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23 = a2;
  v24 = a4;
  v6 = MEMORY[0x1E697DC38];
  v7 = MEMORY[0x1E6980A08];
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  v8 = MEMORY[0x1E69E6370];
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v7);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, v6);
  v29[4] = a3;
  v29[5] = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, v8);
  v29[2] = WitnessTable;
  v29[3] = v18;
  v19 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v23, v9, v19);
  v28 = a1;
  v29[0] = &v28;
  (*(v10 + 16))(v12, v15, v9);
  v29[1] = v12;

  v27[0] = MEMORY[0x1E6981910];
  v27[1] = v9;
  v25 = MEMORY[0x1E6981900];
  v26 = v19;
  static ViewBuilder.buildBlock<each A>(_:)(v29, 2uLL, v27);
  v20 = *(v10 + 8);
  v20(v15, v9);
  v20(v12, v9);
}

uint64_t FormInfoButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>();
  v4 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v34 = *(v1 + 32);
  v7 = v1[1];
  v32 = *v1;
  v33 = v7;
  if (specialized Environment.wrappedValue.getter(*(&v7 + 1), v34) == 2)
  {
    v8 = *(v28 + 56);

    return v8(a1, 1, 1, v4);
  }

  else
  {
    v10 = swift_allocObject();
    v11 = v1[1];
    *(v10 + 16) = *v1;
    *(v10 + 32) = v11;
    *(v10 + 48) = *(v1 + 32);
    *v6 = 4;
    type metadata accessor for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>();
    v13 = v12;
    v14 = &v6[*(v12 + 36)];
    *v14 = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
    v14[1] = v10;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v15 = *(v13 + 40);
    outlined init with copy of FormInfoButton(&v32, v29);
    closure #2 in FormInfoButton.body.getter(&v6[v15]);
    LOBYTE(v10) = v33;
    LOBYTE(v14) = BYTE1(v33);
    KeyPath = swift_getKeyPath();
    type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>(0);
    v18 = &v6[*(v17 + 36)];
    *v18 = KeyPath;
    v18[8] = v14;
    v19 = swift_getKeyPath();
    type metadata accessor for ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
    v21 = &v6[*(v20 + 36)];
    *v21 = v19;
    v21[8] = v10 & 1;
    v22 = swift_getKeyPath();
    v23 = swift_getKeyPath();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
    v25 = &v6[*(v24 + 36)];
    *v25 = v22;
    v25[8] = 0;
    *(v25 + 2) = v23;
    v25[24] = 0;
    AccessibilityProperties.init()();

    v30 = xmmword_18CDC8A20;
    v31 = 2;
    static AccessibilityAttachment.properties(_:)();
    outlined destroy of AccessibilityProperties(&v30);
    type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v26 = swift_allocObject();
    memcpy((v26 + 16), v29, 0x128uLL);
    v27 = &v6[*(v4 + 36)];
    *v27 = v26;
    v27[1] = 0;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>(v6, a1);
    return (*(v28 + 56))(a1, 0, 1, v4);
  }
}

uint64_t closure #2 in FormInfoButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  specialized Image.init(systemName:)(0x7269632E6F666E69, 0xEB00000000656C63);
  v12 = v11;
  result = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = result;
  *(a1 + 48) = 2;
  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in FormAccessoryModifier.body(content:)(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = MEMORY[0x1E6980A08];
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v5);
  v6 = *(type metadata accessor for ModifiedContent() - 8);
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return closure #1 in FormAccessoryModifier.body(content:)(a1, v7, v3, v4);
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<FormInfoActionModifier>, _TraitWritingModifier<FormRowInfoAction>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<FormInfoActionModifier>, _TraitWritingModifier<FormRowInfoAction>>)
  {
    type metadata accessor for _ViewModifier_Content<FormInfoActionModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FormInfoActionModifier>, lazy protocol witness table accessor for type FormInfoActionModifier and conformance FormInfoActionModifier, &type metadata for FormInfoActionModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<FormRowInfoAction>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<FormInfoActionModifier>, _TraitWritingModifier<FormRowInfoAction>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<FormInfoActionModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<FormInfoActionModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<FormInfoActionModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<FormInfoActionModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<FormInfoActionModifier>, lazy protocol witness table accessor for type FormInfoActionModifier and conformance FormInfoActionModifier, &type metadata for FormInfoActionModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<FormInfoActionModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<FormRowInfoAction> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInfoAction> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInfoAction> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<FormRowInfoAction>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<FormRowInfoAction> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t destroy for FormInfoButton(uint64_t a1)
{

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for FormInfoButton(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);

  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return a1;
}

uint64_t assignWithCopy for FormInfoButton(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(v2 + 16);
  *(a1 + 17) = *(v2 + 17);
  v5 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v5, v2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v2;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  return a1;
}

uint64_t assignWithTake for FormInfoButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v4 = *(a2 + 32);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for FormInfoButton.Configuration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for FormInfoButton.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for FormInfoButton.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for FormInfoButton.Configuration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for FormInfoButton.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
    type metadata accessor for _ViewModifier_Content<FormInfoActionModifier>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = type metadata accessor for ModifiedContent();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>()
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FormInfoActionModifier>, _TraitWritingModifier<FormRowInfoAction>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>);
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)
  {
    type metadata accessor for ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, type metadata accessor for Label<Text, Image>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0]);
    type metadata accessor for _ViewModifier_Content<FormInfoActionModifier>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>, lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, &type metadata for IconOnlyLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FormInfoActionModifier>, _TraitWritingModifier<FormRowInfoAction>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    v1 = MEMORY[0x1E69816F0];
    type metadata accessor for ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, type metadata accessor for Label<Text, Image>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0]);
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance Button<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<FormInfoActionModifier>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>, lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, &type metadata for IconOnlyLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<FormInfoActionModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>?();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FormInfoActionModifier>, _TraitWritingModifier<FormRowInfoAction>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v1 = MEMORY[0x1E69E6370];
    type metadata accessor for ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>>, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>>(255);
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance Button<A>, type metadata accessor for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<Image.Scale>>, LabelStyleWritingModifier<IconOnlyLabelStyle>>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t ButtonBorderShape.cornerRadius.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t EnvironmentValues.buttonBorderShape.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues._buttonBorderShape : EnvironmentValues, serialized(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues._buttonBorderShape.setter()
{
  type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ButtonBorderShape.Guts(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (*&v2 > 1)
  {
    if (*&v2 != 2)
    {
      if (*&v3 > 2uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = *&v3 == 2;
  }

  else if (v2 == 0.0)
  {
    v4 = *&v3 == 0;
  }

  else
  {
    v4 = *&v3 == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t static ButtonBorderShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (*&v2 <= 1)
    {
      if (v2 == 0.0)
      {
        if (v3 != 0.0)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 != 1)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }

    if (*&v2 == 2)
    {
      if (*&v3 != 2)
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*&v3 <= 2uLL)
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v2 != v3)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

void ButtonBorderShape.path(in:)(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  static GeometryProxy.current.getter();
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  if (v4 != 1 || v3)
  {
    if ((v12 & 1) == 0)
    {
LABEL_10:
      v15 = v19;
      v16 = v20;
      v17 = v21;
      v18 = v22;
      GeometryProxy.environment.getter();
      EnvironmentValues.controlSize.getter();

      static EdgeInsets.zero.getter();
      ResolvedBorderShape.path(in:)(v13);
      v5 = v13[0];
      v6 = v13[1];
      v7 = v14;
      goto LABEL_11;
    }
  }

  else if ((v12 & 1) == 0)
  {
    GeometryProxy.environment.getter();
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);
    if (*(&v13[0] + 1))
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    goto LABEL_10;
  }

  Path.init(_:)();
  v5 = v8;
  v6 = v9;
  v7 = v10;
LABEL_11:
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
}

double protocol witness for Shape.path(in:) in conformance ButtonBorderShape@<D0>(uint64_t a1@<X8>)
{
  ButtonBorderShape.path(in:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t key path getter for EnvironmentValues._buttonBorderShape : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues._buttonBorderShape : EnvironmentValues, serialized(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void (*EnvironmentValues._buttonBorderShape.modify(void *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v4 = v1[1];
  v3[6] = v4;
  type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues._buttonBorderShape.modify;
}

void EnvironmentValues._buttonBorderShape.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ButtonBorderShape(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if (v2 != v3)
    {
      LOBYTE(v4) = 1;
    }

    return (v4 & 1) == 0;
  }

  if (*&v2 <= 1)
  {
    if (v2 == 0.0)
    {
      v5 = *&v3 == 0;
    }

    else
    {
      v5 = *&v3 == 1;
    }

    goto LABEL_12;
  }

  if (*&v2 != 2)
  {
    if (*&v3 <= 2uLL)
    {
      v4 = 0;
    }

    return v4 == 1;
  }

  v5 = *&v3 == 2;
LABEL_12:
  if (!v5)
  {
    LOBYTE(v4) = 0;
  }

  return (v4 & 1) != 0;
}

uint64_t specialized implicit closure #1 in _GraphInputs.buttonBorderShape.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

double BorderedButtonStyle.buttonStyleRepresentation.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 72) = 0;
  *(a1 + 80) = swift_getKeyPath();
  *(a1 + 88) = 0;
  *a1 = 0;
  *(a1 + 8) = v3;
  outlined consume of Glass?(0, 0, 0, 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *&result = 1;
  *(a1 + 40) = xmmword_18CD6A6D0;
  *(a1 + 56) = 0;
  return result;
}

double protocol witness for ButtonStyleConvertible.buttonStyleRepresentation.getter in conformance BorderedButtonStyle@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 72) = 0;
  *(a1 + 80) = swift_getKeyPath();
  *(a1 + 88) = 0;
  *a1 = 0;
  *(a1 + 8) = v3;
  outlined consume of Glass?(0, 0, 0, 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *&result = 1;
  *(a1 + 40) = xmmword_18CD6A6D0;
  *(a1 + 56) = 0;
  return result;
}

__n128 protocol witness for View.body.getter in conformance ResolvedBorderShape@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  result = *(v1 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = 256;
  return result;
}

double protocol witness for InsettableShape.inset(by:) in conformance ResolvedBorderShape._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = *(v2 + 56) + a2;
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = *(v2 + 48);
  *(a1 + 56) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance ResolvedBorderShape._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CGRectInset(*&a2, *(v5 + 56), *(v5 + 56));
  ResolvedBorderShape.path(in:)(v9);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance ResolvedBorderShape._Inset@<D0>(double *a1@<X8>)
{
  result = *(v1 + 56);
  *a1 = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance ResolvedBorderShape._Inset(double *a1)
{
  result = *a1;
  *(v1 + 56) = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ResolvedBorderShape._Inset(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 56);
  return protocol witness for Animatable.animatableData.modify in conformance ResolvedBorderShape._Inset;
}

double protocol witness for Animatable.animatableData.modify in conformance ResolvedBorderShape._Inset(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 56) = *a1;
  return result;
}

__n128 protocol witness for View.body.getter in conformance ResolvedBorderShape._Inset@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  *(a1 + 64) = 256;
  return result;
}

void protocol witness for InsettableShape.inset(by:) in conformance ResolvedBorderShape(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v2 + 24);
  *(a1 + 40) = *(v2 + 40);
  *(a1 + 56) = a2;
}

void ResolvedBorderShape.corners(in:)(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = *(v4 + 8);
  if (*(v4 + 16) != 1)
  {
    *&v24 = *(v4 + 8);
    *(&v24 + 1) = v5;
    LOBYTE(v25) = 1;
    goto LABEL_9;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = (*v4 & 0xFE) == 2;
    }

    if (!v6 || (v20 = a4, v21 = a2, v22 = a3, static _GraphInputs.defaultInterfaceIdiom.getter(), v23 = static Solarium.isEnabled(for:)(), a3 = v22, a2 = v21, a4 = v20, (v23 & 1) != 0))
    {
      LOBYTE(v24) = 0;
      Capsule.corners(in:)();
      return;
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
LABEL_11:
    if (a3)
    {
      v7 = a4;
      static RoundedRectangularShapeCorners.fixed(_:)();
      destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v24, v8, v9, v10);
      v11 = v37;
      v7[12] = v36;
      v7[13] = v11;
      v12 = v39;
      v7[14] = v38;
      v7[15] = v12;
      v13 = v33;
      v7[8] = v32;
      v7[9] = v13;
      v14 = v35;
      v7[10] = v34;
      v7[11] = v14;
      v15 = v29;
      v7[4] = v28;
      v7[5] = v15;
      v16 = v31;
      v7[6] = v30;
      v7[7] = v16;
      v17 = v25;
      *v7 = v24;
      v7[1] = v17;
      v18 = v27;
      v7[2] = v26;
      v7[3] = v18;
      return;
    }

    *(&v24 + 1) = ceil(a2 * 0.35 * 0.5);
    LOBYTE(v25) = 1;
LABEL_9:
    RoundedRectangle.corners(in:)();
    return;
  }

  v19 = a3 & 1;

  MEMORY[0x1EEDE4520](a1, *&a2, v19);
}

double ButtonBorderShape._Inset.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, CGFloat a3@<D4>)
{
  CGRectInset(*&a2, a3, a3);
  ButtonBorderShape.path(in:)(v9);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double (*ButtonBorderShape._Inset.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress;
}

unint64_t lazy protocol witness table accessor for type ButtonBorderShape and conformance ButtonBorderShape()
{
  result = lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape;
  if (!lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape;
  if (!lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape;
  if (!lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBorderShape and conformance ButtonBorderShape);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<ResolvedBorderShape._Inset, ForegroundStyle> and conformance _ShapeView<A, B>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ShapeView<ButtonBorderShape, ForegroundStyle>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset()
{
  result = lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset;
  if (!lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset;
  if (!lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset;
  if (!lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset;
  if (!lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset);
  }

  return result;
}

double protocol witness for InsettableShape.inset(by:) in conformance ButtonBorderShape._Inset@<D0>(double *a1@<X8>, double a2@<D0>)
{
  result = *v2 + a2;
  *a1 = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ButtonBorderShape._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonBorderShape._Inset and conformance ButtonBorderShape._Inset();
  *(a1 + 8) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance ButtonBorderShape._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CGRectInset(*&a2, *v5, *v5);
  ButtonBorderShape.path(in:)(v9);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double protocol witness for View.body.getter in conformance ButtonBorderShape._Inset@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = 256;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ButtonBorderShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonBorderShape and conformance ButtonBorderShape();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ButtonBorderShape>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ButtonBorderShape>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ButtonBorderShape>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for ResolvedBorderShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedBorderShape._Inset(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[64])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedBorderShape._Inset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResolvedBorderShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[56])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedBorderShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset()
{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset;
  if (!lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset);
  }

  return result;
}

void type metadata accessor for _ShapeView<ButtonBorderShape, ForegroundStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ShapeView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for ResolvedBorderShape._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedBorderShape._Inset and conformance ResolvedBorderShape._Inset();
  *(a1 + 8) = result;
  return result;
}

uint64_t UIHostingController.resolveRequiredBridges(_:allowedActions:)(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, char a5)
{
  v6 = v5;
  MEMORY[0x18D00ABE0]();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    if (!a3)
    {
      graphValue #1 <A>() in UIHostingController.resolveRequiredBridges(_:allowedActions:)();
      v13 = v12;
      v15 = v14;
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    v13 = a2;
    v15 = a4;
    goto LABEL_10;
  }

  v16 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter();

  GraphHost.environment.getter();

  type metadata accessor for ToolbarBridge<UIKitToolbarStrategy>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.BridgePropertiesEnvironmentKey>, &type metadata for EnvironmentValues.BridgePropertiesEnvironmentKey, &protocol witness table for EnvironmentValues.BridgePropertiesEnvironmentKey);
  if (v56)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v13 = v54;
  v15 = v55;
LABEL_10:
  v17 = specialized UIHostingController.host.getter();
  outlined copy of ViewGraphBridgeProperties?(a1, a2, a3);
  _UIHostingView.viewGraph.getter();

  GraphHost.environment.getter();

  if (a3 | v53)
  {
    if ((a5 & 3) == 0)
    {
      specialized UIHostingController.resolveBarAppearanceBehavior(_:)(v15);

      goto LABEL_68;
    }

    v18 = UIHostingController.requiredBridges.getter();
    Strong = [v6 navigationController];
    if (!Strong)
    {
      UIHostingController.overrides.getter(&v53);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of HostingControllerOverrides(&v53);
    }

    v52 = a5 & 1;
    v51 = [v6 tabBarController];
    v50 = Strong;
    if (Strong)
    {
      if (v13 & 4) != 0 || ([Strong _supportsDataDrivenNavigation])
      {
LABEL_26:
        if ((a5 & 2) != 0)
        {
          v25 = v18 & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          v25 = v18;
        }

        if (!Strong)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v20 = specialized UIHostingController.navigationBridge.getter();
      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = v20;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_26;
      }

      v22 = *(v21 + 24);
      ObjectType = swift_getObjectType();
      v48 = *(*(v22 + 16) + 8);
      v49 = ObjectType;

      ViewGraphDelegate.hostingControllerOverrides.getter(v49, v48, &v53);
      swift_unknownObjectRelease();
      v24 = swift_unknownObjectWeakLoadStrong();
      outlined destroy of HostingControllerOverrides(&v53);

      if (!v24)
      {
        goto LABEL_26;
      }
    }

    v25 = v18 | (4 * v52);
    if (!Strong)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (UIHostingController.navigationHierarchyAllowsToolbarBridge()())
    {
LABEL_33:
      if ((v13 & 1) == 0)
      {
        v29 = a5 & 1;
        if (v25)
        {
          v30 = 0;
        }

        else
        {
          v30 = a5 & 1;
        }

        v31 = v25 | v30;
        goto LABEL_42;
      }

LABEL_38:
      if ((a5 & 2) != 0)
      {
        v31 = v25 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v31 = v25;
      }

      v29 = a5 & 1;
LABEL_42:
      static Semantics.v3.getter();
      v32 = isLinkedOnOrAfter(_:)();
      v33 = v31 & 0xFFFFFFFFFFFFFFEFLL;
      if ((a5 & 2) == 0)
      {
        v33 = v31;
      }

      if ((v32 & ((v13 & 0x10) == 0)) != 0)
      {
        v34 = v31 | (16 * v29);
      }

      else
      {
        v34 = v33;
      }

      v35 = specialized UIHostingController.host.getter();
      type metadata accessor for _UIHostingView();
      v36 = v35;
      swift_getWitnessTable();
      v37 = ViewRendererHost.isRootHost.getter();

      if ((v37 & 1) != 0 && (v38 = [specialized UIHostingController.host.getter() window]) != 0)
      {

        v39 = v34 | (2 * v52);
        v40 = a5 & 1;
      }

      else
      {
        if ((a5 & 2) != 0)
        {
          v39 = v34 & 0xFFFFFFFFFFFFFFFDLL;
        }

        else
        {
          v39 = v34;
        }

        v40 = a5 & 1;
      }

      v41 = specialized UIHostingController.host.getter();
      v42 = ViewRendererHost.isRootHost.getter();

      if ((v42 & 1) != 0 && (v43 = [specialized UIHostingController.host.getter() window]) != 0)
      {

        v44 = v39 | (32 * v40);
        if (v13 < 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if ((a5 & 2) != 0)
        {
          v44 = v39 & 0xFFFFFFFFFFFFFFDFLL;
        }

        else
        {
          v44 = v39;
        }

        if (v13 < 0)
        {
          goto LABEL_63;
        }
      }

      specialized UIHostingController.host.getter();
      v45 = swift_getObjectType();
      if (((*(v45 + 1392))() & 1) == 0)
      {
        v46 = v44 | (v40 << 7);
LABEL_67:
        UIHostingController.requiredBridges.setter(v46);

        specialized UIHostingController.resolveBarAppearanceBehavior(_:)(v15);

        goto LABEL_68;
      }

LABEL_63:
      if ((a5 & 2) != 0)
      {
        v46 = v44 & 0xFFFFFFFFFFFFFF7FLL;
      }

      else
      {
        v46 = v44;
      }

      goto LABEL_67;
    }

LABEL_31:
    if (!v51)
    {
      v26 = specialized UIHostingController.host.getter();
      type metadata accessor for _UIHostingView();
      v27 = v26;
      swift_getWitnessTable();
      v28 = ViewRendererHost.isRootHost.getter();

      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_33;
  }

LABEL_68:

  return static Update.end()();
}

void UIHostingController._update(environment:)(uint64_t *a1)
{
  v2 = v1;
  if (specialized UIHostingController.alwaysOnBridge.getter())
  {

    AlwaysOnBridge.update(environment:)(a1);
  }

  v4 = *&v1[direct field offset for UIHostingController.dialogBridge];
  v5 = a1[1];
  *(v4 + 96) = *a1;
  *(v4 + 104) = v5;

  if (specialized UIHostingController.navigationBridge.getter())
  {

    UIKitNavigationBridge.update(environment:)(a1);
  }

  v6 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v6)
  {
    v7 = v6;
    BarAppearanceBridge.update(environment:)(a1);
  }

  v8 = specialized UIHostingController.contentScrollViewBridge.getter();
  if (v8)
  {
    v5 = a1[1];
    v18 = *a1;
    v19 = v5;
    v9 = v8;

    EnvironmentValues.pixelLength.getter();
    *(v9 + 48) = v10;
  }

  if (specialized UIHostingController.testBridge.getter())
  {

    PPTTestBridge.update(environment:)(a1);
  }

  v11 = v2;
  WithCurrentHostingControllerAction.init<A>(_:)(v11);
  outlined init with copy of WithCurrentHostingControllerAction(&v18, v17);
  type metadata accessor for ToolbarBridge<UIKitToolbarStrategy>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>, &type metadata for EnvironmentValues.WithCurrentHostingControllerKey, &protocol witness table for EnvironmentValues.WithCurrentHostingControllerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>, &type metadata for EnvironmentValues.WithCurrentHostingControllerKey, &protocol witness table for EnvironmentValues.WithCurrentHostingControllerKey);

  PropertyList.subscript.setter();
  if (v5)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of WithCurrentHostingControllerAction(&v18);
  ContainerBackgroundBridge.update(environment:)(a1);
  v12 = a1[1];
  v18 = *a1;
  v19 = v12;

  UIHostingController.persistentSystemOverlaysEnvironmentDidChange(environment:)(&v18);

  type metadata accessor for ToolbarBridge<UIKitToolbarStrategy>(0, &lazy cache variable for type metadata for ToolbarBridge<UIKitToolbarStrategy>, &type metadata for UIKitToolbarStrategy, &protocol witness table for UIKitToolbarStrategy, type metadata accessor for ToolbarBridge);
  v13 = specialized UIHostingController.toolbarBridge.getter();
  v14 = v13;
  static ToolbarBridge.update<A>(environment:toolbarBridge:hostingController:)(a1, v13, v11);

  v15 = specialized UIHostingController.inspectorBridgeV5.getter();
  if (v15)
  {
    v16 = v15;
    specialized SheetBridge.update(environment:)(a1);
  }
}

uint64_t UIHostingController._update(bridgeProperties:)(void *a1)
{
  if (specialized UIHostingController.alwaysOnBridge.getter())
  {
    *a1 |= 0x20uLL;
  }

  if (specialized UIHostingController.navigationBridge.getter())
  {
    *a1 |= 4uLL;
  }

  v2 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v2 && *(v2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage) == 1)
  {
    v3 = v2;

    specialized Set._subtract<A>(_:)(v4);
  }

  if (specialized UIHostingController.contentScrollViewBridge.getter())
  {
    *a1 |= 0x10uLL;
  }

  if (specialized UIHostingController.toolbarBridge.getter())
  {
    *a1 |= 1uLL;
  }

  result = specialized UIHostingController.inspectorBridgeV5.getter();
  if (result)
  {
    *a1 |= 0x80uLL;
  }

  return result;
}

uint64_t graphValue #1 <A>() in UIHostingController.resolveRequiredBridges(_:allowedActions:)()
{
  AGGraphClearUpdate();
  closure #1 in graphValue #1 <A>() in UIHostingController.resolveRequiredBridges(_:allowedActions:)(&v1);
  AGGraphSetUpdate();
  return v1;
}

uint64_t closure #1 in graphValue #1 <A>() in UIHostingController.resolveRequiredBridges(_:allowedActions:)@<X0>(void *a1@<X8>)
{
  v2 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter();

  ViewGraph.viewGraphInputs.getter();
  lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();
  PropertyList.subscript.getter();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    WeakValue = &static ViewGraphBridgeProperties.defaultValue;
  }

  v5 = *WeakValue;
  v4 = *(WeakValue + 1);
  v6 = *(WeakValue + 2);
  v7 = *(WeakValue + 3);

  outlined destroy of _GraphInputs(v9);

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

uint64_t UIHostingController.navigationHierarchyAllowsToolbarBridge()()
{
  v1 = v0;
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    goto LABEL_7;
  }

  if (one-time initialization token for clientNeedsNestedToolbarBridgeSuppression != -1)
  {
    swift_once();
  }

  if (!clientNeedsNestedToolbarBridgeSuppression)
  {
LABEL_7:
    v7 = 1;
  }

  else
  {
    v2 = [v0 navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 viewControllers];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = v1;
      MEMORY[0x1EEE9AC00](v6);
      v9[2] = &v10;
      v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v5);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

void closure #1 in UIHostingController.updateWindowSceneSizeRestrictions()(void *a1@<X8>)
{
  v2 = specialized UIHostingController.host.getter();
  type metadata accessor for _UIHostingView();
  v3 = v2;
  swift_getWitnessTable();
  ViewRendererHost.sizeThatFits(_:)();
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

void closure #2 in UIHostingController.updateWindowSceneSizeRestrictions()(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a1)
  {
    [specialized UIHostingController.host.getter() sizeThatFits_];
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
  }

  if (a4)
  {
    v10 = specialized UIHostingController.host.getter();
    static _ProposedSize.infinity.getter();
    type metadata accessor for _UIHostingView();
    swift_getWitnessTable();
    ViewRendererHost.sizeThatFits(_:)();
    v12 = v11;
    v14 = v13;

    *a5 = v12;
    *(a5 + 8) = v14;
    *(a5 + 16) = 0;
  }
}

uint64_t one-time initialization function for clientNeedsNestedToolbarBridgeSuppression()
{
  result = closure #1 in variable initialization expression of clientNeedsNestedToolbarBridgeSuppression();
  clientNeedsNestedToolbarBridgeSuppression = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of clientNeedsNestedToolbarBridgeSuppression()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000011 && 0x800000018CD529E0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

unint64_t UIHostingController._childForInterfaceOrientationLock.getter()
{
  v1 = [v0 childViewControllers];
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
LABEL_3:
      v5 = __OFSUB__(v4, 1);
      v6 = v4 - 1;
      if (v5)
      {
        __break(1u);
      }

      else if ((v3 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v6 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v3 + 8 * v6 + 32);
LABEL_8:
          v8 = v7;
          goto LABEL_11;
        }

        __break(1u);
        goto LABEL_24;
      }

      v7 = MEMORY[0x18D00E9C0](v6, v3);
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = [v8 childViewControllerForInterfaceOrientationLock];

  if (v9)
  {
    return v9;
  }

  v10 = [v0 childViewControllers];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_25:

    return 0;
  }

LABEL_24:
  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_14:
  v5 = __OFSUB__(v11, 1);
  result = v11 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_28;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_28:
    v13 = MEMORY[0x18D00E9C0](result, v2);
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v2 + 8 * result + 32);
LABEL_19:
    v9 = v13;

    return v9;
  }

  __break(1u);
  return result;
}

void specialized UIHostingController.resolveBarAppearanceBehavior(_:)(size_t a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = UIHostingController.allowedBehaviors.getter();
  v12 = specialized UIHostingController.barAppearanceBridge.getter();
  if (*(a1 + 16))
  {
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_9:
    static Log.toolbar.getter();
    v15 = type metadata accessor for Logger();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v10, 1, v15) == 1)
    {
      outlined destroy of Logger?(v10, type metadata accessor for Logger?);
    }

    else
    {
      v49 = v11;
      v17 = v1;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v48 = v4;
        v22 = v21;
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v2;
        v23 = v17;
        _os_log_impl(&dword_18BD4A000, v18, v19, "Added toolbar appearance bridge to %@", v20, 0xCu);
        outlined destroy of Logger?(v22, type metadata accessor for NSObject?);
        MEMORY[0x18D0110E0](v22, -1, -1);
        MEMORY[0x18D0110E0](v20, -1, -1);
      }

      (*(v16 + 8))(v10, v15);
      LOBYTE(v11) = v49;
    }

    v24 = [objc_allocWithZone(type metadata accessor for BarAppearanceBridge(0)) init];
    UIHostingController.barAppearanceBridge.setter(v24);
    lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
    if (static UserDefaultKeyedFeature.isEnabled.getter())
    {
      v25 = specialized UIHostingController.host.getter();
      type metadata accessor for _UIHostingView();
      v26 = v25;
      swift_getWitnessTable();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }

    v27 = specialized UIHostingController.barAppearanceBridge.getter();
    if (v27)
    {
      v28 = v27;
      v29 = specialized UIHostingController.host.getter();
      v30 = v28;
      v31 = v29;
      _UIHostingView.viewGraph.getter();

      BarAppearanceBridge.addPreferences(to:)();

      goto LABEL_23;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (!v12)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  if (v11)
  {
    goto LABEL_23;
  }

  static Log.toolbar.getter();
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    outlined destroy of Logger?(v7, type metadata accessor for Logger?);
  }

  else
  {
    v32 = v1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v11;
      v11 = v36;
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v2;
      v37 = v32;
      _os_log_impl(&dword_18BD4A000, v33, v34, "Removed toolbar appearance bridge from %@", v35, 0xCu);
      outlined destroy of Logger?(v11, type metadata accessor for NSObject?);
      v38 = v11;
      LOBYTE(v11) = v49;
      MEMORY[0x18D0110E0](v38, -1, -1);
      MEMORY[0x18D0110E0](v35, -1, -1);
    }

    (*(v14 + 8))(v7, v13);
  }

  if (!specialized UIHostingController.barAppearanceBridge.getter())
  {
    goto LABEL_30;
  }

  v39 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter();

  GraphHost.removePreference<A>(_:)();
  GraphHost.removePreference<A>(_:)();
  GraphHost.removePreference<A>(_:)();

  UIHostingController.barAppearanceBridge.setter(0);
LABEL_23:
  v40 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v40)
  {
    v41 = v40;
    v42 = specialized UIHostingController.host.getter();
    v43 = v41;
    v44 = v42;
    v45 = _UIHostingView.viewGraph.getter();

    BarAppearanceBridge.updateAllowedBars(_:viewGraph:)(a1, v45);

    if (v11)
    {
      v47 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage;
      v43[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage] = *(a1 + 16) != 0;
      v46 = *(a1 + 16) == 0;
    }

    else
    {
      v46 = 0;
      v47 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage;
      v43[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage] = 1;
    }

    v43[v47 + 16] = v46;
  }
}

{
  v2 = v1;
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v79 - v8;
  v10 = *&v2[direct field offset for UIHostingController.allowedBehaviors];
  v11 = direct field offset for UIHostingController.barAppearanceBridge;
  v12 = *&v2[direct field offset for UIHostingController.barAppearanceBridge];
  if (*(a1 + 16))
  {
    if (v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v12)
    {
      if (v10)
      {
        goto LABEL_38;
      }

      static Log.toolbar.getter();
      v13 = type metadata accessor for Logger();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {
        outlined destroy of KeyboardShortcutSource?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      }

      else
      {
        v81 = v10;
        v69 = v2;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v80 = a1;
          v74 = v73;
          *v72 = 138412290;
          *(v72 + 4) = v69;
          *v73 = v69;
          v75 = v69;
          _os_log_impl(&dword_18BD4A000, v70, v71, "Removed toolbar appearance bridge from %@", v72, 0xCu);
          outlined destroy of NSObject?(v74);
          v76 = v74;
          a1 = v80;
          MEMORY[0x18D0110E0](v76, -1, -1);
          MEMORY[0x18D0110E0](v72, -1, -1);
        }

        (*(v14 + 8))(v6, v13);
        LOBYTE(v10) = v81;
      }

      if (*&v2[v11])
      {
        v77 = *&v2[direct field offset for UIHostingController.host];
        UIHostingViewBase.viewGraph.getter();

        GraphHost.removePreference<A>(_:)();
        GraphHost.removePreference<A>(_:)();
        GraphHost.removePreference<A>(_:)();

        v78 = *&v2[v11];
        *&v2[v11] = 0;

        v61 = *&v2[v11];
        if (!v61)
        {
          return;
        }

        goto LABEL_39;
      }

LABEL_51:
      __break(1u);
      return;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  static Log.toolbar.getter();
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v9, 1, v15);
  v81 = v10;
  if (v17 == 1)
  {
    outlined destroy of KeyboardShortcutSource?(v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  else
  {
    v18 = v2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v80 = a1;
      v23 = v22;
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v24 = v18;
      _os_log_impl(&dword_18BD4A000, v19, v20, "Added toolbar appearance bridge to %@", v21, 0xCu);
      outlined destroy of NSObject?(v23);
      v25 = v23;
      a1 = v80;
      MEMORY[0x18D0110E0](v25, -1, -1);
      MEMORY[0x18D0110E0](v21, -1, -1);
    }

    (*(v16 + 8))(v9, v15);
  }

  v26 = [objc_allocWithZone(type metadata accessor for BarAppearanceBridge(0)) init];
  v27 = *&v2[v11];
  *&v2[v11] = v26;

  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v28 = *&v2[direct field offset for UIHostingController.host];
    type metadata accessor for UIHostingController<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, type metadata accessor for _UIHostingView);
    v29 = v28;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v30 = *&v2[v11];
  if (!v30)
  {
    __break(1u);
    goto LABEL_51;
  }

  v31 = *&v2[direct field offset for UIHostingController.host];
  v32 = v30;
  v33 = v31;
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  v34 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_seedTracker;
  swift_beginAccess();
  v35 = *&v32[v34];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
    *&v32[v34] = v35;
  }

  v38 = *(v35 + 2);
  v37 = *(v35 + 3);
  if (v38 >= v37 >> 1)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
  }

  *(v35 + 2) = v38 + 1;
  v39 = &v35[24 * v38];
  *(v39 + 4) = &type metadata for NavigationTitleKey;
  *(v39 + 5) = &protocol witness table for NavigationTitleKey;
  *(v39 + 12) = -1;
  *&v32[v34] = v35;
  swift_endAccess();
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  v40 = *&v32[v34];
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v40;
  if ((v41 & 1) == 0)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
    *&v32[v34] = v40;
  }

  v43 = *(v40 + 2);
  v42 = *(v40 + 3);
  if (v43 >= v42 >> 1)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
  }

  *(v40 + 2) = v43 + 1;
  v44 = &v40[24 * v43];
  *(v44 + 4) = &type metadata for ToolbarRoleKey;
  *(v44 + 5) = &protocol witness table for ToolbarRoleKey;
  *(v44 + 12) = -1;
  *&v32[v34] = v40;
  swift_endAccess();
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  v45 = *&v32[v34];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v45;
  if ((v46 & 1) == 0)
  {
    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
    *&v32[v34] = v45;
  }

  v48 = *(v45 + 2);
  v47 = *(v45 + 3);
  if (v48 >= v47 >> 1)
  {
    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
  }

  *(v45 + 2) = v48 + 1;
  v49 = &v45[24 * v48];
  *(v49 + 4) = &type metadata for NavigationSubtitleKey;
  *(v49 + 5) = &protocol witness table for NavigationSubtitleKey;
  *(v49 + 12) = -1;
  *&v32[v34] = v45;
  swift_endAccess();
  GraphHost.addPreference<A>(_:)();
  swift_beginAccess();
  v50 = *&v32[v34];
  v51 = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v50;
  if ((v51 & 1) == 0)
  {
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
    *&v32[v34] = v50;
  }

  v53 = *(v50 + 2);
  v52 = *(v50 + 3);
  if (v53 >= v52 >> 1)
  {
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
  }

  *(v50 + 2) = v53 + 1;
  v54 = &v50[24 * v53];
  *(v54 + 4) = &type metadata for NavigationBarBackButtonHiddenKey;
  *(v54 + 5) = &protocol witness table for NavigationBarBackButtonHiddenKey;
  *(v54 + 12) = -1;
  *&v32[v34] = v50;
  v56 = *(v50 + 2);
  v55 = *(v50 + 3);
  if (v56 >= v55 >> 1)
  {
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v50);
  }

  *(v50 + 2) = v56 + 1;
  v57 = &v50[24 * v56];
  *(v57 + 4) = &type metadata for ToolbarKey;
  *(v57 + 5) = &protocol witness table for ToolbarKey;
  *(v57 + 12) = -1;
  *&v32[v34] = v50;
  v59 = *(v50 + 2);
  v58 = *(v50 + 3);
  if (v59 >= v58 >> 1)
  {
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v50);
  }

  *(v50 + 2) = v59 + 1;
  v60 = &v50[24 * v59];
  *(v60 + 4) = &type metadata for SearchKey;
  *(v60 + 5) = &protocol witness table for SearchKey;
  *(v60 + 12) = -1;
  *&v32[v34] = v50;
  swift_endAccess();

  LOBYTE(v10) = v81;
LABEL_38:
  v61 = *&v2[v11];
  if (!v61)
  {
    return;
  }

LABEL_39:
  v62 = *&v2[direct field offset for UIHostingController.host];
  v63 = v61;
  v64 = v62;
  v65 = UIHostingViewBase.viewGraph.getter();

  v66 = *(v65 + 88);

  BarAppearanceBridge.updateAllowedBars(_:viewGraph:)(a1, v66);

  if (v10)
  {
    v68 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage;
    v63[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage] = *(a1 + 16) != 0;
    v67 = *(a1 + 16) == 0;
  }

  else
  {
    v67 = 0;
    v68 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage;
    v63[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage] = 1;
  }

  v63[v68 + 16] = v67;
}

{
  v2 = v1;
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = *&v2[direct field offset for UIHostingController.allowedBehaviors];
  v11 = direct field offset for UIHostingController.barAppearanceBridge;
  v12 = *&v2[direct field offset for UIHostingController.barAppearanceBridge];
  if (*(a1 + 16))
  {
    if (v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v12)
    {
      if (v10)
      {
        goto LABEL_18;
      }

      static Log.toolbar.getter();
      v13 = type metadata accessor for Logger();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {
        outlined destroy of KeyboardShortcutSource?(v6, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      }

      else
      {
        v42 = v2;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v54 = a1;
          v46 = v45;
          v47 = swift_slowAlloc();
          v53 = v10;
          v10 = v47;
          *v46 = 138412290;
          *(v46 + 4) = v42;
          *v47 = v42;
          v48 = v42;
          _os_log_impl(&dword_18BD4A000, v43, v44, "Removed toolbar appearance bridge from %@", v46, 0xCu);
          outlined destroy of NSObject?(v10);
          v49 = v10;
          LOBYTE(v10) = v53;
          MEMORY[0x18D0110E0](v49, -1, -1);
          v50 = v46;
          a1 = v54;
          MEMORY[0x18D0110E0](v50, -1, -1);
        }

        (*(v14 + 8))(v6, v13);
      }

      if (*&v2[v11])
      {
        v51 = *&v2[direct field offset for UIHostingController.host];
        UIHostingViewBase.viewGraph.getter();

        GraphHost.removePreference<A>(_:)();
        GraphHost.removePreference<A>(_:)();
        GraphHost.removePreference<A>(_:)();

        v52 = *&v2[v11];
        *&v2[v11] = 0;

        v34 = *&v2[v11];
        if (!v34)
        {
          return;
        }

        goto LABEL_19;
      }

LABEL_31:
      __break(1u);
      return;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  static Log.toolbar.getter();
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    outlined destroy of KeyboardShortcutSource?(v9, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  else
  {
    v17 = v2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v54 = a1;
      v21 = v20;
      v22 = swift_slowAlloc();
      v53 = v10;
      v10 = v22;
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = v17;
      v23 = v17;
      _os_log_impl(&dword_18BD4A000, v18, v19, "Added toolbar appearance bridge to %@", v21, 0xCu);
      outlined destroy of NSObject?(v10);
      v24 = v10;
      LOBYTE(v10) = v53;
      MEMORY[0x18D0110E0](v24, -1, -1);
      v25 = v21;
      a1 = v54;
      MEMORY[0x18D0110E0](v25, -1, -1);
    }

    (*(v16 + 8))(v9, v15);
  }

  v26 = [objc_allocWithZone(type metadata accessor for BarAppearanceBridge(0)) init];
  v27 = *&v2[v11];
  *&v2[v11] = v26;

  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v28 = *&v2[direct field offset for UIHostingController.host];
    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    v29 = v28;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v30 = *&v2[v11];
  if (!v30)
  {
    __break(1u);
    goto LABEL_31;
  }

  v31 = *&v2[direct field offset for UIHostingController.host];
  v32 = v30;
  v33 = v31;
  UIHostingViewBase.viewGraph.getter();

  BarAppearanceBridge.addPreferences(to:)();

LABEL_18:
  v34 = *&v2[v11];
  if (!v34)
  {
    return;
  }

LABEL_19:
  v35 = *&v2[direct field offset for UIHostingController.host];
  v36 = v34;
  v37 = v35;
  v38 = UIHostingViewBase.viewGraph.getter();

  v39 = *(v38 + 88);

  BarAppearanceBridge.updateAllowedBars(_:viewGraph:)(a1, v39);

  if (v10)
  {
    v41 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage;
    v36[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage] = *(a1 + 16) != 0;
    v40 = *(a1 + 16) == 0;
  }

  else
  {
    v40 = 0;
    v41 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage;
    v36[OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_platformStorage] = 1;
  }

  v36[v41 + 16] = v40;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ToolbarBridge<UIKitToolbarStrategy>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.accessibility()(uint64_t a1, uint64_t a2)
{
  AccessibilityProperties.init()();
  outlined init with copy of AccessibilityProperties(v8, v6);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v8);
  type metadata accessor for MutableBox<AccessibilityAttachment>();
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x128uLL);
  __src[0] = v4;
  __src[1] = 0;
  MEMORY[0x18D00A570](__src, a1, &type metadata for AccessibilityAttachmentModifier, a2);
}

double static AccessibilityAttachmentModifier.makeAccessibilityViewModifier(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = a1[2];
  v5 = *(a1 + 6);
  v6 = *(a1 + 14);
  v21 = *(a1 + 60);
  v22 = *(a1 + 76);
  v19 = v5;
  v20 = v6;
  a2(&v14);
  *&v16 = v5;
  DWORD2(v16) = v6;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    *&v16 = v5;
    DWORD2(v16) = v6;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v16 = v14;
      DWORD2(v16) = LODWORD(v15);
      v7 = PreferencesOutputs.subscript.getter();
      if ((v7 & 0x100000000) != 0)
      {
        v8 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v8 = v7;
      }

      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      KeyPath = swift_getKeyPath();
      dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
      if (v11)
      {
        LODWORD(v16) = OffsetAttribute2;
        *(&v16 + 1) = KeyPath;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>();
        lazy protocol witness table accessor for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>();

        v12 = Attribute.init<A>(body:value:flags:update:)();
      }

      else
      {
        v12 = AGGraphCreateOffsetAttribute2();
      }

      *&v16 = __PAIR64__(v12, v8);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v16) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  *a3 = v14;
  result = v15;
  a3[1] = v15;
  return result;
}

uint64_t protocol witness for AccessibilityViewModifier.scrapeableContent(environment:idiom:) in conformance AccessibilityAttachmentModifier@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *v3;
  v9 = swift_allocObject();
  swift_beginAccess();
  outlined init with copy of AccessibilityProperties(v8 + 16, v9 + 16);
  *(v9 + 304) = v6;
  *(v9 + 312) = v7;
  *(v9 + 320) = *a2;
  *a3 = v9 | 0x3000000000000000;
}

unint64_t lazy protocol witness table accessor for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>()
{
  result = lazy protocol witness table cache variable for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>;
  if (!lazy protocol witness table cache variable for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>)
  {
    type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SplitColumnNavigationStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CollapsedSplitNavigationStrategy_Phone(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>)
  {
    type metadata accessor for ModifiedContent<NavigationColumnModifier, InjectKeyModifier>(255, &lazy cache variable for type metadata for ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, &type metadata for NavigationColumnModifier, &type metadata for InjectKeyModifier, MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>();
    lazy protocol witness table accessor for type ModifiedContent<NavigationColumnModifier, InjectKeyModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationColumnModifier, InjectKeyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationColumnModifier, InjectKeyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationColumnModifier, InjectKeyModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationColumnModifier, InjectKeyModifier>(255, &lazy cache variable for type metadata for ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, &type metadata for NavigationColumnModifier, &type metadata for InjectKeyModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type NavigationColumnModifier and conformance NavigationColumnModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationColumnModifier, InjectKeyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationColumnModifier, InjectKeyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void *assignWithCopy for CollapsedSplitNavigationStrategy_Phone(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

unint64_t instantiation function for generic protocol witness table for NavigationStrategy_Phone(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationStrategy_Phone and conformance NavigationStrategy_Phone();
  *(a1 + 8) = result;
  return result;
}

uint64_t AnimatedValueView.init(_:default:track:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v13;
  v14 = type metadata accessor for AnimatedValueView();
  v15 = *(a6 - 8);
  v16 = (*(v15 + 16))(a7 + *(v14 + 44), a2, a6);
  a3(v16);
  result = (*(v15 + 8))(a2, a6);
  v18 = (a7 + *(v14 + 52));
  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t static AnimatedValueView._makeView(view:inputs:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v5 = *(a2 + 2);
  v14 = *(a2 + 12);
  v6 = *(a2 + 6);
  v15 = *(a2 + 5);
  v7 = *(a2 + 7);
  v8 = *(a2 + 3);
  v29 = *(a2 + 2);
  v30 = v8;
  v31 = *(a2 + 4);
  v32 = *(a2 + 20);
  type metadata accessor for AnimatedValueView();
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  _GraphValue.value.getter();
  closure #1 in static AnimatedValueView._makeView(view:inputs:)(1);
  LODWORD(v20) = v9;
  HIDWORD(v20) = AGGraphCreateOffsetAttribute2();
  v21 = v6;
  v22 = __PAIR64__(v5, v7);
  v23 = 0;
  v24 = 0xC000000000000000;
  v17 = a4;
  v18 = type metadata accessor for AnimatorAttribute();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v16, v18, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);

  AGGraphSetFlags();
  _GraphValue.init(_:)();
  v20 = v13;
  v21 = v5;
  v22 = v14;
  v23 = v15;
  v24 = __PAIR64__(v7, v6);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static AnimatedValueView._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for AnimatedValueView();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v5, &type metadata for AnimatedValuePlaybackConfiguration, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance AnimatedValueView<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t AnimatorAttribute.updateValue()(uint64_t a1)
{
  v2 = v1;
  v63 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v8;
  v54 = *(v8 + 32);
  v9 = type metadata accessor for AnimatedValueView();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  v13 = *(v1 + 5);
  if (v13 == *AGGraphGetValue() >> 1)
  {
    v14 = *(v2 + 3);
  }

  else
  {
    v15 = *AGGraphGetValue();

    *(v2 + 5) = v15 >> 1;
    v14 = 0xC000000000000000;
    *(v2 + 3) = 0xC000000000000000;
  }

  Value = AGGraphGetValue();
  v18 = *Value;
  v17 = *(Value + 8);
  v55 = *(Value + 16);
  v52 = v3;
  v49 = v18;
  v48 = v17;
  if ((v19 & 1) != 0 || AnimatedValueState.isAnimating.getter(v14) || v14 == 0xC000000000000000)
  {
    v20 = v55;
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v18, v17, v55);
    AGGraphClearUpdate();
    closure #1 in AnimatorAttribute.updateValue()(&v60);
    AGGraphSetUpdate();
    v58[0] = v18;
    v58[1] = v17;
    v59 = v20;
    v57 = *AGGraphGetValue();
    v21 = AGGraphGetValue();
    (*(v10 + 16))(v12, v21, v9);
    v22 = *(v9 + 48);
    v23 = type metadata accessor for AnimatedValueTrack();
    v24 = *(v23 - 8);
    (*(v24 + 16))(&v60, &v12[v22], v23);
    (*(v10 + 8))(v12, v9);
    type metadata accessor for AnimatedValueState();
    AnimatedValueState.update(configuration:time:track:transaction:)(v58, &v57, &v60);

    (*(v24 + 8))(&v60, v23);
  }

  else
  {
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v18, v17, v55);
  }

  if (AnimatedValueState.isAnimating.getter(*(v2 + 3)))
  {
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    type metadata accessor for ViewGraph();
    v25 = swift_dynamicCastClassUnconditional();
    v26 = *AGGraphGetValue() + 0.00833333333;
    swift_beginAccess();
    v27 = *(v25 + 376);
    if (v26 < v27)
    {
      v27 = v26;
    }

    *(v25 + 376) = v27;
  }

  v28 = AGGraphGetValue();
  v29 = *(v10 + 16);
  v29(v12, v28, v9);
  v30 = v47;
  (*(v56 + 16))(v47, &v12[*(v9 + 44)], v6);
  v31 = *(v10 + 8);
  v31(v12, v9);
  v57 = *AGGraphGetValue();
  v32 = AGGraphGetValue();
  v29(v12, v32, v9);
  v33 = *(v9 + 48);
  v34 = type metadata accessor for AnimatedValueTrack();
  v35 = v6;
  v36 = *(v34 - 8);
  (*(v36 + 16))(&v60, &v12[v33], v34);
  v31(v12, v9);
  v46 = v35;
  type metadata accessor for AnimatedValueState();
  AnimatedValueState.update(value:mix:at:currentTrack:)(v30, &v57, &v60, 1.0);
  v37 = (*(v36 + 8))(&v60, v34);
  v38 = *(v2 + 3);
  v60 = *v2;
  v61 = *(v2 + 2);
  v62 = v38;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v52;
  *(&v46 - 6) = v35;
  *(&v46 - 5) = v39;
  *(&v46 - 4) = v54;
  *(&v46 - 3) = v2;
  *(&v46 - 2) = v30;

  v40 = v50;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B40](v40, v39, WitnessTable);
  v42 = v51;
  StatefulRule.withObservation<A>(observationCenter:do:)();

  MEMORY[0x1EEE9AC00](v43);
  *(&v46 - 2) = v40;
  *(&v46 - 1) = WitnessTable;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v42, partial apply for closure #1 in StatefulRule.value.setter, (&v46 - 4), v39, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v44);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v49, v48, v55);
  (*(v53 + 8))(v42, v39);
  return (*(v56 + 8))(v30, v46);
}

BOOL AnimatedValueState.isAnimating.getter(unint64_t a1)
{
  v1 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    return v1 == 2;
  }

  if (!v1)
  {
    return *(a1 + 24) >> 63;
  }

  v3 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  type metadata accessor for AnimatedValueState.EventDrivenState();
  return v3 >= 0;
}

uint64_t closure #1 in AnimatorAttribute.updateValue()@<X0>(void *a1@<X8>)
{

  v2 = *AGGraphGetValue();

  *a1 = v2;
  return result;
}

uint64_t AnimatedValueState.update(configuration:time:track:transaction:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = v6 >> 6;
  if (v6 >> 6 > 1)
  {
    if (v8 == 2)
    {
      if (*v4 >> 62 == 1)
      {
        v12 = *(a1 + 8);
        v13 = *((*v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v31 = *((*v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        *(&v31 + 1) = v13;
        v30 = v7;
        v29 = v5;
        v27 = v12;
        v28 = v6 & 1;
        type metadata accessor for AnimatedValueState.EventDrivenState();

        AnimatedValueState.EventDrivenState.update(at:value:track:behavior:)(&v30, &v29, a3, &v27);
        v15 = swift_allocObject();
        v16 = *(&v31 + 1);
        *(v15 + 16) = v31;
        *(v15 + 24) = v16;

        v18 = v15 | 0x4000000000000000;
      }

      else
      {

        result = swift_allocObject();
        *(result + 16) = v5;
        *(result + 24) = 0x8000000000000000;
        v18 = result | 0x4000000000000000;
      }
    }

    else if (*v4 >> 62 == 2)
    {
      v24 = *((*v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((*v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v25;

      v18 = v26 | 0x8000000000000000;
    }

    else
    {

      result = swift_allocObject();
      *(result + 16) = v7;
      *(result + 24) = LOBYTE(v5) & 1;
      v18 = result | 0x8000000000000000;
    }

    *v4 = v18;
  }

  else
  {
    if (v8)
    {
      v19 = *a1;
      type metadata accessor for AnimatedValueTrack();
      AnimatedValueTrack.duration.getter();
      v10 = v20 * v19;
      v21 = *v4;
      if (!(*v4 >> 62))
      {
        v22 = *(v21 + 24);
        *&v31 = *(v21 + 16);
        *(&v31 + 1) = v22;
        v27 = v7;
        outlined copy of AnimatedValueState<A>.PausedState<A>(v31, v22);
        goto LABEL_10;
      }

      result = swift_allocObject();
      *(result + 16) = v10;
    }

    else
    {
      v9 = *v4;
      if (!(*v4 >> 62))
      {
        v10 = *a1;
        v11 = *(v9 + 24);
        *&v31 = *(v9 + 16);
        *(&v31 + 1) = v11;
        v27 = v7;
        outlined copy of AnimatedValueState<A>.PausedState<A>(v31, v11);
LABEL_10:
        type metadata accessor for AnimatedValueState.PausedState();
        specialized AnimatedValueState.PausedState.update(at:pauseTime:track:transaction:)(v10);
        v23 = swift_allocObject();
        *(v23 + 16) = v31;

        *v4 = v23;
        return result;
      }

      result = swift_allocObject();
      *(result + 16) = v5;
    }

    *(result + 24) = 0;
    *v4 = result;
  }

  return result;
}

uint64_t AnimatedValueState.update(value:mix:at:currentTrack:)(uint64_t a1, double *a2, uint64_t a3, double a4)
{
  v8 = *a2;
  v9 = *v4;
  v10 = *v4 >> 62;
  if (v10 <= 1)
  {
    if (v10)
    {
      v23 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v24 = type metadata accessor for AnimatedValueState.EventDrivenState();
      *&v25 = v8;
      return AnimatedValueState.EventDrivenState.Phase.update(value:mix:at:currentTrack:)(a1, &v25, a3, v23, *(v24 + 16), a4);
    }

    else
    {
      v11 = *(v9 + 24);
      *&v25 = *(v9 + 16);
      *(&v25 + 1) = v11;
      outlined copy of AnimatedValueState<A>.PausedState<A>(v25, v11);
      type metadata accessor for AnimatedValueState.PausedState();
      AnimatedValueState.PausedState.update(value:mix:at:currentTrack:)(a1, a4);
      v12 = swift_allocObject();
      *(v12 + 16) = v25;

      *v4 = v12;
    }

    return result;
  }

  if (v10 != 2)
  {
    type metadata accessor for AnimatedValueTrack();
    return AnimatedValueTrack.update(value:mix:at:)(a1, a4, 0.0);
  }

  v14 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  v15 = *(v14 + 24);
  v16 = v8 - *(v14 + 16);
  type metadata accessor for AnimatedValueTrack();

  result = AnimatedValueTrack.duration.getter();
  v18 = floor(v16 / v17);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v19 = v18;
  AnimatedValueTrack.duration.getter();
  v21 = fmod(v16, v20);
  if ((v15 & v19) == 1)
  {
    AnimatedValueTrack.duration.getter();
    v21 = v22 - v21;
  }

  AnimatedValueTrack.update(value:mix:at:)(a1, 1.0, v21);
}

uint64_t closure #1 in closure #2 in AnimatorAttribute.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + *(type metadata accessor for AnimatedValueView() + 52));
  (*(v6 + 16))(v8, a2, a3);
  v9(v8);
  return (*(v6 + 8))(v8, a3);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnimatorAttribute<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t AnimatedValueState.EventDrivenState.update(at:value:track:behavior:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *a1;
  v8 = *a2;
  v9 = *a4;
  v10 = *(a4 + 8);
  v18 = *a1;
  type metadata accessor for AnimatedValueState.EventDrivenState.Phase();
  AnimatedValueState.EventDrivenState.Phase.update(at:)(&v18);
  v18 = v8;

  v11 = static AnyEquatable.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    v12 = v5[1];
    if (v12 < 0)
    {
      v15 = swift_allocObject();
      v16 = type metadata accessor for AnimatedValueTrack();
      (*(*(v16 - 8) + 16))(v15 + 16, a3, v16);
      *(v15 + 56) = v7;
      goto LABEL_6;
    }

    if ((v10 & 1) == 0)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = type metadata accessor for AnimatedValueTrack();
      (*(*(v14 - 8) + 16))(v13 + 24, a3, v14);
      *(v13 + 64) = v7;
      *(v13 + 72) = v9;
      v15 = v13 | 0x4000000000000000;
LABEL_6:
      v5[1] = v15;
    }
  }

  *v5 = v8;
  return result;
}

uint64_t AnimatedValueState.PausedState.update(value:mix:at:currentTrack:)(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = v2[1];
  if (v6 < 0)
  {
    v9 = *v2;

    v8 = AnimatorState.update(_:at:environment:)();
    type metadata accessor for AnimatedValueTrack();
    AnimatedValueTrack.update(value:mix:at:)(a1, a2, v9);
    result = outlined consume of AnimatedValueState<A>.PausedState<A>(v5, v6);
    if (v8)
    {
      result = outlined consume of AnimatedValueState<A>.PausedState<A>(v5, v6);
      *v2 = v5;
      v2[1] = 0;
    }
  }

  else
  {
    type metadata accessor for AnimatedValueTrack();
    return AnimatedValueTrack.update(value:mix:at:)(a1, a2, *&v5);
  }

  return result;
}

uint64_t AnimatedValueState.EventDrivenState.Phase.update(value:mix:at:currentTrack:)(uint64_t a1, double *a2, uint64_t a3, unint64_t a4, uint64_t a5, double a6)
{
  v8 = *a2;
  if (a4 >> 62)
  {
    if (a4 >> 62 == 1)
    {
      v10 = a4 & 0x3FFFFFFFFFFFFFFFLL;
      v11 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v13 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
      v15 = type metadata accessor for AnimatedValueTrack();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v26, v10 + 24, v15);
      v17 = v8 - v12;

      MEMORY[0x18D00BC00](&v25, v18);
      v19 = UnitCurve.value(at:)(v17 / v13);
      *&v25 = v8;
      AnimatedValueState.EventDrivenState.Phase.update(value:mix:at:currentTrack:)(a1, &v25, a3, v11, a5, a6);
      AnimatedValueTrack.update(value:mix:at:)(a1, v19 * a6, v17);

      return (*(v16 + 8))(v26, v15);
    }

    else
    {
      type metadata accessor for AnimatedValueTrack();
      return AnimatedValueTrack.update(value:mix:at:)(a1, a6, 0.0);
    }
  }

  else
  {
    v21 = *(a4 + 56);
    v23 = type metadata accessor for AnimatedValueTrack();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v26, a4 + 16, v23);
    AnimatedValueTrack.update(value:mix:at:)(a1, a6, v8 - v21);
    return (*(v24 + 8))(v26, v23);
  }
}

double *AnimatedValueState.EventDrivenState.Phase.update(at:)(double *result)
{
  v2 = *result;
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = *(v5 + 64);
      v7 = *(v5 + 72);
      v8 = type metadata accessor for AnimatedValueTrack();
      v9 = *(v8 - 8);
      (*(v9 + 16))(v18, v5 + 24, v8);
      if (v7 >= v2 - v6)
      {
        return (*(v9 + 8))(v18, v8);
      }

      else
      {
        v10 = swift_allocObject();
        v11 = v18[1];
        *(v10 + 16) = v18[0];
        *(v10 + 32) = v11;
        *(v10 + 48) = v19;
        *(v10 + 56) = v6;

        *v1 = v10;
      }
    }
  }

  else
  {
    v12 = *(v3 + 56);
    v13 = type metadata accessor for AnimatedValueTrack();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v18, v3 + 16, v13);
    v15 = v2 - v12;

    AnimatedValueTrack.duration.getter();
    v17 = v16;
    (*(v14 + 8))(v18, v13);

    if (v17 < v15)
    {

      *v1 = 0x8000000000000000;
    }
  }

  return result;
}

uint64_t View.animatedValue<A, B>(_:default:track:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a6;
  v51 = a5;
  v50 = a4;
  v49 = a3;
  v47 = a2;
  v56 = a9;
  v57 = a11;
  v65 = a8;
  v66 = a7;
  v67 = a10;
  v68 = a11;
  v69 = a12;
  v15 = type metadata accessor for AnimatedValueModifier();
  v16 = *(v15 - 8);
  v54 = v15;
  v55 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v43 - v17;
  v18 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v21;
  v48 = type metadata accessor for AnimatedValueView();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - v25;
  v28 = *a1;
  v27 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  v65 = v28;
  v66 = v27;
  LOBYTE(v67) = a1;
  (*(v18 + 16))(v21, v47, a8, v24);
  v29 = a7;
  v43 = a7;
  v58 = a7;
  v59 = a8;
  v30 = v57;
  v60 = a10;
  v61 = v57;
  v62 = a12;
  v63 = v49;
  v64 = v50;
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = a8;
  v31[4] = a10;
  v31[5] = v30;
  v32 = v51;
  v31[6] = a12;
  v31[7] = v32;
  v31[8] = v52;
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v28, v27, a1);

  AnimatedValueView.init(_:default:track:content:)(&v65, v44, partial apply for closure #1 in View.animatedValue<A, B>(_:default:track:content:), partial apply for closure #2 in View.animatedValue<A, B>(_:default:track:content:), v31, a8, v26);
  v33 = v46;
  v34 = v45;
  v35 = v48;
  (*(v46 + 16))(v45, v26, v48);
  v36 = v53;
  v37 = v34;
  v38 = v43;
  v39 = v57;
  AnimatedValueModifier.init(parent:keyframeView:)(v43, v37, v53);
  v40 = v38;
  v41 = v54;
  MEMORY[0x18D00A570](v36, v40, v54, v39);
  (*(v55 + 8))(v36, v41);
  return (*(v33 + 8))(v26, v35);
}

uint64_t closure #1 in View.animatedValue<A, B>(_:default:track:content:)(void (*a1)(void *__return_ptr), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(v8);
  static AnimatedValueTrackBuilder.buildExpression(_:)(v9, v8, a4);
  v5 = type metadata accessor for AnimatedValueTrack();
  v6 = *(*(v5 - 8) + 8);
  v6(v8, v5);
  static AnimatedValueTrackBuilder.buildPartialBlock(first:)(v9, a4);
  return (v6)(v9, v5);
}

uint64_t closure #2 in View.animatedValue<A, B>(_:default:track:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v18(v17, v17, v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a6, a8);
  v19 = *(v10 + 8);
  v19(v12, a6);
  static ViewBuilder.buildExpression<A>(_:)(v16, a6, a8);
  return (v19)(v16, a6);
}

uint64_t AnimatedValueModifier.init(parent:keyframeView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for AnimatedValueModifier() + 60);
  v6 = type metadata accessor for AnimatedValueView();
  return (*(*(v6 - 8) + 32))(&a3[v5], a2, v6);
}

uint64_t static AnimatedValueModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a2 + 48);
  v14 = *(a2 + 16);
  v25 = *(a2 + 32);
  v26 = v13;
  v15 = *(a2 + 48);
  v27 = *(a2 + 64);
  v16 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v16;
  v20 = v25;
  v21 = v15;
  v22 = *(a2 + 64);
  v28 = *(a2 + 80);
  v23 = *(a2 + 80);
  v18 = v24[0];
  v19 = v14;
  type metadata accessor for PlaceholderContentView();
  outlined init with copy of _ViewInputs(v24, &v33);
  _ViewInputs.pushModifierBody<A>(_:body:)();
  type metadata accessor for AnimatedValueView();
  *&v33 = a5;
  *(&v33 + 1) = a6;
  *&v34 = a7;
  *(&v34 + 1) = a8;
  *&v35 = a9;
  type metadata accessor for AnimatedValueModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v29[2] = v20;
  v29[3] = v21;
  v29[4] = v22;
  v30 = v23;
  v29[0] = v18;
  v29[1] = v19;
  outlined init with copy of _ViewInputs(v29, &v33);
  static View.makeDebuggableView(view:inputs:)();
  v31[2] = v20;
  v31[3] = v21;
  v31[4] = v22;
  v32 = v23;
  v31[0] = v18;
  v31[1] = v19;
  outlined destroy of _ViewInputs(v31);
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v33 = v18;
  v34 = v19;
  return outlined destroy of _ViewInputs(&v33);
}

uint64_t closure #1 in static AnimatedValueModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v7 = type metadata accessor for AnimatedValueModifier();
  v8 = *(v7 + 60);
  v12[2] = v7;
  v13 = type metadata accessor for AnimatedValueView();
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, v13, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v14;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AnimatedValueModifier<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t VisualEffect.animatedValue<A, B>(progress:default:track:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>)
{
  v28 = a4;
  v26[1] = a3;
  v27 = a2;
  v26[0] = a7;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v29, v18);
  (*(v16 + 16))(v20, a1, a5);
  v22 = type metadata accessor for AnimatedValueTrack();
  AnimatedValueTrack.duration.getter();
  v24 = AnimatedValueTrack.update(value:at:)(v20, v23 * a8);
  v27(v24, v20);
  VisualEffect.concat<A>(_:)();
  (*(v12 + 8))(v14, a6);
  (*(v16 + 8))(v20, a5);
  return (*(*(v22 - 8) + 8))(v29, v22);
}

uint64_t VisualEffect.animatedValue<A, B>(time:default:track:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>)
{
  v27 = a4;
  v25[1] = a3;
  v26 = a2;
  v25[0] = a7;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v28, v18);
  (*(v16 + 16))(v20, a1, a5);
  v22 = type metadata accessor for AnimatedValueTrack();
  v23 = AnimatedValueTrack.update(value:at:)(v20, a8);
  v26(v23, v20);
  VisualEffect.concat<A>(_:)();
  (*(v12 + 8))(v14, a6);
  (*(v16 + 8))(v20, a5);
  return (*(*(v22 - 8) + 8))(v28, v22);
}

uint64_t outlined copy of AnimatedValuePlaybackConfiguration.Mode(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }

  return result;
}

uint64_t type metadata completion function for AnimatedValueView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AnimatedValueView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((v7 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    v15 = (a2 + v6 + 17) & ~v6;
    (*(v5 + 16))((a1 + v6 + 17) & ~v6, v15, v4);
    v16 = (v7 + ((a1 + v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v7 + v15) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v17 + 24);
    *(v16 + 24) = v18;
    *(v16 + 32) = *(v17 + 32);
    (**(v18 - 8))(v16, v17);
    v19 = ((v17 + 47) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19[1];
    v21 = ((v16 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v19;
    v21[1] = v20;
  }

  return a1;
}

uint64_t destroy for AnimatedValueView(uint64_t a1, uint64_t a2)
{
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(*a1, *(a1 + 8), *(a1 + 16));
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  __swift_destroy_boxed_opaque_existential_1((*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t outlined consume of AnimatedValuePlaybackConfiguration.Mode(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }

  return result;
}

uint64_t initializeWithCopy for AnimatedValueView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v11 + 17 + a1) & ~v11;
  v13 = (v11 + 17 + a2) & ~v11;
  (*(v9 + 16))(v12, v13);
  v14 = *(v10 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 24);
  *(v15 + 24) = v17;
  *(v15 + 32) = *(v16 + 32);
  (**(v17 - 8))(v15, v16);
  v18 = ((v16 + 47) & 0xFFFFFFFFFFFFFFF8);
  v19 = v18[1];
  v20 = ((v15 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v18;
  v20[1] = v19;

  return a1;
}

uint64_t assignWithCopy for AnimatedValueView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(*a2, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v8;
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v9, v10, v11);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = (v14 + 17 + a1) & ~v14;
  v16 = (v14 + 17 + a2) & ~v14;
  (*(v12 + 24))(v15, v16);
  v17 = *(v13 + 40) + 7;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v18, v19);
  v20 = ((v18 + 47) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;

  return a1;
}

uint64_t initializeWithTake for AnimatedValueView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  v8 = (v6 + 17 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  *((v10 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AnimatedValueView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = *a2;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v7, v8, v9);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v12 + 17 + a1) & ~v12;
  v14 = (v12 + 17 + a2) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + v14) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v16);
  v18 = *v17;
  v19 = *(v17 + 16);
  *(v16 + 32) = *(v17 + 32);
  *v16 = v18;
  *(v16 + 16) = v19;
  *((v16 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 47) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueView(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 17) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

double storeEnumTagSinglePayload for AnimatedValueView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
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
      v20 = &a1[v8 + 17] & ~v8;
      if (v6 < 0x7FFFFFFF)
      {
        v22 = (v9 + v20) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v22 + 8) = 0u;
          *(v22 + 24) = 0u;
          *v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v22 + 24) = a2 - 1;
        }
      }

      else
      {
        v21 = *(v5 + 56);

        v21(v20);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = a1;
    bzero(a1, ((((v9 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }

  return result;
}

uint64_t type metadata completion function for AnimatedValueModifier()
{
  result = type metadata accessor for AnimatedValueView();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatedValueModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v9 = *(v5 + 64) + 7;
  v10 = v6 & 0x100000;
  v11 = *a2;
  *a1 = *a2;
  if (v7 > 7 || v10 != 0 || (v8 & (v7 + 8)) + ((((v9 + ((v7 + 17) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    a1 = (v11 + (v8 & (v7 + 16)));
  }

  else
  {
    v14 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v27 = v4;
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(*v15, v17, v18);
    *v14 = v16;
    *(v14 + 8) = v17;
    *(v14 + 16) = v18;
    v19 = (v15 + v7 + 17) & ~v7;
    (*(v5 + 16))((v14 + v7 + 17) & ~v7, v19, v27);
    v20 = (v9 + ((v14 + v7 + 17) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v9 + v19) & 0xFFFFFFFFFFFFFFF8;
    v22 = *(v21 + 24);
    *(v20 + 24) = v22;
    *(v20 + 32) = *(v21 + 32);
    (**(v22 - 8))(v20, v21);
    v23 = ((v21 + 47) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    v25 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v23;
    v25[1] = v24;
  }

  return a1;
}

uint64_t destroy for AnimatedValueModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (a1 + (v4 | 7) + 8) & ~(v4 | 7);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(*v5, *(v5 + 8), *(v5 + 0x10));
  v6 = (v4 + v5 + 17) & ~v4;
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1((*(v3 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
}

void *initializeWithCopy for AnimatedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 8;
  v8 = (a1 + v7) & ~(v6 | 7);
  v9 = (a2 + v7) & ~(v6 | 7);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 0x10);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(*v9, v11, v12);
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 16) = v12;
  (*(v5 + 16))((v6 + 17 + v8) & ~v6, (v6 + 17 + v9) & ~v6, v4);
  v13 = *(v5 + 64) + 7;
  v14 = (v13 + ((v6 + 17 + v8) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + ((v6 + 17 + v9) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);
  *(v14 + 24) = v16;
  *(v14 + 32) = *(v15 + 32);
  (**(v16 - 8))(v14, v15);
  v17 = ((v15 + 47) & 0xFFFFFFFFFFFFFFF8);
  v18 = v17[1];
  v19 = ((v14 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v17;
  v19[1] = v18;

  return a1;
}

void *assignWithCopy for AnimatedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 8;
  v8 = (a1 + v7) & ~(v6 | 7);
  v9 = (a2 + v7) & ~(v6 | 7);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 0x10);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(*v9, v11, v12);
  v13 = *v8;
  v14 = *(v8 + 8);
  *v8 = v10;
  *(v8 + 8) = v11;
  v15 = *(v8 + 16);
  *(v8 + 16) = v12;
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v13, v14, v15);
  (*(v5 + 24))((v6 + 17 + v8) & ~v6, (v6 + 17 + v9) & ~v6, v4);
  v16 = *(v5 + 64) + 7;
  v17 = ((v16 + ((v6 + 17 + v8) & ~v6)) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + ((v6 + 17 + v9) & ~v6)) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v17, v18);
  v19 = ((v17 + 47) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + 47) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

void *initializeWithTake for AnimatedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 32);
  v6 = v4 + 32;
  v7 = *(v4 + 80);
  v8 = (v7 | 7) + 8;
  v9 = (a1 + v8) & ~(v7 | 7);
  v10 = (a2 + v8) & ~(v7 | 7);
  LOBYTE(v8) = *(v10 + 0x10);
  *v9 = *v10;
  *(v9 + 16) = v8;
  v11 = (v7 + 17 + v9) & ~v7;
  v12 = (v7 + 17 + v10) & ~v7;
  v5(v11, v12);
  v13 = *(v6 + 32) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  v17 = *(v15 + 16);
  *(v14 + 32) = *(v15 + 32);
  *v14 = v16;
  *(v14 + 16) = v17;
  *((v14 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for AnimatedValueModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 8;
  v8 = (a1 + v7) & ~(v6 | 7);
  v9 = (a2 + v7) & ~(v6 | 7);
  v10 = *(v9 + 0x10);
  v11 = *v8;
  v12 = *(v8 + 8);
  *v8 = *v9;
  v13 = *(v8 + 16);
  *(v8 + 16) = v10;
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v11, v12, v13);
  v14 = (v6 + 17 + v8) & ~v6;
  v15 = (v6 + 17 + v9) & ~v6;
  (*(v5 + 40))(v14, v15, v4);
  v16 = *(v5 + 64) + 7;
  v17 = (v16 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + v15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v17);
  v19 = *v18;
  v20 = *(v18 + 16);
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  *((v17 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 47) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueModifier(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = v6 | 7;
  v9 = v6 + 17;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v6 + 8) & ~v8) + ((((*(*(*(a3 + 16) - 8) + 64) + (v9 & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v9 + ((a1 + v8 + 8) & ~v8)) & ~v6);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void *storeEnumTagSinglePayload for AnimatedValueModifier(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 8) & ~(v8 | 7)) + ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((v8 + 8) & ~(v8 | 7)) + ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == -16)
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
        v20 = (v8 + 17 + ((result + (v8 | 7) + 8) & ~(v8 | 7))) & ~v8;

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

  if (((v8 + 8) & ~(v8 | 7)) + ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == -16)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((v8 + 8) & ~(v8 | 7)) + ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != -16)
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

uint64_t initializeWithCopy for AnimatorAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for AnimatorAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for AnimatorAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatorAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 32))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 24) >> 57) >> 5) | (4 * ((*(a1 + 24) >> 57) & 0x18 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnimatorAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t outlined consume of AnimatedValueState<A>.PausedState<A>(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t specialized AnimatedValueState.PausedState.update(at:pauseTime:track:transaction:)(double a1)
{
  v2 = *v1;
  if (*v1 != a1)
  {
    v4 = *(v1 + 8);
    if (Transaction.animation.getter())
    {
      if ((Transaction.disablesAnimations.getter() & 1) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          AnimatorState.combine(newAnimation:newInterval:at:in:environment:)();
        }

        else
        {
          type metadata accessor for AnimatorState<Double>();

          result = AnimatorState.__allocating_init(animation:interval:at:in:)();
          v4 = result | 0x8000000000000000;
        }

        goto LABEL_10;
      }

      outlined consume of AnimatedValueState<A>.PausedState<A>(*&v2, v4);
    }

    else
    {
      result = outlined consume of AnimatedValueState<A>.PausedState<A>(*&v2, v4);
    }

    v4 = 0;
LABEL_10:
    *v1 = a1;
    *(v1 + 8) = v4;
  }

  return result;
}

uint64_t outlined copy of AnimatedValueState<A>.PausedState<A>(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

void type metadata accessor for AnimatorState<Double>()
{
  if (!lazy cache variable for type metadata for AnimatorState<Double>)
  {
    v0 = type metadata accessor for AnimatorState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatorState<Double>);
    }
  }
}

uint64_t *assignWithCopy for AnimatedValueState.PausedState(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of AnimatedValueState<A>.PausedState<A>(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of AnimatedValueState<A>.PausedState<A>(v5, v6);
  return a1;
}

uint64_t *assignWithTake for AnimatedValueState.PausedState(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of AnimatedValueState<A>.PausedState<A>(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueState.PausedState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnimatedValueState.PausedState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t destroy for AnimatedValueState.EventDrivenState()
{
}

void *initializeBufferWithCopyOfBuffer for AnimatedValueState.EventDrivenState(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for AnimatedValueState.EventDrivenState(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for AnimatedValueState.EventDrivenState(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, NavigationViewStyleModifier<ColumnNavigationViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, NavigationViewStyleModifier<ColumnNavigationViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, NavigationViewStyleModifier<ColumnNavigationViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, NavigationViewStyleModifier<ColumnNavigationViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>)
  {
    type metadata accessor for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>);
    type metadata accessor for NavigationViewStyleModifier<StackNavigationViewStyle>(255, &lazy cache variable for type metadata for NavigationViewStyleModifier<ColumnNavigationViewStyle>, lazy protocol witness table accessor for type ColumnNavigationViewStyle and conformance ColumnNavigationViewStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for NavigationView<_NavigationViewStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for NavigationView<_NavigationViewStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for NavigationView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationView<_NavigationViewStyleConfiguration.Content>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SheetStyleContext>);
    type metadata accessor for NavigationViewStyleModifier<StackNavigationViewStyle>(255, &lazy cache variable for type metadata for NavigationViewStyleModifier<StackNavigationViewStyle>, lazy protocol witness table accessor for type StackNavigationViewStyle and conformance StackNavigationViewStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StackNavigationViewStyle and conformance StackNavigationViewStyle()
{
  result = lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle;
  if (!lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackNavigationViewStyle and conformance StackNavigationViewStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<DocumentStyleContext>);
    type metadata accessor for NavigationViewStyleModifier<StackNavigationViewStyle>(255, &lazy cache variable for type metadata for NavigationViewStyleModifier<PassthroughNavigationViewStyle>, lazy protocol witness table accessor for type PassthroughNavigationViewStyle and conformance PassthroughNavigationViewStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PassthroughNavigationViewStyle and conformance PassthroughNavigationViewStyle()
{
  result = lazy protocol witness table cache variable for type PassthroughNavigationViewStyle and conformance PassthroughNavigationViewStyle;
  if (!lazy protocol witness table cache variable for type PassthroughNavigationViewStyle and conformance PassthroughNavigationViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughNavigationViewStyle and conformance PassthroughNavigationViewStyle);
  }

  return result;
}

void type metadata accessor for NavigationViewStyleModifier<StackNavigationViewStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for NavigationViewStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ColumnNavigationViewStyle and conformance ColumnNavigationViewStyle()
{
  result = lazy protocol witness table cache variable for type ColumnNavigationViewStyle and conformance ColumnNavigationViewStyle;
  if (!lazy protocol witness table cache variable for type ColumnNavigationViewStyle and conformance ColumnNavigationViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnNavigationViewStyle and conformance ColumnNavigationViewStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SheetStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SheetStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SheetStyleContext>, NavigationViewStyleModifier<StackNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<DocumentStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<DocumentStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<DocumentStyleContext>, NavigationViewStyleModifier<PassthroughNavigationViewStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t type metadata accessor for UIKitResponderEventBindingBridge()
{
  result = type metadata singleton initialization cache for UIKitResponderEventBindingBridge;
  if (!type metadata singleton initialization cache for UIKitResponderEventBindingBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UIKitResponderEventBindingBridge.init(eventBindingManager:responder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  v6 = [objc_allocWithZone(type metadata accessor for UIKitResponderGestureRecognizer()) init];
  *(v4 + 32) = v6;
  v7 = &v6[OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder];
  swift_weakLoadStrong();
  *(v7 + 1) = a3;
  swift_weakAssign();
  v8 = v6;

  specialized UIKitResponderGestureRecognizer.responder.didset();

  v9 = EventBindingBridge.init(eventBindingManager:)();
  v10 = *(v9 + 32);
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    v11 = swift_dynamicCastClass();
    if (!v11)
    {

      goto LABEL_6;
    }

    v12 = v11;

    [v10 addTarget:v12 action:sel_flushActions];
  }

LABEL_6:

  return v9;
}

uint64_t UIKitResponderEventBindingBridge.eventSources.getter()
{
  type metadata accessor for _ContiguousArrayStorage<EventBindingSource>();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18CD63400;
  v2 = *(v0 + 32);
  v3 = lazy protocol witness table accessor for type UIKitResponderGestureRecognizer and conformance UIKitGestureRecognizer(&lazy protocol witness table cache variable for type UIKitResponderGestureRecognizer and conformance UIKitGestureRecognizer, type metadata accessor for UIKitResponderGestureRecognizer);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;
  return v1;
}

Swift::Void __swiftcall UIKitResponderEventBindingBridge.flushActions()()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (*(v1 + 16))
  {
    *(v0 + 40) = MEMORY[0x1E69E7CC0];
    v2 = *(v0 + 32) + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*(v2 + 8) + 104))(*Strong);
    }

    *(swift_allocObject() + 16) = v1;
    static Update.enqueueAction(reason:_:)();

    static CustomEventTrace.additionalInfo(_:info:)();
  }

  else if ([*(v0 + 32) state] == 4)
  {
    [*(v0 + 32) reset];
  }
}

uint64_t @objc UIKitResponderEventBindingBridge.flushActions()()
{

  UIKitResponderEventBindingBridge.flushActions()();
}

uint64_t UIKitResponderEventBindingBridge.reset(eventSource:resetForwardedEventDispatchers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for EventBindingBridge();
  v7 = method lookup function for EventBindingBridge();
  v7(a1, a2, a3);
  swift_beginAccess();
  *(v3 + 40) = MEMORY[0x1E69E7CC0];
}

uint64_t UIKitResponderEventBindingBridge.__ivar_destroyer()
{
}

uint64_t UIKitResponderEventBindingBridge.__deallocating_deinit()
{
  v0 = *(EventBindingBridge.deinit() + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for GestureGraphDelegate.enqueueAction(_:) in conformance UIKitResponderEventBindingBridge(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v2 + 40) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v10[5] = v5;
  *(v2 + 40) = v6;
  return swift_endAccess();
}

uint64_t protocol witness for static EventBindingBridgeFactory.makeEventBindingBridge(bindingManager:responder:) in conformance UIKitResponderEventBindingBridge.Factory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UIKitResponderEventBindingBridge();
  swift_allocObject();

  v6 = UIKitResponderEventBindingBridge.init(eventBindingManager:responder:)(a1, a2, a3);
  swift_beginAccess();
  *(a1 + 40) = MEMORY[0x1E697F3C8];
  swift_unknownObjectWeakAssign();
  lazy protocol witness table accessor for type UIKitResponderGestureRecognizer and conformance UIKitGestureRecognizer(&lazy protocol witness table cache variable for type UIKitResponderEventBindingBridge and conformance UIKitResponderEventBindingBridge, type metadata accessor for UIKitResponderEventBindingBridge);
  return v6;
}

void type metadata accessor for _ContiguousArrayStorage<EventBindingSource>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<EventBindingSource>)
  {
    type metadata accessor for EventBindingSource();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventBindingSource>);
    }
  }
}

unint64_t type metadata accessor for EventBindingSource()
{
  result = lazy cache variable for type metadata for EventBindingSource;
  if (!lazy cache variable for type metadata for EventBindingSource)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventBindingSource);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIKitResponderGestureRecognizer and conformance UIKitGestureRecognizer(unint64_t *a1, void (*a2)(uint64_t))
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

SwiftUI::SquareAzimuth::Set __swiftcall SquareAzimuth.Set.init(_:)(SwiftUI::SquareAzimuth a1)
{
  result.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall SquareAzimuth.Set.contains(_:)(SwiftUI::SquareAzimuth a1)
{
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::Viewpoint3D::FourFacetAzimuth::Set __swiftcall Viewpoint3D.FourFacetAzimuth.Set.init(rawValue:)(Swift::Int rawValue)
{
  result.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SquareAzimuth.Set and conformance SquareAzimuth.Set()
{
  result = lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set;
  if (!lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set;
  if (!lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set;
  if (!lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set;
  if (!lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareAzimuth.Set and conformance SquareAzimuth.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SquareAzimuth and conformance SquareAzimuth()
{
  result = lazy protocol witness table cache variable for type SquareAzimuth and conformance SquareAzimuth;
  if (!lazy protocol witness table cache variable for type SquareAzimuth and conformance SquareAzimuth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SquareAzimuth and conformance SquareAzimuth);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SquareAzimuth] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SquareAzimuth] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SquareAzimuth] and conformance [A])
  {
    type metadata accessor for [SquareAzimuth]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SquareAzimuth] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [SquareAzimuth]()
{
  if (!lazy cache variable for type metadata for [SquareAzimuth])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [SquareAzimuth]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set()
{
  result = lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set;
  if (!lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set;
  if (!lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set;
  if (!lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set;
  if (!lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth.Set and conformance Viewpoint3D.FourFacetAzimuth.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Viewpoint3D.FourFacetAzimuth and conformance Viewpoint3D.FourFacetAzimuth()
{
  result = lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth and conformance Viewpoint3D.FourFacetAzimuth;
  if (!lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth and conformance Viewpoint3D.FourFacetAzimuth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Viewpoint3D.FourFacetAzimuth and conformance Viewpoint3D.FourFacetAzimuth);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Viewpoint3D and conformance Viewpoint3D()
{
  result = lazy protocol witness table cache variable for type Viewpoint3D and conformance Viewpoint3D;
  if (!lazy protocol witness table cache variable for type Viewpoint3D and conformance Viewpoint3D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Viewpoint3D and conformance Viewpoint3D);
  }

  return result;
}

uint64_t assignWithCopy for NavigationSplitParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  return a1;
}

uint64_t assignWithTake for NavigationSplitParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitParameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationSplitParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void NavigationSplitColumn.Context.hash(into:)(uint64_t a1, int a2)
{
  v3 = a2;
  if (a2 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v3);
  }

  if ((a2 & 0xFF00) == 0x600)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](BYTE1(a2));
  }

  Hasher._combine(_:)(BYTE2(a2) & 1);
}

Swift::Int NavigationSplitColumn.Context.hashValue.getter(int a1)
{
  Hasher.init(_seed:)();
  if (a1 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](a1);
  }

  if ((a1 & 0xFF00) == 0x600)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](BYTE1(a1));
  }

  Hasher._combine(_:)(BYTE2(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationSplitColumn.Context()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return NavigationSplitColumn.Context.hashValue.getter(v1 | (v0[1] << 8) | *v0);
}

void protocol witness for Hashable.hash(into:) in conformance NavigationSplitColumn.Context(uint64_t a1)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  NavigationSplitColumn.Context.hash(into:)(a1, v2 | (v1[1] << 8) | *v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationSplitColumn.Context()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v1);
  }

  if (v2 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v2);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NavigationSplitColumn.Context(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return specialized static NavigationSplitColumn.Context.== infix(_:_:)(v2 | (a1[1] << 8) | *a1, v3 | (a2[1] << 8) | *a2);
}

unint64_t lazy protocol witness table accessor for type NavigationSplitColumn.Context and conformance NavigationSplitColumn.Context()
{
  result = lazy protocol witness table cache variable for type NavigationSplitColumn.Context and conformance NavigationSplitColumn.Context;
  if (!lazy protocol witness table cache variable for type NavigationSplitColumn.Context and conformance NavigationSplitColumn.Context)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitColumn.Context and conformance NavigationSplitColumn.Context);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NavigationSplitColumn()
{
  v1 = *v0;
  v2 = 0x72616265646973;
  v3 = 0x6B63617473;
  v4 = 0x657370616C6C6F63;
  if (v1 != 4)
  {
    v4 = 0x6F74636570736E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0x6C6961746564;
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

uint64_t specialized static NavigationSplitColumn.Context.== infix(_:_:)(int a1, int a2)
{
  if (a1 == 6)
  {
    if (a2 != 6)
    {
      return 0;
    }
  }

  else if (a2 != a1)
  {
    return 0;
  }

  if ((a1 & 0xFF00) == 0x600)
  {
    if (BYTE1(a2) != 6)
    {
      return 0;
    }
  }

  else if (BYTE1(a2) == 6 || ((a2 ^ a1) & 0xFF00) != 0)
  {
    return 0;
  }

  return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
}

unint64_t lazy protocol witness table accessor for type NavigationSplitLeadingColumnBehavior and conformance NavigationSplitLeadingColumnBehavior()
{
  result = lazy protocol witness table cache variable for type NavigationSplitLeadingColumnBehavior and conformance NavigationSplitLeadingColumnBehavior;
  if (!lazy protocol witness table cache variable for type NavigationSplitLeadingColumnBehavior and conformance NavigationSplitLeadingColumnBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitLeadingColumnBehavior and conformance NavigationSplitLeadingColumnBehavior);
  }

  return result;
}

SwiftUI::DragConfiguration::OperationsWithinApp __swiftcall DragConfiguration.OperationsWithinApp.init(allowCopy:allowMove:allowDelete:)(Swift::Bool allowCopy, Swift::Bool allowMove, Swift::Bool allowDelete)
{
  v3 = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return v3;
}

SwiftUI::DragConfiguration::OperationsWithinApp __swiftcall DragConfiguration.OperationsWithinApp.init(allowMove:)(Swift::Bool allowMove)
{
  *v1 = 256;
  *(v1 + 2) = allowMove;
  *(v1 + 3) = 0;
  result._allowAlias = allowMove;
  return result;
}

SwiftUI::DragConfiguration::OperationsOutsideApp __swiftcall DragConfiguration.OperationsOutsideApp.init(allowCopy:)(Swift::Bool allowCopy)
{
  *v1 = 0;
  *(v1 + 1) = allowCopy;
  *(v1 + 2) = 0;
  result._allowAlias = allowCopy;
  return result;
}

void DragConfiguration.operationsWithinApp.getter(_BYTE *a1@<X8>)
{
  v2 = *v1 == 2;
  v3 = *v1 & 1;
  v4 = HIBYTE(*v1) & 1;
  if (*v1 == 2)
  {
    LOBYTE(v3) = 0;
    v5 = 1;
  }

  else
  {
    v5 = BYTE1(*v1) & 1;
  }

  if (*v1 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = HIWORD(*v1) & 1;
  }

  *a1 = v3;
  a1[1] = v5;
  if (v2)
  {
    LOBYTE(v4) = 0;
  }

  a1[2] = v6;
  a1[3] = v4;
}

unsigned __int8 *DragConfiguration.operationsWithinApp.setter(unsigned __int8 *result)
{
  if (result[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *result;
  if (result[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (result[3])
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  *v1 = v3 | v4 | v5;
  return result;
}

uint64_t (*DragConfiguration.operationsWithinApp.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1 & 1;
  v3 = HIBYTE(*v1) & 1;
  if (*v1 == 2)
  {
    LOBYTE(v2) = 0;
    v4 = 1;
  }

  else
  {
    v4 = BYTE1(*v1) & 1;
  }

  if (*v1 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = HIWORD(*v1) & 1;
  }

  if (*v1 == 2)
  {
    LOBYTE(v3) = 0;
  }

  *(a1 + 8) = v2;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  *(a1 + 11) = v3;
  return DragConfiguration.operationsWithinApp.modify;
}

uint64_t DragConfiguration.operationsWithinApp.modify(uint64_t result)
{
  if (*(result + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(result + 8);
  if (*(result + 10))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(result + 11))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  **result = v2 | v3 | v4;
  return result;
}

void DragConfiguration.operationsOutsideApp.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = v2 == 2;
  v4 = v2 & 1;
  v5 = (v2 >> 8) & 1;
  v6 = HIWORD(v2) & 1;
  v7 = HIBYTE(v2) & 1;
  if (*(v1 + 4) == 2)
  {
    v4 = 0;
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  if (*(v1 + 4) == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  *a1 = v4;
  a1[1] = v8;
  if (v3)
  {
    LOBYTE(v7) = 0;
  }

  a1[2] = v9;
  a1[3] = v7;
}

unsigned __int8 *DragConfiguration.operationsOutsideApp.setter(unsigned __int8 *result)
{
  if (result[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *result;
  if (result[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (result[3])
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 4) = v3 | v4 | v5;
  return result;
}

unsigned __int8 *(*DragConfiguration.operationsOutsideApp.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  v2 = *(v1 + 4);
  v3 = v2 & 1;
  v4 = (v2 >> 8) & 1;
  v5 = HIWORD(v2) & 1;
  v6 = HIBYTE(v2) & 1;
  if (*(v1 + 4) == 2)
  {
    v3 = 0;
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (*(v1 + 4) == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (*(v1 + 4) == 2)
  {
    LOBYTE(v6) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 9) = v7;
  *(a1 + 10) = v8;
  *(a1 + 11) = v6;
  return DragConfiguration.operationsOutsideApp.modify;
}

unsigned __int8 *DragConfiguration.operationsOutsideApp.modify(unsigned __int8 *result)
{
  if (result[9])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | result[8];
  if (result[10])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (result[11])
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  *(*result + 4) = v2 | v3 | v4;
  return result;
}

SwiftUI::DragConfiguration __swiftcall DragConfiguration.init(operationsWithinApp:operationsOutsideApp:)(SwiftUI::DragConfiguration::OperationsWithinApp operationsWithinApp, SwiftUI::DragConfiguration::OperationsOutsideApp operationsOutsideApp)
{
  if (*(*&operationsWithinApp._allowAlias + 1))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | **&operationsWithinApp._allowAlias;
  if (*(*&operationsWithinApp._allowAlias + 2))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (*(*&operationsWithinApp._allowAlias + 3))
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | v5 | *&v6._operationsWithinApp;
  if (*(*&operationsOutsideApp._allowAlias + 1))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | **&operationsOutsideApp._allowAlias;
  if (*(*&operationsOutsideApp._allowAlias + 2))
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  if (*(*&operationsOutsideApp._allowAlias + 3))
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 0;
  }

  *v2 = v7;
  v2[1] = v9 | v10 | v11;
  return v6;
}

SwiftUI::DragConfiguration __swiftcall DragConfiguration.init(allowMove:)(Swift::Bool allowMove)
{
  if (allowMove)
  {
    v2 = 65792;
  }

  else
  {
    v2 = 256;
  }

  *v1 = v2;
  v1[1] = 256;
  result._operationsWithinApp.value._allowAlias = allowMove;
  return result;
}

SwiftUI::DragConfiguration __swiftcall DragConfiguration.init(allowMove:allowDelete:)(Swift::Bool allowMove, Swift::Bool allowDelete)
{
  v2 = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return v2;
}

uint64_t DragConfiguration.debugDescription.getter()
{
  _StringGuts.grow(_:)(53);
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CDC9F60);
  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD52AC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD52AE0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t getEnumTagSinglePayload for DragConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t specialized TabViewCoordinator_Phone.updateSearchIndex<A>(tabs:)(uint64_t a1)
{
  v18 = a1;
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
  swift_beginAccess();
  outlined init with copy of UIKitAdaptableTabView(v1 + v5, v4, type metadata accessor for Binding<SearchFieldState>?);
  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = 1;
  v8 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  result = _s2os6LoggerVSgWOhTm_0(v4, type metadata accessor for Binding<SearchFieldState>?);
  if (v8 == 1 || (v10 = *(v18 + 16)) == 0)
  {
    v13 = 0;
  }

  else
  {
    v17 = v1;
    v11 = 0;
    v12 = v18 + 32;
    do
    {
      *v29 = v11;
      result = outlined init with copy of TabEntry(v12, &v29[8]);
      if (v31 == 255)
      {
        break;
      }

      v13 = *v29;
      *v29 = *&v29[8];
      *&v29[16] = *&v29[24];
      *&v29[32] = *&v29[40];
      *&v29[48] = *&v29[56];
      *&v29[64] = *&v29[72];
      *&v29[80] = *&v29[88];
      *&v29[96] = *&v29[104];
      *&v29[112] = *&v29[120];
      *&v29[128] = *&v29[136];
      *&v29[144] = *&v29[152];
      *&v29[160] = *&v29[168];
      *&v29[176] = *&v29[184];
      *&v29[192] = *&v29[200];
      *&v29[208] = *&v29[216];
      *&v29[224] = *&v29[232];
      *&v29[240] = *&v29[248];
      *&v29[256] = *&v29[264];
      *&v29[272] = v30;
      LOBYTE(v30) = v31;
      if (v31)
      {
        result = outlined destroy of TabEntry(v29);
      }

      else
      {
        v28[5] = *&v29[80];
        v28[6] = *&v29[96];
        v28[0] = *v29;
        v28[1] = *&v29[16];
        v28[3] = *&v29[48];
        v28[4] = *&v29[64];
        v28[2] = *&v29[32];
        v19 = *&v29[96];
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v22 = static TabOptions.TraitKey.defaultValue;
        v23[0] = unk_1EAB09380;
        *(v23 + 9) = *(&word_1EAB09388 + 1);
        v26 = static TabOptions.TraitKey.defaultValue;
        v27[0] = unk_1EAB09380;
        *(v27 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v22, &v24);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v24 = v26;
        v25[0] = v27[0];
        *(v25 + 9) = *(v27 + 9);
        outlined destroy of TabOptions(&v24);
        v26 = v20;
        v27[0] = v21[0];
        *(v27 + 9) = *(v21 + 9);
        outlined destroy of TabOptions(&v26);
        v14 = BYTE8(v27[1]);
        result = outlined destroy of TabItem(v28);
        if ((v14 & 1) == 0)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      ++v11;
      v12 += 288;
    }

    while (v10 != v11);
    v13 = 0;
    v7 = 1;
LABEL_14:
    v1 = v17;
  }

  v15 = v1 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchIndex;
  *v15 = v13;
  *(v15 + 8) = v7;
  return result;
}

uint64_t specialized TabViewCoordinator_Phone.host<A>(tab:tabs:searchAdjustment:selected:environment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache);
  if (!v7)
  {
    goto LABEL_33;
  }

  v8 = v6;
  outlined init with copy of TabEntry(a1, __src);
  if (v53)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v15 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache;
    swift_beginAccess();
    v16 = *(v8 + v15);
    if (v16 && *(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a4), (v18 & 1) != 0))
    {
      v19 = (*(v16 + 56) + 32 * v17);
      v21 = v19[1];
      v20 = v19[2];
      v22 = v19[3];
      swift_endAccess();
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      if ((v21 & 0x8000000000000000) != 0 || v21 >= *(a2 + 16))
      {
      }

      else
      {
        outlined init with copy of TabEntry(a2 + 288 * v21 + 32, v41);
        if (v42)
        {
          memcpy(v43, v41, sizeof(v43));
          if (*&v43[24] == __dst[3] && *&v43[32] == __dst[4] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            *&v54[0] = a5;
            *(&v54[0] + 1) = a6;

            TabViewCoordinator_Phone.visibleTab(in:selectedID:tabCache:environment:)(__dst, v20, v22, v7, v54, v41);
            outlined destroy of TabItemGroup(v43);
            _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v45, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
            v49 = *&v41[64];
            v50 = *&v41[80];
            v51 = *&v41[96];
            v45 = *v41;
            v46 = *&v41[16];
            v47 = *&v41[32];
            v48 = *&v41[48];
          }

          else
          {

            outlined destroy of TabItemGroup(v43);
          }
        }

        else
        {

          outlined destroy of TabEntry(v41);
        }
      }

      outlined init with copy of TabItem?(&v45, v43);
      if (*&v43[24])
      {

        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v45, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
        *&v41[64] = *&v43[64];
        *&v41[80] = *&v43[80];
        *&v41[96] = *&v43[96];
        *v41 = *v43;
        *&v41[16] = *&v43[16];
        *&v41[32] = *&v43[32];
        *&v41[48] = *&v43[48];
        goto LABEL_16;
      }

      v40 = __dst[0];
      if (*(__dst[0] + 16))
      {

        if (*(v40 + 16))
        {
          outlined init with copy of TabItem(v40 + 32, v41);

          _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(&v45, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
          if (*&v43[24])
          {
            _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v43, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
          }

          goto LABEL_16;
        }

        __break(1u);
      }
    }

    else
    {
      swift_endAccess();
      if (*(__dst[0] + 16))
      {
        outlined init with copy of TabItem(__dst[0] + 32, v41);
LABEL_16:
        outlined destroy of TabItemGroup(__dst);
        goto LABEL_17;
      }
    }

LABEL_33:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  *&v41[64] = *&__src[64];
  *&v41[80] = *&__src[80];
  *&v41[96] = *&__src[96];
  *v41 = *__src;
  *&v41[16] = *&__src[16];
  *&v41[32] = *&__src[32];
  *&v41[48] = *&__src[48];
LABEL_17:
  v54[4] = *&v41[64];
  v54[5] = *&v41[80];
  v54[6] = *&v41[96];
  v54[0] = *v41;
  v54[1] = *&v41[16];
  v54[2] = *&v41[32];
  v54[3] = *&v41[48];
  outlined init with copy of TabEntry(a1, __src);
  if (v53 == 1)
  {
    memcpy(v41, __src, sizeof(v41));
    v23 = specialized TabViewCoordinator_Phone.host(for:child:searchAdjustment:)(v41, v54, a3);
    v25 = v24;
    outlined destroy of TabItemGroup(v41);
    v26 = v23;
  }

  else
  {
    outlined init with copy of TabItem(v54, v41);
    v41[112] = 0;
    v41[113] = a3;
    outlined init with copy of TabItem.RootView(v41, __dst);
    v27 = objc_allocWithZone(type metadata accessor for TabHostingController(0));
    outlined init with copy of TabItem.RootView(__dst, v43);
    v28 = objc_allocWithZone(type metadata accessor for TabHostingController.HostingView(0));
    outlined init with copy of TabItem.RootView(v43, &v45);
    v29 = specialized _UIHostingView.init(rootView:)(&v45);
    outlined destroy of TabItem.RootView(v43);
    v30 = specialized UIHostingController.init(_hostingView:)(v29);
    outlined destroy of TabItem.RootView(__dst);
    outlined destroy of TabItem.RootView(v41);
    v26 = v30;
    outlined destroy of TabEntry(__src);
    v25 = 0;
  }

  *__src = a5;
  *&__src[8] = a6;
  TabViewCoordinator_Phone.updateTabElementCreatingIfNeeded(on:using:environment:)(v26, a1, __src);
  if (v25)
  {
    v31 = v25;
    v32 = TabItem.platformIdentifier.getter();
    v34 = v33;
    v35._countAndFlagsBits = TabEntry.platformIdentifier.getter();
    v37 = v36;
    v38._countAndFlagsBits = v32;
    v38._object = v34;
    v35._object = v37;
    TabViewCoordinator_Phone.cacheChild(_:childID:for:)(v31, v38, v35);
  }

  *__src = a5;
  *&__src[8] = a6;
  TabHostingController.updateTabEnvironment(environment:coordinator:)(__src, v8);

  outlined destroy of TabItem(v54);
  return v26;
}

uint64_t specialized TabViewCoordinator_Phone.updateHosts<A, B>(_:tabs:selected:environment:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a4;
  v87 = a1;
  type metadata accessor for Binding<SearchFieldState>?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_selectionCache;
  swift_beginAccess();
  v18 = *(v7 + v17);
  if (!v18)
  {
    return swift_endAccess();
  }

  if (!*(v18 + 16))
  {
    return swift_endAccess();
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v20 & 1) == 0)
  {
    return swift_endAccess();
  }

  v76 = v14;
  v21 = (*(v18 + 56) + 32 * v19);
  v22 = v21[2];
  v78 = v21[1];
  v68 = v22;
  v69 = a6;
  v23 = v21[3];
  swift_endAccess();
  v24 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchState;
  v67 = v7 + OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_searchIndex;
  v73 = v23;
  v74 = OBJC_IVAR____TtC7SwiftUI24TabViewCoordinator_Phone_tabCache;

  v75 = v24;
  swift_beginAccess();
  v26 = 0;
  v27 = v87 & 0xFFFFFFFFFFFFFF8;
  if (v87 < 0)
  {
    v28 = v87;
  }

  else
  {
    v28 = v87 & 0xFFFFFFFFFFFFFF8;
  }

  v65[1] = v28;
  v82 = v87 & 0xC000000000000001;
  v83 = a5;
  v29 = a2 + 32;
  v80 = (&v103[16] + 8);
  v84 = v87 >> 62;
  *&v25 = 136315138;
  v66 = v25;
  v81 = v87 & 0xFFFFFFFFFFFFFF8;
  v79 = v7;
  v77 = a2;
  while (1)
  {
    if (v84)
    {
      if (v26 == __CocoaSet.count.getter())
      {
      }
    }

    else if (v26 == *(v27 + 16))
    {
    }

    if (!v82)
    {
      break;
    }

    v31 = MEMORY[0x18D00E9C0](v26, v87);
LABEL_16:
    v32 = *(a2 + 16);
    if (v26 == v32)
    {
    }

    if (v26 >= v32)
    {
      goto LABEL_63;
    }

    *&v103[0] = v31;
    v88 = v29;
    outlined init with copy of TabEntry(v29, v103 + 8);
    v33 = *&v103[0];
    if (!*&v103[0])
    {
    }

    v34 = *v80;
    v103[0] = *(v103 + 8);
    v103[1] = *(&v103[1] + 8);
    v103[2] = *(&v103[2] + 8);
    v103[3] = *(&v103[3] + 8);
    v103[4] = *(&v103[4] + 8);
    v103[5] = *(&v103[5] + 8);
    v103[6] = *(&v103[6] + 8);
    v103[7] = *(&v103[7] + 8);
    v103[8] = *(&v103[8] + 8);
    v103[9] = *(&v103[9] + 8);
    v103[10] = *(&v103[10] + 8);
    v103[11] = *(&v103[11] + 8);
    v103[12] = *(&v103[12] + 8);
    v103[13] = *(&v103[13] + 8);
    v103[14] = *(&v103[14] + 8);
    v103[15] = *(&v103[15] + 8);
    v103[16] = v34;
    v104 = v105;
    LOBYTE(v105) = v106;
    outlined init with copy of TabEntry(v103, v101);
    if (v102)
    {
      memcpy(v97, v101, sizeof(v97));
      outlined init with copy of TabItem?(&v97[48], v96);
      if (*(&v96[1] + 1))
      {
        v89 = *&v96[6];
        v35 = one-time initialization token for defaultValue;

        if (v35 != -1)
        {
          swift_once();
        }

        v92 = static TabOptions.TraitKey.defaultValue;
        v93[0] = unk_1EAB09380;
        *(v93 + 9) = *(&word_1EAB09388 + 1);
        v99 = static TabOptions.TraitKey.defaultValue;
        v100[0] = unk_1EAB09380;
        *(v100 + 9) = *(&word_1EAB09388 + 1);
        outlined init with copy of TabOptions(&v92, &v94);
        ViewTraitCollection.value<A>(for:defaultValue:)();
        v94 = v99;
        v95[0] = v100[0];
        *(v95 + 9) = *(v100 + 9);
        outlined destroy of TabOptions(&v94);
        outlined destroy of TabItemGroup(v97);

        v99 = v90;
        v100[0] = v91[0];
        *(v100 + 9) = *(v91 + 9);
        outlined destroy of TabOptions(&v99);
        v36 = BYTE1(v99);
        outlined destroy of TabItem(v96);
        if (v36)
        {
          goto LABEL_9;
        }
      }

      else
      {
        outlined destroy of TabItemGroup(v97);
        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v96, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      *&v97[80] = *&v101[80];
      *&v97[96] = *&v101[96];
      *v97 = *v101;
      *&v97[16] = *&v101[16];
      *&v97[48] = *&v101[48];
      *&v97[64] = *&v101[64];
      *&v97[32] = *&v101[32];
      *&v90 = *&v101[96];
      v37 = one-time initialization token for defaultValue;

      if (v37 != -1)
      {
        swift_once();
      }

      v94 = static TabOptions.TraitKey.defaultValue;
      v95[0] = unk_1EAB09380;
      *(v95 + 9) = *(&word_1EAB09388 + 1);
      v96[0] = static TabOptions.TraitKey.defaultValue;
      v96[1] = unk_1EAB09380;
      *(&v96[1] + 9) = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v94, &v99);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v99 = v96[0];
      v100[0] = v96[1];
      *(v100 + 9) = *(&v96[1] + 9);
      outlined destroy of TabOptions(&v99);
      outlined destroy of TabItem(v97);

      v96[0] = v92;
      v96[1] = v93[0];
      *(&v96[1] + 9) = *(v93 + 9);
      outlined destroy of TabOptions(v96);
      if (BYTE1(v96[0]) == 1)
      {
LABEL_9:
        outlined destroy of TabEntry(v103);

        goto LABEL_10;
      }
    }

    v38 = v85;
    static Log.tabView.getter();
    v39 = type metadata accessor for Logger();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 48))(v38, 1, v39);
    v42 = v83;
    if (v41 == 1)
    {
      _s2os6LoggerVSgWOhTm_0(v38, type metadata accessor for Logger?);
    }

    else
    {
      outlined init with copy of TabEntry(v103, v101);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v71 = v44;
        v45 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v99 = v70;
        v72 = v45;
        *v45 = v66;
        outlined init with copy of TabEntry(v101, v97);
        if (v98)
        {
          outlined destroy of TabEntry(v101);
          memcpy(v96, v97, 0x118uLL);
          v47 = *(&v96[1] + 1);
          v46 = *&v96[2];
          outlined copy of TabCustomizationID.Base();
          outlined destroy of TabItemGroup(v96);
        }

        else
        {
          v96[4] = *&v97[64];
          v96[5] = *&v97[80];
          v96[6] = *&v97[96];
          v96[0] = *v97;
          v96[1] = *&v97[16];
          v96[2] = *&v97[32];
          v96[3] = *&v97[48];
          v47 = TabItem.platformIdentifier.getter();
          v46 = v48;
          outlined destroy of TabItem(v96);
          outlined destroy of TabEntry(v101);
        }

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v99);

        v50 = v72;
        *(v72 + 1) = v49;
        _os_log_impl(&dword_18BD4A000, v43, v71, "Updating tab %s", v50, 0xCu);
        v51 = v70;
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x18D0110E0](v51, -1, -1);
        MEMORY[0x18D0110E0](v50, -1, -1);

        v42 = v83;
      }

      else
      {

        outlined destroy of TabEntry(v101);
      }

      (*(v40 + 8))(v85, v39);
      v7 = v79;
    }

    type metadata accessor for TabHostingController(0);
    v52 = swift_dynamicCastClassUnconditional();
    *v101 = v86;
    *&v101[8] = v42;
    TabViewCoordinator_Phone.updateTabElementCreatingIfNeeded(on:using:environment:)(v52, v103, v101);
    if (v78 == v26)
    {
      v53 = v76;
      outlined init with copy of UIKitAdaptableTabView(v7 + v75, v76, type metadata accessor for Binding<SearchFieldState>?);
      type metadata accessor for Binding<SearchFieldState>(0);
      v55 = 1;
      v56 = (*(*(v54 - 8) + 48))(v53, 1, v54);
      _s2os6LoggerVSgWOhTm_0(v53, type metadata accessor for Binding<SearchFieldState>?);
      if (v56 != 1)
      {
        if (*(v67 + 8))
        {
          v55 = 2;
        }

        else if (*v67 == v78)
        {
          v55 = 2;
        }

        else
        {
          v55 = 1;
        }
      }

      v57 = *(v7 + v74);
      if (!v57)
      {
        goto LABEL_64;
      }

      outlined init with copy of TabEntry(v103, v101);
      if (v102)
      {
        memcpy(v97, v101, sizeof(v97));
        *&v99 = v86;
        *(&v99 + 1) = v83;
        v58 = v55;
        v59 = v73;

        TabViewCoordinator_Phone.visibleTab(in:selectedID:tabCache:environment:)(v97, v68, v59, v57, &v99, v96);

        v55 = v58;

        outlined destroy of TabItemGroup(v97);
      }

      else
      {
        v96[4] = *&v101[64];
        v96[5] = *&v101[80];
        v96[6] = *&v101[96];
        v96[0] = *v101;
        v96[1] = *&v101[16];
        v96[2] = *&v101[32];
        v96[3] = *&v101[48];
      }

      outlined init with copy of TabItem?(v96, v101);
      if (*&v101[24])
      {
        v100[3] = *&v101[64];
        v100[4] = *&v101[80];
        v100[5] = *&v101[96];
        v99 = *v101;
        v100[0] = *&v101[16];
        v100[1] = *&v101[32];
        v100[2] = *&v101[48];
        outlined init with copy of TabItem(&v99, v97);
        v97[112] = 0;
        v97[113] = v55;
        outlined init with copy of TabEntry(v103, v101);
        v60 = v102;
        outlined destroy of TabEntry(v101);
        v7 = v79;
        if (v60)
        {
          v61 = TabItem.platformIdentifier.getter();
          TabHostingController.setChildRootViewCreatingHostIfNeeded(_:childID:transaction:coordinator:)(v97, v61, v62, v69, v7);
        }

        else
        {
          v64 = *&v52[direct field offset for UIHostingController.host];
          specialized _UIHostingView.setRootView(_:transaction:)(v97);
        }

        *v101 = v86;
        *&v101[8] = v83;
        TabHostingController.updateTabEnvironment(environment:coordinator:)(v101, v7);

        outlined destroy of TabItem.RootView(v97);
        outlined destroy of TabItem(&v99);
        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v96, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
        outlined destroy of TabEntry(v103);
        a2 = v77;
      }

      else
      {

        v63 = MEMORY[0x1E69E6720];
        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v96, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, MEMORY[0x1E69E6720]);
        outlined destroy of TabEntry(v103);
        _s7SwiftUI7BindingVyAA10VisibilityOGWOhTm_0(v101, &lazy cache variable for type metadata for TabItem?, &type metadata for TabItem, v63);
        a2 = v77;
        v7 = v79;
      }
    }

    else
    {
      outlined destroy of TabEntry(v103);

      a2 = v77;
    }

LABEL_10:
    v29 = v88 + 288;
    ++v26;
    v27 = v81;
  }

  if (v26 < *(v27 + 16))
  {
    v31 = *(v87 + 8 * v26 + 32);
    goto LABEL_16;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  LODWORD(vars8) = 0;
  vars0 = 554;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}