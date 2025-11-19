uint64_t TabSection<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[1] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v14 + 16))(v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);
  v25[0] = Text.init<A>(_:)();
  v25[1] = v19;
  v26 = v20 & 1;
  v27 = v21;
  a2();
  (*(v14 + 8))(a1, a5);
  return TabSection.init(header:content:footer:)(v25, v12, v22, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981E70], a6);
}

uint64_t TabSection<>.init<>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = Text.init(_:tableName:bundle:comment:)();
  v15[1] = v9;
  v16 = v10 & 1;
  v17 = v11;
  a2();
  return TabSection.init(header:content:footer:)(v15, v8, v12, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981E70], a4);
}

uint64_t TabSection<>.init<A>(content:header:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14(v11);
  a1(v15);
  type metadata accessor for Optional();
  return TabSection.init(header:content:footer:)(v13, v9, v16, a2, a3, MEMORY[0x1E6981E70], a4);
}

{
  return TabSection<>.init<A>(liftedContent:header:)(a1, a2, a3, a4);
}

uint64_t TabSection<>.init<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8(v5);
  v9 = type metadata accessor for Optional();
  return TabSection.init(header:content:footer:)(v9, v7, v10, MEMORY[0x1E6981E70], a2, MEMORY[0x1E6981E70], a3);
}

uint64_t TabSection<>.init<A, B>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v23 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v12 + 16))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16, v14);
  v24[0] = Text.init<A>(_:)();
  v24[1] = v17;
  v25 = v18 & 1;
  v26 = v19;
  a2();
  (*(v12 + 8))(a1, a4);
  type metadata accessor for Optional();
  return TabSection.init(header:content:footer:)(v24, v10, v20, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981E70], v23);
}

{
  return TabSection<>.init<A, B>(_:liftedContent:)(a1, a2, a3, a4, a5);
}

uint64_t TabSection<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = Text.init(_:tableName:bundle:comment:)();
  v15[1] = v9;
  v16 = v10 & 1;
  v17 = v11;
  a2();
  type metadata accessor for Optional();
  return TabSection.init(header:content:footer:)(v15, v8, v12, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981E70], a4);
}

{
  return TabSection<>.init<A>(_:liftedContent:)(a1, a2, a3, a4);
}

uint64_t instantiation function for generic protocol witness table for <> TabSection<A, B, C, D>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TabSection()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
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

uint64_t type metadata completion function for TabSection<>.TabSectionView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
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

uint64_t *initializeBufferWithCopyOfBuffer for TabSection<>.TabSectionView(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = a3[3];
  v8 = a3[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 80);
  v11 = v6 + v10;
  v12 = (v6 + v10 + ((v5 + 8) & ~v5)) & ~v10;
  v13 = *(v9 + 64);
  v14 = *(v8 - 8);
  v15 = *(v14 + 80);
  v16 = v13 + v15;
  v17 = ((v13 + v15 + v12) & ~v15) + *(v14 + 64);
  v18 = v10 | v5 | v15;
  if (v18 > 7 || ((*(v9 + 80) | *(v4 + 80) | *(v14 + 80)) & 0x100000) != 0 || v17 > 0x18)
  {
    v21 = *a2;
    *v3 = *a2;
    v3 = (v21 + ((v18 & 0xF8 ^ 0x1F8) & (v18 + 16)));
  }

  else
  {
    v22 = ~v10;
    v28 = ~v15;
    *a1 = *a2;
    v23 = (a1 + v5 + 8) & ~v5;
    v24 = (a2 + v5 + 8) & ~v5;
    (*(v4 + 16))(v23, v24);
    v25 = (v23 + v11) & v22;
    v26 = (v24 + v11) & v22;
    (*(v9 + 16))(v25, v26, v7);
    (*(v14 + 16))((v25 + v16) & v28, (v26 + v16) & v28, v8);
  }

  return v3;
}

uint64_t destroy for TabSection<>.TabSectionView(uint64_t a1, void *a2)
{
  v3 = *(a2[2] - 8);
  v4 = v3 + 8;
  v5 = (a1 + *(v3 + 80) + 8) & ~*(v3 + 80);
  (*(v3 + 8))(v5);
  v6 = *(v4 + 56);
  v7 = *(a2[3] - 8);
  v8 = v7 + 8;
  v9 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v7 + 8))(v9);
  v10 = *(a2[4] - 8);
  v11 = *(v10 + 8);
  v12 = (v9 + *(v8 + 56) + *(v10 + 80)) & ~*(v10 + 80);

  return v11(v12);
}

void *initializeWithCopy for TabSection<>.TabSectionView(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v5 = *(a3[2] - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(v6 + 48);
  v11 = *(a3[3] - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v14 + v8) & ~v13;
  v16 = (v14 + v9) & ~v13;
  (*(v11 + 16))(v15, v16);
  v17 = *(a3[4] - 8);
  (*(v17 + 16))((*(v12 + 48) + *(v17 + 80) + v15) & ~*(v17 + 80), (*(v12 + 48) + *(v17 + 80) + v16) & ~*(v17 + 80));
  return a1;
}

void *assignWithCopy for TabSection<>.TabSectionView(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v5 = *(a3[2] - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 24))(v8, v9);
  v10 = *(v6 + 40);
  v11 = *(a3[3] - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v14 + v8) & ~v13;
  v16 = (v14 + v9) & ~v13;
  (*(v11 + 24))(v15, v16);
  v17 = *(a3[4] - 8);
  (*(v17 + 24))((*(v12 + 40) + *(v17 + 80) + v15) & ~*(v17 + 80), (*(v12 + 40) + *(v17 + 80) + v16) & ~*(v17 + 80));
  return a1;
}

void *initializeWithTake for TabSection<>.TabSectionView(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v5 = *(a3[2] - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32);
  v11 = *(a3[3] - 8);
  v12 = v11 + 32;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v14 + v8) & ~v13;
  v16 = (v14 + v9) & ~v13;
  (*(v11 + 32))(v15, v16);
  v17 = *(a3[4] - 8);
  (*(v17 + 32))((*(v12 + 32) + *(v17 + 80) + v15) & ~*(v17 + 80), (*(v12 + 32) + *(v17 + 80) + v16) & ~*(v17 + 80));
  return a1;
}

void *assignWithTake for TabSection<>.TabSectionView(void *a1, void *a2, void *a3)
{
  *a1 = *a2;
  v5 = *(a3[2] - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 40))(v8, v9);
  v10 = *(v6 + 24);
  v11 = *(a3[3] - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v14 + v8) & ~v13;
  v16 = (v14 + v9) & ~v13;
  (*(v11 + 40))(v15, v16);
  v17 = *(a3[4] - 8);
  (*(v17 + 40))((*(v12 + 24) + *(v17 + 80) + v15) & ~*(v17 + 80), (*(v12 + 24) + *(v17 + 80) + v16) & ~*(v17 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TabSection<>.TabSectionView(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v5 + 80);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[3] - 8) + 64) + v15;
  v18 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v19 = ((v17 + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v22 < 2)
    {
LABEL_30:
      if (v16)
      {
LABEL_31:
        v26 = (a1 + v12 + 8) & ~v12;
        if (v6 == v16)
        {
          v27 = *(v5 + 48);

          return v27(v26);
        }

        else
        {
          v29 = (v26 + v13 + v14) & ~v14;
          if (v9 == v16)
          {
            v30 = *(v8 + 48);
            v31 = *(v8 + 84);
            v32 = a3[3];
          }

          else
          {
            v30 = *(v11 + 48);
            v29 = (v17 + v29) & ~v15;
            v31 = *(v11 + 84);
            v32 = a3[4];
          }

          return v30(v29, v31, v32);
        }
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_30;
  }

LABEL_17:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = ((v17 + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14)) & ~v15) + *(*(v7 - 8) + 64);
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

  return v16 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for TabSection<>.TabSectionView(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = a4[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v6 + 80);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = *(*(v8 - 8) + 64) + v17;
  v20 = ((v19 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16)) & ~v17) + *(*(v9 - 8) + 64);
  v21 = a3 >= v18;
  v22 = a3 - v18;
  if (v22 != 0 && v21)
  {
    if (v20 <= 3)
    {
      v26 = ((v22 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  if (v18 < a2)
  {
    v24 = ~v18 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> (8 * v20)) + 1;
      if (v20)
      {
        v28 = v24 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v28;
            if (v23 > 1)
            {
LABEL_53:
              if (v23 == 2)
              {
                *&a1[v20] = v25;
              }

              else
              {
                *&a1[v20] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v23 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v28;
        a1[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v23)
    {
      a1[v20] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&a1[v20] = 0;
    goto LABEL_33;
  }

  *&a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v29 = &a1[v14 + 8] & ~v14;
  if (v7 == v18)
  {
    v30 = *(v6 + 56);

LABEL_37:
    v30(v29);
    return;
  }

  v31 = (v29 + v15 + v16) & ~v16;
  if (v11 != v18)
  {
    v30 = *(v13 + 56);
    v29 = (v19 + v31) & ~v17;

    goto LABEL_37;
  }

  v32 = *(v10 + 56);

  v32(v31);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance TabSectionStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

void type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type TabSectionStyleContext and conformance TabSectionStyleContext()
{
  result = lazy protocol witness table cache variable for type TabSectionStyleContext and conformance TabSectionStyleContext;
  if (!lazy protocol witness table cache variable for type TabSectionStyleContext and conformance TabSectionStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabSectionStyleContext and conformance TabSectionStyleContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<TabSectionStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<TabSectionStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<TabSectionStyleContext> and conformance StyleContextWriter<A>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<TabSectionStyleContext>, lazy protocol witness table accessor for type TabSectionStyleContext and conformance TabSectionStyleContext, &type metadata for TabSectionStyleContext, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<TabSectionStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IsSectionHeaderTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IsSectionHeaderTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IsSectionHeaderTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsSectionHeaderTraitKey>, MEMORY[0x1E6980208], MEMORY[0x1E6980200], MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IsSectionHeaderTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SectionHeaderStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SectionHeaderStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SectionHeaderStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for StyleContextWriter<SectionHeaderStyleContext>, MEMORY[0x1E6980570], MEMORY[0x1E6980568], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SectionHeaderStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IsCompactTabRepresentationTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IsCompactTabRepresentationTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IsCompactTabRepresentationTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsCompactTabRepresentationTraitKey>, &type metadata for IsCompactTabRepresentationTraitKey, &protocol witness table for IsCompactTabRepresentationTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IsCompactTabRepresentationTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton._StyleStorage.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton._StyleStorage.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton._StyleStorage.CircleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton._StyleStorage.CircleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton._StyleStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton._StyleStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton._StyleStorage.PillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton._StyleStorage.PillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackButton._StyleStorage.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>, lazy protocol witness table accessor for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys, &unk_1EFFEB868, MEMORY[0x1E69E6F58]);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v24 - v5;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton._StyleStorage.CircleCodingKeys>, lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys, &unk_1EFFEB7D8, v3);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v24 - v7;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton._StyleStorage.AutomaticCodingKeys>, lazy protocol witness table accessor for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys, &unk_1EFFEB7B8, v3);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton._StyleStorage.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys, &unk_1EFFEB798, v3);
  v34 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *v1;
  v24 = v1[1];
  v25 = v15;
  v16 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v16 == 4)
  {
    v35 = 0;
    lazy protocol witness table accessor for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys();
    v17 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v26;
    v18 = v27;
    goto LABEL_5;
  }

  if (v16 == 5)
  {
    v35 = 1;
    lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys();
    v10 = v28;
    v17 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v29;
    v18 = v30;
LABEL_5:
    (*(v19 + 8))(v10, v18);
    return (*(v12 + 8))(v14, v17);
  }

  v21 = v34;
  if (v16 == 6)
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    v35 = 2;
    lazy protocol witness table accessor for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys();
    v22 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v25;
    v36 = v24;
    v37 = v16;
    lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle();
    v23 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v22, v23);
    return (*(v12 + 8))(v14, v21);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle()
{
  result = lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle;
  if (!lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle;
  if (!lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle and conformance Text.DateStyle);
  }

  return result;
}

uint64_t View.playbackButtonStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  (*(a5 + 8))(&v8, a3, a5);
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.playbackButtonStyle.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);

    return PropertyList.subscript.getter();
  }
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PlaybackButtonStyleKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

void AutomaticPlaybackButtonStyle._storage.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t getEnumTagSinglePayload for PlaybackButton._StyleStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 3;
  if (v3 >= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= 4)
  {
    return v6 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlaybackButton._StyleStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 6;
    }
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EnvironmentValues.isEagerNavigationTransitionEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.isEagerNavigationTransitionEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.isEagerNavigationTransitionEnabled : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_3(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.IsEagerNavigationTransitionEnabled>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t DefaultTabLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  if (v6)
  {
    v8 = *(v1 + 16) & 1;
    v9 = *v1;
    v10 = v4;
    v11 = v6;
    v12 = v7;
  }

  else
  {
    v13 = *(v1 + 40);
    v9 = DefaultTabLabel.defaultText.getter();
    v10 = v14;
    v20 = v15;
    v11 = v16;
    if (v13)
    {
      v17 = 0x6E6F697473657571;
      v18 = 0xEC0000006B72616DLL;
    }

    else
    {
      v17 = 0x697966696E67616DLL;
      v18 = 0xEF7373616C67676ELL;
    }

    specialized Image.init(systemName:)(v17, v18);
    v8 = v20 & 1;
  }

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v6 == 0;

  return outlined copy of Label<Text, Image>?(v3, v4, v5, v6);
}

uint64_t DefaultTabLabel.defaultText.getter()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return static Text.System.search.getter();
  }

  LocalizedStringKey.init(stringLiteral:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t outlined copy of Label<Text, Image>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t destroy for DefaultTabLabel(uint64_t result)
{
  if (*(result + 24))
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

uint64_t initializeWithCopy for DefaultTabLabel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v6, v7);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    v8 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v8;
  }

  else
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for DefaultTabLabel(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 1);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 3);

      *(a1 + 32) = *(a2 + 4);
    }

    else
    {
      outlined destroy of Label<Text, Image>(a1);
      v14 = *(a2 + 4);
      v15 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v15;
      *(a1 + 32) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 32) = *(a2 + 4);
  }

  else
  {
    v16 = *a2;
    v17 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v16;
    *(a1 + 16) = v17;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t outlined destroy of Label<Text, Image>(uint64_t a1)
{
  type metadata accessor for Label<Text, Image>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithTake for DefaultTabLabel(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    outlined destroy of Label<Text, Image>(a1);
LABEL_5:
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  outlined consume of Text.Storage(v6, v7, v8);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);

LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for DefaultTabLabel(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DefaultTabLabel(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Label<Text, Image>, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Label<Text, Image>, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Label<Text, Image>, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<Label<Text, Image>, Label<Text, Image>>();
    lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Label<Text, Image>, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<Label<Text, Image>, Label<Text, Image>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<Label<Text, Image>, Label<Text, Image>>)
  {
    type metadata accessor for Label<Text, Image>();
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<Label<Text, Image>, Label<Text, Image>>);
    }
  }
}

void SortedArrayDictionary.endIndex.getter()
{
  type metadata accessor for SortedArrayDictionary.Element();

  JUMPOUT(0x18D00CDE0);
}

uint64_t static SortedArrayDictionary.Element<>.== infix(_:_:)()
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SortedArrayDictionary.Element();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t SortedArrayDictionary<>.hash(into:)()
{
  type metadata accessor for SortedArrayDictionary.Element();
  swift_getWitnessTable();
  return Array<A>.hash(into:)();
}

Swift::Int SortedArrayDictionary<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  SortedArrayDictionary<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static SortedArrayDictionary<>.== infix(_:_:)()
{
  type metadata accessor for SortedArrayDictionary.Element();
  swift_getWitnessTable();
  return static Array<A>.== infix(_:_:)() & 1;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance SortedArrayDictionary<A, B>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

void (*protocol witness for Collection.subscript.read in conformance SortedArrayDictionary<A, B>(uint64_t **a1))(void *a1)
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
  v2[4] = SortedArrayDictionary.subscript.read(v2);
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*SortedArrayDictionary.subscript.read(uint64_t *a1))(void *a1)
{
  v2 = type metadata accessor for SortedArrayDictionary.Element();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  Array.subscript.getter();
  return CoalescingAdjacentDuplicates<>.subscript.read;
}

uint64_t protocol witness for Collection.indices.getter in conformance SortedArrayDictionary<A, B>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance SortedArrayDictionary<A, B>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance SortedArrayDictionary<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance SortedArrayDictionary<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SortedArrayDictionary<A, B>()
{
  swift_getWitnessTable();
  v0 = specialized Collection._copyToContiguousArray()();

  return v0;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> SortedArrayDictionary<A, B>()
{
  Hasher.init(_seed:)();
  SortedArrayDictionary<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SortedArrayDictionary.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SortedArrayDictionary.Element();
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00CB50](&v14, v7, WitnessTable);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  type metadata accessor for LazyMapSequence();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;

  v15 = 91;
  v16 = 0xE100000000000000;
  MEMORY[0x18D00C9B0](v10, v12);

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);

  return v15;
}

uint64_t closure #1 in SortedArrayDictionary.debugDescription.getter@<X0>(void *a1@<X8>)
{
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
  type metadata accessor for SortedArrayDictionary.Element();
  result = DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t static NavigationDestination._makeDestinations(content:inputs:resolved:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return static NavigationDestination._makeDestinations(content:inputs:resolved:)(a1, a2, a3, a4, a5);
}

{
  v26 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v8;
  v24[4] = *(a2 + 64);
  v25 = *(a2 + 80);
  v9 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _GraphValue();
  v22 = a4;
  v23 = a5;
  v15 = _GraphValue.value.getter();
  v16 = partial apply for closure #1 in Attribute.subscript.getter;
  KeyPath = swift_getKeyPath();
  v19 = AssociatedTypeWitness;
  v20 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v18, v20, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);

  _GraphValue.init(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(&v15, v24, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t _s7SwiftUI21NavigationDestinationPAAE17_makeDestinations7content6inputs8resolvedyAA11_GraphValueVyxG_AA11_ViewInputsVAA01_cD10CollectionVztFZs5NeverO_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<Never, Never>();
  lazy protocol witness table accessor for type Map<Never, Never> and conformance Map<A, B>();
  v5 = Attribute.init<A>(body:value:flags:update:)();

  return _s7SwiftUI21NavigationDestinationPAAE17_makeDestinations7content6inputs8resolvedyAA11_GraphValueVyxG_AA11_ViewInputsVAA01_cD10CollectionVztFZs5NeverO_Tt2B5(v5, a2, a3);
}

uint64_t protocol witness for static NavigationDestination._makeDestinations(content:inputs:resolved:) in conformance Never(unsigned int *a1, uint64_t a2, uint64_t a3)
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
  return _s7SwiftUI21NavigationDestinationPAAE17_makeDestinations7content6inputs8resolvedyAA11_GraphValueVyxG_AA11_ViewInputsVAA01_cD10CollectionVztFZs5NeverO_Tt2B5(v3, v7, a3);
}

uint64_t static Group<A>._makeDestinations(content:inputs:resolved:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v9;
  v14[4] = *(a2 + 64);
  v15 = *(a2 + 80);
  v10 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v10;
  v13 = v8;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a5 + 32))(v12, v14, a3, a4, a5);
}

uint64_t static TupleNavigationDestination._makeDestinations(content:inputs:resolved:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[3];
  v36 = a2[2];
  v37 = v5;
  v38 = a2[4];
  v39 = *(a2 + 20);
  v6 = a2[1];
  v34 = *a2;
  v35 = v6;
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA021NavigationDestinationD0V_Tt1g5(a4, v32);
  *&v32[40] = v36;
  *&v32[56] = v37;
  *&v32[72] = v38;
  *&v32[8] = v34;
  v7 = *v32;
  *&v33 = 0;
  *(&v33 + 1) = MEMORY[0x1E69E7CC0];
  *&v32[24] = v35;
  *&v32[88] = v39;
  *v32 = v4;
  v8 = *(v7 + 16);
  if (v8)
  {
    outlined init with copy of _ViewInputs(&v34, v31);
    v9 = (v7 + 48);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 3;
      *&v33 = AGTupleElementOffset();
      v12 = type metadata accessor for TupleNavigationDestination.Collector();
      TupleNavigationDestination.Collector.visit<A>(type:)(v10, v12, v10, v11);
      --v8;
    }

    while (v8);

    v13 = *(&v33 + 1);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v34, v31);

    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v14)
  {
    *&v31[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = 0;
    v16 = *&v31[0];
    v17 = *(*&v31[0] + 16);
    v18 = 16 * v17;
    do
    {
      v19 = *(v13 + v15 + 32);
      v20 = *(v13 + v15 + 40);
      *&v31[0] = v16;
      v21 = *(v16 + 24);

      if (v17 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v17 + 1, 1);
        v16 = *&v31[0];
      }

      *(v16 + 16) = v17 + 1;
      v22 = v16 + v18 + v15;
      *(v22 + 32) = v19;
      *(v22 + 40) = v20;
      v15 += 16;
      ++v17;
      --v14;
    }

    while (v14);
  }

  PreferencesOutputs.init()();
  v29 = *&v31[0];
  v30 = DWORD2(v31[0]);
  v23 = *(v37 + 16);
  if (v23)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v24 = 1;
    do
    {
      v25 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v25(v31, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v24;
    }

    while (v24 - v23 != 1);
  }

  else
  {
  }

  *a3 = v29;
  *(a3 + 8) = v30;
  v31[4] = *&v32[64];
  v31[5] = *&v32[80];
  v31[6] = v33;
  v31[0] = *v32;
  v31[1] = *&v32[16];
  v31[2] = *&v32[32];
  v31[3] = *&v32[48];
  v26 = type metadata accessor for TupleNavigationDestination.Collector();
  return (*(*(v26 - 8) + 8))(v31, v26);
}

uint64_t TupleNavigationDestination.Collector.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TupleNavigationDestination();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  PreferencesOutputs.init()();
  v27 = *&v31[0];
  v28 = DWORD2(v31[0]);
  _GraphValue.init(_:)();
  v8 = *(v4 + 56);
  v29[2] = *(v4 + 40);
  v29[3] = v8;
  v29[4] = *(v4 + 72);
  v30 = *(v4 + 88);
  v9 = *(v4 + 24);
  v29[0] = *(v4 + 8);
  v29[1] = v9;
  v10 = *(v4 + 56);
  v22 = *(v4 + 40);
  v23 = v10;
  v24 = *(v4 + 72);
  v25 = *(v4 + 88);
  v11 = *(v4 + 24);
  v20 = *(v4 + 8);
  v21 = v11;
  v12 = *(a4 + 32);
  outlined init with copy of _ViewInputs(v29, v31);
  v12(v26, &v20, &v27, a3, a4);
  v31[2] = v22;
  v31[3] = v23;
  v31[4] = v24;
  v32 = v25;
  v31[0] = v20;
  v31[1] = v21;
  outlined destroy of _ViewInputs(v31);
  v13 = v27;
  v14 = v28;
  v15 = *(v4 + 104);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 16) = v18 + 1;
  v19 = v15 + 16 * v18;
  *(v19 + 32) = v13;
  *(v19 + 40) = v14;
  *(v5 + 104) = v15;
  return result;
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance NavigationDestinationDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance NavigationDestinationDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static NavigationDestinationDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance NavigationDestinationDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

void specialized NavigationDestination.bodyError()()
{
  _StringGuts.grow(_:)(31);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD43120);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t initializeWithCopy for TupleNavigationDestination.Collector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;

  return a1;
}

uint64_t assignWithCopy for TupleNavigationDestination.Collector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for TupleNavigationDestination.Collector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;

  return a1;
}

void type metadata accessor for Map<Never, Never>()
{
  if (!lazy cache variable for type metadata for Map<Never, Never>)
  {
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<Never, Never>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<HorizontalStackControlGroupStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<HorizontalStackControlGroupStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<HorizontalStackControlGroupStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<HorizontalStackControlGroupStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<HorizontalStackControlGroupStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<HorizontalStackControlGroupStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<HorizontalStackControlGroupStyle>>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>();
    _s7SwiftUI25ControlGroupStyleModifierVyAA04MenucdE0VGMaTm_0(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<HorizontalStackControlGroupStyle>, lazy protocol witness table accessor for type HorizontalStackControlGroupStyle and conformance HorizontalStackControlGroupStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>, ControlGroupStyleModifier<HorizontalStackControlGroupStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>)
  {
    type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, ControlGroupStyleModifier<MenuControlGroupStyle>, EmptyModifier>>);
    }
  }
}

void _s7SwiftUI25ControlGroupStyleModifierVyAA04MenucdE0VGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ControlGroupStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HorizontalStackControlGroupStyle and conformance HorizontalStackControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type HorizontalStackControlGroupStyle and conformance HorizontalStackControlGroupStyle;
  if (!lazy protocol witness table cache variable for type HorizontalStackControlGroupStyle and conformance HorizontalStackControlGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalStackControlGroupStyle and conformance HorizontalStackControlGroupStyle);
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void *__return_ptr, _BYTE *, void *)@<X4>, uint64_t a6@<X6>, _BYTE *a7@<X8>)
{
  v23 = a1;
  v22 = a7;
  type metadata accessor for <<opaque return type of AttributedString.Keys.makeIterator()>>.0();
  v14 = v13;
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = v23;
  v30 = a2;
  *&v31 = a3;
  *(&v31 + 1) = a4;
  v24[0] = a6;

  outlined copy of AttributedTextFormatting.Constraints?(a3);

  AttributedString.Keys.makeIterator()();

  while (1)
  {
    swift_getOpaqueTypeConformance2();
    dispatch thunk of IteratorProtocol.next()();
    if (!v27)
    {
      result = (*(v32 + 8))(v16, v14);
      v19 = v30;
      v20 = v22;
      *v22 = v29[0];
      *(v20 + 1) = v19;
      *(v20 + 1) = v31;
      return result;
    }

    v26[0] = v27;
    v26[1] = v28;
    a5(v24, v29, v26);
    if (v7)
    {
      break;
    }

    v17 = v31;

    outlined consume of AttributedTextFormatting.Constraints?(v17);
    v29[0] = v24[0];
    v30 = v24[1];
    v31 = v25;
  }

  (*(v32 + 8))(v16, v14);
  v21 = v31;

  return outlined consume of AttributedTextFormatting.Constraints?(v21);
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter()
{
  result = outlined init with copy of NavigationState.Base(v0, &v23);
  v2 = v30;
  if (!v30)
  {
    return v2;
  }

  if (v30 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(v29);
    outlined destroy of NavigationColumnState(&v23);
    return 0;
  }

  v3 = v23;
  v32 = v28;
  v31[2] = v26;
  v31[3] = v27;
  v31[0] = v24;
  v31[1] = v25;
  v4 = *(v23 + 16);
  if (!v4)
  {
LABEL_61:
    outlined destroy of NavigationState?(v31, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);

    return 0;
  }

  v2 = 0;
  v5 = v23 + 1472;
  while (v2 < *(v3 + 16))
  {
    v6 = v2 + 1;
    outlined init with copy of NavigationColumnState(v5 - 1440, v21);
    if (v22 > 2u)
    {
      if (v22 != 5)
      {
        goto LABEL_62;
      }

      goto LABEL_7;
    }

    if (v22 == 1)
    {
      result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v21, v2, v3);
      if (result)
      {
LABEL_62:
        outlined destroy of NavigationState?(v31, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);

        outlined destroy of NavigationColumnState(v21);
        return v2;
      }

      if (v6 >= v4)
      {
        goto LABEL_7;
      }

      if (v6 >= *(v3 + 16))
      {
        goto LABEL_67;
      }

      outlined init with copy of NavigationColumnState(v5 - 1080, v19);
      if (v20 > 2u)
      {
        if (v20 != 5)
        {
          goto LABEL_63;
        }

LABEL_43:
        outlined destroy of NavigationColumnState(v19);
LABEL_7:
        result = outlined destroy of NavigationColumnState(v21);
        goto LABEL_8;
      }

      if (v20 != 1)
      {
        if (v20 != 2)
        {
          goto LABEL_63;
        }

        v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v19, v2 + 1, v3) ^ 1;
LABEL_49:
        outlined destroy of NavigationColumnState(v19);
        result = outlined destroy of NavigationColumnState(v21);
        if ((v8 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_8;
      }

      result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v19, v2 + 1, v3);
      if (result)
      {
LABEL_63:
        outlined destroy of NavigationColumnState(v19);
        outlined destroy of NavigationColumnState(v21);
LABEL_64:
        outlined destroy of NavigationState?(v31, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);

        return v2;
      }

      if (v2 + 2 >= v4)
      {
        goto LABEL_43;
      }

      if (v2 + 2 >= *(v3 + 16))
      {
        goto LABEL_68;
      }

      outlined init with copy of NavigationColumnState(v5 - 720, v17);
      if (v18 > 2u)
      {
        if (v18 - 3 >= 2)
        {
          goto LABEL_46;
        }
      }

      else if (v18)
      {
        v9 = v2 + 2;
        if (v18 != 1)
        {
          v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v17, v9, v3) ^ 1;
          goto LABEL_48;
        }

        if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v17, v9, v3) & 1) == 0)
        {
          if (v2 + 3 < *(v3 + 16))
          {
            outlined init with copy of NavigationColumnState(v5 - 360, v15);
            if (v16 > 2u)
            {
              if (v16 - 3 >= 2)
              {
                goto LABEL_53;
              }
            }

            else if (v16)
            {
              v10 = v2 + 3;
              if (v16 != 1)
              {
                v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v15, v10, v3) ^ 1;
                goto LABEL_55;
              }

              if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v15, v10, v3) & 1) == 0)
              {
                v11 = *(v3 + 16);
                if (v2 + 4 < v11)
                {
                  outlined init with copy of NavigationColumnState(v5, v13);
                  if (v14 > 2u)
                  {
                    if (v14 - 3 >= 2)
                    {
                      goto LABEL_58;
                    }
                  }

                  else if (v14)
                  {
                    v12 = v2 + 4;
                    if (v14 != 1)
                    {
                      v8 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v13, v12, v3) ^ 1;
                      goto LABEL_60;
                    }

                    if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v13, v12, v3) & 1) == 0)
                    {
                      if (v2 + 5 < v11)
                      {
                        v8 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v2 + 5, v3, v31);
                        goto LABEL_60;
                      }

LABEL_58:
                      v8 = 1;
LABEL_60:
                      outlined destroy of NavigationColumnState(v13);
LABEL_55:
                      outlined destroy of NavigationColumnState(v15);
LABEL_48:
                      outlined destroy of NavigationColumnState(v17);
                      goto LABEL_49;
                    }
                  }

                  v8 = 0;
                  goto LABEL_60;
                }

LABEL_53:
                v8 = 1;
                goto LABEL_55;
              }
            }

            v8 = 0;
            goto LABEL_55;
          }

LABEL_46:
          v8 = 1;
          goto LABEL_48;
        }
      }

      v8 = 0;
      goto LABEL_48;
    }

    if (v22 != 2)
    {
      goto LABEL_62;
    }

    v7 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v31, v21, v2, v3);
    result = outlined destroy of NavigationColumnState(v21);
    if (v7)
    {
      goto LABEL_64;
    }

LABEL_8:
    v5 += 360;
    ++v2;
    if (v4 == v6)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(unint64_t a1, char a2, uint64_t a3, char a4)
{
  result = outlined init with copy of NavigationState.Base(v4, __src);
  v10 = v36;
  if (!v36)
  {
    return v10;
  }

  if (v36 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45]);
    memcpy(__dst, __src, 0x163uLL);
    v11 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, a2 & 1, a3, a4, __dst);
    v13 = ~v12;
    outlined destroy of NavigationColumnState(__dst);
    if (v13)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  v14 = __src[0];
  v37[2] = *&__src[5];
  v37[3] = *&__src[7];
  v38 = __src[9];
  v37[0] = *&__src[1];
  v37[1] = *&__src[3];
  if ((a2 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    if (*(__src[0] + 16) <= a1)
    {
LABEL_80:
      __break(1u);
    }

    else
    {
      outlined init with copy of NavigationColumnState(__src[0] + 360 * a1 + 32, __dst);
      v10 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, 0, a3, a4, __dst);
      v16 = ~v15;
      result = outlined destroy of NavigationColumnState(__dst);
      if (v16)
      {
        outlined destroy of NavigationState?(v37, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);

        return v10;
      }

      v17 = *(v14 + 16);
      if (v17 > a1)
      {
        if (a1 + 1 == v17)
        {

LABEL_15:
          outlined destroy of NavigationState?(v37, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
          swift_bridgeObjectRelease_n();
          return 0;
        }

        v18 = a1 + 6;
        v19 = 360 * a1;
        while (1)
        {
          v10 = v18 - 5;
          if ((v18 - 5) >= v17)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          if (v10 >= *(v14 + 16))
          {
            goto LABEL_78;
          }

          outlined init with copy of NavigationColumnState(v14 + v19 + 392, __dst);
          if (__dst[24] > 2u)
          {
            if (__dst[24] != 5)
            {
              goto LABEL_73;
            }

            goto LABEL_18;
          }

          if (__dst[24] == 1)
          {
            break;
          }

          if (__dst[24] != 2)
          {
            goto LABEL_73;
          }

          v20 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, __dst, v18 - 5, v14);
          result = outlined destroy of NavigationColumnState(__dst);
          if (v20)
          {
            goto LABEL_75;
          }

LABEL_19:
          ++v18;
          v19 += 360;
          if (1 - v17 + v18 == 6)
          {
            goto LABEL_15;
          }
        }

        result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, __dst, v18 - 5, v14);
        if (result)
        {
LABEL_73:
          outlined destroy of NavigationState?(v37, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
          swift_bridgeObjectRelease_n();
          outlined destroy of NavigationColumnState(__dst);
          return v10;
        }

        if ((v18 - 4) >= v17)
        {
          goto LABEL_18;
        }

        if (v18 - 4 >= *(v14 + 16))
        {
          goto LABEL_82;
        }

        outlined init with copy of NavigationColumnState(v14 + v19 + 752, v32);
        if (v33 > 2u)
        {
          if (v33 != 5)
          {
            goto LABEL_74;
          }

LABEL_55:
          outlined destroy of NavigationColumnState(v32);
LABEL_18:
          result = outlined destroy of NavigationColumnState(__dst);
          goto LABEL_19;
        }

        if (v33 != 1)
        {
          if (v33 != 2)
          {
            goto LABEL_74;
          }

          v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, v32, v18 - 4, v14) ^ 1;
LABEL_61:
          outlined destroy of NavigationColumnState(v32);
          result = outlined destroy of NavigationColumnState(__dst);
          if ((v21 & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_19;
        }

        result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, v32, v18 - 4, v14);
        if (result)
        {
LABEL_74:
          outlined destroy of NavigationColumnState(v32);
          outlined destroy of NavigationColumnState(__dst);
LABEL_75:
          outlined destroy of NavigationState?(v37, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
          swift_bridgeObjectRelease_n();
          return v10;
        }

        if (v18 - 3 >= v17)
        {
          goto LABEL_55;
        }

        if (v18 - 3 >= *(v14 + 16))
        {
          goto LABEL_83;
        }

        outlined init with copy of NavigationColumnState(v14 + v19 + 1112, v30);
        if (v31 > 2u)
        {
          if (v31 - 3 >= 2)
          {
LABEL_58:
            v21 = 1;
            goto LABEL_60;
          }
        }

        else if (v31)
        {
          v22 = v18 - 3;
          if (v31 != 1)
          {
            v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, v30, v22, v14) ^ 1;
            goto LABEL_60;
          }

          if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, v30, v22, v14) & 1) == 0)
          {
            if (v18 - 2 < *(v14 + 16))
            {
              outlined init with copy of NavigationColumnState(v14 + v19 + 1472, v28);
              if (v29 > 2u)
              {
                if (v29 - 3 >= 2)
                {
LABEL_65:
                  v21 = 1;
                  goto LABEL_67;
                }
              }

              else if (v29)
              {
                v23 = v18 - 2;
                if (v29 != 1)
                {
                  v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, v28, v23, v14) ^ 1;
                  goto LABEL_67;
                }

                if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, v28, v23, v14) & 1) == 0)
                {
                  v24 = *(v14 + 16);
                  if (v18 - 1 < v24)
                  {
                    outlined init with copy of NavigationColumnState(v14 + v19 + 1832, v26);
                    if (v27 > 2u)
                    {
                      if (v27 - 3 >= 2)
                      {
                        goto LABEL_70;
                      }
                    }

                    else if (v27)
                    {
                      v25 = v18 - 1;
                      if (v27 != 1)
                      {
                        v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, v26, v25, v14) ^ 1;
                        goto LABEL_72;
                      }

                      if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v37, v26, v25, v14) & 1) == 0)
                      {
                        if (v18 < v24)
                        {
                          v21 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v18, v14, v37);
LABEL_72:
                          outlined destroy of NavigationColumnState(v26);
                          goto LABEL_67;
                        }

LABEL_70:
                        v21 = 1;
                        goto LABEL_72;
                      }
                    }

                    v21 = 0;
                    goto LABEL_72;
                  }

                  goto LABEL_65;
                }
              }

              v21 = 0;
LABEL_67:
              outlined destroy of NavigationColumnState(v28);
              goto LABEL_60;
            }

            goto LABEL_58;
          }
        }

        v21 = 0;
LABEL_60:
        outlined destroy of NavigationColumnState(v30);
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  return specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(a1, a2, a3, a4, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>.Index.Kind), &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>);
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v19);
  v20 = a3;
  v21 = a4;
  if (v19[120])
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v19, v16);
    outlined destroy of NavigationState?(v16, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    if (a4 != 2 || a3)
    {
      outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(v19, type metadata accessor for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>.Index.Kind));
      return 0;
    }

LABEL_16:
    outlined destroy of NavigationColumnState.ColumnContent(v19);
    return 0;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v19, v16);
  result = v17;
  v9 = v18;
  if (!a4)
  {
    v12 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_21;
    }

    v13 = (*(*v17 + 88))();

    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (a4 != 1)
  {
    v14 = (*(*v17 + 80))();

    if (v14)
    {
LABEL_14:
      v15 = *(v9 + 16);

      if (!v15)
      {
        goto LABEL_15;
      }

LABEL_19:
      outlined destroy of NavigationState?(v16, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
      outlined destroy of NavigationColumnState.ColumnContent(v19);
      return a1;
    }

LABEL_18:

    goto LABEL_19;
  }

  v10 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v11 = *(v9 + 16);

    if (v10 < v11)
    {
      goto LABEL_19;
    }

LABEL_15:
    outlined destroy of NavigationState?(v16, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, void, uint64_t, uint64_t, _BYTE *))
{
  result = outlined init with copy of NavigationState.Base(v5, __src);
  if (!v41)
  {
    return specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  }

  if (v41 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45]);
    outlined init with copy of NavigationColumnState(__src, __dst);
    if ((a2 & 1) == 0)
    {
      outlined destroy of NavigationColumnState(__dst);
      memcpy(__dst, __src, 0x163uLL);
      result = a5(a1, 0, a3, a4, __dst);
      if (v15 != -1)
      {
        v13 = result;
        outlined destroy of NavigationColumnState(__dst);
        return v13;
      }

      goto LABEL_92;
    }

    result = specialized NavigationState.StackContent.Views.ViewsSequence.lastIndex(for:stateIndex:)(__dst, 0);
    if (v12 != -1)
    {
      v13 = result;
      outlined destroy of NavigationColumnState(__dst);
      outlined destroy of NavigationColumnState(__src);
      return v13;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    return result;
  }

  v14 = __src[0];
  v42[2] = *&__src[5];
  v42[3] = *&__src[7];
  v43 = __src[9];
  v42[0] = *&__src[1];
  v42[1] = *&__src[3];
  if ((a2 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_86:
      __break(1u);
    }

    else if (*(__src[0] + 16) > a1)
    {
      outlined init with copy of NavigationColumnState(__src[0] + 360 * a1 + 32, __dst);
      v13 = a5(a1, 0, a3, a4, __dst);
      v17 = ~v16;
      result = outlined destroy of NavigationColumnState(__dst);
      if (v17)
      {
        outlined destroy of NavigationState?(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);

        return v13;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  a1 = *(__src[0] + 16);
LABEL_15:
  if (!a1)
  {
LABEL_72:

    v13 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    outlined destroy of NavigationState?(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
    return v13;
  }

  v13 = a1 - 1;
  v18 = 360 * a1;
  while (1)
  {
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_86;
    }

    outlined init with copy of NavigationColumnState(v14 + v18 - 328, __dst);
    if (__dst[24] > 2u)
    {
      if (__dst[24] != 5)
      {
        goto LABEL_75;
      }

      goto LABEL_18;
    }

    if (__dst[24] != 1)
    {
      if (__dst[24] != 2)
      {
        goto LABEL_75;
      }

      v19 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, __dst, v13, v14);
LABEL_25:
      result = outlined destroy of NavigationColumnState(__dst);
      if (v19)
      {
        goto LABEL_76;
      }

      goto LABEL_19;
    }

    if (specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, __dst, v13, v14))
    {
      goto LABEL_75;
    }

    v20 = *(v14 + 16);
    if (v13 + 1 >= v20)
    {
      goto LABEL_18;
    }

    outlined init with copy of NavigationColumnState(v14 + v18 + 32, v34);
    if (v35 > 2u)
    {
      if (v35 != 5)
      {
        goto LABEL_74;
      }

      goto LABEL_59;
    }

    if (v35 != 1)
    {
      if (v35 != 2)
      {
        goto LABEL_74;
      }

      v19 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v34, v13 + 1, v14);
      outlined destroy of NavigationColumnState(v34);
      goto LABEL_25;
    }

    result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v34, v13 + 1, v14);
    if (result)
    {
      goto LABEL_74;
    }

    if (v13 + 2 >= v20)
    {
      goto LABEL_59;
    }

    if (v13 + 2 >= *(v14 + 16))
    {
      goto LABEL_88;
    }

    outlined init with copy of NavigationColumnState(v14 + v18 + 392, v32);
    if (v33 > 2u)
    {
      if (v33 != 5)
      {
        break;
      }

LABEL_58:
      outlined destroy of NavigationColumnState(v32);
LABEL_59:
      outlined destroy of NavigationColumnState(v34);
LABEL_18:
      result = outlined destroy of NavigationColumnState(__dst);
      goto LABEL_19;
    }

    if (v33 != 1)
    {
      if (v33 != 2)
      {
        break;
      }

      v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v32, v13 + 2, v14) ^ 1;
      goto LABEL_65;
    }

    result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v32, v13 + 2, v14);
    if (result)
    {
      break;
    }

    if (v13 + 3 >= v20)
    {
      goto LABEL_58;
    }

    if (v13 + 3 >= *(v14 + 16))
    {
      goto LABEL_90;
    }

    outlined init with copy of NavigationColumnState(v14 + v18 + 752, v30);
    if (v31 > 2u)
    {
      if (v31 - 3 >= 2)
      {
        goto LABEL_62;
      }
    }

    else if (v31)
    {
      v22 = v13 + 3;
      if (v31 != 1)
      {
        v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v30, v22, v14) ^ 1;
        goto LABEL_64;
      }

      if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v30, v22, v14) & 1) == 0)
      {
        v23 = *(v14 + 16);
        if (v13 + 4 < v23)
        {
          outlined init with copy of NavigationColumnState(v14 + v18 + 1112, v28);
          if (v29 > 2u)
          {
            if (v29 - 3 >= 2)
            {
              goto LABEL_69;
            }
          }

          else if (v29)
          {
            v24 = v13 + 4;
            if (v29 != 1)
            {
              v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v28, v24, v14) ^ 1;
              goto LABEL_71;
            }

            if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v42, v28, v24, v14) & 1) == 0)
            {
              if (v13 + 5 < v23)
              {
                v21 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v13 + 5, v14, v42);
LABEL_71:
                outlined destroy of NavigationColumnState(v28);
                goto LABEL_64;
              }

LABEL_69:
              v21 = 1;
              goto LABEL_71;
            }
          }

          v21 = 0;
          goto LABEL_71;
        }

LABEL_62:
        v21 = 1;
        goto LABEL_64;
      }
    }

    v21 = 0;
LABEL_64:
    outlined destroy of NavigationColumnState(v30);
LABEL_65:
    outlined destroy of NavigationColumnState(v32);
    outlined destroy of NavigationColumnState(v34);
    result = outlined destroy of NavigationColumnState(__dst);
    if ((v21 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_19:
    --v13;
    v18 -= 360;
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }
  }

  outlined destroy of NavigationColumnState(v32);
LABEL_74:
  outlined destroy of NavigationColumnState(v34);
LABEL_75:
  outlined destroy of NavigationColumnState(__dst);
LABEL_76:
  outlined init with copy of NavigationColumnState(v14 + v18 - 328, __dst);

  outlined init with copy of NavigationColumnState.ColumnContent(&__dst[120], v34);
  if (v38)
  {
    outlined destroy of NavigationColumnState(__dst);
    outlined destroy of NavigationState?(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
  }

  else
  {
    v25 = v36;
    if (*(v37 + 16))
    {
      outlined destroy of NavigationColumnState(__dst);
      outlined destroy of NavigationState?(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
    }

    else
    {

      if ((*(*v25 + 80))(v26))
      {
        outlined destroy of NavigationColumnState(__dst);
        outlined destroy of NavigationState?(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
      }

      else
      {
        v27 = (*(*v25 + 88))();
        outlined destroy of NavigationState?(v42, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);

        result = outlined destroy of NavigationColumnState(__dst);
        if (__OFSUB__(v27, 1))
        {
          goto LABEL_89;
        }
      }
    }
  }

  outlined destroy of NavigationState?(v34, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
  return v13;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(before:for:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a2)
  {
    goto LABEL_23;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v14);
  v15 = a3;
  v16 = a4;
  if (a4)
  {
    if (a4 != 1)
    {
LABEL_14:
      outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(v14, type metadata accessor for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>.Index.Kind));
      return 0;
    }

    if (!__OFSUB__(a3, 1))
    {
      if (((a3 - 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      if (v14[120])
      {
        goto LABEL_14;
      }

      outlined init with copy of NavigationColumnState.ColumnContent(v14, v12);
      v9 = v13;

      if (a3)
      {

        outlined destroy of NavigationState?(v12, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
        goto LABEL_14;
      }

      if ((*(*v9 + 80))(v10))
      {

LABEL_19:
        outlined destroy of NavigationState?(v12, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
LABEL_9:
        outlined destroy of NavigationColumnState.ColumnContent(v14);
        return a1;
      }

      v11 = (*(*v9 + 88))();

      if (!__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!__OFSUB__(a3, 1))
  {
    if (((a3 - 1) & 0x8000000000000000) == 0 || !a3)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (a2)
  {
    goto LABEL_23;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v14);
  v15 = a3;
  v16 = a4;
  if (a4)
  {
    if (a4 != 1)
    {
LABEL_14:
      outlined destroy of (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>.Index.Kind)(v14, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind), &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
      return 0;
    }

    if (!__OFSUB__(a3, 1))
    {
      if (((a3 - 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      if (v14[120])
      {
        goto LABEL_14;
      }

      outlined init with copy of NavigationColumnState.ColumnContent(v14, v12);
      v9 = v13;

      if (a3)
      {

        outlined destroy of NavigationState?(v12, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
        goto LABEL_14;
      }

      if ((*(*v9 + 80))(v10))
      {

LABEL_19:
        outlined destroy of NavigationState?(v12, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
LABEL_9:
        outlined destroy of NavigationColumnState.ColumnContent(v14);
        return a1;
      }

      v11 = (*(*v9 + 88))();

      if (!__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!__OFSUB__(a3, 1))
  {
    if (((a3 - 1) & 0x8000000000000000) == 0 || !a3)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void), void (*a6)(unint64_t, void, uint64_t, uint64_t, void *, void *), void *(*a7)(void **__return_ptr, void **, uint64_t *))
{
  v15 = outlined init with copy of NavigationState.Base(v7, v24);
  if (!v27)
  {
    return a5(v24[0], LOBYTE(v24[1]), v24[2]);
  }

  if (v27 != 1)
  {
    v17 = v24[0];
    v28[2] = *&v24[5];
    v28[3] = *&v24[7];
    v29 = v24[9];
    v28[0] = *&v24[1];
    v28[1] = *&v24[3];
    if (a2)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      LODWORD(v22) = 0;
      v21 = 894;
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v24[0] + 16) >= a1)
    {
      v23[0] = v24[0];
      MEMORY[0x1EEE9AC00](v15);
      v21 = v23;
      v22 = v28;
      v18 = specialized Sequence.reduce<A>(_:_:)(0, a7, &v20, 0, a1);
      if (*(v17 + 16) > a1)
      {
        v19 = v18;
        outlined init with copy of NavigationColumnState(v17 + 360 * a1 + 32, v23);

        a6(a1, 0, a3, a4, v23, v19);
        outlined destroy of NavigationState?(v28, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
        return outlined destroy of NavigationColumnState(v23);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v26;
  v20 = v25;
  outlined consume of ResolvedNavigationDestinations?(v24[45]);
  memcpy(v23, v24, 0x163uLL);
  if ((a2 & 1) != 0 || a1)
  {
    goto LABEL_18;
  }

  a6(0, 0, a3, a4, v23, 0);
  return outlined destroy of NavigationColumnState(v23);
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.initialRootView(for:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = static HorizontalAlignment.center.getter();
  v10 = *(v4 + 472);
  if (*(v10 + 16))
  {
    v11 = result;
    v12 = a2;
    v13 = a2;
    outlined init with copy of _VariadicView_Children(v10 + 32, &v36);
    v14 = a2 == 3;
    v34[0] = v11;
    v34[1] = 0;
    v35 = 1;
    v37[0] = 0;
    v37[1] = a1;
    v38 = a2;
    v39 = a3;
    v40 = 0;
    v41 = v14;
    v15 = *(v4 + 456);
    if (v13 >= 3)
    {
      LOBYTE(v13) = 3;
    }

    outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(v34, v21, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>, MEMORY[0x1E697FFD0], type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
    v22 = 0;
    v23 = a1;
    v24 = v12;
    v25 = a3;
    v26 = 0;
    v27 = v14;
    v28 = 1;
    v16 = swift_allocObject();
    *(v16 + 16) = 1;
    v29 = closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)partial apply;
    v30 = v16;
    v15(&v18, v37);
    v31 = v18;
    v32 = v19;
    v33 = v20;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>);
    v17 = AnyView.init<A>(_:)();
    result = outlined destroy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(v34, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>, MEMORY[0x1E697FFD0], type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 88) = 2;
    *a4 = v17;
    *(a4 + 8) = v13;
    *(a4 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = static HorizontalAlignment.center.getter();
  if (*(*(v4 + 472) + 16))
  {
    v12[0] = 0;
    v12[1] = a1;
    v13 = a2;
    v14 = a3;
    v15 = 0;
    v16 = a2 == 3;
    v10 = *(v4 + 456);
    if (a2 >= 3u)
    {
      v11 = 3;
    }

    else
    {
      v11 = a2;
    }

    result = _s7SwiftUI30ResolvedNavigationDestinationsV16prepareToPresent4view2at012shouldUpdateE08applyingAA7AnyViewVx_AA0d5StackO8PositionVSbq_ALXEtAA0O0RzAA0O8ModifierR_r0_lFZAA09_VariadicO0O4TreeVy_AA13_VStackLayoutVAA01_dP18StyleConfigurationV4RootVG_AA05EmptyR0VTt3B5Tf4nndn_n(result, 0, 1, v12, v10);
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 88) = 2;
    *a4 = result;
    *(a4 + 8) = v11;
    *(a4 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = static HorizontalAlignment.center.getter();
  v10 = *(v4 + 472);
  if (*(v10 + 16))
  {
    v11 = result;
    v12 = a2;
    outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(v10 + 32, &v32, type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>);
    v13 = a2 == 3;
    v30[0] = v11;
    v30[1] = 0;
    v31 = 1;
    v33[0] = 0;
    v33[1] = a1;
    v34 = a2;
    v35 = a3;
    v36 = 0;
    v37 = v13;
    v14 = *(v4 + 456);
    if (a2 >= 3u)
    {
      a2 = 3;
    }

    outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(v30, v19, type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
    v20 = 0;
    v21 = a1;
    v22 = v12;
    v23 = a3;
    v24 = 0;
    v25 = v13;
    v26 = 1;
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    v27 = closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)partial apply;
    v28 = v15;
    v14(__src, v33);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v29, __src, sizeof(v29));
    memcpy(v39, __src, 0x130uLL);
    outlined init with copy of StackItemModifier(__dst, v17);
    outlined destroy of StackItemModifier(v39);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>(0);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier);
    v16 = AnyView.init<A>(_:)();
    result = outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(v30, type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
    *(a4 + 72) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 88) = 2;
    *a4 = v16;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v8 = v7;
  v16 = outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, &v118);
  if (a4)
  {
    if (a4 == 1)
    {
      if ((v126 & 1) == 0)
      {
        v17 = v123;
        v18 = v124;
        v19 = v125;
        v20 = (*(*v123 + 88))(v16);
        v21 = v20 + 1;
        if (!__OFADD__(v20, 1))
        {
          v22 = v21 + a3;
          if (!__OFADD__(v21, a3))
          {
            if ((a3 & 0x8000000000000000) == 0)
            {
              if (*(v18 + 16) > a3)
              {
                v23 = a6 + v22;
                if (!__OFADD__(a6, v22))
                {
                  v102 = v19;
                  v103 = v17;
                  v104 = v18;
                  v105 = a7;
                  v24 = *(a5 + 32);
                  v25 = *(a5 + 24);
                  v26 = *(a5 + 16);
                  v100 = v18 + 88 * a3;
                  v27 = *(v100 + 32);
                  *&v110 = v22;
                  *(&v110 + 1) = v26;
                  LOBYTE(v111) = v25;
                  *(&v111 + 1) = v24;
                  *&v112 = v23;
                  BYTE8(v112) = 1;
                  v28 = v8[57];
                  v29 = v8[58];
                  v30 = *(*v27 + 104);
                  v101 = v22;
                  type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>();
                  v32 = v31;
                  v33 = lazy protocol witness table accessor for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>();

                  v34 = v30(&v110, v28, v29, v32, v33);

                  if (*(v104 + 16) > a3)
                  {
                    if (v25 >= 3)
                    {
                      LOBYTE(v25) = 3;
                    }

                    outlined init with copy of NavigationViewDestinationView(v100 + 32, v109);

                    v35 = v105;
                    outlined init with copy of NavigationLinkSelectionIdentifier(v109 + 8, v105 + 24);
                    outlined destroy of NavigationViewDestinationView(v109);
                    *(v105 + 88) = 1;
                    *v35 = v34;
                    *(v35 + 8) = v25;
                    *(v35 + 16) = v101;
                    return outlined destroy of NavigationState?(&v118, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
                  }

                  goto LABEL_59;
                }

LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          goto LABEL_54;
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      goto LABEL_67;
    }

    if (v126)
    {
      outlined init with copy of NavigationColumnState.ColumnContent(&v118, &v110);
      if (v116 != 255)
      {
        if (v116)
        {
LABEL_23:
          v129 = v112;
          v130 = v113;
          v131 = v114;
          v132 = v115;
          v127 = v110;
          v128 = v111;
          outlined destroy of NavigationColumnState.ColumnContent(&v118);
          v58 = v127;
          v59 = *(a5 + 16);
          v60 = *(a5 + 24);
          v61 = *(a5 + 32);
          outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v109);
          v62 = BYTE8(v109[7]);
          if ((BYTE8(v109[7]) & 1) == 0)
          {
          }

          outlined destroy of NavigationState?(v109, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
          *&v117 = 0;
          *(&v117 + 1) = v59;
          LOBYTE(v118) = v60;
          *(&v118 + 1) = v61;
          *&v119 = a6;
          BYTE8(v119) = v62 ^ 1;
          outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(v8, v109, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
          v63 = swift_allocObject();
          memcpy((v63 + 16), v109, 0x1E0uLL);
          *(v63 + 496) = v59;
          *(v63 + 504) = v60;
          *(v63 + 512) = v61;
          v64 = *(*v58 + 104);
          type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier>, type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>);
          v66 = v65;
          v67 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
          v68 = v64(&v117, closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)specialized partial apply, v63, v66, v67);

          if (v60 >= 3)
          {
            v69 = 3;
          }

          else
          {
            v69 = v60;
          }

          outlined init with copy of NavigationLinkSelectionIdentifier(&v127 + 8, a7 + 24);
          result = outlined destroy of NavigationViewDestinationView(&v127);
          *(a7 + 88) = 1;
          *a7 = v68;
          goto LABEL_38;
        }

LABEL_31:
        v127 = v110;
        v128 = v111;
        *&v129 = v112;
        outlined destroy of NavigationColumnState.ColumnContent(&v118);
        if (a2)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        specialized NavigationState.StackContent.Views.ViewsSequence.destinations(before:)(a1, &v117);
        v70 = *(a5 + 16);
        v71 = *(a5 + 24);
        v72 = *(a5 + 32);
        outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(v8, v109, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
        v73 = swift_allocObject();
        memcpy((v73 + 16), v109, 0x1E0uLL);
        *(v73 + 496) = v70;
        *(v73 + 504) = v71;
        *(v73 + 512) = v72;
        outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v109);
        v74 = BYTE8(v109[7]);
        if ((BYTE8(v109[7]) & 1) == 0)
        {
        }

        outlined destroy of NavigationState?(v109, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
        *&v110 = 0;
        *(&v110 + 1) = v70;
        LOBYTE(v111) = v71;
        *(&v111 + 1) = v72;
        *&v112 = a6;
        BYTE8(v112) = v74 ^ 1;
        v75 = *(&v128 + 1);
        v76 = v129;
        __swift_project_boxed_opaque_existential_1(&v127, *(&v128 + 1));
        v109[2] = v119;
        v109[3] = v120;
        v109[4] = v121;
        *&v109[5] = v122;
        v109[0] = v117;
        v109[1] = v118;
        v77 = *(v76 + 104);
        type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier>, type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>);
        v79 = v78;
        v80 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
        v81 = v77(v109, partial apply for specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:), v73, &v110, v79, v80, v75, v76);
        outlined destroy of ResolvedNavigationDestinations(&v117);

        if (v71 >= 3)
        {
          v69 = 3;
        }

        else
        {
          v69 = v71;
        }

        v82 = *(&v128 + 1);
        v83 = v129;
        __swift_project_boxed_opaque_existential_1(&v127, *(&v128 + 1));
        (*(v83 + 24))(v82, v83);
        result = outlined destroy of AnyNavigationLinkPresentedValue(&v127);
        *(a7 + 88) = 0;
        *a7 = v81;
LABEL_38:
        *(a7 + 8) = v69;
        *(a7 + 16) = 0;
        return result;
      }

      v105 = a7;
      if (a2)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v84 = *(a5 + 16);
      v85 = *(a5 + 24);
      v86 = *(a5 + 32);
      v87 = static HorizontalAlignment.center.getter();
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      v88 = v8[59];
      if (*(v88 + 16) <= a1)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v89 = v87;
      outlined init with copy of _VariadicView_Children(v88 + (a1 << 6) + 32, &v128 + 8);
      v90 = v85 == 3;
      v127 = v89;
      LOBYTE(v128) = 1;
      v133 = 0;
      v134 = v84;
      v135 = v85;
      v136 = v86;
      v137 = a6;
      v138 = v85 == 3;
      v103 = v8[57];
      v91 = MEMORY[0x1E697FFD0];
      if (v85 >= 3)
      {
        v92 = 3;
      }

      else
      {
        v92 = v85;
      }
    }

    else
    {
      outlined init with copy of NavigationColumnState.ColumnContent(&v118, &v110);

      if (v116 != 255)
      {
        if (v116)
        {
          goto LABEL_23;
        }

        goto LABEL_31;
      }

      v105 = a7;
      if (a2)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v84 = *(a5 + 16);
      v85 = *(a5 + 24);
      v86 = *(a5 + 32);
      v93 = static HorizontalAlignment.center.getter();
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      v94 = v8[59];
      if (*(v94 + 16) <= a1)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v95 = v93;
      outlined init with copy of _VariadicView_Children(v94 + (a1 << 6) + 32, &v128 + 8);
      v90 = v85 == 3;
      v127 = v95;
      LOBYTE(v128) = 1;
      v133 = 0;
      v134 = v84;
      v135 = v85;
      v136 = v86;
      v137 = a6;
      v138 = v85 == 3;
      v103 = v8[57];
      v91 = MEMORY[0x1E697FFD0];
      if (v85 >= 3)
      {
        v92 = 3;
      }

      else
      {
        v92 = v85;
      }
    }

    LODWORD(v104) = v92;
    outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(&v127, v109, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>, v91, type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
    *(&v109[5] + 1) = 0;
    *&v109[6] = v84;
    *(&v109[6] + 1) = v85;
    *&v109[7] = v86;
    *(&v109[7] + 1) = a6;
    LOBYTE(v109[8]) = v90;
    BYTE1(v109[8]) = 1;
    v96 = swift_allocObject();
    *(v96 + 16) = 1;
    *(&v109[8] + 1) = closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)partial apply;
    *&v109[9] = v96;
    v103(&v106, &v133);
    BYTE8(v109[9]) = v106;
    v109[10] = v107;
    v109[11] = v108;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>);
    v97 = AnyView.init<A>(_:)();
    outlined destroy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(&v127, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>, MEMORY[0x1E697FFD0], type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>);
    v98 = v105;
    *(v105 + 72) = 0u;
    *(v98 + 56) = 0u;
    *(v98 + 40) = 0u;
    *(v98 + 24) = 0u;
    *(v98 + 88) = 2;
    *v98 = v97;
    *(v98 + 8) = v104;
    *(v98 + 16) = 0;
    return outlined destroy of NavigationColumnState.ColumnContent(&v118);
  }

  if ((v126 & 1) == 0)
  {
    v36 = v123;

    v37 = a3 + 1;
    if (!__OFADD__(a3, 1))
    {
      v38 = a6 + v37;
      if (!__OFADD__(a6, v37))
      {
        v39 = *(a5 + 296);
        v40 = *(a5 + 312);
        v41 = *(a5 + 264);
        v109[2] = *(a5 + 280);
        v109[3] = v39;
        v42 = *(a5 + 32);
        v43 = *(a5 + 24);
        v44 = *(a5 + 16);
        v47 = v8 + 57;
        v46 = v8[57];
        v45 = v47[1];
        *&v110 = a3 + 1;
        *(&v110 + 1) = v44;
        LOBYTE(v111) = v43;
        *(&v111 + 1) = v42;
        *&v112 = v38;
        BYTE8(v112) = 1;
        v109[4] = v40;
        *&v109[5] = *(a5 + 328);
        v109[0] = *(a5 + 248);
        v109[1] = v41;
        v48 = *(*v36 + 152);
        v105 = a3 + 1;
        type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>();
        v50 = v49;
        v51 = lazy protocol witness table accessor for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>();
        v52 = v48(&v127, v109, v46, v45, a3, &v110, v50, v51);
        if (v43 >= 3)
        {
          LOBYTE(v43) = 3;
        }

        v53 = __swift_project_boxed_opaque_existential_1(&v127, *(&v128 + 1));
        v54 = MEMORY[0x1EEE9AC00](v53);
        (*(v56 + 16))(&v99 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v54);
        AnyHashable.init<A>(_:)();

        *(a7 + 88) = 0;
        *a7 = v52;
        *(a7 + 8) = v43;
        *(a7 + 16) = v105;
        __swift_destroy_boxed_opaque_existential_1(&v127);
        return outlined destroy of NavigationState?(&v118, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

LABEL_67:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.destinations(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of NavigationState.Base(v3, v29);
  if (v30 == 1)
  {
    outlined init with copy of NavigationState.Base(v29, v27);
    v13[3] = *&v28[48];
    v13[4] = *&v28[64];
    v14 = *&v28[80];
    v13[0] = *v28;
    v13[1] = *&v28[16];
    v13[2] = *&v28[32];
    if (!*v28)
    {
LABEL_12:
      outlined destroy of NavigationColumnState(v27);
      goto LABEL_14;
    }

    if (!a1)
    {
      *a2 = *&v13[0];
      v6 = *&v28[8];
      *(a2 + 24) = *&v28[24];
      v7 = *&v28[56];
      *(a2 + 40) = *&v28[40];
      *(a2 + 56) = v7;
      *(a2 + 72) = *&v28[72];
      *(a2 + 8) = v6;
      outlined destroy of NavigationColumnState(v27);
      return outlined destroy of NavigationState.Base(v29);
    }

LABEL_11:
    outlined destroy of NavigationState?(v13, &lazy cache variable for type metadata for ResolvedNavigationDestinations?, &type metadata for ResolvedNavigationDestinations);
    goto LABEL_12;
  }

  if (v30 == 2)
  {
    outlined init with copy of NavigationState.Base(v29, v27);
    v8 = v27[0];
    outlined consume of NavigationSplitViewState?(v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8]);
    if (a1 <= 0)
    {

      goto LABEL_14;
    }

    if (*(v8 + 16) >= a1)
    {
      outlined init with copy of NavigationColumnState(v8 + 360 * a1 - 328, v13);

      v23 = v17;
      v24 = v18;
      v25 = v19;
      v26 = v20;
      v21 = v15;
      v22 = v16;
      outlined init with copy of ResolvedNavigationDestinations(&v21, v12);
      outlined destroy of NavigationColumnState(v13);
      v9 = v24;
      *(a2 + 32) = v23;
      *(a2 + 48) = v9;
      *(a2 + 64) = v25;
      *(a2 + 80) = v26;
      v10 = v22;
      *a2 = v21;
      *(a2 + 16) = v10;
      return outlined destroy of NavigationState.Base(v29);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(a1 + 456))(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a5, __src, 0x130uLL);
  *(a5 + 304) = a2;
  *(a5 + 312) = a3;
  *(a5 + 320) = a4;
  memcpy(v13, __src, sizeof(v13));
  outlined init with copy of StackItemModifier(__dst, &v10);
  return outlined destroy of StackItemModifier(v13);
}

uint64_t _NavigationStackStyleConfiguration.init(authority:context:structureSeed:previousAnimationSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v85 = a2;
  v86 = a4;
  v87 = a3;
  v75 = *a6;
  v9 = *(a6 + 8);
  v84 = a1;
  Strong = swift_weakLoadStrong();
  v76 = v9;
  if (Strong && (v11 = Strong, swift_beginAccess(), v12 = v11[8], v102[6] = v11[7], v102[7] = v12, v102[8] = v11[9], *(&v102[8] + 10) = *(v11 + 154), v13 = v11[4], v102[2] = v11[3], v102[3] = v13, v14 = v11[6], v102[4] = v11[5], v102[5] = v14, v15 = v11[2], v102[0] = v11[1], v102[1] = v15, _s7SwiftUI31AnyNavigationLinkPresentedValueVSgWOcTm_0(v102, v114, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , *&v109[96] = v102[6], *&v109[112] = v102[7], *&v109[128] = v102[8], *&v109[138] = *(&v102[8] + 10), *&v109[32] = v102[2], *&v109[48] = v102[3], *&v109[64] = v102[4], *&v109[80] = v102[5], *v109 = v102[0], *&v109[16] = v102[1], getEnumTag for AccessibilityActionCategory.Category(v109) != 1))
  {
    *&v118[96] = v102[6];
    *&v118[112] = v102[7];
    *&v118[128] = v102[8];
    *&v118[138] = *(&v102[8] + 10);
    *&v118[32] = v102[2];
    *&v118[48] = v102[3];
    *&v118[64] = v102[4];
    *&v118[80] = v102[5];
    *v118 = v102[0];
    *&v118[16] = v102[1];
    NavigationState.stackContent(for:)(v85, v87, v86, v114);
    outlined destroy of NavigationState?(v102, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
    if (v114[448] != 255)
    {
      memcpy(v118, v114, sizeof(v118));
      goto LABEL_8;
    }
  }

  else
  {
    memset(v114, 0, 448);
  }

  *v118 = v85;
  if (v87 == 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = v87;
  }

  v118[8] = v16;
  *&v118[16] = v86;
  v118[448] = 0;
LABEL_8:
  v119 = BYTE4(a5) & 1;
  outlined init with copy of NavigationState.Base(v118, v109);
  outlined init with copy of NavigationState.Base(v109, v114);
  type metadata accessor for AnyNavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_NavigationStackStyleConfiguration.Root>, &type metadata for _NavigationStackStyleConfiguration.Root, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18CD63400;
  outlined destroy of NavigationState.StackContent.Views(v109);
  v115 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v116 = 0;
  v77 = v17;
  v117 = v17;
  v18 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v21)
  {
LABEL_49:
    outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(v114);
    v26 = MEMORY[0x1E69E7CC0];
LABEL_52:
    outlined init with copy of NavigationAuthority(v84, v114);
    v59 = swift_allocObject();
    outlined init with take of NavigationAuthority(v114, v59 + 16);
    *(v59 + 40) = v85;
    *(v59 + 48) = v87;
    *(v59 + 56) = v86;
    v60 = swift_weakLoadStrong();
    if (!v60 || (v61 = v60, swift_beginAccess(), v62 = v61[8], v102[6] = v61[7], v102[7] = v62, v102[8] = v61[9], *(&v102[8] + 10) = *(v61 + 154), v63 = v61[4], v102[2] = v61[3], v102[3] = v63, v64 = v61[6], v102[4] = v61[5], v102[5] = v64, v65 = v61[2], v102[0] = v61[1], v102[1] = v65, _s7SwiftUI31AnyNavigationLinkPresentedValueVSgWOcTm_0(v102, v114, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , *&v109[96] = v102[6], *&v109[112] = v102[7], *&v109[128] = v102[8], *&v109[138] = *(&v102[8] + 10), *&v109[32] = v102[2], *&v109[48] = v102[3], *&v109[64] = v102[4], *&v109[80] = v102[5], *v109 = v102[0], *&v109[16] = v102[1], getEnumTag for AccessibilityActionCategory.Category(v109) == 1))
    {
      outlined destroy of NavigationState.StackContent(v118);
      v66 = 1;
LABEL_65:
      v67 = v119;
      v68 = v84;
      *a7 = v85;
      *(a7 + 8) = v87;
      *(a7 + 16) = v86;
      *(a7 + 24) = v26;
      *(a7 + 32) = partial apply for closure #2 in _NavigationStackStyleConfiguration.init(authority:context:structureSeed:previousAnimationSeed:);
      *(a7 + 40) = v59;
      *(a7 + 48) = a5;
      *(a7 + 52) = v67;
      *(a7 + 53) = v66;
      return outlined destroy of NavigationAuthority(v68);
    }

    v107[4] = v102[7];
    v108[0] = v102[8];
    *(v108 + 10) = *(&v102[8] + 10);
    v106[1] = v102[2];
    v107[0] = v102[3];
    v107[1] = v102[4];
    v107[2] = v102[5];
    v107[3] = v102[6];
    v105 = v102[0];
    v106[0] = v102[1];
    NavigationState.stackContent(for:)(v85, v87, v86, v114);
    outlined destroy of NavigationState?(v102, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
    if (v114[448] == 255)
    {
      outlined destroy of NavigationState.StackContent(v118);
      outlined destroy of NavigationState?(v114, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      v66 = 1;
      goto LABEL_65;
    }

    NavigationState.StackContent.animationSeed.getter(&v105);
    outlined destroy of NavigationState.StackContent(v118);
    if (v76)
    {
      if (v105)
      {
        v66 = 1;
LABEL_64:
        outlined destroy of NavigationState.StackContent(v114);
        goto LABEL_65;
      }
    }

    else
    {
      v66 = 1;
      if (v105 == -1 || v75 == -1 || v105 != v75)
      {
        goto LABEL_64;
      }
    }

    v66 = 0;
    goto LABEL_64;
  }

  v22 = 0;
  v23 = 0;
  v24 = &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind);
  do
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v18 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v18, v23 & 1, v19, v20, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind), &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
    ++v22;
  }

  while ((v23 & 1) == 0 || v20 < 2u);
  v24 = v102;
  if (!v25)
  {
    goto LABEL_49;
  }

  v82 = 0;
  v104 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25 & ~(v25 >> 63), 0);
  v26 = v104;
  v27 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v25 < 0)
  {
    goto LABEL_75;
  }

  v31 = v27;
  LOBYTE(v24) = v28;
  v32 = v30;
  v83 = v22;
  v73 = a7;
  v74 = a5;
  v33 = 0;
  v34 = v29;
  while (1)
  {
    v35 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    if (v38)
    {
      break;
    }

    if (v24)
    {
      goto LABEL_77;
    }

    if (v31 < v35)
    {
      goto LABEL_67;
    }

    LOBYTE(v24) = v87;
    if (v35 >= v31)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          if (v37 == 1 && v34 < v36)
          {
            goto LABEL_73;
          }
        }

        else if (v37 != 2 || v36)
        {
          goto LABEL_72;
        }
      }

      else if (v37)
      {
        if (v37 != 2)
        {
          goto LABEL_78;
        }
      }

      else if (v34 < v36)
      {
        goto LABEL_74;
      }
    }

    v39 = outlined init with copy of NavigationState.Base(v114, v109);
    if (v113)
    {
      if (v113 == 1)
      {
        v71 = v112;
        v70 = v111;
        outlined consume of ResolvedNavigationDestinations?(v110);
        memcpy(v102, v109, 0x163uLL);
        if (v31)
        {
          goto LABEL_80;
        }

        specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(0, 0, v34, v32, v102, 0, v103);
        outlined destroy of NavigationColumnState(v102);
      }

      else
      {
        v51 = *v109;
        v125[2] = *&v109[40];
        v125[3] = *&v109[56];
        v126 = *&v109[72];
        v125[0] = *&v109[8];
        v125[1] = *&v109[24];
        if (v31 < 0)
        {
          goto LABEL_68;
        }

        if (*(*v109 + 16) < v31)
        {
          goto LABEL_70;
        }

        *&v102[0] = *v109;
        MEMORY[0x1EEE9AC00](v39);
        v71 = v102;
        v72 = v125;
        v52 = v82;
        v53 = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, &v70, 0, v31);
        v82 = v52;
        if (v31 >= *(v51 + 16))
        {
          goto LABEL_71;
        }

        v24 = v53;
        outlined init with copy of NavigationColumnState(v51 + 360 * v31 + 32, v102);

        specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(v31, 0, v34, v32, v102, v24, v103);
        outlined destroy of NavigationState?(v125, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState);
        outlined destroy of NavigationColumnState(v102);
        LOBYTE(v24) = v87;
      }
    }

    else
    {
      v81 = v26;
      v40 = *v109;
      v41 = v109[8];
      v42 = *&v109[16];
      v43 = static HorizontalAlignment.center.getter();
      if (!*(v77 + 16))
      {
        goto LABEL_69;
      }

      v44 = v43;
      v80 = v34;
      v120[0] = 0;
      v120[1] = v40;
      v121 = v41;
      v122 = v42;
      v123 = 0;
      v124 = v41 == 3;
      LOBYTE(v102[0]) = 1;
      if (v41 >= 3)
      {
        v45 = 3;
      }

      else
      {
        v45 = v41;
      }

      v78 = v45;
      v24 = swift_allocObject();
      *(v24 + 16) = 1;
      v79 = v32;
      v46 = v102[0];
      destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v120, v47, v48, v49);
      v94[0] = v44;
      v94[1] = 0;
      LOBYTE(v95) = v46;
      v96 = 0;
      *&v97 = v40;
      *(&v97 + 1) = v41;
      v98 = v42;
      v99 = 0;
      LOBYTE(v100) = v41 == 3;
      BYTE1(v100) = 1;
      *(&v100 + 1) = closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)partial apply;
      v101 = v24;
      v93 = v24;
      v90 = v97;
      v91 = v42;
      v92 = v100;
      *&v88[88] = v44;
      v89 = v95;
      v102[0] = v44;
      LOBYTE(v102[1]) = v46;
      LOBYTE(v32) = v79;
      *(&v102[1] + 1) = 0;
      *&v102[2] = v40;
      *(&v102[2] + 1) = v41;
      v102[3] = v42;
      LOBYTE(v102[4]) = v41 == 3;
      v34 = v80;
      BYTE1(v102[4]) = 1;
      *(&v102[4] + 1) = closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)partial apply;
      *&v102[5] = v24;
      outlined init with copy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(v94, v88);
      outlined destroy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(v102);
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>);
      v50 = AnyView.init<A>(_:)();
      BYTE8(v103[5]) = 2;
      *&v103[0] = v50;
      BYTE8(v103[0]) = v78;
      memset(&v103[1], 0, 72);
      LOBYTE(v24) = v87;
      v26 = v81;
    }

    *v109 = v33;
    *&v109[40] = v103[2];
    *&v109[56] = v103[3];
    *&v109[72] = v103[4];
    *&v109[81] = *(&v103[4] + 9);
    *&v109[8] = v103[0];
    *&v109[24] = v103[1];
    outlined init with copy of NavigationAuthority(v84, v106 + 8);
    outlined init with copy of NavigationStackViewSource(&v109[32], v107 + 8);
    *&v105 = v85;
    BYTE8(v105) = v24;
    *&v106[0] = v86;
    *&v107[0] = v33;
    *&v108[0] = v85;
    BYTE8(v108[0]) = v24;
    *&v108[1] = v86;
    outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(v109, type metadata accessor for (offset: Int, element: NavigationState.StackContent.PositionedView));
    v104 = v26;
    v55 = *(v26 + 16);
    v54 = *(v26 + 24);
    if (v55 >= v54 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
      v26 = v104;
    }

    ++v33;
    *(v26 + 16) = v55 + 1;
    outlined init with take of _NavigationStackStyleConfiguration.Item(&v105, v26 + 152 * v55 + 32);
    v31 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v31, 0, v34, v32, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind), &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
    LOBYTE(v24) = v56;
    v34 = v57;
    v32 = v58;
    if (v83 == v33)
    {
      outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(v114);
      a7 = v73;
      LODWORD(a5) = v74;
      goto LABEL_52;
    }
  }

LABEL_76:
  if (v24)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  __break(1u);
LABEL_80:
  LODWORD(v72) = 0;
  v71 = 894;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in _NavigationStackStyleConfiguration.init(authority:context:structureSeed:previousAnimationSeed:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  static Transaction.current.getter();
  static Transaction.current.getter();
  v7 = Transaction.disablesAnimations.getter();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = Transaction.disablesAnimations.getter();
  }

  static Transaction.current.getter();
  v9 = Transaction.animation.getter();

  if (!v9)
  {
    v9 = Transaction.animation.getter();
  }

  v11 = 1;
  v12 = 0;
  v13 = 9;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = v8 & 1;
  v21 = v9;
  NavigationAuthority.enqueueRequest(_:)(&v11);
  return outlined destroy of NavigationRequest(&v11);
}

uint64_t outlined assign with take of _NavigationStackStyleConfiguration.Item.ID(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  if (a2 != a1)
  {
    outlined destroy of NavigationStackViewSource(a2 + 8);
    *(a2 + 8) = *(a1 + 8);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 72);
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 72) = v6;
    *(a2 + 56) = v5;
    *(a2 + 40) = v4;
  }

  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  return a2;
}

uint64_t static _NavigationStackStyleConfiguration.Item._makeView(view:inputs:)()
{
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGGraphCreateOffsetAttribute2();
  }

  AGCreateWeakAttribute();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Item.Child and conformance _NavigationStackStyleConfiguration.Item.Child();
  Attribute.init<A>(body:value:flags:update:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t _NavigationStackStyleConfiguration.Item.ID.hash(into:)()
{
  MEMORY[0x18D00F6F0](*v0);
  outlined init with copy of NavigationStackViewSource(v0 + 8, &v16);
  if (v20)
  {
    if (v20 == 1)
    {
      v13 = v16;
      v14 = v17;
      *v15 = v18;
      *&v15[16] = v19;
      MEMORY[0x18D00F6F0](2);
      _s7SwiftUI31AnyNavigationLinkPresentedValueVSgWOcTm_0(&v13, &v10, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue);
      if (*(&v11 + 1))
      {
        v7 = v10;
        v8 = v11;
        v9 = v12;
        Hasher._combine(_:)(1u);
        v1 = *(&v8 + 1);
        v2 = v9;
        __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
        (*(v2 + 24))(v6, v1, v2);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v6);
        outlined destroy of AnyNavigationLinkPresentedValue(&v7);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*&v15[16] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v10 = *&v15[8];
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](*&v15[24]);
      outlined destroy of NavigationLinkSelectionIdentifier(&v13);
    }

    else
    {
      MEMORY[0x18D00F6F0](0);
    }
  }

  else
  {
    v13 = v16;
    v14 = v17;
    *v15 = v18;
    MEMORY[0x18D00F6F0](1);
    AnyHashable.hash(into:)();
    outlined destroy of AnyHashable(&v13);
  }

  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  MEMORY[0x18D00F6F0](*(v0 + 80));
  MEMORY[0x18D00F6F0](v3);
  return MEMORY[0x18D00F6F0](v4);
}

Swift::Int _NavigationStackStyleConfiguration.Item.ID.hashValue.getter()
{
  Hasher.init(_seed:)();
  _NavigationStackStyleConfiguration.Item.ID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _NavigationStackStyleConfiguration.Item.ID()
{
  Hasher.init(_seed:)();
  _NavigationStackStyleConfiguration.Item.ID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _NavigationStackStyleConfiguration.Item.ID()
{
  Hasher.init(_seed:)();
  _NavigationStackStyleConfiguration.Item.ID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _NavigationStackStyleConfiguration.Item.Child.value.getter()
{
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGGraphRegisterDependency();
  }

  Value = AGGraphGetValue();
  outlined init with copy of _NavigationStackStyleConfiguration.Item(Value, v84);
  Strong = swift_weakLoadStrong();
  outlined destroy of _NavigationStackStyleConfiguration.Item(v84);
  if (!Strong || (swift_beginAccess(), v2 = Strong[8], v78 = Strong[7], v79 = v2, v80[0] = Strong[9], *(v80 + 10) = *(Strong + 154), v3 = Strong[4], v74 = Strong[3], v75 = v3, v4 = Strong[6], v76 = Strong[5], v77 = v4, v5 = Strong[2], v72 = Strong[1], v73 = v5, _s7SwiftUI31AnyNavigationLinkPresentedValueVSgWOcTm_0(&v72, __src, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v62[6] = v78, v62[7] = v79, v63[0] = v80[0], *(v63 + 10) = *(v80 + 10), v62[2] = v74, v62[3] = v75, v62[4] = v76, v62[5] = v77, v62[0] = v72, v62[1] = v73, getEnumTag for AccessibilityActionCategory.Category(v62) == 1))
  {
    memset(__src, 0, 448);
    LOBYTE(__src[28]) = -1;
LABEL_6:
    v6 = AGGraphGetValue();
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (v7 == 4)
    {
      LOBYTE(v7) = 0;
    }

    *&__dst[0] = *v6;
    BYTE8(__dst[0]) = v7;
    *&__dst[1] = v8;
    LOBYTE(__dst[28]) = 0;
    if (LOBYTE(__src[28]) != 255)
    {
      outlined destroy of NavigationState?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    }

    goto LABEL_12;
  }

  __dst[6] = v78;
  __dst[7] = v79;
  __dst[8] = v80[0];
  *(&__dst[8] + 10) = *(v80 + 10);
  __dst[2] = v74;
  __dst[3] = v75;
  __dst[4] = v76;
  __dst[5] = v77;
  __dst[0] = v72;
  __dst[1] = v73;
  v9 = AGGraphGetValue();
  NavigationState.stackContent(for:)(*v9, *(v9 + 8), *(v9 + 16), __src);
  outlined destroy of NavigationState?(&v72, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
  if (LOBYTE(__src[28]) == 255)
  {
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x1C1uLL);
LABEL_12:
  outlined init with copy of NavigationState.Base(__dst, __src);
  outlined init with copy of NavigationState.Base(__src, &v72);
  outlined destroy of NavigationState.StackContent.Views(__src);
  v81 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v82 = 0;
  v83 = &outlined read-only object #0 of _NavigationStackStyleConfiguration.Item.Child.value.getter;
  v10 = AGGraphGetValue();
  outlined init with copy of _NavigationStackStyleConfiguration.Item(v10, __src);
  v11 = *&__src[3];
  outlined destroy of _NavigationStackStyleConfiguration.Item(__src);
  v12 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (v11 < 0)
  {
    v22 = 0;
    do
    {
      --v22;
      v12 = specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(v12, v14 & 1, v16, v18, specialized NavigationState.StackContent.Views.ViewsSequence.index(before:for:));
      v14 = v23;
      v16 = v24;
      v18 = v25;
    }

    while (v11 < v22);
  }

  else
  {
    for (; v11; --v11)
    {
      v12 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v12, v14 & 1, v16, v18, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind), &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
      v14 = v19;
      v16 = v20;
      v18 = v21;
    }
  }

  outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(&v72, v62, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
  v26 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v65 = v27 & 1;
  v64 = v26;
  v66 = v29;
  v67 = v31;
  v68 = 0;
  v69 = 1;
  v70 = 0;
  v71 = 2;
  outlined init with copy of DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(v62, __src);
  v33 = v32;
  v34 = v30;
  v52 = v54;
  v35 = v55;
  v51 = v57;
  v50 = v56;
  v37 = v57 == 2 && v56 == 0;
  v39 = v18 == 2 && v16 == 0;
  v48 = v39;
  v49 = v37;
  while (1)
  {
    while (1)
    {
      v40 = v33;
      v41 = v34;
      if ((v28 & 1) == 0)
      {
        break;
      }

      if (v35)
      {
        goto LABEL_40;
      }

      v42 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v26, v28 & 1, v34, v33, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind), &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
LABEL_49:
      v26 = v42;
      v28 = v43;
      if (v14)
      {
        goto LABEL_52;
      }
    }

    if (v26 == v52)
    {
      v44 = v35;
    }

    else
    {
      v44 = 1;
    }

    if (v44 == 1)
    {
      v42 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v26, v28 & 1, v34, v33, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind), &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
      goto LABEL_51;
    }

LABEL_40:
    if (!v33)
    {
      break;
    }

    if (v33 == 1)
    {
      if (v51 == 1)
      {
        goto LABEL_45;
      }
    }

    else if (v49)
    {
      goto LABEL_59;
    }

LABEL_48:
    v42 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v26, v28 & 1, v34, v33, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind), &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
    if (v28)
    {
      goto LABEL_49;
    }

LABEL_51:
    v45 = v26 != v12;
    v26 = v42;
    v28 = v43;
    if (((v14 | v45) & 1) == 0)
    {
LABEL_52:
      if (v40)
      {
        if (v40 == 1)
        {
          if (v18 == 1)
          {
LABEL_57:
            if (v41 == v16)
            {
LABEL_58:
              v58 = v26;
              v59 = v28 & 1;
              v60 = v34;
              v61 = v33;
              outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(__src, type metadata accessor for IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>);
              outlined destroy of DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(v62);
              specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v12, v14 & 1, v16, v18, specialized NavigationState.StackContent.Views.ViewsSequence.initialRootView(for:), specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:), partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:));
              outlined destroy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(&v72, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
              outlined destroy of NavigationState.StackContent(__dst);
              v46 = *&__src[0];

              outlined destroy of NavigationState.StackContent.PositionedView(__src);
              return v46;
            }
          }
        }

        else if (v48)
        {
          goto LABEL_58;
        }
      }

      else if (!v18)
      {
        goto LABEL_57;
      }
    }
  }

  if (v51)
  {
    goto LABEL_48;
  }

LABEL_45:
  if (v34 != v50)
  {
    goto LABEL_48;
  }

  v41 = v50;
LABEL_59:
  v58 = v26;
  v59 = v28 & 1;
  v60 = v41;
  v61 = v33;
  outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(__src, type metadata accessor for IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>);
  outlined destroy of DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(v62);
  v46 = AnyView.init<A>(_:)();
  outlined destroy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(&v72, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
  outlined destroy of NavigationState.StackContent(__dst);
  return v46;
}

uint64_t protocol witness for Rule.value.getter in conformance _NavigationStackStyleConfiguration.Item.Child@<X0>(uint64_t *a1@<X8>)
{
  result = _NavigationStackStyleConfiguration.Item.Child.value.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedNavigationStackStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationStackStyle and conformance ResolvedNavigationStackStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ResolvedNavigationStackStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = *(v1 + 32);
  v3 = v8[0];
  *(v8 + 14) = *(v1 + 46);
  v4 = *(v8 + 14);
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 46) = v4;
  return outlined init with copy of ResolvedNavigationStackStyle(v7, v6);
}

uint64_t View._navigationStackStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationStackStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationStackStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Item.Child and conformance _NavigationStackStyleConfiguration.Item.Child()
{
  result = lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.Child and conformance _NavigationStackStyleConfiguration.Item.Child;
  if (!lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.Child and conformance _NavigationStackStyleConfiguration.Item.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.Child and conformance _NavigationStackStyleConfiguration.Item.Child);
  }

  return result;
}

BOOL specialized static _NavigationStackStyleConfiguration.Item.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((static NavigationStackViewSource.== infix(_:_:)(a1 + 8, a2 + 8) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96);
}

unint64_t lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Item.ID and conformance _NavigationStackStyleConfiguration.Item.ID()
{
  result = lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.ID and conformance _NavigationStackStyleConfiguration.Item.ID;
  if (!lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.ID and conformance _NavigationStackStyleConfiguration.Item.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.ID and conformance _NavigationStackStyleConfiguration.Item.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.ID and conformance _NavigationStackStyleConfiguration.Item.ID;
  if (!lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.ID and conformance _NavigationStackStyleConfiguration.Item.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationStackStyleConfiguration.Item.ID and conformance _NavigationStackStyleConfiguration.Item.ID);
  }

  return result;
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for _NavigationStackStyleConfiguration.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakCopyInit();
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 120);

  if (v5 == 1)
  {
    v7 = *(a2 + 80);
    if (v7)
    {
      v8 = *(a2 + 88);
      *(a1 + 80) = v7;
      *(a1 + 88) = v8;
      (**(v7 - 8))(a1 + 56, a2 + 56);
    }

    else
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
    }

    v9 = *(a2 + 104);
    if (v9 == 1)
    {
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = v9;
    }

    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = 1;
  }

  else if (v5)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 80) = v6;
    (**(v6 - 8))(a1 + 56, a2 + 56);
    *(a1 + 120) = 0;
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithCopy for _NavigationStackStyleConfiguration.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_weakCopyAssign();
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  if (a1 != a2)
  {
    outlined destroy of NavigationStackViewSource(a1 + 56);
    if (*(a2 + 120) == 1)
    {
      v5 = *(a2 + 80);
      if (v5)
      {
        *(a1 + 80) = v5;
        *(a1 + 88) = *(a2 + 88);
        (**(v5 - 8))(a1 + 56, a2 + 56);
      }

      else
      {
        v9 = *(a2 + 56);
        v10 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 72) = v10;
        *(a1 + 56) = v9;
      }

      if (*(a2 + 104) == 1)
      {
        *(a1 + 96) = *(a2 + 96);
      }

      else
      {
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 100) = *(a2 + 100);
        *(a1 + 104) = *(a2 + 104);
      }

      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = 1;
    }

    else if (*(a2 + 120))
    {
      *(a1 + 56) = *(a2 + 56);
      v6 = *(a2 + 72);
      v7 = *(a2 + 88);
      v8 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v8;
      *(a1 + 88) = v7;
      *(a1 + 72) = v6;
    }

    else
    {
      v4 = *(a2 + 80);
      *(a1 + 80) = v4;
      *(a1 + 88) = *(a2 + 88);
      (**(v4 - 8))(a1 + 56, a2 + 56);
      *(a1 + 120) = 0;
    }
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t initializeWithTake for _NavigationStackStyleConfiguration.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeInit();
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  return a1;
}

uint64_t assignWithTake for _NavigationStackStyleConfiguration.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeAssign();
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  if (a1 != a2)
  {
    outlined destroy of NavigationStackViewSource(a1 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for _NavigationStackStyleConfiguration.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for _NavigationStackStyleConfiguration.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t destroy for _NavigationStackStyleConfiguration.Item.ID(uint64_t result)
{
  if (*(result + 72) == 1)
  {
    if (*(result + 32))
    {
      v3 = result;
      __swift_destroy_boxed_opaque_existential_1(result + 8);
      result = v3;
    }

    result = *(result + 56);
    if (result != 1)
    {
    }
  }

  else if (!*(result + 72))
  {
    v2 = result + 8;

    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationStackStyleConfiguration.Item.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 72) == 1)
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v6;
      *(a1 + 40) = v7;
      (**(v6 - 8))(v4, a2 + 8);
    }

    else
    {
      v10 = *(a2 + 24);
      *v4 = *(a2 + 8);
      *(v4 + 16) = v10;
      *(v4 + 32) = *(a2 + 40);
    }

    v11 = *(a2 + 56);
    if (v11 == 1)
    {
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v11;
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = 1;
  }

  else if (*(a2 + 72))
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 56);
    *(v4 + 32) = *(a2 + 40);
    *(v4 + 48) = v9;
    *(v4 + 64) = *(a2 + 72);
    *v4 = *(a2 + 8);
    *(v4 + 16) = v8;
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(v4, a2 + 8);
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithCopy for _NavigationStackStyleConfiguration.Item.ID(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = a1 + 8;
  if (a1 != a2)
  {
    outlined destroy of NavigationStackViewSource(a1 + 8);
    if (*(a2 + 72) == 1)
    {
      v7 = *(a2 + 32);
      if (v7)
      {
        *(a1 + 32) = v7;
        *(a1 + 40) = *(a2 + 40);
        (**(v7 - 8))(v5, v4);
      }

      else
      {
        v11 = *v4;
        v12 = v4[1];
        *(v5 + 32) = *(v4 + 4);
        *v5 = v11;
        *(v5 + 16) = v12;
      }

      if (*(a2 + 56) == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 52) = *(a2 + 52);
        *(a1 + 56) = *(a2 + 56);
      }

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = 1;
    }

    else if (*(a2 + 72))
    {
      *v5 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      *(v5 + 64) = *(v4 + 64);
      *(v5 + 32) = v9;
      *(v5 + 48) = v10;
      *(v5 + 16) = v8;
    }

    else
    {
      v6 = *(a2 + 32);
      *(a1 + 32) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(v5, v4);
      *(a1 + 72) = 0;
    }
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for _NavigationStackStyleConfiguration.Item.ID(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (result != a2)
  {
    v3 = result;
    outlined destroy of NavigationStackViewSource(result + 8);
    result = v3;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 8) = *(a2 + 8);
  }

  *(result + 80) = *(a2 + 80);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = *(a2 + 96);
  return result;
}

uint64_t getEnumTagSinglePayload for _NavigationStackStyleConfiguration.Item.ID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 104))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _NavigationStackStyleConfiguration.Item.ID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(0, &lazy cache variable for type metadata for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>, &lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, &protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, MEMORY[0x1E69E5EA8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>)
  {
    type metadata accessor for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(255, &lazy cache variable for type metadata for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>, &lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, &protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, MEMORY[0x1E69E5EA8]);
    lazy protocol witness table accessor for type DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>> and conformance DefaultIndices<A>();
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>> and conformance DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>> and conformance DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>> and conformance DefaultIndices<A>)
  {
    type metadata accessor for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(255, &lazy cache variable for type metadata for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>, &lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, &protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, MEMORY[0x1E69E5EA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>> and conformance DefaultIndices<A>);
  }

  return result;
}

uint64_t outlined destroy of DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(uint64_t a1)
{
  type metadata accessor for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>(0, &lazy cache variable for type metadata for DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>, &lazy protocol witness table cache variable for type NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>, &protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, MEMORY[0x1E69E5EA8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>.Index.Kind)(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)()))
{
  type metadata accessor for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSbSiXEfU_SayACG_Tt2G5TA@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(*a1, **(v2 + 16), *(v2 + 24));
  *a2 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmptyModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmptyModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>)
  {
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<EmptyModifier, ReplacedRootDismissModifier>, MEMORY[0x1E697E108], &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmptyModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 496);
  v4 = *(v1 + 504);
  v5 = *(v1 + 512);
  result = (*(v1 + 472))();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

{
  return specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(v1 + 16, *(v1 + 496), *(v1 + 504), *(v1 + 512), a1);
}

void type metadata accessor for <<opaque return type of AttributedString.Keys.makeIterator()>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of AttributedString.Keys.makeIterator()>>.0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of AttributedString.Keys.makeIterator()>>.0);
    }
  }
}

uint64_t outlined copy of AttributedTextFormatting.Constraints?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t assignWithTake for _NavigationStackStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 53) = *(a2 + 53);
  return a1;
}

uint64_t getEnumTagSinglePayload for _NavigationStackStyleConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 54))
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

uint64_t storeEnumTagSinglePayload for _NavigationStackStyleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 54) = 1;
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

    *(result + 54) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>.Index.Kind)()
{
  if (!lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>.Index.Kind))
  {
    type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>.Index.Kind(255, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>.Index.Kind, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence.Index.Kind);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>.Index.Kind));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
    type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    }
  }
}

uint64_t outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>.Index.Kind(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>();
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>();
    v11[0] = MEMORY[0x1E697FFD0];
    v11[1] = v7;
    v11[2] = MEMORY[0x1E697FFC8];
    v11[3] = v8;
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier>, type metadata accessor for ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>);
    lazy protocol witness table accessor for type ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 partial apply for specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 496);
  v4 = *(v1 + 504);
  v5 = *(v1 + 512);
  (*(v1 + 472))(&v7);
  *a1 = v7;
  result = v9;
  *(a1 + 8) = v8;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  return result;
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>)
  {
    type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>(255, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>();
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>();
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>)
  {
    type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>();
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(255, &lazy cache variable for type metadata for ReadDestinationsModifier<ResolvedNavigationDestinations>, &type metadata for ResolvedNavigationDestinations, &protocol witness table for ResolvedNavigationDestinations, type metadata accessor for ReadDestinationsModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>();
    lazy protocol witness table accessor for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_VStackLayout, _VariadicView_Children> and conformance <> _VariadicView.Tree<A, B>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
    lazy protocol witness table accessor for type RootItemModifier and conformance RootItemModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RootItemModifier and conformance RootItemModifier()
{
  result = lazy protocol witness table cache variable for type RootItemModifier and conformance RootItemModifier;
  if (!lazy protocol witness table cache variable for type RootItemModifier and conformance RootItemModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootItemModifier and conformance RootItemModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier()
{
  result = lazy protocol witness table cache variable for type StackItemModifier and conformance StackItemModifier;
  if (!lazy protocol witness table cache variable for type StackItemModifier and conformance StackItemModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackItemModifier and conformance StackItemModifier);
  }

  return result;
}

uint64_t outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(0, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StackItemModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StackItemModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StackItemModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>)
  {
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<StackItemModifier, ReplacedRootDismissModifier>, &type metadata for StackItemModifier, &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StackItemModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = *(v0 + 464);
  if (v1 == 2)
  {

    v3 = *(v0 + 40);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 56))
    {
    }

    if (*(v0 + 80))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 64))
    {
    }

    if (*(v0 + 120))
    {
    }

    v2 = *(v0 + 224);
    if (*(v0 + 256))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 168))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 144);
          }

          if (*(v0 + 192) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 136);
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 168))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 144);
          }

          if (*(v0 + 192) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 136);
        }
      }
    }

    if (*(v0 + 376))
    {

      goto LABEL_34;
    }
  }

LABEL_35:

  return swift_deallocObject();
}

void type metadata accessor for (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>.Index.Kind)(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)()))
{
  if (!*a2)
  {
    a4(255, a3, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence.Index.Kind);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>();
    v9[0] = v6;
    v9[1] = &type metadata for StackItemModifier;
    v9[2] = lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier> and conformance <> ModifiedContent<A, B>();
    v9[3] = lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier();
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t View.listDisclosureGroupIndentation(base:step:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *v5 = a3;
  *&v5[1] = a4;
  return MEMORY[0x18D00A570](v5, a1, &type metadata for ListDisclosureGroupIndentationModifier, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance IncrementListDisclosureGroupDepth(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IncrementListDisclosureGroupDepth(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance IncrementListDisclosureGroupDepth();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance IncrementListDisclosureGroupDepth()
{
  lazy protocol witness table accessor for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput();
  result = PropertyList.subscript.getter();
  if (!__OFADD__(v1, 1))
  {
    return PropertyList.subscript.setter();
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ListDisclosureGroupIndentationModifier.Child@<X0>(double *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *AGGraphGetValue();
  result = AGGraphGetValue();
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + *(result + 8) * ((v3 - 1) & ~((v3 - 1) >> 63));
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ListDisclosureGroupIndentationModifier()
{
  lazy protocol witness table accessor for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey>();
  lazy protocol witness table accessor for type ListDisclosureGroupIndentationModifier.Child and conformance ListDisclosureGroupIndentationModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey> and conformance _TraitWritingModifier<A>();
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

unint64_t lazy protocol witness table accessor for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput()
{
  result = lazy protocol witness table cache variable for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput;
  if (!lazy protocol witness table cache variable for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput;
  if (!lazy protocol witness table cache variable for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListDisclosureGroupDepthInput and conformance ListDisclosureGroupDepthInput);
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListDisclosureGroupIndentationModifier.Child and conformance ListDisclosureGroupIndentationModifier.Child()
{
  result = lazy protocol witness table cache variable for type ListDisclosureGroupIndentationModifier.Child and conformance ListDisclosureGroupIndentationModifier.Child;
  if (!lazy protocol witness table cache variable for type ListDisclosureGroupIndentationModifier.Child and conformance ListDisclosureGroupIndentationModifier.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListDisclosureGroupIndentationModifier.Child and conformance ListDisclosureGroupIndentationModifier.Child);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListDisclosureGroupIndentationTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t PlatformItem.applyAccessibilityProperties(on:item:)(void *a1, uint64_t a2)
{
  outlined init with copy of AccessibilityLargeContentViewItem?(v2 + 328, v48, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  if (!*(&v48[17] + 1))
  {
    return outlined destroy of AccessibilityLargeContentViewItem?(v48, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8], MEMORY[0x1E69E6720]);
  }

  memcpy(v49, v48, 0x129uLL);
  PlatformItem.AccessibilityContent.environment.getter();
  v39 = v48[0];
  v5 = EnvironmentValues.accessibilityEnabled.getter();

  if (v5)
  {
    outlined init with copy of AccessibilityProperties(v49, v48);
    v6 = PlatformItem.accessibilityEffectiveText.getter();
    if (v6)
    {
      v7 = v6;
      [a1 setAccessibilityAttributedLabel_];
    }

    else
    {
      [a1 setAccessibilityAttributedLabel_];
    }

    v9 = *(&v48[0] + 1);
    if (*(&v48[0] + 1) && LOBYTE(v48[1]) <= 1u)
    {
      v10 = *&v48[0];

      v11 = MEMORY[0x18D00C850](v10, v9);

      [a1 setAccessibilityIdentifier_];
    }

    else
    {
      v43 = *(a2 + 96);
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v46 = static TabOptions.TraitKey.defaultValue;
      v47[0] = unk_1EAB09380;
      *(v47 + 9) = *(&word_1EAB09388 + 1);
      v41 = static TabOptions.TraitKey.defaultValue;
      v42[0] = unk_1EAB09380;
      *(v42 + 9) = *(&word_1EAB09388 + 1);
      outlined init with copy of TabOptions(&v46, &v44);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      v37 = v41;
      v38[0] = v42[0];
      *(v38 + 9) = *(v42 + 9);
      outlined destroy of TabOptions(&v37);
      v39 = v44;
      v40[0] = *v45;
      *(v40 + 9) = *&v45[9];
      v12 = *(&v44 + 1);
      v13 = *v45;
      v14 = v45[8];
      outlined copy of TabCustomizationID?(*(&v44 + 1), *v45, v45[8]);
      outlined destroy of TabOptions(&v39);
      if (v14 == 255)
      {
        [a1 setAccessibilityIdentifier_];
      }

      else
      {
        v15 = MEMORY[0x18D00C850](v12, v13);
        outlined consume of TabCustomizationID?(v12, v13, v14);
        [a1 setAccessibilityIdentifier_];
      }
    }

    outlined init with copy of AccessibilityLargeContentViewItem?(&v48[4], &v37, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
    if (*(&v38[0] + 1) == 1)
    {
      outlined destroy of AccessibilityLargeContentViewItem?(&v37, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0], MEMORY[0x1E69E6720]);
      [a1 setAccessibilityValue_];
    }

    else
    {
      v40[0] = v38[0];
      v40[1] = v38[1];
      v39 = v37;
      *&v41 = *(&v38[1] + 1);
      AccessibilityValueStorage.Description.text.getter();
      v16 = PlatformItem.AccessibilityContent.environment.getter();
      v46 = v37;
      v44 = 0uLL;
      MEMORY[0x18D005BE0](&v43, v16);
      v17 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();
      v19 = v18;

      if (v19)
      {
        v20 = MEMORY[0x18D00C850](v17, v19);
      }

      else
      {
        v20 = 0;
      }

      [a1 setAccessibilityValue_];

      outlined destroy of AccessibilityValueStorage(&v39);
    }

    v21 = AccessibilityProperties.inputLabels.getter();
    if (v21)
    {
      v22 = v21;
      MEMORY[0x1EEE9AC00](v21);
      v36[2] = v49;
      specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in PlatformItem.applyAccessibilityProperties(on:item:), v36, v22);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [a1 setAccessibilityUserInputLabels_];

      if (BYTE8(v48[3]))
      {
        goto LABEL_36;
      }
    }

    else
    {
      [a1 setAccessibilityUserInputLabels_];
      if (BYTE8(v48[3]))
      {
LABEL_36:
        AccessibilityProperties.hints.getter();
        v31 = PlatformItem.AccessibilityContent.environment.getter();
        v37 = v39;
        v46 = 0uLL;
        MEMORY[0x18D005BE0](&v44, v31);
        v32 = static AccessibilityCore.textsResolvedToPlainText(_:in:options:idiom:separator:)();
        v34 = v33;

        if (v34)
        {
          v35 = MEMORY[0x18D00C850](v32, v34);
        }

        else
        {
          v35 = 0;
        }

        [a1 setAccessibilityHint_];

        outlined destroy of AccessibilityProperties(v48);
        return outlined destroy of PlatformItem.AccessibilityContent(v49);
      }
    }

    v24 = 0;
    v25 = *(&v48[2] + 1);
    v26 = 0;
    do
    {
      v27 = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v24 + 32];
      if (v27 <= 0xD && ((1 << v27) & 0x2844) != 0 && ((v25 >> v27) & 1) != 0)
      {
        LOBYTE(v39) = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v24 + 32];
        v29 = AccessibilityTrait.uiTrait.getter();
        if ((v30 & 1) == 0)
        {
          v26 |= v29;
        }
      }

      ++v24;
    }

    while (v24 != 32);
    [a1 setAccessibilityTraits_];
    goto LABEL_36;
  }

  return outlined destroy of PlatformItem.AccessibilityContent(v49);
}

unint64_t AccessibilityNode.rotorChildNodes.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v144 - v7;
  v9 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:
    v159 = v8;
    v11 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v12 = *(v1 + v11);
    v13 = *(v12 + 16);

    if (v13)
    {
      isa = v12 + 320 * v13 - 288;
      while (1)
      {
        if (v13 > *(v12 + 16))
        {
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
          goto LABEL_290;
        }

        outlined init with copy of AccessibilityAttachment(isa, v162);
        v15 = AccessibilityAttachment.platformElement.getter();
        outlined destroy of AccessibilityAttachment(v162);
        if (v15)
        {
          break;
        }

        isa -= 320;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v160 = v15;
        v12 = v16;
        v17 = [v16 visibleCells];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITableViewCell);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v11 >> 62))
        {
          v5 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_14;
        }

LABEL_290:
        v5 = __CocoaSet.count.getter();
LABEL_14:
        v156 = v12;
        v18 = v160;
        if (v5)
        {
          v19 = 0;
          v2 = v11 & 0xC000000000000001;
          v153 = v11 + 32;
          v154 = v11 & 0xFFFFFFFFFFFFFF8;
          v10 = MEMORY[0x1E69E7CC0];
          v150 = v5;
          v151 = v11;
          v155 = v11 & 0xC000000000000001;
          while (1)
          {
            if (v2)
            {
              v20 = MEMORY[0x18D00E9C0](v19, v11);
            }

            else
            {
              if (v19 >= *(v154 + 16))
              {
                goto LABEL_265;
              }

              v20 = *(v153 + 8 * v19);
            }

            v161 = v20;
            v21 = __OFADD__(v19++, 1);
            if (v21)
            {
              goto LABEL_256;
            }

            swift_getObjectType();
            v22 = swift_conformsToProtocol2();
            if (!v22 || !v161)
            {

              goto LABEL_17;
            }

            v23 = v22;
            ObjectType = swift_getObjectType();
            v25 = PlatformListViewBase.accessibilityNodes.getter(ObjectType, *(v23 + 8));
            v3 = v25;
            v26 = v25 >> 62;
            if (v25 >> 62)
            {
              v27 = __CocoaSet.count.getter();
            }

            else
            {
              v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            isa = v10 >> 62;
            if (v10 >> 62)
            {
              v28 = __CocoaSet.count.getter();
            }

            else
            {
              v28 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v159 = v27;
            v21 = __OFADD__(v28, v27);
            v12 = &v27[v28];
            if (v21)
            {
              goto LABEL_257;
            }

            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (isa)
            {
              goto LABEL_35;
            }

LABEL_36:
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v29 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
            v12 = *(v29 + 16);
            isa = *(v29 + 24);
            if (v26)
            {
              v30 = v29;
              v31 = __CocoaSet.count.getter();
              v29 = v30;
              v2 = v31;
              if (!v31)
              {
LABEL_43:

                v18 = v160;
                v2 = v155;
                if (v159 > 0)
                {
                  goto LABEL_258;
                }

                goto LABEL_17;
              }
            }

            else
            {
              v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v2)
              {
                goto LABEL_43;
              }
            }

            if (((isa >> 1) - v12) < v159)
            {
              goto LABEL_267;
            }

            isa = v29 + 8 * v12 + 32;
            v157 = v29;
            if (v26)
            {
              if (v2 < 1)
              {
                goto LABEL_273;
              }

              v152 = v19;
              v158 = v10;
              type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
              lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
              for (i = 0; i != v2; ++i)
              {
                v33 = specialized protocol witness for Collection.subscript.read in conformance [A](v162, i, v3);
                v35 = *v34;
                (v33)(v162, 0);
                *(isa + 8 * i) = v35;
              }

              v10 = v158;
              v12 = v159;
              v5 = v150;
              v11 = v151;
              v19 = v152;
            }

            else
            {
              type metadata accessor for AccessibilityNode();
              v12 = v159;
              swift_arrayInitWithCopy();
            }

            v18 = v160;
            v2 = v155;
            if (v12 > 0)
            {
              v36 = *(v157 + 16);
              v21 = __OFADD__(v36, v12);
              v37 = v36 + v12;
              if (v21)
              {
                goto LABEL_270;
              }

              *(v157 + 16) = v37;
            }

LABEL_17:
            if (v19 == v5)
            {
              goto LABEL_106;
            }
          }

          if (!isa)
          {
            v29 = v10 & 0xFFFFFFFFFFFFFF8;
            if (v12 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

LABEL_35:
          __CocoaSet.count.getter();
          goto LABEL_36;
        }

        v10 = MEMORY[0x1E69E7CC0];
LABEL_106:

        v38 = v156;
        v61 = [v156 numberOfSections];
        if ((v61 & 0x8000000000000000) == 0)
        {
          v3 = v61;
          if (!v61)
          {
LABEL_174:

            return v10;
          }

          v11 = 0;
          v154 = v61;
          while (1)
          {
            v62 = [v38 headerViewForSection_];
            if (!v62)
            {
              goto LABEL_141;
            }

            v2 = v62;
            v63 = swift_getObjectType();
            v64 = swift_conformsToProtocol2();
            if (!v64)
            {

              goto LABEL_141;
            }

            v65 = PlatformListViewBase.accessibilityNodes.getter(v63, *(v64 + 8));
            v66 = v65;
            v67 = v65 >> 62;
            if (v65 >> 62)
            {
              v68 = __CocoaSet.count.getter();
            }

            else
            {
              v68 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            isa = v10 >> 62;
            if (v10 >> 62)
            {
              v69 = __CocoaSet.count.getter();
            }

            else
            {
              v69 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v161 = v68;
            v21 = __OFADD__(v69, v68);
            v12 = &v68[v69];
            if (v21)
            {
              goto LABEL_260;
            }

            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (isa)
            {
              goto LABEL_124;
            }

LABEL_125:
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v70 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_126:
            v159 = v2;
            v12 = *(v70 + 16);
            isa = *(v70 + 24);
            if (v67)
            {
              v72 = v70;
              v73 = __CocoaSet.count.getter();
              v70 = v72;
              v2 = v73;
              if (!v73)
              {
LABEL_132:

                v18 = v160;
                if (v161 > 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_141;
              }
            }

            else
            {
              v2 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v2)
              {
                goto LABEL_132;
              }
            }

            if (((isa >> 1) - v12) < v161)
            {
              goto LABEL_268;
            }

            v71 = v70 + 8 * v12 + 32;
            v157 = v70;
            if (v67)
            {
              if (v2 < 1)
              {
                goto LABEL_282;
              }

              v155 = v11;
              v158 = v10;
              type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
              isa = v74;
              lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
              for (j = 0; j != v2; ++j)
              {
                v76 = specialized protocol witness for Collection.subscript.read in conformance [A](v162, j, v66);
                v78 = *v77;
                (v76)(v162, 0);
                *(v71 + 8 * j) = v78;
              }

              v10 = v158;
              v3 = v154;
              v11 = v155;
              v12 = v161;
            }

            else
            {
              type metadata accessor for AccessibilityNode();
              v12 = v161;
              swift_arrayInitWithCopy();
            }

            v18 = v160;
            v38 = v156;
            if (v12 > 0)
            {
              v79 = *(v157 + 16);
              v21 = __OFADD__(v79, v12);
              v80 = v79 + v12;
              if (v21)
              {
                goto LABEL_274;
              }

              *(v157 + 16) = v80;
            }

LABEL_141:
            v81 = [v38 footerViewForSection_];
            if (!v81)
            {
              goto LABEL_110;
            }

            v2 = v81;
            v82 = swift_getObjectType();
            v83 = swift_conformsToProtocol2();
            if (!v83)
            {

              goto LABEL_110;
            }

            v84 = PlatformListViewBase.accessibilityNodes.getter(v82, *(v83 + 8));
            v85 = v84;
            v86 = v84 >> 62;
            if (v84 >> 62)
            {
              v87 = __CocoaSet.count.getter();
            }

            else
            {
              v87 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            isa = v10 >> 62;
            if (v10 >> 62)
            {
              v88 = __CocoaSet.count.getter();
            }

            else
            {
              v88 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v161 = v87;
            v21 = __OFADD__(v88, v87);
            v12 = &v87[v88];
            if (v21)
            {
              goto LABEL_261;
            }

            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              if (!isa)
              {
                v89 = v10 & 0xFFFFFFFFFFFFFF8;
                if (v12 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_155;
                }

                goto LABEL_154;
              }

LABEL_153:
              __CocoaSet.count.getter();
              goto LABEL_154;
            }

            if (isa)
            {
              goto LABEL_153;
            }

LABEL_154:
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v89 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_155:
            v159 = v2;
            v12 = *(v89 + 16);
            isa = *(v89 + 24);
            if (v86)
            {
              v91 = v89;
              v92 = __CocoaSet.count.getter();
              v89 = v91;
              v2 = v92;
              if (!v92)
              {
LABEL_161:

                v18 = v160;
                if (v161 > 0)
                {
                  goto LABEL_263;
                }

                goto LABEL_110;
              }
            }

            else
            {
              v2 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v2)
              {
                goto LABEL_161;
              }
            }

            if (((isa >> 1) - v12) < v161)
            {
              goto LABEL_269;
            }

            v90 = v89 + 8 * v12 + 32;
            v157 = v89;
            if (v86)
            {
              if (v2 < 1)
              {
                goto LABEL_283;
              }

              v155 = v11;
              v158 = v10;
              type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
              isa = v93;
              lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
              for (k = 0; k != v2; ++k)
              {
                v95 = specialized protocol witness for Collection.subscript.read in conformance [A](v162, k, v85);
                v97 = *v96;
                (v95)(v162, 0);
                *(v90 + 8 * k) = v97;
              }

              v10 = v158;
              v3 = v154;
              v11 = v155;
              v12 = v161;
            }

            else
            {
              type metadata accessor for AccessibilityNode();
              v12 = v161;
              swift_arrayInitWithCopy();
            }

            v18 = v160;
            v38 = v156;
            if (v12 > 0)
            {
              v98 = *(v157 + 16);
              v21 = __OFADD__(v98, v12);
              v99 = v98 + v12;
              if (v21)
              {
                goto LABEL_275;
              }

              *(v157 + 16) = v99;
            }

LABEL_110:
            if (++v11 == v3)
            {
              goto LABEL_174;
            }
          }

          if (!isa)
          {
            v70 = v10 & 0xFFFFFFFFFFFFFF8;
            if (v12 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_126;
            }

            goto LABEL_125;
          }

LABEL_124:
          __CocoaSet.count.getter();
          goto LABEL_125;
        }

        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
        goto LABEL_294;
      }
    }

    else
    {
LABEL_10:
    }

    v12 = *(v1 + v11);
    v11 = *(v12 + 16);

    if (v11)
    {
      isa = v12 + 320 * v11 - 288;
      while (1)
      {
        if (v11 > *(v12 + 16))
        {
          goto LABEL_255;
        }

        outlined init with copy of AccessibilityAttachment(isa, v162);
        v38 = AccessibilityAttachment.platformElement.getter();
        outlined destroy of AccessibilityAttachment(v162);
        if (v38)
        {
          break;
        }

        isa -= 320;
        if (!--v11)
        {
          goto LABEL_60;
        }
      }

      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        v156 = v39;
        v40 = [v39 visibleCells];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
        isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(isa >> 62))
        {
          v41 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_64:
          v11 = v159;
          v145 = v38;
          v147 = v2;
          v148 = v3;
          v149 = v5;
          if (v41)
          {
            v2 = 0;
            v157 = isa & 0xC000000000000001;
            v151 = isa + 32;
            v152 = (isa & 0xFFFFFFFFFFFFFF8);
            v10 = MEMORY[0x1E69E7CC0];
            v42 = v156;
            v153 = v41;
            v154 = isa;
            while (1)
            {
              if (v157)
              {
                v43 = MEMORY[0x18D00E9C0](v2, isa);
                v21 = __OFADD__(v2++, 1);
                if (v21)
                {
                  goto LABEL_259;
                }
              }

              else
              {
                if (v2 >= v152[2])
                {
                  goto LABEL_278;
                }

                v43 = *(v151 + 8 * v2);
                v21 = __OFADD__(v2++, 1);
                if (v21)
                {
                  goto LABEL_259;
                }
              }

              v161 = v43;
              swift_getObjectType();
              v44 = swift_conformsToProtocol2();
              if (!v44 || !v161)
              {

                goto LABEL_67;
              }

              v45 = v44;
              v46 = swift_getObjectType();
              v47 = PlatformListViewBase.accessibilityNodes.getter(v46, *(v45 + 8));
              v48 = v47;
              v49 = v47 >> 62;
              if (v47 >> 62)
              {
                v50 = __CocoaSet.count.getter();
              }

              else
              {
                v50 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              isa = v10 >> 62;
              if (v10 >> 62)
              {
                v51 = __CocoaSet.count.getter();
              }

              else
              {
                v51 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v160 = v50;
              v21 = __OFADD__(v51, v50);
              v12 = v50 + v51;
              if (v21)
              {
                goto LABEL_271;
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                break;
              }

              if (isa)
              {
                goto LABEL_86;
              }

LABEL_87:
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v52 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_88:
              v12 = *(v52 + 16);
              isa = *(v52 + 24);
              if (v49)
              {
                v53 = v52;
                v54 = __CocoaSet.count.getter();
                v52 = v53;
                v11 = v54;
                if (!v54)
                {
LABEL_94:

                  v11 = v159;
                  v5 = v149;
                  v41 = v153;
                  isa = v154;
                  if (v160 > 0)
                  {
                    goto LABEL_272;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
                v11 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v11)
                {
                  goto LABEL_94;
                }
              }

              if (((isa >> 1) - v12) < v160)
              {
                goto LABEL_281;
              }

              isa = v52 + 8 * v12 + 32;
              v155 = v52;
              if (v49)
              {
                if (v11 < 1)
                {
                  goto LABEL_287;
                }

                v150 = v2;
                v158 = v10;
                type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
                lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
                for (m = 0; m != v11; ++m)
                {
                  v56 = specialized protocol witness for Collection.subscript.read in conformance [A](v162, m, v48);
                  v58 = *v57;
                  (v56)(v162, 0);
                  *(isa + 8 * m) = v58;
                }

                v10 = v158;
                v3 = v148;
                v42 = v156;
                v2 = v150;
                v12 = v160;
              }

              else
              {
                type metadata accessor for AccessibilityNode();
                v12 = v160;
                swift_arrayInitWithCopy();
              }

              v5 = v149;
              v11 = v159;
              v41 = v153;
              isa = v154;
              if (v12 > 0)
              {
                v59 = *(v155 + 16);
                v21 = __OFADD__(v59, v12);
                v60 = v59 + v12;
                if (v21)
                {
                  goto LABEL_286;
                }

                *(v155 + 16) = v60;
              }

LABEL_67:
              if (v2 == v41)
              {
                goto LABEL_178;
              }
            }

            if (!isa)
            {
              v52 = v10 & 0xFFFFFFFFFFFFFF8;
              if (v12 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_88;
              }

              goto LABEL_87;
            }

LABEL_86:
            __CocoaSet.count.getter();
            goto LABEL_87;
          }

          v10 = MEMORY[0x1E69E7CC0];
          v42 = v156;
LABEL_178:

          v160 = *MEMORY[0x1E69DDC08];
          v100 = [v42 indexPathsForVisibleSupplementaryElementsOfKind_];
          v2 = v147;
          v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v101 = v12;
          v157 = *(v12 + 16);
          if (v157)
          {
            v102 = 0;
            v155 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
            v153 = v12;
            v154 = v3 + 16;
            v152 = (v3 + 8);
            while (1)
            {
              if (v102 >= *(v101 + 16))
              {
                goto LABEL_264;
              }

              v104 = *(v3 + 72);
              v161 = v102;
              (*(v3 + 16))(v11, v155 + v104 * v102, v2);
              v12 = v160;
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v105 = [v42 supplementaryViewForElementKind:v12 atIndexPath:isa];

              if (!v105)
              {
                goto LABEL_181;
              }

              v12 = swift_getObjectType();
              v106 = swift_conformsToProtocol2();
              if (!v106)
              {

LABEL_181:
                (*v152)(v11, v2);
                v101 = v153;
                v103 = v161;
                goto LABEL_182;
              }

              v107 = *(v106 + 8);
              v150 = v105;
              v108 = PlatformListViewBase.accessibilityNodes.getter(v12, v107);
              v2 = v108;
              v12 = v108 >> 62;
              if (v108 >> 62)
              {
                v109 = __CocoaSet.count.getter();
              }

              else
              {
                v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v11 = v10 >> 62;
              v110 = v150;
              if (v10 >> 62)
              {
                v111 = __CocoaSet.count.getter();
              }

              else
              {
                v111 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v151 = v109;
              v21 = __OFADD__(v111, v109);
              isa = v111 + v109;
              if (v21)
              {
                goto LABEL_276;
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                break;
              }

              if (v11)
              {
                goto LABEL_196;
              }

LABEL_197:
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v112 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_198:
              isa = *(v112 + 16);
              v38 = *(v112 + 24);
              if (v12)
              {
                v114 = v112;
                v115 = __CocoaSet.count.getter();
                v112 = v114;
                v11 = v115;
                if (!v115)
                {
LABEL_204:

                  v11 = v159;
                  v2 = v147;
                  (*v152)(v159, v147);
                  v42 = v156;
                  v101 = v153;
                  v103 = v161;
                  if (v151 > 0)
                  {
                    goto LABEL_277;
                  }

                  goto LABEL_182;
                }
              }

              else
              {
                v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v11)
                {
                  goto LABEL_204;
                }
              }

              if (((v38 >> 1) - isa) < v151)
              {
                goto LABEL_284;
              }

              isa = v112 + 8 * isa + 32;
              v146 = v112;
              if (v12)
              {
                v158 = v10;
                if (v11 < 1)
                {
                  goto LABEL_292;
                }

                type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
                lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
                for (n = 0; n != v11; ++n)
                {
                  v117 = specialized protocol witness for Collection.subscript.read in conformance [A](v162, n, v2);
                  v119 = *v118;
                  (v117)(v162, 0);
                  *(isa + 8 * n) = v119;
                }

                v11 = v159;
                v2 = v147;
                (*v152)(v159, v147);
                v10 = v158;
                v3 = v148;
                v5 = v149;
                v12 = v151;
              }

              else
              {
                type metadata accessor for AccessibilityNode();
                v12 = v151;
                swift_arrayInitWithCopy();

                v11 = v159;
                v113 = v147;
                (*v152)(v159, v147);
                v2 = v113;
              }

              v42 = v156;
              v101 = v153;
              v103 = v161;
              if (v12 > 0)
              {
                v120 = *(v146 + 16);
                v21 = __OFADD__(v120, v12);
                v121 = v120 + v12;
                if (v21)
                {
                  goto LABEL_288;
                }

                *(v146 + 16) = v121;
              }

LABEL_182:
              v102 = (v103 + 1);
              if (v102 == v157)
              {
                goto LABEL_215;
              }
            }

            if (!v11)
            {
              v112 = v10 & 0xFFFFFFFFFFFFFF8;
              if (isa <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_198;
              }

              goto LABEL_197;
            }

LABEL_196:
            __CocoaSet.count.getter();
            goto LABEL_197;
          }

LABEL_215:

          v11 = *MEMORY[0x1E69DDC00];
          v122 = [v42 indexPathsForVisibleSupplementaryElementsOfKind_];
          v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v123 = v12;
          v160 = *(v12 + 16);
          if (!v160)
          {
LABEL_252:

            return v10;
          }

          v124 = 0;
          v159 = (v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
          v157 = v3 + 16;
          v154 = v12;
          v155 = v3 + 8;
          v150 = v11;
          while (1)
          {
            if (v124 >= *(v123 + 16))
            {
              goto LABEL_266;
            }

            v126 = *(v3 + 72);
            v161 = v124;
            (*(v3 + 16))(v5, &v159[v126 * v124], v2);
            v12 = v11;
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v127 = [v42 supplementaryViewForElementKind:v12 atIndexPath:isa];

            if (!v127)
            {
              goto LABEL_218;
            }

            v12 = swift_getObjectType();
            v128 = swift_conformsToProtocol2();
            if (!v128)
            {

LABEL_218:
              (*v155)(v5, v2);
              v123 = v154;
              v125 = v161;
              goto LABEL_219;
            }

            v129 = *(v128 + 8);
            v152 = v127;
            v130 = PlatformListViewBase.accessibilityNodes.getter(v12, v129);
            v3 = v130;
            v12 = v130 >> 62;
            if (v130 >> 62)
            {
              v131 = __CocoaSet.count.getter();
            }

            else
            {
              v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v11 = v10 >> 62;
            v132 = v152;
            if (v10 >> 62)
            {
              v133 = __CocoaSet.count.getter();
            }

            else
            {
              v133 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v153 = v131;
            v21 = __OFADD__(v133, v131);
            isa = v133 + v131;
            if (v21)
            {
              goto LABEL_279;
            }

            if (swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v11)
            {
              goto LABEL_233;
            }

LABEL_234:
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v134 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_235:
            isa = *(v134 + 16);
            v38 = *(v134 + 24);
            if (v12)
            {
              v135 = v134;
              v136 = __CocoaSet.count.getter();
              v134 = v135;
              v11 = v136;
              if (!v136)
              {
LABEL_241:

                (*v155)(v5, v2);
                v123 = v154;
                v3 = v148;
                v42 = v156;
                v11 = v150;
                v125 = v161;
                if (v153 > 0)
                {
                  goto LABEL_280;
                }

                goto LABEL_219;
              }
            }

            else
            {
              v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v11)
              {
                goto LABEL_241;
              }
            }

            if (((v38 >> 1) - isa) < v153)
            {
              goto LABEL_285;
            }

            isa = v134 + 8 * isa + 32;
            v151 = v134;
            if (v12)
            {
              v158 = v10;
              if (v11 < 1)
              {
                goto LABEL_293;
              }

              type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
              lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A]();
              for (ii = 0; ii != v11; ++ii)
              {
                v138 = specialized protocol witness for Collection.subscript.read in conformance [A](v162, ii, v3);
                v140 = *v139;
                (v138)(v162, 0);
                *(isa + 8 * ii) = v140;
              }

              v5 = v149;
              v2 = v147;
              (*v155)(v149, v147);
              v10 = v158;
              v12 = v153;
            }

            else
            {
              type metadata accessor for AccessibilityNode();
              v12 = v153;
              swift_arrayInitWithCopy();

              (*v155)(v5, v2);
            }

            v3 = v148;
            v42 = v156;
            v11 = v150;
            v123 = v154;
            v125 = v161;
            if (v12 > 0)
            {
              v141 = *(v151 + 16);
              v21 = __OFADD__(v141, v12);
              v142 = v141 + v12;
              if (v21)
              {
                goto LABEL_289;
              }

              *(v151 + 16) = v142;
            }

LABEL_219:
            v124 = (v125 + 1);
            if (v124 == v160)
            {
              goto LABEL_252;
            }
          }

          if (!v11)
          {
            v134 = v10 & 0xFFFFFFFFFFFFFF8;
            if (isa <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_235;
            }

            goto LABEL_234;
          }

LABEL_233:
          __CocoaSet.count.getter();
          goto LABEL_234;
        }

LABEL_294:
        v41 = __CocoaSet.count.getter();
        goto LABEL_64;
      }
    }

    else
    {
LABEL_60:
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:

  return v10;
}

id AccessibilityRotorInfo.resolve(in:for:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[1];
  v48 = *v2;
  v49 = v6;
  v50[0] = v2[2];
  *(v50 + 9) = *(v2 + 41);
  v7 = v48;
  v8 = (DWORD1(v6) >> 8) | (SBYTE7(v6) << 16);
  v9 = (v6 >> 8);
  aBlock = v48;
  v39 = v6;
  LOBYTE(v41) = v6;
  *(&v41 + 1) = v6 >> 8;
  HIBYTE(v41) = BYTE7(v6);
  *(&v41 + 5) = DWORD1(v6) >> 8;
  v42 = *(&v6 + 1);
  v37 = v5;
  v38 = v4;
  v45 = v4;
  v46 = v5;
  outlined init with copy of AccessibilityRotorInfo(&v48, v47);
  outlined init with copy of AccessibilityRotorInfo(&v48, v47);
  v10 = AccessibilityRotorInfo.Designation.uniqueID(in:)();
  v12 = v11;
  outlined consume of Text.Suffix.Storage(aBlock, *(&aBlock + 1), v41);
  v13 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformRotorStorage;
  swift_beginAccess();
  v14 = *(a2 + v13);
  if (*(v14 + 16))
  {

    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
    if (v16)
    {
      v17 = v15;
      outlined destroy of AccessibilityRotorInfo(&v48);

      v18 = *(*(v14 + 56) + 8 * v17);

      return v18;
    }
  }

  if ((v9 | (v8 << 32)) < 0)
  {
    v22 = AccessibilitySystemRotor.systemRotorType.getter();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = v49;
    *(v24 + 24) = v48;
    *(v24 + 40) = v25;
    *(v24 + 56) = v50[0];
    *(v24 + 65) = *(v50 + 9);
    v26 = objc_allocWithZone(MEMORY[0x1E69DC5F0]);
    v43 = partial apply for closure #2 in AccessibilityRotorInfo.resolve(in:for:);
    v44 = v24;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
    v42 = &block_descriptor_60;
    v27 = _Block_copy(&aBlock);
    outlined init with copy of AccessibilityRotorInfo(&v48, v47);

    v28 = [v26 initWithSystemType:v22 itemSearchBlock:v27];
    _Block_release(v27);
  }

  else
  {
    v47[0] = v38;
    v47[1] = v37;
    aBlock = 0uLL;
    default argument 2 of static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
    v19 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
    v36 = v12;
    if (v19)
    {
      v20 = v19;
      v21 = *(&v7 + 1);
    }

    else
    {
      v21 = *(&v7 + 1);
      v20 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
    }

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v31 = v49;
    *(v30 + 24) = v48;
    *(v30 + 40) = v31;
    *(v30 + 56) = v50[0];
    *(v30 + 65) = *(v50 + 9);
    v32 = objc_allocWithZone(MEMORY[0x1E69DC5F0]);
    v43 = partial apply for closure #1 in AccessibilityRotorInfo.resolve(in:for:);
    v44 = v30;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
    v42 = &block_descriptor_62_0;
    v33 = _Block_copy(&aBlock);
    outlined init with copy of AccessibilityRotorInfo(&v48, v47);

    v28 = [v32 initWithAttributedName:v20 itemSearchBlock:v33];
    outlined consume of Text.Storage(v7, v21, v39 & 1);

    _Block_release(v33);

    v12 = v36;
  }

  swift_beginAccess();
  v18 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = *(a2 + v13);
  *(a2 + v13) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v10, v12, isUniquelyReferenced_nonNull_native);

  *(a2 + v13) = aBlock;
  swift_endAccess();
  return v18;
}

void AccessibilityCore.Notification.ScreenChanged.info.getter(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v3 = a1;
  if (a1 && (a2 & 1) != 0)
  {
    type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63410;
    v6 = v3;
    v7 = AXSwiftUIPerformElementUpdateImmediatelyToken();
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(inited + 32) = v8;
    *(inited + 40) = v10;
    *(inited + 72) = MEMORY[0x1E69E6370];
    *(inited + 48) = 1;
    v11 = AXSwiftUIMoveToElementNotificationKeyElement();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(inited + 80) = v12;
    *(inited + 88) = v14;
    *(inited + 120) = swift_getObjectType();
    *(inited + 96) = v6;
    v15 = v6;
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    type metadata accessor for (String, Any)();
    swift_arrayDestroy();

    type metadata accessor for [String : Any]();
    ObjectType = v16;
  }

  else
  {
    if (a1)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      ObjectType = 0;
    }

    v18 = v3;
  }

  *a3 = v3;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = ObjectType;
}

BOOL protocol witness for AccessibilityCombinable.merge(with:) in conformance AccessibilityUIKitTraits(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = (v4 | a1[1]) & ~*v1;
  result = v4 != v5;
  if (v4 != v5)
  {
    v1[1] = v5;
    v4 = v5;
  }

  v7 = (v3 | v2) & ~v4;
  if (v3 != v7)
  {
    *v1 = v7;
    return 1;
  }

  return result;
}

uint64_t View.accessibilityAddTraits(uiTraits:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = a1;
  v7 = 0;
  lazy protocol witness table accessor for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey();
  return View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.UIKitTraitsKey, v6, 1, a2, &type metadata for AccessibilityProperties.UIKitTraitsKey, a3);
}

uint64_t View.accessibilityRemoveTraits(uiTraits:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = 0;
  v7 = 0;
  lazy protocol witness table accessor for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey();
  return View.accessibility<A>(_:_:isEnabled:)(&type metadata for AccessibilityProperties.UIKitTraitsKey, v6, 1, a2, &type metadata for AccessibilityProperties.UIKitTraitsKey, a3);
}

uint64_t ModifiedContent<>.accessibilityTraits(uiTraits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[0] = 0;
  v8[1] = a1;
  v9 = 0;
  v5 = lazy protocol witness table accessor for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey();
  v6 = lazy protocol witness table accessor for type AccessibilityUIKitTraits? and conformance <A> A?();
  return ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.UIKitTraitsKey, v8, 1, a2, &type metadata for AccessibilityProperties.UIKitTraitsKey, v5, v6, a3);
}

unint64_t lazy protocol witness table accessor for type AccessibilityUIKitTraits? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AccessibilityUIKitTraits? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AccessibilityUIKitTraits? and conformance <A> A?)
  {
    type metadata accessor for AccessibilityUIKitTraits?(255, &lazy cache variable for type metadata for AccessibilityUIKitTraits?, &type metadata for AccessibilityUIKitTraits, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type AccessibilityUIKitTraits and conformance AccessibilityUIKitTraits();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityUIKitTraits? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityUIKitTraits and conformance AccessibilityUIKitTraits()
{
  result = lazy protocol witness table cache variable for type AccessibilityUIKitTraits and conformance AccessibilityUIKitTraits;
  if (!lazy protocol witness table cache variable for type AccessibilityUIKitTraits and conformance AccessibilityUIKitTraits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityUIKitTraits and conformance AccessibilityUIKitTraits);
  }

  return result;
}

uint64_t ModifiedContent<>.accessibilityRemoveTraits(uiTraits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[0] = a1;
  v8[1] = 0;
  v9 = 0;
  v5 = lazy protocol witness table accessor for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey();
  v6 = lazy protocol witness table accessor for type AccessibilityUIKitTraits? and conformance <A> A?();
  return ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.UIKitTraitsKey, v8, 1, a2, &type metadata for AccessibilityProperties.UIKitTraitsKey, v5, v6, a3);
}

void *AccessibilityRole.update(traits:)(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[1];
    if ((v2 & 1) == 0)
    {
      result[1] = v2 | 1;
    }

    if ((*result & 1) == 0)
    {
      *result |= 1uLL;
    }
  }

  if ((~a2 & 0x10000) == 0)
  {
    v3 = result[1];
    if ((v3 & 2) == 0)
    {
      result[1] = v3 | 2;
    }

    if ((*result & 2) == 0)
    {
      *result |= 2uLL;
    }
  }

  return result;
}

void UILargeContentViewerInteractionBridge.enabledStatusDidChange()()
{
  v1 = [objc_opt_self() isEnabled];
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_showLargeContentViewer);
  *(v0 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_showLargeContentViewer) = v1;
  if (v1 != v2)
  {
    v3 = v0 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_host;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(v3 + 8);
      v6 = Strong;
      ObjectType = swift_getObjectType();
      v8 = (*(*(v5 + 8) + 8))(ObjectType);
      MEMORY[0x1EEE9AC00](v8);
      static Update.ensure<A>(_:)();
    }
  }
}

Swift::Bool __swiftcall UILargeContentViewerInteractionBridge.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v5 = Strong;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = v8;
  [(UIGestureRecognizer *)v6 locationInView:v8];
  v11 = v10;
  v13 = v12;
  if ([v9 _largeContentViewerItemAtPoint_])
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v14)
    {

LABEL_26:
      LOBYTE(v30) = 1;
      return v30;
    }
  }

  v15 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 208);
  v197 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 192);
  v198 = v15;
  v199 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 224);
  v200 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 240);
  v16 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 144);
  v193 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 128);
  v194 = v16;
  v17 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 176);
  v195 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 160);
  v196 = v17;
  v18 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 80);
  v189 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 64);
  v190 = v18;
  v19 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 112);
  v191 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 96);
  v192 = v19;
  v20 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 16);
  v185 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree);
  v186 = v20;
  v21 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 48);
  v187 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 32);
  v188 = v21;
  outlined init with copy of AccessibilityLargeContentViewTree(&v185, v183);
  [v9 convertPoint:0 toView:{v11, v13}];
  v23 = v22;
  v25 = v24;
  v201[12] = v197;
  v201[13] = v198;
  v201[14] = v199;
  v202 = v200;
  v201[8] = v193;
  v201[9] = v194;
  v201[10] = v195;
  v201[11] = v196;
  v201[4] = v189;
  v201[5] = v190;
  v201[6] = v191;
  v201[7] = v192;
  v201[0] = v185;
  v201[1] = v186;
  v201[2] = v187;
  v201[3] = v188;
  Enum = getEnumTag for AccessibilityLargeContentViewTree(v201);
  if (!Enum)
  {
    v53 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v201);
    if (*(v53 + 241) == 2)
    {
      v203.x = v23;
      v203.y = v25;
      if (CGRectContainsPoint(*(v53 + 208), v203))
      {

        outlined destroy of AccessibilityLargeContentViewTree(&v185);
        goto LABEL_26;
      }
    }

    goto LABEL_19;
  }

  if (Enum == 1)
  {
    v27 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v201);
    v28 = *v27;
    v29 = *(*v27 + 16);
    v183[3] = v188;
    v183[2] = v187;
    v183[0] = v185;
    v183[1] = v186;
    v183[7] = v192;
    v183[6] = v191;
    v183[5] = v190;
    v183[4] = v189;
    v183[11] = v196;
    v183[10] = v195;
    v183[9] = v194;
    v183[8] = v193;
    v184 = v200;
    v183[14] = v199;
    v183[13] = v198;
    v183[12] = v197;
    destructiveProjectEnumData for AccessibilityLargeContentViewTree(v183);

    v31 = 0;
    if (v29)
    {
      v32 = v28 + 32;
      while (1)
      {
        v33 = *v32;
        v34 = *(v32 + 16);
        v35 = *(v32 + 48);
        v105 = *(v32 + 32);
        v106 = v35;
        v103 = v33;
        v104 = v34;
        v36 = *(v32 + 64);
        v37 = *(v32 + 80);
        v38 = *(v32 + 112);
        v109 = *(v32 + 96);
        v110 = v38;
        v107 = v36;
        v108 = v37;
        v39 = *(v32 + 128);
        v40 = *(v32 + 144);
        v41 = *(v32 + 176);
        v113 = *(v32 + 160);
        v114 = v41;
        v111 = v39;
        v112 = v40;
        v42 = *(v32 + 192);
        v43 = *(v32 + 208);
        v44 = *(v32 + 224);
        v118 = *(v32 + 240);
        v116 = v43;
        v117 = v44;
        v115 = v42;
        v45 = *(v32 + 208);
        v83 = *(v32 + 192);
        v84 = v45;
        v85 = *(v32 + 224);
        v86 = *(v32 + 240);
        v46 = *(v32 + 144);
        v79 = *(v32 + 128);
        v80 = v46;
        v47 = *(v32 + 176);
        v81 = *(v32 + 160);
        v82 = v47;
        v48 = *(v32 + 80);
        v75 = *(v32 + 64);
        v76 = v48;
        v49 = *(v32 + 112);
        v77 = *(v32 + 96);
        v78 = v49;
        v50 = *(v32 + 16);
        v71 = *v32;
        v72 = v50;
        v51 = *(v32 + 48);
        v73 = *(v32 + 32);
        v74 = v51;
        outlined init with copy of AccessibilityLargeContentViewTree(&v103, &v87);
        closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(&v71, &v87, v23, v25);
        v131 = v83;
        v132 = v84;
        v133 = v85;
        v134 = v86;
        v127 = v79;
        v128 = v80;
        v129 = v81;
        v130 = v82;
        v123 = v75;
        v124 = v76;
        v125 = v77;
        v126 = v78;
        v119 = v71;
        v120 = v72;
        v121 = v73;
        v122 = v74;
        outlined destroy of AccessibilityLargeContentViewTree(&v119);
        v147 = v99;
        v148 = v100;
        v149 = v101;
        v143 = v95;
        v144 = v96;
        v145 = v97;
        v146 = v98;
        v139 = v91;
        v140 = v92;
        v141 = v93;
        v142 = v94;
        v135 = v87;
        v136 = v88;
        v137 = v89;
        v138 = v90;
        v163 = v99;
        v164 = v100;
        v165 = v101;
        v159 = v95;
        v160 = v96;
        v161 = v97;
        v162 = v98;
        v155 = v91;
        v156 = v92;
        v157 = v93;
        v158 = v94;
        v151 = v87;
        v152 = v88;
        v150 = v102;
        v166 = v102;
        v153 = v89;
        v154 = v90;
        outlined destroy of AccessibilityLargeContentViewItem?(&v151, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720]);
        v179 = v147;
        v180 = v148;
        v181 = v149;
        v182 = v150;
        v175 = v143;
        v176 = v144;
        v177 = v145;
        v178 = v146;
        v171 = v139;
        v172 = v140;
        v173 = v141;
        v174 = v142;
        v167 = v135;
        v168 = v136;
        v169 = v137;
        v170 = v138;
        v30 = _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(&v167);
        if (v30 != 1)
        {
          break;
        }

        ++v31;
        v32 += 248;
        if (v29 == v31)
        {
          v31 = v29;
          break;
        }
      }
    }

    v52 = *(v28 + 16);
    if (v31 != v52)
    {
      if (v31 >= v52)
      {
        __break(1u);
      }

      else
      {
        v56 = v28 + 248 * v31;
        v57 = *(v56 + 32);
        v58 = *(v56 + 48);
        v59 = *(v56 + 80);
        v105 = *(v56 + 64);
        v106 = v59;
        v103 = v57;
        v104 = v58;
        v60 = *(v56 + 96);
        v61 = *(v56 + 112);
        v62 = *(v56 + 144);
        v109 = *(v56 + 128);
        v110 = v62;
        v107 = v60;
        v108 = v61;
        v63 = *(v56 + 160);
        v64 = *(v56 + 176);
        v65 = *(v56 + 208);
        v113 = *(v56 + 192);
        v114 = v65;
        v111 = v63;
        v112 = v64;
        v66 = *(v56 + 224);
        v67 = *(v56 + 240);
        v68 = *(v56 + 256);
        v118 = *(v56 + 272);
        v116 = v67;
        v117 = v68;
        v115 = v66;
        v163 = *(v56 + 224);
        v164 = *(v56 + 240);
        v165 = *(v56 + 256);
        v166 = *(v56 + 272);
        v159 = *(v56 + 160);
        v160 = *(v56 + 176);
        v161 = *(v56 + 192);
        v162 = *(v56 + 208);
        v155 = *(v56 + 96);
        v156 = *(v56 + 112);
        v157 = *(v56 + 128);
        v158 = *(v56 + 144);
        v151 = *(v56 + 32);
        v152 = *(v56 + 48);
        v153 = *(v56 + 64);
        v154 = *(v56 + 80);
        outlined init with copy of AccessibilityLargeContentViewTree(&v103, &v167);
        closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(&v151, &v167, v23, v25);
        v131 = v163;
        v132 = v164;
        v133 = v165;
        v134 = v166;
        v127 = v159;
        v128 = v160;
        v129 = v161;
        v130 = v162;
        v123 = v155;
        v124 = v156;
        v125 = v157;
        v126 = v158;
        v119 = v151;
        v120 = v152;
        v121 = v153;
        v122 = v154;
        outlined destroy of AccessibilityLargeContentViewTree(&v119);
        v147 = v179;
        v148 = v180;
        v149 = v181;
        v143 = v175;
        v144 = v176;
        v145 = v177;
        v146 = v178;
        v139 = v171;
        v140 = v172;
        v141 = v173;
        v142 = v174;
        v135 = v167;
        v136 = v168;
        v137 = v169;
        v138 = v170;
        v163 = v179;
        v164 = v180;
        v165 = v181;
        v159 = v175;
        v160 = v176;
        v161 = v177;
        v162 = v178;
        v155 = v171;
        v156 = v172;
        v157 = v173;
        v158 = v174;
        v151 = v167;
        v152 = v168;
        v150 = v182;
        v166 = v182;
        v153 = v169;
        v154 = v170;
        v69 = MEMORY[0x1E69E6720];
        outlined init with copy of AccessibilityLargeContentViewItem?(&v135, &v87, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
        outlined destroy of AccessibilityLargeContentViewItem?(&v151, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, v69);
        v179 = v147;
        v180 = v148;
        v181 = v149;
        v182 = v150;
        v175 = v143;
        v176 = v144;
        v177 = v145;
        v178 = v146;
        v171 = v139;
        v172 = v140;
        v173 = v141;
        v174 = v142;
        v167 = v135;
        v168 = v136;
        v169 = v137;
        v170 = v138;
        v30 = _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(&v167);
        if (v30 != 1)
        {
          outlined destroy of AccessibilityLargeContentViewTree(&v185);
          outlined destroy of AccessibilityLargeContentViewTree(&v185);

          outlined destroy of AccessibilityLargeContentViewItem?(&v135, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720]);
          goto LABEL_26;
        }
      }

      __break(1u);
      return v30;
    }

    outlined destroy of AccessibilityLargeContentViewTree(&v185);
LABEL_19:
    outlined destroy of AccessibilityLargeContentViewTree(&v185);
  }

  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    [v54 swiftUI_cancelGateGesture];
  }

  LOBYTE(v30) = 0;
  return v30;
}

Swift::Bool __swiftcall UILargeContentViewerInteractionBridge.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRecognizeSimultaneouslyWith)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer);
    v8 = _;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      type metadata accessor for UIKitGestureRecognizer();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_simultaneousGesture);
        *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_simultaneousGesture) = v10;
        v12 = shouldRecognizeSimultaneouslyWith;

        return 1;
      }
    }
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  v16 = _;
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  if (ObjectType != swift_getObjectType())
  {
    return 0;
  }

  v19 = [(UIGestureRecognizer *)v16 view];
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v21 = [(UIGestureRecognizer *)shouldRecognizeSimultaneouslyWith view];
  if (!v21)
  {

    return 0;
  }

  v22 = v21;
  v23 = [(UIView *)v21 isDescendantOfView:v20];

  return (v23 & 1) != 0;
}

void UILargeContentViewerInteractionBridge.hitTest(at:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v8 = Strong;
  v9 = [Strong _largeContentViewerItemAtPoint_];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        [v11 frame];
        [v13 convertRect:v11 fromCoordinateSpace:?];
        v106 = v15;
        v108 = v14;
        v104 = v17;
        v105 = v16;

        *&v18 = v106;
        v19.x = v108;
        *(&v18 + 1) = v104;
        v19.y = v105;
LABEL_25:
        *a1 = v11;
        *(a1 + 8) = v19;
        *(a1 + 24) = v18;
        return;
      }

      goto LABEL_29;
    }

    swift_unknownObjectRelease();
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v21 = v20;
  [v20 convertPoint:0 toView:{a2, a3}];
  v23 = v22;
  v25 = v24;

  v26 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 208);
  v27 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 176);
  v261 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 192);
  v262 = v26;
  v28 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 208);
  v263 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 224);
  v29 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 144);
  v30 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 112);
  v257 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 128);
  v258 = v29;
  v31 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 144);
  v32 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 176);
  v259 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 160);
  v260 = v32;
  v33 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 80);
  v34 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 48);
  v253 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 64);
  v254 = v33;
  v35 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 80);
  v36 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 112);
  v255 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 96);
  v256 = v36;
  v37 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 16);
  v249 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree);
  v250 = v37;
  v38 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 48);
  v40 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree);
  v39 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 16);
  v251 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 32);
  v252 = v38;
  v265[12] = v261;
  v265[13] = v28;
  v265[14] = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 224);
  v265[8] = v257;
  v265[9] = v31;
  v265[10] = v259;
  v265[11] = v27;
  v265[4] = v253;
  v265[5] = v35;
  v265[6] = v255;
  v265[7] = v30;
  v265[0] = v40;
  v265[1] = v39;
  v264 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 240);
  v266 = *(v3 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 240);
  v265[2] = v251;
  v265[3] = v34;
  Enum = getEnumTag for AccessibilityLargeContentViewTree(v265);
  if (!Enum)
  {
    v85 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v265);
    if (*(v85 + 241) == 2)
    {
      v86 = v85;
      v107 = *(v85 + 224);
      v109 = *(v85 + 208);
      v230 = v257;
      v231 = v258;
      v232 = v259;
      v233 = v260;
      v226 = v253;
      v227 = v254;
      v228 = v255;
      v229 = v256;
      v222 = v249;
      v223 = v250;
      v224 = v251;
      v225 = v252;
      v234 = v261;
      v235 = v262;
      v236 = v263;
      v237 = v264;
      v87 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v222);
      outlined init with copy of AccessibilityLargeContentViewItem(v87, &v206);
      *&v268.size.width = v107;
      v268.origin = v109;
      v268.size.height = *(&v107 + 1);
      v267.x = v23;
      v267.y = v25;
      if (CGRectContainsPoint(v268, v267))
      {
        v84 = *(v86 + 240);
        v81 = *v86;
        v82 = *(v86 + 8);
        v88 = *(v86 + 160);
        v246 = *(v86 + 144);
        v247 = v88;
        v248[0] = *(v86 + 176);
        *(v248 + 11) = *(v86 + 187);
        v89 = *(v86 + 96);
        v242 = *(v86 + 80);
        v243 = v89;
        v90 = *(v86 + 128);
        v244 = *(v86 + 112);
        v245 = v90;
        v91 = *(v86 + 32);
        v238 = *(v86 + 16);
        v239 = v91;
        v92 = *(v86 + 64);
        v83 = 2;
        v240 = *(v86 + 48);
        v241 = v92;
        goto LABEL_22;
      }

      goto LABEL_23;
    }

LABEL_24:
    v11 = 0;
    v19 = 0;
    v18 = 0uLL;
    goto LABEL_25;
  }

  if (Enum != 1)
  {
    goto LABEL_24;
  }

  v42 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v265);
  v43 = *v42;
  v44 = *(*v42 + 16);
  v225 = v252;
  v224 = v251;
  v222 = v249;
  v223 = v250;
  v229 = v256;
  v228 = v255;
  v227 = v254;
  v226 = v253;
  v233 = v260;
  v232 = v259;
  v231 = v258;
  v230 = v257;
  v237 = v264;
  v236 = v263;
  v235 = v262;
  v234 = v261;
  destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v222);

  v45 = 0;
  if (v44)
  {
    v46 = v43 + 32;
    while (1)
    {
      v47 = *v46;
      v48 = *(v46 + 16);
      v49 = *(v46 + 48);
      v145 = *(v46 + 32);
      v146 = v49;
      v143 = v47;
      v144 = v48;
      v50 = *(v46 + 64);
      v51 = *(v46 + 80);
      v52 = *(v46 + 112);
      v149 = *(v46 + 96);
      v150 = v52;
      v147 = v50;
      v148 = v51;
      v53 = *(v46 + 128);
      v54 = *(v46 + 144);
      v55 = *(v46 + 176);
      v153 = *(v46 + 160);
      v154 = v55;
      v151 = v53;
      v152 = v54;
      v56 = *(v46 + 192);
      v57 = *(v46 + 208);
      v58 = *(v46 + 224);
      v158 = *(v46 + 240);
      v156 = v57;
      v157 = v58;
      v155 = v56;
      v59 = *(v46 + 208);
      v123 = *(v46 + 192);
      v124 = v59;
      v125 = *(v46 + 224);
      v126 = *(v46 + 240);
      v60 = *(v46 + 144);
      v119 = *(v46 + 128);
      v120 = v60;
      v61 = *(v46 + 176);
      v121 = *(v46 + 160);
      v122 = v61;
      v62 = *(v46 + 80);
      v115 = *(v46 + 64);
      v116 = v62;
      v63 = *(v46 + 112);
      v117 = *(v46 + 96);
      v118 = v63;
      v64 = *(v46 + 16);
      v111 = *v46;
      v112 = v64;
      v65 = *(v46 + 48);
      v113 = *(v46 + 32);
      v114 = v65;
      outlined init with copy of AccessibilityLargeContentViewTree(&v143, &v127);
      closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(&v111, &v127, v23, v25);
      v172 = v124;
      v173 = v125;
      v174 = v126;
      v167 = v119;
      v168 = v120;
      v169 = v121;
      v170 = v122;
      v171 = v123;
      v163 = v115;
      v164 = v116;
      v165 = v117;
      v166 = v118;
      v159 = v111;
      v160 = v112;
      v161 = v113;
      v162 = v114;
      outlined destroy of AccessibilityLargeContentViewTree(&v159);
      *&v186[16] = v139;
      v187 = v140;
      v188 = v141;
      v183 = v135;
      v184 = v136;
      v185 = v137;
      *v186 = v138;
      v179 = v131;
      v180 = v132;
      v181 = v133;
      v182 = v134;
      v175 = v127;
      v176 = v128;
      v177 = v129;
      v178 = v130;
      v202 = v139;
      v203 = v140;
      v204 = v141;
      v198 = v135;
      v199 = v136;
      v200 = v137;
      v201 = v138;
      v194 = v131;
      v195 = v132;
      v196 = v133;
      v197 = v134;
      v190 = v127;
      v191 = v128;
      v189 = v142;
      v205 = v142;
      v192 = v129;
      v193 = v130;
      outlined destroy of AccessibilityLargeContentViewItem?(&v190, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720]);
      v218 = *&v186[16];
      v219 = v187;
      v220 = v188;
      v221 = v189;
      v214 = v183;
      v215 = v184;
      v216 = v185;
      v217 = *v186;
      v210 = v179;
      v211 = v180;
      v212 = v181;
      v213 = v182;
      v206 = v175;
      v207 = v176;
      v208 = v177;
      v209 = v178;
      if (_s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(&v206) != 1)
      {
        break;
      }

      ++v45;
      v46 += 248;
      if (v44 == v45)
      {
        v45 = v44;
        break;
      }
    }
  }

  v66 = *(v43 + 16);
  if (v45 == v66)
  {
LABEL_23:
    outlined destroy of AccessibilityLargeContentViewTree(&v249);
    goto LABEL_24;
  }

  if (v45 >= v66)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v67 = v43 + 248 * v45;
  v68 = *(v67 + 32);
  v69 = *(v67 + 48);
  v70 = *(v67 + 80);
  v145 = *(v67 + 64);
  v146 = v70;
  v143 = v68;
  v144 = v69;
  v71 = *(v67 + 96);
  v72 = *(v67 + 112);
  v73 = *(v67 + 144);
  v149 = *(v67 + 128);
  v150 = v73;
  v147 = v71;
  v148 = v72;
  v74 = *(v67 + 160);
  v75 = *(v67 + 176);
  v76 = *(v67 + 208);
  v153 = *(v67 + 192);
  v154 = v76;
  v151 = v74;
  v152 = v75;
  v77 = *(v67 + 224);
  v78 = *(v67 + 240);
  v79 = *(v67 + 256);
  v158 = *(v67 + 272);
  v156 = v78;
  v157 = v79;
  v155 = v77;
  v202 = *(v67 + 224);
  v203 = *(v67 + 240);
  v204 = *(v67 + 256);
  v205 = *(v67 + 272);
  v198 = *(v67 + 160);
  v199 = *(v67 + 176);
  v200 = *(v67 + 192);
  v201 = *(v67 + 208);
  v194 = *(v67 + 96);
  v195 = *(v67 + 112);
  v196 = *(v67 + 128);
  v197 = *(v67 + 144);
  v190 = *(v67 + 32);
  v191 = *(v67 + 48);
  v192 = *(v67 + 64);
  v193 = *(v67 + 80);
  outlined init with copy of AccessibilityLargeContentViewTree(&v143, &v206);
  closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(&v190, &v206, v23, v25);
  v172 = v203;
  v173 = v204;
  v174 = v205;
  v167 = v198;
  v168 = v199;
  v169 = v200;
  v170 = v201;
  v171 = v202;
  v163 = v194;
  v164 = v195;
  v165 = v196;
  v166 = v197;
  v159 = v190;
  v160 = v191;
  v161 = v192;
  v162 = v193;
  outlined destroy of AccessibilityLargeContentViewTree(&v159);
  *&v186[16] = v218;
  v187 = v219;
  v188 = v220;
  v183 = v214;
  v184 = v215;
  v185 = v216;
  *v186 = v217;
  v179 = v210;
  v180 = v211;
  v181 = v212;
  v182 = v213;
  v175 = v206;
  v176 = v207;
  v177 = v208;
  v178 = v209;
  v202 = v218;
  v203 = v219;
  v204 = v220;
  v198 = v214;
  v199 = v215;
  v200 = v216;
  v201 = v217;
  v194 = v210;
  v195 = v211;
  v196 = v212;
  v197 = v213;
  v190 = v206;
  v191 = v207;
  v189 = v221;
  v205 = v221;
  v192 = v208;
  v193 = v209;
  v80 = MEMORY[0x1E69E6720];
  outlined init with copy of AccessibilityLargeContentViewItem?(&v175, &v127, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityUIKitTraits?);
  outlined destroy of AccessibilityLargeContentViewItem?(&v190, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, v80);
  v218 = *&v186[16];
  v219 = v187;
  v220 = v188;
  v221 = v189;
  v214 = v183;
  v215 = v184;
  v216 = v185;
  v217 = *v186;
  v210 = v179;
  v211 = v180;
  v212 = v181;
  v213 = v182;
  v206 = v175;
  v207 = v176;
  v208 = v177;
  v209 = v178;
  if (_s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(&v206) != 1)
  {
    outlined destroy of AccessibilityLargeContentViewTree(&v249);
    v82 = *(&v175 + 1);
    v81 = v175;
    v246 = v184;
    v247 = v185;
    v248[0] = *v186;
    *(v248 + 11) = *&v186[11];
    v242 = v180;
    v243 = v181;
    v244 = v182;
    v245 = v183;
    v238 = v176;
    v239 = v177;
    v240 = v178;
    v241 = v179;
    v107 = v188;
    v109 = v187;
    v83 = HIBYTE(v189);
    v84 = v189;
LABEL_22:
    v93 = v84 & 1;
    v94 = type metadata accessor for UILargeContentViewerItemBridge();
    v95 = objc_allocWithZone(v94);
    v95[OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_showsLargeContentViewer] = 1;
    v95[OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_scalesLargeContentImage] = 1;
    v96 = &v95[OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets];
    v97 = *(MEMORY[0x1E69DDCE0] + 16);
    *v96 = *MEMORY[0x1E69DDCE0];
    v96[1] = v97;
    v98 = &v95[OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item];
    *v98 = v81;
    *(v98 + 1) = v82;
    v99 = v247;
    *(v98 + 9) = v246;
    *(v98 + 10) = v99;
    *(v98 + 11) = v248[0];
    *(v98 + 187) = *(v248 + 11);
    v100 = v243;
    *(v98 + 5) = v242;
    *(v98 + 6) = v100;
    v101 = v245;
    *(v98 + 7) = v244;
    *(v98 + 8) = v101;
    v102 = v239;
    *(v98 + 1) = v238;
    *(v98 + 2) = v102;
    v103 = v241;
    *(v98 + 3) = v240;
    *(v98 + 4) = v103;
    v98[207] = BYTE4(v222);
    *(v98 + 203) = v222;
    *(v98 + 13) = v109;
    *(v98 + 14) = v107;
    v98[240] = v93;
    v98[241] = v83;
    v110.receiver = v95;
    v110.super_class = v94;
    v11 = objc_msgSendSuper2(&v110, sel_init);
    v18 = v107;
    v19 = v109;
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
}

uint64_t UILargeContentViewerItemBridge.largeContentImage.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item);
  v2 = v1[10];
  v26[8] = v1[9];
  v27 = v2;
  v28[0] = v1[11];
  *(v28 + 11) = *(v1 + 187);
  v3 = v1[6];
  v26[4] = v1[5];
  v26[5] = v3;
  v4 = v1[8];
  v26[6] = v1[7];
  v26[7] = v4;
  v5 = v1[2];
  v26[0] = v1[1];
  v26[1] = v5;
  v6 = v1[4];
  v26[2] = v1[3];
  v26[3] = v6;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v26) == 1 || !v27)
  {
    v8 = v1[10];
    v23 = v1[9];
    v24 = v8;
    v25[0] = v1[11];
    *(v25 + 11) = *(v1 + 187);
    v9 = v1[6];
    v20 = v1[5];
    *v21 = v9;
    v10 = v1[8];
    *&v21[16] = v1[7];
    v22 = v10;
    v11 = v1[2];
    v16 = v1[1];
    v17 = v11;
    v12 = v1[4];
    v18 = v1[3];
    v19 = v12;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v16) == 1)
    {
      return 0;
    }

    else
    {
      v14[11] = v20;
      v15[0] = *v21;
      *(v15 + 12) = *&v21[12];
      v14[7] = v16;
      v14[8] = v17;
      v14[9] = v18;
      v14[10] = v19;
      outlined init with copy of GraphicsImage(&v16, v14);
      v13 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(1, 0, 0);
      outlined destroy of GraphicsImage(&v16);
      return v13;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }
}

id UILargeContentViewerItemBridge.accessibilityHUDRepresentation.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item);
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_item + 8);
  v4 = UILargeContentViewerItemBridge.largeContentImage.getter();
  v5 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets);
  v6 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets + 8);
  v7 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets + 16);
  v8 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_1C25C4B203EEAC6A19839AC5BDB6A34530UILargeContentViewerItemBridge_largeContentImageInsets + 24);
  if (v3)
  {
    v9 = MEMORY[0x18D00C850](v2, v3);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DC618]) initWithTitle:v9 image:v4 imageInsets:1 scaleImage:{v5, v6, v7, v8}];

  if ((*(v1 + 240) & 1) == 0)
  {
    [v10 setDisabledAppearance_];
  }

  return v10;
}

id UILargeContentViewerItemBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UILargeContentViewerItemBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance UIAccessibilityTraits(void *a1)
{
  return protocol witness for Serializable.serialize(to:) in conformance UIAccessibilityTraits(a1);
}

{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance UIAccessibilityTraits@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v6[6];
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIAccessibilityTraits and conformance UIAccessibilityTraits(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance UIAccessibilityContainerType@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v6[6];
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t AccessibilityNode.entry(for:going:from:resolveToLeaf:)(__int128 *a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v90 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v137 = *a1;
  v138 = v11;
  v139[0] = a1[2];
  *(v139 + 9) = *(a1 + 41);
  v86 = v12;
  if (a2 == 1)
  {
    LODWORD(v88) = 1;
  }

  else
  {
    if (a2)
    {
      goto LABEL_74;
    }

    LODWORD(v88) = 0;
  }

  if ([a3 targetElement])
  {
    v93 = &unk_1F00D1888;
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      v14 = v13;
      swift_getObjectType();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_10;
      }
    }

    swift_unknownObjectRelease();
  }

  v14 = 0;
LABEL_10:
  v15 = [a3 targetRange];
  v16 = v15;
  if (v15)
  {
    v17 = 2;
  }

  else
  {
    v17 = -1;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = [a3 targetRange];
  if (v15)
  {

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v18 = 1;
LABEL_17:
  v92 = v5;
  if (!v14)
  {
    LOBYTE(v127) = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    MEMORY[0x1EEE9AC00](v15);
    *(&v81 - 4) = &v137;
    *(&v81 - 3) = 0;
    v79 = &v120;
    static Update.ensure<A>(_:)();

    if (*(&v125 + 1))
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  LODWORD(v91) = a4;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  v19 = v14;
  v20 = v16;
  v21 = MEMORY[0x1E69E6720];
  outlined destroy of AccessibilityLargeContentViewItem?(&v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  v114 = 0u;
  memset(v115, 0, sizeof(v115));
  v113 = 0u;
  v22 = outlined destroy of AccessibilityLargeContentViewItem?(&v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v21);
  v87 = &v81;
  v101 = 0;
  memset(&v100[8], 0, 112);
  memset(v102, 0, 113);
  memset(v103, 0, 113);
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v104 = 0u;
  v95 = v137;
  v96 = v138;
  v97[0] = v139[0];
  *(v97 + 9) = *(v139 + 9);
  *&v98 = v5;
  *(&v98 + 1) = v19;
  v99 = v20;
  v83 = v17;
  v100[0] = v17;
  v100[1] = v18;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v82 = v18;
  *(&v81 - 4) = &v137;
  *(&v81 - 3) = partial apply for closure #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:);
  v79 = v24;
  v25 = v19;
  outlined init with copy of AccessibilityRotorInfo(&v137, &v94);
  v84 = v5;
  v85 = v20;
  v26 = v20;
  static Update.ensure<A>(_:)();
  outlined init with copy of AccessibilityLargeContentViewItem?(v102, &v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v21, type metadata accessor for AccessibilityUIKitTraits?);
  outlined init with copy of AccessibilityLargeContentViewItem?(v103, &v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v21, type metadata accessor for AccessibilityUIKitTraits?);
  outlined init with copy of AccessibilityLargeContentViewItem?(&v100[8], v112, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v21, type metadata accessor for AccessibilityUIKitTraits?);
  outlined destroy of MatchingVisitor #1 in AccessibilityRotorInfo.resolveEntry(for:range:on:resolveToLeaf:previous:next:)(&v95);
  if (!v112[11])
  {
    v29 = v84;
    v28 = v85;
    v30 = outlined destroy of AccessibilityLargeContentViewItem?(v112, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    *&v95 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v30);
    MEMORY[0x1EEE9AC00](v31);
    *(&v81 - 4) = &v137;
    *(&v81 - 3) = partial apply for closure #1 in AccessibilityRotorInfo.resolveAllEntries();
    v79 = v32;
    static Update.ensure<A>(_:)();
    v33 = v95;
    if (!*(v95 + 16))
    {

      v35 = MEMORY[0x1E69E6720];
      outlined destroy of AccessibilityLargeContentViewItem?(&v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
      outlined destroy of AccessibilityLargeContentViewItem?(&v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v35);
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      LOBYTE(v127) = 0;
      goto LABEL_29;
    }

    v95 = v137;
    v96 = v138;
    v97[0] = v139[0];
    *(v97 + 9) = *(v139 + 9);
    AccessibilityRotorInfo.closestEntry(in:on:going:from:range:resolveToLeaf:)(v33, v29, v88, v25, v28, 0, v83, v82, &v120);

    v34 = MEMORY[0x1E69E6720];
    outlined destroy of AccessibilityLargeContentViewItem?(&v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    outlined destroy of AccessibilityLargeContentViewItem?(&v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, v34);
    v5 = v92;
    a4 = v91;
    if (*(&v125 + 1))
    {
      goto LABEL_30;
    }

LABEL_22:
    outlined destroy of AccessibilityLargeContentViewItem?(&v120, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    return 0;
  }

  outlined destroy of AccessibilityLargeContentViewItem?(v112, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
  if (v88)
  {
    outlined destroy of AccessibilityLargeContentViewItem?(&v129, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    v124 = v116;
    v125 = v117;
    v126 = v118;
    LOBYTE(v127) = v119;
    v120 = v113;
    v121 = v114;
    v122 = v115[0];
    v123 = v115[1];
  }

  else
  {
    outlined destroy of AccessibilityLargeContentViewItem?(&v113, &lazy cache variable for type metadata for AccessibilityListRotorEntry?, &type metadata for AccessibilityListRotorEntry, MEMORY[0x1E69E6720]);
    v124 = v133;
    v125 = v134;
    v126 = v135;
    LOBYTE(v127) = v136;
    v120 = v129;
    v121 = v130;
    v122 = v131;
    v123 = v132;
  }

LABEL_29:
  v5 = v92;
  a4 = v91;
  if (!*(&v125 + 1))
  {
    goto LABEL_22;
  }

LABEL_30:
  v133 = v124;
  v134 = v125;
  v135 = v126;
  v136 = v127;
  v129 = v120;
  v130 = v121;
  v131 = v122;
  v132 = v123;
  v36 = v125 == 0xFF;
  (*(&v125 + 1))();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    *&v120 = 0;
    BYTE8(v120) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  v113 = v137;
  v114 = v138;
  v115[0] = v139[0];
  *(v115 + 9) = *(v139 + 9);
  v37 = AccessibilityRotorInfo.resolveElement(with:on:scrollIfNeeded:resolveToLeaf:shouldLog:)(&v129, v5, 1, a4 & v36, 0);
  if (!v37)
  {
    LODWORD(v91) = a4;
    v88 = *MEMORY[0x1E695D918];
    v38 = *MEMORY[0x1E695DA28];
    v86 += 8;
    v87 = v38;
    v39 = 4;
    do
    {
      if (!v39)
      {
        outlined destroy of AccessibilityListRotorEntry(&v129);
        return 0;
      }

      v40 = v36;
      v41 = objc_opt_self();

      type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode, MEMORY[0x1E69E6F90]);
      v42 = swift_allocObject();
      v44 = v87;
      v43 = v88;
      *(v42 + 32) = v88;
      *(v42 + 40) = v44;
      swift_setDeallocating();
      type metadata accessor for NSRunLoopMode(0);
      v45 = v43;
      v46 = v44;
      v47 = v45;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v48 = [v41 currentRunLoop];
      v49 = v89;
      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v86)(v49, v90);
      LOBYTE(v49) = [v48 runMode:v47 beforeDate:isa];

      if ((v49 & 1) == 0)
      {
        [objc_opt_self() sleepForTimeInterval_];
      }

      --v39;
      v113 = v137;
      v114 = v138;
      v115[0] = v139[0];
      *(v115 + 9) = *(v139 + 9);
      v36 = v40;
      v37 = AccessibilityRotorInfo.resolveElement(with:on:scrollIfNeeded:resolveToLeaf:shouldLog:)(&v129, v92, 1, v91 & v40, v39 == 0);
    }

    while (!v37);
  }

  v51 = *(&v133 + 1);
  v92 = v133;
  v52 = v134;
  v89 = v37;
  if (v134 == 2)
  {
    outlined copy of AccessibilityRotorEntryRange(v92, *(&v133 + 1), 2);
    goto LABEL_70;
  }

  if (v134 == 255)
  {
    v92 = 0;
LABEL_70:
    outlined init with copy of AccessibilityListRotorEntry(&v129, &v120);
    *(&v127 + 1) = v89;
    *&v100[32] = v92;
    v97[0] = v122;
    v97[1] = v123;
    v98 = v124;
    v99 = v125;
    v95 = v120;
    v96 = v121;
    *v100 = v126;
    *&v100[16] = v127;
    outlined init with copy of AccessibilityNavigationRotorEntry(&v95, &v120);
    v77 = objc_allocWithZone(MEMORY[0x1E69DC5F8]);
    v78 = [v77 initWithTargetElement:*(&v127 + 1) targetRange:v128];
    outlined destroy of AccessibilityNavigationRotorEntry(&v95);
    outlined destroy of AccessibilityNavigationRotorEntry(&v120);
    outlined destroy of AccessibilityListRotorEntry(&v129);
    return v78;
  }

  v53 = v37;
  ObjectType = swift_getObjectType();
  v55 = v92;
  outlined copy of AccessibilityRotorEntryRange(v92, v51, v52);
  v90 = ObjectType;
  v56 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
  v57 = *(v56 + 2);
  v58 = v53;
  outlined copy of AccessibilityRotorEntryRange?(v55, v51, v52);
  v91 = v58;
  if (!v57)
  {
LABEL_58:
    v69 = *(v56 + 2);
    if (v57 == v69)
    {

      outlined consume of AccessibilityRotorEntryRange?(v92, v51, v52);

      v70 = 0;
LABEL_69:
      outlined consume of AccessibilityRotorEntryRange?(v92, v51, v52);

      v92 = v70;
      goto LABEL_70;
    }

    if (v57 >= v69)
    {
      goto LABEL_72;
    }

    v71 = &v56[16 * v57 + 32];
    v72 = v71[1];
    if (v52)
    {
      if (v52 != 1)
      {

        LOBYTE(v52) = 2;
        v70 = v92;
        goto LABEL_69;
      }

      v73 = *v71;

      v74 = specialized String.resolveNSRange(_:in:)(v92, v51, v73, v72);
      if (v76)
      {

        goto LABEL_73;
      }
    }

    else
    {

      v74 = v92;
      v75 = v51;
    }

    v70 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v74, v75);

    outlined consume of AccessibilityRotorEntryRange?(v92, v51, v52);
    if (!v70)
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  v59 = 0;
  v86 = v56;
  v87 = v57;
  v60 = (v56 + 40);
  LODWORD(v88) = v52;
  while (1)
  {
    v61 = *v60;
    if (!v52)
    {

      v68 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v92, v51);
      goto LABEL_54;
    }

    if (v52 != 1)
    {
      v57 = 0;
      goto LABEL_57;
    }

    v62 = *(v60 - 1);
    *&v113 = v92;
    *(&v113 + 1) = v51;
    v112[0] = v62;
    v112[1] = v61;
    type metadata accessor for Range<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_bridgeObjectRetain_n();
    v63 = _NSRange.init<A, B>(_:in:)();
    v65 = v64;
    if (v63 == NSNotFound.getter())
    {
LABEL_45:

      v52 = v88;
      v57 = v87;
      goto LABEL_46;
    }

    if (__OFADD__(v63, v65))
    {
      break;
    }

    v66 = MEMORY[0x18D00C850](v62, v61);
    v67 = [v66 length];

    if (v67 < v63 + v65)
    {
      goto LABEL_45;
    }

    v68 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v63, v65);
    v52 = v88;
    v57 = v87;
LABEL_54:

    if (v68)
    {
      v57 = v59;
LABEL_57:
      v56 = v86;
      goto LABEL_58;
    }

LABEL_46:
    v59 = (v59 + 1);
    v60 += 2;
    if (v57 == v59)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:

  __break(1u);
LABEL_74:
  v80 = 0;
  v79 = 1300;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}