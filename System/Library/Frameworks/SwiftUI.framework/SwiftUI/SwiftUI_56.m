void storeEnumTagSinglePayload for LazyPlatformItemWriter(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
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
LABEL_47:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
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
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *(v19 + 8) = v20;
  }
}

uint64_t View.presentationTransitionStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v13, a3, a5);
  outlined init with copy of _PresentationTransitionOutputs.Content(v13, &v10);
  if (*(&v11 + 1))
  {
    v7 = v10;
    v8 = v11;
    v9 = v12;
    if (one-time initialization token for _sharedNamespaceID != -1)
    {
      swift_once();
    }

    v5 = static _PresentationTransitionCompatibility._sharedNamespaceID;
    outlined destroy of _PresentationTransitionOutputs(v13);
    *&v14[0] = v5;
    *(v14 + 8) = v7;
    *(&v14[1] + 8) = v8;
    *(&v14[2] + 1) = v9;
  }

  else
  {
    outlined destroy of _PresentationTransitionOutputs(v13);
    memset(v14, 0, sizeof(v14));
  }

  View.preference<A>(key:value:)();
  return outlined destroy of _NavigationTransitionOutputs?(v14, type metadata accessor for _NavigationTransitionOutputs?);
}

uint64_t outlined init with copy of _PresentationTransitionOutputs.Content(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 3);
  if (v3 < 0xFFFFFFFF)
  {
    v5 = *a1;
    v6 = a1[1];
    *(a2 + 32) = *(a1 + 4);
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    v4 = *(a1 + 4);
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    (**(v3 - 8))(a2);
  }

  return a2;
}

double AutomaticPresentationTransitionStyle._makePresentationTransition()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t one-time initialization function for _sharedNamespaceID()
{
  result = AGMakeUniqueID();
  static _PresentationTransitionCompatibility._sharedNamespaceID = result;
  return result;
}

__n128 assignWithCopy for _PresentationTransitionOutputs(__n128 *a1, __n128 *a2)
{
  v2 = a2[1].n128_u64[1];
  if (a1[1].n128_u64[1])
  {
    if (v2)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of _NavigationTransitionOutputs?(a1, type metadata accessor for (sourceID: AnyHashable));
      v6 = a2[2].n128_u64[0];
      result = a2[1];
      *a1 = *a2;
      a1[1] = result;
      a1[2].n128_u64[0] = v6;
    }
  }

  else if (v2)
  {
    a1[1].n128_u64[1] = v2;
    a1[2].n128_u64[0] = a2[2].n128_u64[0];
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v7 = a2[1];
    a1[2].n128_u64[0] = a2[2].n128_u64[0];
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

uint64_t type metadata accessor for (sourceID: AnyHashable)()
{
  result = lazy cache variable for type metadata for (sourceID: AnyHashable);
  if (!lazy cache variable for type metadata for (sourceID: AnyHashable))
  {
    result = MEMORY[0x1E69E69B8];
    atomic_store(MEMORY[0x1E69E69B8], &lazy cache variable for type metadata for (sourceID: AnyHashable));
  }

  return result;
}

__n128 assignWithTake for _PresentationTransitionOutputs(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of _NavigationTransitionOutputs?(a1, type metadata accessor for (sourceID: AnyHashable));
    }

    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t assignWithTake for ZoomPresentationTransitionStyle(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

__n128 assignWithCopy for _PresentationTransitionOutputs.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      v7 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v7;
    }

    else
    {
      *(a1 + 24) = v2;
      *(a1 + 32) = *(a2 + 32);
      (**(v2 - 8))();
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = *a2;
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v6;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(a1, a2);
  }

  return result;
}

uint64_t WidgetLinkButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 96) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>();
    lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>)
  {
    type metadata accessor for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>();
    type metadata accessor for _ContentShapeModifier<Rectangle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier>();
    lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t ShadowListDataSource<>.section(forSectionLabelIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppIntentExecutingLocation.get()(v9, v8);
  v10 = (*(a3 + 24))(a1, v5, a3);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t instantiation function for generic protocol witness table for <> ShadowListDataSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for CollectionViewListDataSource(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = *(a2 + 3);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = a2[6];
    *(v4 + 5) = a2[5];
    *(v4 + 6) = v8;
    v9 = a2[8];
    *(v4 + 7) = a2[7];
    *(v4 + 8) = v9;
    v10 = a2[10];
    *(v4 + 9) = a2[9];
    *(v4 + 10) = v10;
    v11 = a3[9];
    v12 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v30 = *(*(v12 - 8) + 16);
    v13 = v8;

    v30(&v4[v11], a2 + v11, v12);
    v14 = a3[10];
    v15 = &v4[v14];
    v16 = a2 + v14;
    v17 = *(a2 + v14 + 8);
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = *(v16 + 48);
        *(v15 + 2) = *(v16 + 32);
        *(v15 + 3) = v18;
        *(v15 + 63) = *(v16 + 63);
        v19 = *(v16 + 16);
        *v15 = *v16;
        *(v15 + 1) = v19;
LABEL_11:
        v23 = a3[11];
        v24 = a3[12];
        v25 = &v4[v23];
        v26 = (a2 + v23);
        v27 = v26[1];
        *v25 = *v26;
        *(v25 + 1) = v27;
        v4[v24] = *(a2 + v24);
        v28 = a3[14];
        *&v4[a3[13]] = *(a2 + a3[13]);
        *&v4[v28] = *(a2 + v28);

        goto LABEL_12;
      }

      *v15 = *v16;
      *(v15 + 1) = v17;
      *(v15 + 2) = *(v16 + 16);

      v21 = *(v16 + 64);
      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v15 = *v16;
      *(v15 + 2) = *(v16 + 16);
      v21 = *(v16 + 64);
      if ((v21 & 1) == 0)
      {
LABEL_9:
        v22 = *(v16 + 48);
        *(v15 + 3) = v22;
        (**(v22 - 8))((v15 + 24), v16 + 24);
        goto LABEL_10;
      }
    }

    *(v15 + 3) = *(v16 + 24);

LABEL_10:
    v15[64] = v21;
    *(v15 + 65) = *(v16 + 65);
    goto LABEL_11;
  }

  v20 = *a2;
  *a1 = *a2;
  v4 = (v20 + ((v5 + 16) & ~v5));
LABEL_12:

  return v4;
}

uint64_t outlined destroy of Binding<[SwiftUIAnySortComparator]>(uint64_t a1)
{
  type metadata accessor for Binding<[SwiftUIAnySortComparator]>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithTake for CollectionViewListDataSource(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  v8 = a3[9];
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[10];
  v11 = a3[11];
  v12 = a1 + v10;
  v13 = a2 + v10;
  v14 = *(v13 + 48);
  *(v12 + 32) = *(v13 + 32);
  *(v12 + 48) = v14;
  *(v12 + 63) = *(v13 + 63);
  v15 = *(v13 + 16);
  *v12 = *v13;
  *(v12 + 16) = v15;
  *(a1 + v11) = *(a2 + v11);
  v16 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v16) = *(a2 + v16);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

unint64_t CollectionViewListDataSource.cornerRadius(forSectionAt:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with copy of SectionAccumulator.Item(v2 + 152 * result + 32, v5);
  if (v6)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  outlined destroy of SectionAccumulator.Item(v5);
  return v3;
}

uint64_t closure #1 in CollectionViewListDataSource.sectionIndexLabels.getter@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((*(result + 16) & 0x8000000000000000) != 0)
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    type metadata accessor for CollectionViewListDataSource();

    MEMORY[0x18D009CB0](&v7, v3);
    v4 = Text.resolveString(in:with:idiom:)();
    v6 = v5;
  }

  *a2 = v4;
  a2[1] = v6;
  return result;
}

Swift::Int __swiftcall CollectionViewListDataSource.section(forSectionLabelIndex:)(Swift::Int forSectionLabelIndex)
{
  if (forSectionLabelIndex < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 80);
    if (*(v2 + 16) > forSectionLabelIndex)
    {
      return *(v2 + 8 * forSectionLabelIndex + 32);
    }
  }

  __break(1u);
  return forSectionLabelIndex;
}

uint64_t CollectionViewListDataSource.configureHeader(_:transaction:forSectionAt:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  outlined copy of Transaction?(a2);
  specialized ListSectionInfo.visitHeader<A>(index:visitor:)(a3);

  return outlined consume of ListItemTint?(a2);
}

unint64_t specialized ListSectionInfo.visitHeader<A>(index:visitor:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = outlined init with copy of SectionAccumulator.Item(v2 + 152 * result + 32, v10);
  v9 = 0;
  if (v11)
  {
    if (*(v11 + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v11 + 32, v7);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v7, v8);
      v3 = v12;
      v4 = v13;

      v6 = MEMORY[0x18D00ABE0](v5);
      *&v7[0] = v3;
      *(&v7[0] + 1) = v4;
      MEMORY[0x1EEE9AC00](v6);
      _ViewList_SublistTransform.withTemporaryTransform<A>(do:)();

      static Update.end()();
      __swift_destroy_boxed_opaque_existential_1(v8);
      return outlined destroy of SectionAccumulator.Item(v10);
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t CollectionViewListDataSource.configureFooter(_:transaction:forSectionAt:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 104);
  v11(v10, *MEMORY[0x1E69DC248], v6, v8);
  v12 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
  v13 = *(v7 + 8);
  v13(v10, v6);
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    (v11)(v10, *MEMORY[0x1E69DC240], v6);
    v15 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
    v13(v10, v6);
    if (v15)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }
  }

  v16 = *(v4 + *(a4 + 56));
  v25 = v14;
  v17 = v23;
  v26 = v22;
  v27 = v23;
  v28 = v16;
  v18 = v22;
  outlined copy of Transaction?(v17);
  specialized ListSectionInfo.visitFooter<A>(index:visitor:)(v24);
  v19 = v27;

  return outlined consume of ListItemTint?(v19);
}

unint64_t specialized ListSectionInfo.visitFooter<A>(index:visitor:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = outlined init with copy of SectionAccumulator.Item(v2 + 152 * result + 32, v10);
  v9 = 0;
  if (v11)
  {
    if (*(v11 + 16) >= 3uLL)
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v11 + 128, v7);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v7, v8);
      v3 = v12;
      v4 = v13;

      v6 = MEMORY[0x18D00ABE0](v5);
      *&v7[0] = v3;
      *(&v7[0] + 1) = v4;
      MEMORY[0x1EEE9AC00](v6);
      _ViewList_SublistTransform.withTemporaryTransform<A>(do:)();

      static Update.end()();
      __swift_destroy_boxed_opaque_existential_1(v8);
      return outlined destroy of SectionAccumulator.Item(v10);
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t CollectionViewListDataSource.firstIndexPath(viewListID:)@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = ViewList.firstOffset(of:)();
  if (v4)
  {
    v5 = type metadata accessor for IndexPath();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }

  else
  {

    return ListSectionInfo.indexPath(offset:)(v3, a1);
  }
}

uint64_t CollectionViewListDataSource.firstCollectionViewIndex(of:)()
{
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  return v1;
}

uint64_t closure #1 in CollectionViewListDataSource.firstCollectionViewIndex(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = ViewList.firstOffset(of:style:)();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t CollectionViewListDataSource.applyCollectionViewIDs(from:to:)()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  AGWeakAttributeGetAttribute();
  return ViewList.applyIDs(from:listAttribute:to:)() & 1;
}

BOOL closure #1 in CollectionViewListDataSource.applyCollectionViewIDs(from:to:)(int *a1, void (*a2)(_DWORD *, _BYTE *), uint64_t a3, _BYTE *a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 1);
  v9 = *(v8 + 16);

  if (v9)
  {
    v9 = *(v8 + 32);
    v10 = *(v8 + 52);

    if (v10)
    {
      v7 = -1;
    }
  }

  else
  {
  }

  v12[0] = v6;
  v12[1] = v7;
  v13 = v9;
  a2(v12, a4);

  return (*a4 & 1) == 0;
}

uint64_t specialized closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 >= v2)
  {
    return 1;
  }

  v5 = *(a2 + 48);
  while (1)
  {
    v6 = a1[3];
    v7 = a1[2];
    outlined init with copy of _ViewList_SubgraphElements((a1 + 4), v12);
    v11 = a1[9];

    v8 = v5;

    v9 = _ViewList_SublistSubgraphStorage.retain()();

    v13 = v9;
    v14 = v7;
    v15 = v6;
    v16 = v3;
    v17 = v2;
    v18 = v5;
    v11 = a1[10];

    LOBYTE(v9) = CollectionViewHeaderFooterVisitor.visit(view:traits:)(v12, &v11);

    outlined destroy of _ViewList_View(v12);
    if ((v9 & 1) == 0)
    {
      break;
    }

    if (v2 == ++v3)
    {
      return 1;
    }
  }

  return 0;
}

void specialized CollectionViewListDataSource.configureGlobalHeader(_:transaction:)(void *a1, uint64_t a2)
{
  type metadata accessor for TableGlobalHeader();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 setAutomaticallyUpdatesContentConfiguration_];
    v8 = *(a2 + 40);
    v9 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
    swift_beginAccess();
    outlined assign with copy of TableHeaderView?(v2 + v8, v6 + v9);
    swift_endAccess();
    [v6 setNeedsUpdateConfiguration];
  }
}

uint64_t outlined assign with copy of TableHeaderView?(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(0, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableMutation.CodingKeys()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x4449656C62617473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableMutation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C62617473 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableMutation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableMutation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArchivableMutation.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<ArchivableMutation.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableMutation.CodingKeys>, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 4);
  v12 = *(v3 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v14 = *(v3 + 2);
  v15 = 0;
  lazy protocol witness table accessor for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v13 = v12;
    *(&v13 + 1) = v10;
    v15 = 1;
    outlined copy of Data._Representation(v12, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v13, *(&v13 + 1));
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity()
{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity);
  }

  return result;
}

uint64_t ArchivableMutation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<ArchivableMutation.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableMutation.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    lazy protocol witness table accessor for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v15;
    v11 = v16;
    v14 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void type metadata accessor for KeyedEncodingContainer<ArchivableMutation.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ArchivableMutation.CodingKeys and conformance ArchivableMutation.CodingKeys();
    v7 = a3(a1, &unk_1EFF95B30, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ArchivableMutationsKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ArchivableMutationsKey.defaultValue;
}

uint64_t key path setter for ArchivableMutationHandler.action : ArchivableMutationHandler(uint64_t *a1, uint64_t (**a2)(uint64_t a1, uint64_t a2))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ArchivableMutation, @in_guaranteed Transaction) -> (@out ());
  a2[1] = v5;
  return result;
}

uint64_t ArchivableMutationHandler.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArchivableMutationHandler.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArchivableMutationHandler.init(action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EnvironmentValues.archivableMutationHandler.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

void type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ArchivableMutationHandler.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ArchivableMutationHandler.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double key path getter for EnvironmentValues.archivableMutationHandler : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.archivableMutationHandler : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();

  outlined copy of AppIntentExecutor?(v3);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.archivableMutationHandler.setter(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();

  outlined copy of AppIntentExecutor?(v2);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2);
}

void (*EnvironmentValues.archivableMutationHandler.modify(void *a1))(uint64_t **a1, char a2)
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
  type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.archivableMutationHandler.modify;
}

void EnvironmentValues.archivableMutationHandler.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v3[2] = v4;
  v6 = v3[6];
  v3[3] = v5;
  type metadata accessor for EnvironmentPropertyKey<ArchivableMutationHandler.Key>();
  if (a2)
  {
    outlined copy of AppIntentExecutor?(v4);

    outlined copy of AppIntentExecutor?(v4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v3);
  }

  else
  {

    outlined copy of AppIntentExecutor?(v4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ArchivableMutationHandler.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
  }

  free(v3);
}

uint64_t initializeWithCopy for ArchivableMutation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  outlined copy of Data._Representation(v3, v4);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return a1;
}

uint64_t assignWithCopy for ArchivableMutation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  outlined copy of Data._Representation(v3, v4);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  outlined consume of Data._Representation(v5, v6);
  return a1;
}

uint64_t assignWithTake for ArchivableMutation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  outlined consume of Data._Representation(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableMutation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ArchivableMutation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void type metadata accessor for ArchivableMutationHandler?()
{
  if (!lazy cache variable for type metadata for ArchivableMutationHandler?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableMutationHandler?);
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ArchivableMutation, @in_guaranteed Transaction) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t Table.init(of:selection:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8)
{
  v11 = *(a2 + 8);
  v12 = type metadata accessor for Table();
  v13 = a6 + v12[16];
  *(v13 + 48) = 0;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *v13 = 0u;
  v14 = a6 + v12[17];
  v15 = outlined assign with copy of Binding<AnySelectionManager>?(a1, v13);
  v16 = 0uLL;
  *v14 = 0;
  *(v14 + 8) = 0u;
  if (v11)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a5, AssociatedConformanceWitness, v18, v19);
    type metadata accessor for TableColumnCustomization();
    type metadata accessor for Binding();
    type metadata accessor for TableColumnCustomization.ToAnyCustomization();
    swift_getWitnessTable();
    Binding.projecting<A>(_:)();

    v20 = a5;
    v16 = a7;
  }

  else
  {
    v20 = 0;
    a8 = 0;
  }

  v22 = a6 + v12[18];
  *v22 = v20;
  *(v22 + 8) = v16;
  *(v22 + 24) = a8;
  v23 = a4(v15);
  a3(v23);
  return outlined destroy of Binding<AnySelectionManager>?(a1);
}

uint64_t static Table._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a2;
  v63 = 0;
  v64 = a8;
  v90 = *MEMORY[0x1E69E9840];
  v66 = *a1;
  outlined init with copy of _ViewListInputs(a2, v85);
  _ViewListInputs.isInLazyContainer.setter();
  v69 = a7;
  v70 = a3;
  v77 = a3;
  v78 = a4;
  v79 = a5;
  v80 = a6;
  v81 = a7;
  LODWORD(v86[0]) = v66;
  *&v87 = a3;
  *(&v87 + 1) = a4;
  *&v88 = a5;
  *(&v88 + 1) = a6;
  v13 = a6;
  *&v89 = a7;
  type metadata accessor for Table();
  v65 = type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  *(&v68 + 1) = a6;
  v14 = AnyRowSource.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  *&v68 = HIDWORD(v17);
  lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput();
  PropertyList.subscript.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  v20 = v68;
  *(v19 + 32) = v18;
  *(v19 + 36) = v20;
  *(v19 + 40) = v87;
  *&v87 = v19;
  *&v86[0] = v19;
  PropertyList.subscript.setter();
  v72 = v70;
  v73 = a4;
  v74 = a5;
  v75 = v13;
  v76 = v69;
  LODWORD(v87) = v66;
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  *&v68 = a5;
  v21 = AnyColumnSource.init<A>(_:)();
  v23 = v22;
  LODWORD(a3) = v24;
  v25 = HIDWORD(v24);
  lazy protocol witness table accessor for type ColumnSourceInput and conformance ColumnSourceInput();
  v26 = v70;
  PropertyList.subscript.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = a3;
  *(v27 + 36) = v25;
  *(v27 + 40) = v87;
  *&v87 = v27;
  *&v86[0] = v27;
  PropertyList.subscript.setter();
  v28 = *MEMORY[0x1E698D3F8];
  v29 = v62[1];
  v86[0] = *v62;
  v86[1] = v29;
  v31 = *v62;
  v30 = v62[1];
  v86[2] = v62[2];
  v82 = v31;
  v83 = v30;
  v84 = v62[2];
  v32 = *(&v68 + 1);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  outlined init with copy of _GraphInputs(v86, &v87);
  swift_getAssociatedConformanceWitness();
  v33 = _GraphInputs.selectionStorage<A>(forType:)();
  v35 = v34;
  v87 = v82;
  v88 = v83;
  v89 = v84;
  outlined destroy of _GraphInputs(&v87);
  v36 = SelectionBasedStorage.$menu.getter(v33);
  v67 = a4;
  if ((v36 & 0x100000000) != 0)
  {
    LODWORD(v62) = v28;
    v39 = v28;
  }

  else
  {
    v62 = v60;
    v71[0] = v36;
    MEMORY[0x1EEE9AC00](v36);
    v61 = v28;
    *&v82 = v26;
    *(&v82 + 1) = a4;
    *&v83 = v68;
    *(&v83 + 1) = v32;
    *&v84 = v69;
    v58 = type metadata accessor for Table.ChildSelectionMenu();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for ((_:))?(0, &lazy cache variable for type metadata for Attribute<(_:)>, &lazy cache variable for type metadata for (_:), &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v71, closure #1 in Attribute.init<A>(_:)partial apply, v57, v58, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);
    LODWORD(v62) = v82;
    v39 = v61;
  }

  v40 = SelectionBasedStorage.$action.getter(v33, v35);
  if ((v40 & 0x100000000) != 0)
  {
    v44 = v39;
  }

  else
  {
    v63 = v60;
    v71[0] = v40;
    MEMORY[0x1EEE9AC00](v40);
    *&v82 = v70;
    *(&v82 + 1) = v67;
    v83 = v68;
    *&v84 = v69;
    v41 = type metadata accessor for Table.ChildSelectionAction();
    v58 = v41;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<((_:))?>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v71, closure #1 in Attribute.init<A>(_:)partial apply, v57, v41, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);
    v44 = v82;
  }

  v45 = SelectionBasedStorage.$isSelectionEnabled.getter(v33, v35);
  v46 = v39;
  v48 = *(&v68 + 1);
  v47 = v69;
  if ((v45 & 0x100000000) == 0)
  {
    v71[0] = v45;
    MEMORY[0x1EEE9AC00](v45);
    *&v82 = v70;
    *(&v82 + 1) = v67;
    *&v83 = v68;
    *(&v83 + 1) = v48;
    *&v84 = v47;
    v49 = type metadata accessor for Table.ChildSelectionEnabled();
    v58 = v49;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<(_:)>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v71, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_1, v57, v49, MEMORY[0x1E69E73E0], v50, MEMORY[0x1E69E7410], v51);
    v46 = v82;
  }

  v52 = v68;
  if (v62 != v39 || v44 != v39 || v46 != v39)
  {
    *&v82 = __PAIR64__(v39, v62);
    *(&v82 + 1) = __PAIR64__(v46, v44);
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(0, &lazy cache variable for type metadata for _GraphInputs.SelectionBasedStorageKey<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for _GraphInputs.SelectionBasedStorageKey);
    lazy protocol witness table accessor for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>();
    PropertyList.subscript.setter();
  }

  LOBYTE(v82) = 1;
  lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  PropertyList.subscript.setter();
  type metadata accessor for <<opaque return type of View.configureForLazyContainer()>>.0();
  LODWORD(v82) = v66;
  v71[0] = _GraphValue.value.getter();
  *&v82 = v70;
  *(&v82 + 1) = v67;
  *&v83 = v52;
  *(&v83 + 1) = v48;
  *&v84 = v47;
  type metadata accessor for Table.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  v54 = v53;
  v55 = lazy protocol witness table accessor for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  *&v82 = v54;
  *(&v82 + 1) = v55;
  swift_getOpaqueTypeConformance2();
  static View.makeDebuggableViewList(view:inputs:)();
  return outlined destroy of _ViewListInputs(v85);
}

uint64_t closure #1 in static Table._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v8 = type metadata accessor for Table();
  v9 = *(v8 + 60);
  v13[2] = v8;
  v13[3] = a3;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, closure #1 in static PointerOffset.of(_:)partial apply, v13, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

unint64_t lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput()
{
  result = lazy protocol witness table cache variable for type RowSourceInput and conformance RowSourceInput;
  if (!lazy protocol witness table cache variable for type RowSourceInput and conformance RowSourceInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RowSourceInput and conformance RowSourceInput);
  }

  return result;
}

uint64_t closure #2 in static Table._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v11[2] = type metadata accessor for Table();
  v11[3] = a4;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v11, a4, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12;
}

unint64_t lazy protocol witness table accessor for type ColumnSourceInput and conformance ColumnSourceInput()
{
  result = lazy protocol witness table cache variable for type ColumnSourceInput and conformance ColumnSourceInput;
  if (!lazy protocol witness table cache variable for type ColumnSourceInput and conformance ColumnSourceInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnSourceInput and conformance ColumnSourceInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>;
  if (!lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>)
  {
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for _GraphInputs.SelectionBasedStorageKey<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for _GraphInputs.SelectionBasedStorageKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>);
  }

  return result;
}

void type metadata accessor for <<opaque return type of View.configureForLazyContainer()>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.configureForLazyContainer()>>.0)
  {
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.configureForLazyContainer()>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ResolvedTableStyle and conformance ResolvedTableStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedTableStyle and conformance ResolvedTableStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle;
  if (!lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle;
  if (!lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableStyle and conformance ResolvedTableStyle);
  }

  return result;
}

uint64_t Table.Child.table.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Table();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t Table.Child.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a5;
  v38 = a7;
  v39[0] = a2;
  v31[1] = a3;
  v31[2] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  v39[4] = a6;
  v9 = type metadata accessor for Table();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v37 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v32 = a1;
  v31[3] = a6;
  Table.Child.table.getter(v31 - v16);
  outlined init with copy of Binding<AnySelectionManager>?(&v17[v9[16]], v42);
  v18 = *(v10 + 8);
  v18(v17, v9);
  v33 = v10 + 8;
  Table.Child.table.getter(v14);
  v19 = &v14[v9[17]];
  v21 = *v19;
  v20 = v19[1];
  v34 = v19[2];
  v35 = v20;
  outlined copy of Binding<[SwiftUIAnySortComparator]>?(v21, v20);
  v18(v14, v9);
  v22 = v37;
  Table.Child.table.getter(v37);
  v23 = (v22 + v9[18]);
  v24 = v22;
  v25 = *v23;
  v26 = v23[1];
  v27 = v23[2];
  v28 = v23[3];
  outlined copy of Binding<AnyTableColumnCustomization>?(*v23, v26);
  v18(v24, v9);
  *(&v43 + 1) = v21;
  *&v44 = v35;
  *(&v44 + 1) = v34;
  *&v45 = v25;
  *(&v45 + 1) = v26;
  *&v46 = v27;
  *(&v46 + 1) = v28;
  AccessibilityProperties.init()();
  v40[14] = 0x300000003;
  v41 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v40);
  type metadata accessor for Binding<AnySelectionManager>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v29 = swift_allocObject();
  memcpy((v29 + 16), v39, 0x128uLL);
  v47[4] = v44;
  v47[5] = v45;
  v47[6] = v46;
  v47[0] = v42[0];
  v47[1] = v42[1];
  v47[2] = v42[2];
  v47[3] = v43;
  v48 = v29;
  v49 = 0;
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  lazy protocol witness table accessor for type ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  View.configureForLazyContainer()();
  return outlined destroy of ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>(v47);
}

uint64_t (*Table.ChildSelectionMenu.base.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v13 = *Value;
  v12 = Value[1];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = v13;
  v14[8] = v12;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.Identifiable.ID>) -> (@out PlatformItemList);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance Table<A, B, C>.Child@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of View.configureForLazyContainer()>>.0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t (*Table.ChildSelectionMenu.value.getter(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  return partial apply for closure #1 in Table.ChildSelectionMenu.value.getter;
}

uint64_t closure #1 in Table.ChildSelectionMenu.value.getter(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a7;
  v46 = a5;
  v43 = a2;
  v47 = a6;
  v45 = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for Optional();
  v10 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v42[-v11];
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v42[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v42[-v19];
  v44 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = Set.init()();
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v25 = (v13 + 56);
  v26 = (v10 + 8);
  v27 = a1;
  v51 = (v13 + 32);
  v52 = v26;
  v50 = (v13 + 16);
  v49 = (v13 + 8);

  v29 = 0;
  v55 = v12;
  v53 = a1;
  if (v23)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v24)
    {

      Table.ChildSelectionMenu.base.getter(v43, v44, v45, v46, v47, v48);
      v40 = *(v39 + 56);
      *&v62[0] = v64;
      v40(v60, v62);
      v41 = *&v60[0];

      return v41;
    }

    v23 = *(v20 + 8 * v30);
    ++v29;
    if (v23)
    {
      while (1)
      {
        v31 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        outlined init with copy of AnyHashable(*(v27 + 48) + 40 * (v31 | (v30 << 6)), v62);
        v60[0] = v62[0];
        v60[1] = v62[1];
        v61 = v63;
        v32 = swift_dynamicCast();
        v33 = *v25;
        if (v32)
        {
          v33(v12, 0, 1, AssociatedTypeWitness);
          v34 = v56;
          (*v51)(v56, v12, AssociatedTypeWitness);
          (*v50)(v58, v34, AssociatedTypeWitness);
          type metadata accessor for Set();
          v35 = v25;
          v36 = v57;
          Set.insert(_:)();
          v37 = *v49;
          v38 = v36;
          v25 = v35;
          (*v49)(v38, AssociatedTypeWitness);
          result = v37(v34, AssociatedTypeWitness);
          v27 = v53;
          v12 = v55;
          v29 = v30;
          if (!v23)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v33(v12, 1, 1, AssociatedTypeWitness);
          result = (*v52)(v12, v59);
          v29 = v30;
          if (!v23)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v30 = v29;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t (*Table.ChildSelectionAction.base.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v12 = *Value;
  v13 = Value[1];
  if (*Value)
  {
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a4;
    v14[5] = a5;
    v14[6] = a6;
    v14[7] = v12;
    v14[8] = v13;
    v15 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.Identifiable.ID>) -> (@out ());
  }

  else
  {
    v15 = 0;
  }

  outlined copy of AppIntentExecutor?(v12);
  return v15;
}

uint64_t (*Table.ChildSelectionAction.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  result = Table.ChildSelectionAction.base.getter(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    v13 = result;
    v14 = v12;
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;
    v15[6] = a6;
    v15[7] = v13;
    v15[8] = v14;
    return partial apply for closure #1 in Table.ChildSelectionAction.value.getter;
  }

  return result;
}

uint64_t closure #1 in Table.ChildSelectionAction.value.getter(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v34[1] = a3;
  v35 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = type metadata accessor for Optional();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = v34 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = v34 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v43 = v34 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = Set.init()();
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = (v8 + 56);
  v21 = (v5 + 8);
  v22 = a1;
  v38 = (v8 + 32);
  v39 = v21;
  v37 = (v8 + 16);
  v36 = (v8 + 8);

  v24 = 0;
  v42 = v7;
  v40 = a1;
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v19)
    {

      v35(v52);
    }

    v18 = *(v15 + 8 * v25);
    ++v24;
    if (v18)
    {
      while (1)
      {
        v26 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        outlined init with copy of AnyHashable(*(v22 + 48) + 40 * (v26 | (v25 << 6)), v50);
        v47 = v50[0];
        v48 = v50[1];
        v49 = v51;
        v27 = swift_dynamicCast();
        v28 = *v20;
        if (v27)
        {
          v28(v7, 0, 1, AssociatedTypeWitness);
          v29 = v43;
          (*v38)(v43, v7, AssociatedTypeWitness);
          (*v37)(v45, v29, AssociatedTypeWitness);
          type metadata accessor for Set();
          v30 = v20;
          v31 = v44;
          Set.insert(_:)();
          v32 = *v36;
          v33 = v31;
          v20 = v30;
          (*v36)(v33, AssociatedTypeWitness);
          result = (v32)(v29, AssociatedTypeWitness);
          v22 = v40;
          v7 = v42;
          v24 = v25;
          if (!v18)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v28(v7, 1, 1, AssociatedTypeWitness);
          result = (*v39)(v7, v46);
          v24 = v25;
          if (!v18)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v25 = v24;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t (*Table.ChildSelectionEnabled.base.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v13 = *Value;
  v12 = Value[1];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = v13;
  v14[8] = v12;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Identifiable.ID) -> (@out Bool);
}

uint64_t protocol witness for Rule.value.getter in conformance Table<A, B, C>.ChildSelectionAction@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Table.ChildSelectionAction.value.getter(*v2, a1[2], a1[3], a1[4], a1[5], a1[6]);
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<AnyHashable>) -> ();
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t (*Table.ChildSelectionEnabled.value.getter(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  return partial apply for closure #1 in Table.ChildSelectionEnabled.value.getter;
}

uint64_t closure #1 in Table.ChildSelectionEnabled.value.getter(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a7;
  v26 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-v14];
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25[-v18];
  outlined init with copy of AnyHashable(a1, v29);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v15, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
    Table.ChildSelectionEnabled.base.getter(v26, a3, a4, v27, a6, v28);
    (*(v22 + 56))(v29, v19);
    v23 = LOBYTE(v29[0]);

    (*(v16 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v21(v15, 1, 1, AssociatedTypeWitness);
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  return v23;
}

uint64_t protocol witness for Rule.value.getter in conformance Table<A, B, C>.ChildSelectionMenu@<X0>(void *a1@<X0>, void (*a2)(void, void, void, void, void, void)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  a2(*v5, a1[2], a1[3], a1[4], a1[5], a1[6]);
  v10 = v9;
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = v10;
  *a5 = a4;
  a5[1] = result;
  return result;
}

uint64_t Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X5>, void (*a3)(uint64_t)@<X6>, uint64_t a4@<X8>, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, __int128 a8, uint64_t a9, uint64_t a10)
{
  v25 = *(a2 + 8);
  v12 = type metadata accessor for Table();
  v13 = a4 + v12[16];
  *(v13 + 48) = 0;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *v13 = 0u;
  v14 = a4 + v12[17];
  outlined assign with copy of Binding<AnySelectionManager>?(a1, v13);
  type metadata accessor for Array();
  type metadata accessor for Binding();
  type metadata accessor for ToAnyComparatorArray();
  swift_getWitnessTable();
  v15 = Binding.projecting<A>(_:)();
  v16 = v25;
  *v14 = a7;
  *(v14 + 8) = a8;
  if (v25)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a7, AssociatedConformanceWitness, v18, v19);
    type metadata accessor for TableColumnCustomization();
    type metadata accessor for Binding();
    type metadata accessor for TableColumnCustomization.ToAnyCustomization();
    swift_getWitnessTable();
    Binding.projecting<A>(_:)();

    v20 = a7;
    v21 = a8;
    v16 = a10;
  }

  else
  {
    v20 = 0;
    v21 = 0uLL;
  }

  v22 = a4 + v12[18];
  *v22 = v20;
  *(v22 + 8) = v21;
  *(v22 + 24) = v16;
  v23 = a5(v15);
  a3(v23);

  return outlined destroy of Binding<AnySelectionManager>?(a1);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Table<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE59E8](a1, a2, a3, WitnessTable);
}

uint64_t closure #1 in ToAnyComparatorArray.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  return SwiftUIAnySortComparator.init<A>(_:)(v9, a2, a3, a4);
}

uint64_t protocol witness for Projection.get(base:) in conformance ToAnyComparatorArray<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized ToAnyComparatorArray.get(base:)(*a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t Table.init<A>(sortOrder:columns:rows:)@<X0>(void (*a1)(uint64_t)@<X3>, uint64_t (*a2)(uint64_t)@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, __int128 a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  return Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v10, v9, a1, a5, a2, a3, a4, a6, a7, a8);
}

uint64_t Table.init<A>(selection:sortOrder:columns:rows:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t (*a3)(uint64_t)@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v12, v13);
  type metadata accessor for Optional();
  v14 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v20, 0, sizeof(v20));
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v21, v20, a2, a5, a3, a4, a6, a7, a8, a9);
  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t Table.init<A>(selection:sortOrder:columns:rows:)@<X0>(void (*a1)(uint64_t)@<X6>, uint64_t a2@<X8>, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, __int128 a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v10, v11);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v15, 0, sizeof(v15));
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v16, v15, a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t Table.init<A>(_:columns:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v15 = v12;
  *(&v15 + 1) = a4;
  Table.init(of:selection:columnCustomization:columns:rows:)(v17, v16, a2, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a3, a6, v15, WitnessTable);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t Table.init<A>(_:selection:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v13, v14);
  type metadata accessor for Optional();
  v15 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v23, 0, sizeof(v23));
  v16 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v19 = v16;
  *(&v19 + 1) = a5;
  Table.init(of:selection:columnCustomization:columns:rows:)(v24, v23, a3, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a4, a7, v19, WitnessTable);
  (*(*(v15 - 8) + 8))(a2, v15);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t Table.init<A>(_:selection:columns:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v10, v11);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v19, 0, sizeof(v19));
  v12 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v15 = v12;
  *(&v15 + 1) = a4;
  Table.init(of:selection:columnCustomization:columns:rows:)(v20, v19, a2, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a3, a5, v15, WitnessTable);

  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t Table.init<A, B>(_:sortOrder:columns:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v20 = a3;
  v21 = a4;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a1;
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v17 = v14;
  *(&v17 + 1) = a4;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v29, v28, a2, a5, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v19, a3, v17, a7, WitnessTable);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t Table.init<A, B>(_:selection:sortOrder:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X5>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v14, v15);
  type metadata accessor for Optional();
  v16 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v34, 0, sizeof(v34));
  v26 = a4;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v31 = a10;
  v32 = a11;
  v33 = a1;
  v17 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v20 = v17;
  *(&v20 + 1) = a6;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v35, v34, a3, a5, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v25, a4, v20, a8, WitnessTable);
  (*(*(v16 - 8) + 8))(a2, v16);
  return (*(*(a7 - 8) + 8))(a1, a7);
}

uint64_t Table.init<A, B>(_:selection:sortOrder:columns:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v13, v14);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v31, 0, sizeof(v31));
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = a1;
  v15 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v18 = v15;
  *(&v18 + 1) = a6;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v32, v31, a2, a3, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v22, a5, v18, a8, WitnessTable);

  return (*(*(a7 - 8) + 8))(a1, a7);
}

uint64_t Table.init(of:columnCustomization:columns:rows:)@<X0>(uint64_t *a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = a1[3];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v13 = *(a1 + 1);
  v14 = v9;
  v12 = v8;
  *(&v11 + 1) = a7;
  *&v11 = a5;
  return Table.init(of:selection:columnCustomization:columns:rows:)(v15, &v12, a2, a3, a4, a6, v11, a8);
}

uint64_t Table.init(of:selection:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8)
{
  v11 = *a2;
  v12 = a2[3];
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(a2 + 1);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v15, v16);
  type metadata accessor for Optional();
  v17 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v23 = v11;
  v24 = v19;
  v25 = v12;
  Table.init(of:selection:columnCustomization:columns:rows:)(v26, &v23, a3, a4, a5, a6, a7, a8);
  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t Table.init(of:selection:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, void (*a5)(uint64_t)@<X5>, uint64_t (*a6)(uint64_t)@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v18 = *a4;
  v19 = a4[3];
  v23 = a1;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(a4 + 1);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v14, v15);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v23 = v18;
  v24 = v17;
  v25 = v19;
  Table.init(of:selection:columnCustomization:columns:rows:)(v26, &v23, a5, a6, a9, a7, a10, a11);
}

uint64_t Table.init<A>(of:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t *a1@<X4>, void (*a2)(uint64_t)@<X5>, uint64_t (*a3)(uint64_t)@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v10 = a1[3];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v12 = v9;
  v13 = *(a1 + 1);
  v14 = v10;
  return Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v15, &v12, a2, a4, a3, a5, a6, a7, a8, a9);
}

uint64_t Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X5>, void (*a3)(uint64_t)@<X6>, uint64_t a4@<X8>, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, __int128 a8, uint64_t a9, uint64_t a10)
{
  v12 = *a2;
  v13 = a2[3];
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(a2 + 1);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v16, v17);
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v23 = v12;
  v24 = v20;
  v25 = v13;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v26, &v23, a3, a4, a5, a6, a7, a8, a9, a10);
  return (*(*(v18 - 8) + 8))(a1, v18);
}

uint64_t Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X7>, uint64_t a5@<X8>, void (*a6)(uint64_t), uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v20 = *a4;
  v21 = a4[3];
  v23 = a1;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(a4 + 1);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v16, v17);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v23 = v20;
  v24 = v19;
  v25 = v21;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v26, &v23, a6, a5, a8, a9, a10, a11, a12, a13);
}

uint64_t Table.init<A>(_:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = a2[3];
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v19 = v13;
  v20 = *(a2 + 1);
  v21 = v14;
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v18 = v15;
  *(&v18 + 1) = a5;
  Table.init(of:selection:columnCustomization:columns:rows:)(v22, &v19, a3, partial apply for closure #1 in Table.init<A>(_:columnCustomization:columns:), a4, a7, v18, WitnessTable);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t Table.init<A>(_:selection:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = *a3;
  v24 = a3[3];
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = *(a3 + 1);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v15, v16);
  type metadata accessor for Optional();
  v17 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v29 = v22;
  v30 = v24;
  v28 = v23;
  v18 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v21 = v18;
  *(&v21 + 1) = a6;
  Table.init(of:selection:columnCustomization:columns:rows:)(v31, &v28, a4, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a5, a8, v21, WitnessTable);
  (*(*(v17 - 8) + 8))(a2, v17);
  return (*(*(a7 - 8) + 8))(a1, a7);
}

uint64_t Table.init<A>(_:selection:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v21 = *a5;
  v22 = a5[3];
  v26 = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(a5 + 1);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v14, v15);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v26 = v21;
  v27 = v20;
  v28 = v22;
  v16 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v19 = v16;
  *(&v19 + 1) = a9;
  Table.init(of:selection:columnCustomization:columns:rows:)(v29, &v26, a6, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a7, a8, v19, WitnessTable);

  return (*(*(a10 - 8) + 8))(a1, a10);
}

uint64_t closure #1 in Table.init<A>(_:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for TableForEachContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  (*(v7 + 16))(v9, a1, a4, v15);
  (*(v7 + 32))(v13, v9, a4);
  WitnessTable = swift_getWitnessTable();
  static TableRowBuilder.buildExpression<A>(_:)(v13, a2, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v13, v10);
  static TableRowBuilder.buildExpression<A>(_:)(v17, a2, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t Table.init<A, B>(_:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X4>, void (*a3)(uint64_t)@<X5>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *a2;
  v15 = a2[3];
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v30 = v14;
  v31 = *(a2 + 1);
  v32 = v15;
  v22 = a4;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v29 = a1;
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v19 = v16;
  *(&v19 + 1) = a6;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v33, &v30, a3, a5, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v21, a4, v19, a8, WitnessTable);
  return (*(*(a7 - 8) + 8))(a1, a7);
}

uint64_t Table.init<A, B>(_:selection:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X5>, void (*a4)(uint64_t)@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = *a3;
  v24 = a3[3];
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = *(a3 + 1);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v15, v16);
  type metadata accessor for Optional();
  v17 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v38 = v23;
  v39 = v22;
  v40 = v24;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  v37 = a1;
  v18 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v21 = v18;
  *(&v21 + 1) = a7;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v41, &v38, a4, a5, partial apply for closure #1 in Table.init<A, B>(_:selection:sortOrder:columnCustomization:columns:), v29, a6, v21, a9, WitnessTable);
  (*(*(v17 - 8) + 8))(a2, v17);
  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t Table.init<A, B>(_:selection:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X7>, uint64_t a6@<X8>, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v25 = *a5;
  v26 = a5[3];
  v38 = a2;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(a5 + 1);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v18, v19);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v38 = v25;
  v39 = v24;
  v40 = v26;
  v30 = a9;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a15;
  v37 = a1;
  v20 = type metadata accessor for TableForEachContent();
  WitnessTable = swift_getWitnessTable();
  *&v23 = v20;
  *(&v23 + 1) = a10;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v41, &v38, a7, a6, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v29, a9, v23, a12, WitnessTable);

  return (*(*(a11 - 8) + 8))(a1, a11);
}

uint64_t closure #1 in Table.init<A, B>(_:sortOrder:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for TableForEachContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  (*(v7 + 16))(v9, a1, a4, v15);
  (*(v7 + 32))(v13, v9, a4);
  WitnessTable = swift_getWitnessTable();
  static TableRowBuilder.buildExpression<A>(_:)(v13, a2, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v13, v10);
  static TableRowBuilder.buildExpression<A>(_:)(v17, a2, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t Table.init<A>(_:children:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = (*a2 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v20 = 0;
  v12 = a3[1];
  v18[0] = *a3;
  v18[1] = v12;
  memset(v19, 0, sizeof(v19));
  v13 = *(v10[1] + 16);
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for TableOutlineGroupContent();
  WitnessTable = swift_getWitnessTable();
  *&v17 = v14;
  *(&v17 + 1) = a5;
  Table.init(of:selection:columnCustomization:columns:rows:)(v19, v18, a4, partial apply for closure #1 in Table.init<A>(_:children:columnCustomization:columns:), v11, a6, v17, WitnessTable);

  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t TableOutlineGroupContent.init(data:children:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(*(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16) - 8) + 32))(a3, a1, *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16));
  result = type metadata accessor for TableOutlineGroupContent();
  *(a3 + *(result + 44)) = a2;
  return result;
}

uint64_t Table.init<A>(_:children:selection:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v9 = *a2;
  v10 = *(*a2 + *MEMORY[0x1E69E77B0]);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = a4[1];
  v22 = *a4;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v13, v14);
  type metadata accessor for Optional();
  v15 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v27[0] = v22;
  v27[1] = v21;
  v16 = *(*(v9 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v17 = type metadata accessor for TableOutlineGroupContent();
  WitnessTable = swift_getWitnessTable();
  *&v20 = v17;
  *(&v20 + 1) = a6;
  Table.init(of:selection:columnCustomization:columns:rows:)(v28, v27, a5, partial apply for closure #1 in Table.init<A>(_:children:selection:columnCustomization:columns:), v10, a7, v20, WitnessTable);

  (*(*(v15 - 8) + 8))(a3, v15);
  return (*(*(v16 - 8) + 8))(a1, v16);
}

uint64_t Table.init<A>(_:children:selection:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v10 = *a2;
  v11 = *(*a2 + *MEMORY[0x1E69E77B0]);
  *&v26 = a3;
  *(&v26 + 1) = a4;
  *&v27 = a5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = a6[1];
  v22 = *a6;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v14, v15);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v26 = v22;
  v27 = v21;
  v16 = *(*(v10 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v17 = type metadata accessor for TableOutlineGroupContent();
  WitnessTable = swift_getWitnessTable();
  *&v20 = v17;
  *(&v20 + 1) = a9;
  Table.init(of:selection:columnCustomization:columns:rows:)(v28, &v26, a7, partial apply for closure #1 in Table.init<A>(_:children:selection:columnCustomization:columns:), v11, a8, v20, WitnessTable);

  return (*(*(v16 - 8) + 8))(a1, v16);
}

uint64_t closure #1 in Table.init<A>(_:children:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v22[1] = a3;
  v23 = a1;
  v24 = a4;
  v5 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - v7;
  v10 = *v9;
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TableOutlineGroupContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v22 - v17;
  (*(v6 + 16))(v8, v23, v5, v16);
  TableOutlineGroupContent.init(data:children:)(v8, a2, v14);
  WitnessTable = swift_getWitnessTable();
  static TableRowBuilder.buildExpression<A>(_:)(v14, v10, v11, WitnessTable);
  v20 = *(v12 + 8);

  v20(v14, v11);
  static TableRowBuilder.buildExpression<A>(_:)(v18, v10, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t Table.init<A, B>(_:children:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X5>, void (*a4)(uint64_t)@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = (*a2 + *MEMORY[0x1E69E77B0]);
  v13 = *v12;
  v31 = 0;
  v14 = a3[1];
  v29[0] = *a3;
  v29[1] = v14;
  memset(v30, 0, sizeof(v30));
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a1;
  v28 = a2;
  v15 = *(v12[1] + 16);
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for TableOutlineGroupContent();
  WitnessTable = swift_getWitnessTable();
  *&v19 = v16;
  *(&v19 + 1) = a6;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v30, v29, a4, a5, partial apply for closure #1 in Table.init<A, B>(_:children:sortOrder:columnCustomization:columns:), v21, v13, v19, a7, WitnessTable);

  return (*(*(v15 - 8) + 8))(a1, v15);
}

uint64_t Table.init<A, B>(_:children:selection:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a2;
  v14 = *(*a2 + *MEMORY[0x1E69E77B0]);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = a4[1];
  v26 = *a4;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v17, v18);
  type metadata accessor for Optional();
  v19 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v40[0] = v26;
  v40[1] = v25;
  v33 = a8;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a1;
  v39 = a2;
  v20 = *(*(v13 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v21 = type metadata accessor for TableOutlineGroupContent();
  WitnessTable = swift_getWitnessTable();
  *&v24 = v21;
  *(&v24 + 1) = a8;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v41, v40, a5, a6, partial apply for closure #1 in Table.init<A, B>(_:children:selection:sortOrder:columnCustomization:columns:), v32, v14, v24, a9, WitnessTable);

  (*(*(v19 - 8) + 8))(a3, v19);
  return (*(*(v20 - 8) + 8))(a1, v20);
}

uint64_t Table.init<A, B>(_:children:selection:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, __int128 *a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *a2;
  v16 = *(*a2 + *MEMORY[0x1E69E77B0]);
  *&v38 = a3;
  *(&v38 + 1) = a4;
  *&v39 = a5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = a7[1];
  v27 = *a7;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v19, v20);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v38 = v27;
  v39 = v26;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a1;
  v37 = a2;
  v21 = *(*(v15 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v22 = type metadata accessor for TableOutlineGroupContent();
  WitnessTable = swift_getWitnessTable();
  *&v25 = v22;
  *(&v25 + 1) = a10;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v40, &v38, a8, a6, partial apply for closure #1 in Table.init<A, B>(_:children:sortOrder:columnCustomization:columns:), v30, v16, v25, a11, WitnessTable);

  return (*(*(v21 - 8) + 8))(a1, v21);
}

uint64_t closure #1 in Table.init<A, B>(_:children:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v22[1] = a3;
  v23 = a1;
  v24 = a4;
  v5 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - v7;
  v10 = *v9;
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TableOutlineGroupContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v22 - v17;
  (*(v6 + 16))(v8, v23, v5, v16);
  TableOutlineGroupContent.init(data:children:)(v8, a2, v14);
  WitnessTable = swift_getWitnessTable();
  static TableRowBuilder.buildExpression<A>(_:)(v14, v10, v11, WitnessTable);
  v20 = *(v12 + 8);

  v20(v14, v11);
  static TableRowBuilder.buildExpression<A>(_:)(v18, v10, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t Table.init<A>(of:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, void (*a4)(uint64_t)@<X5>, uint64_t (*a5)(uint64_t)@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v29 = *(a3 + 8);
  v14 = type metadata accessor for Table();
  v15 = a6 + v14[16];
  *(v15 + 48) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *v15 = 0u;
  v16 = outlined destroy of Binding<AnySelectionManager>?(v15);
  v17 = 0uLL;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  if (a2)
  {
    type metadata accessor for Array();
    type metadata accessor for Binding();
    type metadata accessor for ToAnyComparatorArray();

    swift_getWitnessTable();
    Binding.projecting<A>(_:)();

    v18 = a8;
    v17 = a9;
  }

  else
  {
    v18 = 0;
  }

  v19 = a6 + v14[17];
  *v19 = v18;
  *(v19 + 8) = v17;
  v20 = v29;
  if (v29)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a8, AssociatedConformanceWitness, v22, v23);
    type metadata accessor for TableColumnCustomization();
    type metadata accessor for Binding();
    type metadata accessor for TableColumnCustomization.ToAnyCustomization();
    swift_getWitnessTable();
    Binding.projecting<A>(_:)();

    v20 = a8;
    v24 = a9;
  }

  else
  {
    a11 = 0;
    v24 = 0uLL;
  }

  v26 = a6 + v14[18];
  *v26 = v20;
  *(v26 + 8) = v24;
  *(v26 + 24) = a11;
  v27 = a5(v16);
  a4(v27);
  return outlined consume of Binding<[A1]>?<A, B, C><A1>(a1, a2);
}

uint64_t Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v36 = *(a4 + 8);
  v39 = a9;
  v40 = a10;
  v41 = a12;
  v42 = a13;
  v38 = type metadata accessor for Table();
  v16 = a6 + v38[16];
  *(v16 + 48) = 0;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *v16 = 0u;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, v19, v20, v21);
  type metadata accessor for Optional();
  v22 = type metadata accessor for Binding();
  type metadata accessor for OptionalToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v23 = outlined assign with take of Binding<AnySelectionManager>?(&v39, v16);
  if (a3)
  {
    type metadata accessor for Array();
    type metadata accessor for Binding();
    type metadata accessor for ToAnyComparatorArray();

    swift_getWitnessTable();
    Binding.projecting<A>(_:)();

    v26 = v39;
    v27 = v40;
  }

  else
  {
    v26 = 0;
    v27 = 0uLL;
  }

  v28 = a6 + v38[17];
  *v28 = v26;
  *(v28 + 8) = v27;
  v29 = v36;
  if (v36)
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a9, AssociatedConformanceWitness, v24, v25);
    type metadata accessor for TableColumnCustomization();
    type metadata accessor for Binding();
    type metadata accessor for TableColumnCustomization.ToAnyCustomization();
    swift_getWitnessTable();
    Binding.projecting<A>(_:)();

    v30 = v39;
    v31 = v40;
    v29 = v41;
  }

  else
  {
    v30 = 0;
    v31 = 0uLL;
  }

  v32 = a6 + v38[18];
  *v32 = v30;
  *(v32 + 8) = v31;
  *(v32 + 24) = v29;
  v33 = a7(v23);
  a5(v33);
  outlined consume of Binding<[A1]>?<A, B, C><A1>(a2, a3);
  return (*(*(v22 - 8) + 8))(a1, v22);
}

uint64_t Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X7>, uint64_t a4@<X8>, void (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v34 = *(a3 + 8);
  v36 = a9;
  v37 = a10;
  v38 = a12;
  v39 = a13;
  v35 = type metadata accessor for Table();
  v15 = a4 + v35[16];
  *(v15 + 48) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *v15 = 0u;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, v18, v19, v20);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  v21 = outlined assign with take of Binding<AnySelectionManager>?(&v36, v15);
  if (a2)
  {
    type metadata accessor for Array();
    type metadata accessor for Binding();
    type metadata accessor for ToAnyComparatorArray();

    swift_getWitnessTable();
    Binding.projecting<A>(_:)();

    v24 = v36;
    v25 = v37;
  }

  else
  {
    v24 = 0;
    v25 = 0uLL;
  }

  v26 = a4 + v35[17];
  *v26 = v24;
  *(v26 + 8) = v25;
  v27 = v34;
  if (v34)
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a9, AssociatedConformanceWitness, v22, v23);
    type metadata accessor for TableColumnCustomization();
    type metadata accessor for Binding();
    type metadata accessor for TableColumnCustomization.ToAnyCustomization();
    swift_getWitnessTable();
    Binding.projecting<A>(_:)();

    v28 = v36;
    v29 = v37;
    v27 = v38;
  }

  else
  {
    v28 = 0;
    v29 = 0uLL;
  }

  v30 = a4 + v35[18];
  *v30 = v28;
  *(v30 + 8) = v29;
  *(v30 + 24) = v27;
  v31 = a7(v21);
  a5(v31);
  outlined consume of Binding<[A1]>?<A, B, C><A1>(a1, a2);
}

uint64_t TableOutlineGroupContent.tableRowBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, v6, v7);
  v11 = *(v3 + *(a1 + 44));
  v12 = swift_allocObject();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v12[2] = v6;
  v12[3] = v13;
  v12[4] = v14;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for TableRow();

  WitnessTable = swift_getWitnessTable();
  return OutlineGroup<>.init<A>(_:children:content:)(v9, v11, partial apply for closure #1 in TableOutlineGroupContent.tableRowBody.getter, v12, AssociatedTypeWitness, v16, v13, WitnessTable, a2);
}

uint64_t TableForEachContent.tableRowBody.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = swift_allocObject();
  v10 = a1[3];
  v11 = a1[4];
  v9[2] = v4;
  v9[3] = v10;
  v9[4] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for TableRow();
  WitnessTable = swift_getWitnessTable();
  return ForEach<>.init<A>(_:content:)(v7, partial apply for closure #1 in TableForEachContent.tableRowBody.getter, v9, v4, v13, v14, AssociatedTypeWitness, v10, a2, WitnessTable, v11);
}

uint64_t closure #1 in TableOutlineGroupContent.tableRowBody.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v17 - v4;
  v6 = type metadata accessor for TableRow();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v3 + 16))(v5, a1, AssociatedTypeWitness, v11);
  TableRow.init(_:)(v5, AssociatedTypeWitness, v9);
  WitnessTable = swift_getWitnessTable();
  static TableRowBuilder.buildExpression<A>(_:)(v9, AssociatedTypeWitness, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v9, v6);
  static TableRowBuilder.buildExpression<A>(_:)(v13, AssociatedTypeWitness, v6, WitnessTable);
  return (v15)(v13, v6);
}

uint64_t Table.init(for:selection:columns:rows:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v22 = a4;
  v23 = a5;
  v21[0] = a9;
  v21[1] = a3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v21 - v18;
  (*(v16 + 16))(v21 - v18, a1, v15, v17);
  Table.init(selection:columns:rows:)(v19, a2, v22, a6, a7, v21[0], a8, a10);
  return (*(v16 + 8))(a1, v15);
}

uint64_t Table.init(for:selection:columns:rows:)@<X0>(void (*a1)(uint64_t)@<X4>, uint64_t (*a2)(uint64_t)@<X6>, uint64_t a3@<X8>, uint64_t a4, __int128 a5, uint64_t a6)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(AssociatedTypeWitness, AssociatedConformanceWitness, v8, v9);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  type metadata accessor for SetToAnySelectionManager();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  memset(v14, 0, sizeof(v14));
  Table.init(of:selection:columnCustomization:columns:rows:)(v15, v14, a1, a2, a4, a3, a5, a6);
}

void type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for Attribute<((_:))?>()
{
  if (!lazy cache variable for type metadata for Attribute<((_:))?>)
  {
    type metadata accessor for ((_:))?(255, &lazy cache variable for type metadata for ((_:))?, &lazy cache variable for type metadata for (_:), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<((_:))?>);
    }
  }
}

void type metadata accessor for ((_:))?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for (_:)(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of Binding<AnySelectionManager>?(uint64_t a1)
{
  type metadata accessor for Binding<AnySelectionManager>?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Binding<AnySelectionManager>?()
{
  if (!lazy cache variable for type metadata for Binding<AnySelectionManager>?)
  {
    type metadata accessor for Binding<AnySelectionManager>(255, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?);
    }
  }
}

uint64_t outlined consume of Binding<[A1]>?<A, B, C><A1>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined assign with take of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AnySelectionManager>?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t associated type witness table accessor for TableRowContent.TableRowBody : TableRowContent in TableOutlineGroupContent<A>()
{
  return associated type witness table accessor for TableRowContent.TableRowBody : TableRowContent in TableOutlineGroupContent<A>();
}

{
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata completion function for Table()
{
  result = swift_checkMetadataState();
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

uint64_t *initializeBufferWithCopyOfBuffer for Table(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((((((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = (v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
    if (*(v20 + 8) < 0xFFFFFFFFuLL)
    {
      v23 = *v20;
      v24 = *(v20 + 16);
      v25 = *(v20 + 32);
      *(v19 + 48) = *(v20 + 48);
      *(v19 + 16) = v24;
      *(v19 + 32) = v25;
      *v19 = v23;
    }

    else
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      v21 = *(v20 + 40);
      *(v19 + 40) = v21;
      *(v19 + 48) = *(v20 + 48);
      v22 = **(v21 - 8);

      v22(v19 + 16, v20 + 16, v21);
    }

    v26 = (v19 + 63) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v20 + 63) & 0xFFFFFFFFFFFFFFF8;
    if (*(v27 + 8) < 0xFFFFFFFFuLL)
    {
      v28 = *v27;
      *(v26 + 16) = *(v27 + 16);
      *v26 = v28;
    }

    else
    {
      *v26 = *v27;
      *(v26 + 8) = *(v27 + 8);
      *(v26 + 16) = *(v27 + 16);
    }

    v29 = (v26 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
    if (*(v30 + 8) < 0xFFFFFFFFuLL)
    {
      v31 = *(v30 + 16);
      *v29 = *v30;
      *(v29 + 16) = v31;
    }

    else
    {
      *v29 = *v30;
      *(v29 + 8) = *(v30 + 8);
      *(v29 + 16) = *(v30 + 16);
      *(v29 + 24) = *(v30 + 24);
    }
  }

  return v3;
}

uint64_t destroy for Table(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 32) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  result = (*(v6 + 8))(v8);
  v10 = (*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 8) >= 0xFFFFFFFFuLL)
  {

    result = __swift_destroy_boxed_opaque_existential_1(v10 + 16);
  }

  v11 = (v10 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 8) >= 0xFFFFFFFFuLL)
  {
  }

  if (*(((v11 + 31) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v16 + 8) < 0xFFFFFFFFuLL)
  {
    v19 = *v16;
    v20 = *(v16 + 16);
    v21 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v20;
    *(v15 + 32) = v21;
    *v15 = v19;
  }

  else
  {
    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
    v17 = *(v16 + 40);
    *(v15 + 40) = v17;
    *(v15 + 48) = *(v16 + 48);
    v18 = **(v17 - 8);

    v18(v15 + 16, v16 + 16, v17);
  }

  v22 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v23 + 8) < 0xFFFFFFFFuLL)
  {
    v24 = *v23;
    *(v22 + 16) = *(v23 + 16);
    *v22 = v24;
  }

  else
  {
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *(v22 + 16) = *(v23 + 16);
  }

  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v26 + 8) < 0xFFFFFFFFuLL)
  {
    v27 = *(v26 + 16);
    *v25 = *v26;
    *(v25 + 16) = v27;
  }

  else
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);
    *(v25 + 24) = *(v26 + 24);
  }

  return a1;
}

uint64_t assignWithCopy for Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 8);
  if (*(v15 + 8) < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      v18 = *(v16 + 40);
      *(v15 + 40) = v18;
      *(v15 + 48) = *(v16 + 48);
      v19 = **(v18 - 8);

      v19(v15 + 16, v16 + 16, v18);
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 >= 0xFFFFFFFF)
    {
      *v15 = *v16;

      *(v15 + 8) = *(v16 + 8);

      __swift_assign_boxed_opaque_existential_1((v15 + 16), (v16 + 16));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  }

  v20 = *v16;
  v21 = *(v16 + 16);
  v22 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v21;
  *(v15 + 32) = v22;
  *v15 = v20;
LABEL_8:
  v23 = ((v15 + 63) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v16 + 63) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  if (v23[1] < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      *v23 = *v24;
      v23[1] = v24[1];
      v23[2] = v24[2];

      goto LABEL_15;
    }
  }

  else
  {
    if (v25 >= 0xFFFFFFFF)
    {
      *v23 = *v24;

      v23[1] = v24[1];

      v23[2] = v24[2];

      goto LABEL_15;
    }
  }

  v26 = *v24;
  v23[2] = v24[2];
  *v23 = v26;
LABEL_15:
  v27 = ((v23 + 31) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 31) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  if (v27[1] < 0xFFFFFFFFuLL)
  {
    if (v29 >= 0xFFFFFFFF)
    {
      *v27 = *v28;
      v27[1] = v28[1];
      v27[2] = v28[2];
      v27[3] = v28[3];

      return a1;
    }

LABEL_21:
    v30 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v30;
    return a1;
  }

  if (v29 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  *v27 = *v28;

  v27[1] = v28[1];

  v27[2] = v28[2];

  v27[3] = v28[3];

  return a1;
}

uint64_t initializeWithTake for Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v16 + 16);
  v17 = *(v16 + 32);
  v19 = *v16;
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v18;
  *(v15 + 32) = v17;
  *v15 = v19;
  v20 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 16) = *(v21 + 16);
  *v20 = v22;
  v23 = ((v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v21 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  return a1;
}

uint64_t assignWithTake for Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v15 + 8) >= 0xFFFFFFFFuLL)
  {
    if (*(v16 + 8) >= 0xFFFFFFFFuLL)
    {
      *v15 = *v16;

      *(v15 + 8) = *(v16 + 8);

      __swift_destroy_boxed_opaque_existential_1(v15 + 16);
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 16) = v17;
      *(v15 + 32) = v18;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  }

  v19 = *v16;
  v20 = *(v16 + 16);
  v21 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v20;
  *(v15 + 32) = v21;
  *v15 = v19;
LABEL_6:
  v22 = ((v15 + 63) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v16 + 63) & 0xFFFFFFFFFFFFFFF8);
  if (v22[1] >= 0xFFFFFFFFuLL)
  {
    if (v23[1] >= 0xFFFFFFFFuLL)
    {
      *v22 = *v23;

      v22[1] = v23[1];

      v22[2] = v23[2];

      goto LABEL_11;
    }
  }

  v24 = *v23;
  v22[2] = v23[2];
  *v22 = v24;
LABEL_11:
  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v25 + 8) < 0xFFFFFFFFuLL)
  {
LABEL_15:
    v27 = *(v26 + 16);
    *v25 = *v26;
    *(v25 + 16) = v27;
    return a1;
  }

  if (*(v26 + 8) < 0xFFFFFFFFuLL)
  {

    goto LABEL_15;
  }

  *v25 = *v26;

  *(v25 + 8) = *(v26 + 8);

  *(v25 + 16) = *(v26 + 16);

  *(v25 + 24) = *(v26 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for Table(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
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

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 32) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
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
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))();
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for Table(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE0)
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

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v20)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v26 = *(v5 + 56);

        v26();
      }

      else
      {
        v27 = (a1 + v13) & ~v10;
        if (v8 == v12)
        {
          v28 = *(v7 + 56);

          v28(v27);
        }

        else
        {
          v29 = (v15 + v27) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0x7FFFFFFE)
          {
            *(v29 + 48) = 0;
            result = 0.0;
            *(v29 + 16) = 0u;
            *(v29 + 32) = 0u;
            *v29 = 0u;
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(v29 + 8) = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = a1;
    bzero(a1, v16);
    a1 = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v16) = v22;
    }

    else
    {
      *(a1 + v16) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v16) = v22;
  }

  return result;
}

uint64_t type metadata completion function for TableOutlineGroupContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableOutlineGroupContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for TableOutlineGroupContent(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for TableOutlineGroupContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for TableOutlineGroupContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for TableOutlineGroupContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TableOutlineGroupContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TableOutlineGroupContent(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_DWORD *storeEnumTagSinglePayload for TableOutlineGroupContent(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t type metadata completion function for TableForEachContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AnySelectionManager>?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Binding<AnyTableColumnCustomization>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>(uint64_t a1)
{
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed AnyHashable) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.Identifiable.ID>) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 56);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<AnyHashable>) -> (@owned PlatformItemList)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.Identifiable.ID>) -> (@out PlatformItemList)(uint64_t a1)
{
  v2 = *(v1 + 56);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, v15);
  dispatch thunk of Rule.value.getter();
  (*(v9 + 8))(v11, a5);
  v22 = a5;
  v23 = a6;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in static Rule._update(_:attribute:), v21, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v13 + 8))(v17, a4);
}

uint64_t specialized ToAnyComparatorArray.get(base:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[5] = a1;
  v7[2] = a2;
  v7[3] = a3;
  v3 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ToAnyComparatorArray.get(base:), v7, v3, &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);
}

uint64_t specialized ToAnyComparatorArray.set(base:newValue:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a2;
  v12[2] = a3;
  v12[3] = a4;
  type metadata accessor for Binding<AnySelectionManager>(0, &lazy cache variable for type metadata for [SwiftUIAnySortComparator], &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E62F8]);
  v7 = v6;
  v8 = lazy protocol witness table accessor for type [SwiftUIAnySortComparator] and conformance [A]();
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ToAnyComparatorArray.set(base:newValue:), v12, v7, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);

  *a1 = v10;
  return result;
}

void type metadata accessor for Binding<AnySelectionManager>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type [SwiftUIAnySortComparator] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SwiftUIAnySortComparator] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SwiftUIAnySortComparator] and conformance [A])
  {
    type metadata accessor for Binding<AnySelectionManager>(255, &lazy cache variable for type metadata for [SwiftUIAnySortComparator], &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SwiftUIAnySortComparator] and conformance [A]);
  }

  return result;
}

uint64_t outlined assign with copy of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AnySelectionManager>?();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*partial apply for closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return partial apply for implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:);
}

double protocol witness for LabelStyle.makeBody(configuration:) in conformance WrappingLabelStyle@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  result = v7;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return result;
}

uint64_t initializeWithCopy for WrappingLabelStyleView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for WrappingLabelStyleView(uint64_t a1, uint64_t a2)
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
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for WrappingLabelStyleView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for WrappingLabelStyleView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for WrappingLabelStyleView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WrappingLabelStyleView and conformance WrappingLabelStyleView()
{
  result = lazy protocol witness table cache variable for type WrappingLabelStyleView and conformance WrappingLabelStyleView;
  if (!lazy protocol witness table cache variable for type WrappingLabelStyleView and conformance WrappingLabelStyleView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WrappingLabelStyleView and conformance WrappingLabelStyleView);
  }

  return result;
}

uint64_t closure #1 in WrappingLabelStyleView.body.getter@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v12 = *a1;
  *v13 = a1[1];
  *&v13[9] = *(a1 + 25);
  type metadata accessor for ScaledMetric<CGFloat>();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v8[7] = v9;
  *&v8[23] = v10;
  *&v8[39] = v11;
  *v15 = v12;
  *&v15[16] = *v13;
  *&v15[25] = *&v13[9];
  ScaledMetric.wrappedValue.getter();
  View.bodyHeadOutdent(_:)();
  *v14 = KeyPath;
  v14[8] = 1;
  *&v14[9] = *v8;
  *&v14[25] = *&v8[16];
  *&v14[41] = *&v8[32];
  *&v14[56] = *(&v11 + 1);
  v5 = *&v14[16];
  *a2 = *v14;
  a2[1] = v5;
  v6 = *&v14[48];
  a2[2] = *&v14[32];
  a2[3] = v6;
  a2[4] = v12;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v14, v15, type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
  *v15 = KeyPath;
  v15[8] = 1;
  *&v15[9] = *v8;
  *&v15[25] = *&v8[16];
  *v16 = *&v8[32];
  *&v16[15] = *(&v11 + 1);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v15, type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
}

double protocol witness for View.body.getter in conformance WrappingLabelStyleView@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17 = *v1;
  v18[0] = v3;
  *(v18 + 9) = *(v1 + 25);
  v4 = static VerticalAlignment.firstTextLineCenter.getter();
  v16 = 0;
  closure #1 in WrappingLabelStyleView.body.getter(&v17, &v10);
  v21 = v12;
  v22 = v13;
  v19 = v10;
  v20 = v11;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[1] = v11;
  v23 = v14;
  v24[0] = v10;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v19, &v9, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v24, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
  *&v15[7] = v19;
  *&v15[71] = v23;
  *&v15[55] = v22;
  *&v15[39] = v21;
  *&v15[23] = v20;
  v5 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a1 + 17) = *v15;
  v8 = v16;
  *a1 = v4;
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = v8;
  *(a1 + 96) = *&v15[79];
  *(a1 + 33) = v7;
  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>()
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>)
  {
    type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>();
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, a3);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ScaledMetric<CGFloat>()
{
  if (!lazy cache variable for type metadata for ScaledMetric<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>);
    }
  }
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path getter for EnvironmentValues.dividerThickness : EnvironmentValues@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.dividerThickness.getter();
  *a1 = v3;
  return result;
}

uint64_t AnyNavigationPath.view<A>(basedOn:applying:index:apparentPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v12[4] = *(a2 + 64);
  v13 = *(a2 + 80);
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  return (*(*a7 + 152))(a1, v12, a3, a4, a5, a6, a8, a9);
}

uint64_t AnyNavigationPath.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = (*(*v9 + 104))();

    *v4 = v10;
    v9 = v10;
  }

  return (*(*v9 + 112))(a1, a2, a3);
}

uint64_t AnyNavigationPath.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = (*(*v13 + 104))();

    *v6 = v14;
    v13 = v14;
  }

  return (*(*v13 + 120))(a1, a2, a3, a4, a5);
}

void AnyNavigationPath.BoxBase.append<A>(_:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  NavigationPath.append<A>(_:)(a1, a2);
  return swift_endAccess();
}

{
  swift_beginAccess();
  NavigationPath.append<A>(_:)(a1, a2);
  return swift_endAccess();
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.removeLast(_:)(Swift::Int a1)
{
  swift_beginAccess();
  v6 = *(v1 + 48);
  if (v6 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }

    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v7 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  result = specialized RangeReplaceableCollection<>.removeLast(_:)(v8, v3, v4, v5);
  v10 = __OFSUB__(a1, v8);
  a1 -= v8;
  if (v10)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  if (a1 >= 1)
  {
    v11 = *(v1 + 24);
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    *&v20 = *(v1 + 16);
    *(&v20 + 1) = v11;
    v21 = v12;
    v22 = v13;
    outlined copy of NavigationPath.Representation(v20, v11, v12, v13);
    NavigationPath.Representation.removeLast(_:)(a1, v14, v15, v16);
    v17 = v20;
    v18 = v21;
    v19 = v22;
    NavigationPath.items.setter(&v17);
  }

  return swift_endAccess();
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.change(from:)()
{
  v1 = v0;
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
LABEL_44:
    lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error();
    swift_allocError();
    *v36 = xmmword_18CD6C650;
    return swift_willThrow();
  }

  v3 = v2;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  swift_beginAccess();
  result = 2;
  if ((*(v1 + 40) & 1) == 0 && (v7 & 1) == 0)
  {
    v41 = v6;
    outlined copy of NavigationPath.Representation(v5, v4, v6, 0);
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
    v42 = v5 & 0xC000000000000001;

    v11 = 4;
    v12 = v8 >> 62;
    while (1)
    {
      v13 = *(v1 + 16);
      v14 = *(v1 + 48);
      v15 = v13 >> 62;
      if (*(v1 + 40))
      {
        v17 = *(v1 + 24);
        v16 = *(v1 + 32);
        if (v15)
        {
          v18 = __CocoaSet.count.getter();
        }

        else
        {
          v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v19 = *(v17 + 16);
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_59;
        }

        if (v16 >> 62)
        {
          v35 = __CocoaSet.count.getter();
          v22 = v20 + v35;
          if (__OFADD__(v20, v35))
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v22 = v20 + v21;
          if (__OFADD__(v20, v21))
          {
            goto LABEL_43;
          }
        }
      }

      else if (v15)
      {
        v22 = __CocoaSet.count.getter();
      }

      else
      {
        v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14 >> 62)
      {
        v33 = __CocoaSet.count.getter();
        v24 = v22 + v33;
        if (__OFADD__(v22, v33))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      else
      {
        v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_55;
        }
      }

      v25 = v11 - 4;
      if (v11 - 4 >= v24)
      {
        goto LABEL_45;
      }

      if (v5 >> 62)
      {
        v26 = __CocoaSet.count.getter();
        if (!v12)
        {
LABEL_20:
          v27 = *(v10 + 16);
          v28 = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_56;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      v34 = __CocoaSet.count.getter();
      v28 = v26 + v34;
      if (__OFADD__(v26, v34))
      {
        goto LABEL_56;
      }

LABEL_21:
      v29 = *(v1 + 16);
      if (v25 >= v28)
      {
LABEL_45:
        if (v11 - NavigationPath.count.getter() == 4 && v11 - NavigationPath.count.getter() == 4)
        {
          outlined consume of NavigationPath.Representation(v5, v4, v41, 0);

          return 1;
        }

        if (v11 - NavigationPath.count.getter() == 4)
        {
          v37 = NavigationPath.count.getter();
          outlined consume of NavigationPath.Representation(v5, v4, v41, 0);

          result = v37 - v25;
          if (!__OFSUB__(v37, v25))
          {
            return result;
          }

          goto LABEL_60;
        }

        outlined consume of NavigationPath.Representation(v5, v4, v41, 0);

        v38 = NavigationPath.count.getter();
        if (!__OFSUB__(v38, v25))
        {
          return 2 * (v38 - v25 != 1);
        }

LABEL_61:
        __break(1u);
LABEL_62:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (*(v1 + 40))
      {
        goto LABEL_62;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v39 = *(v1 + 32);
        v40 = *(v1 + 24);
        outlined copy of NavigationPath.Representation(v29, v40, v39, 0);

        outlined copy of NavigationPath.Representation(v29, v40, v39, 0);
        v30 = MEMORY[0x18D00E9C0](v11 - 4, v29);
        outlined consume of NavigationPath.Representation(v29, v40, v39, 0);
        outlined consume of NavigationPath.Representation(v29, v40, v39, 0);

        if (v42)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v25 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v30 = *(v29 + 8 * v11);

        if (v42)
        {
LABEL_38:

          v31 = MEMORY[0x18D00E9C0](v11 - 4, v5);
          outlined consume of NavigationPath.Representation(v5, v4, v41, 0);
          goto LABEL_28;
        }
      }

      if (v25 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v31 = *(v5 + 8 * v11);

LABEL_28:
      v32 = (*(*v30 + 160))(v31);

      if ((v32 & 1) == 0)
      {
        outlined consume of NavigationPath.Representation(v5, v4, v41, 0);

        return 2;
      }

      ++v11;
    }
  }

  return result;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.view<A>(basedOn:applying:index:apparentPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a2 + 48);
  v25[2] = *(a2 + 32);
  v25[3] = v16;
  v25[4] = *(a2 + 64);
  v26 = *(a2 + 80);
  v17 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v17;
  swift_beginAccess();
  v18 = *(v8 + 24);
  v19 = *(v8 + 32);
  v20 = *(v8 + 40);
  v22 = *(v8 + 48);
  v21 = *(v8 + 56);
  v27 = *(v8 + 16);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v22;
  v32 = v21;
  outlined copy of NavigationPath.Representation(v27, v18, v19, v20);

  v23 = NavigationPath.view<A>(basedOn:applying:index:apparentPosition:)(a1, v25, a3, a4, a5, a6, a7, a8);
  outlined consume of NavigationPath.Representation(v27, v28, v29, v30);

  return v23;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  outlined copy of NavigationPath.Representation(v8, v9, v10, v11);

  LOBYTE(a3) = NavigationPath.contains<A>(_:)(a1, a2, a3);
  outlined consume of NavigationPath.Representation(v8, v9, v10, v11);

  return a3 & 1;
}

unint64_t AnyNavigationPath.HeterogeneousBoxBase.description.getter()
{
  _StringGuts.grow(_:)(42);

  swift_beginAccess();
  outlined copy of NavigationPath.Representation(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v1);

  return 0xD000000000000028;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.__ivar_destroyer()
{
  outlined consume of NavigationPath.Representation(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  result = AnyNavigationPath.HomogeneousBoxBase.asElementType<A>(_:)(a1, a2, &v8 - v6);
  if (!v2)
  {
    swift_beginAccess();
    dispatch thunk of RangeReplaceableCollection.append(_:)();
    return swift_endAccess();
  }

  return result;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.asElementType<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v12);
  v15 = swift_dynamicCast();
  v16 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v15)
  {
    v17 = *(AssociatedTypeWitness - 8);
    v16(v10, 0, 1, AssociatedTypeWitness);
    return (*(v17 + 32))(a3, v10, AssociatedTypeWitness);
  }

  else
  {
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    DynamicType = swift_getDynamicType();
    lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error();
    swift_allocError();
    *v20 = AssociatedTypeWitness;
    v20[1] = DynamicType;
    return swift_willThrow();
  }
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.removeLast(_:)()
{
  swift_beginAccess();
  RangeReplaceableCollection<>.removeLast(_:)();
  return swift_endAccess();
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.change(from:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(*v0 + 200) + 8);
  v4 = *(*v0 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v101 = v95 - v7;
  v118 = v3;
  v8 = swift_getAssociatedTypeWitness();
  v96 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v107 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = v95 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v95 - v13;
  v120 = v4;
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v106 = v95 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v95 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v117 = v95 - v25;
  v105 = v2;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v95[0] = v18;
    v27 = *(*v26 + 232);
    v28 = v26;
    swift_beginAccess();
    v111 = v15;
    v30 = v15 + 16;
    v29 = *(v15 + 16);
    v31 = v28 + v27;
    v32 = v1;
    v33 = v120;
    v29(v23, v31, v120);
    v34 = *(v15 + 32);
    v35 = v29;
    v34(v117, v23, v33);
    v36 = v32;
    v37 = *(*v32 + 232);
    v38 = v36;
    v115 = v36;
    swift_beginAccess();
    v39 = v106;
    v114 = v30;
    v35(v106, &v38[v37], v33);
    dispatch thunk of Collection.startIndex.getter();
    v40 = *(v111 + 8);
    v111 += 8;
    v40(v39, v33);
    dispatch thunk of Collection.startIndex.getter();
    v110 = (v96 + 1);
    v99 = (v108 + 16);
    v98 = (v108 + 8);
    v97 = v96 + 4;
    v96 += 5;
    v41 = v39;
    v42 = v107;
    v43 = v115;
    v100 = v8;
    v109 = v40;
    v112 = v37;
    v113 = v35;
    v104 = v14;
    while (1)
    {
      v44 = v43 + v37;
      v45 = v120;
      v35(v41, v44, v120);
      dispatch thunk of Collection.endIndex.getter();
      v40(v41, v45);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v47 = dispatch thunk of static Comparable.< infix(_:_:)();
      v48 = *v110;
      (*v110)(v42, v8);
      v49 = v42;
      v50 = v48;
      v51 = v116;
      v108 = v48;
      if ((v47 & 1) == 0)
      {
        break;
      }

      dispatch thunk of Collection.endIndex.getter();
      v52 = dispatch thunk of static Comparable.< infix(_:_:)();
      v48(v49, v8);
      if ((v52 & 1) == 0)
      {
        break;
      }

      v41 = v106;
      v53 = v120;
      v113(v106, v115 + v112, v120);
      v54 = dispatch thunk of Collection.subscript.read();
      v55 = *v99;
      v56 = v101;
      v57 = AssociatedTypeWitness;
      (*v99)(v101);
      v54(v119, 0);
      v58 = v109;
      v109(v41, v53);
      v59 = dispatch thunk of Collection.subscript.read();
      v60 = v102;
      v55(v102);
      (v59)(v119, 0);
      LOBYTE(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *v98;
      (*v98)(v60, v57);
      v61(v56, v57);
      if ((v59 & 1) == 0)
      {
        v86 = v100;
        v87 = v108;
        v108(v116, v100);
        v87(v104, v86);
        v58(v117, v120);
        return 2;
      }

      v62 = v120;
      v113(v41, v115 + v112, v120);
      v63 = v58;
      v42 = v107;
      v14 = v104;
      dispatch thunk of Collection.index(after:)();
      v63(v41, v62);
      v64 = v100;
      v108(v14, v100);
      (*v97)(v14, v42, v64);
      v65 = v116;
      dispatch thunk of Collection.index(after:)();
      (*v96)(v65, v42, v64);
      v40 = v109;
      v43 = v115;
      v8 = v64;
      v37 = v112;
      v35 = v113;
    }

    v66 = v8;
    v67 = v106;
    v68 = v120;
    v113(v106, v115 + v112, v120);
    dispatch thunk of Collection.endIndex.getter();
    v69 = v68;
    v70 = v107;
    v109(v67, v69);
    v71 = *(AssociatedConformanceWitness + 8);
    LOBYTE(v67) = dispatch thunk of static Equatable.== infix(_:_:)();
    v50(v70, v8);
    if (v67 & 1) != 0 && (dispatch thunk of Collection.endIndex.getter(), v72 = dispatch thunk of static Equatable.== infix(_:_:)(), v50(v70, v8), (v72))
    {
      v50(v51, v8);
      v50(v14, v8);
      v109(v117, v120);
      return 1;
    }

    else
    {
      v75 = v112;
      AssociatedTypeWitness = v71;
      v76 = v106;
      v77 = v120;
      v113(v106, v115 + v112, v120);
      dispatch thunk of Collection.endIndex.getter();
      v78 = v77;
      v79 = v107;
      v109(v76, v78);
      v80 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50(v79, v8);
      if (v80)
      {
        v81 = v117;
        v82 = v79;
        v83 = v120;
        dispatch thunk of Collection.endIndex.getter();
        v84 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        v85 = v108;
        v108(v82, v66);
        v85(v51, v66);
        v85(v104, v66);
        v109(v81, v83);
        return v84;
      }

      else
      {
        v88 = v115;
        v89 = v120;
        v90 = v113;
        v113(v76, v115 + v75, v120);
        v91 = v95[0];
        v90(v95[0], &v88[v75], v89);
        v92 = v107;
        dispatch thunk of Collection.endIndex.getter();
        v93 = v109;
        v109(v91, v89);
        LODWORD(v91) = dispatch thunk of RandomAccessCollection.distance(from:to:)() != 1;
        v94 = v108;
        v108(v92, v8);
        v93(v76, v89);
        v94(v51, v8);
        v94(v104, v8);
        v93(v117, v89);
        return 2 * v91;
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error();
    swift_allocError();
    *v74 = xmmword_18CD6C650;
    return swift_willThrow();
  }
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.view<A>(basedOn:applying:index:apparentPosition:)(uint64_t *a1, __int128 *a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a8;
  v58 = a7;
  v56 = a6;
  v52 = a5;
  v57 = a4;
  v55 = a3;
  v60 = a1;
  v10 = *v8;
  v63 = *(*(*v8 + 200) + 8);
  v11 = *(v10 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v49 - v12;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v66 = v19;
  v67 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v49 - v24;
  v25 = a2[3];
  v71 = a2[2];
  v72 = v25;
  v73 = a2[4];
  v74 = *(a2 + 10);
  v26 = a2[1];
  v69 = *a2;
  v70 = v26;
  v50 = v10;
  v65 = *(v10 + 232);
  v27 = v65;
  v62 = v8;
  swift_beginAccess();
  v28 = *(v13 + 16);
  v64 = v28;
  v28(v18, &v8[v27], v11);
  v29 = &v8[v27];
  v30 = v49;
  v28(v49, v29, v11);
  dispatch thunk of Collection.startIndex.getter();
  v31 = *(v13 + 8);
  v31(v30, v11);
  v32 = v62;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v33 = *(v67 + 8);
  v67 += 8;
  v52 = v33;
  v33(v22, v66);
  v34 = v18;
  v31(v18, v11);
  v35 = v31;
  v64(v34, &v32[v65], v11);
  v36 = dispatch thunk of Collection.subscript.read();
  v37 = v53;
  v49 = *(v53 + 16);
  v38 = v51;
  v39 = AssociatedTypeWitness;
  (v49)(v51);
  v36(v68, 0);
  v35(v34, v11);
  v59 = ResolvedNavigationDestinations.view<A, B>(presenting:at:applying:)(v38, v56, v55, v57, v39, v58, v59);
  (*(v37 + 8))(v38, v39);
  v40 = v34;
  v64(v34, &v62[v65], v11);
  v41 = v61;
  v42 = v40;
  v43 = dispatch thunk of Collection.subscript.read();
  v45 = v44;
  v46 = v60;
  v60[3] = v39;
  v46[4] = *(v50 + 224);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (v49)(boxed_opaque_existential_1, v45, v39);
  v43(v68, 0);
  v35(v42, v11);
  v52(v41, v66);
  return v59;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.contains<A>(_:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v31 = *v2;
  v4 = *(v31 + 192);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v29 - v5;
  v29 = *(*(*(v6 + 200) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  (*(v20 + 16))(v14, v33, a2, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v19, v11, AssociatedTypeWitness);
    v23 = *(*v2 + 232);
    swift_beginAccess();
    v24 = v32;
    v25 = v2 + v23;
    v26 = v30;
    (*(v32 + 16))(v30, v25, v4);
    v27 = Sequence<>.contains(_:)();
    (*(v24 + 8))(v26, v4);
    (*(v15 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v22(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    v27 = 0;
  }

  return v27 & 1;
}

unint64_t AnyNavigationPath.HomogeneousBoxBase.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v10 - v5;
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v11 = 0xD000000000000026;
  v12 = 0x800000018CD3E850;
  v7 = *(*v1 + 232);
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  v8 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v8);

  return v11;
}

uint64_t protocol witness for Projection.set(base:newValue:) in conformance AnyNavigationPath.ToHeterogeneous(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  outlined consume of NavigationPath.Representation(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));

  if (*v3 == _TtCV7SwiftUI17AnyNavigationPathP33_9DF1331F7AC5F2344ADB74E74311CCBE20HeterogeneousBoxBase)
  {
    swift_beginAccess();
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    v10 = *(v3 + 48);
    v9 = *(v3 + 56);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v10;
    *(a1 + 40) = v9;
    outlined copy of NavigationPath.Representation(v5, v6, v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized AnyNavigationPath.ToHomogeneous.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  type metadata accessor for AnyNavigationPath.HomogeneousBoxBase();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(*v6 + 232);
  swift_beginAccess();
  return (*(v5 + 16))(a1, v6 + v7, a3);
}

uint64_t getEnumTagSinglePayload for AnyNavigationPath.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnyNavigationPath.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

double GlassButtonStyle.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18CD6A6D0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t static PrimitiveButtonStyle<>.glass(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  outlined copy of _Glass.Variant.Role(*a1, v4, v5);

  result = outlined consume of Glass?(0, 0, 0, 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 | (v6 << 8);
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  return result;
}

uint64_t GlassButtonStyle.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 8);
  result = outlined consume of Glass?(0, 0, 0, 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t outlined copy of _Glass.Variant.Role(uint64_t result, unsigned __int8 a2, char a3)
{
  if (a3 == 1)
  {
    return outlined copy of Material.ID(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t outlined consume of Glass?(uint64_t result, unsigned __int8 a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined consume of _Glass.Variant.Role(result, a2, a3);
  }

  return result;
}

uint64_t outlined consume of _Glass.Variant.Role(uint64_t result, unsigned __int8 a2, char a3)
{
  if (a3 == 1)
  {
    return outlined consume of Material.ID(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

void GlassButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v40 = *(v2 + 8);
  v9 = v40;
  v41 = v8;
  v10 = *(v2 + 16);
  v38 = *(v2 + 24);
  v11 = v38;
  v39 = v10;
  v37 = *(v2 + 32);
  v43 = *(v2 + 40);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v12 = v42;
  *v42 = *v7;
  v13 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v13], &v12[*(v14 + 36)], type metadata accessor for ButtonAction);
  outlined copy of Glass?(v8, v9, v10, v11);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  KeyPath = swift_getKeyPath();
  v52 = 0;
  v16 = swift_getKeyPath();
  v51 = 0;
  v17 = swift_getKeyPath();
  v50 = 0;
  v18 = swift_getKeyPath();
  v49 = 0;
  LOBYTE(v7) = v52;
  LOBYTE(v5) = v51;
  LOBYTE(v12) = v50;
  *&v53 = KeyPath;
  BYTE8(v53) = v52;
  *&v54 = v16;
  BYTE8(v54) = v51;
  *&v55[0] = v17;
  BYTE8(v55[0]) = v50;
  *&v55[1] = v18;
  BYTE8(v55[1]) = 0;
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>();
  v20 = v42;
  v21 = &v42[*(v19 + 36)];
  v22 = v54;
  *v21 = v53;
  v21[1] = v22;
  v21[2] = v55[0];
  *(v21 + 41) = *(v55 + 9);
  v56 = KeyPath;
  v57 = v7;
  v58 = v16;
  v59 = v5;
  v60 = v17;
  v61 = v12;
  v62 = v18;
  v63 = 0;
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(&v53, &v67, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(&v56, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
  v23 = swift_getKeyPath();
  v48 = 0;
  v24 = swift_getKeyPath();
  v47 = 0;
  v25 = swift_getKeyPath();
  v46 = 0;
  v26 = swift_getKeyPath();
  v45[64] = 0;
  LOBYTE(v18) = v48;
  LOBYTE(v5) = v47;
  LOBYTE(v7) = v46;
  *&v64 = v23;
  BYTE8(v64) = v48;
  *&v65 = v24;
  BYTE8(v65) = v47;
  *v66 = v25;
  v66[8] = v46;
  *&v66[16] = v26;
  v66[24] = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>();
  v28 = &v20[*(v27 + 36)];
  v29 = v65;
  *v28 = v64;
  v28[1] = v29;
  v28[2] = *v66;
  *(v28 + 41) = *&v66[9];
  v67 = v23;
  v68 = v18;
  v69 = v24;
  v70 = v5;
  v71 = v25;
  v72 = v7;
  v73 = v26;
  v74 = 0;
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(&v64, v45, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(&v67, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>);
  v30 = swift_getKeyPath();
  v45[0] = 0;
  v31 = swift_getKeyPath();
  v44 = 0;
  outlined consume of Glass?(0, 0, 0, 1);
  LOBYTE(v24) = v45[0];
  LOBYTE(v25) = v44;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>();
  v33 = &v20[*(v32 + 36)];
  *v33 = 0;
  v33[8] = 0;
  v34 = v40;
  *(v33 + 2) = v41;
  *(v33 + 3) = v34;
  v35 = v38;
  *(v33 + 4) = v39;
  *(v33 + 5) = v35;
  *(v33 + 6) = v37;
  v33[56] = v43;
  *(v33 + 8) = v30;
  v33[72] = v24;
  *(v33 + 10) = v31;
  v33[88] = v25;
}

void type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>)
  {
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>);
    }
  }
}

uint64_t outlined copy of Glass?(uint64_t result, unsigned __int8 a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined copy of _Glass.Variant.Role(result, a2, a3);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ApplyGlassButtonConfiguration()
{
  lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ApplyGlassButtonConfigurationPredicate()
{
  lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration();
  PropertyList.subscript.getter();
  return v1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, a3);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with copy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t key path getter for EnvironmentValues.dynamicTypeSize : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.dynamicTypeSize.getter();
  *a1 = v3;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderedButtonStyle_Phone>, lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>);
    }
  }
}

uint64_t destroy for GlassButtonStyle(uint64_t result)
{
  if (*(result + 24) != 1)
  {
    outlined consume of _Glass.Variant.Role(*result, *(result + 8), *(result + 16));
  }

  return result;
}

_OWORD *initializeWithCopy for GlassButtonStyle(_OWORD *result, uint64_t *a2)
{
  v2 = a2[3];
  if (v2 == 1)
  {
    v3 = *(a2 + 1);
    *result = *a2;
    result[1] = v3;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = *(a2 + 16);
    v7 = result;
    outlined copy of _Glass.Variant.Role(*a2, v5, v6);
    *v7 = v4;
    *(v7 + 1) = v5;
    *(v7 + 16) = v6;
    *(v7 + 17) = *(a2 + 17);
    v9 = a2[4];
    *(v7 + 3) = v2;
    *(v7 + 4) = v9;
    *(v7 + 40) = *(a2 + 40);

    return v7;
  }

  return result;
}

uint64_t assignWithCopy for GlassButtonStyle(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      v6 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v5;
      *(a1 + 16) = v6;
    }

    else
    {
      v9 = *a2;
      v10 = *(a2 + 1);
      v11 = *(a2 + 16);
      outlined copy of _Glass.Variant.Role(*a2, v10, v11);
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else if (v4 == 1)
  {
    outlined destroy of Glass(a1);
    v7 = *(a2 + 25);
    v8 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 25) = v7;
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 1);
    v14 = *(a2 + 16);
    outlined copy of _Glass.Variant.Role(*a2, v13, v14);
    v15 = *a1;
    v16 = *(a1 + 8);
    *a1 = v12;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = v14;
    outlined consume of _Glass.Variant.Role(v15, v16, v17);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 24) = *(a2 + 3);

    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithTake for GlassButtonStyle(uint64_t result, uint64_t a2)
{
  if (*(result + 24) == 1)
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4 == 1)
    {
      v5 = result;
      outlined destroy of Glass(result);
      v6 = *(a2 + 16);
      *v5 = *a2;
      v5[1] = v6;
      *(v5 + 25) = *(a2 + 25);
      return v5;
    }

    else
    {
      v7 = *(a2 + 16);
      v9 = *result;
      v8 = *(result + 8);
      *result = *a2;
      v10 = *(result + 16);
      *(result + 16) = v7;
      v11 = result;
      outlined consume of _Glass.Variant.Role(v9, v8, v10);
      *(v11 + 17) = *(a2 + 17);
      *(v11 + 24) = v4;

      *(v11 + 32) = *(a2 + 32);
      *(v11 + 40) = *(a2 + 40);
      return v11;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for GlassButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ApplyGlassButtonConfiguration>, lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration()
{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ControlGroupStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ApplyGlassButtonConfiguration>, lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t DefaultDateProgressLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v6 - 8);
  outlined init with copy of ClosedRange<Date>(v1, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClosedRange<Date>);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for DefaultDateProgressLabel(0);
  result = Text.init(timerInterval:pauseTime:countsDown:showsHours:)();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance DefaultDateProgressLabel@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v6 - 8);
  outlined init with copy of ClosedRange<Date>(v1, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClosedRange<Date>);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  result = Text.init(timerInterval:pauseTime:countsDown:showsHours:)();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t ProgressView.init(timerInterval:countsDown:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a5;
  v27 = a4;
  v29 = a2;
  v28 = a8;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = outlined init with copy of ClosedRange<Date>(a1, v22, type metadata accessor for ClosedRange<Date>);
  a3(v23);
  v24 = (*(*(a6 - 8) + 56))(v19, 0, 1, a6);
  v27(v24);
  (*(*(a7 - 8) + 56))(v16, 0, 1, a7);
  CustomProgressView.init(interval:countdown:label:currentValueLabel:)(v22, v29, v19, v16, a6, a7, v28);
  outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
  v30 = a6;
  v31 = a7;
  v32 = a9;
  v33 = a10;
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init<A>(timerInterval:countsDown:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, void (*a6)(uint64_t)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = a7;
  v37 = a6;
  v34[1] = a5;
  v35 = a4;
  v42 = a2;
  v34[0] = a1;
  v41 = a8;
  v39 = a14;
  v40 = a13;
  v38 = a12;
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v34 - v17;
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v34 - v20;
  v22 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v34 - v23;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = outlined init with copy of ClosedRange<Date>(a1, v27, type metadata accessor for ClosedRange<Date>);
  a3(v28);
  v29 = (*(*(a9 - 8) + 56))(v24, 0, 1, a9);
  v35(v29);
  v30 = (*(*(a10 - 8) + 56))(v21, 0, 1, a10);
  v37(v30);
  (*(*(a11 - 8) + 56))(v18, 0, 1, a11);
  v31 = v40;
  v32 = v38;
  CustomProgressView.init<A>(interval:countdown:label:currentValueLabel:actions:)(v27, v42, v24, v21, v18, a9, a10, v41, v38, v40);
  outlined destroy of ClosedRange<Date>(v34[0], type metadata accessor for ClosedRange<Date>);
  v43 = a9;
  v44 = a10;
  v45 = v32;
  v46 = v31;
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init(interval:countdown:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v20 = a6;
  v21 = a7;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v18, type metadata accessor for ClosedRange<Date>);
  ProgressView.init(timerInterval:countsDown:label:currentValueLabel:)(v18, a2, a3, a4, a5, v20, v21, a8, a9, a10);
  return outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
}

uint64_t ProgressView<>.init(timerInterval:countsDown:label:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25 = a6;
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for DefaultDateProgressLabel?, type metadata accessor for DefaultDateProgressLabel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = outlined init with copy of ClosedRange<Date>(a1, v19, type metadata accessor for ClosedRange<Date>);
  a3(v20);
  (*(*(a4 - 8) + 56))(v16, 0, 1, a4);
  outlined init with copy of ClosedRange<Date>(a1, v13, type metadata accessor for ClosedRange<Date>);
  v21 = type metadata accessor for DefaultDateProgressLabel(0);
  v13[*(v21 + 20)] = a2;
  (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  v22 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DefaultDateProgressLabel and conformance DefaultDateProgressLabel, type metadata accessor for DefaultDateProgressLabel);
  CustomProgressView.init(interval:countdown:label:currentValueLabel:)(v19, a2, v16, v13, a4, v21, v25);
  outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
  v26 = a4;
  v27 = v21;
  v28 = a5;
  v29 = v22;
  type metadata accessor for ProgressView.Base();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init(interval:countdown:label:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v14, type metadata accessor for ClosedRange<Date>);
  ProgressView<>.init(timerInterval:countsDown:label:)(v14, a2, a3, a4, a5, a6);
  return outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
}

uint64_t ProgressView<>.init(timerInterval:countsDown:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v23 = a2;
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for DefaultDateProgressLabel?, type metadata accessor for DefaultDateProgressLabel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ClosedRange<Date>(a1, v11, type metadata accessor for ClosedRange<Date>);
  outlined init with take of ClosedRange<Date>(a1, v8, type metadata accessor for ClosedRange<Date>);
  v12 = type metadata accessor for DefaultDateProgressLabel(0);
  v8[*(v12 + 20)] = v3;
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 0, 1, v12);
  type metadata accessor for CustomProgressView<EmptyView, DefaultDateProgressLabel>(0, &lazy cache variable for type metadata for CustomProgressView<EmptyView, DefaultDateProgressLabel>, type metadata accessor for CustomProgressView);
  v15 = v14;
  v17 = *(v14 + 52);
  v16 = *(v14 + 56);
  v13((a3 + v16), 1, 1, v12);
  v18 = *(v15 + 60);
  type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
  v20 = *(v19 + 48);
  outlined init with take of ClosedRange<Date>(v11, a3, type metadata accessor for ClosedRange<Date>);
  *(a3 + v20) = v23;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v17) = 0;
  outlined assign with take of DefaultDateProgressLabel?(v8, a3 + v16);
  *(a3 + v18) = 0;
  type metadata accessor for CustomProgressView<EmptyView, DefaultDateProgressLabel>(0, &lazy cache variable for type metadata for ProgressView<EmptyView, DefaultDateProgressLabel>.Base, type metadata accessor for ProgressView.Base);
  return swift_storeEnumTagMultiPayload();
}

void type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)()
{
  if (!lazy cache variable for type metadata for (interval: ClosedRange<Date>, countdown: Bool))
  {
    type metadata accessor for ClosedRange<Date>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (interval: ClosedRange<Date>, countdown: Bool));
    }
  }
}

uint64_t outlined assign with take of DefaultDateProgressLabel?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for DefaultDateProgressLabel?, type metadata accessor for DefaultDateProgressLabel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for CustomProgressView<EmptyView, DefaultDateProgressLabel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DefaultDateProgressLabel(255);
    v7 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DefaultDateProgressLabel and conformance DefaultDateProgressLabel, type metadata accessor for DefaultDateProgressLabel);
    v10[0] = MEMORY[0x1E6981E70];
    v10[1] = v6;
    v10[2] = MEMORY[0x1E6981E60];
    v10[3] = v7;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t ProgressView<>.init(interval:countdown:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v8, type metadata accessor for ClosedRange<Date>);
  ProgressView<>.init(timerInterval:countsDown:)(v8, a2, a3);
  return outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
}

void *initializeBufferWithCopyOfBuffer for DefaultDateProgressLabel(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8((a1 + *(v9 + 36)), (a2 + *(v9 + 36)), v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t initializeWithCopy for DefaultDateProgressLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>();
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for DefaultDateProgressLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>();
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t ProgressViewSchedule.entries(from:mode:)(uint64_t a1, char *a2)
{
  v97 = a2;
  v81 = type metadata accessor for ProgressViewSchedule(0);
  v100 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v101 = v2;
  v3 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v91 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Calendar.SearchDirection();
  v90 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v88 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Calendar.MatchingPolicy();
  v84 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v85 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = &v76 - v9;
  v80 = type metadata accessor for Calendar.Component();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v76 - v13;
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x1E6969AE8], v7);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v76 - v16;
  v18 = type metadata accessor for DateComponents();
  v86 = *(v18 - 8);
  v87 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Calendar();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Date();
  v102 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v92 = &v76 - v26;
  v27 = type metadata accessor for PeriodicTimelineSchedule();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v94 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PeriodicTimelineSchedule.Entries();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AnimationTimelineSchedule.Entries();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v97)
  {
    v81 = v31;
    v97 = v3;
    v36 = v23;
    static Calendar.current.getter();
    v77 = v21;
    v37 = *(v21 + 56);
    v78 = v20;
    v37(v17, 1, 1, v20);
    v38 = type metadata accessor for TimeZone();
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    v39 = v79;
    v40 = v80;
    (*(v79 + 104))(v11, *MEMORY[0x1E6969A98], v80);
    type metadata accessor for ClosedRange<Date>();
    v41 = v82;
    v42 = v83;
    Calendar.component(_:from:)();
    (*(v39 + 8))(v11, v40);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v44 = v84;
    v43 = v85;
    (*(v84 + 104))(v85, *MEMORY[0x1E69698D0], v99);
    v45 = v90;
    v46 = v88;
    (*(v90 + 104))(v88, *MEMORY[0x1E69699A0], v95);
    v47 = v91;
    (*(v41 + 104))(v91, *MEMORY[0x1E69699C8], v42);
    v48 = v89;
    v80 = v36;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v41 + 8))(v47, v42);
    v49 = v46;
    v50 = v48;
    (*(v45 + 8))(v49, v95);
    (*(v44 + 8))(v43, v99);
    v51 = v102;
    v52 = *(v102 + 48);
    v53 = v96;
    if (v52(v50, 1, v96) == 1)
    {
      v54 = *(v51 + 16);
      v54(v93, v103, v53);
      if (v52(v50, 1, v53) != 1)
      {
        outlined destroy of Date?(v50);
      }

      v55 = v81;
      v56 = v98;
      v57 = v77;
      v58 = v80;
      v59 = v102;
      v60 = v93;
    }

    else
    {
      v60 = v93;
      (*(v51 + 32))(v93, v50, v53);
      v54 = *(v51 + 16);
      v55 = v81;
      v59 = v51;
      v56 = v98;
      v57 = v77;
      v58 = v80;
    }

    v54(v92, v60, v53);
    v68 = v94;
    PeriodicTimelineSchedule.init(from:by:)();
    v105 = 1;
    PeriodicTimelineSchedule.entries(from:mode:)();
    outlined destroy of ClosedRange<Date>(v68, MEMORY[0x1E69803F0]);
    (*(v59 + 8))(v60, v53);
    (*(v86 + 8))(v56, v87);
    (*(v57 + 8))(v58, v78);
    type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>();
    v69 = swift_allocObject();
    outlined init with take of ClosedRange<Date>(v55, v69 + *(*v69 + *MEMORY[0x1E69E6AD8] + 16), MEMORY[0x1E69803D8]);
    v3 = v97;
    v61 = v103;
  }

  else
  {
    v61 = v103;
    v62 = *(v102 + 16);
    if (*(v103 + *(v81 + 20)))
    {
      v62(v92, v103, v96, v33);
      v63 = v94;
      PeriodicTimelineSchedule.init(from:by:)();
      v104 = 0;
      PeriodicTimelineSchedule.entries(from:mode:)();
      outlined destroy of ClosedRange<Date>(v63, MEMORY[0x1E69803F0]);
      type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>();
      v64 = swift_allocObject();
      v65 = MEMORY[0x1E69803D8];
      v66 = v64 + *(*v64 + *MEMORY[0x1E69E6AD8] + 16);
      v67 = v31;
    }

    else
    {
      v62(v35, v103, v96, v33);
      v70 = &v35[*(v32 + 20)];
      *v70 = 0x3F81111111111111;
      v70[8] = 0;
      type metadata accessor for _SequenceBox<AnimationTimelineSchedule.Entries>();
      v71 = swift_allocObject();
      v65 = type metadata accessor for AnimationTimelineSchedule.Entries;
      v66 = v71 + *(*v71 + *MEMORY[0x1E69E6AD8] + 16);
      v67 = v35;
    }

    outlined init with take of ClosedRange<Date>(v67, v66, v65);
  }

  v72 = dispatch thunk of _AnySequenceBox._makeIterator()();

  outlined init with copy of ClosedRange<Date>(v61, v3, type metadata accessor for ProgressViewSchedule);
  v73 = (*(v100 + 80) + 24) & ~*(v100 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  outlined init with take of ClosedRange<Date>(v3, v74 + v73, type metadata accessor for ProgressViewSchedule);
  type metadata accessor for _IteratorBox<_ClosureBasedIterator<Date>>();
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ProgressViewSchedule.entries(from:mode:);
  *(result + 24) = v74;
  return result;
}

uint64_t closure #1 in ProgressViewSchedule.entries(from:mode:)@<X0>(char *a1@<X8>)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Date?(v4);
    v12 = 1;
  }

  else
  {
    v13 = *(v6 + 32);
    v13(v11, v4, v5);
    type metadata accessor for ClosedRange<Date>();
    if (static Date.> infix(_:_:)() & 1) != 0 && (static Date.now.getter(), lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]), v14 = dispatch thunk of static Comparable.>= infix(_:_:)(), v15 = *(v6 + 8), v15(v8, v5), (v14))
    {
      static Date.distantFuture.getter();
      v15(v11, v5);
    }

    else
    {
      v13(a1, v11, v5);
    }

    v12 = 0;
  }

  return (*(v6 + 56))(a1, v12, 1, v5);
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ProgressViewSchedule@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = ProgressViewSchedule.entries(from:mode:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _TimelineProgressViewBaseEmptyState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _TimelineProgressViewBaseEmptyState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance _TimelineProgressViewBaseEmptyState(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>, lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys, &unk_1EFF962D8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys;
  if (!lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys;
  if (!lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys;
  if (!lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TimelineProgressView.ArchivableTimelineProgressView(void *a1, void *a2)
{
  v21 = type metadata accessor for Date();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = v4 + v5;
  v7 = (v6 & ~v5) + v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  if ((v10 | v5) <= 7 && ((*(v9 + 80) | v5) & 0x100000) == 0 && ((-18 - v10 - ((v7 + 5) & 0xFFFFFFFFFFFFFFFCLL)) | v10) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v14 = *(v3 + 16);
    v20 = AssociatedTypeWitness;
    v14(a1, a2, v21);
    v14(((a1 + v6) & ~v5), ((a2 + v6) & ~v5), v21);
    v15 = a1 + v7;
    *v15 = *(a2 + v7);
    v15[1] = *(a2 + v7 + 1);
    v16 = (a1 + v7 + 5) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = (a2 + v7 + 5) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *v17;
    *(v16 + 16) = *(v17 + 16);
    *v16 = v18;
    (*(v9 + 16))((v16 + v10 + 17) & ~v10, (v17 + v10 + 17) & ~v10, v20);
  }

  else
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + (((v10 | v5) & 0xFC ^ 0x1FC) & ((v10 | v5) + 16)));
  }

  return a1;
}

uint64_t destroy for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = v3 + 8;
  v4(a1, v2);
  v6 = *(v5 + 56);
  v7 = v6 + a1;
  v8 = *(v5 + 72);
  v4((v7 + v8) & ~v8, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 8);
  v12 = (((v7 + ((v6 + v8) & ~v8) + 5) & 0xFFFFFFFFFFFFFFFCLL) + *(v10 + 80) + 17) & ~*(v10 + 80);

  return v11(v12, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v6(a1, a2, v4);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *v13 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 16))((*(v17 + 80) + 17 + v13) & ~*(v17 + 80), (*(v17 + 80) + 17 + v14) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 24);
  v7 = v5 + 24;
  v6(a1, a2, v4);
  v8 = *(v7 + 40);
  v9 = *(v7 + 56);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *v13 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 24))((*(v17 + 80) + 17 + v13) & ~*(v17 + 80), (*(v17 + 80) + 17 + v14) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v6(a1, a2, v4);
  v8 = *(v7 + 32);
  v9 = *(v7 + 48);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *v13 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 32))((*(v17 + 80) + 17 + v13) & ~*(v17 + 80), (*(v17 + 80) + 17 + v14) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v6(a1, a2, v4);
  v8 = *(v7 + 24);
  v9 = *(v7 + 40);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *v13 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 40))((*(v17 + 80) + 17 + v13) & ~*(v17 + 80), (*(v17 + 80) + 17 + v14) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimelineProgressView.ArchivableTimelineProgressView(unsigned __int16 *a1, unsigned int a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  if (v6 <= *(v7 + 84))
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 80);
  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v12 = v9 + 17;
  if (a2 <= v10)
  {
    goto LABEL_31;
  }

  v13 = ((v12 + ((v11 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v9) + *(v7 + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v17 < 2)
    {
LABEL_31:
      if (v6 == v10)
      {
        v21 = *(v5 + 48);

        return v21(a1, v6, v4);
      }

      else
      {
        v22 = a1 + v11;
        if (v8 > 0xFE)
        {
          v24 = *(v7 + 48);

          return v24((v12 + ((v22 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v9);
        }

        else
        {
          v23 = *v22;
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_31;
  }

LABEL_18:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = ((v12 + ((v11 + 5) & 0xFFFFFFFC)) & ~v9) + *(v7 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for TimelineProgressView.ArchivableTimelineProgressView(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  if (v8 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = v8;
  }

  v11 = *(v9 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v10;
  }

  v13 = ((*(v7 + 64) + *(v7 + 80)) & ~*(v7 + 80)) + *(v7 + 64);
  v14 = ((v11 + 17 + ((v13 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11) + *(v9 + 64);
  if (a3 <= v12)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v12 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v12 < a2)
  {
    v16 = ~v12 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_51:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, ((v11 + 17 + ((v13 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11) + *(v9 + 64));
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
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
  if (v8 == v12)
  {
    v21 = *(v7 + 56);

    v21(a1, a2, v8, v6);
  }

  else
  {
    v22 = &a1[v13];
    if (v10 > 0xFE)
    {
      v23 = *(v9 + 56);

      v23((v11 + 17 + ((v22 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11, a2);
    }

    else
    {
      *v22 = a2 + 1;
    }
  }
}

uint64_t TimelineProgressViewUpdateStyle.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys, &unk_1EFF96628, MEMORY[0x1E69E6F58]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimelineProgressViewUpdateStyle.DefaultCodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys, &unk_1EFF96608, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimelineProgressViewUpdateStyle.CodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys, &unk_1EFF965E8, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimelineProgressViewUpdateStyle.CodingKeys()
{
  if (*v0)
  {
    return 0x6365536568546E6FLL;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimelineProgressViewUpdateStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6365536568546E6FLL && a2 == 0xEB00000000646E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimelineProgressViewUpdateStyle.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimelineProgressViewUpdateStyle.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TimelineProgressViewUpdateStyle@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TimelineProgressViewUpdateStyle.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t TimelineProgressView.ConditionallyArchivableTimelineProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = *(a1 + 24);
  v25[0] = *(a1 + 16);
  v25[1] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = v25 - v7;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TimelineProgressView.FinalTimelineProgressView();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  outlined init with copy of ClosedRange<Date>(v3, v10, type metadata accessor for ClosedRange<Date>);
  v18 = *(v3 + *(a1 + 36));
  LOBYTE(v5) = *(v3 + *(a1 + 40));
  v19 = *(v3 + *(a1 + 44));
  v20 = v3 + *(a1 + 52);
  v21 = v26;
  (*(v27 + 16))(v26, v20, v28);
  TimelineProgressView.FinalTimelineProgressView.init(interval:updateStyle:countdown:tint:extendedState:)(v10, v18, v5, v19, v21, v14);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, WitnessTable);
  v23 = *(v12 + 8);

  v23(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, WitnessTable);
  return (v23)(v17, v11);
}

uint64_t TimelineProgressView.FinalTimelineProgressView.init(interval:updateStyle:countdown:tint:extendedState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  outlined init with take of ClosedRange<Date>(a1, a6, type metadata accessor for ClosedRange<Date>);
  v11 = type metadata accessor for TimelineProgressView.FinalTimelineProgressView();
  *(a6 + v11[9]) = a2 & 1;
  *(a6 + v11[10]) = a3;
  *(a6 + v11[11]) = a4;
  v12 = v11[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 32);

  return v14(a6 + v12, a5, AssociatedTypeWitness);
}

uint64_t TimelineProgressView.ConditionallyArchivableTimelineProgressView.archivedBody.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  (*(v3 + 32))(v7 + v6, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView();
  swift_getWitnessTable();
  EnvironmentReader.init(_:)();
  v14 = v20;
  type metadata accessor for EnvironmentReader();
  WitnessTable = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();

  v14 = v17;
  v15 = v18;
  v16 = v19;
  v10 = type metadata accessor for ModifiedContent();
  v13[0] = WitnessTable;
  v13[1] = MEMORY[0x1E697EBE0];
  v11 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v14, v10, v11);

  v17 = v20;
  v18 = v21;
  v19 = v22;
  static ViewBuilder.buildExpression<A>(_:)(&v17, v10, v11);
}

uint64_t closure #1 in TimelineProgressView.ConditionallyArchivableTimelineProgressView.archivedBody.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &AssociatedTypeWitness - v10;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &AssociatedTypeWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v29 = a3;
  v15 = type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView();
  v16 = *(a2 + v15[11]);
  if (v16)
  {
    v30 = *a1;
    dispatch thunk of AnyColorBox.resolve(in:)();
    v19 = v17 | (v18 << 32);
    v22 = v20 | (v21 << 32);
  }

  else
  {
    v19 = 0;
    v22 = 0;
  }

  outlined init with copy of ClosedRange<Date>(a2, v14, type metadata accessor for ClosedRange<Date>);
  v23 = *(a2 + v15[9]);
  v24 = *(a2 + v15[10]);
  (*(v9 + 16))(v11, a2 + v15[13], AssociatedTypeWitness);
  return TimelineProgressView.ArchivableTimelineProgressView.init(interval:updateStyle:countdown:resolvedTint:extendedState:)(v14, v23, v24, v19, v22, v16 == 0, v11, v27);
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.init(interval:updateStyle:countdown:resolvedTint:extendedState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  outlined init with take of ClosedRange<Date>(a1, a8, type metadata accessor for ClosedRange<Date>);
  v15 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView();
  *(a8 + v15[9]) = a2 & 1;
  *(a8 + v15[10]) = a3;
  v16 = a8 + v15[11];
  *v16 = a4;
  *(v16 + 8) = a5;
  *(v16 + 16) = a6 & 1;
  v17 = v15[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 32);

  return v19(a8 + v17, a7, AssociatedTypeWitness);
}

uint64_t TimelineProgressView.ConditionallyArchivableTimelineProgressView.init(interval:updateStyle:countdown:tint:isCircular:extendedState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  outlined init with take of ClosedRange<Date>(a1, a7, type metadata accessor for ClosedRange<Date>);
  v13 = type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView();
  *(a7 + v13[9]) = a2 & 1;
  *(a7 + v13[10]) = a3;
  *(a7 + v13[11]) = a4;
  *(a7 + v13[12]) = a5;
  v14 = v13[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 32);

  return v16(a7 + v14, a6, AssociatedTypeWitness);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2370](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2378](a1, a2, a3, WitnessTable);
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v16[0] = a2;
  v16[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v16 - v7;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  if ((*(v2 + *(a1 + 44) + 16) & 1) == 0)
  {
    v12 = Color.init(_:)();
  }

  outlined init with copy of ClosedRange<Date>(v2, v11, type metadata accessor for ClosedRange<Date>);
  v13 = *(v2 + *(a1 + 36));
  v14 = *(v2 + *(a1 + 40));
  (*(v6 + 16))(v8, v2 + *(a1 + 48), AssociatedTypeWitness);
  return TimelineProgressView.FinalTimelineProgressView.init(interval:updateStyle:countdown:tint:extendedState:)(v11, v13, v14, v12, v8, v16[0]);
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7453657461647075 && a2 == 0xEB00000000656C79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xEC000000746E6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E65747865 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

Swift::Int TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  return Hasher._finalize()();
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C61767265746E69;
  v2 = 0x776F64746E756F63;
  v3 = 0x6465766C6F736572;
  if (a1 != 3)
  {
    v3 = 0x6465646E65747865;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7453657461647075;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.encode(to:)(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v14[0] = *(a2 + 24);
  v14[1] = v5;
  type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for ClosedRange<Date>();
  lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date);
  v10 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  LOBYTE(v17) = *(v3 + *(v15 + 36));
  v19 = 1;
  lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v17) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = *(*(v15 + 44) + 0x10);
  v17 = **(v15 + 44);
  v18 = v11;
  v19 = 3;
  lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v16 = v6;
  LOBYTE(v17) = 4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v12);
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v27 - v5;
  type metadata accessor for ClosedRange<Date>();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView.CodingKeys();
  swift_getWitnessTable();
  v38 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v27 - v8;
  v36 = a2;
  v10 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView();
  v28 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v37 = v9;
  v14 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v15 = v32;
  v16 = AssociatedTypeWitness;
  LOBYTE(v41) = 0;
  lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date);
  v17 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v17;
  v19 = v12;
  outlined init with take of ClosedRange<Date>(v18, v12, type metadata accessor for ClosedRange<Date>);
  v43 = 1;
  lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[v10[9]] = v41;
  LOBYTE(v41) = 2;
  v20 = v15;
  v19[v10[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v43 = 3;
  lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = &v19[v10[11]];
  v22 = v42;
  *v21 = v41;
  v21[16] = v22;
  LOBYTE(v41) = 4;
  swift_getAssociatedConformanceWitness();
  v23 = v19;
  v24 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v37, v38);
  (*(v29 + 32))(&v23[v10[12]], v24, v16);
  v25 = v28;
  (*(v28 + 16))(v30, v23, v10);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return (*(v25 + 8))(v23, v10);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys()
{
  Hasher.init(_seed:)();
  TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TimelineProgressView.FinalTimelineProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = *(a1 - 8);
  v36 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProgressViewSchedule(255);
  v9 = *(a1 + 16);
  v34 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ProgressViewSchedule and conformance ProgressViewSchedule, type metadata accessor for ProgressViewSchedule);
  v10 = v8;
  v11 = type metadata accessor for TimelineView();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v32 - v14;
  v32 = v10;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = *(v3 + *(a1 + 36));
  outlined init with copy of ClosedRange<Date>(v3, &v32 - v19, type metadata accessor for ClosedRange<Date>);
  v20[*(v10 + 20)] = v21;
  outlined init with copy of ClosedRange<Date>(v20, v17, type metadata accessor for ProgressViewSchedule);
  v22 = v7;
  (*(v5 + 16))(v7, v3, a1);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = *(a1 + 24);
  *(v24 + 16) = v9;
  *(v24 + 24) = v25;
  (*(v5 + 32))(v24 + v23, v22, a1);
  v26 = *(v25 + 8);
  v27 = v33;
  TimelineView<>.init(_:content:)(v17, partial apply for closure #1 in TimelineProgressView.FinalTimelineProgressView.body.getter, v24, v32, v9, v34, v26, v33);
  outlined destroy of ClosedRange<Date>(v20, type metadata accessor for ProgressViewSchedule);
  v39 = v26;
  WitnessTable = swift_getWitnessTable();
  v29 = v35;
  static ViewBuilder.buildExpression<A>(_:)(v27, v11, WitnessTable);
  v30 = *(v37 + 8);
  v30(v27, v11);
  static ViewBuilder.buildExpression<A>(_:)(v29, v11, WitnessTable);
  return (v30)(v29, v11);
}

uint64_t closure #1 in TimelineProgressView.FinalTimelineProgressView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25[1] = a4;
  v25[0] = swift_getAssociatedTypeWitness();
  v7 = *(v25[0] - 8);
  MEMORY[0x1EEE9AC00](v25[0]);
  v9 = v25 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  v17 = type metadata accessor for TimelineProgressView.FinalTimelineProgressView();
  ClosedRange<>.progress(at:countdown:)();
  v19 = v18;
  (*(v7 + 16))(v9, a1 + *(v17 + 48), v25[0]);
  v20 = *(a3 + 40);

  v20(v21, v9, a2, a3, v19);
  v22 = *(a3 + 8);
  static ViewBuilder.buildExpression<A>(_:)(v13, a2, v22);
  v23 = *(v10 + 8);
  v23(v13, a2);
  static ViewBuilder.buildExpression<A>(_:)(v16, a2, v22);
  return (v23)(v16, a2);
}

uint64_t TimelineProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = *(a1 + 24);
  v25[1] = *(a1 + 16);
  v25[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = v25 - v7;
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  outlined init with copy of ClosedRange<Date>(v3, v10, type metadata accessor for ClosedRange<Date>);
  v17 = *(v3 + *(a1 + 36));
  LOBYTE(v5) = *(v3 + *(a1 + 40));
  v18 = *(v3 + *(a1 + 44));
  v19 = *(v3 + *(a1 + 48));
  v20 = v3 + *(a1 + 52);
  v21 = v26;
  (*(v28 + 16))(v26, v20, v29);
  TimelineProgressView.ConditionallyArchivableTimelineProgressView.init(interval:updateStyle:countdown:tint:isCircular:extendedState:)(v10, v17, v5, v18, v19, v21, v13);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v11, WitnessTable);
  v23 = *(v27 + 8);

  v23(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  return (v23)(v16, v11);
}

uint64_t protocol witness for TimelineProgressViewExtendedBase.init(fractionCompleted:tint:extendedState:) in conformance ResolvedCircularPlaybackProgressView.Base@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (!result)
  {
    result = static Color.white.getter();
  }

  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle()
{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved()
{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TimelineProgressView.FinalTimelineProgressView(void *a1, void *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  v8 = (v7 & ~v6) + v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  if ((v11 | v6) <= 7 && ((*(v10 + 80) | v6) & 0x100000) == 0 && ((-9 - v11 - ((v8 + 9) & 0xFFFFFFFFFFFFFFF8)) | v11) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = AssociatedTypeWitness;
    v16 = *(v4 + 16);
    v16(a1, a2, v3);
    v16(((a1 + v7) & ~v6), ((a2 + v7) & ~v6), v3);
    v17 = a1 + v8;
    *v17 = *(a2 + v8);
    v17[1] = *(a2 + v8 + 1);
    v18 = ((a1 + v8 + 9) & 0xFFFFFFFFFFFFFFF8);
    v19 = a2 + v8 + 9;
    v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v18 = *(v19 & 0xFFFFFFFFFFFFFFF8);
    v21 = *(v10 + 16);

    v21(v18 + 1, v20, v15);
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + (((v11 | v6) & 0xF8 ^ 0x1F8) & ((v11 | v6) + 16)));
  }

  return a1;
}

uint64_t destroy for TimelineProgressView.FinalTimelineProgressView(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = v3 + 8;
  v4(a1, v2);
  v6 = *(v5 + 56);
  v7 = v6 + a1;
  v8 = *(v5 + 72);
  v4((v7 + v8) & ~v8, v2);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 8);
  v12 = (((v7 + ((v6 + v8) & ~v8) + 9) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 8) & ~*(v10 + 80);

  return v11(v12, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v6(a1, a2, v4);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = ((v11 + 9) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 16);
  v18 = *(v16 + 80);

  v17((v13 + v18 + 8) & ~v18, (v14 + v18 + 8) & ~v18, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 24);
  v7 = v5 + 24;
  v6(a1, a2, v4);
  v8 = *(v7 + 40);
  v9 = *(v7 + 56);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = ((v11 + 9) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 24))((v13 + *(v16 + 80) + 8) & ~*(v16 + 80), (v14 + *(v16 + 80) + 8) & ~*(v16 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v6(a1, a2, v4);
  v8 = *(v7 + 32);
  v9 = *(v7 + 48);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = ((v11 + 9) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 32))((v13 + *(v16 + 80) + 8) & ~*(v16 + 80), (v14 + *(v16 + 80) + 8) & ~*(v16 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v6(a1, a2, v4);
  v8 = *(v7 + 24);
  v9 = *(v7 + 40);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = ((v11 + 9) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 40))((v13 + *(v16 + 80) + 8) & ~*(v16 + 80), (v14 + *(v16 + 80) + 8) & ~*(v16 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimelineProgressView.FinalTimelineProgressView(unsigned __int16 *a1, unsigned int a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  if (v6 <= *(v8 + 84))
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v6;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v13 = v9 + 8;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v14 = ((v13 + ((v12 + 9) & 0xFFFFFFFFFFFFFFF8)) & ~v9) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v6 == v11)
      {
        v22 = *(v5 + 48);

        return v22(a1, v6, v4);
      }

      else
      {
        v23 = ((a1 + v12 + 9) & 0xFFFFFFFFFFFFFFF8);
        if (v10 > 0x7FFFFFFE)
        {
          v25 = *(v8 + 48);

          return v25((v23 + v13) & ~v9);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          if ((v24 + 1) >= 2)
          {
            return v24;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for TimelineProgressView.FinalTimelineProgressView(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = ((*(v7 + 64) + *(v7 + 80)) & ~*(v7 + 80)) + *(v7 + 64);
  v14 = ((v10 + 8 + ((v13 + 9) & 0xFFFFFFFFFFFFFFF8)) & ~v10) + *(v9 + 64);
  if (a3 <= v12)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v12 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v12 < a2)
  {
    v16 = ~v12 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_52:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
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
  if (v8 == v12)
  {
    v21 = *(v7 + 56);

    v21(a1, a2, v8, v6);
  }

  else
  {
    v22 = (&a1[v13 + 9] & 0xFFFFFFFFFFFFFFF8);
    if (v11 > 0x7FFFFFFE)
    {
      v23 = *(v9 + 56);

      v23((v22 + v10 + 8) & ~v10, a2);
    }

    else if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }
}

void type metadata completion function for TimelineProgressView()
{
  type metadata accessor for ClosedRange<Date>();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void *initializeBufferWithCopyOfBuffer for TimelineProgressView(void *a1, void *a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = v4 + v5;
  v7 = (v6 & ~v5) + v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  if ((v10 | v5) <= 7 && ((*(v9 + 80) | v5) & 0x100000) == 0 && ((-10 - v10 - ((v7 + 9) & 0xFFFFFFFFFFFFFFF8)) | v10) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = *(v3 + 16);
    v14 = a1;
    v23 = AssociatedTypeWitness;
    v15(a1, a2, v2);
    v15(((a1 + v6) & ~v5), ((a2 + v6) & ~v5), v2);
    v16 = a1 + v7;
    *v16 = *(a2 + v7);
    v16[1] = *(a2 + v7 + 1);
    v17 = (a1 + v7 + 9) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + v7 + 9) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    v19 = v17 + v10 + 9;
    v20 = v18 + v10 + 9;
    v21 = *(v9 + 16);

    v21(v19 & ~v10, v20 & ~v10, v23);
  }

  else
  {
    v13 = *a2;
    *a1 = *a2;
    v14 = (v13 + (((v10 | v5) & 0xF8 ^ 0x1F8) & ((v10 | v5) + 16)));
  }

  return v14;
}

uint64_t destroy for TimelineProgressView(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = v3 + 8;
  v4(a1, v2);
  v6 = *(v5 + 56);
  v7 = v6 + a1;
  v8 = *(v5 + 72);
  v4((v7 + v8) & ~v8, v2);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 8);
  v12 = (((v7 + ((v6 + v8) & ~v8) + 9) & 0xFFFFFFFFFFFFFFF8) + *(v10 + 80) + 9) & ~*(v10 + 80);

  return v11(v12, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for TimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v6(a1, a2, v4);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 9) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 16);
  v18 = *(v16 + 80);

  v17((v18 + 9 + v13) & ~v18, (v18 + 9 + v14) & ~v18, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for TimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 24);
  v7 = v5 + 24;
  v6(a1, a2, v4);
  v8 = *(v7 + 40);
  v9 = *(v7 + 56);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 9) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;

  *(v13 + 8) = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 24))((*(v16 + 80) + 9 + v13) & ~*(v16 + 80), (*(v16 + 80) + 9 + v14) & ~*(v16 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for TimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v6(a1, a2, v4);
  v8 = *(v7 + 32);
  v9 = *(v7 + 48);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 9) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 32))((*(v16 + 80) + 9 + v13) & ~*(v16 + 80), (*(v16 + 80) + 9 + v14) & ~*(v16 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for TimelineProgressView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v6(a1, a2, v4);
  v8 = *(v7 + 24);
  v9 = *(v7 + 40);
  v6((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v4);
  v10 = ((v8 + v9) & ~v9) + v8;
  v11 = (v10 + a1);
  v12 = (v10 + a2);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = (v11 + 9) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;

  *(v13 + 8) = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 40))((*(v16 + 80) + 9 + v13) & ~*(v16 + 80), (*(v16 + 80) + 9 + v14) & ~*(v16 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimelineProgressView(unsigned __int16 *a1, unsigned int a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  if (v6 <= *(v8 + 84))
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v6;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v13 = v9 + 9;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v14 = ((v13 + ((v12 + 9) & 0xFFFFFFFFFFFFFFF8)) & ~v9) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v6 == v11)
      {
        v22 = *(v5 + 48);

        return v22(a1, v6, v4);
      }

      else
      {
        v23 = ((a1 + v12 + 9) & 0xFFFFFFFFFFFFFFF8);
        if (v10 > 0x7FFFFFFE)
        {
          v25 = *(v8 + 48);

          return v25((v23 + v13) & ~v9);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          if ((v24 + 1) >= 2)
          {
            return v24;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for TimelineProgressView(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = ((*(v7 + 64) + *(v7 + 80)) & ~*(v7 + 80)) + *(v7 + 64);
  v14 = ((v10 + 9 + ((v13 + 9) & 0xFFFFFFFFFFFFFFF8)) & ~v10) + *(v9 + 64);
  if (a3 <= v12)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v12 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v12 < a2)
  {
    v16 = ~v12 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_52:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
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
  if (v8 == v12)
  {
    v21 = *(v7 + 56);

    v21(a1, a2, v8, v6);
  }

  else
  {
    v22 = (&a1[v13 + 9] & 0xFFFFFFFFFFFFFFF8);
    if (v11 > 0x7FFFFFFE)
    {
      v23 = *(v9 + 56);

      v23((v22 + v10 + 9) & ~v10, a2);
    }

    else if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }
}