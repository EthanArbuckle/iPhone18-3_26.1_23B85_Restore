uint64_t initializeWithTake for AdaptableTabViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = ((a1 + 25) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 25) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = v5[2];
  v4[1] = v5[1];
  v4[2] = v7;
  *v4 = v6;
  v8 = ((v4 + 55) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v5 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v8 + v12 + 16) & v13);
  v15 = ((v9 + v12 + 16) & v13);
  v16 = ~v12;
  v17 = ((v12 + 16) & ~v12) + *(v11 + 64);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v11 + 84) & 0x80000000) == 0)
  {
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if (v19 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v14 = *v15;
    v20 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v18;
    (*(v11 + 32))((v20 + v12 + 8) & v16, (v18 + v12 + 8) & v16, v10);
    goto LABEL_8;
  }

  if (!(*(v11 + 48))((v18 + v12 + 8) & v16))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v14, v15, v17);
LABEL_8:
  *(v14 + v17) = *(v15 + v17);
  return a1;
}

uint64_t assignWithTake for AdaptableTabViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
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
  outlined consume of Environment<Binding<Visibility>?>.Content(v8, v9, v11, v10);
  v12 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + 25) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v12);
  v14 = *v13;
  v15 = *(v13 + 16);
  *(v12 + 32) = *(v13 + 32);
  *v12 = v14;
  *(v12 + 16) = v15;
  *(v12 + 40) = *(v13 + 40);

  v16 = (v12 + 55) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v13 + 55) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v19 + 80);
  v22 = *(v19 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = ((v21 + 16 + v16) & v22);
  v24 = ((v21 + 16 + v17) & v22);
  v25 = *(v19 + 64);
  v26 = ((v21 + 16) & ~v21) + v25;
  v27 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = ~v21;
  if ((v20 & 0x80000000) != 0)
  {
    v36 = ((v21 + 16) & ~v21) + v25;
    v31 = *(v19 + 48);
    v32 = v31((v27 + v21 + 8) & ~v21, v20, v18);
    v33 = v31;
    v35 = v32;
    v28 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v33((v28 + v21 + 8) & ~v21, v20, v18);
    v26 = v36;
    if (!v35)
    {
LABEL_5:
      if (!v30)
      {
        *v23 = *v24;

        *v27 = *v28;

        (*(v19 + 40))((v27 + v21 + 8) & v37, (v28 + v21 + 8) & v37, v18);
        goto LABEL_12;
      }

      (*(v19 + 8))((v27 + v21 + 8) & v37, v18);
      goto LABEL_9;
    }
  }

  else
  {
    v28 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    v29 = *v28;
    if (*v28 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v29) = -1;
    }

    v30 = v29 + 1;
    if (*v27 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v30)
  {
    *v23 = *v24;
    *v27 = *v28;
    (*(v19 + 32))((v27 + v21 + 8) & v37, (v28 + v21 + 8) & v37, v18);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v23, v24, v26);
LABEL_12:
  *(v23 + v26) = *(v24 + v26);
  return a1;
}

uint64_t getEnumTagSinglePayload for AdaptableTabViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = ~(((-17 - v8) | v8) - *(*(*(a3 + 16) - 8) + 64) + ((-89 - v8) | v10));
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      v18 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0x80000000) != 0)
      {
        v20 = ((((((v18 + 55) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v5 & 0x80000000) != 0)
        {
          v22 = (*(v4 + 48))((v20 + v8 + 8) & ~v8);
        }

        else
        {
          v21 = *v20;
          if (v21 >= 0xFFFFFFFF)
          {
            LODWORD(v21) = -1;
          }

          v22 = v21 + 1;
        }

        if (v22 >= 2)
        {
          return v22 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(v18 + 24);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (((-17 - v8) | v8) - *(*(*(a3 + 16) - 8) + 64) + ((-89 - v8) | v10) != -1)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for AdaptableTabViewRoot(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v6 + 80);
  v12 = ((v11 + 16) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v13 = v12 + ((v11 + 88) & ~(v11 | 7)) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
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
          v16 = v20;
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

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 88) & ~(v11 | 7)) != -1)
      {
        v21 = v17 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_60:
              if (v16 == 2)
              {
                *&a1[v13] = v18;
              }

              else
              {
                *&a1[v13] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v16)
    {
      a1[v13] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v13] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_33;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v22 = (a1 + 25) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((((v22 + 55) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 16) & ~(v11 | 7));
    if (v9 >= a2)
    {
      v27 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v28 = *(v6 + 56);
        v29 = a2 + 1;

        v28((v27 + v11 + 8) & ~v11, v29);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v27 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v27 = a2;
      }
    }

    else
    {
      if (v12 <= 3)
      {
        v24 = ~(-1 << (8 * v12));
      }

      else
      {
        v24 = -1;
      }

      if (v12)
      {
        v25 = v24 & (a2 - v8);
        if (v12 <= 3)
        {
          v26 = v12;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v12);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v22 + 40) = 0;
    *(v22 + 24) = 0u;
    *(v22 + 8) = 0u;
    *v22 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v22 + 24) = a2 - 1;
  }
}

uint64_t instantiation function for generic protocol witness table for AdaptableTabViewRoot<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t AdaptableTabViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined init with copy of _VariadicView_Children(a1, v50);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = *&v50[16];
  *(v10 + 32) = *v50;
  *(v10 + 48) = v11;
  v12 = v52;
  *(v10 + 64) = v51;
  *(v10 + 80) = v12;
  v40 = v8;
  v41 = v9;
  v42 = partial apply for implicit closure #2 in implicit closure #1 in SystemTabView.BodyContent.body.getter;
  v43 = v10;
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  type metadata accessor for Binding<Int?>();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(_s7SwiftUI7BindingVyxGACySiSgGIgno_AdFs5NeverOIegnrzr_SHRzlTRTA_0, v39, MEMORY[0x1E69E73E0], v13, v14, &v46);

  v37 = a1;
  if (v47)
  {
    v15 = v48;
    v36 = v46;
    v16 = v49;
  }

  else
  {
    v17 = MEMORY[0x1E69E69B8];
    _sSiSgMaTm_0(0, &lazy cache variable for type metadata for State<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    outlined init with copy of _VariadicView_Children(a1, v50);
    type metadata accessor for ChildIndexProjection();
    v18 = swift_allocObject();
    v19 = *&v50[16];
    v18[1] = *v50;
    v18[2] = v19;
    v20 = v52;
    v18[3] = v51;
    v18[4] = v20;
    v36 = specialized Binding.projecting<A>(_:)(v18);
    v15 = v21;
    v16 = v22;

    outlined destroy of Binding<AnyHashable>(&v44, &lazy cache variable for type metadata for Binding<AnyHashable>, v17);
  }

  v23 = specialized Environment.wrappedValue.getter(*v4, *(v4 + 8), *(v4 + 16) | (*(v4 + 17) << 8));
  if (v24)
  {
    v26 = v23;
    v27 = v24;
    v28 = v25;
  }

  else
  {
    v29 = *(v4 + 80);
    LOBYTE(v44) = *(v4 + 72);
    v45 = v29;
    _sSiSgMaTm_0(0, &lazy cache variable for type metadata for State<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v27 = *&v50[8];
    v26 = *v50;
    v28 = v50[16];
  }

  outlined init with copy of _VariadicView_Children(v37, a3 + 48);
  KeyPath = swift_getKeyPath();
  v44 = 0;
  BindingOperations.NilCoalescing.init(defaultValue:)();
  v38 = *v50;
  v31 = *v50;
  *v50 = KeyPath;
  *&v50[8] = v31;
  v46 = v15;
  LOBYTE(v47) = v16 & 1;

  swift_getAtKeyPath();
  if (v45)
  {
    v32 = v38;
  }

  else
  {
    v32 = v44;
  }

  type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>();
  lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>> and conformance ComposedProjection<A, B>, type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>);
  v33 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v34 = *(v4 + *(a2 + 48));
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  result = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = result;
  *(a3 + 40) = 0;
  *(a3 + 112) = v36;
  *(a3 + 120) = v33;
  *(a3 + 128) = v32;
  *(a3 + 136) = v26;
  *(a3 + 144) = v27;
  *(a3 + 152) = v28;
  *(a3 + 153) = v34;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance AdaptableTabViewRoot<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t AdaptableTabView.body.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of _VariadicView_Children(v1 + 48, a1);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v19 = *(v1 + 128);
  v5 = *v1;
  v6 = *(v1 + 8);

  specialized Environment.wrappedValue.getter(v5, v6, &v20);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  v17 = *(v1 + 152);
  v18 = v20;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);

  result = specialized Environment.wrappedValue.getter(v9, v10, v11, v12);
  v14 = *(v1 + 153);
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v19;
  *(a1 + 88) = v18;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 112) = v17;
  *(a1 + 120) = result;
  *(a1 + 128) = v15;
  *(a1 + 136) = v16;
  *(a1 + 144) = v14;
  return result;
}

uint64_t static PrimitiveAdaptableTabView._makeView(view:inputs:)()
{
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for _GraphValue<PrimitiveAdaptableTabView>, &type metadata for PrimitiveAdaptableTabView, MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  _GraphValue.subscript.getter();
  lazy protocol witness table accessor for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey();

  PropertyList.subscript.getter();

  type metadata accessor for PrimitiveAdaptableTabView.BodyContent(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type PrimitiveAdaptableTabView.BodyContent and conformance PrimitiveAdaptableTabView.BodyContent, type metadata accessor for PrimitiveAdaptableTabView.BodyContent);
  return static View.makeView(view:inputs:)();
}

double PrimitiveAdaptableTabView.BodyContentRule.value.getter@<D0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of _VariadicView_Children(Value, v30);
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  v3 = AGGraphGetValue();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  v7 = AGGraphGetValue();
  v9 = v7[1];
  v8 = v7[2];
  v10 = *v7;
  *(v33 + 9) = *(v7 + 41);
  v32 = v9;
  v33[0] = v8;
  v31 = v10;
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
  outlined init with copy of TabSidebarConfiguration(&v31, &v29);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v12 = *WeakValue;
  }

  else
  {
    v12 = 0;
  }

  *a1 = swift_getKeyPath();
  type metadata accessor for Binding<TabViewCustomization>(0, &lazy cache variable for type metadata for Environment<Binding<TabViewCustomization>?>.Content, type metadata accessor for Binding<TabViewCustomization>?, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = type metadata accessor for PrimitiveAdaptableTabView.BodyContent(0);
  v18 = a1 + v17[5];
  *v18 = KeyPath;
  v18[8] = 0;
  v19 = a1 + v17[6];
  *v19 = v14;
  v19[8] = 0;
  v20 = a1 + v17[7];
  *v20 = v15;
  v20[8] = 0;
  v21 = a1 + v17[8];
  *v21 = v16;
  v21[8] = 0;
  v22 = (a1 + v17[9]);
  v23 = v30[1];
  *v22 = v30[0];
  v22[1] = v23;
  v24 = v30[3];
  v22[2] = v30[2];
  v22[3] = v24;
  v25 = (a1 + v17[10]);
  *v25 = v4;
  v25[1] = v5;
  v25[2] = v6;
  v26 = (a1 + v17[11]);
  *(v26 + 41) = *(v33 + 9);
  result = *&v32;
  v28 = v33[0];
  v26[1] = v32;
  v26[2] = v28;
  *v26 = v31;
  *(a1 + v17[12]) = v12;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance PrimitiveAdaptableTabView.BodyContentRule@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PrimitiveAdaptableTabView.BodyContent(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t _s7SwiftUI7BindingVyxGACySiSgGIgno_AdFs5NeverOIegnrzr_SHRzlTRTA_0@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6 & 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of EnumeratedSequence<_VariadicView_Children>.Iterator(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(0, a2, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, MEMORY[0x1E697FFD0], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of (offset: Int, element: _VariadicView_Children.Element)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (offset: Int, element: _VariadicView_Children.Element)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: _VariadicView_Children.Element))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: _VariadicView_Children.Element));
    }
  }
}

uint64_t outlined init with copy of EnumeratedSequence<_VariadicView_Children>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(0, &lazy cache variable for type metadata for EnumeratedSequence<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6E48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for UISceneSession()
{
  result = lazy cache variable for type metadata for UISceneSession;
  if (!lazy cache variable for type metadata for UISceneSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISceneSession);
  }

  return result;
}

uint64_t outlined copy of Environment<TabSidebarAccessoryViewConfiguration>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t destroy for AdaptableTabView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  __swift_destroy_boxed_opaque_existential_1(a1 + 48);
}

uint64_t initializeWithCopy for AdaptableTabView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of Environment<TabSidebarAccessoryViewConfiguration>.Content(v6, v7, v8, v9);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 72);
  *(a1 + 72) = v10;
  (**(v10 - 8))(a1 + 48, a2 + 48);
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  v13 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v13;
  v14 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v14;
  v15 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v15;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 153) = *(a2 + 153);
  v16 = v11;

  return a1;
}

uint64_t assignWithCopy for AdaptableTabView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  outlined copy of Environment<TabSidebarAccessoryViewConfiguration>.Content(v8, v9, v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(v12, v13, v14, v15);
  __swift_assign_boxed_opaque_existential_1((a1 + 48), (a2 + 48));
  v16 = *(a2 + 88);
  v17 = *(a1 + 88);
  *(a1 + 88) = v16;
  v18 = v16;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 153) = *(a2 + 153);
  return a1;
}

uint64_t assignWithTake for AdaptableTabView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(v10, v11, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1 + 48);
  v14 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v14;
  v15 = a2[11];
  v16 = *(a1 + 88);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v15;

  *(a1 + 96) = a2[12];

  v17 = a2[14];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = v17;

  *(a1 + 120) = a2[15];

  v18 = a2[17];
  *(a1 + 128) = a2[16];
  *(a1 + 136) = v18;

  *(a1 + 144) = a2[18];

  *(a1 + 152) = *(a2 + 76);
  return a1;
}

uint64_t getEnumTagSinglePayload for AdaptableTabView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 154))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AdaptableTabView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 154) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 154) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for PrimitiveAdaptableTabView(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (*(a1 + 104))
  {
  }

  result = *(a1 + 120);
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PrimitiveAdaptableTabView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = v5;

  if (v9)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v9;
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
  }

  v11 = *(a2 + 120);
  if (v11 == 1)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    v12 = *(a2 + 128);
    v13 = *(a2 + 136);
    *(a1 + 120) = v11;
    *(a1 + 128) = v12;
    *(a1 + 136) = v13;
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithCopy for PrimitiveAdaptableTabView(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v7 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v7)
    {
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);

      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      outlined destroy of Binding<AnyHashable>(a1 + 96, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50]);
      v8 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v8;
    }
  }

  else if (v7)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    v9 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v9;
  }

  v10 = (a1 + 120);
  v12 = (a2 + 120);
  v11 = *(a2 + 120);
  if (*(a1 + 120) == 1)
  {
    if (v11 == 1)
    {
      v13 = *v12;
      *(a1 + 136) = *(a2 + 136);
      *v10 = v13;
    }

    else
    {
      *(a1 + 120) = v11;
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
    }
  }

  else if (v11 == 1)
  {
    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 120);
    v14 = *(a2 + 136);
    *v10 = *v12;
    *(a1 + 136) = v14;
  }

  else
  {
    *(a1 + 120) = v11;

    *(a1 + 128) = *(a2 + 128);

    *(a1 + 136) = *(a2 + 136);
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t outlined destroy of Binding<AnyHashable>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _sSiSgMaTm_0(0, a2, a3, MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t assignWithTake for PrimitiveAdaptableTabView(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 104))
  {
    v8 = *(a2 + 104);
    if (v8)
    {
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = v8;

      *(a1 + 112) = *(a2 + 112);
      goto LABEL_6;
    }

    outlined destroy of Binding<AnyHashable>(a1 + 96, &lazy cache variable for type metadata for Binding<Visibility>, MEMORY[0x1E697DB50]);
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
LABEL_6:
  v9 = *(a2 + 120);
  if (*(a1 + 120) != 1)
  {
    if (v9 != 1)
    {
      *(a1 + 120) = v9;

      *(a1 + 128) = *(a2 + 128);

      *(a1 + 136) = *(a2 + 136);

      goto LABEL_11;
    }

    outlined destroy of TabSidebarAccessoryViewConfiguration(a1 + 120);
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
LABEL_11:
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for PrimitiveAdaptableTabView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t storeEnumTagSinglePayload for PrimitiveAdaptableTabView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.TabViewBottomAccessoryKey and conformance _GraphInputs.TabViewBottomAccessoryKey);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.tabViewCustomization : EnvironmentValues(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
    lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
    lazy protocol witness table accessor for type ItemIndexTabsOnlyIndexProjection and conformance ItemIndexTabsOnlyIndexProjection(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path setter for EnvironmentValues.tabViewCustomization : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Binding<TabViewCustomization>?(a1, v4);
  return EnvironmentValues.tabViewCustomization.setter(v4);
}

unint64_t lazy protocol witness table accessor for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule()
{
  result = lazy protocol witness table cache variable for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule;
  if (!lazy protocol witness table cache variable for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveAdaptableTabView.BodyContentRule and conformance PrimitiveAdaptableTabView.BodyContentRule);
  }

  return result;
}

void _sSiSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of Binding<TabViewCustomization>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TabViewCustomization.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabViewCustomization.Key>);
    }
  }
}

uint64_t LimitedAvailabilityScene.storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LimitedAvailabilityScene.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LimitedAvailabilitySceneStorage();
  (*(v4 + 16))(v6, a1, a2);
  v7 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v6);
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t static LimitedAvailabilityScene._makeScene(scene:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *&v25[12] = *(a2 + 44);
  v5 = a2[1];
  v23 = *a2;
  v24 = v5;
  *v25 = a2[2];

  PreferencesOutputs.init()();

  v10 = *&v25[16];
  v11 = *&v25[24];
  PreferencesInputs.makeIndirectOutputs()();

  v6 = v12;
  v7 = DWORD2(v12);
  v8 = AGSubgraphGetCurrent();
  if (!v8)
  {
    __break(1u);
  }

  *(v20 + 12) = *&v25[12];
  v19[2] = v24;
  v20[0] = *v25;
  v19[1] = v23;
  LODWORD(v19[0]) = v4;
  *(&v19[0] + 1) = v8;
  *&v21 = v12;
  DWORD2(v21) = DWORD2(v12);
  v22 = 0;
  v16 = v20[1];
  v17 = v21;
  v18 = 0;
  v12 = v19[0];
  v13 = v23;
  v14 = v24;
  v15 = *v25;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _SceneInputs(&v23, &v10);
  lazy protocol witness table accessor for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LimitedAvailabilityScene.IndirectOutputs(v19);
  *&v12 = v6;
  DWORD2(v12) = v7;

  LOBYTE(v10) = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

void LimitedAvailabilityScene.IndirectOutputs.updateValue()()
{
  if (!*(v0 + 96))
  {
    v1 = AGSubgraphGetGraph();
    v2 = AGSubgraphCreate();

    *(v0 + 96) = v2;
    v4 = v2;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityScene.IndirectOutputs.updateValue()(v0);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityScene.IndirectOutputs.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v23[0] = *(a1 + 16);
  v23[1] = v2;
  v24[0] = *(a1 + 48);
  *(v24 + 12) = *(a1 + 60);
  v3 = v2;
  v22 = v23[0];
  v4 = *(a1 + 56);
  v19 = *(a1 + 40);
  v20 = v4;
  v21 = *(a1 + 72);
  swift_beginAccess();
  v5 = v3[3];
  v25[1] = v3[2];
  v25[2] = v5;
  v6 = v3[5];
  v25[3] = v3[4];
  v25[4] = v6;
  v25[0] = v3[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v7 = swift_allocObject();
  memmove((v7 + 16), v3 + 1, 0x50uLL);
  outlined init with copy of _SceneInputs(v23, &v17);
  outlined init with copy of CachedEnvironment(v25, &v17);

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);

  v10 = *AGGraphGetValue();
  LODWORD(v13) = *a1;
  v26 = v22;
  *v27 = v7;
  *&v27[8] = v19;
  *&v27[40] = v21;
  *&v27[24] = v20;
  v17 = v22;
  *v18 = *v27;
  *&v18[16] = *&v27[16];
  *&v18[28] = *&v27[28];
  v11 = *(*v10 + 80);

  outlined init with copy of _SceneInputs(&v26, v28);
  v11(&v15, &v13, &v17);

  v28[0] = v17;
  v28[1] = *v18;
  v29[0] = *&v18[16];
  *(v29 + 12) = *&v18[28];
  outlined destroy of _SceneInputs(v28);
  *&v17 = v8;
  DWORD2(v17) = v9;
  v13 = v15;
  v14 = v16;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v17 = v22;
  *v18 = v7;
  *&v18[8] = v19;
  *&v18[24] = v20;
  *&v18[40] = v21;
  return outlined destroy of _SceneInputs(&v17);
}

uint64_t LimitedAvailabilitySceneStorage.makeScene(scene:inputs:)(int *a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v12[0] = a2[2];
  *(v12 + 12) = *(a2 + 44);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v10 = v4;
  type metadata accessor for LimitedAvailabilitySceneStorage.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(v7 + 32))(v9, v11, v6, v7);
}

uint64_t LimitedAvailabilitySceneStorage.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for LimitedAvailabilitySceneStorage();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = *(*(a1 - 8) + 16);
  v6 = v4 + *(*v4 + 112);

  return v5(a2, v6, a1);
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityScene.IndirectOutputs and conformance LimitedAvailabilityScene.IndirectOutputs);
  }

  return result;
}

uint64_t DocumentGroup<>.init(newDocument:editor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = _typeName(_:qualified:)();
  return DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, a2, a3, a4, v18, v19, a5, a6, a9, a7, a8);
}

{
  v18 = _typeName(_:qualified:)();
  return DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, a2, a3, a4, v18, v19, a5, a6, a9, a7, a8);
}

uint64_t DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = 0;
  v18 = type metadata accessor for ReferenceFileDocumentBox();
  *(a9 + 8) = v18;
  *(a9 + 16) = &protocol witness table for ReferenceFileDocumentBox<A>;
  *(a9 + 48) = type metadata accessor for DocumentGroupConfiguration.NewReferenceFileDocument();
  *(a9 + 56) = &protocol witness table for DocumentGroupConfiguration.NewReferenceFileDocument<A>;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  v19 = swift_allocObject();
  v19[2] = a8;
  v19[3] = a11;
  v19[4] = a3;
  v19[5] = a4;
  type metadata accessor for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer();
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  swift_getWitnessTable();
  PlatformItemListTransformModifier.init(flags:transform:)(v18, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:));

  type metadata accessor for ObservableDocumentBoxInputView();
  *(a9 + 64) = AnyView.init<A>(_:)();
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = (*(a10 + 24))(a7, a10);
  v20 = (*(a10 + 32))(a7, a10);

  *(a9 + 96) = v20;
  return result;
}

{
  *a9 = 0;
  v18 = type metadata accessor for FileDocumentBox();
  *(a9 + 8) = v18;
  *(a9 + 16) = &protocol witness table for FileDocumentBox<A>;
  *(a9 + 48) = type metadata accessor for DocumentGroupConfiguration.NewFileDocument();
  *(a9 + 56) = &protocol witness table for DocumentGroupConfiguration.NewFileDocument<A>;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  v19 = swift_allocObject();
  v19[2] = a8;
  v19[3] = a11;
  v19[4] = a3;
  v19[5] = a4;
  type metadata accessor for DocumentGroupConfiguration.EditorFileDocumentContainer();
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  swift_getWitnessTable();
  PlatformItemListTransformModifier.init(flags:transform:)(v18, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:));

  type metadata accessor for ObservableDocumentBoxInputView();
  *(a9 + 64) = AnyView.init<A>(_:)();
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = (*(a10 + 8))(a7, a10);
  v20 = (*(a10 + 16))(a7, a10);

  *(a9 + 96) = v20;
  return result;
}

uint64_t DocumentGroup<>.init(viewing:viewer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = _typeName(_:qualified:)();
  return DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:)(a1, a2, v14, v15, a3, a4, a5, a7, a6);
}

{
  v14 = _typeName(_:qualified:)();
  return DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:)(a1, a2, v14, v15, a3, a4, a5, a7, a6);
}

uint64_t DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  *a8 = 1;
  v15 = type metadata accessor for ReferenceFileDocumentBox();
  *(a8 + 8) = v15;
  *(a8 + 16) = &protocol witness table for ReferenceFileDocumentBox<A>;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a9;
  v16[4] = a1;
  v16[5] = a2;
  type metadata accessor for DocumentGroupConfiguration.ViewerReferenceFileDocumentContainer();
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  swift_getWitnessTable();
  PlatformItemListTransformModifier.init(flags:transform:)(v15, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:));

  type metadata accessor for ObservableDocumentBoxInputView();
  *(a8 + 64) = AnyView.init<A>(_:)();
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = (*(a7 + 24))(a5, a7);
  v17 = (*(a7 + 32))(a5, a7);

  *(a8 + 96) = v17;
  return result;
}

{
  *a8 = 1;
  v15 = type metadata accessor for FileDocumentBox();
  *(a8 + 8) = v15;
  *(a8 + 16) = &protocol witness table for FileDocumentBox<A>;
  *(a8 + 24) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a9;
  v16[4] = a1;
  v16[5] = a2;
  type metadata accessor for DocumentGroupConfiguration.ViewerFileDocumentContainer();
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  swift_getWitnessTable();
  PlatformItemListTransformModifier.init(flags:transform:)(v15, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:));

  type metadata accessor for ObservableDocumentBoxInputView();
  *(a8 + 64) = AnyView.init<A>(_:)();
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = (*(a7 + 8))(a5, a7);
  v17 = (*(a7 + 16))(a5, a7);

  *(a8 + 96) = v17;
  return result;
}

uint64_t ReferenceFileDocumentConfiguration.document.getter()
{
  specialized ReferenceFileDocumentConfiguration.document.getter();

  return swift_unknownObjectRetain();
}

uint64_t key path getter for ReferenceFileDocumentConfiguration.document : <A>ReferenceFileDocumentConfiguration<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReferenceFileDocumentConfiguration();
  *a1 = specialized ReferenceFileDocumentConfiguration.document.getter();

  return swift_unknownObjectRetain();
}

uint64_t ReferenceFileDocumentConfiguration.document.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t ReferenceFileDocumentConfiguration.init(document:fileURL:isEditable:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t *a3@<X8>)
{
  *a3 = ObservedObject.init(wrappedValue:)();
  a3[1] = v6;
  v7 = type metadata accessor for ReferenceFileDocumentConfiguration();
  result = outlined init with take of URL?(a1, a3 + *(v7 + 36));
  *(a3 + *(v7 + 40)) = a2;
  return result;
}

uint64_t ReferenceFileDocumentBox.base.didset()
{
  result = ReferenceFileDocumentBox.base.getter();
  v2 = result;
  if (result)
  {
    result = swift_unknownObjectRelease();
  }

  *(v0 + *(*v0 + 120)) = v2 != 0;
  return result;
}

uint64_t ReferenceFileDocumentBox.base.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*ReferenceFileDocumentBox.base.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = ReferenceFileDocumentBox.base.getter();
  return ReferenceFileDocumentBox.base.modify;
}

uint64_t ReferenceFileDocumentBox.base.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    specialized ReferenceFileDocumentBox.base.setter();
    swift_unknownObjectRelease();
  }

  else
  {
    specialized ReferenceFileDocumentBox.base.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t property wrapper backing initializer of ReferenceFileDocumentBox.fileURL(uint64_t a1)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6);
  outlined init with copy of URL?(v7, v4);
  Published.init(initialValue:)();
  outlined destroy of FileDocumentWriteConfiguration(a1, type metadata accessor for URL?);
  return outlined destroy of FileDocumentWriteConfiguration(v7, type metadata accessor for URL?);
}

uint64_t ReferenceFileDocumentBox.fileURL.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t ReferenceFileDocumentBox.fileURL.setter(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 80);
  v7 = v11;
  v12 = *(v3 + 88);
  v8 = v12;
  swift_getKeyPath();
  v10[0] = v7;
  v10[1] = v8;
  swift_getKeyPath();
  outlined init with copy of URL?(a1, v6);

  static Published.subscript.setter();
  return outlined destroy of FileDocumentWriteConfiguration(a1, type metadata accessor for URL?);
}

uint64_t (*ReferenceFileDocumentBox.fileURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return ReferenceFileDocumentBox.fileURL.modify;
}

uint64_t ReferenceFileDocumentBox.isEditable.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ReferenceFileDocumentBox.isEditable.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ReferenceFileDocumentBox.isEditable.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return ReferenceFileDocumentBox.isEditable.modify;
}

void ReferenceFileDocumentBox.fileURL.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t ReferenceFileDocumentBox.__allocating_init()()
{
  v0 = swift_allocObject();
  ReferenceFileDocumentBox.init()();
  return v0;
}

uint64_t *ReferenceFileDocumentBox.init()()
{
  v1 = *v0;
  type metadata accessor for Published<Bool>();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation3URLVSgMaTm_1(0, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
  v23 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Optional();
  v12 = type metadata accessor for Published();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *(v1 + 96);
  v26 = 0;
  v17 = type metadata accessor for Optional();
  Published.init(wrappedValue:)(&v26, v17);
  (*(v13 + 32))(v0 + v16, v15, v12);
  v18 = *(*v0 + 104);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  property wrapper backing initializer of ReferenceFileDocumentBox.fileURL(v11);
  (*(v6 + 32))(v0 + v18, v8, v23);
  v20 = *(*v0 + 112);
  v27 = 0;
  Published.init(initialValue:)();
  (*(v24 + 32))(v0 + v20, v4, v25);
  *(v0 + *(*v0 + 120)) = 0;
  *(v0 + *(*v0 + 128)) = 0;
  specialized ReferenceFileDocumentBox.base.setter();
  return v0;
}

uint64_t ReferenceFileDocumentBox.read(from:contentType:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  Configuration = type metadata accessor for FileDocumentReadConfiguration(0);
  v9 = Configuration - 8;
  MEMORY[0x1EEE9AC00](Configuration);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + 80);
  v13 = type metadata accessor for UTType();
  (*(*(v13 - 8) + 16))(v11, a2, v13);
  *&v11[*(v9 + 28)] = a1;
  v14 = *(v7 + 88);
  v15 = *(v14 + 40);
  v16 = a1;
  result = v15(v11, v12, v14);
  if (!v3)
  {
    specialized ReferenceFileDocumentBox.base.setter();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*ReferenceFileDocumentBox.snapshotForSerialization(contentType:)(uint64_t a1))(void *a1)
{
  v25 = a1;
  v3 = *v1;
  v24 = type metadata accessor for UTType();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v23 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  result = ReferenceFileDocumentBox.base.getter();
  if (result)
  {
    v14 = result;
    (*(v5 + 48))(v25, v6, v5);
    if (v2)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v20[0] = AssociatedTypeWitness;
      v20[1] = 0;
      v15 = v21 + 32;
      v21 = *(v21 + 32);
      (v21)(v9, v12, AssociatedTypeWitness);
      v16 = v22;
      (*(v22 + 16))(v23, v25, v24);
      v17 = (*(v15 + 48) + 40) & ~*(v15 + 48);
      v18 = (v8 + *(v16 + 80) + v17) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 2) = v6;
      *(v19 + 3) = v5;
      *(v19 + 4) = v14;
      (v21)(&v19[v17], v9, v20[0]);
      (*(v16 + 32))(&v19[v18], v23, v24);
      return partial apply for closure #1 in ReferenceFileDocumentBox.snapshotForSerialization(contentType:);
    }
  }

  return result;
}

uint64_t closure #1 in ReferenceFileDocumentBox.snapshotForSerialization(contentType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for FileDocumentWriteConfiguration(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UTType();
  (*(*(v15 - 8) + 16))(v14, a4, v15);
  *&v14[*(v12 + 28)] = a1;
  v16 = *(a6 + 56);
  v17 = a1;
  v18 = v16(a3, v14, a5, a6);
  outlined destroy of FileDocumentWriteConfiguration(v14, type metadata accessor for FileDocumentWriteConfiguration);
  return v18;
}

uint64_t ReferenceFileDocumentBox.deinit()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  _s10Foundation3URLVSgMaTm_1(0, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 112);
  type metadata accessor for Published<Bool>();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t ReferenceFileDocumentBox.__deallocating_deinit()
{
  ReferenceFileDocumentBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ReferenceFileDocumentBox<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReferenceFileDocumentBox();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for DocumentBaseBox.base.getter in conformance ReferenceFileDocumentBox<A>@<X0>(uint64_t *a1@<X8>)
{
  result = ReferenceFileDocumentBox.base.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for DocumentBaseBox.base.setter in conformance ReferenceFileDocumentBox<A>()
{
  specialized ReferenceFileDocumentBox.base.setter();

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for DocumentBaseBox.base.modify in conformance ReferenceFileDocumentBox<A>(uint64_t **a1))()
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
  v2[4] = ReferenceFileDocumentBox.base.modify(v2);
  return protocol witness for DocumentBaseBox.base.modify in conformance ReferenceFileDocumentBox<A>;
}

uint64_t (*protocol witness for ObservableDocumentBox.fileURL.modify in conformance ReferenceFileDocumentBox<A>(uint64_t **a1))()
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
  v2[4] = ReferenceFileDocumentBox.fileURL.modify(v2);
  return protocol witness for DocumentBaseBox.base.modify in conformance ReferenceFileDocumentBox<A>;
}

uint64_t (*protocol witness for ObservableDocumentBox.isEditable.modify in conformance ReferenceFileDocumentBox<A>(uint64_t **a1))()
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
  v2[4] = ReferenceFileDocumentBox.isEditable.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

void *protocol witness for ObservableDocumentBox.undoManager.getter in conformance ReferenceFileDocumentBox<A>()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for ObservableDocumentBox.undoManager.setter in conformance ReferenceFileDocumentBox<A>(uint64_t a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DocumentGroupConfiguration.NewReferenceFileDocument.provideNewDocument(to:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ReferenceFileDocumentBox();
  swift_dynamicCastClassUnconditional();
  a3();
  specialized ReferenceFileDocumentBox.base.setter();

  return swift_unknownObjectRelease();
}

uint64_t DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = ReferenceFileDocumentBox.base.getter();
  if (result)
  {
    ReferenceFileDocumentBox.fileURL.getter();
    v6 = ReferenceFileDocumentBox.isEditable.getter();

    return ReferenceFileDocumentConfiguration.init(document:fileURL:isEditable:)(v4, v6 & 1, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void *))
{
  v11 = *a1;

  v15[4] = property wrapper backing initializer of DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.modelBox();
  v15[5] = v12;
  v15[6] = a2;
  v15[7] = a3;
  v13 = *(v11 + 88);
  v15[0] = *(v11 + 80);
  v15[1] = a4;
  v15[2] = v13;
  v15[3] = a5;
  a6(0, v15);
  swift_getWitnessTable();
  View.styleContext<A>(_:)();
}

{
  v11 = *a1;

  v15[4] = property wrapper backing initializer of DocumentGroupConfiguration.EditorFileDocumentContainer.modelBox();
  v15[5] = v12;
  v15[6] = a2;
  v15[7] = a3;
  v13 = *(v11 + 88);
  v15[0] = *(v11 + 80);
  v15[1] = a4;
  v15[2] = v13;
  v15[3] = a5;
  a6(0, v15);
  swift_getWitnessTable();
  View.styleContext<A>(_:)();
}

uint64_t property wrapper backing initializer of DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.modelBox()
{
  type metadata accessor for ReferenceFileDocumentBox();
  swift_getWitnessTable();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t, uint64_t, void (*)(void), uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v74 = a8;
  v68 = a4;
  v61 = a3;
  v77 = a1;
  v75 = a9;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v62 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a7;
  v65 = type metadata accessor for ReferenceFileDocumentConfiguration();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v17 = v56 - v16;
  v63 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v60 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Optional();
  v78 = type metadata accessor for _EnvironmentKeyWritingModifier();
  v20 = type metadata accessor for ModifiedContent();
  v66 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v76 = v56 - v21;
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v73 = v20;
  v22 = type metadata accessor for ModifiedContent();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v69 = v56 - v27;
  v72 = type metadata accessor for _ConditionalContent();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = v56 - v28;

  v29 = ReferenceFileDocumentBox.base.getter();

  if (v29)
  {
    v59 = v22;
    v30 = v61;
    v57 = v25;
    v58 = v23;
    v31 = v74;
    a10(v77, a2, v61, v68, a5, a6, v67, v74, a2);
    v32 = v60;
    v56[1] = v29;
    v30(v17);
    (*(v64 + 8))(v17, v65);
    View.environmentObject<A>(_:)();
    (*(v63 + 8))(v32, a6);
    swift_getKeyPath();
    v33 = v62;
    v34 = v59;
    DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.documentConfiguration.getter(v62);
    v35 = type metadata accessor for DocumentConfiguration();
    (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
    WitnessTable = swift_getWitnessTable();
    v81 = v31;
    v82 = WitnessTable;
    v37 = v73;
    v38 = swift_getWitnessTable();
    v39 = v57;
    v40 = v76;
    View.environment<A>(_:_:)();

    outlined destroy of FileDocumentWriteConfiguration(v33, type metadata accessor for DocumentConfiguration?);
    (*(v66 + 8))(v40, v37);
    v41 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
    v79 = v38;
    v80 = v41;
    v42 = swift_getWitnessTable();
    v43 = v69;
    static ViewBuilder.buildExpression<A>(_:)(v39, v34, v42);
    v44 = *(v58 + 8);
    v44(v39, v34);
    v45 = v39;
    static ViewBuilder.buildExpression<A>(_:)(v43, v34, v42);
    v46 = v70;
    static ViewBuilder.buildEither<A, B>(first:)(v45, v34);
    swift_unknownObjectRelease();
    v44(v45, v34);
    v44(v43, v34);
  }

  else
  {
    v93 = static Color.clear.getter();
    v47 = swift_getWitnessTable();
    v31 = v74;
    v91 = v74;
    v92 = v47;
    v48 = swift_getWitnessTable();
    v49 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
    v89 = v48;
    v90 = v49;
    swift_getWitnessTable();
    v46 = v70;
    static ViewBuilder.buildEither<A, B>(second:)(&v93, v22, MEMORY[0x1E69815C0]);
  }

  v50 = swift_getWitnessTable();
  v87 = v31;
  v88 = v50;
  v51 = swift_getWitnessTable();
  v52 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
  v85 = v51;
  v86 = v52;
  v83 = swift_getWitnessTable();
  v84 = MEMORY[0x1E6981580];
  v53 = v72;
  v54 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v46, v53, v54);
  return (*(v71 + 8))(v46, v53);
}

uint64_t DocumentGroupConfiguration.ViewerReferenceFileDocumentContainer.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = ReferenceFileDocumentBox.base.getter();
  if (result)
  {
    ReferenceFileDocumentBox.fileURL.getter();

    return ReferenceFileDocumentConfiguration.init(document:fileURL:isEditable:)(v4, 0, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DocumentGroupConfiguration.EditorReferenceFileDocumentContainer.documentConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{

  v2 = ReferenceFileDocumentBox.isEditable.getter();
  type metadata accessor for DocumentConfiguration();
  ReferenceFileDocumentBox.fileURL.getter();

  *a1 = v2 & 1;
  return result;
}

uint64_t key path setter for ReferenceFileDocumentBox.fileURL : <A>ReferenceFileDocumentBox<A>(uint64_t a1)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1, v4);
  return ReferenceFileDocumentBox.fileURL.setter(v4);
}

uint64_t specialized ReferenceFileDocumentBox.base.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  static Published.subscript.setter();
  return ReferenceFileDocumentBox.base.didset();
}

void type metadata completion function for ReferenceFileDocumentConfiguration()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a3 + 36);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    swift_unknownObjectRetain();
    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for URL?();
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }

    v4[*(a3 + 40)] = a2[*(a3 + 40)];
  }

  return v4;
}

uint64_t destroy for ReferenceFileDocumentConfiguration(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a2 + 36);
  v5 = type metadata accessor for URL();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *initializeWithCopy for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 36);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  swift_unknownObjectRetain();
  if (v10(&a2[v7], 1, v8))
  {
    type metadata accessor for URL?();
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  a1[*(a3 + 40)] = a2[*(a3 + 40)];
  return a1;
}

char *assignWithCopy for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = *(a3 + 36);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for URL?();
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  a1[*(a3 + 40)] = a2[*(a3 + 40)];
  return a1;
}

char *initializeWithTake for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 36);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for URL?();
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  a1[*(a3 + 40)] = a2[*(a3 + 40)];
  return a1;
}

char *assignWithTake for ReferenceFileDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  swift_unknownObjectRelease();
  v7 = *(a3 + 36);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(&a1[v7], &a2[v7], v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    type metadata accessor for URL?();
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(&a1[v7], &a2[v7], v8);
  (*(v9 + 56))(&a1[v7], 0, 1, v8);
LABEL_7:
  a1[*(a3 + 40)] = a2[*(a3 + 40)];
  return a1;
}

void type metadata completion function for ReferenceFileDocumentBox()
{
  type metadata accessor for Optional();
  type metadata accessor for Published();
  if (v0 <= 0x3F)
  {
    _s10Foundation3URLVSgMaTm_1(319, &lazy cache variable for type metadata for Published<URL?>, type metadata accessor for URL?, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Bool>();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t partial apply for closure #1 in ReferenceFileDocumentBox.snapshotForSerialization(contentType:)(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UTType() - 8);
  return closure #1 in ReferenceFileDocumentBox.snapshotForSerialization(contentType:)(a1, v1[4], v1 + v6, v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v3, v4);
}

uint64_t partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(documentType:viewer:contentViewType:)(uint64_t *a1)
{
  return closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, v1[4], v1[5], v1[2], v1[3], type metadata accessor for DocumentGroupConfiguration.ViewerReferenceFileDocumentContainer);
}

{
  return closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, v1[4], v1[5], v1[2], v1[3], type metadata accessor for DocumentGroupConfiguration.ViewerFileDocumentContainer);
}

void type metadata accessor for StyleContextWriter<DocumentStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextWriter<DocumentStyleContext>)
  {
    v0 = type metadata accessor for StyleContextWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextWriter<DocumentStyleContext>);
    }
  }
}

uint64_t partial apply for closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(uint64_t *a1)
{
  return closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, v1[4], v1[5], v1[2], v1[3], type metadata accessor for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer);
}

{
  return closure #1 in DocumentGroupConfiguration.init<A, B>(newDocument:editor:contentViewType:)(a1, v1[4], v1[5], v1[2], v1[3], type metadata accessor for DocumentGroupConfiguration.EditorFileDocumentContainer);
}

void *assignWithCopy for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t assignWithTake for DocumentGroupConfiguration.EditorReferenceFileDocumentContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of FileDocumentWriteConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL?();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.triggerSubmission.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t *closure #1 in OnSubmitModifier.body(content:)(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*a2 & *result) != 0)
  {
    v4 = specialized Environment.wrappedValue.getter(*(a2 + 24), *(a2 + 32), *(a2 + 40));
    if (v4)
    {
      v6 = v4;
      v7 = v5;
      v8 = v2;
      v4(&v8);
      v4 = outlined consume of TriggerSubmitAction?(v6, v7);
    }

    return (*(a2 + 8))(v4);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance OnSubmitModifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 25);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  *(v5 + 41) = *(v1 + 25);
  *a1 = KeyPath;
  a1[1] = partial apply for closure #1 in OnSubmitModifier.body(content:);
  a1[2] = v5;
  return outlined init with copy of OnSubmitModifier(&v9, &v8);
}

void (*closure #1 in SubmitScopeModifier.body(content:)(void (*result)(void), uint64_t a2))(void)
{
  v2 = *result;
  if ((*a2 & 1) == 0 || (*(a2 + 8) & v2) == 0)
  {
    result = specialized Environment.wrappedValue.getter(*(a2 + 16), *(a2 + 24), *(a2 + 32));
    if (result)
    {
      v4 = result;
      v5 = v3;
      v6 = v2;
      result(&v6);
      return outlined consume of TriggerSubmitAction?(v4, v5);
    }
  }

  return result;
}

double specialized implicit closure #1 in _GraphInputs.triggerSubmission.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t View.onSubmit(of:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = *a1;
  v10[1] = a2;
  v10[2] = a3;
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = 0;

  MEMORY[0x18D00A570](v10, a4, &type metadata for OnSubmitModifier, a5);
  v7 = KeyPath;
  v8 = v12;
  LOBYTE(a4) = v13;

  return outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v7, v8, a4);
}

uint64_t View.submitScope(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v7 = 5;
  KeyPath = swift_getKeyPath();
  v9 = 0;
  v10 = 0;
  MEMORY[0x18D00A570](v6, a2, &type metadata for SubmitScopeModifier, a3);
  return outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(KeyPath, v9, v10);
}

unint64_t lazy protocol witness table accessor for type OnSubmitModifier and conformance OnSubmitModifier()
{
  result = lazy protocol witness table cache variable for type OnSubmitModifier and conformance OnSubmitModifier;
  if (!lazy protocol witness table cache variable for type OnSubmitModifier and conformance OnSubmitModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnSubmitModifier and conformance OnSubmitModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA16OnSubmitModifierVGAaBHPxAaBHD1__AfA0cH0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

uint64_t assignWithTake for SubmitScopeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v5, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for SubmitScopeModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SubmitScopeModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for OnSubmitModifier(uint64_t a1)
{

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v2, v3, v4);
}

uint64_t initializeWithCopy for OnSubmitModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);

  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return a1;
}

uint64_t assignWithCopy for OnSubmitModifier(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v4;

  v5 = v2[3];
  v6 = v2[4];
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v2);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v7, v8, v9);
  return a1;
}

uint64_t assignWithTake for OnSubmitModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 40);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v5, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnSubmitModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OnSubmitModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>, &lazy cache variable for type metadata for _ViewModifier_Content<OnSubmitModifier>, lazy protocol witness table accessor for type OnSubmitModifier and conformance OnSubmitModifier);
    lazy protocol witness table accessor for type _ViewModifier_Content<SubmitScopeModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnSubmitModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<OnSubmitModifier>, lazy protocol witness table accessor for type OnSubmitModifier and conformance OnSubmitModifier);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t (*EnvironmentValues.navigationIndicatorVisibility.modify(uint64_t a1))(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = EnvironmentValues._navigationLinkIndicatorVisibility.getter();
  return EnvironmentValues.navigationIndicatorVisibility.modify;
}

uint64_t EnvironmentValues.navigationIndicatorVisibility.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double SplitViewNavigationIndicator.value.getter@<D0>(_OWORD *a1@<X8>)
{
  if (*(AGGraphGetValue() + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>);

    PropertyList.subscript.getter();
  }

  Value = AGGraphGetValue();
  v3 = Value[1];
  *&v5 = *Value;
  *(&v5 + 1) = v3;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>);
  swift_retain_n();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  result = *&v5;
  *a1 = v5;
  return result;
}

uint64_t StaticNavigationIndicator.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultNavigationIndicatorVisibilityKey>);
  swift_retain_n();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HideNavigationLinkDisclosureIndicator()
{
  lazy protocol witness table accessor for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t EnvironmentValues.showNavigationDisclosureIndicator.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.showNavigationDisclosureIndicator : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.navigationIndicatorVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.navigationIndicatorVisibility.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.showNavigationDisclosureIndicator.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationIndicatorVisibilityKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.navigationIndicatorVisibility.modify;
}

uint64_t specialized static NavigationDisclosureEnvironmentModifier.showConditionally(inputs:)()
{
  v0 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  v1 = 1;
  if ((static StyleContextAcceptsAnyPredicate.evaluate(inputs:)() & 1) == 0)
  {
    v1 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v2 = static StyleContextAcceptsAnyPredicate.evaluate(inputs:)();
  }

  else
  {
    v2 = 0;
  }

  return v0 & (v1 | v2) & 1;
}

uint64_t getEnumTagSinglePayload for StaticNavigationIndicator(unsigned __int8 *a1, unsigned int a2)
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
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticNavigationIndicator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void type metadata accessor for TextField<_TextFieldStyleLabel>()
{
  if (!lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>)
  {
    v0 = type metadata accessor for TextField();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RoundedBorderTextFieldStyle.BodyContent and conformance RoundedBorderTextFieldStyle.BodyContent()
{
  result = lazy protocol witness table cache variable for type RoundedBorderTextFieldStyle.BodyContent and conformance RoundedBorderTextFieldStyle.BodyContent;
  if (!lazy protocol witness table cache variable for type RoundedBorderTextFieldStyle.BodyContent and conformance RoundedBorderTextFieldStyle.BodyContent)
  {
    type metadata accessor for RoundedBorderTextFieldStyle.BodyContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedBorderTextFieldStyle.BodyContent and conformance RoundedBorderTextFieldStyle.BodyContent);
  }

  return result;
}

uint64_t type metadata completion function for AttributedTextStorage()
{
  result = type metadata accessor for BindingStorage.Storage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AttributedStringUpdates(319);
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AttributedTextStorage(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v114 = type metadata accessor for AttributedString();
  v113 = *(v114 - 8);
  v3 = *(v113 + 80);
  v4 = v3;
  v5 = ((v4 + 16) & ~v4) + *(v113 + 64);
  v115 = type metadata accessor for AttributedString.Index();
  v6 = *(v115 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v110 = v10;
  v111 = v9;
  v11 = *(v10 + 80);
  v119 = type metadata accessor for AttributeContainer();
  v12 = *(v119 - 8);
  v13 = *(v12 + 80);
  v14 = v11 | v8 | *(v12 + 80);
  v15 = (v11 | v8 | *(v12 + 80));
  v16 = v15 | 7;
  v19 = *(v6 + 64);
  if (*(v10 + 64) <= v19)
  {
    v20 = *(v6 + 64);
  }

  else
  {
    v20 = *(v10 + 64);
  }

  v120 = v20;
  v117 = v20 + 1 + v13;
  v118 = *(v119 - 8);
  v21 = *(v12 + 84);
  if (v21)
  {
    v22 = *(*(v119 - 8) + 64);
  }

  else
  {
    v22 = *(*(v119 - 8) + 64) + 1;
  }

  v23 = v22 + (v117 & ~v13) + 1;
  v18 = (v15 + 16) & ~v15;
  v17 = ((v15 | 7) + v5) & ~(v15 | 7);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v17 + v18 + v23)
  {
    v24 = v17 + v18 + v23;
  }

  else
  {
    v24 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v116 = v7;
  if (v21)
  {
    v25 = v21 - 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a3 + 16);
  v27 = *(v26 - 8);
  if (v25 <= 0xFD)
  {
    v28 = 253;
  }

  else
  {
    v28 = v25;
  }

  v29 = *(*(a3 + 16) - 8);
  v30 = *(v27 + 80);
  v31 = *(v27 + 64);
  v32 = v15 | v3 | v30;
  if (v32 <= 7 && ((v14 | v3 | v30) & 0x100000) == 0)
  {
    v112 = v15 + 8;
    v122 = v19 + v15;
    v33 = v23 + ((v19 + v15) & ~v15);
    if (((v31 + 7 + ((v33 + ((v15 + 8) & ~v15) + v30 + ((v24 + v16 + 1) & ~v16)) & ~v30)) & 0xFFFFFFFFFFFFFFF8) + 9 <= 0x18)
    {
      v105 = v33 + ((v15 + 8) & ~v15) + v30;
      v104 = *(v7 + 84);
      __n = v20 + 1;
      v99 = ~v3;
      v34 = *(a2 + v24);
      v106 = v31 + 7;
      if (v34 < 2)
      {
        v36 = a1;
        goto LABEL_37;
      }

      if (v24 <= 3)
      {
        v35 = v24;
      }

      else
      {
        v35 = 4;
      }

      v36 = a1;
      if (v35 > 1)
      {
        if (v35 == 2)
        {
          v37 = *a2;
          if (v24 >= 4)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v35 == 3)
          {
            v37 = *a2 | (*(a2 + 2) << 16);
            if (v24 < 4)
            {
              goto LABEL_36;
            }

LABEL_34:
            v34 = v37 + 2;
            goto LABEL_37;
          }

          v37 = *a2;
          if (v24 >= 4)
          {
            goto LABEL_34;
          }
        }

LABEL_36:
        v34 = (v37 | ((v34 - 2) << (8 * v24))) + 2;
LABEL_37:
        v100 = v30;
        v95 = v33;
        v96 = (v15 | 7) + v5;
        v102 = v24;
        v103 = v24 + v16 + 1;
        v109 = v25;
        v97 = v21;
        v93 = v22 + (v117 & ~v13) + 1;
        v98 = v22;
        v107 = v29;
        v108 = v26;
        v40 = ~v16;
        v41 = ~v15;
        v124 = ~v13;
        v101 = v28 - 1;
        *v36 = *a2;
        v42 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
        v43 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v42 = *v43;
        v44 = v42 + v4 + 8;
        v45 = v43 + v4 + 8;
        v39 = v36;
        v46 = *(v113 + 16);

        v46(v44 & v99, v45 & v99, v114);
        if (v34 == 1)
        {
          v47 = v41;
          *((v39 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
          *(v39 + v102) = 1;

          v48 = v115;
          v49 = a2;
          v50 = v112;
          v51 = v103;
          v52 = v40;
          v53 = v100;
        }

        else
        {
          v54 = ((v39 + v96) & v40);
          v52 = v40;
          v55 = ((a2 + v96) & v40);
          *v54 = *v55;
          v56 = ((v54 + 15) & 0xFFFFFFFFFFFFFFF8);
          v57 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
          *v56 = *v57;
          v50 = v112;
          v58 = ((v56 + v112) & v41);
          v47 = v41;
          v59 = ((v57 + v112) & v41);
          v60 = v59[v120];

          v61 = v60 == 1;
          if (v60 > 1)
          {
            memcpy(v58, v59, __n);
            v62 = v118;
            v63 = v115;
            v53 = v100;
          }

          else
          {
            v62 = v118;
            v53 = v100;
            v63 = v115;
            if (v61)
            {
              (*(v110 + 16))(v58, v59, v111);
              *(v58 + v120) = 1;
            }

            else
            {
              (*(v116 + 16))(v58, v59);
              *(v58 + v120) = 0;
            }
          }

          v64 = ((v58 + v117) & v124);
          v65 = (&v59[v117] & v124);
          if ((*(v62 + 48))(v65, 1, v119))
          {
            v66 = v98;
            memcpy(v64, v65, v98);
          }

          else
          {
            (*(v62 + 16))(v64, v65, v119);
            (*(v62 + 56))(v64, 0, 1, v119);
            v66 = v98;
          }

          *(v64 + v66) = *(v65 + v66);
          v51 = v103;
          *(v39 + v102) = 0;
          v49 = a2;
          v48 = v63;
        }

        v67 = ~v53;
        v68 = ((v39 + v51) & v52);
        v69 = ((v49 + v51) & v52);
        *v68 = *v69;
        v70 = ((v68 + v50) & v47);
        v71 = ((v69 + v50) & v47);

        if (v104 >= v101)
        {
          if ((*(v116 + 48))(v71))
          {
            goto LABEL_62;
          }

          v72 = (&v71[v122] & v47);
        }

        else
        {
          v72 = (&v71[v122] & v47);
          if (v109 > 0xFD)
          {
            v74 = (*(v118 + 48))(&v72[v117] & v124, v97, v119);
            if (v74 >= 2)
            {
LABEL_55:
              if (v74 < 3)
              {
                goto LABEL_56;
              }

LABEL_62:
              v81 = v70;
              v82 = v71;
              v83 = v95;
              goto LABEL_67;
            }
          }

          else
          {
            v73 = v72[v120];
            if ((v73 - 255) >= 0xFFFFFF03)
            {
              v74 = (v73 ^ 0xFF) + 1;
              goto LABEL_55;
            }
          }
        }

LABEL_56:
        v75 = v48;
        v76 = *(v116 + 16);
        v76(v70, v71, v75);
        v77 = ((v70 + v122) & v47);
        if (v109 > 0xFD)
        {
          v79 = v118;
          if ((*(v118 + 48))(&v72[v117] & v124, v97, v119) <= 1)
          {
            v84 = v72[v120];
            v80 = v84 == 1;
            if (v84 <= 1)
            {
LABEL_59:
              if (v80)
              {
                (*(v110 + 16))(v77, v72, v111);
                v77[v120] = 1;
              }

              else
              {
                v76(v77, v72, v115);
                v77[v120] = 0;
              }

LABEL_68:
              v86 = v67;
              v87 = (&v77[v117] & v124);
              v88 = (&v72[v117] & v124);
              if ((*(v79 + 48))(v88, 1, v119))
              {
                v89 = v98;
                memcpy(v87, v88, v98);
              }

              else
              {
                (*(v79 + 16))(v87, v88, v119);
                (*(v79 + 56))(v87, 0, 1, v119);
                v89 = v98;
              }

              *(v87 + v89) = *(v88 + v89);
              v85 = v108;
              goto LABEL_72;
            }

LABEL_65:
            memcpy(v77, v72, __n);
            goto LABEL_68;
          }
        }

        else
        {
          v78 = v72[v120];
          v79 = v118;
          if (v78 - 255 < 0xFFFFFF03)
          {
            v80 = v78 == 1;
            if (v78 <= 1)
            {
              goto LABEL_59;
            }

            goto LABEL_65;
          }
        }

        v81 = v77;
        v82 = v72;
        v83 = v93;
LABEL_67:
        memcpy(v81, v82, v83);
        v85 = v108;
        v86 = v67;
LABEL_72:
        (*(v107 + 16))((v68 + v105) & v86, (v69 + v105) & v86, v85);
        v90 = (v106 + ((v68 + v105) & v86)) & 0xFFFFFFFFFFFFFFF8;
        v91 = (v106 + ((v69 + v105) & v86)) & 0xFFFFFFFFFFFFFFF8;
        *v90 = *v91;
        *(v90 + 8) = *(v91 + 8);
        goto LABEL_73;
      }

      if (!v35)
      {
        goto LABEL_37;
      }

      v37 = *a2;
      if (v24 < 4)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }
  }

  v38 = *a2;
  *a1 = *a2;
  v39 = (v38 + ((v32 & 0xF8 ^ 0x1F8) & (v32 + 16)));
LABEL_73:

  return v39;
}

uint64_t destroy for AttributedTextStorage(unsigned __int16 *a1, uint64_t a2)
{
  v63 = type metadata accessor for AttributedString();
  v3 = *(v63 - 8);
  v4 = *(v3 + 80);
  v5 = ((v4 + 16) & ~v4) + *(v3 + 64);
  v65 = type metadata accessor for AttributedString.Index();
  v6 = *(v65 - 8);
  v56 = v6;
  v7 = *(v6 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v9 = *(v8 - 8);
  v50 = v9;
  v51 = v8;
  v57 = type metadata accessor for AttributeContainer();
  v10 = *(v57 - 8);
  v11 = *(v10 + 80);
  v12 = v7 | v11;
  v13 = v12 | 7;
  v52 = (v12 | 7) + v5;
  v14 = v52 & ~(v12 | 7);
  v16 = *(v9 + 64);
  v53 = *(v6 + 64);
  if (v16 <= v53)
  {
    v16 = *(v6 + 64);
  }

  v59 = v16;
  v61 = v16 + v11 + 1;
  v62 = *(v57 - 8);
  v17 = *(v62 + 64);
  v54 = *(v10 + 84);
  if (!v54)
  {
    ++v17;
  }

  v18 = v17 + (v61 & ~v11) + 1;
  v55 = v18;
  v15 = (v12 + 16) & ~v12;
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v14 + v15 + v18)
  {
    v19 = v14 + v15 + v18;
  }

  else
  {
    v19 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v20 = *(a1 + v19);
  if (v20 >= 2)
  {
    if (v19 <= 3)
    {
      v21 = v19;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a1;
        if (v19 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *a1 | (*(a1 + 2) << 16);
          if (v19 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v20 = v22 + 2;
          goto LABEL_24;
        }

        v22 = *a1;
        if (v19 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v20 = (v22 | ((v20 - 2) << (8 * v19))) + 2;
      goto LABEL_24;
    }

    if (!v21)
    {
      goto LABEL_24;
    }

    v22 = *a1;
    if (v19 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v23 = ~v13;
  v60 = ~v11;

  (*(v3 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4, v63);
  v64 = ~v12;
  if (v20 == 1)
  {

    v24 = v12 + 8;
    v26 = v56;
    v25 = v57;
    v27 = v54;
  }

  else
  {
    v28 = ((a1 + v52) & v23) + 15;

    v29 = (v12 + 8 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v12;
    v30 = *(v29 + v59);
    v31 = v30 == 1;
    v26 = v56;
    v25 = v57;
    if (v30 <= 1)
    {
      v32 = v50;
      if (v31)
      {
        v33 = v51;
      }

      else
      {
        v32 = v56;
        v33 = v65;
      }

      (*(v32 + 8))((v12 + 8 + (v28 & 0xFFFFFFFFFFFFFFF8)) & ~v12, v33);
    }

    v34 = v61 + v29;
    if (!(*(v62 + 48))(v34 & v60, 1, v57))
    {
      (*(v62 + 8))(v34 & v60, v57);
    }

    v27 = v54;
    v24 = v12 + 8;
  }

  v35 = (a1 + v13 + v19 + 1) & v23;

  v36 = ~v12;
  v37 = (v24 + v35) & v64;
  if (v27)
  {
    v38 = v27 - 1;
  }

  else
  {
    v38 = 0;
  }

  if (v38 <= 0xFD)
  {
    v39 = 253;
  }

  else
  {
    v39 = v38;
  }

  if (*(v26 + 84) >= (v39 - 1))
  {
    v40 = v53 + v12;
    if ((*(v26 + 48))((v24 + v35) & v64))
    {
      goto LABEL_60;
    }

    v41 = (v40 + v37) & v64;
  }

  else
  {
    v40 = v53 + v12;
    v41 = (v40 + v37) & v64;
    if (v38 > 0xFD)
    {
      v43 = (*(v62 + 48))((v61 + v41) & v60, v27, v25);
      if (v43 < 2)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v42 = *(v41 + v59);
      if ((v42 - 255) < 0xFFFFFF03)
      {
        goto LABEL_48;
      }

      v43 = (v42 ^ 0xFF) + 1;
    }

    if (v43 >= 3)
    {
      goto LABEL_60;
    }
  }

LABEL_48:
  v44 = *(v26 + 8);
  v44(v37, v65);
  if (v38 > 0xFD)
  {
    v45 = v60;
    if ((*(v62 + 48))((v61 + v41) & v60, v27, v25) <= 1)
    {
      v48 = *(v41 + v59);
      v47 = v48 == 1;
      if (v48 > 1)
      {
        goto LABEL_57;
      }

LABEL_54:
      if (v47)
      {
        (*(v50 + 8))(v41, v51);
      }

      else
      {
        v44(v41, v65);
      }

LABEL_57:
      if (!(*(v62 + 48))((v61 + v41) & v45, 1, v25))
      {
        (*(v62 + 8))((v61 + v41) & v45, v25);
      }
    }
  }

  else
  {
    v45 = v60;
    v46 = *(v41 + v59);
    if (v46 - 255 < 0xFFFFFF03)
    {
      v47 = v46 == 1;
      if (v46 > 1)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  v36 = v64;
LABEL_60:
  (*(*(*(a2 + 16) - 8) + 8))(((v24 & v36) + (v40 & v36) + v55 + *(*(*(a2 + 16) - 8) + 80) + v35) & ~*(*(*(a2 + 16) - 8) + 80));
}

void *initializeWithCopy for AttributedTextStorage(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v115 = type metadata accessor for AttributedString();
  v111 = *(v115 - 8);
  v4 = *(v111 + 80);
  v96 = ~v4;
  v5 = ((v4 + 16) & ~v4) + *(v111 + 64);
  v101 = type metadata accessor for AttributedString.Index();
  v6 = *(v101 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v89 = v10;
  v90 = v9;
  v11 = *(v10 + 80);
  v105 = type metadata accessor for AttributeContainer();
  v12 = *(v105 - 8);
  v13 = v6;
  v14 = *(v12 + 80);
  v15 = v11 | v8 | *(v12 + 80);
  v92 = (v15 | 7) + v5;
  v16 = v92 & ~(v15 | 7);
  v18 = a2;
  v19 = *(v10 + 64);
  v99 = *(v13 + 64);
  if (v19 <= v99)
  {
    v19 = *(v13 + 64);
  }

  v110 = v19;
  __n = v19 + 1;
  v104 = v19 + 1 + v14;
  v108 = *(v105 - 8);
  v109 = *(v12 + 84);
  if (v109)
  {
    v20 = *(*(v105 - 8) + 64);
  }

  else
  {
    v20 = *(*(v105 - 8) + 64) + 1;
  }

  v93 = v5;
  v95 = v20;
  v21 = v20 + (v104 & ~v14) + 1;
  v102 = v21;
  v17 = (v15 + 16) & ~v15;
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v16 + v17 + v21)
  {
    v22 = v16 + v17 + v21;
  }

  else
  {
    v22 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v23 = a2[v22];
  if (v23 < 2)
  {
    v26 = a1;
    goto LABEL_25;
  }

  if (v22 <= 3)
  {
    v24 = v22;
  }

  else
  {
    v24 = 4;
  }

  if (v24 <= 1)
  {
    v26 = a1;
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = *a2;
    if (v22 >= 4)
    {
      goto LABEL_24;
    }

LABEL_20:
    v23 = (v25 | ((v23 - 2) << (8 * v22))) + 2;
    goto LABEL_25;
  }

  if (v24 == 2)
  {
    v25 = *a2;
  }

  else if (v24 == 3)
  {
    v25 = *a2 | (a2[2] << 16);
  }

  else
  {
    v25 = *a2;
  }

  v26 = a1;
  if (v22 < 4)
  {
    goto LABEL_20;
  }

LABEL_24:
  v23 = v25 + 2;
LABEL_25:
  v97 = v22;
  v117 = v7;
  v98 = v15 | 7;
  v106 = ~(v15 | 7);
  v27 = ~v15;
  v103 = ~v14;
  *v26 = *a2;
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = v29 + v4;
  v31 = v28 + v4 + 8;
  v32 = v26;
  v33 = v30 + 8;
  v34 = *(v111 + 16);

  v34(v31 & v96, v33 & v96, v115);
  v116 = ~v15;
  if (v23 == 1)
  {
    *((v32 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v18[v93 + 7] & 0xFFFFFFFFFFFFFFF8);
    v35 = v97;
    *(v32 + v97) = 1;
    v36 = v15 + 8;

    v37 = v117;
    v38 = v15 | 7;
    v39 = ~(v15 | 7);
    v40 = v15;
  }

  else
  {
    v41 = ((v32 + v92) & v106);
    v42 = (&v18[v92] & v106);
    *v41 = *v42;
    v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
    v44 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v43 = *v44;
    v94 = v15;
    v45 = ((v43 + v15 + 8) & v27);
    v112 = v15 + 8;
    v46 = ((v44 + v15 + 8) & v27);
    v47 = v46[v110];

    v48 = v47 == 1;
    v37 = v117;
    v35 = v97;
    if (v47 > 1)
    {
      memcpy(v45, v46, __n);
      v49 = v105;
    }

    else
    {
      v49 = v105;
      if (v48)
      {
        (*(v89 + 16))(v45, v46, v90);
        *(v45 + v110) = 1;
      }

      else
      {
        (*(v117 + 16))(v45, v46, v101);
        *(v45 + v110) = 0;
      }
    }

    v50 = ((v45 + v104) & v103);
    v51 = (&v46[v104] & v103);
    if ((*(v108 + 48))(v51, 1, v49))
    {
      v52 = v95;
      memcpy(v50, v51, v95);
    }

    else
    {
      (*(v108 + 16))(v50, v51, v49);
      (*(v108 + 56))(v50, 0, 1, v49);
      v52 = v95;
    }

    *(v50 + v52) = *(v51 + v52);
    *(v32 + v97) = 0;
    v36 = v112;
    v38 = v98;
    v39 = v106;
    v40 = v94;
  }

  v53 = ((v32 + v38 + v35 + 1) & v39);
  v54 = (&v18[v38 + 1 + v35] & v39);
  *v53 = *v54;
  v107 = v53;
  v55 = ((v53 + v36) & v116);
  v113 = v36;
  v56 = ((v54 + v36) & v116);
  v57 = *(v37 + 84);
  if (v109)
  {
    v58 = v109 - 1;
  }

  else
  {
    v58 = 0;
  }

  if (v58 <= 0xFD)
  {
    v59 = 253;
  }

  else
  {
    v59 = v58;
  }

  v60 = v59 - 1;
  v61 = v99 + v40;
  v62 = v37;
  v63 = v102 + ((v99 + v40) & v116);

  if (v57 >= v60)
  {
    v68 = (*(v62 + 48))(v56, v57, v101);
    v65 = v108;
    if (!v68)
    {
      v64 = ((v56 + v61) & v116);
      goto LABEL_50;
    }

    goto LABEL_56;
  }

  v64 = ((v56 + v61) & v116);
  v65 = v108;
  if (v58 > 0xFD)
  {
    v67 = (*(v108 + 48))(&v64[v104] & v103, v109, v105);
    if (v67 < 2)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v66 = v64[v110];
    if ((v66 - 255) < 0xFFFFFF03)
    {
      goto LABEL_50;
    }

    v67 = (v66 ^ 0xFF) + 1;
  }

  if (v67 >= 3)
  {
LABEL_56:
    memcpy(v55, v56, v63);
    v71 = v116;
    goto LABEL_65;
  }

LABEL_50:
  v69 = *(v117 + 16);
  v69(v55, v56, v101);
  v70 = &v55[v61];
  v71 = v116;
  v72 = (v70 & v116);
  if (v58 <= 0xFD)
  {
    v73 = v64[v110];
    v74 = v105;
    if (v73 - 255 < 0xFFFFFF03)
    {
      v75 = v73 == 1;
      if (v73 <= 1)
      {
        goto LABEL_53;
      }

LABEL_59:
      memcpy(v72, v64, __n);
      goto LABEL_61;
    }

LABEL_60:
    memcpy(v72, v64, v102);
    goto LABEL_65;
  }

  v74 = v105;
  if ((*(v65 + 48))(&v64[v104] & v103, v109, v105) > 1)
  {
    goto LABEL_60;
  }

  v76 = v64[v110];
  v75 = v76 == 1;
  if (v76 > 1)
  {
    goto LABEL_59;
  }

LABEL_53:
  if (v75)
  {
    (*(v89 + 16))(v72, v64, v90);
    *(v72 + v110) = 1;
  }

  else
  {
    v69(v72, v64, v101);
    *(v72 + v110) = 0;
  }

LABEL_61:
  v77 = ((v72 + v104) & v103);
  v78 = (&v64[v104] & v103);
  if ((*(v65 + 48))(v78, 1, v74))
  {
    memcpy(v77, v78, v95);
  }

  else
  {
    (*(v65 + 16))(v77, v78, v74);
    (*(v65 + 56))(v77, 0, 1, v74);
  }

  *(v77 + v95) = *(v78 + v95);
LABEL_65:
  v79 = *(*(a3 + 16) - 8);
  v80 = v79 + 16;
  v81 = *(v79 + 80);
  v82 = v63 + (v113 & v71) + v81;
  v83 = (v107 + v82) & ~v81;
  v84 = (v54 + v82) & ~v81;
  (*(v79 + 16))(v83, v84);
  v85 = *(v80 + 48) + 7;
  v86 = (v85 + v83) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v85 + v84) & 0xFFFFFFFFFFFFFFF8;
  *v86 = *v87;
  *(v86 + 8) = *(v87 + 8);

  return a1;
}

unsigned __int16 *assignWithCopy for AttributedTextStorage(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    v21 = a1;
    goto LABEL_63;
  }

  v195 = type metadata accessor for AttributedString();
  v4 = *(*(v195 - 8) + 80);
  v190 = *(v195 - 8);
  v192 = ~v4;
  v5 = ((v4 + 16) & ~v4) + *(v190 + 64);
  v6 = type metadata accessor for AttributedString.Index();
  v7 = *(v6 - 8);
  v164 = v7;
  v166 = v6;
  v8 = *(v7 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v160 = v10;
  v162 = v9;
  v186 = type metadata accessor for AttributeContainer();
  v11 = *(v186 - 8);
  v12 = *(v11 + 80);
  v13 = v8 | v12;
  v173 = (v13 | 7) + v5;
  v14 = *(v7 + 64);
  if (*(v10 + 64) > v14)
  {
    v14 = *(v10 + 64);
  }

  v188 = v14;
  __n = v14 + 1;
  v177 = v14 + 1 + v12;
  v184 = *(v186 - 8);
  if (*(v11 + 84))
  {
    v15 = *(*(v186 - 8) + 64);
  }

  else
  {
    v15 = *(*(v186 - 8) + 64) + 1;
  }

  v175 = v5;
  v16 = ((v13 + 16) & ~v13) + v15 + (v177 & ~v12) + (v173 & ~(v13 | 7));
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v16 + 1)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(a1 + v17);
  if (v18 >= 2)
  {
    if (v17 <= 3)
    {
      v19 = v17;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v19 == 3)
        {
          v20 = *a1 | (*(a1 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_26;
          }

LABEL_24:
          v18 = v20 + 2;
          goto LABEL_27;
        }

        v20 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      v18 = (v20 | ((v18 - 2) << (8 * v17))) + 2;
      goto LABEL_27;
    }

    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = *a1;
    if (v17 < 4)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_27:
  v170 = v15;
  v22 = ~v13;
  v179 = ~v12;

  v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);

  v172 = v23 + v4 + 8;
  (*(v190 + 8))(v172 & v192, v195);
  v168 = ~(v13 | 7);
  if (v18 == 1)
  {

    v24 = a2;
  }

  else
  {

    v25 = (((a1 + v173) & ~(v13 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8;

    v26 = (v13 + v25 + 8) & v22;
    v27 = *(v26 + v188);
    v28 = v27 == 1;
    if (v27 <= 1)
    {
      v29 = v164;
      if (v28)
      {
        v29 = v160;
        v30 = v162;
      }

      else
      {
        v30 = v166;
      }

      (*(v29 + 8))((v13 + v25 + 8) & v22, v30);
    }

    v24 = a2;
    if (!(*(v184 + 48))((v177 + v26) & v179, 1, v186))
    {
      (*(v184 + 8))((v177 + v26) & v179, v186);
    }
  }

  v31 = *(v24 + v17);
  if (v31 < 2)
  {
    goto LABEL_52;
  }

  if (v17 <= 3)
  {
    v32 = v17;
  }

  else
  {
    v32 = 4;
  }

  if (v32 <= 1)
  {
    if (!v32)
    {
      goto LABEL_52;
    }

    v33 = *v24;
    if (v17 < 4)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (v32 == 2)
  {
    v33 = *v24;
    if (v17 >= 4)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v32 == 3)
    {
      v33 = *v24 | (*(v24 + 2) << 16);
      if (v17 < 4)
      {
        goto LABEL_51;
      }

LABEL_49:
      v31 = v33 + 2;
      goto LABEL_52;
    }

    v33 = *v24;
    if (v17 >= 4)
    {
      goto LABEL_49;
    }
  }

LABEL_51:
  v31 = (v33 | ((v31 - 2) << (8 * v17))) + 2;
LABEL_52:
  *a1 = *v24;
  v34 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v34;
  v35 = v34 + v4 + 8;
  v36 = *(v190 + 16);

  v36(v172 & v192, v35 & v192, v195);
  if (v31 == 1)
  {
    *((a1 + v175 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v24 + v175 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(a1 + v17) = 1;

    v21 = a1;
  }

  else
  {
    v37 = ((a1 + v173) & v168);
    v38 = ((v24 + v173) & v168);
    *v37 = *v38;
    v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
    v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v39 = *v40;
    v41 = ((v39 + v13 + 8) & v22);
    v42 = ((v40 + v13 + 8) & v22);
    v43 = v42[v188];

    v44 = v43 == 1;
    if (v43 > 1)
    {
      memcpy(v41, v42, __n);
      v45 = v186;
    }

    else
    {
      v45 = v186;
      if (v44)
      {
        (*(v160 + 16))(v41, v42, v162);
        *(v41 + v188) = 1;
      }

      else
      {
        (*(v164 + 16))(v41, v42, v166);
        *(v41 + v188) = 0;
      }
    }

    v46 = ((v41 + v177) & v179);
    v47 = (&v42[v177] & v179);
    if ((*(v184 + 48))(v47, 1, v45))
    {
      v48 = v170;
      memcpy(v46, v47, v170);
    }

    else
    {
      (*(v184 + 16))(v46, v47, v45);
      (*(v184 + 56))(v46, 0, 1, v45);
      v48 = v170;
    }

    *(v46 + v48) = *(v47 + v48);
    v21 = a1;
    *(a1 + v17) = 0;
  }

LABEL_63:
  v49 = *(type metadata accessor for AttributedString() - 8);
  v50 = ((*(v49 + 80) + 16) & ~*(v49 + 80)) + *(v49 + 64);
  v193 = type metadata accessor for AttributedString.Index();
  v51 = *(v193 - 8);
  v52 = *(v51 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v54 = *(v53 - 8);
  v165 = v54;
  v167 = v53;
  v185 = type metadata accessor for AttributeContainer();
  v55 = *(v185 - 8);
  v56 = *(v55 + 80);
  v57 = v52 | v56;
  v58 = v57 | 7;
  v59 = *(v51 + 64);
  v60 = v51;
  if (*(v54 + 64) <= v59)
  {
    v61 = *(v51 + 64);
  }

  else
  {
    v61 = *(v54 + 64);
  }

  v189 = ~v56;
  v163 = v61 + 1;
  v187 = v61 + 1 + v56;
  v62 = v187 & ~v56;
  v191 = *(v185 - 8);
  v63 = *(v55 + 84);
  v64 = *(v191 + 64);
  if (!v63)
  {
    ++v64;
  }

  v171 = v64;
  v65 = v64 + v62 + 1;
  v66 = (((v57 | 7) + v50) & ~(v57 | 7)) + ((v57 + 16) & ~v57) + v65;
  if (((v50 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v66)
  {
    v66 = ((v50 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v67 = v66 + v58 + 1;
  v68 = ((v21 + v67) & ~v58);
  v69 = ((a2 + v67) & ~v58);
  *v68 = *v69;

  v178 = v68;
  v70 = (v68 + v57 + 8) & ~v57;
  v182 = v57 + 8;
  v71 = ((v69 + v57 + 8) & ~v57);
  v72 = v60;
  v73 = *(v60 + 84);
  v176 = v63;
  if (v63)
  {
    v74 = v63 - 1;
  }

  else
  {
    v74 = 0;
  }

  if (v74 <= 0xFD)
  {
    v75 = 253;
  }

  else
  {
    v75 = v74;
  }

  v76 = v59 + v57;
  v169 = v65;
  v180 = v65 + ((v59 + v57) & ~v57);
  v196 = ~v57;
  if (v73 >= v75 - 1)
  {
    __na = v59 + v57;
    v161 = v74;
    v85 = *(v72 + 48);
    v86 = (v69 + v57 + 8) & ~v57;
    v87 = v85(v70, v73, v193);
    v88 = v86;
    v89 = v85(v86, v73, v193);
    v79 = v70;
    if (!v87)
    {
      v83 = v191;
      v77 = v69;
      v71 = v88;
      v80 = v161;
      v81 = __na;
      if (v89)
      {
        goto LABEL_104;
      }

      v84 = ((v71 + __na) & v196);
      goto LABEL_94;
    }

    v83 = v191;
    v77 = v69;
    v71 = v88;
    v80 = v161;
    v81 = __na;
    if (!v89)
    {
      v84 = ((v71 + __na) & v196);
      goto LABEL_144;
    }
  }

  else
  {
    v77 = v69;
    v78 = (v76 + v70) & ~v57;
    v79 = v70;
    v80 = v74;
    v81 = v76;
    if (v74 > 0xFD)
    {
      v83 = v191;
      v92 = v71;
      v93 = (*(v191 + 48))((v187 + v78) & v189, v176, v185);
      v71 = v92;
      if (v93 <= 1)
      {
        v84 = ((v92 + v81) & v196);
        goto LABEL_92;
      }
    }

    else
    {
      v82 = *(v78 + v61);
      v83 = v191;
      if ((v82 - 255) <= 0xFFFFFF02)
      {
        v84 = ((v71 + v76) & v196);
        goto LABEL_90;
      }

      v93 = (v82 ^ 0xFF) + 1;
    }

    v84 = ((v71 + v81) & v196);
    if (v93 < 3)
    {
      if (v80 <= 0xFD)
      {
LABEL_90:
        v94 = v84[v61];
        if ((v94 - 255) >= 0xFFFFFF03)
        {
          v95 = (v94 ^ 0xFF) + 1;
          goto LABEL_93;
        }

        goto LABEL_94;
      }

LABEL_92:
      v96 = v71;
      v95 = (*(v83 + 48))(&v84[v187] & v189, v176, v185);
      v71 = v96;
      if (v95 >= 2)
      {
LABEL_93:
        if (v95 < 3)
        {
          goto LABEL_94;
        }

LABEL_104:
        __src = v71;
        v106 = *(v72 + 8);
        v106(v79, v193);
        v107 = (v79 + v81) & v196;
        if (v80 > 0xFD)
        {
          v125 = *(v83 + 48);
          v110 = v189;
          v109 = v185;
          v91 = v180;
          if (v125((v187 + v107) & v189, v176, v185) <= 1)
          {
            v126 = *(v107 + v61);
            v111 = v126 == 1;
            if (v126 > 1)
            {
              goto LABEL_160;
            }

LABEL_130:
            if (v111)
            {
              (*(v165 + 8))(v107, v167);
            }

            else
            {
              v106(v107, v193);
            }

LABEL_160:
            if (!(*(v191 + 48))((v187 + v107) & v110, 1, v109))
            {
              (*(v191 + 8))((v187 + v107) & v110, v109);
            }
          }
        }

        else
        {
          v108 = *(v107 + v61);
          v91 = v180;
          v109 = v185;
          v110 = v189;
          if (v108 - 255 < 0xFFFFFF03)
          {
            v111 = v108 == 1;
            if (v108 > 1)
            {
              goto LABEL_160;
            }

            goto LABEL_130;
          }
        }

        v90 = v79;
        v71 = __src;
        goto LABEL_163;
      }

LABEL_94:
      (*(v72 + 24))(v79, v71, v193);
      v97 = ((v79 + v81) & v196);
      if (v80 > 0xFD)
      {
        v174 = v61;
        v112 = *(v83 + 48);
        v113 = v112(&v97[v187] & v189, v176, v185);
        v100 = v185;
        v114 = v112(&v84[v187] & v189, v176, v185);
        if (v113 < 2)
        {
          v61 = v174;
          v83 = v191;
          if (v114 > 1)
          {
            goto LABEL_97;
          }

          goto LABEL_110;
        }

        v61 = v174;
        v83 = v191;
        if (v114 > 1)
        {
LABEL_141:
          v128 = v97;
LABEL_154:
          memcpy(v128, v84, v169);
LABEL_191:
          v91 = v180;
          goto LABEL_192;
        }

        v98 = v84[v174];
      }

      else
      {
        v98 = v84[v61];
        v99 = v98 - 255;
        v100 = v185;
        if (v97[v61] - 255 < 0xFFFFFF03)
        {
          if (v99 >= 0xFFFFFF03)
          {
LABEL_97:
            v101 = v97[v61];
            v102 = v101 == 1;
            if (v101 <= 1)
            {
              v103 = v165;
              if (v102)
              {
                v104 = v167;
              }

              else
              {
                v103 = v72;
                v104 = v193;
              }

              (*(v103 + 8))(v97, v104);
            }

            v105 = v97;
            if (!(*(v83 + 48))(&v97[v187] & v189, 1, v100))
            {
              (*(v83 + 8))(&v97[v187] & v189, v100);
            }

            goto LABEL_153;
          }

LABEL_110:
          v115 = v97[v61];
          v116 = v84[v61];
          if (v115 > 1)
          {
            if (v116 <= 1)
            {
              if (v116 != 1)
              {
LABEL_183:
                (*(v72 + 16))(v97, v84, v193);
                v97[v61] = 0;
LABEL_184:
                v141 = (&v97[v187] & v189);
                v142 = (&v84[v187] & v189);
                v143 = *(v83 + 48);
                v144 = v143(v141, 1, v100);
                v145 = v143(v142, 1, v100);
                if (v144)
                {
                  v146 = v171;
                  if (!v145)
                  {
                    (*(v191 + 16))(v141, v142, v100);
                    (*(v191 + 56))(v141, 0, 1, v100);
LABEL_190:
                    v141[v146] = v142[v146];
                    goto LABEL_191;
                  }
                }

                else
                {
                  v146 = v171;
                  if (!v145)
                  {
                    (*(v191 + 24))(v141, v142, v100);
                    goto LABEL_190;
                  }

                  (*(v191 + 8))(v141, v100);
                }

                memcpy(v141, v142, v146);
                goto LABEL_190;
              }

LABEL_158:
              (*(v165 + 16))(v97, v84, v167);
              v97[v61] = 1;
              goto LABEL_184;
            }
          }

          else
          {
            if (v116 <= 1)
            {
              if (v97 == v84)
              {
                goto LABEL_184;
              }

              v28 = v115 == 1;
              v117 = v165;
              if (v28)
              {
                v118 = v167;
              }

              else
              {
                v117 = v72;
                v118 = v193;
              }

              (*(v117 + 8))(v97, v118);
              v119 = v84[v61];
              v120 = v119 - 2;
              if (v119 >= 2)
              {
                if (v61 <= 3)
                {
                  v121 = v61;
                }

                else
                {
                  v121 = 4;
                }

                if (v121 <= 1)
                {
                  if (!v121)
                  {
                    goto LABEL_182;
                  }

                  v122 = *v84;
                }

                else if (v121 == 2)
                {
                  v122 = *v84;
                }

                else if (v121 == 3)
                {
                  v122 = *v84 | (v84[2] << 16);
                }

                else
                {
                  v122 = *v84;
                }

                v140 = (v122 | (v120 << (8 * v61))) + 2;
                v119 = v122 + 2;
                if (v61 < 4)
                {
                  v119 = v140;
                }
              }

LABEL_182:
              if (v119 != 1)
              {
                goto LABEL_183;
              }

              goto LABEL_158;
            }

            v28 = v115 == 1;
            v137 = v165;
            if (v28)
            {
              v138 = v167;
            }

            else
            {
              v137 = v72;
              v138 = v193;
            }

            (*(v137 + 8))(v97, v138);
          }

          memcpy(v97, v84, v163);
          goto LABEL_184;
        }

        if (v99 >= 0xFFFFFF03)
        {
          goto LABEL_141;
        }
      }

      v127 = v77;
      if (v98 > 1)
      {
        memcpy(v97, v84, v163);
      }

      else if (v98 == 1)
      {
        (*(v165 + 16))(v97, v84, v167);
        v97[v61] = 1;
      }

      else
      {
        (*(v72 + 16))(v97, v84, v193);
        v97[v61] = 0;
      }

      v135 = (&v97[v187] & v189);
      v136 = (&v84[v187] & v189);
      if ((*(v83 + 48))(v136, 1, v100))
      {
        goto LABEL_172;
      }

      (*(v83 + 16))(v135, v136, v100);
      (*(v83 + 56))(v135, 0, 1, v100);
      goto LABEL_174;
    }

    if (v80 > 0xFD)
    {
      v129 = v71;
      v124 = (*(v83 + 48))(&v84[v187] & v189, v176, v185);
      v71 = v129;
      if (v124 < 2)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v123 = v84[v61];
      if ((v123 - 255) < 0xFFFFFF03)
      {
        goto LABEL_144;
      }

      v124 = (v123 ^ 0xFF) + 1;
    }

    if (v124 < 3)
    {
LABEL_144:
      v130 = *(v72 + 16);
      v130(v79, v71, v193);
      v105 = ((v79 + v81) & v196);
      if (v80 > 0xFD)
      {
        v134 = *(v83 + 48);
        v133 = v189;
        v132 = v185;
        if (v134(&v84[v187] & v189, v176, v185) <= 1)
        {
          v131 = v84[v61];
LABEL_149:
          v127 = v77;
          if (v131 > 1)
          {
            memcpy(v105, v84, v163);
          }

          else if (v131 == 1)
          {
            (*(v165 + 16))(v105, v84, v167);
            *(v105 + v61) = 1;
          }

          else
          {
            v130(v105, v84, v193);
            *(v105 + v61) = 0;
          }

          v135 = ((v105 + v187) & v133);
          v136 = (&v84[v187] & v133);
          if ((*(v191 + 48))(v136, 1, v132))
          {
LABEL_172:
            v139 = v171;
            memcpy(v135, v136, v171);
LABEL_175:
            *(v135 + v139) = *(v136 + v139);
            v77 = v127;
            goto LABEL_191;
          }

          (*(v191 + 16))(v135, v136, v132);
          (*(v191 + 56))(v135, 0, 1, v132);
LABEL_174:
          v139 = v171;
          goto LABEL_175;
        }
      }

      else
      {
        v131 = v84[v61];
        v132 = v185;
        v133 = v189;
        if (v131 - 255 < 0xFFFFFF03)
        {
          goto LABEL_149;
        }
      }

LABEL_153:
      v128 = v105;
      goto LABEL_154;
    }
  }

  v90 = v79;
  v91 = v180;
LABEL_163:
  memcpy(v90, v71, v91);
LABEL_192:
  v147 = *(*(a3 + 16) - 8);
  v148 = v147 + 24;
  v149 = *(v147 + 80);
  v150 = v91 + (v182 & v196) + v149;
  v151 = (v178 + v150) & ~v149;
  v152 = (v77 + v150) & ~v149;
  (*(v147 + 24))(v151, v152);
  v153 = *(v148 + 40) + 7;
  v154 = (v153 + v151) & 0xFFFFFFFFFFFFFFF8;
  v155 = (v153 + v152) & 0xFFFFFFFFFFFFFFF8;
  *v154 = *v155;

  *(v154 + 8) = *(v155 + 8);
  return a1;
}

void *initializeWithTake for AttributedTextStorage(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v91 = type metadata accessor for AttributedString();
  v4 = *(v91 - 8);
  v5 = *(v4 + 80);
  v6 = ((v5 + 16) & ~v5) + *(v4 + 64);
  v89 = type metadata accessor for AttributedString.Index();
  v7 = *(v89 - 8);
  v98 = v7;
  v8 = *(v7 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v79 = v10;
  v80 = v9;
  v11 = type metadata accessor for AttributeContainer();
  v12 = a2;
  v95 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 80);
  v15 = v8 | v14;
  v16 = v15 | 7;
  v19 = *(v10 + 64);
  v85 = *(v7 + 64);
  if (v19 <= v85)
  {
    v19 = *(v7 + 64);
  }

  v97 = v19;
  __n = v19 + 1;
  v93 = v19 + 1 + v14;
  v94 = *(v11 - 8);
  v96 = *(v13 + 84);
  if (v96)
  {
    v20 = *(*(v11 - 8) + 64);
  }

  else
  {
    v20 = *(*(v11 - 8) + 64) + 1;
  }

  v83 = v6;
  v84 = v20;
  v21 = v20 + (v93 & ~v14) + 1;
  v90 = v21;
  v17 = ((v15 | 7) + v6) & ~(v15 | 7);
  v18 = (v15 + 16) & ~v15;
  if (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v17 + v18 + v21)
  {
    v22 = v17 + v18 + v21;
  }

  else
  {
    v22 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v23 = v12[v22];
  v82 = (v15 | 7) + v6;
  if (v23 < 2)
  {
    v26 = a1;
    v27 = v91;
    v28 = ~v5;
    goto LABEL_25;
  }

  if (v22 <= 3)
  {
    v24 = v22;
  }

  else
  {
    v24 = 4;
  }

  if (v24 <= 1)
  {
    v26 = a1;
    v27 = v91;
    v28 = ~v5;
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = *v12;
    if (v22 >= 4)
    {
      goto LABEL_24;
    }

LABEL_20:
    v23 = (v25 | ((v23 - 2) << (8 * v22))) + 2;
    goto LABEL_25;
  }

  if (v24 == 2)
  {
    v25 = *v12;
  }

  else if (v24 == 3)
  {
    v25 = *v12 | (v12[2] << 16);
  }

  else
  {
    v25 = *v12;
  }

  v26 = a1;
  v27 = v91;
  v28 = ~v5;
  if (v22 < 4)
  {
    goto LABEL_20;
  }

LABEL_24:
  v23 = v25 + 2;
LABEL_25:
  v29 = ~v16;
  v30 = ~v15;
  v92 = ~v14;
  *v26 = *v12;
  v31 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = v12;
  (*(v4 + 32))((v31 + v5 + 8) & v28, (v32 + v5 + 8) & v28, v27);
  v86 = ~v15;
  if (v23 == 1)
  {
    *((v26 + v83 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v33[v83 + 7] & 0xFFFFFFFFFFFFFFF8);
    *(v26 + v22) = 1;
    v34 = v15 + 8;
  }

  else
  {
    v35 = ((v26 + v82) & v29);
    v36 = (&v33[v82] & v29);
    *v35 = *v36;
    v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;
    v39 = ((v37 + v15 + 8) & v30);
    v40 = (v38 + v15 + 8) & v30;
    v41 = *(v40 + v97);
    if (v41 > 1)
    {
      memcpy(v39, ((v38 + v15 + 8) & v30), __n);
    }

    else if (v41 == 1)
    {
      (*(v79 + 32))(v39, v40, v80);
      *(v39 + v97) = 1;
    }

    else
    {
      (*(v98 + 32))(v39, v40, v89);
      *(v39 + v97) = 0;
    }

    v42 = ((v39 + v93) & v92);
    v43 = ((v93 + v40) & v92);
    if ((*(v94 + 48))(v43, 1, v95))
    {
      v44 = v84;
      memcpy(v42, v43, v84);
    }

    else
    {
      (*(v94 + 32))(v42, v43, v95);
      (*(v94 + 56))(v42, 0, 1, v95);
      v44 = v84;
    }

    *(v42 + v44) = *(v43 + v44);
    *(v26 + v22) = 0;
    v34 = v15 + 8;
  }

  v45 = v22 + 1;
  v46 = ((v26 + v16 + v22 + 1) & v29);
  v47 = (&v33[v16 + v45] & v29);
  *v46 = *v47;
  v48 = ((v46 + v34) & v86);
  v49 = ((v47 + v34) & v86);
  if (v96)
  {
    v50 = v96 - 1;
  }

  else
  {
    v50 = 0;
  }

  if (v50 <= 0xFD)
  {
    v51 = 253;
  }

  else
  {
    v51 = v50;
  }

  v52 = v85 + v15;
  if (*(v98 + 84) >= (v51 - 1))
  {
    if (!(*(v98 + 48))((v47 + v34) & v86))
    {
      v53 = ((v49 + v52) & v86);
      goto LABEL_50;
    }
  }

  else
  {
    v53 = ((v49 + v52) & v86);
    if (v50 > 0xFD)
    {
      v55 = (*(v94 + 48))(&v53[v93] & v92, v96, v95);
      if (v55 < 2)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v54 = v53[v97];
      if ((v54 - 255) < 0xFFFFFF03)
      {
        goto LABEL_50;
      }

      v55 = (v54 ^ 0xFF) + 1;
    }

    if (v55 < 3)
    {
LABEL_50:
      v88 = v34;
      v56 = *(v98 + 32);
      v56(v48, v49, v89);
      v57 = ((v48 + v52) & v86);
      if (v50 > 0xFD)
      {
        v61 = v94;
        v60 = v95;
        v59 = a1;
        if ((*(v94 + 48))(&v53[v93] & v92, v96, v95) <= 1)
        {
          v64 = v53[v97];
          v62 = v64 == 1;
          if (v64 <= 1)
          {
LABEL_53:
            if (v62)
            {
              (*(v79 + 32))(v57, v53, v80);
              v57[v97] = 1;
            }

            else
            {
              v56(v57, v53, v89);
              v57[v97] = 0;
            }

LABEL_61:
            v65 = (&v57[v93] & v92);
            v66 = (&v53[v93] & v92);
            if ((*(v61 + 48))(v66, 1, v60))
            {
              v67 = v84;
              memcpy(v65, v66, v84);
            }

            else
            {
              (*(v61 + 32))(v65, v66, v60);
              (*(v61 + 56))(v65, 0, 1, v60);
              v67 = v84;
            }

            v34 = v88;
            *(v65 + v67) = *(v66 + v67);
            v59 = a1;
            goto LABEL_65;
          }

LABEL_59:
          memcpy(v57, v53, __n);
          goto LABEL_61;
        }
      }

      else
      {
        v58 = v53[v97];
        v59 = a1;
        v61 = v94;
        v60 = v95;
        if (v58 - 255 < 0xFFFFFF03)
        {
          v62 = v58 == 1;
          if (v58 <= 1)
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }
      }

      memcpy(v57, v53, v90);
      v34 = v88;
LABEL_65:
      v63 = v90 + (v52 & v86);
      goto LABEL_66;
    }
  }

  v63 = v90 + (v52 & v86);
  memcpy(v48, v49, v63);
  v59 = a1;
LABEL_66:
  v68 = v63 + (v34 & v86);
  v69 = *(*(a3 + 16) - 8);
  v70 = v69 + 32;
  v71 = *(v69 + 80);
  v72 = v68 + v71;
  v73 = (v46 + v72) & ~v71;
  v74 = (v47 + v72) & ~v71;
  (*(v69 + 32))(v73, v74);
  v75 = *(v70 + 32) + 7;
  v76 = (v75 + v73) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v75 + v74) & 0xFFFFFFFFFFFFFFF8;
  *v76 = *v77;
  *(v76 + 8) = *(v77 + 8);
  return v59;
}

unsigned __int8 *assignWithTake for AttributedTextStorage(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_62;
  }

  v203 = type metadata accessor for AttributedString();
  v192 = *(v203 - 8);
  v199 = *(v192 + 80);
  v201 = ~v199;
  v4 = ((v199 + 16) & ~v199) + *(v192 + 64);
  v5 = type metadata accessor for AttributedString.Index();
  v6 = *(v5 - 8);
  v170 = v6;
  v172 = v5;
  v7 = *(v6 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v9 = *(v8 - 8);
  v166 = v9;
  v168 = v8;
  v10 = *(v9 + 80);
  v190 = type metadata accessor for AttributeContainer();
  v11 = *(v190 - 8);
  v12 = v6;
  v13 = *(v11 + 80);
  v14 = v10 | v7 | *(v11 + 80);
  v15 = a1;
  v181 = (v14 | 7) + v4;
  v16 = *(v12 + 64);
  if (*(v9 + 64) > v16)
  {
    v16 = *(v9 + 64);
  }

  v197 = v16;
  __n = v16 + 1;
  v183 = v16 + 1 + v13;
  v195 = *(v190 - 8);
  if (*(v11 + 84))
  {
    v17 = *(*(v190 - 8) + 64);
  }

  else
  {
    v17 = *(*(v190 - 8) + 64) + 1;
  }

  v188 = v4;
  v18 = ((v14 + 16) & ~v14) + v17 + (v183 & ~v13) + (v181 & ~(v14 | 7));
  if (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v20 = a1[v19];
  if (v20 < 2)
  {
    v23 = v192;
    goto LABEL_26;
  }

  if (v19 <= 3)
  {
    v21 = v19;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    v23 = v192;
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = *a1;
    if (v19 >= 4)
    {
      goto LABEL_25;
    }

LABEL_21:
    v20 = (v22 | ((v20 - 2) << (8 * v19))) + 2;
    goto LABEL_26;
  }

  if (v21 == 2)
  {
    v22 = *a1;
  }

  else if (v21 == 3)
  {
    v22 = *a1 | (a1[2] << 16);
  }

  else
  {
    v22 = *a1;
  }

  v23 = v192;
  if (v19 < 4)
  {
    goto LABEL_21;
  }

LABEL_25:
  v20 = v22 + 2;
LABEL_26:
  v176 = v17;
  v24 = ~(v14 | 7);
  v25 = ~v14;
  v193 = ~v13;

  v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);

  v178 = v26 + v199 + 8;
  (*(v23 + 8))(v178 & v201, v203);
  v174 = ~v14;
  if (v20 == 1)
  {

    v27 = v190;
    v28 = a2;
  }

  else
  {

    v29 = ((&a1[v181] & v24) + 15) & 0xFFFFFFFFFFFFFFF8;

    v30 = (v14 + v29 + 8) & v25;
    v31 = *(v30 + v197);
    v32 = v31 == 1;
    if (v31 <= 1)
    {
      v33 = v170;
      if (v32)
      {
        v33 = v166;
        v34 = v168;
      }

      else
      {
        v34 = v172;
      }

      (*(v33 + 8))((v14 + v29 + 8) & v25, v34);
    }

    v35 = v183 + v30;
    v27 = v190;
    v15 = a1;
    v24 = ~(v14 | 7);
    v28 = a2;
    if (!(*(v195 + 48))(v35 & v193, 1, v190))
    {
      (*(v195 + 8))(v35 & v193, v190);
    }
  }

  v36 = v28[v19];
  if (v36 < 2)
  {
    goto LABEL_51;
  }

  if (v19 <= 3)
  {
    v37 = v19;
  }

  else
  {
    v37 = 4;
  }

  if (v37 <= 1)
  {
    if (!v37)
    {
      goto LABEL_51;
    }

    v38 = *v28;
    if (v19 < 4)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (v37 == 2)
  {
    v38 = *v28;
    if (v19 >= 4)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v37 == 3)
    {
      v38 = *v28 | (v28[2] << 16);
      if (v19 < 4)
      {
        goto LABEL_50;
      }

LABEL_48:
      v36 = v38 + 2;
      goto LABEL_51;
    }

    v38 = *v28;
    if (v19 >= 4)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  v36 = (v38 | ((v36 - 2) << (8 * v19))) + 2;
LABEL_51:
  *v15 = *v28;
  v39 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v39;
  (*(v23 + 32))(v178 & v201, (v39 + v199 + 8) & v201, v203);
  if (v36 == 1)
  {
    *(&v15[v188 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v28[v188 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15[v19] = 1;
  }

  else
  {
    v40 = (&v15[v181] & v24);
    v41 = (&v28[v181] & v24);
    *v40 = *v41;
    v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
    v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v42 = *v43;
    v44 = ((v42 + v14 + 8) & v174);
    v45 = (v43 + v14 + 8) & v174;
    v46 = *(v45 + v197);
    if (v46 > 1)
    {
      memcpy(v44, ((v43 + v14 + 8) & v174), __n);
    }

    else if (v46 == 1)
    {
      (*(v166 + 32))(v44, v45, v168);
      *(v44 + v197) = 1;
    }

    else
    {
      (*(v170 + 32))(v44, v45, v172);
      *(v44 + v197) = 0;
    }

    v47 = ((v44 + v183) & v193);
    v48 = ((v183 + v45) & v193);
    if ((*(v195 + 48))(v48, 1, v27))
    {
      v49 = v176;
      memcpy(v47, v48, v176);
    }

    else
    {
      (*(v195 + 32))(v47, v48, v27);
      (*(v195 + 56))(v47, 0, 1, v27);
      v49 = v176;
    }

    *(v47 + v49) = *(v48 + v49);
    v15[v19] = 0;
  }

LABEL_62:
  v50 = *(type metadata accessor for AttributedString() - 8);
  v51 = ((*(v50 + 80) + 16) & ~*(v50 + 80)) + *(v50 + 64);
  v52 = type metadata accessor for AttributedString.Index();
  v53 = *(v52 - 8);
  v54 = v53;
  v55 = *(v53 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v57 = *(v56 - 8);
  v169 = v57;
  v171 = v56;
  v196 = type metadata accessor for AttributeContainer();
  v58 = *(v196 - 8);
  v59 = *(v58 + 80);
  v60 = v55 | v59;
  v61 = v60 | 7;
  v62 = ~v60;
  v63 = *(v53 + 64);
  v64 = *(v57 + 64);
  if (v64 <= v63)
  {
    v64 = *(v53 + 64);
  }

  v194 = v64;
  v202 = ~v59;
  v167 = v64 + 1;
  v198 = v64 + 1 + v59;
  v200 = *(v196 - 8);
  v65 = v198 & ~v59;
  v66 = *(v58 + 84);
  v67 = *(v200 + 64);
  if (!v66)
  {
    ++v67;
  }

  v175 = v67;
  v68 = v67 + v65 + 1;
  v69 = (((v60 | 7) + v51) & ~(v60 | 7)) + ((v60 + 16) & ~v60) + v68;
  if (((v51 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v69)
  {
    v69 = ((v51 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v70 = v69 + v61 + 1;
  v71 = (&a1[v70] & ~v61);
  v72 = (&a2[v70] & ~v61);
  *v71 = *v72;

  v182 = v71;
  v73 = (v71 + v60 + 8) & ~v60;
  v186 = v60 + 8;
  v74 = ((v72 + v60 + 8) & ~v60);
  v75 = *(v54 + 84);
  v177 = v66;
  if (v66)
  {
    v76 = v66 - 1;
  }

  else
  {
    v76 = 0;
  }

  if (v76 <= 0xFD)
  {
    v77 = 253;
  }

  else
  {
    v77 = v76;
  }

  v78 = v63 + v60;
  v173 = v68;
  v184 = v68 + ((v63 + v60) & ~v60);
  v189 = v52;
  v191 = v54;
  v204 = ~v60;
  v179 = v73;
  if (v75 >= v77 - 1)
  {
    __na = v76;
    v84 = v63 + v60;
    v85 = v72;
    v86 = *(v54 + 48);
    v87 = (v72 + v60 + 8) & ~v60;
    v88 = v86();
    v89 = (v86)(v87, v75, v52);
    if (!v88)
    {
      v79 = v85;
      v81 = v194;
      v74 = v87;
      v78 = v84;
      v76 = __na;
      if (!v89)
      {
        v83 = ((v78 + v87) & v204);
        goto LABEL_92;
      }

      goto LABEL_102;
    }

    v79 = v85;
    v74 = v87;
    v78 = v84;
    v76 = __na;
    if (!v89)
    {
      v83 = ((v78 + v87) & v204);
      goto LABEL_141;
    }
  }

  else
  {
    v79 = v72;
    v80 = (v78 + v73) & v62;
    if (v76 > 0xFD)
    {
      v92 = v78;
      v93 = v74;
      v94 = (*(v200 + 48))((v198 + v80) & v202, v177, v196);
      v74 = v93;
      v78 = v92;
      v81 = v194;
      if (v94 <= 1)
      {
        v83 = ((v74 + v92) & v204);
        goto LABEL_90;
      }
    }

    else
    {
      v81 = v194;
      v82 = *(v80 + v194);
      if ((v82 - 255) <= 0xFFFFFF02)
      {
        v83 = ((v74 + v78) & v204);
LABEL_88:
        v95 = v83[v81];
        if ((v95 - 255) < 0xFFFFFF03)
        {
          goto LABEL_92;
        }

        v96 = (v95 ^ 0xFF) + 1;
        goto LABEL_91;
      }

      v94 = (v82 ^ 0xFF) + 1;
    }

    v83 = ((v74 + v78) & v204);
    if (v94 < 3)
    {
      if (v76 <= 0xFD)
      {
        goto LABEL_88;
      }

LABEL_90:
      v97 = v78;
      v98 = v74;
      v96 = (*(v200 + 48))(&v83[v198] & v202, v177, v196);
      v74 = v98;
      v78 = v97;
      if (v96 < 2)
      {
        goto LABEL_92;
      }

LABEL_91:
      if (v96 < 3)
      {
LABEL_92:
        (*(v191 + 40))(v179, v74, v189);
        v99 = ((v179 + v78) & v204);
        if (v76 > 0xFD)
        {
          v180 = ((v179 + v78) & v204);
          v117 = *(v200 + 48);
          v102 = v196;
          v118 = v117(&v99[v198] & v202, v177, v196);
          v119 = v117(&v83[v198] & v202, v177, v196);
          if (v118 < 2)
          {
            v103 = v202;
            v99 = v180;
            v81 = v194;
            if (v119 > 1)
            {
              goto LABEL_95;
            }

            goto LABEL_108;
          }

          v131 = v202;
          v99 = v180;
          v81 = v194;
          if (v119 <= 1)
          {
            v133 = v83[v194];
            v132 = v133 == 1;
            if (v133 <= 1)
            {
LABEL_133:
              if (v132)
              {
                (*(v169 + 32))(v99, v83, v171);
                v99[v81] = 1;
              }

              else
              {
                (*(v191 + 32))(v99, v83, v189);
                v99[v81] = 0;
              }

              goto LABEL_165;
            }

LABEL_138:
            memcpy(v99, v83, v167);
LABEL_165:
            v143 = (&v99[v198] & v131);
            v144 = (&v83[v198] & v131);
            if ((*(v200 + 48))(v144, 1, v102))
            {
              goto LABEL_166;
            }

            (*(v200 + 32))(v143, v144, v102);
            (*(v200 + 56))(v143, 0, 1, v102);
            v145 = v175;
            goto LABEL_183;
          }
        }

        else
        {
          v100 = v83[v81];
          v101 = v100 - 255;
          v102 = v196;
          if (v99[v81] - 255 < 0xFFFFFF03)
          {
            v103 = v202;
            if (v101 >= 0xFFFFFF03)
            {
LABEL_95:
              v104 = v99[v81];
              v105 = v104 == 1;
              v106 = v104 > 1;
              v107 = v191;
              if (!v106)
              {
                if (v105)
                {
                  v107 = v169;
                  v108 = v171;
                }

                else
                {
                  v108 = v189;
                }

                (*(v107 + 8))(v99, v108);
              }

              if (!(*(v200 + 48))(&v99[v198] & v103, 1, v102))
              {
                (*(v200 + 8))(&v99[v198] & v103, v102);
              }

              goto LABEL_150;
            }

LABEL_108:
            v120 = v99[v81];
            v121 = v83[v81];
            if (v120 > 1)
            {
              if (v121 <= 1)
              {
                if (v121 != 1)
                {
LABEL_175:
                  (*(v191 + 32))(v99, v83, v189);
                  v99[v81] = 0;
                  goto LABEL_176;
                }

                goto LABEL_153;
              }
            }

            else
            {
              if (v121 <= 1)
              {
                if (v99 == v83)
                {
LABEL_176:
                  v143 = (&v99[v198] & v103);
                  v144 = (&v83[v198] & v103);
                  v151 = *(v200 + 48);
                  v152 = v151(v143, 1, v102);
                  v153 = v151(v144, 1, v102);
                  if (v152)
                  {
                    v145 = v175;
                    if (!v153)
                    {
                      (*(v200 + 32))(v143, v144, v102);
                      (*(v200 + 56))(v143, 0, 1, v102);
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    v145 = v175;
                    if (!v153)
                    {
                      (*(v200 + 40))(v143, v144, v102);
                      goto LABEL_183;
                    }

                    (*(v200 + 8))(v143, v102);
                  }

                  v148 = v143;
                  v149 = v144;
LABEL_182:
                  memcpy(v148, v149, v145);
                  goto LABEL_183;
                }

                v32 = v120 == 1;
                v122 = v191;
                if (v32)
                {
                  v122 = v169;
                  v123 = v171;
                }

                else
                {
                  v123 = v189;
                }

                (*(v122 + 8))(v99, v123);
                v124 = v83[v81];
                v125 = v124 - 2;
                if (v124 < 2)
                {
                  goto LABEL_174;
                }

                if (v81 <= 3)
                {
                  v126 = v81;
                }

                else
                {
                  v126 = 4;
                }

                if (v126 <= 1)
                {
                  if (!v126)
                  {
                    goto LABEL_174;
                  }

                  v127 = *v83;
                }

                else if (v126 == 2)
                {
                  v127 = *v83;
                }

                else if (v126 == 3)
                {
                  v127 = *v83 | (v83[2] << 16);
                }

                else
                {
                  v127 = *v83;
                }

                v150 = (v127 | (v125 << (8 * v81))) + 2;
                v124 = v127 + 2;
                if (v81 < 4)
                {
                  v124 = v150;
                }

LABEL_174:
                if (v124 != 1)
                {
                  goto LABEL_175;
                }

LABEL_153:
                (*(v169 + 32))(v99, v83, v171);
                v99[v81] = 1;
                goto LABEL_176;
              }

              v32 = v120 == 1;
              v146 = v191;
              if (v32)
              {
                v146 = v169;
                v147 = v171;
              }

              else
              {
                v147 = v189;
              }

              (*(v146 + 8))(v99, v147);
            }

            memcpy(v99, v83, v167);
            goto LABEL_176;
          }

          v131 = v202;
          if (v101 < 0xFFFFFF03)
          {
            v132 = v100 == 1;
            if (v100 <= 1)
            {
              goto LABEL_133;
            }

            goto LABEL_138;
          }
        }

LABEL_150:
        memcpy(v99, v83, v173);
LABEL_184:
        v91 = v184;
        goto LABEL_185;
      }

LABEL_102:
      v109 = v74;
      v110 = *(v191 + 8);
      v110(v179, v189);
      v111 = (v179 + v78) & v204;
      if (v76 > 0xFD)
      {
        v115 = v200;
        v114 = v202;
        v112 = v196;
        v91 = v184;
        if ((*(v200 + 48))((v198 + v111) & v202, v177, v196) <= 1)
        {
          v130 = *(v111 + v194);
          v116 = v130 == 1;
          if (v130 > 1)
          {
            goto LABEL_154;
          }

LABEL_128:
          if (v116)
          {
            (*(v169 + 8))(v111, v171);
          }

          else
          {
            v110(v111, v189);
          }

LABEL_154:
          if (!(*(v115 + 48))((v198 + v111) & v114, 1, v112))
          {
            (*(v115 + 8))((v198 + v111) & v114, v112);
          }
        }
      }

      else
      {
        v112 = v196;
        v113 = *(v111 + v194);
        v91 = v184;
        v115 = v200;
        v114 = v202;
        if (v113 - 255 < 0xFFFFFF03)
        {
          v116 = v113 == 1;
          if (v113 > 1)
          {
            goto LABEL_154;
          }

          goto LABEL_128;
        }
      }

      v90 = v179;
      v74 = v109;
      goto LABEL_157;
    }

    if (v76 > 0xFD)
    {
      v134 = v78;
      v135 = v74;
      v129 = (*(v200 + 48))(&v83[v198] & v202, v177, v196);
      v74 = v135;
      v78 = v134;
      if (v129 < 2)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v128 = v83[v81];
      if ((v128 - 255) < 0xFFFFFF03)
      {
        goto LABEL_141;
      }

      v129 = (v128 ^ 0xFF) + 1;
    }

    if (v129 < 3)
    {
LABEL_141:
      v136 = *(v191 + 32);
      v136(v179, v74, v189);
      v99 = ((v179 + v78) & v204);
      if (v76 > 0xFD)
      {
        v139 = v200;
        v137 = v196;
        if ((*(v200 + 48))(&v83[v198] & v202, v177, v196) > 1)
        {
          goto LABEL_150;
        }

        v142 = v83[v194];
        v140 = v142 == 1;
        if (v142 <= 1)
        {
LABEL_144:
          v141 = v202;
          if (v140)
          {
            (*(v169 + 32))(v99, v83, v171);
            v99[v194] = 1;
          }

          else
          {
            v136(v99, v83, v189);
            v99[v194] = 0;
          }

          goto LABEL_158;
        }
      }

      else
      {
        v137 = v196;
        v138 = v83[v194];
        v139 = v200;
        if (v138 - 255 >= 0xFFFFFF03)
        {
          goto LABEL_150;
        }

        v140 = v138 == 1;
        if (v138 <= 1)
        {
          goto LABEL_144;
        }
      }

      memcpy(v99, v83, v167);
      v141 = v202;
LABEL_158:
      v143 = (&v99[v198] & v141);
      v144 = (&v83[v198] & v141);
      if ((*(v139 + 48))(v144, 1, v137))
      {
LABEL_166:
        v148 = v143;
        v149 = v144;
        v145 = v175;
        goto LABEL_182;
      }

      (*(v139 + 32))(v143, v144, v137);
      (*(v139 + 56))(v143, 0, 1, v137);
      v145 = v175;
LABEL_183:
      *(v143 + v145) = *(v144 + v145);
      goto LABEL_184;
    }
  }

  v90 = v179;
  v91 = v184;
LABEL_157:
  memcpy(v90, v74, v91);
LABEL_185:
  v154 = *(*(a3 + 16) - 8);
  v155 = v154 + 40;
  v156 = *(v154 + 80);
  v157 = v91 + (v186 & v204) + v156;
  v158 = (v182 + v157) & ~v156;
  v159 = (v79 + v157) & ~v156;
  (*(v154 + 40))(v158, v159);
  v160 = *(v155 + 24) + 7;
  v161 = (v160 + v158) & 0xFFFFFFFFFFFFFFF8;
  v162 = (v160 + v159) & 0xFFFFFFFFFFFFFFF8;
  *v161 = *v162;

  *(v161 + 8) = *(v162 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedTextStorage(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(type metadata accessor for AttributedString() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v59 = type metadata accessor for AttributedString.Index();
  v7 = *(v59 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(type metadata accessor for AttributeContainer() - 8);
  v14 = v13;
  v16 = *(v13 + 80);
  v15 = *(v13 + 84);
  v17 = *(v7 + 64);
  if (*(v11 + 64) <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v11 + 64);
  }

  v19 = *(v13 + 64);
  v20 = *(v8 + 84);
  if (v15)
  {
    v21 = v15 - 1;
  }

  else
  {
    v21 = 0;
  }

  if (v21 <= 0xFD)
  {
    v22 = 253;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 - 1;
  if (v22 - 1 <= v20)
  {
    v24 = *(v8 + 84);
  }

  else
  {
    v24 = v22 - 1;
  }

  v25 = v24 - 1;
  if ((v24 - 1) <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v24 - 1;
  }

  v27 = *(*(a3 + 16) - 8);
  v28 = *(v27 + 84);
  v29 = *(v27 + 80);
  v30 = v16;
  v31 = v12 | v9 | v16;
  v32 = v31 | 7;
  v33 = ((v31 | 7) + v6) & ~(v31 | 7);
  if (v28 <= v26)
  {
    v34 = v26;
  }

  else
  {
    v34 = *(v27 + 84);
  }

  v35 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v36 = v18 + v30 + 1;
  if (!v15)
  {
    ++v19;
  }

  v37 = v19 + (v36 & ~v30) + 1;
  v38 = v33 + ((v31 + 16) & ~v31) + v37;
  if (v35 > v38)
  {
    v38 = v35;
  }

  if (!a2)
  {
    return 0;
  }

  v39 = v38 + v32 + 1;
  v40 = v17 + v31;
  v41 = ((v31 + 8) & ~v31) + ((v17 + v31) & ~v31) + v37 + v29;
  if (v34 >= a2)
  {
    goto LABEL_47;
  }

  v42 = ((*(v27 + 64) + ((v41 + (v39 & ~v32)) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v43 = (a2 - v34 + 255) >> 8;
  if (v42 <= 3)
  {
    v44 = v43 + 1;
  }

  else
  {
    v44 = 2;
  }

  if (v44 >= 0x10000)
  {
    v45 = 4;
  }

  else
  {
    v45 = 2;
  }

  if (v44 < 0x100)
  {
    v45 = 1;
  }

  if (v44 >= 2)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (v46 > 1)
  {
    if (v46 == 2)
    {
      v47 = *&a1[v42];
      if (!*&a1[v42])
      {
        goto LABEL_47;
      }
    }

    else
    {
      v47 = *&a1[v42];
      if (!v47)
      {
        goto LABEL_47;
      }
    }

LABEL_43:
    v49 = (v47 - 1) << (8 * v42);
    if (v42 <= 3)
    {
      v50 = *a1;
    }

    else
    {
      v49 = 0;
      v50 = *a1;
    }

    return v34 + (v50 | v49) + 1;
  }

  if (v46)
  {
    v47 = a1[v42];
    if (a1[v42])
    {
      goto LABEL_43;
    }
  }

LABEL_47:
  v51 = (&a1[v39] & ~v32);
  if (v26 >= v28)
  {
    if (v25 < 0)
    {
      if (v20 >= v23)
      {
        v57 = (*(v8 + 48))((v51 + v31 + 8) & ~v31, v20, v59, v27);
      }

      else
      {
        v54 = (v40 + ((v51 + v31 + 8) & ~v31)) & ~v31;
        if (v21 > 0xFD)
        {
          v56 = (*(v14 + 48))((v36 + v54) & ~v30);
        }

        else
        {
          v55 = *(v54 + v18);
          if (v55 >= 2)
          {
            v56 = (v55 ^ 0xFF) + 1;
          }

          else
          {
            v56 = 0;
          }
        }

        v58 = v56 - 1;
        if (v56 < 2)
        {
          v58 = 0;
        }

        if (v58 >= 2)
        {
          v57 = v58 - 1;
        }

        else
        {
          v57 = 0;
        }
      }

      if (v57 >= 2)
      {
        return v57 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v53 = *v51;
      if (*v51 >= 0xFFFFFFFF)
      {
        LODWORD(v53) = -1;
      }

      return (v53 + 1);
    }
  }

  else
  {
    v52 = *(v27 + 48);

    return v52((v51 + v41) & ~v29, v28);
  }
}

void storeEnumTagSinglePayload for AttributedTextStorage(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v6 + 64);
  v70 = type metadata accessor for AttributedString.Index();
  v8 = *(v70 - 8);
  v73 = v8;
  v9 = *(v8 + 80);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = 0;
  v14 = *(type metadata accessor for AttributeContainer() - 8);
  v15 = v14;
  v17 = *(v14 + 80);
  v16 = *(v14 + 84);
  v18 = *(v8 + 64);
  if (*(v11 + 64) <= v18)
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v11 + 64);
  }

  v20 = *(v14 + 64);
  v21 = *(v8 + 84);
  if (v16)
  {
    v22 = v16 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= 0xFD)
  {
    v23 = 253;
  }

  else
  {
    v23 = v22;
  }

  v69 = v23;
  v24 = v23 - 1;
  if (v23 - 1 <= v21)
  {
    v25 = *(v8 + 84);
  }

  else
  {
    v25 = v23 - 1;
  }

  v71 = v25;
  v26 = v25 - 1;
  if ((v25 - 1) <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v25 - 1;
  }

  v28 = *(*(a4 + 16) - 8);
  v29 = *(v28 + 84);
  v30 = *(v28 + 80);
  v31 = v17;
  v32 = v12 | v9 | v17;
  v33 = v32 | 7;
  v68 = v19;
  v34 = v19 + 1;
  if (v29 <= v27)
  {
    v35 = v27;
  }

  else
  {
    v35 = *(v28 + 84);
  }

  v36 = (v34 + v17) & ~v17;
  if (v16)
  {
    v37 = v20;
  }

  else
  {
    v37 = v20 + 1;
  }

  v38 = v36 + v37;
  v39 = v36 + v37 + 1;
  v40 = (((v32 | 7) + v7) & ~(v32 | 7)) + ((v32 + 16) & ~v32) + v39;
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v40)
  {
    v40 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v41 = v40 + v33 + 1;
  v42 = v18 + v32;
  v43 = v39 + ((v18 + v32) & ~v32);
  v44 = v43 + ((v32 + 8) & ~v32);
  v45 = ((*(v28 + 64) + ((v44 + v30 + (v41 & ~v33)) & ~v30) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v35 < a3)
  {
    if (v45 <= 3)
    {
      v46 = ((a3 - v35 + 255) >> 8) + 1;
    }

    else
    {
      v46 = 2;
    }

    if (v46 >= 0x10000)
    {
      v47 = 4;
    }

    else
    {
      v47 = 2;
    }

    if (v46 < 0x100)
    {
      v47 = 1;
    }

    if (v46 >= 2)
    {
      v13 = v47;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v35 >= a2)
  {
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *&a1[v45] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_54;
      }

      *&a1[v45] = 0;
    }

    else if (v13)
    {
      a1[v45] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    }

    if (!a2)
    {
      return;
    }

LABEL_54:
    v50 = ~v33;
    v51 = &a1[v41] & ~v33;
    if (v27 < v29)
    {
      v52 = *(v28 + 56);

      v52((v44 + v30 + v51) & ~v30, a2, v29);
      return;
    }

    if (v27 < a2)
    {
      if (v44 <= 3)
      {
        v53 = ~(-1 << (8 * v44));
      }

      else
      {
        v53 = -1;
      }

      if (!v44)
      {
        return;
      }

      v54 = v53 & (~v27 + a2);
      if (v44 <= 3)
      {
        v55 = v43 + ((v32 + 8) & ~v32);
      }

      else
      {
        v55 = 4;
      }

      v56 = (&a1[v41] & v50);
      v34 = v44;
      goto LABEL_99;
    }

    if ((v26 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v57 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v57 = a2 - 1;
      }

      *v51 = v57;
      return;
    }

    v51 = (v32 + 8 + v51) & ~v32;
    if (v26 >= a2)
    {
      if (a2 < v71)
      {
        v59 = a2 + 1;
        if (v21 >= v24)
        {
          v63 = *(v73 + 56);

          v63(v51, a2 + 1, v21, v70);
          return;
        }

        v51 = (v42 + v51) & ~v32;
        v60 = v38 + 1;
        if (a2 >= v24)
        {
          if (v60 <= 3)
          {
            v64 = ~(-1 << (8 * v60));
          }

          else
          {
            v64 = -1;
          }

          if (v38 == -1)
          {
            return;
          }

          v54 = v64 & (a2 - v24);
        }

        else
        {
          if (a2 + 2 <= v69)
          {
            if (v22 > 0xFD)
            {
              v51 = (v34 + v31 + v51) & ~v31;
              if (a2 + 2 <= v22)
              {
                v67 = *(v15 + 56);

                v67(v51, a2 + 3);
                return;
              }

              if (v37 <= 3)
              {
                v65 = ~(-1 << (8 * v37));
              }

              else
              {
                v65 = -1;
              }

              if (!v37)
              {
                return;
              }

              v54 = v65 & (v59 - v22);
              if (v37 <= 3)
              {
                v55 = v37;
              }

              else
              {
                v55 = 4;
              }

              v56 = v51;
              v34 = v37;
            }

            else
            {
              if (a2 <= 0xFB)
              {
                *(v51 + v68) = -3 - a2;
                return;
              }

              if (v34 <= 3)
              {
                v66 = ~(-1 << (8 * v34));
              }

              else
              {
                v66 = -1;
              }

              if (!v34)
              {
                return;
              }

              v54 = v66 & (a2 - 252);
              if (v34 <= 3)
              {
                v55 = v34;
              }

              else
              {
                v55 = 4;
              }

              v56 = v51;
            }

LABEL_99:
            bzero(v56, v34);
            if (v55 > 2)
            {
              if (v55 == 3)
              {
                *v51 = v54;
                *(v51 + 2) = BYTE2(v54);
              }

              else
              {
                *v51 = v54;
              }
            }

            else if (v55 == 1)
            {
              *v51 = v54;
            }

            else
            {
              *v51 = v54;
            }

            return;
          }

          if (v60 <= 3)
          {
            v61 = ~(-1 << (8 * v60));
          }

          else
          {
            v61 = -1;
          }

          if (v38 == -1)
          {
            return;
          }

          v54 = v61 & (v59 - v69);
        }

        if (v60 <= 3)
        {
          v55 = v38 + 1;
        }

        else
        {
          v55 = 4;
        }

        v56 = v51;
        v34 = (v38 + 1);
        goto LABEL_99;
      }

      if (v43 <= 3)
      {
        v62 = ~(-1 << (8 * v43));
      }

      else
      {
        v62 = -1;
      }

      if (!v43)
      {
        return;
      }

      v54 = v62 & (a2 - v71);
    }

    else
    {
      if (v43 <= 3)
      {
        v58 = ~(-1 << (8 * v43));
      }

      else
      {
        v58 = -1;
      }

      if (!v43)
      {
        return;
      }

      v54 = v58 & (a2 - v71);
    }

    if (v43 <= 3)
    {
      v55 = v43;
    }

    else
    {
      v55 = 4;
    }

    v56 = v51;
    v34 = v43;
    goto LABEL_99;
  }

  v48 = ~v35 + a2;
  bzero(a1, v45);
  if (v45 <= 3)
  {
    v49 = (v48 >> 8) + 1;
  }

  else
  {
    v49 = 1;
  }

  if (v45 <= 3)
  {
    *a1 = v48;
    if (v13 > 1)
    {
LABEL_42:
      if (v13 == 2)
      {
        *&a1[v45] = v49;
      }

      else
      {
        *&a1[v45] = v49;
      }

      return;
    }
  }

  else
  {
    *a1 = v48;
    if (v13 > 1)
    {
      goto LABEL_42;
    }
  }

  if (v13)
  {
    a1[v45] = v49;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedStringUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = type metadata accessor for AttributedStringUpdates.Element(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(v8, 1, v9))
    {
      type metadata accessor for AttributedStringUpdates.Element?(0);
      memcpy(v7, v8, *(*(v12 - 8) + 64));
    }

    else
    {
      v36 = v10;
      v13 = type metadata accessor for AttributedString.Index();
      v14 = *(*(v13 - 8) + 16);
      v14(v7, v8, v13);
      v15 = *(v9 + 20);
      v16 = &v7[v15];
      v17 = &v8[v15];
      v18 = type metadata accessor for AttributedTextSelection(0);
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v17, 1, v18))
      {
        type metadata accessor for AttributedTextSelection?(0);
        memcpy(v16, v17, *(*(v20 - 8) + 64));
      }

      else
      {
        v34 = v19;
        __dst = v16;
        v21 = type metadata accessor for AttributedTextSelection.Indices(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v17, 1, v21))
        {
          type metadata accessor for AttributedTextSelection.Indices?(0);
          memcpy(__dst, v17, *(*(v23 - 8) + 64));
        }

        else
        {
          v33 = v22;
          v24 = v21;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            v26 = __dst;
            (*(*(v25 - 8) + 16))(__dst, v17, v25);
          }

          else
          {
            v26 = __dst;
            v14(__dst, v17, v13);
          }

          swift_storeEnumTagMultiPayload();
          (*(v33 + 56))(v26, 0, 1, v24);
        }

        v27 = *(v18 + 20);
        v28 = type metadata accessor for AttributeContainer();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(&v17[v27], 1, v28))
        {
          v30 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v31 = __dst;
          memcpy(&__dst[v27], &v17[v27], *(*(v30 - 8) + 64));
        }

        else
        {
          v31 = __dst;
          (*(v29 + 16))(&__dst[v27], &v17[v27], v28);
          (*(v29 + 56))(&__dst[v27], 0, 1, v28);
        }

        v31[*(v18 + 24)] = v17[*(v18 + 24)];
        (*(v34 + 56))(v31, 0, 1, v18);
      }

      (*(v36 + 56))(v7, 0, 1, v9);
    }
  }

  return v5;
}

uint64_t destroy for AttributedStringUpdates(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for AttributedStringUpdates.Element(0);
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (!result)
  {
    v7 = type metadata accessor for AttributedString.Index();
    v8 = *(*(v7 - 8) + 8);
    v8(v4, v7);
    v9 = v4 + *(v5 + 20);
    v10 = type metadata accessor for AttributedTextSelection(0);
    result = (*(*(v10 - 8) + 48))(v9, 1, v10);
    if (!result)
    {
      v11 = type metadata accessor for AttributedTextSelection.Indices(0);
      if (!(*(*(v11 - 8) + 48))(v9, 1, v11))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v12 - 8) + 8))(v9, v12);
        }

        else
        {
          v8(v9, v7);
        }
      }

      v13 = *(v10 + 20);
      v14 = type metadata accessor for AttributeContainer();
      v16 = *(v14 - 8);
      result = (*(v16 + 48))(v9 + v13, 1, v14);
      if (!result)
      {
        v15 = *(v16 + 8);

        return v15(v9 + v13, v14);
      }
    }
  }

  return result;
}

void *initializeWithCopy for AttributedStringUpdates(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for AttributedStringUpdates.Element(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(v6, 1, v7))
  {
    type metadata accessor for AttributedStringUpdates.Element?(0);
    memcpy(v5, v6, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = type metadata accessor for AttributedString.Index();
    v12 = *(*(v11 - 8) + 16);
    v12(v5, v6, v11);
    v13 = *(v7 + 20);
    v40 = v5;
    v14 = &v5[v13];
    v15 = &v6[v13];
    v16 = type metadata accessor for AttributedTextSelection(0);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16))
    {
      type metadata accessor for AttributedTextSelection?(0);
      memcpy(v14, v15, *(*(v18 - 8) + 64));
      v19 = v40;
    }

    else
    {
      v36 = v12;
      v38 = v16;
      __dst = v14;
      v37 = v17;
      v20 = type metadata accessor for AttributedTextSelection.Indices(0);
      v21 = *(v20 - 8);
      v22 = v15;
      if ((*(v21 + 48))(v15, 1, v20))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(__dst, v15, *(*(v23 - 8) + 64));
        v24 = v38;
      }

      else
      {
        v25 = v20;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v27 = __dst;
          v28 = v15;
          (*(*(v26 - 8) + 16))(__dst, v15, v26);
        }

        else
        {
          v27 = __dst;
          v28 = v15;
          v36(__dst, v15, v11);
        }

        swift_storeEnumTagMultiPayload();
        (*(v21 + 56))(v27, 0, 1, v25);
        v24 = v38;
        v22 = v28;
      }

      v29 = *(v24 + 20);
      v30 = type metadata accessor for AttributeContainer();
      v31 = *(v30 - 8);
      v32 = v22;
      if ((*(v31 + 48))(&v22[v29], 1, v30))
      {
        v33 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v34 = __dst;
        memcpy(&__dst[v29], &v32[v29], *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = __dst;
        (*(v31 + 16))(&__dst[v29], &v32[v29], v30);
        (*(v31 + 56))(&__dst[v29], 0, 1, v30);
      }

      v19 = v40;
      v34[*(v38 + 24)] = v32[*(v38 + 24)];
      (*(v37 + 56))(v34, 0, 1);
    }

    (*(v8 + 56))(v19, 0, 1, v7);
  }

  return a1;
}

void *assignWithCopy for AttributedStringUpdates(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for AttributedStringUpdates.Element(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (v13)
    {
      outlined destroy of AttributedTextSelection.Indices(v7, type metadata accessor for AttributedStringUpdates.Element);
      goto LABEL_7;
    }

    v26 = type metadata accessor for AttributedString.Index();
    v79 = *(v26 - 8);
    (*(v79 + 24))(v7, v8, v26);
    v27 = *(v9 + 20);
    v28 = (v7 + v27);
    v29 = &v8[v27];
    v30 = type metadata accessor for AttributedTextSelection(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v32(v28, 1, v30);
    v34 = v32(v29, 1, v30);
    if (v33)
    {
      if (!v34)
      {
        v35 = type metadata accessor for AttributedTextSelection.Indices(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v29, 1, v35))
        {
          type metadata accessor for AttributedTextSelection.Indices?(0);
          memcpy(v28, v29, *(*(v37 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v60 - 8) + 16))(v28, v29, v60);
          }

          else
          {
            (*(v79 + 16))(v28, v29, v26);
          }

          swift_storeEnumTagMultiPayload();
          (*(v36 + 56))(v28, 0, 1, v35);
        }

        v62 = *(v30 + 20);
        v63 = type metadata accessor for AttributeContainer();
        v64 = *(v63 - 8);
        if ((*(v64 + 48))(&v29[v62], 1, v63))
        {
          v65 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v28[v62], &v29[v62], *(*(v65 - 8) + 64));
        }

        else
        {
          (*(v64 + 16))(&v28[v62], &v29[v62], v63);
          (*(v64 + 56))(&v28[v62], 0, 1, v63);
        }

        v28[*(v30 + 24)] = v29[*(v30 + 24)];
        (*(v31 + 56))(v28, 0, 1, v30);
        return a1;
      }

      goto LABEL_17;
    }

    if (v34)
    {
      outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection);
LABEL_17:
      type metadata accessor for AttributedTextSelection?(0);
      v23 = *(*(v43 - 8) + 64);
      v24 = v28;
      v25 = v29;
      goto LABEL_8;
    }

    v48 = type metadata accessor for AttributedTextSelection.Indices(0);
    __dsta = *(v48 - 8);
    v49 = __dsta[6];
    v50 = v49(v28, 1, v48);
    v51 = v49(v29, 1, v48);
    if (v50)
    {
      if (!v51)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v52 - 8) + 16))(v28, v29, v52);
        }

        else
        {
          (*(v79 + 16))(v28, v29, v26);
        }

        swift_storeEnumTagMultiPayload();
        (__dsta[7])(v28, 0, 1, v48);
        goto LABEL_49;
      }
    }

    else
    {
      if (!v51)
      {
        if (a1 != a2)
        {
          outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v66 - 8) + 16))(v28, v29, v66);
          }

          else
          {
            (*(v79 + 16))(v28, v29, v26);
          }

          swift_storeEnumTagMultiPayload();
        }

LABEL_49:
        v67 = *(v30 + 20);
        v68 = type metadata accessor for AttributeContainer();
        v69 = *(v68 - 8);
        v70 = *(v69 + 48);
        v71 = v70(&v28[v67], 1, v68);
        v72 = v70(&v29[v67], 1, v68);
        if (v71)
        {
          if (!v72)
          {
            (*(v69 + 16))(&v28[v67], &v29[v67], v68);
            (*(v69 + 56))(&v28[v67], 0, 1, v68);
LABEL_55:
            v28[*(v30 + 24)] = v29[*(v30 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v72)
          {
            (*(v69 + 24))(&v28[v67], &v29[v67], v68);
            goto LABEL_55;
          }

          (*(v69 + 8))(&v28[v67], v68);
        }

        v73 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v28[v67], &v29[v67], *(*(v73 - 8) + 64));
        goto LABEL_55;
      }

      outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v28, v29, *(*(v61 - 8) + 64));
    goto LABEL_49;
  }

  if (v13)
  {
LABEL_7:
    type metadata accessor for AttributedStringUpdates.Element?(0);
    v23 = *(*(v22 - 8) + 64);
    v24 = v7;
    v25 = v8;
LABEL_8:
    memcpy(v24, v25, v23);
    return a1;
  }

  v14 = type metadata accessor for AttributedString.Index();
  v15 = *(*(v14 - 8) + 16);
  v15(v7, v8, v14);
  v16 = *(v9 + 20);
  v17 = (v7 + v16);
  v18 = &v8[v16];
  v19 = type metadata accessor for AttributedTextSelection(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v74 = v15;
    v76 = v19;
    __dst = v17;
    v75 = v20;
    v38 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v38 - 8);
    v40 = v18;
    if ((*(v39 + 48))(v18, 1, v38))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(__dst, v18, *(*(v41 - 8) + 64));
      v42 = v76;
    }

    else
    {
      v44 = v38;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v46 = __dst;
        v47 = v18;
        (*(*(v45 - 8) + 16))(__dst, v18, v45);
      }

      else
      {
        v46 = __dst;
        v47 = v18;
        v74(__dst, v18, v14);
      }

      swift_storeEnumTagMultiPayload();
      (*(v39 + 56))(v46, 0, 1, v44);
      v42 = v76;
      v40 = v47;
    }

    v53 = *(v42 + 20);
    v54 = type metadata accessor for AttributeContainer();
    v55 = *(v54 - 8);
    v56 = v40;
    if ((*(v55 + 48))(&v40[v53], 1, v54))
    {
      v57 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      v58 = __dst;
      memcpy(&__dst[v53], &v56[v53], *(*(v57 - 8) + 64));
    }

    else
    {
      v58 = __dst;
      (*(v55 + 16))(&__dst[v53], &v56[v53], v54);
      (*(v55 + 56))(&__dst[v53], 0, 1, v54);
    }

    v58[*(v76 + 24)] = v56[*(v76 + 24)];
    (*(v75 + 56))(v58, 0, 1);
  }

  (*(v10 + 56))(v7, 0, 1, v9);
  return a1;
}

void *initializeWithTake for AttributedStringUpdates(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for AttributedStringUpdates.Element(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    type metadata accessor for AttributedStringUpdates.Element?(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for AttributedString.Index();
    v11 = *(*(v10 - 8) + 32);
    v11(v5, v6, v10);
    v12 = *(v7 + 20);
    v38 = v5;
    v13 = &v5[v12];
    v14 = &v6[v12];
    v15 = type metadata accessor for AttributedTextSelection(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v14, 1, v15))
    {
      type metadata accessor for AttributedTextSelection?(0);
      memcpy(v13, v14, *(*(v17 - 8) + 64));
    }

    else
    {
      v34 = v11;
      v36 = v15;
      __dst = v13;
      v35 = v16;
      v18 = type metadata accessor for AttributedTextSelection.Indices(0);
      v19 = *(v18 - 8);
      v20 = v14;
      if ((*(v19 + 48))(v14, 1, v18))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(__dst, v14, *(*(v21 - 8) + 64));
        v22 = v36;
      }

      else
      {
        v23 = v18;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v25 = __dst;
          v26 = v14;
          (*(*(v24 - 8) + 32))(__dst, v14, v24);
        }

        else
        {
          v25 = __dst;
          v26 = v14;
          v34(__dst, v14, v10);
        }

        swift_storeEnumTagMultiPayload();
        (*(v19 + 56))(v25, 0, 1, v23);
        v22 = v36;
        v20 = v26;
      }

      v27 = *(v22 + 20);
      v28 = type metadata accessor for AttributeContainer();
      v29 = *(v28 - 8);
      v30 = v20;
      if ((*(v29 + 48))(&v20[v27], 1, v28))
      {
        v31 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v32 = __dst;
        memcpy(&__dst[v27], &v30[v27], *(*(v31 - 8) + 64));
      }

      else
      {
        v32 = __dst;
        (*(v29 + 32))(&__dst[v27], &v30[v27], v28);
        (*(v29 + 56))(&__dst[v27], 0, 1, v28);
      }

      v32[*(v36 + 24)] = v30[*(v36 + 24)];
      (*(v35 + 56))(v32, 0, 1);
    }

    (*(v8 + 56))(v38, 0, 1, v7);
  }

  return a1;
}

void *assignWithTake for AttributedStringUpdates(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for AttributedStringUpdates.Element(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (v13)
    {
      outlined destroy of AttributedTextSelection.Indices(v7, type metadata accessor for AttributedStringUpdates.Element);
      goto LABEL_7;
    }

    v26 = type metadata accessor for AttributedString.Index();
    v79 = *(v26 - 8);
    (*(v79 + 40))(v7, v8, v26);
    v27 = *(v9 + 20);
    v28 = (v7 + v27);
    v29 = &v8[v27];
    v30 = type metadata accessor for AttributedTextSelection(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v32(v28, 1, v30);
    v34 = v32(v29, 1, v30);
    if (v33)
    {
      if (!v34)
      {
        v35 = type metadata accessor for AttributedTextSelection.Indices(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v29, 1, v35))
        {
          type metadata accessor for AttributedTextSelection.Indices?(0);
          memcpy(v28, v29, *(*(v37 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v60 - 8) + 32))(v28, v29, v60);
          }

          else
          {
            (*(v79 + 32))(v28, v29, v26);
          }

          swift_storeEnumTagMultiPayload();
          (*(v36 + 56))(v28, 0, 1, v35);
        }

        v62 = *(v30 + 20);
        v63 = type metadata accessor for AttributeContainer();
        v64 = *(v63 - 8);
        if ((*(v64 + 48))(&v29[v62], 1, v63))
        {
          v65 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v28[v62], &v29[v62], *(*(v65 - 8) + 64));
        }

        else
        {
          (*(v64 + 32))(&v28[v62], &v29[v62], v63);
          (*(v64 + 56))(&v28[v62], 0, 1, v63);
        }

        v28[*(v30 + 24)] = v29[*(v30 + 24)];
        (*(v31 + 56))(v28, 0, 1, v30);
        return a1;
      }

      goto LABEL_17;
    }

    if (v34)
    {
      outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection);
LABEL_17:
      type metadata accessor for AttributedTextSelection?(0);
      v23 = *(*(v43 - 8) + 64);
      v24 = v28;
      v25 = v29;
      goto LABEL_8;
    }

    v48 = type metadata accessor for AttributedTextSelection.Indices(0);
    __dsta = *(v48 - 8);
    v49 = __dsta[6];
    v50 = v49(v28, 1, v48);
    v51 = v49(v29, 1, v48);
    if (v50)
    {
      if (!v51)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v52 - 8) + 32))(v28, v29, v52);
        }

        else
        {
          (*(v79 + 32))(v28, v29, v26);
        }

        swift_storeEnumTagMultiPayload();
        (__dsta[7])(v28, 0, 1, v48);
        goto LABEL_49;
      }
    }

    else
    {
      if (!v51)
      {
        if (a1 != a2)
        {
          outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v66 - 8) + 32))(v28, v29, v66);
          }

          else
          {
            (*(v79 + 32))(v28, v29, v26);
          }

          swift_storeEnumTagMultiPayload();
        }

LABEL_49:
        v67 = *(v30 + 20);
        v68 = type metadata accessor for AttributeContainer();
        v69 = *(v68 - 8);
        v70 = *(v69 + 48);
        v71 = v70(&v28[v67], 1, v68);
        v72 = v70(&v29[v67], 1, v68);
        if (v71)
        {
          if (!v72)
          {
            (*(v69 + 32))(&v28[v67], &v29[v67], v68);
            (*(v69 + 56))(&v28[v67], 0, 1, v68);
LABEL_55:
            v28[*(v30 + 24)] = v29[*(v30 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v72)
          {
            (*(v69 + 40))(&v28[v67], &v29[v67], v68);
            goto LABEL_55;
          }

          (*(v69 + 8))(&v28[v67], v68);
        }

        v73 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v28[v67], &v29[v67], *(*(v73 - 8) + 64));
        goto LABEL_55;
      }

      outlined destroy of AttributedTextSelection.Indices(v28, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v28, v29, *(*(v61 - 8) + 64));
    goto LABEL_49;
  }

  if (v13)
  {
LABEL_7:
    type metadata accessor for AttributedStringUpdates.Element?(0);
    v23 = *(*(v22 - 8) + 64);
    v24 = v7;
    v25 = v8;
LABEL_8:
    memcpy(v24, v25, v23);
    return a1;
  }

  v14 = type metadata accessor for AttributedString.Index();
  v15 = *(*(v14 - 8) + 32);
  v15(v7, v8, v14);
  v16 = *(v9 + 20);
  v17 = (v7 + v16);
  v18 = &v8[v16];
  v19 = type metadata accessor for AttributedTextSelection(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v74 = v15;
    v76 = v19;
    __dst = v17;
    v75 = v20;
    v38 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v38 - 8);
    v40 = v18;
    if ((*(v39 + 48))(v18, 1, v38))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(__dst, v18, *(*(v41 - 8) + 64));
      v42 = v76;
    }

    else
    {
      v44 = v38;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v46 = __dst;
        v47 = v18;
        (*(*(v45 - 8) + 32))(__dst, v18, v45);
      }

      else
      {
        v46 = __dst;
        v47 = v18;
        v74(__dst, v18, v14);
      }

      swift_storeEnumTagMultiPayload();
      (*(v39 + 56))(v46, 0, 1, v44);
      v42 = v76;
      v40 = v47;
    }

    v53 = *(v42 + 20);
    v54 = type metadata accessor for AttributeContainer();
    v55 = *(v54 - 8);
    v56 = v40;
    if ((*(v55 + 48))(&v40[v53], 1, v54))
    {
      v57 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      v58 = __dst;
      memcpy(&__dst[v53], &v56[v53], *(*(v57 - 8) + 64));
    }

    else
    {
      v58 = __dst;
      (*(v55 + 32))(&__dst[v53], &v56[v53], v54);
      (*(v55 + 56))(&__dst[v53], 0, 1, v54);
    }

    v58[*(v76 + 24)] = v56[*(v76 + 24)];
    (*(v75 + 56))(v58, 0, 1);
  }

  (*(v10 + 56))(v7, 0, 1, v9);
  return a1;
}

void type metadata completion function for AttributedStringUpdates()
{
  type metadata accessor for AttributedStringUpdates.Element?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedStringUpdates.Element(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for AttributedString.Index();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = *(a3 + 20);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = type metadata accessor for AttributedTextSelection(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      type metadata accessor for AttributedTextSelection?(0);
      memcpy(v10, v11, *(*(v14 - 8) + 64));
    }

    else
    {
      v16 = type metadata accessor for AttributedTextSelection.Indices(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v11, 1, v16))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v10, v11, *(*(v18 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v19 - 8) + 16))(v10, v11, v19);
        }

        else
        {
          v8(v10, v11, v7);
        }

        swift_storeEnumTagMultiPayload();
        (*(v17 + 56))(v10, 0, 1, v16);
      }

      v20 = *(v12 + 20);
      v21 = type metadata accessor for AttributeContainer();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(&v11[v20], 1, v21))
      {
        v23 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v10[v20], &v11[v20], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(v22 + 16))(&v10[v20], &v11[v20], v21);
        (*(v22 + 56))(&v10[v20], 0, 1, v21);
      }

      v10[*(v12 + 24)] = v11[*(v12 + 24)];
      (*(v13 + 56))(v10, 0, 1, v12);
    }
  }

  return a1;
}

uint64_t destroy for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.Index();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v6 = a1 + *(a2 + 20);
  v7 = type metadata accessor for AttributedTextSelection(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {
    v9 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        (*(*(v10 - 8) + 8))(v6, v10);
      }

      else
      {
        v5(v6, v4);
      }
    }

    v11 = *(v7 + 20);
    v12 = type metadata accessor for AttributeContainer();
    v14 = *(v12 - 8);
    result = (*(v14 + 48))(v6 + v11, 1, v12);
    if (!result)
    {
      v13 = *(v14 + 8);

      return v13(v6 + v11, v12);
    }
  }

  return result;
}

uint64_t initializeWithCopy for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for AttributedTextSelection(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for AttributedTextSelection.Indices(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v9, v10, *(*(v16 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        (*(*(v17 - 8) + 16))(v9, v10, v17);
      }

      else
      {
        v7(v9, v10, v6);
      }

      swift_storeEnumTagMultiPayload();
      (*(v15 + 56))(v9, 0, 1, v14);
    }

    v18 = *(v11 + 20);
    v19 = type metadata accessor for AttributeContainer();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(&v10[v18], 1, v19))
    {
      v21 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v9[v18], &v10[v18], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(&v9[v18], &v10[v18], v19);
      (*(v20 + 56))(&v9[v18], 0, 1, v19);
    }

    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithCopy for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v40 = *(v6 - 8);
  (*(v40 + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for AttributedTextSelection(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (v14)
    {
      outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection);
      goto LABEL_7;
    }

    v19 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v19 - 8);
    v20 = *(v39 + 48);
    v21 = v20(v8, 1, v19);
    v22 = v20(v9, 1, v19);
    if (v21)
    {
      if (!v22)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v23 - 8) + 16))(v8, v9, v23);
        }

        else
        {
          (*(v40 + 16))(v8, v9, v6);
        }

        swift_storeEnumTagMultiPayload();
        (*(v39 + 56))(v8, 0, 1, v19);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v22)
      {
        if (a1 != a2)
        {
          outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v30 - 8) + 16))(v8, v9, v30);
          }

          else
          {
            (*(v40 + 16))(v8, v9, v6);
          }

          swift_storeEnumTagMultiPayload();
        }

LABEL_29:
        v31 = *(v10 + 20);
        v32 = type metadata accessor for AttributeContainer();
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        v35 = v34(&v8[v31], 1, v32);
        v36 = v34(&v9[v31], 1, v32);
        if (v35)
        {
          if (!v36)
          {
            (*(v33 + 16))(&v8[v31], &v9[v31], v32);
            (*(v33 + 56))(&v8[v31], 0, 1, v32);
LABEL_35:
            v8[*(v10 + 24)] = v9[*(v10 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v36)
          {
            (*(v33 + 24))(&v8[v31], &v9[v31], v32);
            goto LABEL_35;
          }

          (*(v33 + 8))(&v8[v31], v32);
        }

        v37 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v8[v31], &v9[v31], *(*(v37 - 8) + 64));
        goto LABEL_35;
      }

      outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v25 - 8) + 64));
    goto LABEL_29;
  }

  if (v14)
  {
LABEL_7:
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v8, v9, *(*(v18 - 8) + 64));
    return a1;
  }

  v15 = type metadata accessor for AttributedTextSelection.Indices(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v17 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      (*(*(v24 - 8) + 16))(v8, v9, v24);
    }

    else
    {
      (*(v40 + 16))(v8, v9, v6);
    }

    swift_storeEnumTagMultiPayload();
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  v26 = *(v10 + 20);
  v27 = type metadata accessor for AttributeContainer();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(&v9[v26], 1, v27))
  {
    v29 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v8[v26], &v9[v26], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v28 + 16))(&v8[v26], &v9[v26], v27);
    (*(v28 + 56))(&v8[v26], 0, 1, v27);
  }

  v8[*(v10 + 24)] = v9[*(v10 + 24)];
  (*(v11 + 56))(v8, 0, 1, v10);
  return a1;
}

uint64_t initializeWithTake for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for AttributedTextSelection(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for AttributedTextSelection.Indices(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v9, v10, *(*(v16 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        (*(*(v17 - 8) + 32))(v9, v10, v17);
      }

      else
      {
        v7(v9, v10, v6);
      }

      swift_storeEnumTagMultiPayload();
      (*(v15 + 56))(v9, 0, 1, v14);
    }

    v18 = *(v11 + 20);
    v19 = type metadata accessor for AttributeContainer();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(&v10[v18], 1, v19))
    {
      v21 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v9[v18], &v10[v18], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v20 + 32))(&v9[v18], &v10[v18], v19);
      (*(v20 + 56))(&v9[v18], 0, 1, v19);
    }

    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithTake for AttributedStringUpdates.Element(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v40 = *(v6 - 8);
  (*(v40 + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for AttributedTextSelection(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (v14)
    {
      outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection);
      goto LABEL_7;
    }

    v19 = type metadata accessor for AttributedTextSelection.Indices(0);
    v39 = *(v19 - 8);
    v20 = *(v39 + 48);
    v21 = v20(v8, 1, v19);
    v22 = v20(v9, 1, v19);
    if (v21)
    {
      if (!v22)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          (*(*(v23 - 8) + 32))(v8, v9, v23);
        }

        else
        {
          (*(v40 + 32))(v8, v9, v6);
        }

        swift_storeEnumTagMultiPayload();
        (*(v39 + 56))(v8, 0, 1, v19);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v22)
      {
        if (a1 != a2)
        {
          outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
            (*(*(v30 - 8) + 32))(v8, v9, v30);
          }

          else
          {
            (*(v40 + 32))(v8, v9, v6);
          }

          swift_storeEnumTagMultiPayload();
        }

LABEL_29:
        v31 = *(v10 + 20);
        v32 = type metadata accessor for AttributeContainer();
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        v35 = v34(&v8[v31], 1, v32);
        v36 = v34(&v9[v31], 1, v32);
        if (v35)
        {
          if (!v36)
          {
            (*(v33 + 32))(&v8[v31], &v9[v31], v32);
            (*(v33 + 56))(&v8[v31], 0, 1, v32);
LABEL_35:
            v8[*(v10 + 24)] = v9[*(v10 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v36)
          {
            (*(v33 + 40))(&v8[v31], &v9[v31], v32);
            goto LABEL_35;
          }

          (*(v33 + 8))(&v8[v31], v32);
        }

        v37 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v8[v31], &v9[v31], *(*(v37 - 8) + 64));
        goto LABEL_35;
      }

      outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices);
    }

    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v25 - 8) + 64));
    goto LABEL_29;
  }

  if (v14)
  {
LABEL_7:
    type metadata accessor for AttributedTextSelection?(0);
    memcpy(v8, v9, *(*(v18 - 8) + 64));
    return a1;
  }

  v15 = type metadata accessor for AttributedTextSelection.Indices(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15))
  {
    type metadata accessor for AttributedTextSelection.Indices?(0);
    memcpy(v8, v9, *(*(v17 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      (*(*(v24 - 8) + 32))(v8, v9, v24);
    }

    else
    {
      (*(v40 + 32))(v8, v9, v6);
    }

    swift_storeEnumTagMultiPayload();
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  v26 = *(v10 + 20);
  v27 = type metadata accessor for AttributeContainer();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(&v9[v26], 1, v27))
  {
    v29 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v8[v26], &v9[v26], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v28 + 32))(&v8[v26], &v9[v26], v27);
    (*(v28 + 56))(&v8[v26], 0, 1, v27);
  }

  v8[*(v10 + 24)] = v9[*(v10 + 24)];
  (*(v11 + 56))(v8, 0, 1, v10);
  return a1;
}

void type metadata completion function for AttributedStringUpdates.Element()
{
  type metadata accessor for AttributedString.Index();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedTextSelection?(319);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for BindingStorage.Storage(char *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v7;
    type metadata accessor for Binding<AttributedString>();
    v9 = *(v8 + 32);
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 16);

    v11(&a1[v9], a2 + v9, v10);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v12 + 48)] = *(a2 + *(v12 + 48));
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v15 = *(v14 + 48);
      v16 = &a1[v15];
      v17 = a2 + v15;
      v18 = *(a2 + v15 + 8);
      *v16 = *(a2 + v15);
      *(v16 + 1) = v18;
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v20 = *(v19 + 32);
      v21 = &v16[v20];
      v22 = &v17[v20];
      v23 = type metadata accessor for AttributedTextSelection.Indices(0);
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);

      if (v25(v22, 1, v23))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v21, v22, *(*(v26 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v28 = v27;
        }

        else
        {
          v28 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v28 - 8) + 16))(v21, v22);
        swift_storeEnumTagMultiPayload();
        (*(v24 + 56))(v21, 0, 1, v23);
      }

      v29 = type metadata accessor for AttributedTextSelection(0);
      v30 = *(v29 + 20);
      v31 = type metadata accessor for AttributeContainer();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(&v22[v30], 1, v31))
      {
        v33 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v21[v30], &v22[v30], *(*(v33 - 8) + 64));
      }

      else
      {
        (*(v32 + 16))(&v21[v30], &v22[v30], v31);
        (*(v32 + 56))(&v21[v30], 0, 1, v31);
      }

      v21[*(v29 + 24)] = v22[*(v29 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<AttributedString>();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t destroy for BindingStorage.Storage(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  type metadata accessor for Binding<AttributedString>();
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v8 = a1 + *(v7 + 48);

    type metadata accessor for Binding<AttributedTextSelection>(0);
    v10 = v8 + *(v9 + 32);
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v13 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v14 = type metadata accessor for AttributeContainer();
    v16 = *(v14 - 8);
    result = (*(v16 + 48))(v10 + v13, 1, v14);
    if (!result)
    {
      v15 = *(v16 + 8);

      return v15(v10 + v13, v14);
    }
  }

  return result;
}

char *initializeWithCopy for BindingStorage.Storage(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  type metadata accessor for Binding<AttributedString>();
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    *&a1[*(v10 + 48)] = *&a2[*(v10 + 48)];
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v12 = *(v11 + 48);
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = *&a2[v12 + 8];
    *v13 = *&a2[v12];
    *(v13 + 1) = v15;
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v17 = *(v16 + 32);
    v18 = &v13[v17];
    v19 = &v14[v17];
    v20 = type metadata accessor for AttributedTextSelection.Indices(0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);

    if (v22(v19, 1, v20))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v25 = v24;
      }

      else
      {
        v25 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v25 - 8) + 16))(v18, v19);
      swift_storeEnumTagMultiPayload();
      (*(v21 + 56))(v18, 0, 1, v20);
    }

    v26 = type metadata accessor for AttributedTextSelection(0);
    v27 = *(v26 + 20);
    v28 = type metadata accessor for AttributeContainer();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(&v19[v27], 1, v28))
    {
      v30 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v18[v27], &v19[v27], *(*(v30 - 8) + 64));
    }

    else
    {
      (*(v29 + 16))(&v18[v27], &v19[v27], v28);
      (*(v29 + 56))(&v18[v27], 0, 1, v28);
    }

    v18[*(v26 + 24)] = v19[*(v26 + 24)];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for BindingStorage.Storage(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for BindingStorage.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    type metadata accessor for Binding<AttributedString>();
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 16);

    v8(&a1[v6], &a2[v6], v7);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v11 = *(v10 + 48);
      v12 = &a1[v11];
      v13 = &a2[v11];
      *v12 = *&a2[v11];
      *(v12 + 1) = *&a2[v11 + 8];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v15 = *(v14 + 32);
      v16 = &v12[v15];
      v17 = &v13[v15];
      v18 = type metadata accessor for AttributedTextSelection.Indices(0);
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);

      if (v20(v17, 1, v18))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v16, v17, *(*(v21 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v23 = v22;
        }

        else
        {
          v23 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v23 - 8) + 16))(v16, v17);
        swift_storeEnumTagMultiPayload();
        (*(v19 + 56))(v16, 0, 1, v18);
      }

      v24 = type metadata accessor for AttributedTextSelection(0);
      v25 = *(v24 + 20);
      v26 = type metadata accessor for AttributeContainer();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v17[v25], 1, v26))
      {
        v28 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v16[v25], &v17[v25], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v27 + 16))(&v16[v25], &v17[v25], v26);
        (*(v27 + 56))(&v16[v25], 0, 1, v26);
      }

      v16[*(v24 + 24)] = v17[*(v24 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for BindingStorage.Storage(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  type metadata accessor for Binding<AttributedString>();
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v11 = *(v10 + 48);
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = *&a2[v11 + 8];
    *v12 = *&a2[v11];
    *(v12 + 1) = v14;
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v16 = *(v15 + 32);
    v17 = &v12[v16];
    v18 = &v13[v16];
    v19 = type metadata accessor for AttributedTextSelection.Indices(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v23 = v22;
      }

      else
      {
        v23 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v23 - 8) + 32))(v17, v18);
      swift_storeEnumTagMultiPayload();
      (*(v20 + 56))(v17, 0, 1, v19);
    }

    v24 = type metadata accessor for AttributedTextSelection(0);
    v25 = *(v24 + 20);
    v26 = type metadata accessor for AttributeContainer();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(&v18[v25], 1, v26))
    {
      v28 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v17[v25], &v18[v25], *(*(v28 - 8) + 64));
    }

    else
    {
      (*(v27 + 32))(&v17[v25], &v18[v25], v26);
      (*(v27 + 56))(&v17[v25], 0, 1, v26);
    }

    v17[*(v24 + 24)] = v18[*(v24 + 24)];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for BindingStorage.Storage(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for BindingStorage.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    type metadata accessor for Binding<AttributedString>();
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v11 = *(v10 + 48);
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = *&a2[v11 + 8];
      *v12 = *&a2[v11];
      *(v12 + 1) = v14;
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v16 = *(v15 + 32);
      v17 = &v12[v16];
      v18 = &v13[v16];
      v19 = type metadata accessor for AttributedTextSelection.Indices(0);
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v18, 1, v19))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v17, v18, *(*(v21 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v23 = v22;
        }

        else
        {
          v23 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v23 - 8) + 32))(v17, v18);
        swift_storeEnumTagMultiPayload();
        (*(v20 + 56))(v17, 0, 1, v19);
      }

      v24 = type metadata accessor for AttributedTextSelection(0);
      v25 = *(v24 + 20);
      v26 = type metadata accessor for AttributeContainer();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v18[v25], 1, v26))
      {
        v28 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v17[v25], &v18[v25], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v27 + 32))(&v17[v25], &v18[v25], v26);
        (*(v27 + 56))(&v17[v25], 0, 1, v26);
      }

      v17[*(v24 + 24)] = v18[*(v24 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata completion function for BindingStorage.Storage()
{
  type metadata accessor for Binding<AttributedString>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<AttributedTextSelection>(319);
    if (v1 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v4 = &v3;
      swift_getTupleTypeLayout2();
      v5 = &v2;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

id static AttributeScope.storage(wrapping:in:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = a2[1];
  type metadata accessor for RichTextAttributeResolver();
  swift_getWitnessTable();
  type metadata accessor for NSSwiftMutableAttributedString();
  (*(v5 + 16))(v7, a1, v4);
  *&v12 = v8;
  *(&v12 + 1) = v9;

  RichTextAttributeResolver.init(environment:content:for:)(&v12, 0, 0xE000000000000000, &v14);
  v12 = v14;
  v13 = v15;
  v10 = specialized NSSwiftMutableAttributedString.__allocating_init(wrapping:resolver:)(v7, &v12);

  swift_getWitnessTable();
  return v10;
}

uint64_t BindingStorage.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  type metadata accessor for Binding<AttributedString>();
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AttributedString();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedTextSelection.Indices(0);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v45 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v47 = v2;
  outlined init with copy of BindingStorage.Storage(v2, v21, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    v28 = *&v21[*(v27 + 48)];
    v29 = *(*v28 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();
    outlined init with copy of BindingStorage.Storage(v28 + v29, v23, type metadata accessor for AttributedTextSelection);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    outlined init with take of AttributedTextSelection(&v21[*(v30 + 48)], v15, type metadata accessor for Binding<AttributedTextSelection>);
    MEMORY[0x18D00ACC0](v13);
    outlined destroy of AttributedTextSelection.Indices(v15, type metadata accessor for Binding<AttributedTextSelection>);
  }

  outlined destroy of AttributedTextSelection.Indices(v21, type metadata accessor for Binding<AttributedString>);
  outlined init with take of AttributedTextSelection(v23, v26, type metadata accessor for AttributedTextSelection);
  outlined init with copy of BindingStorage.Storage(v26, v8, type metadata accessor for AttributedTextSelection.Indices?);
  v32 = v52;
  v31 = v53;
  if ((*(v52 + 48))(v8, 1, v53) == 1)
  {
    outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for AttributedTextSelection.Indices?);
    return outlined init with take of AttributedTextSelection(v26, v54, type metadata accessor for AttributedTextSelection);
  }

  outlined init with take of AttributedTextSelection(v8, v11, type metadata accessor for AttributedTextSelection.Indices);
  outlined init with copy of BindingStorage.Storage(v47, v18, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);

    v33 = v48;
    outlined init with take of AttributedTextSelection(v18, v48, type metadata accessor for Binding<AttributedString>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v35 = *(v34 + 48);
    v33 = v48;
    outlined init with take of AttributedTextSelection(v18, v48, type metadata accessor for Binding<AttributedString>);
    outlined destroy of AttributedTextSelection.Indices(&v18[v35], type metadata accessor for Binding<AttributedTextSelection>);
  }

  v36 = v46;
  MEMORY[0x18D00ACC0](v50);
  outlined destroy of AttributedTextSelection.Indices(v33, type metadata accessor for Binding<AttributedString>);
  v37 = specialized AttributedTextSelection.Indices.areValid<A>(within:)(v36);
  (*(v49 + 8))(v36, v51);
  outlined destroy of AttributedTextSelection.Indices(v11, type metadata accessor for AttributedTextSelection.Indices);
  if (v37)
  {
    return outlined init with take of AttributedTextSelection(v26, v54, type metadata accessor for AttributedTextSelection);
  }

  outlined destroy of AttributedTextSelection.Indices(v26, type metadata accessor for AttributedTextSelection);
  v39 = *(v32 + 56);
  v40 = v54;
  v39(v54, 1, 1, v31);
  outlined destroy of AttributedTextSelection.Indices(v40, type metadata accessor for AttributedTextSelection.Indices?);
  v39(v40, 1, 1, v31);
  v41 = v45;
  v42 = *(v45 + 20);
  v43 = type metadata accessor for AttributeContainer();
  result = (*(*(v43 - 8) + 56))(v40 + v42, 1, 1, v43);
  *(v40 + *(v41 + 24)) = 0;
  return result;
}

uint64_t outlined init with take of AttributedTextSelection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in AttributedTextStorage.commit()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2, v9);
  BindingStorage.text.setter(v11);
  outlined init with copy of BindingStorage.Storage(a3, v7, type metadata accessor for AttributedTextSelection);
  return BindingStorage.selection.setter(v7);
}

uint64_t BindingStorage.text.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedString>();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BindingStorage.Storage(v2, v10, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);

    outlined init with take of AttributedTextSelection(v10, v13, type metadata accessor for Binding<AttributedString>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v15 = *(v14 + 48);
    outlined init with take of AttributedTextSelection(v10, v13, type metadata accessor for Binding<AttributedString>);
    outlined destroy of AttributedTextSelection.Indices(&v10[v15], type metadata accessor for Binding<AttributedTextSelection>);
  }

  (*(v5 + 16))(v7, a1, v4);
  dispatch thunk of AnyLocation.set(_:transaction:)();
  v16 = *(v5 + 8);
  v16(a1, v4);
  v16(v7, v4);
  return outlined destroy of AttributedTextSelection.Indices(v13, type metadata accessor for Binding<AttributedString>);
}