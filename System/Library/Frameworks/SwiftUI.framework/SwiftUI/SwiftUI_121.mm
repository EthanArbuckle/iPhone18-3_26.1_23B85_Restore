uint64_t outlined destroy of Binding<PresentationDetent>(uint64_t a1)
{
  type metadata accessor for Binding<PresentationDetent>(0, &lazy cache variable for type metadata for Binding<PresentationDetent>, &type metadata for PresentationDetent, MEMORY[0x1E6981948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *initializeWithTake for InspectorSplitView(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  *(a1 + 41) = *(a2 + 41);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 57) & ~v8;
  v10 = (a2 + v8 + 57) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32);
  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = (v15 + v9) & ~v14;
  v17 = (v15 + v10) & ~v14;
  (*(v12 + 32))(v16, v17);
  v18 = *(v13 + 32);
  v19 = (v18 + v16);
  v20 = (v18 + v17);
  *v19 = *v20;
  v19[1] = v20[1];
  v21 = ((v19 + 9) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = v22[4];
  v25 = v22[1];
  v24 = v22[2];
  v21[3] = v22[3];
  v21[4] = v23;
  v21[1] = v25;
  v21[2] = v24;
  v26 = *(v22 + 122);
  v28 = v22[6];
  v27 = v22[7];
  v21[5] = v22[5];
  v21[6] = v28;
  v21[7] = v27;
  *(v21 + 122) = v26;
  return a1;
}

uint64_t assignWithTake for InspectorSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = *a2;
  v11 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v7;
  outlined consume of StateOrBinding<Bool>(v8, v9, v11, v10);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v14 + 57 + a1) & ~v14;
  v16 = (v14 + 57 + a2) & ~v14;
  (*(v12 + 40))(v15, v16);
  v17 = *(v13 + 24);
  v18 = *(*(a3 + 24) - 8);
  v19 = v18 + 40;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v21 + v15) & ~v20;
  v23 = (v21 + v16) & ~v20;
  (*(v18 + 40))(v22, v23);
  v24 = *(v19 + 24);
  v25 = (v24 + v22);
  v26 = (v24 + v23);
  *v25 = *v26;
  v25[1] = v26[1];
  v27 = (v25 + 9) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + 9) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 8);
  *v27 = *v28;

  if (*(v27 + 16))
  {
    if (*(v28 + 16))
    {
      *(v27 + 8) = *(v28 + 8);

      *(v27 + 16) = *(v28 + 16);

      v30 = *(v28 + 24);
    }

    else
    {
      outlined destroy of Binding<PresentationDetent>(v27 + 8);
      v30 = *(v28 + 24);
      *(v27 + 8) = *v29;
    }

    *(v27 + 24) = v30;
  }

  else
  {
    v31 = *v29;
    *(v27 + 24) = *(v28 + 24);
    *(v27 + 8) = v31;
  }

  v33 = (v27 + 48);
  v32 = *(v27 + 48);
  *(v27 + 40) = *(v28 + 40);
  *(v27 + 41) = *(v28 + 41);
  v34 = *(v28 + 48);
  if (v32 == 2)
  {
    if (v34 == 2)
    {
      v35 = 2;
LABEL_13:
      *v33 = v35;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v34 == 2)
  {
    outlined destroy of PresentationDimmingBehavior(v27 + 48);
LABEL_12:
    v35 = *(v28 + 48);
    goto LABEL_13;
  }

  if (v32 < 2)
  {
LABEL_15:
    *v33 = v34;
    goto LABEL_16;
  }

  if (v34 < 2)
  {
    outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(v27 + 48, type metadata accessor for UISheetPresentationControllerDetentIdentifier);
    goto LABEL_12;
  }

  *v33 = v34;

LABEL_16:
  *(v27 + 56) = *(v28 + 56);
  *(v27 + 57) = *(v28 + 57);
  *(v27 + 58) = *(v28 + 58);
  v36 = *(v28 + 64);
  *(v27 + 72) = *(v28 + 72);
  *(v27 + 64) = v36;
  v37 = *(v28 + 80);
  *(v27 + 88) = *(v28 + 88);
  *(v27 + 80) = v37;
  if (*(v27 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v27 + 96);
  }

  v38 = *(v28 + 96);
  v39 = *(v28 + 112);
  *(v27 + 128) = *(v28 + 128);
  *(v27 + 96) = v38;
  *(v27 + 112) = v39;
  *(v27 + 136) = *(v28 + 136);
  *(v27 + 137) = *(v28 + 137);
  return a1;
}

uint64_t getEnumTagSinglePayload for InspectorSplitView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + 9;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((v13 + ((v10 + v11 + ((v9 + 57) & ~v9)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 138;
  v15 = (a2 - v12 + 0xFFFF) >> 16;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14), !*(a1 + v14)))
  {
LABEL_30:
    v23 = (a1 + v9 + 57) & ~v9;
    if (v5 == v12)
    {
      return (*(v4 + 48))(v23);
    }

    v24 = (v23 + v10 + v11) & ~v11;
    if (v8 == v12)
    {
      return (*(v7 + 48))(v24, v8, v6);
    }

    v25 = *((v13 + v24) & 0xFFFFFFFFFFFFFFF8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  v21 = (v19 - 1) << (8 * (((v13 + ((v10 + v11 + ((v9 + 57) & ~v9)) & ~v11)) & 0xF8) - 118));
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v12 + (v22 | v21) + 1;
}

void storeEnumTagSinglePayload for InspectorSplitView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (v7 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v6 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(*(v8 - 8) + 64) + 9;
  v16 = ((v15 + ((v12 + v13 + ((v11 + 57) & ~v11)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 138;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = (a3 - v14 + 0xFFFF) >> 16;
    if (v16 <= 3)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v14 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v16] = 0;
      }

      else if (v20)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      v23 = &a1[v11 + 57] & ~v11;
      if (v7 == v14)
      {
        v24 = *(v6 + 56);

        v24(v23);
      }

      else
      {
        v25 = (v23 + v12 + v13) & ~v13;
        if (v10 == v14)
        {
          v26 = *(v9 + 56);

          v26(v25);
        }

        else
        {
          v27 = (v15 + v25) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v27 + 120) = 0u;
            v28 = a2 & 0x7FFFFFFF;
            *(v27 + 104) = 0u;
            *(v27 + 88) = 0u;
            *(v27 + 72) = 0u;
            *(v27 + 56) = 0u;
            *(v27 + 40) = 0u;
            *(v27 + 24) = 0u;
            *(v27 + 8) = 0u;
            *(v27 + 136) = 0;
          }

          else
          {
            v28 = a2 - 1;
          }

          *v27 = v28;
        }
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, ((v15 + ((v12 + v13 + ((v11 + 57) & ~v11)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 138);
  if (v16 <= 3)
  {
    v22 = HIWORD(v21) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_29:
      if (v20 == 2)
      {
        *&a1[v16] = v22;
      }

      else
      {
        *&a1[v16] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v16] = v22;
  }
}

uint64_t type metadata completion function for _InspectorSplitViewRoot()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-60 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 17);
    v13 = *(a2 + 16);
    outlined copy of StateOrBinding<Bool>(*a2, v11, v13, v12);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 17) = v12;
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 57) = *(a2 + 57);
    *(a1 + 58) = *(a2 + 58);
    (*(v5 + 16))((a1 + v6 + 59) & ~v6, (a2 + v6 + 59) & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t destroy for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2)
{
  outlined consume of StateOrBinding<Bool>(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 59) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 16))((*(v10 + 80) + 59 + a1) & ~*(v10 + 80), (*(v10 + 80) + 59 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t assignWithCopy for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  outlined consume of StateOrBinding<Bool>(v10, v11, v13, v12);
  *(a1 + 18) = *(a2 + 18);
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v15;
  *(a1 + 24) = v14;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 24))((*(v16 + 80) + 59 + a1) & ~*(v16 + 80), (*(v16 + 80) + 59 + a2) & ~*(v16 + 80));
  return a1;
}

uint64_t initializeWithTake for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 32))((*(v5 + 80) + 59 + a1) & ~*(v5 + 80), (*(v5 + 80) + 59 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t assignWithTake for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = *a2;
  v11 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v7;
  outlined consume of StateOrBinding<Bool>(v8, v9, v11, v10);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 40))((*(v12 + 80) + 59 + a1) & ~*(v12 + 80), (*(v12 + 80) + 59 + a2) & ~*(v12 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _InspectorSplitViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 59) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 59) & ~v6);
      }

      v15 = *(a1 + 4) >> 1;
      v16 = -2 - v15;
      if (-2 - v15 < 0)
      {
        v16 = -1;
      }

      if (v15 > 0x80000000)
      {
        return (v16 + 1);
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

void storeEnumTagSinglePayload for _InspectorSplitViewRoot(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 59) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = &a1[v9 + 59] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[56] = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = 0;
    *(a1 + 4) = 2 * ~a2;
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    a1[56] = 0;
  }
}

uint64_t instantiation function for generic protocol witness table for _InspectorSplitViewRoot<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _InspectorSplitViewRoot.presented.getter()
{
  if (*(v0 + 18) != 1)
  {
    return 0;
  }

  if (*(v0 + 17))
  {
    type metadata accessor for Binding<PresentationDetent>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v2);
  }

  else
  {
    type metadata accessor for Binding<PresentationDetent>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  return v2;
}

uint64_t _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v9);
  outlined init with copy of _VariadicView_Children(a1, v22);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v19 = *(a2 + 16);
  *(v11 + 16) = v19;
  (*(v7 + 32))(v11 + v10, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = v22[1];
  *v12 = v22[0];
  v12[1] = v13;
  v14 = v22[3];
  v12[2] = v22[2];
  v12[3] = v14;
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<InspectorSplitViewLayout>, lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout, &unk_1EFFD9AA0, MEMORY[0x1E697DDC0]);
  type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(255);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>();
  type metadata accessor for _VariadicView.Tree();
  v15 = lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>();
  WitnessTable = swift_getWitnessTable();
  v20 = v15;
  v21 = WitnessTable;
  swift_getWitnessTable();
  result = GeometryReader.init(content:)();
  *a3 = result;
  a3[1] = v18;
  return result;
}

uint64_t closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a5;
  v45 = a3;
  v46 = a6;
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<InspectorSplitViewLayout>, lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout, &unk_1EFFD9AA0, MEMORY[0x1E697DDC0]);
  type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
  v41 = a4;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(255);
  swift_getTupleTypeMetadata2();
  v43 = type metadata accessor for TupleView();
  lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>();
  v9 = type metadata accessor for _VariadicView.Tree();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = a1[1];
  v59 = *a1;
  v60 = v15;
  v61 = a1[2];
  v62 = *(a1 + 12);
  type metadata accessor for _InspectorSplitViewRoot();
  v16 = _InspectorSplitViewRoot.presented.getter();
  v17 = *(a2 + 18);
  v18 = *(a2 + 57);
  v19 = (a2 + 24);
  v20 = *(a2 + 56);
  v21 = *(a2 + 32) >> 1;
  if ((v20 & 0x80u) != 0)
  {
    v19 = (a2 + 40);
  }

  v22 = *v19;
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v58 = v62;
  GeometryProxy.safeAreaInsets.getter();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if (v20 < 2 && v21 == 0xFFFFFFFFLL)
  {
    v32 = 320.5;
  }

  else
  {
    v32 = v22 + 0.5;
  }

  v33 = swift_allocObject();
  *(v33 + 32) = v16 & 1;
  v34 = v41;
  v35 = v42;
  *(v33 + 16) = v41;
  *(v33 + 24) = v35;
  *(v33 + 33) = v17;
  *(v33 + 34) = v18;
  *(v33 + 40) = v32;
  *(v33 + 48) = v24;
  *(v33 + 56) = v26;
  *(v33 + 64) = v28;
  *(v33 + 72) = v30;
  v48 = v34;
  v49 = v35;
  v50 = a2;
  v51 = &v59;
  v52 = v45;
  implicit closure #2 in implicit closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)(partial apply for closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:), v47, v11);

  v36 = lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>();
  WitnessTable = swift_getWitnessTable();
  v53 = v36;
  v54 = WitnessTable;
  v38 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v9, v38);
  v39 = *(v44 + 8);
  v39(v11, v9);
  static ViewBuilder.buildExpression<A>(_:)(v14, v9, v38);
  return (v39)(v14, v9);
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(255);
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v7 = lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout();
  WitnessTable = swift_getWitnessTable();
  return Layout.callAsFunction<A>(_:)(a1, a2, &unk_1EFFD9AA0, v6, v7, WitnessTable, a3);
}

uint64_t closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v55 = a3;
  v65 = a5;
  type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
  v8 = type metadata accessor for ModifiedContent();
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52[-v9];
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
  v58 = v8;
  v11 = type metadata accessor for ModifiedContent();
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v52[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52[-v16];
  v18 = a2[1];
  v76 = *a2;
  v77 = v18;
  v78 = a2[2];
  LODWORD(v79) = *(a2 + 12);
  GeometryProxy.size.getter();
  v20 = v19;
  v22 = v21;
  v23 = a4;
  v24 = type metadata accessor for _InspectorSplitViewRoot();
  v25 = *(a1 + 18);
  v64 = v11;
  v62 = v17;
  if (v25 == 1)
  {
    if (*(a1 + 57) == 1)
    {
      if (v22 >= v20)
      {
        v26 = 1194.0;
      }

      else
      {
        v26 = 1024.0;
      }

      if (v20 >= v26)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }
    }

    else
    {
      v27 = 3;
    }
  }

  else
  {
    v27 = 0;
  }

  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  v72 = v76;
  *&v73[0] = v77;
  MEMORY[0x18D00B690](&v72, 0.1);
  v54 = v24;
  LOBYTE(v76) = _InspectorSplitViewRoot.presented.getter() & 1;
  View.animation<A>(_:value:)();

  v28 = *a1;
  v29 = a1[1];
  v30 = *(a1 + 17);
  v60 = v10;
  v57 = a1;
  if (v30)
  {
    v31 = *(a1 + 16);
  }

  else
  {
    LOBYTE(v72) = v28 & 1;
    *(&v72 + 1) = v29;
    type metadata accessor for Binding<PresentationDetent>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    v32 = State.projectedValue.getter();
    v29 = *(&v76 + 1);
    v28 = v76;
    v31 = v77;
  }

  v56 = v52;
  MEMORY[0x1EEE9AC00](v32);
  v53 = v27;
  v52[-32] = v27;
  *&v52[-24] = v28;
  *&v52[-16] = v29;
  v52[-8] = v31 & 1;
  static Alignment.center.getter();
  v33 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
  v92 = v23;
  v93 = v33;
  v34 = v58;
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView();
  v36 = v59;
  v37 = v60;
  View.overlay<A>(alignment:content:)();

  (*(v61 + 8))(v37, v34);
  v38 = lazy protocol witness table accessor for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>();
  v90 = WitnessTable;
  v91 = v38;
  v39 = v64;
  v40 = swift_getWitnessTable();
  v41 = v62;
  static ViewBuilder.buildExpression<A>(_:)(v36, v39, v40);
  v42 = *(v66 + 8);
  v42(v36, v39);
  if (*(v57 + 57) == 1)
  {
    v72 = static VerticalAlignment.center.getter();
    LOBYTE(v73[0]) = 0;
    closure #2 in closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)(v55, v73 + 8);
    v43 = static Alignment.leading.getter();
    v45 = v44;
    v46 = _InspectorSplitViewRoot.presented.getter();
    BYTE8(v74) = v53;
    BYTE9(v74) = v46 & 1;
    *&v75[0] = v43;
    *(&v75[0] + 1) = v45;
    Spring.init(mass:stiffness:damping:allowOverDamping:)();
    v67 = v76;
    v68 = v77;
    v47 = MEMORY[0x18D00B690](&v67, 0.1);
    v48 = _InspectorSplitViewRoot.presented.getter();
    *&v75[1] = v47;
    BYTE8(v75[1]) = v48 & 1;
    v88 = v74;
    v89[0] = v75[0];
    v84 = v73[7];
    v85 = v73[8];
    v86 = v73[9];
    v87 = v73[10];
    v80 = v73[3];
    v81 = v73[4];
    v82 = v73[5];
    v83 = v73[6];
    v76 = v72;
    v77 = v73[0];
    v78 = v73[1];
    v79 = v73[2];
    *(v89 + 9) = *(v75 + 9);
  }

  else
  {
    v88 = 0u;
    memset(v89, 0, 25);
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
  }

  v49 = v63;
  (*(v66 + 16))(v63, v41, v39);
  *&v67 = v49;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(&v76, &v72);
  *(&v67 + 1) = &v72;
  v71[0] = v39;
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(0);
  v71[1] = v50;
  v69 = v40;
  v70 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?();
  static ViewBuilder.buildBlock<each A>(_:)(&v67, 2uLL, v71);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(&v76, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?);
  v42(v41, v39);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(&v72, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?);
  return (v42)(v49, v39);
}

uint64_t closure #2 in closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with copy of _VariadicView_Children(a1, v5);
  v5[4] = v7;
  v5[5] = v8;
  v5[8] = v11;
  v5[9] = v12;
  v5[6] = v9;
  v5[7] = v10;
  v6[4] = v7;
  v6[5] = v8;
  v6[9] = v12;
  v6[10] = v13;
  v6[7] = v10;
  v6[8] = v11;
  v6[6] = v9;
  v6[2] = v5[2];
  v6[3] = v5[3];
  v6[1] = v5[1];
  v5[10] = v13;
  v6[0] = v5[0];
  outlined init with copy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(v6, v5);
  outlined init with copy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(v5, a2);
  outlined destroy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(v6);
  return outlined destroy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(v5);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance _InspectorSplitViewRoot<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t partial apply for closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for _InspectorSplitViewRoot() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #1 in _InspectorSplitViewRoot.body(children:)(a1, v2 + v8, v9, v5, v6, a2);
}

unint64_t lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout()
{
  result = lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout;
  if (!lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout;
  if (!lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView()
{
  result = lazy protocol witness table cache variable for type InspectorDimmingView and conformance InspectorDimmingView;
  if (!lazy protocol witness table cache variable for type InspectorDimmingView and conformance InspectorDimmingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorDimmingView and conformance InspectorDimmingView);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>();
    type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>)
  {
    type metadata accessor for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>();
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _BackgroundModifier<InspectorSeparatorShadow>, lazy protocol witness table accessor for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow, &type metadata for InspectorSeparatorShadow, MEMORY[0x1E697F930]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>)
  {
    type metadata accessor for TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>(255);
    lazy protocol witness table accessor for type TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)> and conformance TupleView<A>, type metadata accessor for TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)()
{
  if (!lazy cache variable for type metadata for (InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>))
  {
    type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, _FlexFrameLayout>, MEMORY[0x1E697FFD0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>));
    }
  }
}

void type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow()
{
  result = lazy protocol witness table cache variable for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow;
  if (!lazy protocol witness table cache variable for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<InspectorSplitViewLayout>, lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout, &unk_1EFFD9AA0, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<InspectorSplitViewLayout>, lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout, &unk_1EFFD9AA0, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

unint64_t lazy protocol witness table accessor for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>()
{
  result = lazy protocol witness table cache variable for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>;
  if (!lazy protocol witness table cache variable for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>)
  {
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>();
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>();
    lazy protocol witness table accessor for type TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>);
    lazy protocol witness table accessor for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>)
  {
    type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _BackgroundModifier<InspectorSeparatorShadow>, lazy protocol witness table accessor for type InspectorSeparatorShadow and conformance InspectorSeparatorShadow, &type metadata for InspectorSeparatorShadow, MEMORY[0x1E697F930]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundModifier<InspectorSeparatorShadow> and conformance _BackgroundModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _AnimationModifier<Bool>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, _FlexFrameLayout>, MEMORY[0x1E697FFD0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<_VariadicView_Children, _FlexFrameLayout>(uint64_t a1)
{
  type metadata accessor for _AnimationModifier<Bool>(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, _FlexFrameLayout>, MEMORY[0x1E697FFD0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Binding<PresentationDetent>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for InspectorSplitViewLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized InspectorSplitViewLayout.placeSubviews(in:proposal:subviews:cache:)(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  v13 = *(a1 + 17);
  v14 = *v5;
  v24 = v5[1];
  v25 = v5[2];
  v15 = v5[5];
  if (*(v5 + 1) == 1 && *(v5 + 2) == 1)
  {
    v16 = a5 >= a4 ? 1194.0 : 1024.0;
    if (a4 < v16)
    {
      LODWORD(v26.a) = *a1;
      v26.b = v11;
      LOBYTE(v26.c) = v12;
      BYTE1(v26.c) = v13;
      result = LayoutSubviews.endIndex.getter();
      if ((result & 0x8000000000000000) == 0)
      {
        v18 = result;
        if (result)
        {
          v19 = 0;
          do
          {
            if (v19)
            {
              v35.origin.x = a2;
              v35.origin.y = a3;
              v35.size.width = a4;
              v35.size.height = a5;
              CGRectGetWidth(v35);
              v36.origin.x = a2;
              v36.origin.y = a3;
              v36.size.width = a4;
              v36.size.height = a5;
              LODWORD(v26.a) = v10;
              CGRectGetHeight(v36);
              v26.b = v11;
              LOBYTE(v26.c) = v12;
              BYTE1(v26.c) = v13;
              LayoutSubviews.subscript.getter();
              v29 = v31;
              v30 = v32;
            }

            else
            {
              LODWORD(v26.a) = v10;
              v26.b = v11;
              LOBYTE(v26.c) = v12;
              BYTE1(v26.c) = v13;
              LayoutSubviews.subscript.getter();
              v29 = v31;
              v30 = v32;
              v37.origin.x = a2;
              v37.origin.y = a3;
              v37.size.width = a4;
              v37.size.height = a5;
              CGRectGetWidth(v37);
              v38.origin.x = a2;
              v38.origin.y = a3;
              v38.size.width = a4;
              v38.size.height = a5;
              CGRectGetHeight(v38);
            }

            static UnitPoint.topLeading.getter();
            LOBYTE(v27) = 0;
            result = LayoutSubview.place(at:anchor:proposal:)();
            ++v19;
          }

          while (v18 != v19);
        }

        return result;
      }

LABEL_26:
      __break(1u);
      return result;
    }
  }

  LODWORD(v26.a) = *a1;
  v26.b = v11;
  LOBYTE(v26.c) = v12;
  BYTE1(v26.c) = v13;
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v20 = result;
  if (result)
  {
    v21 = 0;
    if (v14)
    {
      v22 = -v24;
    }

    else
    {
      v22 = v15;
    }

    do
    {
      if (v21)
      {
        LODWORD(v31) = v10;
        *(&v31 + 1) = v11;
        v32 = v12;
        v33 = v13;
        LayoutSubviews.subscript.getter();
        v27 = v29;
        v28 = v30;
        v39.origin.x = a2;
        v39.origin.y = a3;
        v39.size.width = a4;
        v39.size.height = a5;
        Width = CGRectGetWidth(v39);
        CGAffineTransformMakeTranslation(&v26, Width + v22, -v25);
        v34.x = a2;
        v34.y = a3;
        CGPointApplyAffineTransform(v34, &v26);
        v40.origin.x = a2;
        v40.origin.y = a3;
        v40.size.width = a4;
        v40.size.height = a5;
        CGRectGetHeight(v40);
        static UnitPoint.topLeading.getter();
        LOBYTE(v26.a) = 0;
      }

      else
      {
        LODWORD(v26.a) = v10;
        v26.b = v11;
        LOBYTE(v26.c) = v12;
        BYTE1(v26.c) = v13;
        LayoutSubviews.subscript.getter();
        v29 = v31;
        v30 = v32;
        v41.origin.x = a2;
        v41.origin.y = a3;
        v41.size.width = a4;
        v41.size.height = a5;
        CGRectGetWidth(v41);
        v42.origin.x = a2;
        v42.origin.y = a3;
        v42.size.width = a4;
        v42.size.height = a5;
        CGRectGetHeight(v42);
        static UnitPoint.topLeading.getter();
        LOBYTE(v27) = 0;
      }

      result = LayoutSubview.place(at:anchor:proposal:)();
      ++v21;
    }

    while (v20 != v21);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InspectorPresentationMode and conformance InspectorPresentationMode()
{
  result = lazy protocol witness table cache variable for type InspectorPresentationMode and conformance InspectorPresentationMode;
  if (!lazy protocol witness table cache variable for type InspectorPresentationMode and conformance InspectorPresentationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorPresentationMode and conformance InspectorPresentationMode);
  }

  return result;
}

void type metadata completion function for TokenField()
{
  type metadata accessor for Binding<AttributedString>();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TokenField(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (*(v11 + 80) | *(v7 + 80)) & 0x100000;
  v14 = ((-33 - v12 - ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v12) - *(v11 + 64);
  v15 = *a2;
  *a1 = *a2;
  if ((v12 | v8) <= 7 && v13 == 0 && v14 >= 0xFFFFFFFFFFFFFFE7)
  {
    v32 = v10;
    v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = *(v7 + 16);

    v20(v18 + 1, v19 + 1, v6);
    v21 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v23 = v22[1];
    *v21 = *v22;
    v21[1] = v23;
    v24 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = *(v25 + 24);

    if (v26 < 0xFFFFFFFF)
    {
      v30 = *(v25 + 16);
      *v24 = *v25;
      *(v24 + 16) = v30;
    }

    else
    {
      v27 = *v25;
      v28 = *(v25 + 8);
      v29 = *(v25 + 16);
      outlined copy of Text.Storage(*v25, v28, v29);
      *v24 = v27;
      *(v24 + 8) = v28;
      *(v24 + 16) = v29;
      *(v24 + 24) = *(v25 + 24);
    }

    (*(v11 + 16))(v24 + 32, v25 + 32, v32);
  }

  else
  {
    a1 = (v15 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)));
  }

  return a1;
}

uint64_t destroy for TokenField(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80);
  (*(v6 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, v5);
  v9 = (a1 + *(v7 + 56) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8;

  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + *(v11 + 80) + 32) & ~*(v11 + 80);

  return v12(v13);
}

void *initializeWithCopy for TokenField(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);

  v9((v5 + v11 + 8) & ~v11, (v6 + v11 + 8) & ~v11, v7);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 48) + 7;
  v13 = ((a1 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((a2 + v12) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;
  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 24);

  if (v18 < 0xFFFFFFFF)
  {
    v22 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v22;
  }

  else
  {
    v19 = *v17;
    v20 = *(v17 + 8);
    v21 = *(v17 + 16);
    outlined copy of Text.Storage(*v17, v20, v21);
    *v16 = v19;
    *(v16 + 8) = v20;
    *(v16 + 16) = v21;
    *(v16 + 24) = *(v17 + 24);
  }

  v23 = *(*(a3 + 16) - 8);
  (*(v23 + 16))((v16 + *(v23 + 80) + 32) & ~*(v23 + 80), (v17 + *(v23 + 80) + 32) & ~*(v23 + 80));
  return a1;
}

void *assignWithCopy for TokenField(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  (*(v9 + 24))((v7 + v11 + 8) & ~v11, (v11 + 8 + v6) & ~v11, v8);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 40) + 7;
  v13 = ((a1 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((a2 + v12) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;

  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 24);
  if (*(v16 + 24) < 0xFFFFFFFFuLL)
  {
    if (v18 >= 0xFFFFFFFF)
    {
      v25 = *v17;
      v26 = *(v17 + 8);
      v27 = *(v17 + 16);
      outlined copy of Text.Storage(*v17, v26, v27);
      *v16 = v25;
      *(v16 + 8) = v26;
      *(v16 + 16) = v27;
      *(v16 + 24) = *(v17 + 24);

      goto LABEL_8;
    }

LABEL_7:
    v28 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v28;
    goto LABEL_8;
  }

  if (v18 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

    goto LABEL_7;
  }

  v19 = *v17;
  v20 = *(v17 + 8);
  v21 = *(v17 + 16);
  outlined copy of Text.Storage(*v17, v20, v21);
  v22 = *v16;
  v23 = *(v16 + 8);
  v24 = *(v16 + 16);
  *v16 = v19;
  *(v16 + 8) = v20;
  *(v16 + 16) = v21;
  outlined consume of Text.Storage(v22, v23, v24);
  *(v16 + 24) = *(v17 + 24);

LABEL_8:
  v29 = *(*(a3 + 16) - 8);
  (*(v29 + 24))((v16 + *(v29 + 80) + 32) & ~*(v29 + 80), (v17 + *(v29 + 80) + 32) & ~*(v29 + 80));
  return a1;
}

void *initializeWithTake for TokenField(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  (*(v9 + 32))((v6 + v11 + 8) & ~v11, (v7 + v11 + 8) & ~v11, v8);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 32) + 7;
  v13 = ((a1 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((a2 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 32))((v15 + *(v18 + 80) + 32) & ~*(v18 + 80), (v16 + *(v18 + 80) + 32) & ~*(v18 + 80));
  return a1;
}

void *assignWithTake for TokenField(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  (*(v9 + 40))((v7 + v11 + 8) & ~v11, (v11 + 8 + v6) & ~v11, v8);
  v12 = ((v11 + 16) & ~v11) + *(v10 + 24) + 7;
  v13 = ((a1 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = a2 + v12;
  v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v13 = *(v14 & 0xFFFFFFFFFFFFFFF8);

  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (*(v16 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v17 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

LABEL_5:
    v22 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v22;
    goto LABEL_6;
  }

  v18 = *(v17 + 16);
  v19 = *v16;
  v20 = *(v16 + 8);
  v21 = *(v16 + 16);
  *v16 = *v17;
  *(v16 + 16) = v18;
  outlined consume of Text.Storage(v19, v20, v21);
  *(v16 + 24) = *(v17 + 24);

LABEL_6:
  v23 = *(*(a3 + 16) - 8);
  (*(v23 + 40))((v16 + *(v23 + 80) + 32) & ~*(v23 + 80), (v17 + *(v23 + 80) + 32) & ~*(v23 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TokenField(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((v12 + 16) & ~v12) + v13;
  v17 = v14 + 32;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v17 + ((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v10 + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v15 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v9 >= v11)
      {
        v27 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v8 & 0x80000000) != 0)
        {
          v29 = *(v7 + 48);

          return v29((v27 + v12 + 8) & ~v12);
        }

        else
        {
          v28 = *v27;
          if (v28 >= 0xFFFFFFFF)
          {
            LODWORD(v28) = -1;
          }

          return (v28 + 1);
        }
      }

      else
      {
        v26 = *(v10 + 48);

        return v26((v17 + ((((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = ((v17 + ((((v16 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v14) + *(v10 + 64);
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v15 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for TokenField(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for AttributedString() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v14 + 16) & ~v14) + v15;
  v19 = ((v16 + 32 + ((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(v12 + 64);
  if (a3 <= v17)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v17 < a2)
  {
    v21 = ~v17 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_61:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v19] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_33;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v11 >= v13)
  {
    if (v11 >= a2)
    {
      v30 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v32 = *(v9 + 56);

        v32((v30 + v14 + 8) & ~v14, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v31 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v31 = (a2 - 1);
        }

        *v30 = v31;
      }
    }

    else
    {
      if (v18 <= 3)
      {
        v27 = ~(-1 << (8 * v18));
      }

      else
      {
        v27 = -1;
      }

      if (v18)
      {
        v28 = v27 & (~v11 + a2);
        if (v18 <= 3)
        {
          v29 = v18;
        }

        else
        {
          v29 = 4;
        }

        bzero(a1, v18);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *a1 = v28;
            a1[2] = BYTE2(v28);
          }

          else
          {
            *a1 = v28;
          }
        }

        else if (v29 == 1)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v28;
        }
      }
    }
  }

  else
  {
    v26 = *(v12 + 56);

    v26((v16 + 32 + (((&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16, a2, v13);
  }
}

uint64_t TokenField.init(valueType:text:prompt:token:label:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t))
{
  v17 = type metadata accessor for TokenField();
  v18 = (a8 + *(v17 + 72));
  outlined init with copy of Binding<AttributedString>(a1, a8);
  v19 = (a8 + *(v17 + 68));
  *v19 = a6;
  v19[1] = a7;
  *v18 = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;

  v20 = outlined copy of Text?(a2, a3, a4, a5);
  a9(v20);
  outlined consume of Text?(a2, a3, a4, a5);

  return outlined destroy of ResolvedTokenFieldStyle(a1, type metadata accessor for Binding<AttributedString>);
}

uint64_t TokenField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = type metadata accessor for ResolvedTokenFieldStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v20[0] = lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label();
  v8 = *(a1 + 40);
  v29 = &type metadata for TokenFieldConfiguration.Label;
  v30 = v7;
  v31 = v20[0];
  v32 = v8;
  type metadata accessor for StaticSourceWriter();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  TokenField.configuration.getter(a1, v6);
  v22 = v7;
  v23 = *(a1 + 24);
  v24 = v8;
  v25 = *(a1 + 48);
  v26 = v2;
  v16 = lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for TokenFieldConfiguration.Label, partial apply for closure #1 in TokenField.body.getter, v21, v4, &type metadata for TokenFieldConfiguration.Label, v7, v16);
  outlined destroy of ResolvedTokenFieldStyle(v6, type metadata accessor for ResolvedTokenFieldStyle);
  v27 = v16;
  v28 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, WitnessTable);
  return (v18)(v15, v9);
}

uint64_t TokenField.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  outlined init with copy of Binding<AttributedString>(v3, a2);
  v8 = (v3 + *(a1 + 72));
  v9 = v8[1];
  v21 = *v8;
  v10 = v8[2];
  v11 = v8[3];
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v12 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(a1 + 32);
  *(v13 + 1) = *(a1 + 16);
  *(v13 + 2) = v14;
  *(v13 + 3) = *(a1 + 48);
  (*(v6 + 32))(&v13[v12], &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = type metadata accessor for TokenFieldConfiguration(0);
  v16 = (a2 + *(v15 + 24));
  v17 = v21;
  *v16 = v21;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v18 = (a2 + *(v15 + 28));
  *v18 = partial apply for closure #1 in TokenField.configuration.getter;
  v18[1] = v13;
  return outlined copy of Text?(v17, v9, v10, v11);
}

uint64_t closure #1 in TokenField.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = v11;
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = v16;
  v17 = type metadata accessor for TokenField();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v17 + 76), a2, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a2, a5);
  return (*(v8 + 8))(v10, a2);
}

uint64_t closure #1 in TokenField.configuration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2;
  v21[0] = a1;
  MEMORY[0x1EEE9AC00](a1);
  v21[1] = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Binding();
  v15 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v17 = v21 - v16;
  type metadata accessor for Binding<AnyToken>();
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  type metadata accessor for TokenField.ToToken();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v18 = type metadata accessor for TokenField();
  (*(v23 + *(v18 + 68)))(v17);
  v19 = AnyView.init<A>(_:)();
  (*(v15 + 8))(v17, v22);
  return v19;
}

unint64_t lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle;
  if (!lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle)
  {
    type metadata accessor for ResolvedTokenFieldStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle);
  }

  return result;
}

uint64_t partial apply for closure #1 in TokenField.configuration.getter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for TokenField() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #1 in TokenField.configuration.getter(a1, v10, v3, v4, v5, v6, v7, v8);
}

void type metadata accessor for Binding<AnyToken>()
{
  if (!lazy cache variable for type metadata for Binding<AnyToken>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AnyToken>);
    }
  }
}

uint64_t outlined destroy of ResolvedTokenFieldStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized TokenField.ToToken.set(base:newValue:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined destroy of AnyToken(v10);
  (*(v7 + 16))(v9, a2, a4);
  return AnyToken.init<A>(_:)(v9, a4, a1);
}

uint64_t TableRowContent.swipeActions<A>(edge:allowsFullSwipe:content:)@<X0>(char a1@<W0>, int a2@<W1>, void (*a3)(double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = 0;
  v11 = 256;
  return TableRowContent.swipeActions<A>(edge:allowsFullSwipe:style:content:)(a1 & 1, a2, &v10, a3, a4, a5, a6, a7, a9, a8);
}

uint64_t TableRowContent.swipeActions<A>(edge:allowsFullSwipe:style:content:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void (*a4)(double)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a8;
  v43 = a9;
  v44 = a6;
  v38 = a5;
  v39 = a4;
  v41 = a1;
  v42 = a2;
  v40 = *(a7 - 8);
  v35 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>();
  v14 = type metadata accessor for ModifiedContent();
  v37 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30[-v15];
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>();
  v17 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v30[-v18];
  v19 = _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>);
  v52 = a10;
  v53 = v19;
  WitnessTable = swift_getWitnessTable();
  v33 = WitnessTable;
  v21 = _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>);
  v50 = WitnessTable;
  v51 = v21;
  v34 = swift_getWitnessTable();
  v22 = type metadata accessor for SwipeActionsTableRowModifier();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v30[-v25];
  v32 = *a3;
  v31 = *(a3 + 8);
  v27 = *(a3 + 9);
  v39(v24);
  static SymbolVariants.fill.getter();
  v49 = v46;
  View.symbolVariant(_:)();
  (*(v40 + 8))(v13, a7);
  v28 = v36;
  View.styleContext<A>(_:)();
  (*(v37 + 8))(v16, v14);
  v46 = v32;
  v47 = v31;
  v48 = v27;
  SwipeActionsTableRowModifier.init(edge:actions:allowsFullSwipe:style:)(v41 & 1, v28, v42, &v46, v17, v26);
  swift_getWitnessTable();
  TableRowContent.modifier<A>(_:)(v26, v44, v22);
  return (*(v23 + 8))(v26, v22);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>);
    }
  }
}

void type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>);
    }
  }
}

uint64_t SwipeActionsTableRowModifier.init(edge:actions:allowsFullSwipe:style:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 9);
  *a6 = a1 & 1;
  v13 = type metadata accessor for SwipeActionsTableRowModifier();
  result = (*(*(a5 - 8) + 32))(&a6[v13[9]], a2, a5);
  a6[v13[10]] = a3;
  v15 = &a6[v13[11]];
  *v15 = v10;
  v15[8] = v11;
  v15[9] = v12;
  return result;
}

uint64_t type metadata completion function for SwipeActionsTableRowModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SwipeActionsTableRowModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((v5 + 1) & ~v5) + v6) & 0xFFFFFFFFFFFFFFF8) + 18 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 1) & ~v5;
    v11 = (a2 + v5 + 1) & ~v5;
    (*(v4 + 16))(v10, v11);
    *(v10 + v6) = *(v11 + v6);
    v12 = (v10 + v6) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + v6) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 8);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 8) = v14;
  }

  return v3;
}

_BYTE *initializeWithCopy for SwipeActionsTableRowModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  return a1;
}

_BYTE *assignWithCopy for SwipeActionsTableRowModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  return a1;
}

_BYTE *initializeWithTake for SwipeActionsTableRowModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  return a1;
}

_BYTE *assignWithTake for SwipeActionsTableRowModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 1] & ~v6;
  v8 = &a2[v6 + 1] & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  return a1;
}

uint64_t getEnumTagSinglePayload for SwipeActionsTableRowModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
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
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
    }

    v17 = *a1;
    if (v17 >= 2)
    {
      return v17 - 1;
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

void storeEnumTagSinglePayload for SwipeActionsTableRowModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 18;
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
    v11 = (a3 - v8 + 0xFFFF) >> 16;
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
      if (v7 > 0xFE)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 1] & ~v9;

        v17(v18);
      }

      else
      {
        *a1 = a2 + 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
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

uint64_t SwipeActionsTableRowModifier.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  result = (*(v4 + 32))(v9 + v8, v7, a1);
  *a2 = partial apply for closure #1 in SwipeActionsTableRowModifier.body.getter;
  a2[1] = v9;
  return result;
}

uint64_t closure #1 in SwipeActionsTableRowModifier.body.getter(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SwipeActionsTableRowModifier();
  v10 = a2[v9[10]];
  v11 = &a2[v9[11]];
  v12 = *v11;
  v13 = v11[8];
  v14 = v11[9];
  (*(v6 + 16))(v8, &a2[v9[9]], a3);
  v15 = AnyView.init<A>(_:)();
  v16 = *a2;
  if (v16 == 1)
  {
    v17 = 7;
  }

  else
  {
    v17 = 3;
  }

  if (v16 == 1)
  {
    v18 = a1 + 4;
  }

  else
  {
    v18 = a1;
  }

  if (v16 == 1)
  {
    v19 = 5;
  }

  else
  {
    v19 = 1;
  }

  if (v16 == 1)
  {
    v20 = 6;
  }

  else
  {
    v20 = 2;
  }

  v21 = 256;
  if (!v14)
  {
    v21 = 0;
  }

  v22 = v21 | v13;

  *v18 = v10;
  a1[v19] = v12;
  a1[v20] = v22;
  a1[v17] = v15;
  return result;
}

uint64_t partial apply for closure #1 in SwipeActionsTableRowModifier.body.getter(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for SwipeActionsTableRowModifier() - 8);
  v5 = (v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return closure #1 in SwipeActionsTableRowModifier.body.getter(a1, v5, v3);
}

uint64_t destroy for TableRowSwipeActionsTraitKey.Storage()
{
}

uint64_t initializeWithCopy for TableRowSwipeActionsTraitKey.Storage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for TableRowSwipeActionsTraitKey.Storage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for TableRowSwipeActionsTraitKey.Storage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t initializeWithCopy for TableRowSwipeActionsTraitKey.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for TableRowSwipeActionsTraitKey.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for TableRowSwipeActionsTraitKey.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t static ContainerBackgroundPlacement.custom<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = ContainerBackgroundKeys.AnyCustomKey.init<A>(_:)(a1, a1);
  *a2 = result;
  return result;
}

uint64_t static ContainerBackgroundPlacement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0 && v3 == v2)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t ContainerBackgroundPlacement.hash(into:)()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  return MEMORY[0x18D00F6F0](v1);
}

Swift::Int ContainerBackgroundPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContainerBackgroundPlacement.Storage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContainerBackgroundPlacement.Storage()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  return MEMORY[0x18D00F6F0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContainerBackgroundPlacement.Storage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    MEMORY[0x18D00F6F0](1);
    v1 = v1;
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ContainerBackgroundPlacement(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    return v3 < 0 && v3 == v2;
  }

  return v2 == v3;
}

uint64_t static ContainerBackgroundModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void)@<X2>, void *a4@<X8>)
{
  v36 = a4;
  v6 = *a1;
  v7 = a2[3];
  v48[2] = a2[2];
  v49 = v7;
  v50 = a2[4];
  v51 = *(a2 + 20);
  v8 = a2[1];
  v48[0] = *a2;
  v48[1] = v8;
  v9 = swift_allocObject();
  v10 = a2[3];
  v44 = a2[2];
  v45 = v10;
  v46 = a2[4];
  v47 = *(a2 + 20);
  v11 = a2[1];
  v42 = *a2;
  v43 = v11;
  a3();
  for (i = 0; i != 5; ++i)
  {
    v23 = outlined read-only object #0 of static ContainerBackgroundModifier._makeView(modifier:inputs:body:)[i + 32];
    if (v23 <= 1)
    {
      v13 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
      if (outlined read-only object #0 of static ContainerBackgroundModifier._makeView(modifier:inputs:body:)[i + 32])
      {
        v13 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
      }

      v14 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
      if (outlined read-only object #0 of static ContainerBackgroundModifier._makeView(modifier:inputs:body:)[i + 32])
      {
        v14 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
      }

      v15 = &type metadata for ContainerBackgroundKeys.NavigationKey;
      if (outlined read-only object #0 of static ContainerBackgroundModifier._makeView(modifier:inputs:body:)[i + 32])
      {
        v15 = &type metadata for ContainerBackgroundKeys.NavigationSplitViewKey;
      }

      goto LABEL_8;
    }

    if (v23 != 2 && v23 == 3)
    {
      v13 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
      v14 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
      v15 = &type metadata for ContainerBackgroundKeys.PresentationKey;
LABEL_8:
      v39 = 0uLL;
      *&v40 = 0;
      *(&v40 + 1) = v15;
      *&v41 = v14;
      *(&v41 + 1) = v13;
      outlined init with take of MutableCollection & RangeReplaceableCollection(&v39, &v42);
      v16 = *(&v43 + 1);
      v17 = v44;
      v18 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      MEMORY[0x1EEE9AC00](v18);
      v32 = v48;
      v33 = v6;
      v34 = v9;
      v35 = v23;
      MEMORY[0x1EEE9AC00](v19);
      v28[2] = v16;
      v29 = v17;
      v30 = partial apply for closure #1 in static ContainerBackgroundModifier._makeView(modifier:inputs:body:);
      v31 = v20;
      static ContainerBackgroundKind.Builtin.apply<A, B>(key:_:)(v21, partial apply for thunk for @callee_guaranteed (@unowned @thick ContainerBackgroundPlacementKey & HostPreferenceKey.Type) -> (), v28, v16);
      v22 = __swift_destroy_boxed_opaque_existential_1(&v42);
      continue;
    }

    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v22 = outlined destroy of (ContainerBackgroundPlacementKey & HostPreferenceKey)?(&v39);
  }

  *&v39 = v49;
  DWORD2(v39) = DWORD2(v49);
  v37[2] = v49;
  v38 = DWORD2(v49);
  MEMORY[0x1EEE9AC00](v22);
  v34 = __PAIR64__(v25, v6);
  swift_beginAccess();
  outlined init with copy of PreferencesInputs(&v39, v37);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();

  v26 = v36;
  *v36 = *(v9 + 16);
  v26[1] = *(v9 + 24);
}

uint64_t transformKey #1 <A>(_:dependsOnEnvironment:) in static ContainerBackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    a1 = swift_beginAccess();
  }

  v8 = *(a3 + 48);
  v9 = *(a3 + 56);
  v6 = *(a3 + 48);
  v7 = *(a3 + 56);
  MEMORY[0x1EEE9AC00](a1);
  swift_beginAccess();
  outlined init with copy of PreferencesInputs(&v8, v5);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  swift_endAccess();
}

uint64_t implicit closure #1 in transformKey #1 <A>(_:dependsOnEnvironment:) in static ContainerBackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v9 = type metadata accessor for ContainerBackgroundModifier.PreferenceValue();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v6, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_24, v8, v9, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5;
}

uint64_t implicit closure #1 in static ContainerBackgroundModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:));
  lazy protocol witness table accessor for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t ContainerBackgroundModifier.transformPreference(_:placement:environment:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  v9 = *(v3 + 8);
  v8 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (!v9)
  {
    goto LABEL_11;
  }

  v12 = *a1;
  v11 = *(a1 + 8);
  if (v11 >> 62)
  {
    if (v11 >> 62 != 1)
    {

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_9:
      outlined consume of ContainerBackgroundValue.Content(v12, v11);
      v13 = 0;
      goto LABEL_10;
    }

    outlined copy of ContainerBackgroundValue.Content(v12, v11);
  }

  else
  {

    outlined copy of ContainerBackgroundValue.Content(v12, v11);
  }

  static Alignment.center.getter();
  type metadata accessor for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>();
  lazy protocol witness table accessor for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>();
  v9 = AnyView.init<A>(_:)();
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:

  outlined consume of ContainerBackgroundValue.Content(v12, v11);
  v13 = v8 | 0x4000000000000000;
LABEL_10:
  *a1 = v9;
  *(a1 + 8) = v13;
LABEL_11:
  if (v5 < 0)
  {
    v14 = v5;
  }

  else
  {
    v14 = 5;
  }

  LOBYTE(v17) = v14;

  EnvironmentValues.containerBackgroundKind.setter();
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;

  if (v10 == 2)
  {
    if (!v8 || (*(a1 + 16) & 1) != 0)
    {
    }

    ShapeStyle.resolveBackgroundMaterial(in:level:)();

    if (v18 != 255)
    {
      result = outlined consume of Material?(v17, v18);
    }

    v16 = v18 != 255;
  }

  else
  {

    v16 = (*(a1 + 16) | v10) & 1;
  }

  *(a1 + 16) = v16;
  return result;
}

uint64_t ContainerBackgroundModifier.PreferenceValue.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 24);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

void ContainerBackgroundModifier.PreferenceValue.environment.getter(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = *Value;
    v3 = Value[1];
  }

  *a2 = v4;
  a2[1] = v3;
}

uint64_t (*ContainerBackgroundModifier.PreferenceValue.value.getter(uint64_t a1, int a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  ContainerBackgroundModifier.PreferenceValue.modifier.getter(&v17);
  v8 = v17;

  (*(a4 + 16))(&v15, a3, a4);
  if (v8 < 0)
  {
    if ((v15 & 0x8000000000000000) == 0 || v15 != v8)
    {
      return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    }
  }

  else if (v15 < 0 || v8 != v15)
  {
    return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  }

  ContainerBackgroundModifier.PreferenceValue.environment.getter(a2, &v15);
  v9 = v15;
  if (v15 == 1)
  {
    v10 = &v18;
    EnvironmentValues.init()();
    v9 = v17;
  }

  else
  {
    v10 = &v16;
  }

  v12 = *v10;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = v9;
  *(v13 + 56) = v12;
  return partial apply for closure #2 in ContainerBackgroundModifier.PreferenceValue.value.getter;
}

uint64_t closure #2 in ContainerBackgroundModifier.PreferenceValue.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ContainerBackgroundModifier.PreferenceValue.modifier.getter(&v18);
  v15 = v18;
  v16 = v19;
  v17 = v20;
  (*(a7 + 16))(&v14, a6, a7);
  v13[0] = a4;
  v13[1] = a5;
  ContainerBackgroundModifier.transformPreference(_:placement:environment:)(a1, &v14, v13);
}

uint64_t protocol witness for Rule.value.getter in conformance ContainerBackgroundModifier.PreferenceValue<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = ContainerBackgroundModifier.PreferenceValue.value.getter(*v2, *(v2 + 8), *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

unint64_t closure #2 in ContainerBackgroundModifier.CustomPreferenceValue.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(AGGraphGetValue() + 8);
  if (result)
  {

    return specialized Dictionary.subscript.setter(v5, a3);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ContainerBackgroundModifier.CustomPreferenceValue@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v7 = *v1;
  v3 = *AGGraphGetValue();
  if (v3 < 0)
  {
    v5 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    v4 = 0;
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v7;
    *(v4 + 24) = v3;
    v5 = partial apply for closure #2 in ContainerBackgroundModifier.CustomPreferenceValue.value.getter;
  }

  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t View.containerBackground<A>(_:for:)()
{
  type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>, type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>);
  swift_getWitnessTable();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t closure #1 in View.containerBackground<A>(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v33 = a6;
  v34 = a2;
  v31 = a4;
  v32 = a1;
  v30 = a8;
  v29 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14(v12);
  v37 = a9;
  v38 = a5;
  v39 = v15;
  v40 = a7;
  v16 = type metadata accessor for _ShapeView();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
  v20 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v20);
  Shape.fill<A>(_:style:)(a3, 256, a9, a5);
  swift_getKeyPath();
  if (v34 < 0)
  {
    v21 = v34;
  }

  else
  {
    v21 = 5;
  }

  LOBYTE(v37) = v21;
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v17 + 8))(v19, v16);
  v23 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>();
  v35 = WitnessTable;
  v36 = v23;
  swift_getWitnessTable();
  v24 = AnyView.init<A>(_:)();
  (*(v29 + 16))(v28, a3, a5);
  v25 = AnyShapeStyle.init<A>(_:)();
  v37 = v34;
  v38 = v24;
  v39 = v25;
  LOBYTE(v40) = 2;
  MEMORY[0x18D00A570](&v37, v31, &type metadata for ContainerBackgroundModifier, v33);
}

uint64_t View.containerBackground<A>(for:alignment:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a6;
  v28 = a8;
  v27 = a5;
  v26 = a4;
  v29 = a2;
  v30 = a3;
  v31 = a9;
  v25 = a10;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for ZStack();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
  v17 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v17);
  v18 = *a1;
  v33 = v32;
  v34 = a7;
  v35 = a8;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  ZStack.init(alignment:content:)();
  swift_getKeyPath();
  if (v18 < 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 5;
  }

  LOBYTE(v39[0]) = v19;
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v14 + 8))(v16, v13);
  v21 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>();
  v41 = WitnessTable;
  v42 = v21;
  swift_getWitnessTable();
  v22 = AnyView.init<A>(_:)();
  v39[0] = v18;
  v39[1] = v22;
  v39[2] = 0;
  v40 = 2;
  MEMORY[0x18D00A570](v39, v32, &type metadata for ContainerBackgroundModifier, v28);
}

uint64_t View.containerBackground<A>(_:for:allowsVibrancy:)()
{
  type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>, type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>);
  swift_getWitnessTable();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t closure #1 in View.containerBackground<A>(_:for:allowsVibrancy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v36 = a7;
  v32 = a4;
  v37 = a2;
  v33 = a9;
  v34 = a1;
  v31 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v30 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16(v14);
  v40 = a11;
  v41 = a6;
  v42 = v17;
  v43 = a8;
  v29[1] = a8;
  v18 = type metadata accessor for _ShapeView();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v29 - v20;
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
  v22 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v22);
  Shape.fill<A>(_:style:)(a3, 256, a11, a6);
  swift_getKeyPath();
  if (v37 < 0)
  {
    v23 = v37;
  }

  else
  {
    v23 = 5;
  }

  LOBYTE(v40) = v23;
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v19 + 8))(v21, v18);
  v25 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>();
  v38 = WitnessTable;
  v39 = v25;
  swift_getWitnessTable();
  v26 = AnyView.init<A>(_:)();
  (*(v31 + 16))(v30, a3, a6);
  v27 = AnyShapeStyle.init<A>(_:)();
  v40 = v37;
  v41 = v26;
  v42 = v27;
  LOBYTE(v43) = v32;
  MEMORY[0x18D00A570](&v40, v35, &type metadata for ContainerBackgroundModifier, v36);
}

uint64_t View.containerBackground<A>(for:allowsVibrancy:alignment:content:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v24 = a8;
  v28 = a7;
  v27 = a6;
  v26 = a5;
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v32 = a9;
  v25 = a11;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v13 = type metadata accessor for ZStack();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
  v17 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v17);
  v18 = *a1;
  v33 = a7;
  v34 = v24;
  v35 = a10;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  ZStack.init(alignment:content:)();
  swift_getKeyPath();
  if (v18 < 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 5;
  }

  LOBYTE(v39[0]) = v19;
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v14 + 8))(v16, v13);
  v21 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>();
  v41 = WitnessTable;
  v42 = v21;
  swift_getWitnessTable();
  v22 = AnyView.init<A>(_:)();
  v39[0] = v18;
  v39[1] = v22;
  v39[2] = 0;
  v40 = v31;
  MEMORY[0x18D00A570](v39, v28, &type metadata for ContainerBackgroundModifier, a10);
}

uint64_t closure #1 in View.containerBackground<A>(for:alignment:content:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v15 = static Color.clear.getter();
  a1();
  static ViewBuilder.buildExpression<A>(_:)(v11, a4, a6);
  v16 = *(v9 + 8);
  v16(v11, a4);
  v20 = v15;
  v21[0] = &v20;
  (*(v9 + 16))(v11, v14, a4);
  v21[1] = v11;

  v19[0] = MEMORY[0x1E69815C0];
  v19[1] = a4;
  v18[1] = MEMORY[0x1E6981580];
  v18[2] = a6;
  static ViewBuilder.buildBlock<each A>(_:)(v21, 2uLL, v19);

  v16(v14, a4);
  v16(v11, a4);
}

uint64_t View.applyContainerBackground<A>(for:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 40) = a2;
  static Alignment.center.getter();
  type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(0, &lazy cache variable for type metadata for AnyView??, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type AnyView?? and conformance <A> A?();
  View.backgroundPreferenceValue<A, B>(_:alignment:_:)();
}

uint64_t closure #1 in View.applyContainerBackground<A>(for:isEnabled:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    v5 = *a1;
    v6 = ContainerBackgroundKeys.AnyCustomKey.init<A>(_:)(a3, a3);
    if (*(v5 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
    {
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  *a4 = result;
  return result;
}

uint64_t View.applyContainerBackground<A, B>(for:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a2;
  v15[8] = a3;

  static Alignment.center.getter();
  View.backgroundPreferenceValue<A, B>(_:alignment:_:)();
}

uint64_t closure #1 in View.applyContainerBackground<A, B>(for:content:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v18 = *v17;
  v20 = ContainerBackgroundKeys.AnyCustomKey.init<A>(_:)(v19, v19);
  if (*(v18 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v22 & 1) != 0))
  {
    v23 = *(*(v18 + 56) + 8 * v21);
  }

  else
  {
    v23 = 0;
  }

  a2(v23);

  static ViewBuilder.buildExpression<A>(_:)(v13, a6, a8);
  v24 = *(v11 + 8);
  v24(v13, a6);
  static ViewBuilder.buildExpression<A>(_:)(v16, a6, a8);
  return (v24)(v16, a6);
}

void View.containerBackgroundSpecifiedPreference<A, B>(key:placement:)()
{
  type metadata accessor for ContainerBackground.CustomSpecifiedPreferenceModifier();

  JUMPOUT(0x18D00A570);
}

uint64_t View.containerBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.containerBackground<A>(_:), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E6981910], v5, &v8);
  v7[7] = v8;
  View._trait<A>(_:_:)();
}

uint64_t closure #1 in View.containerBackground<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = AnyView.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t implicit closure #1 in static ContainerBackground.CustomSpecifiedPreferenceModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E698D3F8];
  if ((a1 & 0x100000000) == 0)
  {
    v1 = a1;
  }

  v6 = v1;
  v8 = type metadata accessor for ContainerBackground.Specified();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ContainerBackgroundKind?(0, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v6, closure #1 in Attribute.init<A>(_:)partial apply, v7, v8, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5;
}

uint64_t ContainerBackground.Specified.childValue.getter(int a1)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    return 0;
  }

  AGGraphGetValue();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContainerBackground.CustomSpecifiedPreferenceModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t ContainerBackground.Specified.value.getter(int a1, uint64_t a2)
{
  v3 = ContainerBackground.Specified.childValue.getter(a1);
  if (v3)
  {
    v4 = v3;
    v5 = ContainerBackgroundKeys.AnyCustomKey.init<A>(_:)(a2, a2);
    if (*(v4 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v5);
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t protocol witness for Rule.value.getter in conformance ContainerBackground.Specified<A>@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContainerBackground.Specified.value.getter(*v2, *(a1 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ContainerBackground.Specified<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??> and conformance _BackgroundPreferenceModifier<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>, &lazy cache variable for type metadata for ContainerBackgroundKind?, MEMORY[0x1E6980180], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContainerBackgroundKind?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ContainerBackgroundKind?(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyView?? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AnyView?? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AnyView?? and conformance <A> A?)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for AnyView??, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type AnyView? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyView?? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundPlacement and conformance ContainerBackgroundPlacement()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundPlacement and conformance ContainerBackgroundPlacement;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundPlacement and conformance ContainerBackgroundPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundPlacement and conformance ContainerBackgroundPlacement);
  }

  return result;
}

void type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??>()
{
  if (!lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ContainerBackgroundKind?>(255, &lazy cache variable for type metadata for AnyView??, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type AnyView?? and conformance <A> A?();
    v0 = type metadata accessor for _BackgroundPreferenceModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.CustomKey, AnyView??>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ContainerBackgroundTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ContainerBackgroundTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ContainerBackgroundTraitKey> and conformance _TraitWritingModifier<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for _TraitWritingModifier<ContainerBackgroundTraitKey>, &type metadata for ContainerBackgroundTraitKey, &protocol witness table for ContainerBackgroundTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ContainerBackgroundTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerBackgroundPlacement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 8))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ContainerBackgroundPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

uint64_t assignWithTake for ContainerBackgroundValue(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of ContainerBackgroundValue.Content(v4, v5);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t initializeWithCopy for ContainerBackgroundModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ContainerBackgroundModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for ContainerBackgroundModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContainerBackgroundModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ContainerBackgroundModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundPlacement.Storage and conformance ContainerBackgroundPlacement.Storage()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundPlacement.Storage and conformance ContainerBackgroundPlacement.Storage;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundPlacement.Storage and conformance ContainerBackgroundPlacement.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundPlacement.Storage and conformance ContainerBackgroundPlacement.Storage);
  }

  return result;
}

uint64_t outlined destroy of (ContainerBackgroundPlacementKey & HostPreferenceKey)?(uint64_t a1)
{
  type metadata accessor for (ContainerBackgroundPlacementKey & HostPreferenceKey)?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (ContainerBackgroundPlacementKey & HostPreferenceKey)?()
{
  if (!lazy cache variable for type metadata for (ContainerBackgroundPlacementKey & HostPreferenceKey)?)
  {
    type metadata accessor for ContainerBackgroundPlacementKey & HostPreferenceKey();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (ContainerBackgroundPlacementKey & HostPreferenceKey)?);
    }
  }
}

unint64_t type metadata accessor for ContainerBackgroundPlacementKey & HostPreferenceKey()
{
  result = lazy cache variable for type metadata for ContainerBackgroundPlacementKey & HostPreferenceKey;
  if (!lazy cache variable for type metadata for ContainerBackgroundPlacementKey & HostPreferenceKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContainerBackgroundPlacementKey & HostPreferenceKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundModifier.CustomPreferenceValue and conformance ContainerBackgroundModifier.CustomPreferenceValue);
  }

  return result;
}

BOOL specialized static ContainerBackgroundPlacement.Storage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2 == *a1;
  if (*a2 >= 0)
  {
    v3 = 0;
  }

  if (v2 >= 0)
  {
    return v2 == *a2;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ImplicitContainerShape and conformance ImplicitContainerShape()
{
  result = lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape;
  if (!lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImplicitContainerShape and conformance ImplicitContainerShape);
  }

  return result;
}

uint64_t *assignWithCopy for ContainerBackgroundValue.Content(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of ContainerBackgroundValue.Content(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of ContainerBackgroundValue.Content(v5, v6);
  return a1;
}

uint64_t *assignWithTake for ContainerBackgroundValue.Content(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of ContainerBackgroundValue.Content(v3, v4);
  return a1;
}

void type metadata accessor for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for _BackgroundModifier<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697F930]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<AnyView, _BackgroundModifier<AnyView>>();
    lazy protocol witness table accessor for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<AnyView>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for _BackgroundModifier<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697F930]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundModifier<AnyView> and conformance _BackgroundModifier<A>);
  }

  return result;
}

uint64_t _VariadicView_Children.tagIndex<A>(_:)()
{
  type metadata accessor for Binding();
  return Binding<A>.projectingTagIndex(viewList:)();
}

{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  ViewList.applySublists(from:style:list:to:)();
  return 0;
}

uint64_t closure #1 in _VariadicView_Children.tagIndex<A>(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v57 = a4;
  v49 = a3;
  v59 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v49 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v56 = a1;
  v60 = *(a1 + 80);

  v51 = a6;
  ViewTraitCollection.tag<A>(for:)();

  (*(v9 + 16))(v20, v59, a5);
  (*(v9 + 56))(v20, 0, 1, a5);
  v53 = TupleTypeMetadata2;
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = *(v15 + 16);
  v25(v14, v23, v11);
  v59 = v11;
  v25(&v14[v24], v20, v11);
  v54 = v9;
  v26 = *(v9 + 48);
  v58 = v14;
  if (v26(v14, 1, a5) == 1)
  {
    v27 = *(v15 + 8);
    v28 = v20;
    v29 = v59;
    v27(v28, v59);
    v27(v23, v29);
    v30 = v58;
    v31 = v26(&v58[v24], 1, a5) == 1;
    v32 = v30;
    if (!v31)
    {
      goto LABEL_7;
    }

    v27(v30, v59);
    v33 = v56;
  }

  else
  {
    v34 = v58;
    v25(v55, v58, v59);
    if (v26(&v34[v24], 1, a5) == 1)
    {
      v35 = *(v15 + 8);
      v36 = v20;
      v37 = v59;
      v35(v36, v59);
      v35(v23, v37);
      (*(v54 + 8))(v55, a5);
      v32 = v58;
LABEL_7:
      (*(v52 + 8))(v32, v53);
      v33 = v56;
      goto LABEL_10;
    }

    v38 = v54;
    v39 = v58;
    v40 = v50;
    (*(v54 + 32))(v50, &v58[v24], a5);
    v41 = v55;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v38 + 8);
    v43(v40, a5);
    v44 = *(v15 + 8);
    v45 = v20;
    v46 = v59;
    v44(v45, v59);
    v44(v23, v46);
    v43(v41, a5);
    v44(v39, v46);
    v33 = v56;
    if ((v42 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v60 = *(v33 + 80);
  if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
  {
    result = 0;
    v48 = v49;
    *v49 = *v57;
    *(v48 + 8) = 0;
    return result;
  }

LABEL_10:
  *v57 += *(v33 + 8);
  return 1;
}

uint64_t _VariadicView_Children.Element.tag<A>(for:)()
{

  ViewTraitCollection.tag<A>(for:)();
}

uint64_t GroupBox.init(label:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v14);
  v17 = *(a3 - 8);
  (*(v17 + 16))(v12, a1, a3);
  (*(v17 + 56))(v12, 0, 1, a3);
  GroupBox.init(content:label:)(v16, v12, a3, a4, a5);
  return (*(v17 + 8))(a1, a3);
}

uint64_t GroupBox<>.init(content:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for GroupBox();
  *&a2[*(v4 + 56)] = 0;
  *a2 = 1;
  return a1(v4, v5, v6, v7);
}

uint64_t GroupBox.init(content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  v9 = type metadata accessor for GroupBox();
  *(a5 + *(v9 + 56)) = 0;
  (*(*(a4 - 8) + 32))(a5 + *(v9 + 52), a1, a4);
  v10 = type metadata accessor for Optional();
  return (*(*(v10 - 8) + 40))(a5, a2, v10);
}

uint64_t GroupBox.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  *&v34 = a1[2];
  type metadata accessor for ModifiedContent();
  type metadata accessor for RelationshipModifier<String>();
  v3 = type metadata accessor for ModifiedContent();
  v31 = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label();
  *&v32 = a1[4];
  v57 = v32;
  v58 = &protocol witness table for AccessibilityAttachmentModifier;
  v4 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v56 = &protocol witness table for RelationshipModifier<A>;
  v28[1] = v4;
  v30 = v3;
  v29 = swift_getWitnessTable();
  v51 = &type metadata for GroupBoxStyleConfiguration.Label;
  v52 = v3;
  v53 = v31;
  v54 = v29;
  type metadata accessor for OptionalSourceWriter();
  v5 = type metadata accessor for ModifiedContent();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  v8 = a1[3];
  v9 = type metadata accessor for ModifiedContent();
  v10 = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content();
  v28[2] = v10;
  v49 = a1[5];
  v11 = v49;
  v50 = &protocol witness table for RelationshipModifier<A>;
  v12 = swift_getWitnessTable();
  v51 = &type metadata for GroupBoxStyleConfiguration.Content;
  v52 = v9;
  v53 = v10;
  v54 = v12;
  type metadata accessor for StaticSourceWriter();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v28 - v18;
  *&v20 = v34;
  *(&v20 + 1) = v8;
  v34 = v20;
  *&v21 = v32;
  *(&v21 + 1) = v11;
  v32 = v21;
  v42 = v20;
  v43 = v21;
  v22 = v35;
  v44 = v35;
  v23 = lazy protocol witness table accessor for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle();
  View.optionalViewAlias<A, B>(_:_:)(&type metadata for GroupBoxStyleConfiguration.Label, partial apply for closure #1 in GroupBox.body.getter, v41, &type metadata for ResolvedGroupBoxStyle, &type metadata for GroupBoxStyleConfiguration.Label, v30, v23, v31, v29);
  v39 = v32;
  v38 = v34;
  v40 = v22;
  v47 = v23;
  v48 = &protocol witness table for OptionalSourceWriter<A, B>;
  v24 = swift_getWitnessTable();
  View.viewAlias<A, B>(_:_:)(&type metadata for GroupBoxStyleConfiguration.Content, partial apply for closure #2 in GroupBox.body.getter, v37, v5, &type metadata for GroupBoxStyleConfiguration.Content, v9, v24);
  (*(v33 + 8))(v7, v5);
  v45 = v24;
  v46 = &protocol witness table for StaticSourceWriter<A, B>;
  v25 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v13, v25);
  v26 = *(v14 + 8);
  v26(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, v25);
  return (v26)(v19, v13);
}

uint64_t closure #1 in GroupBox.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - v15;
  (*(v13 + 16))(v26 - v15, a1, v12, v14);
  v17 = *(a2 - 8);
  if ((*(v17 + 48))(v16, 1, a2) == 1)
  {
    (*(v13 + 8))(v16, v12);
    type metadata accessor for ModifiedContent();
    type metadata accessor for RelationshipModifier<String>();
    v18 = type metadata accessor for ModifiedContent();
    v19 = 1;
  }

  else
  {
    v27[0] = a2;
    v27[1] = a3;
    v27[2] = a4;
    v27[3] = a5;
    type metadata accessor for GroupBox();
    v20 = Namespace.wrappedValue.getter();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v20, a2, a4, v21);
    v27[0] = v22;
    v23 = type metadata accessor for AccessibilityGroupBoxLabelModifier();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for ModifiedContent();
    type metadata accessor for RelationshipModifier<String>();
    type metadata accessor for ModifiedContent();
    v26[2] = a4;
    v26[3] = &protocol witness table for AccessibilityAttachmentModifier;
    v26[0] = swift_getWitnessTable();
    v26[1] = &protocol witness table for RelationshipModifier<A>;
    swift_getWitnessTable();
    View.accessibilityConfiguration<A>(_:)(v27, a2, v23, a4, WitnessTable);
    (*(v17 + 8))(v16, a2);
    v18 = swift_checkMetadataState();
    v19 = 0;
  }

  return (*(*(v18 - 8) + 56))(a6, v19, 1);
}

unint64_t lazy protocol witness table accessor for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle);
  }

  return result;
}

uint64_t closure #2 in GroupBox.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  type metadata accessor for RelationshipModifier<String>();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  v25[0] = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v24[0] = *(type metadata accessor for GroupBox() + 52);
  v16 = Namespace.wrappedValue.getter();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v16, a2, a4, v17);
  v25[0] = v18;
  v19 = type metadata accessor for AccessibilityGroupBoxContentModifier();
  WitnessTable = swift_getWitnessTable();
  v24[2] = a4;
  v24[3] = &protocol witness table for RelationshipModifier<A>;
  v21 = swift_getWitnessTable();
  View.accessibilityConfiguration<A>(_:)(v25, a2, v19, a4, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, v21);
  v22 = *(v10 + 8);
  v22(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, v21);
  return (v22)(v15, v9);
}

uint64_t GroupBox<>.init(_:content:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a2@<X8>)
{
  *(a2 + *(type metadata accessor for GroupBox() + 56)) = 0;
  v4 = Text.init(_:tableName:bundle:comment:)();
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v5 & 1;
  a2[3] = v7;
  return a1(v4, v6, v5, v7, v8, v9);
}

uint64_t GroupBox<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = MEMORY[0x1E6981148];
  v17[1] = v11;
  v17[2] = MEMORY[0x1E6981138];
  v17[3] = v12;
  *(a4 + *(type metadata accessor for GroupBox() + 56)) = 0;
  (*(v8 + 16))(v10, a1, a3);
  *a4 = Text.init<A>(_:)();
  a4[1] = v14;
  a4[2] = v13 & 1;
  a4[3] = v15;
  a2();
  return (*(v8 + 8))(a1, a3);
}

uint64_t type metadata completion function for GroupBox()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for GroupBox(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = *(v9 + 64) + 7;
  v13 = v10 | *(v7 + 80) & 0xF8;
  if (v13 > 7 || ((*(v7 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v12 + ((v8 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = ~v10;
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    v18 = (a2 + v11) & v17;
    (*(v9 + 16))((a1 + v11) & v17, v18, v5);
    *((v12 + ((a1 + v11) & v17)) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v18) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for GroupBox(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 24);
  v7 = *(*(v6 - 8) + 8);
  v8 = *(*(v6 - 8) + 80);
  v9 = *(v5 + 64) + a1;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  return v7((v9 + v8) & ~v8);
}

void *initializeWithCopy for GroupBox(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 16))(v18, v19);
  *((*(v15 + 48) + 7 + v18) & 0xFFFFFFFFFFFFFFF8) = *((*(v15 + 48) + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithCopy for GroupBox(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 24) - 8);
  v16 = v15 + 24;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 24))(v19, v20);
  *((*(v16 + 40) + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = *((*(v16 + 40) + 7 + v20) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for GroupBox(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 24) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 32))(v18, v19);
  *((*(v15 + 32) + 7 + v18) & 0xFFFFFFFFFFFFFFF8) = *((*(v15 + 32) + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for GroupBox(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 24) - 8);
  v16 = v15 + 40;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 40))(v19, v20);
  *((*(v16 + 24) + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = *((*(v16 + 24) + 7 + v20) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for GroupBox(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v6)
  {
    v14 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  if (v12 < a2)
  {
    v16 = ((*(*(v8 - 8) + 64) + (v15 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v12;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_26:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v28 = (*(v5 + 48))(a1, v6);
    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v25 = *(v10 + 48);
    v26 = (a1 + v15) & ~v13;

    return v25(v26, v11, v8);
  }
}

void storeEnumTagSinglePayload for GroupBox(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v10 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!v7)
  {
    ++v11;
  }

  v15 = ((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    v16 = a3 - v14;
    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a2 - v14;
    }

    else
    {
      v19 = 1;
    }

    if (((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v20 = ~v14 + a2;
      v21 = a1;
      bzero(a1, ((v13 + ((v11 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v15) = 0;
  }

  else if (v5)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v8 >= v10)
  {
    if (v8 >= a2)
    {
      v28 = *(v6 + 56);

      v28();
    }

    else
    {
      if (v11 <= 3)
      {
        v24 = ~(-1 << (8 * v11));
      }

      else
      {
        v24 = -1;
      }

      if (v11)
      {
        v25 = v24 & (~v8 + a2);
        if (v11 <= 3)
        {
          v26 = v11;
        }

        else
        {
          v26 = 4;
        }

        v27 = a1;
        bzero(a1, v11);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v27 = v25;
            *(v27 + 2) = BYTE2(v25);
          }

          else
          {
            *v27 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v27 = v25;
        }

        else
        {
          *v27 = v25;
        }
      }
    }
  }

  else
  {
    v22 = *(v9 + 56);
    v23 = (a1 + v11 + v12) & ~v12;

    v22(v23);
  }
}

uint64_t Gesture<>.values(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v14, v11);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  (*(v10 + 32))(a5, v13, a3);
  v16 = (a5 + *(type metadata accessor for TaskGesture() + 36));
  *v16 = &async function pointer to partial apply for closure #1 in Gesture<>.values(_:);
  v16[1] = v15;
}

uint64_t closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v7 = type metadata accessor for TaskPhase();
  v5[8] = v7;
  v8 = type metadata accessor for AsyncStream();
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_getWitnessTable();
  type metadata accessor for AsyncMapSequence();
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for GestureValues();
  v5[14] = v9;
  v5[15] = *(v9 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = *(AssociatedTypeWitness - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  type metadata accessor for Optional();
  v5[22] = swift_task_alloc();
  v10 = type metadata accessor for AsyncStream.Iterator();
  v5[23] = v10;
  v5[24] = *(v10 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v12;
  v5[29] = v11;

  return MEMORY[0x1EEE6DFA0](closure #1 in Gesture<>.values(_:), v12, v11);
}

uint64_t closure #1 in Gesture<>.values(_:)()
{
  AsyncStream.makeAsyncIterator()();
  v1 = static MainActor.shared.getter();
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = closure #1 in Gesture<>.values(_:);
  v3 = v0[22];
  v4 = v0[23];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v3, v1, v5, v4);
}

{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](closure #1 in Gesture<>.values(_:), v3, v2);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 168), v1, v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 168);
    if (EnumCaseMultiPayload)
    {
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      v10 = *(v0 + 136);
      v11 = *(v0 + 104);
      v12 = *(v0 + 80);
      v13 = *(v0 + 88);
      v14 = *(v0 + 72);
      v15 = *(v0 + 56);
      v16 = *(v0 + 16);
      v26 = *(v0 + 24);
      v27 = *(v0 + 128);
      v25 = *(v0 + 40);
      if (EnumCaseMultiPayload == 1)
      {
        (*(v10 + 32))(*(v0 + 152), v7, *(v0 + 56));
        (*(v10 + 16))(v9, v8, v15);
        (*(v12 + 16))(v13, v16, v14);
        *(swift_allocObject() + 16) = v25;
        AsyncSequence.map<A>(_:)();

        GestureValues.init(firstValue:hasEnded:base:)(v9, 0, v11, v15, v27);
        v28 = (v26 + *v26);
        v17 = swift_task_alloc();
        *(v0 + 256) = v17;
        *v17 = v0;
        v18 = closure #1 in Gesture<>.values(_:);
      }

      else
      {
        (*(v10 + 32))(*(v0 + 152), v7, *(v0 + 56));
        (*(v10 + 16))(v9, v8, v15);
        (*(v12 + 16))(v13, v16, v14);
        *(swift_allocObject() + 16) = v25;
        AsyncSequence.map<A>(_:)();

        GestureValues.init(firstValue:hasEnded:base:)(v9, 1, v11, v15, v27);
        v28 = (v26 + *v26);
        v17 = swift_task_alloc();
        *(v0 + 264) = v17;
        *v17 = v0;
        v18 = closure #1 in Gesture<>.values(_:);
      }

      v17[1] = v18;
      v24 = *(v0 + 128);

      return v28(v24);
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 64));
      v19 = static MainActor.shared.getter();
      *(v0 + 240) = v19;
      v20 = swift_task_alloc();
      *(v0 + 248) = v20;
      *v20 = v0;
      v20[1] = closure #1 in Gesture<>.values(_:);
      v21 = *(v0 + 176);
      v22 = *(v0 + 184);
      v23 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D9C8](v21, v19, v23, v22);
    }
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](closure #1 in Gesture<>.values(_:), v6, v5);
}

{
  (*(v0[17] + 8))(v0[19], v0[7]);
  v1 = static MainActor.shared.getter();
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = closure #1 in Gesture<>.values(_:);
  v3 = v0[22];
  v4 = v0[23];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v3, v1, v5, v4);
}

{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](closure #1 in Gesture<>.values(_:), v6, v5);
}

uint64_t partial apply for closure #1 in Gesture<>.values(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in Gesture<>.values(_:)(a1, v7, v6, v4, v5);
}

uint64_t closure #1 in closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Gesture<>.values(_:), 0, 0);
}

uint64_t TaskPhase.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
}

uint64_t GestureValues.init(firstValue:hasEnded:base:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for GestureValues();
  *(a5 + *(v8 + 28)) = a2;
  v9 = *(v8 + 32);
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream();
  swift_getWitnessTable();
  v10 = type metadata accessor for AsyncMapSequence();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a3, v10);
}

uint64_t closure #2 in closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in Gesture<>.values(_:), 0, 0);
}

uint64_t closure #2 in closure #1 in Gesture<>.values(_:)()
{
  v1 = *(v0 + 16);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for TaskPhase();
  TaskPhase.value.getter(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t GestureValues.makeAsyncIterator()(uint64_t a1)
{
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream();
  swift_getWitnessTable();
  v3 = type metadata accessor for AsyncMapSequence();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v8 - v6, v1 + *(a1 + 32), v3, v4);
  return AsyncMapSequence.makeAsyncIterator()();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GestureValues<A>(uint64_t a1)
{
  GestureValues.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t static TaskGesture._makeGesture(gesture:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[5];
  v40 = a2[4];
  v41 = v9;
  v42 = a2[6];
  v10 = a2[1];
  v36 = *a2;
  v37 = v10;
  v11 = a2[3];
  v38 = a2[2];
  v39 = v11;
  v12 = *(a2 + 28);
  v13 = *(a2 + 116);
  v25 = a3;
  v26 = a4;
  v20 = v8;
  type metadata accessor for TaskGesture();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v31 = v40;
  v32 = v41;
  v33 = v42;
  v27 = v36;
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v34 = v12;
  v35 = v13;
  (*(a4 + 32))(v19, &v27, a3, a4);
  LODWORD(v27) = v8;
  v14 = _GraphValue.value.getter();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _GestureOutputs();
  *&v27 = __PAIR64__(_GestureOutputs.phase.getter(), v14);
  *(&v27 + 1) = v12;
  *&v28 = 0;
  v22 = type metadata accessor for GesturePhase();
  v15 = type metadata accessor for TaskGesturePhase();
  v23 = v15;
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v21, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  *a5 = v20;
  _GestureOutputs.phase.getter();
  return AGGraphSetFlags();
}

uint64_t closure #1 in static TaskGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for TaskGesture();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static TaskPhase<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v53 = a1;
  v54 = a2;
  v51 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - v8;
  v52 = v9;
  v10 = type metadata accessor for TaskPhase();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v45 - v23;
  v26 = *(v25 + 48);
  v50 = v11;
  v27 = *(v11 + 16);
  v27(&v45 - v23, v53, v10, v22);
  (v27)(&v24[v26], v54, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v27)(v16, v24, v10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v51;
        v29 = v52;
        v31 = v46;
        (*(v51 + 32))(v46, &v24[v26], v52);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v30 + 8);
        v33(v31, v29);
        v33(v16, v29);
LABEL_13:
        v21 = v50;
        goto LABEL_14;
      }

      v13 = v16;
    }

    else
    {
      (v27)(v13, v24, v10);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v51;
        v35 = v52;
        v37 = v47;
        (*(v51 + 32))(v47, &v24[v26], v52);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *(v36 + 8);
        v38(v37, v35);
        v38(v13, v35);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v34 = v48;
    (v27)(v19, v24, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = v51;
      v40 = v34;
      v41 = v34;
      v42 = v52;
      (*(v51 + 32))(v41, &v24[v26], v52);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v39 + 8);
      v43(v40, v42);
      v43(v19, v42);
      goto LABEL_13;
    }

    v13 = v19;
  }

  (*(v51 + 8))(v13, v52);
  v32 = 0;
  v10 = TupleTypeMetadata2;
LABEL_14:
  (*(v21 + 8))(v24, v10);
  return v32 & 1;
}

uint64_t TaskPhase<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, v2, v8);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  (*(v4 + 32))(v6, v10, v3);
  MEMORY[0x18D00F6F0](v2);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int TaskPhase<>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  TaskPhase<>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t TaskGesturePhase.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TaskGesture();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> TaskPhase<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  TaskPhase<>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for GestureValues()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TaskPhase();
    type metadata accessor for AsyncStream();
    swift_getWitnessTable();
    result = type metadata accessor for AsyncMapSequence();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for GestureValues(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1, a2, *(a3 + 16));
    v7 = *(a3 + 32);
    *(v3 + *(a3 + 28)) = *(a2 + *(a3 + 28));
    type metadata accessor for TaskPhase();
    type metadata accessor for AsyncStream();
    swift_getWitnessTable();
    v8 = type metadata accessor for AsyncMapSequence();
    (*(*(v8 - 8) + 16))(v3 + v7, a2 + v7, v8);
  }

  return v3;
}

uint64_t destroy for GestureValues(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))(a1, *(a2 + 16));
  v4 = *(a2 + 32);
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream();
  swift_getWitnessTable();
  v5 = type metadata accessor for AsyncMapSequence();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for GestureValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 16))(a1, a2, *(a3 + 16));
  v6 = *(a3 + 32);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream();
  swift_getWitnessTable();
  v7 = type metadata accessor for AsyncMapSequence();
  (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithCopy for GestureValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 24))(a1, a2, *(a3 + 16));
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  v6 = *(a3 + 32);
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream();
  swift_getWitnessTable();
  v7 = type metadata accessor for AsyncMapSequence();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t initializeWithTake for GestureValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 32))(a1, a2, *(a3 + 16));
  v6 = *(a3 + 32);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream();
  swift_getWitnessTable();
  v7 = type metadata accessor for AsyncMapSequence();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithTake for GestureValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 40))(a1, a2, *(a3 + 16));
  v6 = *(a3 + 32);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream();
  swift_getWitnessTable();
  v7 = type metadata accessor for AsyncMapSequence();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t type metadata completion function for TaskPhase()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TaskPhase(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v10 = *(a2 + v5);
  if (v10 >= 3)
  {
    if (v5 <= 3)
    {
      v11 = *(v4 + 64);
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

      goto LABEL_21;
    }

    if (v11)
    {
      v12 = *a2;
LABEL_21:
      v13 = (v12 | ((v10 - 3) << (8 * v5))) + 3;
      v14 = v12 + 3;
      if (v5 >= 4)
      {
        v10 = v14;
      }

      else
      {
        v10 = v13;
      }
    }
  }

  (*(v4 + 16))(a1);
  if (v10 == 2)
  {
    *(v3 + v5) = 2;
  }

  else
  {
    *(v3 + v5) = v10 == 1;
  }

  return v3;
}

uint64_t initializeWithCopy for TaskPhase(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  v5 = a2[v4];
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | ((v5 - 3) << (8 * v4))) + 3;
    v9 = v7 + 3;
    if (v4 >= 4)
    {
      LOBYTE(v5) = v9;
    }

    else
    {
      LOBYTE(v5) = v8;
    }
  }

LABEL_16:
  (*(*(*(a3 + 16) - 8) + 16))(a1);
  *(a1 + v4) = v5;
  return a1;
}

unsigned __int16 *assignWithCopy for TaskPhase(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = v6;
    v8 = *(v6 + 64);
    (*(v6 + 8))(a1, v5);
    v9 = *(a2 + v8);
    if (v9 >= 3)
    {
      if (v8 <= 3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 4;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = *a2;
        }

        else if (v10 == 3)
        {
          v11 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v11 = *a2;
        }

        goto LABEL_14;
      }

      if (v10)
      {
        v11 = *a2;
LABEL_14:
        v12 = (v11 | ((v9 - 3) << (8 * v8))) + 3;
        v13 = v11 + 3;
        if (v8 >= 4)
        {
          LOBYTE(v9) = v13;
        }

        else
        {
          LOBYTE(v9) = v12;
        }
      }
    }

    (*(v7 + 16))(a1, a2, v5);
    *(a1 + v8) = v9;
  }

  return a1;
}

uint64_t initializeWithTake for TaskPhase(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  v5 = a2[v4];
  if (v5 >= 3)
  {
    if (v4 <= 3)
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | ((v5 - 3) << (8 * v4))) + 3;
    v9 = v7 + 3;
    if (v4 >= 4)
    {
      LOBYTE(v5) = v9;
    }

    else
    {
      LOBYTE(v5) = v8;
    }
  }

LABEL_16:
  (*(*(*(a3 + 16) - 8) + 32))(a1);
  *(a1 + v4) = v5;
  return a1;
}

unsigned __int16 *assignWithTake for TaskPhase(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    v7 = v6;
    v8 = *(v6 + 64);
    (*(v6 + 8))(a1, v5);
    v9 = *(a2 + v8);
    if (v9 >= 3)
    {
      if (v8 <= 3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 4;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = *a2;
        }

        else if (v10 == 3)
        {
          v11 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v11 = *a2;
        }

        goto LABEL_14;
      }

      if (v10)
      {
        v11 = *a2;
LABEL_14:
        v12 = (v11 | ((v9 - 3) << (8 * v8))) + 3;
        v13 = v11 + 3;
        if (v8 >= 4)
        {
          LOBYTE(v9) = v13;
        }

        else
        {
          LOBYTE(v9) = v12;
        }
      }
    }

    (*(v7 + 32))(a1, a2, v5);
    *(a1 + v8) = v9;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TaskPhase(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void storeEnumTagSinglePayload for TaskPhase(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t getEnumTag for TaskPhase(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    LODWORD(v3) = v6 + 3;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void destructiveInjectEnumTag for TaskPhase(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t type metadata completion function for TaskGesturePhase.Handler()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream.Continuation();
  result = type metadata accessor for Optional();
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

void TaskGesturePhase.Handler.setContinuation(_:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for TaskPhase();
  v4 = *(v3 - 8);
  v22 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = type metadata accessor for AsyncStream.Continuation();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *(v7 - 8);
  (*(v13 + 16))(&v21 - v11, a1, v7, v10);
  (*(v13 + 56))(v12, 0, 1, v7);
  v14 = *(*v1 + 96);
  swift_beginAccess();
  (*(v9 + 40))(v1 + v14, v12, v8);
  swift_endAccess();
  v15 = *(*v1 + 104);
  swift_beginAccess();
  v16 = *(v1 + v15);

  *(v1 + v15) = static Array._allocateUninitialized(_:)();

  if (*(v1 + *(*v1 + 112)))
  {

    AsyncStream.Continuation.finish()();
    return;
  }

  if (MEMORY[0x18D00CDE0](v16, v3))
  {
    v17 = 0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v4 + 16))(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v3);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v20 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v22 != 8)
        {
          __break(1u);
          return;
        }

        v23 = v20;
        (*(v4 + 16))(v6, &v23, v3);
        swift_unknownObjectRelease();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      TaskGesturePhase.Handler.enqueue(phase:)(v6);
      (*(v4 + 8))(v6, v3);
      ++v17;
    }

    while (v19 != MEMORY[0x18D00CDE0](v16, v3));
  }
}

void TaskGesturePhase.Handler.enqueue(phase:)(uint64_t a1)
{
  v32 = *v1;
  v3 = v32;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for TaskPhase();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v26 - v5;
  v6 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v26 - v7;
  v8 = type metadata accessor for AsyncStream.Continuation();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = *(v3 + 112);
  if ((v1[v17] & 1) == 0)
  {
    v27 = a1;
    v18 = *(v32 + 96);
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v18], v9);
    v19 = (*(v13 + 48))(v12, 1, v8);
    v20 = (v31 + 16);
    if (v19 == 1)
    {
      (*(v10 + 8))(v12, v9);
      (*v20)(v33, v27, v4);
      swift_beginAccess();
      type metadata accessor for Array();
      Array.append(_:)();
      swift_endAccess();
    }

    else
    {
      (*(v13 + 32))(v16, v12, v8);
      (*v20)(v33, v27, v4);
      v21 = v28;
      AsyncStream.Continuation.yield(_:)();
      (*(v13 + 8))(v16, v8);
      v23 = v29;
      v22 = v30;
      v24 = (*(v29 + 88))(v21, v30);
      v25 = *MEMORY[0x1E69E8620];
      (*(v23 + 8))(v21, v22);
      if (v24 == v25)
      {
        v1[v17] = 1;
      }
    }
  }
}

void TaskGesturePhase.Handler.invalidate()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v21 = *(*v0 + 80);
  v22 = v2;
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  v3 = type metadata accessor for AsyncStream.Continuation();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = *(v3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *(v1 + 112);
  if ((*(v0 + v15) & 1) == 0)
  {
    *(v0 + v15) = 1;
    v16 = *(*v0 + 96);
    swift_beginAccess();
    (*(v5 + 16))(v7, v0 + v16, v4);
    if ((*(v8 + 48))(v7, 1, v3) == 1)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v17 = *(v8 + 32);
      v17(v14, v7, v3);
      v23 = 17;
      (*(v8 + 16))(v11, v14, v3);
      v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v19 = swift_allocObject();
      v20 = v22;
      *(v19 + 16) = v21;
      *(v19 + 24) = v20;
      v17((v19 + v18), v11, v3);
      static Update.enqueueAction(reason:_:)();

      (*(v8 + 8))(v14, v3);
    }
  }
}

void closure #1 in TaskGesturePhase.Handler.invalidate()()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
}

uint64_t TaskGesturePhase.Handler.deinit()
{
  TaskGesturePhase.Handler.invalidate()();
  v1 = *(*v0 + 96);
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream.Continuation();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TaskGesturePhase.Handler.__deallocating_deinit()
{
  TaskGesturePhase.Handler.deinit();

  return swift_deallocClassInstance();
}

uint64_t TaskGesturePhase.Handler.init()()
{
  v1 = *(*v0 + 96);
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  v2 = type metadata accessor for AsyncStream.Continuation();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = *(*v0 + 104);
  swift_checkMetadataState();
  *(v0 + v3) = Array.init()();
  *(v0 + *(*v0 + 112)) = 0;
  return v0;
}

uint64_t TaskGesturePhase.updateValue()(uint64_t a1)
{
  v125 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v111 = type metadata accessor for TaskGesture();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v107 = &v83[-v5];
  v113 = v4;
  v114 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for TaskPhase();
  v104 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v83[-v8];
  v110 = type metadata accessor for AsyncStream();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v83[-v11];
  v123 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v83[-v13];
  v118 = AssociatedTypeWitness;
  v14 = type metadata accessor for GesturePhase();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v83[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v83[-v20];
  v122 = v7;
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v83[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v83[-v25];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v29 = &v83[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v83[-v31];
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v99 = v22;
  v100 = v21;
  v96 = a1;
  v34 = *(TupleTypeMetadata2 + 48);
  v35 = v1[1];
  v91 = *v1;
  v92 = *(v1 + 1);
  v97 = v1;
  v98 = *(v1 + 2);
  v90 = v35;
  Value = AGGraphGetValue();
  v38 = v37;
  v39 = *(v15 + 16);
  v39(v32, Value, v14);
  v32[v34] = v38 & 1;
  v40 = *(v27 + 16);
  v94 = v27 + 16;
  v93 = v40;
  v40(v29, v32, TupleTypeMetadata2);
  v41 = v29[*(TupleTypeMetadata2 + 48)];
  v42 = *(v15 + 8);
  v95 = v29;
  v43 = v15 + 8;
  v101 = v42;
  v42(v29, v14);
  if (v41 != 1)
  {
    return (*(v27 + 8))(v32, TupleTypeMetadata2);
  }

  v88 = v27;
  v89 = TupleTypeMetadata2;
  v44 = v121;
  v85 = *(v123 + 56);
  v85(v121, 1, 1, v122);
  v45 = v119;
  v39(v119, v32, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v87 = v32;
  if (EnumCaseMultiPayload <= 1)
  {
    v86 = v14;
    v84 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload)
    {
      (*(v99 + 8))(v44, v100);
      v55 = v115;
      v39(v115, v45, v86);
      (*(*(v118 - 8) + 32))(v44, v55);
      v52 = 0;
      v51 = v122;
      v53 = v123;
    }

    else
    {
      v47 = v112;
      v39(v112, v45, v86);
      v48 = v118;
      v49 = *(v118 - 8);
      v50 = (*(v49 + 48))(v47, 1, v118);
      v51 = v122;
      if (v50 == 1)
      {
        v52 = 0;
        v44 = v121;
        v53 = v123;
LABEL_13:
        v14 = v86;
        goto LABEL_14;
      }

      v56 = v121;
      (*(v99 + 8))(v121, v100);
      (*(v49 + 32))(v56, v47, v48);
      v44 = v56;
      v52 = 0;
      v53 = v123;
    }

LABEL_12:
    swift_storeEnumTagMultiPayload();
    v85(v44, 0, 1, v51);
    goto LABEL_13;
  }

  v51 = v122;
  v53 = v123;
  v52 = 1;
  if (EnumCaseMultiPayload == 2)
  {
    v84 = 2;
    (*(v99 + 8))(v44, v100);
    v54 = v115;
    v86 = v14;
    v39(v115, v45, v14);
    (*(*(v118 - 8) + 32))(v44, v54);
    v52 = 1;
    goto LABEL_12;
  }

LABEL_14:
  v122 = v43;
  v101(v45, v14);
  v57 = v99;
  v58 = v120;
  v59 = v100;
  (*(v99 + 16))(v120, v44, v100);
  if ((*(v53 + 48))(v58, 1, v51) == 1)
  {
    (*(v57 + 8))(v58, v59);
    v60 = v97;
    v61 = v98;
  }

  else
  {
    v62 = v117;
    (*(v53 + 32))(v117, v58, v51);
    v60 = v97;
    v61 = v98;
    if (!v98)
    {
      v120 = (v91 | (v90 << 32));
      type metadata accessor for TaskGesturePhase.Handler();
      swift_allocObject();
      v98 = TaskGesturePhase.Handler.init()();
      (*(v102 + 104))(v103, *MEMORY[0x1E69E8650], v104);
      swift_retain_n();
      AsyncStream.init(_:bufferingPolicy:_:)();
      v63 = v107;
      TaskGesturePhase.gesture.getter(v107);
      v64 = v111;
      v65 = &v63[*(v111 + 36)];
      v66 = *(v65 + 1);
      v119 = *v65;
      v67 = *(v109 + 8);

      v67(v63, v64);
      v124 = 17;
      v68 = v108;
      v69 = *(v108 + 16);
      LODWORD(v120) = v52;
      v70 = v106;
      v71 = v110;
      v69(v106, v116, v110);
      v72 = (*(v68 + 80) + 48) & ~*(v68 + 80);
      v73 = swift_allocObject();
      v74 = v113;
      v73[2] = v114;
      v73[3] = v74;
      v73[4] = v119;
      v73[5] = v66;
      v75 = v73 + v72;
      v44 = v121;
      v76 = v70;
      v52 = v120;
      (*(v68 + 32))(v75, v76, v71);

      static Update.enqueueAction(reason:_:)();
      v53 = v123;

      v77 = v71;
      v62 = v117;
      (*(v68 + 8))(v116, v77);
      v60 = v97;
      v61 = v98;
      *(v97 + 2) = v98;
    }

    swift_retain_n();
    TaskGesturePhase.Handler.enqueue(phase:)(v62);

    (*(v53 + 8))(v62, v51);
  }

  v78 = v89;
  v79 = v95;
  if (v52)
  {
    if (v61)
    {
      TaskGesturePhase.Handler.invalidate()();
    }

    *(v60 + 2) = 0;
  }

  v80 = v87;
  v81 = v93(v79, v87, v78);
  MEMORY[0x1EEE9AC00](v81);
  *&v83[-16] = v96;
  *&v83[-8] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v79, partial apply for closure #1 in StatefulRule.value.setter, &v83[-32], v14, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v82);
  (*(v57 + 8))(v44, v59);
  (*(v88 + 8))(v80, v78);
  return v101(v79, v14);
}

uint64_t closure #2 in TaskGesturePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  v9 = type metadata accessor for AsyncStream();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a3, v9);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  *(v18 + 6) = v21;
  *(v18 + 7) = a2;
  (*(v10 + 32))(&v18[v17], v12, v9);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #2 in TaskGesturePhase.updateValue(), v18);
}

uint64_t closure #1 in closure #2 in TaskGesturePhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a6);
}

uint64_t TaskGesturePhase.resetPhase()()
{
  if (*(v0 + 16))
  {
    TaskGesturePhase.Handler.invalidate()();
  }

  *(v0 + 16) = 0;
  return result;
}

uint64_t static TaskGesturePhase.willRemove(attribute:)()
{
  AGGraphGetAttributeInfo();
  type metadata accessor for TaskGesturePhase();
  return TaskGesturePhase.resetPhase()();
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance TaskGesturePhase<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void partial apply for closure #1 in TaskGesturePhase.Handler.invalidate()()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  type metadata accessor for AsyncStream.Continuation();

  closure #1 in TaskGesturePhase.Handler.invalidate()();
}

uint64_t partial apply for closure #2 in closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #2 in closure #1 in Gesture<>.values(_:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in Gesture<>.values(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in Gesture<>.values(_:)(a1, a2, v7, v6);
}

uint64_t assignWithCopy for TaskGesturePhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for TaskGesturePhase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t partial apply for closure #2 in TaskGesturePhase.updateValue()()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  v3 = *(type metadata accessor for AsyncStream() - 8);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return closure #2 in TaskGesturePhase.updateValue()(v4, v5, v6, v1, v2);
}

uint64_t partial apply for closure #1 in closure #2 in TaskGesturePhase.updateValue()(uint64_t a1)
{
  v3 = v2;
  swift_getAssociatedTypeWitness();
  type metadata accessor for TaskPhase();
  v5 = *(type metadata accessor for AsyncStream() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in TaskGesturePhase.updateValue()(a1, v7, v8, v9, v10, v1 + v6);
}

void PickerOption.init<A>(_:value:isAlternate:)()
{
  PickerOption.init<>(_:value:isAlternate:)();
}

{
  PickerOption.init<A, B>(_:value:isAlternate:)();
}

void PickerOption.init<>(_:value:isAlternate:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  PickerOption.init<A>(_:value:isAlternate:)();
}

void PickerOption.init<A>(_:_:isAlternate:)()
{
  PickerOption.init<A, B>(_:value:isAlternate:)();
}

{
  PickerOption.init<A>(_:value:isAlternate:)();
}

uint64_t destroy for DocumentIntroductionConfiguration(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  if (*(a1 + 80))
  {
  }

  if (*(a1 + 96))
  {
  }
}

uint64_t initializeWithCopy for DocumentIntroductionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;

    v8 = *(a2 + 64);
    if (v8)
    {
LABEL_3:
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      *(a1 + 64) = v8;

      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 24) = *v6;
    v8 = *(a2 + 64);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v12 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);

  if (v12)
  {
    v13 = *(a2 + 88);
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    *(a1 + 96) = v14;
    *(a1 + 104) = v15;
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
  }

  v16 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v16;

  return a1;
}

uint64_t assignWithCopy for DocumentIntroductionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v6;

    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_8:
  v7 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v7)
    {
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = *(a2 + 56);
      outlined copy of Text.Storage(v8, v9, v10);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      *(a1 + 56) = v10;
      outlined consume of Text.Storage(v11, v12, v13);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v17 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v17;
    }
  }

  else if (v7)
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    outlined copy of Text.Storage(v14, v15, v16);
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v18 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v18;
  }

  *(a1 + 72) = *(a2 + 72);

  v19 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v19)
    {
      v20 = *(a2 + 88);
      *(a1 + 80) = v19;
      *(a1 + 88) = v20;

      goto LABEL_22;
    }
  }

  else if (v19)
  {
    v21 = *(a2 + 88);
    *(a1 + 80) = v19;
    *(a1 + 88) = v21;

    goto LABEL_22;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_22:
  v22 = *(a2 + 96);
  if (!*(a1 + 96))
  {
    if (v22)
    {
      v24 = *(a2 + 104);
      *(a1 + 96) = v22;
      *(a1 + 104) = v24;

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_29;
  }

  if (!v22)
  {

    goto LABEL_28;
  }

  v23 = *(a2 + 104);
  *(a1 + 96) = v22;
  *(a1 + 104) = v23;

LABEL_29:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  return a1;
}

uint64_t assignWithTake for DocumentIntroductionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;

      if (!*(a1 + 64))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_9:
    *(a1 + 24) = *(a2 + 24);
    if (!*(a1 + 64))
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  if (!*(a1 + 64))
  {
    goto LABEL_13;
  }

LABEL_10:
  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v9;
    outlined consume of Text.Storage(v10, v11, v12);
    *(a1 + 64) = v8;

    goto LABEL_14;
  }

  outlined destroy of Text(a1 + 40);
LABEL_13:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_14:
  *(a1 + 72) = *(a2 + 72);

  v13 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (v13)
    {
      v14 = *(a2 + 88);
      *(a1 + 80) = v13;
      *(a1 + 88) = v14;

      goto LABEL_21;
    }
  }

  else if (v13)
  {
    v15 = *(a2 + 88);
    *(a1 + 80) = v13;
    *(a1 + 88) = v15;
    goto LABEL_21;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_21:
  v16 = *(a2 + 96);
  if (!*(a1 + 96))
  {
    if (v16)
    {
      v18 = *(a2 + 104);
      *(a1 + 96) = v16;
      *(a1 + 104) = v18;
      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_28;
  }

  if (!v16)
  {

    goto LABEL_27;
  }

  v17 = *(a2 + 104);
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;

LABEL_28:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

UIContextMenuConfiguration_optional __swiftcall ListCollectionViewCellBase.outermostContextMenuConfiguration()()
{
  if (*(v0 + direct field offset for ListCollectionViewCellBase.host))
  {
    v1 = specialized _UIHostingView.contextMenuBridge.getter();
    v2 = ContextMenuBridge.outermostConfiguration()();

    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t ListCollectionViewCellBase.outermostContextMenuResponder.getter()
{
  if (*(v0 + direct field offset for ListCollectionViewCellBase.host))
  {
    v1 = specialized _UIHostingView.contextMenuBridge.getter();
    v2 = &v1[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host];
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    v7 = v1;
    v8 = v6(ObjectType, v4);
    v9 = swift_unknownObjectRelease();
    if (v8)
    {
      MEMORY[0x1EEE9AC00](v9);
      dispatch thunk of ResponderNode.visit(applying:)();

      return 0;
    }
  }

  return 0;
}

double ListCollectionViewCellBase.swipeActions.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + direct field offset for ListCollectionViewCellBase.host);
  if (v3)
  {
    v4 = v3;
    _UIHostingView.viewGraph.getter();

    LOBYTE(v13[0]) = 17;
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for SwipeActions.Value?);
    static Update.dispatchImmediately<A>(reason:_:)();
  }

  else
  {
    _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(v13);
    v6 = v13[11];
    a1[10] = v13[10];
    a1[11] = v6;
    v7 = v13[13];
    a1[12] = v13[12];
    a1[13] = v7;
    v8 = v13[7];
    a1[6] = v13[6];
    a1[7] = v8;
    v9 = v13[9];
    a1[8] = v13[8];
    a1[9] = v9;
    v10 = v13[3];
    a1[2] = v13[2];
    a1[3] = v10;
    v11 = v13[5];
    a1[4] = v13[4];
    a1[5] = v11;
    result = *v13;
    v12 = v13[1];
    *a1 = v13[0];
    a1[1] = v12;
  }

  return result;
}

double ListCollectionViewCellBase.identifiedViews.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + direct field offset for ListCollectionViewCellBase.host);
  if (v3)
  {
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
    v4 = v3;
    swift_getWitnessTable();
    type metadata accessor for _UIHostingView();
    swift_getWitnessTable();
    ViewRendererHost.preferenceValue<A>(_:)();

    *(a1 + 128) = v14;
    *(a1 + 144) = *v15;
    *(a1 + 153) = *&v15[9];
    *(a1 + 64) = v10;
    *(a1 + 80) = v11;
    *(a1 + 96) = v12;
    *(a1 + 112) = v13;
    *a1 = v6;
    *(a1 + 16) = v7;
    result = *&v9;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
  }

  else
  {
    *(a1 + 160) = 0;
    result = 0.0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 168) = 2;
  }

  return result;
}

uint64_t ListCollectionViewCellBase.responderNode.getter()
{
  v1 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  _UIHostingView.viewGraph.getter();

  v3 = ViewGraph.responderNode.getter();

  return v3;
}

uint64_t ListCollectionViewCellBase.secondaryNavigationBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior;
  swift_beginAccess();
  return outlined init with copy of AnyAccessibilityValue?(v1 + v3, a1, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?);
}

void *ListCollectionViewCellBase.dragBridge.getter()
{
  v1 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x120));
  v3 = v2;
  return v2;
}

void __swiftcall ListCollectionViewCellBase.editMenuInteraction(_:menuFor:suggestedActions:)(UIMenu_optional *__return_ptr retstr, UIEditMenuInteraction _, UIEditMenuConfiguration *menuFor, Swift::OpaquePointer suggestedActions)
{
  v8 = v4 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(_.super.isa, menuFor, suggestedActions._rawValue, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

__C::CGRect __swiftcall ListCollectionViewCellBase.editMenuInteraction(_:targetRectFor:)(UIEditMenuInteraction _, UIEditMenuConfiguration *targetRectFor)
{
  v5 = v2 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(_.super.isa, targetRectFor, ObjectType, v6);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

uint64_t ListCollectionViewCellBase.editMenuInteraction(_:willPresentMenuFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(a1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ListCollectionViewCellBase.editMenuInteraction(_:willDismissMenuFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 32))(a1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ListCollectionViewCellBase.avoidOffScreenRendering.getter()
{
  static Semantics.v6.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    return 0;
  }

  result = ListCollectionViewCellBase.backgroundHost.getter();
  if (result)
  {

    return 1;
  }

  return result;
}

UIContextMenuConfiguration_optional __swiftcall AnyListCollectionViewCell.outermostContextMenuConfiguration()()
{
  v0 = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id AnyListCollectionViewCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_insetsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnyListCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AnyListCollectionViewCell.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t ListCollectionViewCellBase.selectionBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 48);
  v9 = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 32);
  v10 = v2;
  v11 = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 64);
  v3 = v11;
  v4 = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 16);
  v8[0] = *(v1 + direct field offset for ListCollectionViewCellBase.selectionBehavior);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return outlined init with copy of AnyAccessibilityValue?(v8, v7, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?);
}

id @objc ListCollectionViewCellBase.focusEffect.getter(void *a1)
{
  v1 = a1;
  v2 = ListCollectionViewCellBase.focusEffect.getter();

  return v2;
}

id ListCollectionViewCellBase.focusEffect.getter()
{
  v1 = ListCollectionViewCellBase.backgroundHost.getter();
  if (v1)
  {

    if (one-time initialization token for suppressFocusHaloWithBackground != -1)
    {
      swift_once();
    }

    if (suppressFocusHaloWithBackground)
    {
      return 0;
    }
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ListCollectionViewCellBase();
  return objc_msgSendSuper2(&v3, sel_focusEffect);
}

void @objc ListCollectionViewCellBase.focusEffect.setter(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = a1;
  specialized ListCollectionViewCellBase.focusEffect.setter(a3);
}

id ListCollectionViewCellBase.init(coder:)(void *a1)
{
  v1[direct field offset for ListCollectionViewCellBase.wasEditing] = 0;
  v1[direct field offset for ListCollectionViewCellBase.wasSwiped] = 0;
  v3 = &v1[direct field offset for ListCollectionViewCellBase.cellHostWidth];
  *v3 = 0;
  v3[8] = 1;
  v4 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
  v5 = type metadata accessor for UIListContentConfiguration();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[direct field offset for ListCollectionViewCellBase.uniformHeight];
  *v6 = 0;
  v6[8] = 1;
  v1[direct field offset for ListCollectionViewCellBase.shouldHugContent] = 0;
  v7 = &v1[direct field offset for ListCollectionViewCellBase.viewListID];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[direct field offset for ListCollectionViewCellBase.selectionBehavior];
  v8[64] = 0;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *v8 = xmmword_18CD633F0;
  *(v8 + 1) = 0u;
  v9 = &v1[direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior];
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 1;
  v9[5] = 0;
  v9[6] = 0;
  v9[4] = 0;
  *&v1[direct field offset for ListCollectionViewCellBase.popUpButtonSeed] = -1;
  *&v1[direct field offset for ListCollectionViewCellBase.host] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ListCollectionViewCellBase();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t @objc ListCollectionViewCellBase.canBecomeFocused.getter(void *a1)
{
  v1 = a1;
  v2 = ListCollectionViewCellBase.canBecomeFocused.getter();

  return v2 & 1;
}

id ListCollectionViewCellBase.canBecomeFocused.getter()
{
  v1 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
  v2 = NSClassFromString(v1);

  if (v2 && [v0 respondsToSelector_] && (objc_msgSend(v0, sel__accessibilityIsFKARunningForFocusItem) & 1) != 0)
  {
    return 0;
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ListCollectionViewCellBase();
  return objc_msgSendSuper2(&v4, sel_canBecomeFocused);
}

id @objc ListCollectionViewCellBase.editMenuInteraction(_:menuFor:suggestedActions:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = a4;
  v10 = a1;
  ListCollectionViewCellBase.editMenuInteraction(_:menuFor:suggestedActions:)(v11, v8, v9, v7);
  v13 = v12;

  return v13;
}

double @objc ListCollectionViewCellBase.editMenuInteraction(_:targetRectFor:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  *&v9 = ListCollectionViewCellBase.editMenuInteraction(_:targetRectFor:)(v6, v7);

  return v9;
}

void @objc ListCollectionViewCellBase.editMenuInteraction(_:willPresentMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

uint64_t closure #1 in ListCollectionViewCellBase.hostingView<A>(_:didChangePlatformItemList:)(void *a1, char a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = a1 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2 & 1, *(v4 + 168), *(v4 + 176), ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ListCollectionViewCellBase.removeFromSuperview()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ListCollectionViewCellBase();
  objc_msgSendSuper2(&v5, sel_removeFromSuperview);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;

  static Update.enqueueAction(reason:_:)();
}

void closure #1 in ListCollectionViewCellBase.removeFromSuperview()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + direct field offset for ListCollectionViewCellBase.host);
    if (v2)
    {
      v3 = v2;

      v1 = _UIHostingView.base.getter();
      UIHostingViewBase.updateRemovedState(uiView:)(0);
    }
  }
}

void @objc ListCollectionViewCellBase.removeFromSuperview()(void *a1)
{
  v1 = a1;
  ListCollectionViewCellBase.removeFromSuperview()();
}

uint64_t ListCollectionViewCellBase.canUpdateSwipeActionPresentationBinding.getter()
{
  ListCollectionViewCellBase.swipeActions.getter(v15);
  v26 = v15[10];
  v27 = v15[11];
  v28 = v15[12];
  v29 = v15[13];
  v22 = v15[6];
  v23 = v15[7];
  v24 = v15[8];
  v25 = v15[9];
  v18 = v15[2];
  v19 = v15[3];
  v20 = v15[4];
  v21 = v15[5];
  v16 = v15[0];
  v17 = v15[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v16) != 1)
  {
    outlined init with copy of AnyAccessibilityValue?(&v16, v7, &lazy cache variable for type metadata for SwipeActions.Configuration?);
    outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for SwipeActions.Value?);
    if (*(&v17 + 1))
    {
      v0 = v18;
      outlined copy of Binding<Int>?(v18, *(&v18 + 1));
      outlined destroy of AnyAccessibilityValue?(&v16, &lazy cache variable for type metadata for SwipeActions.Configuration?);
      if (*(&v0 + 1))
      {
        v2 = v0 >> 64;
        v1 = v0;
LABEL_9:
        outlined consume of Binding<NavigationSplitViewColumn>?(v1, v2);
        return 1;
      }
    }
  }

  ListCollectionViewCellBase.swipeActions.getter(v6);
  v11 = v6[10];
  v12 = v6[11];
  v13 = v6[12];
  v14 = v6[13];
  v7[6] = v6[6];
  v8 = v6[7];
  v9 = v6[8];
  v10 = v6[9];
  v7[2] = v6[2];
  v7[3] = v6[3];
  v7[4] = v6[4];
  v7[5] = v6[5];
  v7[0] = v6[0];
  v7[1] = v6[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(v7) != 1)
  {
    outlined init with copy of AnyAccessibilityValue?(&v8, &v5, &lazy cache variable for type metadata for SwipeActions.Configuration?);
    outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for SwipeActions.Value?);
    if (*(&v9 + 1))
    {
      v3 = v10;
      outlined copy of Binding<Int>?(v10, *(&v10 + 1));
      outlined destroy of AnyAccessibilityValue?(&v8, &lazy cache variable for type metadata for SwipeActions.Configuration?);
      if (*(&v3 + 1))
      {
        v2 = v3 >> 64;
        v1 = v3;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

uint64_t ListCollectionViewCellBase.updateSwipeActionPresentationBinding()()
{
  v1 = v0;
  ListCollectionViewCellBase.swipeActions.getter(v15);
  v26 = v15[10];
  v27 = v15[11];
  v28 = v15[12];
  v29 = v15[13];
  v22 = v15[6];
  v23 = v15[7];
  v24 = v15[8];
  v25 = v15[9];
  v18 = v15[2];
  v19 = v15[3];
  v20 = v15[4];
  v21 = v15[5];
  v16 = v15[0];
  v17 = v15[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v16) != 1)
  {
    outlined init with copy of AnyAccessibilityValue?(&v16, v7, &lazy cache variable for type metadata for SwipeActions.Configuration?);
    outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for SwipeActions.Value?);
    if (*(&v17 + 1))
    {
      v2 = *(&v18 + 1);
      outlined copy of Binding<Int>?(v18, *(&v18 + 1));
      outlined destroy of AnyAccessibilityValue?(&v16, &lazy cache variable for type metadata for SwipeActions.Configuration?);
      if (v2)
      {
        LOBYTE(v7[0]) = *(v1 + direct field offset for ListCollectionViewCellBase.wasSwiped);
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }
    }
  }

  ListCollectionViewCellBase.swipeActions.getter(v6);
  v11 = v6[10];
  v12 = v6[11];
  v13 = v6[12];
  v14 = v6[13];
  v7[6] = v6[6];
  v8 = v6[7];
  v9 = v6[8];
  v10 = v6[9];
  v7[2] = v6[2];
  v7[3] = v6[3];
  v7[4] = v6[4];
  v7[5] = v6[5];
  v7[0] = v6[0];
  v7[1] = v6[1];
  result = _s7SwiftUI12SwipeActionsO5ValueVSgWOg(v7);
  if (result != 1)
  {
    outlined init with copy of AnyAccessibilityValue?(&v8, v5, &lazy cache variable for type metadata for SwipeActions.Configuration?);
    result = outlined destroy of AnyAccessibilityValue?(v6, &lazy cache variable for type metadata for SwipeActions.Value?);
    if (*(&v9 + 1))
    {
      v4 = *(&v10 + 1);
      outlined copy of Binding<Int>?(v10, *(&v10 + 1));
      result = outlined destroy of AnyAccessibilityValue?(&v8, &lazy cache variable for type metadata for SwipeActions.Configuration?);
      if (v4)
      {
        v5[0] = *(v1 + direct field offset for ListCollectionViewCellBase.wasSwiped);
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }
    }
  }

  return result;
}

Swift::Void __swiftcall ListCollectionViewCellBase.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ListCollectionViewCellBase();
  objc_msgSendSuper2(&v6, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = *&v2[direct field offset for ListCollectionViewCellBase.host];
  if (v5)
  {
    [v5 didUpdateFocusInContext:in.super.isa withAnimationCoordinator:with.super.isa];
  }
}

void @objc ListCollectionViewCellBase.didUpdateFocus(in:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  ListCollectionViewCellBase.didUpdateFocus(in:with:)(v6, v7);
}

uint64_t @objc ListCollectionViewCellBase._disableRasterizeInAnimations()(void *a1)
{
  v1 = a1;
  v2 = ListCollectionViewCellBase._disableRasterizeInAnimations()(&selRef__disableRasterizeInAnimations);

  return v2 & 1;
}

uint64_t ListCollectionViewCellBase._disableRasterizeInAnimations()(SEL *a1)
{
  if (ListCollectionViewCellBase.avoidOffScreenRendering.getter())
  {
    return 1;
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ListCollectionViewCellBase();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t @objc ListCollectionViewCellBase._disableGroupOpacityInAnimations()(void *a1)
{
  v1 = a1;
  v2 = ListCollectionViewCellBase._disableRasterizeInAnimations()(&selRef__disableGroupOpacityInAnimations);

  return v2 & 1;
}

void ListCollectionViewCellBase.__ivar_destroyer()
{
  _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v0 + direct field offset for ListCollectionViewCellBase.lastConfiguration, type metadata accessor for UIListContentConfiguration?);

  outlined consume of PlatformItemList.Item.SelectionBehavior?(*(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 8), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 16), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 24), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 32), *(v0 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 40));
  outlined destroy of AnyAccessibilityValue?(v0 + direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?);
  v1 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
}

id ListCollectionViewCellBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListCollectionViewCellBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc ListCollectionViewCellBase.__ivar_destroyer(uint64_t a1)
{
  _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(a1 + direct field offset for ListCollectionViewCellBase.lastConfiguration, type metadata accessor for UIListContentConfiguration?);

  outlined consume of PlatformItemList.Item.SelectionBehavior?(*(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 8), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 16), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 24), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 32), *(a1 + direct field offset for ListCollectionViewCellBase.selectionBehavior + 40));
  outlined destroy of AnyAccessibilityValue?(a1 + direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior, &lazy cache variable for type metadata for PlatformItemList.Item.SecondaryNavigationBehavior?);
  v2 = *(a1 + direct field offset for ListCollectionViewCellBase.host);
}

uint64_t ListCollectionViewHeaderFooter.hostingView<A>(_:willModifyViewInputs:)()
{
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.setter();
  return PropertyList.subscript.setter();
}

id @objc ListCollectionViewCell.init(coder:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t one-time initialization function for suppressFocusHaloWithBackground()
{
  result = closure #1 in variable initialization expression of suppressFocusHaloWithBackground();
  suppressFocusHaloWithBackground = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of suppressFocusHaloWithBackground()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000011 && 0x800000018CD503D0 == v4)
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

id specialized ListCollectionViewCellBase.focusEffect.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ListCollectionViewCellBase();
  return objc_msgSendSuper2(&v4, sel_setFocusEffect_, a1);
}

void outlined consume of PlatformItemList.Item.SelectionBehavior?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a2);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a4);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a6);
  }
}

uint64_t InsetTableStyle.makeBody(configuration:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Binding<AnySelectionManager>?(a1, a2);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  a2[7] = v4;
  a2[8] = v5;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v8;
  a2[12] = v9;
  a2[13] = v10;
  outlined copy of Binding<[SwiftUIAnySortComparator]>?(v4, v5);

  return outlined copy of Binding<AnyTableColumnCustomization>?(v7, v8);
}

uint64_t protocol witness for TableStyle.makeBody(configuration:) in conformance InsetTableStyle@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Binding<AnySelectionManager>?(a1, a2);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  a2[7] = v4;
  a2[8] = v5;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v8;
  a2[12] = v9;
  a2[13] = v10;
  outlined copy of Binding<[SwiftUIAnySortComparator]>?(v4, v5);

  return outlined copy of Binding<AnyTableColumnCustomization>?(v7, v8);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier>)
  {
    type metadata accessor for CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>, TableShowsFirstColumnOnlyModifier>);
    }
  }
}

void type metadata accessor for CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>()
{
  if (!lazy cache variable for type metadata for CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>)
  {
    v0 = type metadata accessor for CollectionViewTableRoot();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CollectionViewTableRoot<Never, TableStyleConfiguration.RowsAlias, TableStyleConfiguration.ColumnsAlias>);
    }
  }
}

double TableShowsFirstColumnOnlyModifier.Child.value.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = Value[1];
  *&v7 = *Value;
  *(&v7 + 1) = v5;
  if ((a1 & 0x100000000) != 0)
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();
    swift_retain_n();
  }

  else
  {

    EnvironmentValues.horizontalSizeClass.getter();
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();
  }

  PropertyList.subscript.setter();
  if (v5)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  result = *&v7;
  *a2 = v7;
  return result;
}

double protocol witness for Rule.value.getter in conformance TableShowsFirstColumnOnlyModifier.Child@<D0>(_OWORD *a1@<X8>)
{
  v2 = 0x100000000;
  if (!*(v1 + 4))
  {
    v2 = 0;
  }

  return TableShowsFirstColumnOnlyModifier.Child.value.getter(v2 | *v1, a1);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TableShowsFirstColumnOnlyModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t EnvironmentValues.tableShowsFirstColumnOnly.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.tableShowsFirstColumnOnly.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableShowsFirstColumnOnlyKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t specialized static TableShowsFirstColumnOnlyModifier._makeInputs(modifier:inputs:)()
{
  swift_beginAccess();
  _GraphInputs.interfaceIdiom.getter();
  AnyInterfaceIdiom.accepts<A>(_:)();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t __designTimeSelection<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  lazy protocol witness table accessor for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier();

  View._identified<A>(by:)(v8, a4, &type metadata for __DesignTimeSelectionIdentifier, a5);
}

void type metadata accessor for _IdentifiedModifier<__DesignTimeSelectionIdentifier>()
{
  if (!lazy cache variable for type metadata for _IdentifiedModifier<__DesignTimeSelectionIdentifier>)
  {
    lazy protocol witness table accessor for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier();
    v0 = type metadata accessor for _IdentifiedModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _IdentifiedModifier<__DesignTimeSelectionIdentifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EffectiveButtonStyle.Box and conformance EffectiveButtonStyle.Box()
{
  result = lazy protocol witness table cache variable for type EffectiveButtonStyle.Box and conformance EffectiveButtonStyle.Box;
  if (!lazy protocol witness table cache variable for type EffectiveButtonStyle.Box and conformance EffectiveButtonStyle.Box)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffectiveButtonStyle.Box and conformance EffectiveButtonStyle.Box);
  }

  return result;
}

uint64_t specialized static EffectiveButtonStyle._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(uint64_t))
{
  a5();
  v8 = PropertyList.subscript.getter();
  a7(v8);
  return _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
}

unint64_t lazy protocol witness table accessor for type CurrentButtonStyle.Box and conformance CurrentButtonStyle.Box()
{
  result = lazy protocol witness table cache variable for type CurrentButtonStyle.Box and conformance CurrentButtonStyle.Box;
  if (!lazy protocol witness table cache variable for type CurrentButtonStyle.Box and conformance CurrentButtonStyle.Box)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentButtonStyle.Box and conformance CurrentButtonStyle.Box);
  }

  return result;
}

id specialized static KitCoreUINamedColorProvider.withAppearance(cuiColor:environment:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [objc_allocWithZone(type metadata accessor for ViewGraphHostEnvironmentWrapper()) init];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedTraitCollectionKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedTraitCollectionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedTraitCollectionKey>);

  v6 = PropertyList.subscript.getter();
  if (v20)
  {
    v7 = v20;
  }

  else
  {
    v6 = [v3 currentTraitCollection];
    v7 = v6;
  }

  MEMORY[0x1EEE9AC00](v6);
  v8 = v5;
  v9 = v20;
  v10 = UITraitCollection._modifyingTraits(environmentWrapper:mutations:)();

  UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  v11 = UITraitCollection.coreResolvedBaseTraitCollection(environment:wrapper:options:)();

  v12 = v11;
  v13 = UITraitCollection.coreResolvedGlassMaterialTraitCollection(environment:wrapper:)();

  [v3 setCurrentTraitCollection_];

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>);
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  type metadata accessor for UIColor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [ObjCClassFromMetadata performSelector_];
  result = ObjCClassFromMetadata;
  if (v15)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();
    v18 = [v17 CGColor];

    [v3 setCurrentTraitCollection_];
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PickerStyleConfiguration.$selection.getter()
{
  type metadata accessor for Binding();

  return Binding.projectedValue.getter();
}

uint64_t PickerStyleConfiguration.selectedBoundIndices(children:)(uint64_t a1, uint64_t a2)
{
  v12 = *(v2 + *(a2 + 36));
  v10[1] = *(a2 + 16);
  v11 = a1;
  type metadata accessor for Binding();
  v3 = type metadata accessor for Array();
  type metadata accessor for Binding<Int?>();
  v5 = v4;

  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PickerStyleConfiguration.selectedBoundIndices(children:), v10, v3, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  return v8;
}

uint64_t _PickerValue.currentValueLabel.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = v2 + *(a1 + 52);
  result = type metadata accessor for PickerStyleConfiguration();
  *a2 = *(v4 + *(result + 40));
  return result;
}

uint64_t _PickerValue.selection.getter()
{
  type metadata accessor for PickerStyleConfiguration();
  type metadata accessor for Binding();
  return Binding.projectedValue.getter();
}

uint64_t _PickerValue.Init1.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResolvedPicker();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t _PickerValue.Init1.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PickerStyleConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ResolvedPicker();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v2 + *(a1 + 52), v11, v13);
  _PickerValue.Init1.base.getter(v10);
  (*(v5 + 32))(v7, v10, v4);
  return _PickerValue.init(style:configuration:)(v15, v7, v11, v19);
}

uint64_t closure #1 in static PickerStyleWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for PickerStyleWriter();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static ResolvedPicker._makeView(view:inputs:)@<X0>(int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = (a2 + 1);
  v10 = *a2;
  lazy protocol witness table accessor for type PickerStyleInput and conformance PickerStyleInput();
  PropertyList.subscript.getter();
  if (v20)
  {
    v11 = *v9;
    v12 = v9[2];
    v13 = v9[3];
    v22 = v9[1];
    v23 = v12;
    *v24 = v13;
    *&v24[12] = *(v9 + 60);
    v14 = v21;
    v25 = v8;
    v21 = v11;
    v15 = *(v14 + 8);
    v20 = v10;
    return v15(&v25);
  }

  else
  {
    v25 = v8;
    v20 = v10;
    v17 = *v9;
    v18 = v9[2];
    v19 = v9[3];
    v22 = v9[1];
    v23 = v18;
    *v24 = v19;
    *&v24[12] = *(v9 + 60);
    v21 = v17;
    return static ResolvedPicker.makeView<A>(view:style:inputs:)(&v25, 0, &v20, a3, &type metadata for DefaultPickerStyle, a4, &protocol witness table for DefaultPickerStyle, a5);
  }
}

uint64_t static ResolvedPicker.makeView<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a7;
  v35 = a2;
  v33 = a1;
  v36 = a8;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v16;
  v41 = v15;
  v42 = v18;
  v43 = v17;
  v19 = type metadata accessor for _PickerValue.Init1();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  v26 = *v33;
  v27 = *(a3 + 48);
  v38[2] = *(a3 + 32);
  v38[3] = v27;
  v38[4] = *(a3 + 64);
  v39 = *(a3 + 80);
  v28 = *(a3 + 16);
  v38[0] = *a3;
  v38[1] = v28;
  v37 = v26;
  type metadata accessor for ResolvedPicker();
  type metadata accessor for _GraphValue();
  LODWORD(a3) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v35, a5);
  *v25 = a3;
  v40 = a5;
  v41 = a4;
  v29 = v34;
  v42 = v34;
  v43 = a6;
  v30 = type metadata accessor for _PickerValue.Init1();
  (*(v12 + 32))(&v25[*(v30 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v40 = a5;
  v41 = a4;
  v42 = v29;
  v43 = a6;
  type metadata accessor for _PickerValue();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  (*(v29 + 8))(&v40, v38, a4, a6, a5, v29);
  return (*(v20 + 8))(v25, v19);
}

uint64_t static ResolvedPicker.makeViewList<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v31 = a2;
  v32 = a8;
  v33 = a3;
  v11 = a1;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v16;
  v36 = v15;
  v37 = v18;
  v38 = v17;
  v19 = type metadata accessor for _PickerValue.Init1();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v29 - v24;
  v34 = *v11;
  type metadata accessor for ResolvedPicker();
  type metadata accessor for _GraphValue();
  LODWORD(v11) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v31, a5);
  *v25 = v11;
  v35 = a5;
  v36 = a4;
  v26 = v30;
  v37 = v30;
  v38 = a6;
  v27 = type metadata accessor for _PickerValue.Init1();
  (*(v12 + 32))(&v25[*(v27 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v35 = a5;
  v36 = a4;
  v37 = v26;
  v38 = a6;
  type metadata accessor for _PickerValue();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  (*(v26 + 16))(&v35, v33, a4, a6, a5, v26);
  return (*(v20 + 8))(v25, v19);
}

uint64_t *initializeBufferWithCopyOfBuffer for _PickerValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = v8 | 7 | *(v4 + 80);
  if (v10 != 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || (((v8 | 7) + v5) & ~(v8 | 7)) + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v10 + 16) & ~v10));
  }

  else
  {
    v26 = ~v8;
    (*(v4 + 16))(a1);
    v15 = v3 + v5 + 7;
    v16 = a2 + v5 + 7;
    *(v15 & 0xFFFFFFFFFFFFFFF8) = *(v16 & 0xFFFFFFFFFFFFFFF8);
    v17 = (((v15 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = v18 + v8;
    v20 = v17 + v8 + 8;
    v21 = v19 + 8;
    v22 = *(v7 + 16);

    v22(v20 & v26, v21 & v26, v6);
    v23 = ((v15 | 7) + v9) & 0xFFFFFFFFFFFFFFF8;
    v24 = ((v16 | 7) + v9) & 0xFFFFFFFFFFFFFFF8;
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
  }

  return v3;
}

uint64_t initializeWithTake for _PickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = *(v7 + 32);
  v10 = v7 + 32;
  v11 = *(v7 + 80);
  v12 = (v11 | 7) + v8;
  v13 = ((v12 + a1) & ~(v11 | 7));
  v14 = ((v12 + a2) & ~(v11 | 7));
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v9((v15 + v11 + 8) & ~v11, (v16 + v11 + 8) & ~v11);
  v17 = *(v10 + 32) + ((v11 + 16) & ~v11) + 7;
  v18 = (v13 + v17) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v14 + v17) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);
  return a1;
}

uint64_t assignWithTake for _PickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 | 7) + v7;
  v12 = ((v11 + a1) & ~(v10 | 7));
  v13 = ((v11 + a2) & ~(v10 | 7));
  *v12 = *v13;

  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  (*(v9 + 40))((v14 + v10 + 8) & ~v10, (v15 + v10 + 8) & ~v10, v8);
  v16 = *(v9 + 64) + ((v10 + 16) & ~v10) + 7;
  v17 = (v12 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v13 + v16) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;

  *(v17 + 8) = *(v18 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PickerValue(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v9 | 7;
  v13 = (v9 | 7) + *(*(v4 - 8) + 64);
  if (v11 >= a2)
  {
    goto LABEL_31;
  }

  v14 = (v13 & ~v12) + ((*(v7 + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v15 = (a2 - v11 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (!v19)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v18 || (v19 = a1[v14]) == 0)
  {
LABEL_31:
    if (v6 >= v10)
    {
      return (*(v5 + 48))(a1, v6, v4);
    }

    v23 = (((&a1[v13] & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0x80000000) != 0)
    {
      return (*(v7 + 48))((v23 + v9 + 8) & ~v9);
    }

    v24 = *v23;
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v11 + (v22 | v21) + 1;
}